; ModuleID = 'crypto/asymmetric_keys/pkcs7_trust.c'
source_filename = "crypto/asymmetric_keys/pkcs7_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pkcs7_validate_trust: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pkcs7_validate_trust ; .previous"

%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i64, i64, ptr }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8 }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i64, i64, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_pkcs7_validate_trust120 = internal global ptr @pkcs7_validate_trust, section ".discard.addressable", align 8, !dbg !0
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !126
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_pkcs7_validate_trust120, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_validate_trust(ptr noundef %pkcs7, ptr noundef %trust_keyring) #0 align 16 !dbg !141 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %trust_keyring.addr = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cached_ret = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !586, metadata !DIExpression()), !dbg !592
  store ptr %trust_keyring, ptr %trust_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trust_keyring.addr, metadata !587, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #7, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !588, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %p, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 4, ptr %cached_ret) #7, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %cached_ret, metadata !590, metadata !DIExpression()), !dbg !599
  store i32 -126, ptr %cached_ret, align 4, !dbg !599
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !591, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %pkcs7.addr, align 8, !dbg !602
  %certs = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 0, !dbg !604
  %1 = load ptr, ptr %certs, align 8, !dbg !604
  store ptr %1, ptr %p, align 8, !dbg !605
  br label %for.cond, !dbg !606

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8, !dbg !607
  %tobool = icmp ne ptr %2, null, !dbg !609
  br i1 %tobool, label %for.body, label %for.end, !dbg !609

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !dbg !610
  %seen = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 23, !dbg !611
  store i8 0, ptr %seen, align 4, !dbg !612
  br label %for.inc, !dbg !610

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %p, align 8, !dbg !613
  %next = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 0, !dbg !614
  %5 = load ptr, ptr %next, align 8, !dbg !614
  store ptr %5, ptr %p, align 8, !dbg !615
  br label %for.cond, !dbg !616, !llvm.loop !617

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %pkcs7.addr, align 8, !dbg !621
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %6, i32 0, i32 2, !dbg !623
  %7 = load ptr, ptr %signed_infos, align 8, !dbg !623
  store ptr %7, ptr %sinfo, align 8, !dbg !624
  br label %for.cond1, !dbg !625

for.cond1:                                        ; preds = %for.inc6, %for.end
  %8 = load ptr, ptr %sinfo, align 8, !dbg !626
  %tobool2 = icmp ne ptr %8, null, !dbg !628
  br i1 %tobool2, label %for.body3, label %for.end8, !dbg !628

for.body3:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %pkcs7.addr, align 8, !dbg !629
  %10 = load ptr, ptr %sinfo, align 8, !dbg !631
  %11 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !632
  %call = call i32 @pkcs7_validate_trust_one(ptr noundef %9, ptr noundef %10, ptr noundef %11) #8, !dbg !633
  store i32 %call, ptr %ret, align 4, !dbg !634
  %12 = load i32, ptr %ret, align 4, !dbg !635
  switch i32 %12, label %sw.default [
    i32 -126, label %sw.bb
    i32 -65, label %sw.bb4
    i32 0, label %sw.bb5
  ], !dbg !636

sw.bb:                                            ; preds = %for.body3
  br label %for.inc6, !dbg !637

sw.bb4:                                           ; preds = %for.body3
  %13 = load i32, ptr %cached_ret, align 4, !dbg !639
  %cmp = icmp eq i32 %13, -126, !dbg !641
  br i1 %cmp, label %if.then, label %if.end, !dbg !642

if.then:                                          ; preds = %sw.bb4
  store i32 -65, ptr %cached_ret, align 4, !dbg !643
  br label %if.end, !dbg !644

if.end:                                           ; preds = %if.then, %sw.bb4
  br label %for.inc6, !dbg !645

sw.bb5:                                           ; preds = %for.body3
  store i32 0, ptr %cached_ret, align 4, !dbg !646
  br label %for.inc6, !dbg !647

sw.default:                                       ; preds = %for.body3
  %14 = load i32, ptr %ret, align 4, !dbg !648
  store i32 %14, ptr %retval, align 4, !dbg !649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !649

for.inc6:                                         ; preds = %sw.bb5, %if.end, %sw.bb
  %15 = load ptr, ptr %sinfo, align 8, !dbg !650
  %next7 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %15, i32 0, i32 0, !dbg !651
  %16 = load ptr, ptr %next7, align 8, !dbg !651
  store ptr %16, ptr %sinfo, align 8, !dbg !652
  br label %for.cond1, !dbg !653, !llvm.loop !654

for.end8:                                         ; preds = %for.cond1
  %17 = load i32, ptr %cached_ret, align 4, !dbg !656
  store i32 %17, ptr %retval, align 4, !dbg !657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

cleanup:                                          ; preds = %for.end8, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !658
  call void @llvm.lifetime.end.p0(i64 4, ptr %cached_ret) #7, !dbg !658
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !658
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #7, !dbg !658
  %18 = load i32, ptr %retval, align 4, !dbg !658
  ret i32 %18, !dbg !658
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pkcs7_validate_trust_one(ptr noundef %pkcs7, ptr noundef %sinfo, ptr noundef %trust_keyring) #0 align 16 !dbg !659 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %trust_keyring.addr = alloca ptr, align 8
  %sig = alloca ptr, align 8
  %x509 = alloca ptr, align 8
  %last = alloca ptr, align 8
  %p = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !663, metadata !DIExpression()), !dbg !674
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !664, metadata !DIExpression()), !dbg !675
  store ptr %trust_keyring, ptr %trust_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trust_keyring.addr, metadata !665, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #7, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !666, metadata !DIExpression()), !dbg !678
  %0 = load ptr, ptr %sinfo.addr, align 8, !dbg !679
  %sig1 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %0, i32 0, i32 11, !dbg !680
  %1 = load ptr, ptr %sig1, align 8, !dbg !680
  store ptr %1, ptr %sig, align 8, !dbg !678
  call void @llvm.lifetime.start.p0(i64 8, ptr %x509) #7, !dbg !681
  call void @llvm.dbg.declare(metadata ptr %x509, metadata !667, metadata !DIExpression()), !dbg !682
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !681
  call void @llvm.dbg.declare(metadata ptr %last, metadata !668, metadata !DIExpression()), !dbg !683
  store ptr null, ptr %last, align 8, !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !681
  call void @llvm.dbg.declare(metadata ptr %p, metadata !669, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #7, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %key, metadata !670, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !671, metadata !DIExpression()), !dbg !688
  store i32 0, ptr %tmp, align 4, !dbg !689
  %2 = load i32, ptr %tmp, align 4, !dbg !692
  %3 = load ptr, ptr %sinfo.addr, align 8, !dbg !693
  %unsupported_crypto = getelementptr inbounds %struct.pkcs7_signed_info, ptr %3, i32 0, i32 3, !dbg !695
  %4 = load i8, ptr %unsupported_crypto, align 4, !dbg !695, !range !696, !noundef !543
  %tobool = trunc i8 %4 to i1, !dbg !695
  br i1 %tobool, label %if.then, label %if.end, !dbg !697

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp2, align 4, !dbg !698
  %5 = load i32, ptr %tmp2, align 4, !dbg !702
  store i32 -65, ptr %retval, align 4, !dbg !703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !703

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sinfo.addr, align 8, !dbg !704
  %signer = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 1, !dbg !706
  %7 = load ptr, ptr %signer, align 8, !dbg !706
  store ptr %7, ptr %x509, align 8, !dbg !707
  br label %for.cond, !dbg !708

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %x509, align 8, !dbg !709
  %tobool3 = icmp ne ptr %8, null, !dbg !711
  br i1 %tobool3, label %for.body, label %for.end, !dbg !711

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %x509, align 8, !dbg !712
  %seen = getelementptr inbounds %struct.x509_certificate, ptr %9, i32 0, i32 23, !dbg !715
  %10 = load i8, ptr %seen, align 4, !dbg !715, !range !696, !noundef !543
  %tobool4 = trunc i8 %10 to i1, !dbg !715
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !716

if.then5:                                         ; preds = %for.body
  %11 = load ptr, ptr %x509, align 8, !dbg !717
  %verified = getelementptr inbounds %struct.x509_certificate, ptr %11, i32 0, i32 24, !dbg !720
  %12 = load i8, ptr %verified, align 1, !dbg !720, !range !696, !noundef !543
  %tobool6 = trunc i8 %12 to i1, !dbg !720
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !721

if.then7:                                         ; preds = %if.then5
  br label %verified78, !dbg !722

if.end8:                                          ; preds = %if.then5
  store i32 0, ptr %tmp9, align 4, !dbg !723
  %13 = load i32, ptr %tmp9, align 4, !dbg !726
  store i32 -126, ptr %retval, align 4, !dbg !727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !727

if.end10:                                         ; preds = %for.body
  %14 = load ptr, ptr %x509, align 8, !dbg !728
  %seen11 = getelementptr inbounds %struct.x509_certificate, ptr %14, i32 0, i32 23, !dbg !729
  store i8 1, ptr %seen11, align 4, !dbg !730
  %15 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !731
  %16 = load ptr, ptr %x509, align 8, !dbg !732
  %id = getelementptr inbounds %struct.x509_certificate, ptr %16, i32 0, i32 6, !dbg !733
  %17 = load ptr, ptr %id, align 8, !dbg !733
  %18 = load ptr, ptr %x509, align 8, !dbg !734
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %18, i32 0, i32 7, !dbg !735
  %19 = load ptr, ptr %skid, align 8, !dbg !735
  %call = call ptr @find_asymmetric_key(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef null, i1 noundef zeroext false) #8, !dbg !736
  store ptr %call, ptr %key, align 8, !dbg !737
  %20 = load ptr, ptr %key, align 8, !dbg !738
  %call12 = call zeroext i1 @IS_ERR(ptr noundef %20) #8, !dbg !740
  br i1 %call12, label %if.end15, label %if.then13, !dbg !741

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %tmp14, align 4, !dbg !742
  %21 = load i32, ptr %tmp14, align 4, !dbg !746
  br label %matched, !dbg !747

if.end15:                                         ; preds = %if.end10
  %22 = load ptr, ptr %key, align 8, !dbg !748
  %call16 = call ptr @ERR_PTR(i64 noundef -12) #8, !dbg !750
  %cmp = icmp eq ptr %22, %call16, !dbg !751
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !752

if.then17:                                        ; preds = %if.end15
  store i32 -12, ptr %retval, align 4, !dbg !753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !753

if.end18:                                         ; preds = %if.end15
  %23 = load ptr, ptr %x509, align 8, !dbg !754
  %signer19 = getelementptr inbounds %struct.x509_certificate, ptr %23, i32 0, i32 1, !dbg !756
  %24 = load ptr, ptr %signer19, align 8, !dbg !756
  %25 = load ptr, ptr %x509, align 8, !dbg !757
  %cmp20 = icmp eq ptr %24, %25, !dbg !758
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !759

if.then21:                                        ; preds = %if.end18
  store i32 0, ptr %tmp22, align 4, !dbg !760
  %26 = load i32, ptr %tmp22, align 4, !dbg !764
  store i32 -126, ptr %retval, align 4, !dbg !765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !765

if.end23:                                         ; preds = %if.end18
  br label %do.body, !dbg !766

do.body:                                          ; preds = %if.end23
  call void @might_resched() #8, !dbg !767
  br label %do.cond, !dbg !767

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !767

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %x509, align 8, !dbg !769
  store ptr %27, ptr %last, align 8, !dbg !770
  %28 = load ptr, ptr %last, align 8, !dbg !771
  %sig24 = getelementptr inbounds %struct.x509_certificate, ptr %28, i32 0, i32 3, !dbg !772
  %29 = load ptr, ptr %sig24, align 8, !dbg !772
  store ptr %29, ptr %sig, align 8, !dbg !773
  br label %for.inc, !dbg !774

for.inc:                                          ; preds = %do.end
  %30 = load ptr, ptr %x509, align 8, !dbg !775
  %signer25 = getelementptr inbounds %struct.x509_certificate, ptr %30, i32 0, i32 1, !dbg !776
  %31 = load ptr, ptr %signer25, align 8, !dbg !776
  store ptr %31, ptr %x509, align 8, !dbg !777
  br label %for.cond, !dbg !778, !llvm.loop !779

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %last, align 8, !dbg !781
  %tobool26 = icmp ne ptr %32, null, !dbg !781
  br i1 %tobool26, label %land.lhs.true, label %if.end50, !dbg !783

land.lhs.true:                                    ; preds = %for.end
  %33 = load ptr, ptr %last, align 8, !dbg !784
  %sig27 = getelementptr inbounds %struct.x509_certificate, ptr %33, i32 0, i32 3, !dbg !785
  %34 = load ptr, ptr %sig27, align 8, !dbg !785
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %34, i32 0, i32 0, !dbg !786
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !784
  %35 = load ptr, ptr %arrayidx, align 8, !dbg !784
  %tobool28 = icmp ne ptr %35, null, !dbg !784
  br i1 %tobool28, label %if.then33, label %lor.lhs.false, !dbg !787

lor.lhs.false:                                    ; preds = %land.lhs.true
  %36 = load ptr, ptr %last, align 8, !dbg !788
  %sig29 = getelementptr inbounds %struct.x509_certificate, ptr %36, i32 0, i32 3, !dbg !789
  %37 = load ptr, ptr %sig29, align 8, !dbg !789
  %auth_ids30 = getelementptr inbounds %struct.public_key_signature, ptr %37, i32 0, i32 0, !dbg !790
  %arrayidx31 = getelementptr [3 x ptr], ptr %auth_ids30, i64 0, i64 1, !dbg !788
  %38 = load ptr, ptr %arrayidx31, align 8, !dbg !788
  %tobool32 = icmp ne ptr %38, null, !dbg !788
  br i1 %tobool32, label %if.then33, label %if.end50, !dbg !791

if.then33:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %39 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !792
  %40 = load ptr, ptr %last, align 8, !dbg !794
  %sig34 = getelementptr inbounds %struct.x509_certificate, ptr %40, i32 0, i32 3, !dbg !795
  %41 = load ptr, ptr %sig34, align 8, !dbg !795
  %auth_ids35 = getelementptr inbounds %struct.public_key_signature, ptr %41, i32 0, i32 0, !dbg !796
  %arrayidx36 = getelementptr [3 x ptr], ptr %auth_ids35, i64 0, i64 0, !dbg !794
  %42 = load ptr, ptr %arrayidx36, align 8, !dbg !794
  %43 = load ptr, ptr %last, align 8, !dbg !797
  %sig37 = getelementptr inbounds %struct.x509_certificate, ptr %43, i32 0, i32 3, !dbg !798
  %44 = load ptr, ptr %sig37, align 8, !dbg !798
  %auth_ids38 = getelementptr inbounds %struct.public_key_signature, ptr %44, i32 0, i32 0, !dbg !799
  %arrayidx39 = getelementptr [3 x ptr], ptr %auth_ids38, i64 0, i64 1, !dbg !797
  %45 = load ptr, ptr %arrayidx39, align 8, !dbg !797
  %call40 = call ptr @find_asymmetric_key(ptr noundef %39, ptr noundef %42, ptr noundef %45, ptr noundef null, i1 noundef zeroext false) #8, !dbg !800
  store ptr %call40, ptr %key, align 8, !dbg !801
  %46 = load ptr, ptr %key, align 8, !dbg !802
  %call41 = call zeroext i1 @IS_ERR(ptr noundef %46) #8, !dbg !804
  br i1 %call41, label %if.end44, label %if.then42, !dbg !805

if.then42:                                        ; preds = %if.then33
  %47 = load ptr, ptr %last, align 8, !dbg !806
  store ptr %47, ptr %x509, align 8, !dbg !808
  store i32 0, ptr %tmp43, align 4, !dbg !809
  %48 = load i32, ptr %tmp43, align 4, !dbg !812
  br label %matched, !dbg !813

if.end44:                                         ; preds = %if.then33
  %49 = load ptr, ptr %key, align 8, !dbg !814
  %call45 = call i64 @PTR_ERR(ptr noundef %49) #8, !dbg !816
  %cmp46 = icmp ne i64 %call45, -126, !dbg !817
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !818

if.then47:                                        ; preds = %if.end44
  %50 = load ptr, ptr %key, align 8, !dbg !819
  %call48 = call i64 @PTR_ERR(ptr noundef %50) #8, !dbg !820
  %conv = trunc i64 %call48 to i32, !dbg !820
  store i32 %conv, ptr %retval, align 4, !dbg !821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !821

if.end49:                                         ; preds = %if.end44
  br label %if.end50, !dbg !822

if.end50:                                         ; preds = %if.end49, %lor.lhs.false, %for.end
  %51 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !823
  %52 = load ptr, ptr %sinfo.addr, align 8, !dbg !824
  %sig51 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %52, i32 0, i32 11, !dbg !825
  %53 = load ptr, ptr %sig51, align 8, !dbg !825
  %auth_ids52 = getelementptr inbounds %struct.public_key_signature, ptr %53, i32 0, i32 0, !dbg !826
  %arrayidx53 = getelementptr [3 x ptr], ptr %auth_ids52, i64 0, i64 0, !dbg !824
  %54 = load ptr, ptr %arrayidx53, align 8, !dbg !824
  %call54 = call ptr @find_asymmetric_key(ptr noundef %51, ptr noundef %54, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #8, !dbg !827
  store ptr %call54, ptr %key, align 8, !dbg !828
  %55 = load ptr, ptr %key, align 8, !dbg !829
  %call55 = call zeroext i1 @IS_ERR(ptr noundef %55) #8, !dbg !831
  br i1 %call55, label %if.end59, label %if.then56, !dbg !832

if.then56:                                        ; preds = %if.end50
  store i32 0, ptr %tmp57, align 4, !dbg !833
  %56 = load i32, ptr %tmp57, align 4, !dbg !837
  store ptr null, ptr %x509, align 8, !dbg !838
  %57 = load ptr, ptr %sinfo.addr, align 8, !dbg !839
  %sig58 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %57, i32 0, i32 11, !dbg !840
  %58 = load ptr, ptr %sig58, align 8, !dbg !840
  store ptr %58, ptr %sig, align 8, !dbg !841
  br label %matched, !dbg !842

if.end59:                                         ; preds = %if.end50
  %59 = load ptr, ptr %key, align 8, !dbg !843
  %call60 = call i64 @PTR_ERR(ptr noundef %59) #8, !dbg !845
  %cmp61 = icmp ne i64 %call60, -126, !dbg !846
  br i1 %cmp61, label %if.then63, label %if.end66, !dbg !847

if.then63:                                        ; preds = %if.end59
  %60 = load ptr, ptr %key, align 8, !dbg !848
  %call64 = call i64 @PTR_ERR(ptr noundef %60) #8, !dbg !849
  %conv65 = trunc i64 %call64 to i32, !dbg !849
  store i32 %conv65, ptr %retval, align 4, !dbg !850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !850

if.end66:                                         ; preds = %if.end59
  store i32 0, ptr %tmp67, align 4, !dbg !851
  %61 = load i32, ptr %tmp67, align 4, !dbg !854
  store i32 -126, ptr %retval, align 4, !dbg !855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

matched:                                          ; preds = %if.then56, %if.then42, %if.then13
  call void @llvm.dbg.label(metadata !672), !dbg !856
  %62 = load ptr, ptr %key, align 8, !dbg !857
  %63 = load ptr, ptr %sig, align 8, !dbg !858
  %call68 = call i32 @verify_signature(ptr noundef %62, ptr noundef %63) #8, !dbg !859
  store i32 %call68, ptr %ret, align 4, !dbg !860
  %64 = load ptr, ptr %key, align 8, !dbg !861
  call void @key_put(ptr noundef %64) #8, !dbg !862
  %65 = load i32, ptr %ret, align 4, !dbg !863
  %cmp69 = icmp slt i32 %65, 0, !dbg !865
  br i1 %cmp69, label %if.then71, label %if.end77, !dbg !866

if.then71:                                        ; preds = %matched
  %66 = load i32, ptr %ret, align 4, !dbg !867
  %cmp72 = icmp eq i32 %66, -12, !dbg !870
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !871

if.then74:                                        ; preds = %if.then71
  %67 = load i32, ptr %ret, align 4, !dbg !872
  store i32 %67, ptr %retval, align 4, !dbg !873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !873

if.end75:                                         ; preds = %if.then71
  store i32 0, ptr %tmp76, align 4, !dbg !874
  %68 = load i32, ptr %tmp76, align 4, !dbg !877
  store i32 -129, ptr %retval, align 4, !dbg !878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !878

if.end77:                                         ; preds = %matched
  br label %verified78, !dbg !879

verified78:                                       ; preds = %if.end77, %if.then7
  call void @llvm.dbg.label(metadata !673), !dbg !880
  %69 = load ptr, ptr %x509, align 8, !dbg !881
  %tobool79 = icmp ne ptr %69, null, !dbg !881
  br i1 %tobool79, label %if.then80, label %if.end91, !dbg !883

if.then80:                                        ; preds = %verified78
  %70 = load ptr, ptr %x509, align 8, !dbg !884
  %verified81 = getelementptr inbounds %struct.x509_certificate, ptr %70, i32 0, i32 24, !dbg !886
  store i8 1, ptr %verified81, align 1, !dbg !887
  %71 = load ptr, ptr %sinfo.addr, align 8, !dbg !888
  %signer82 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %71, i32 0, i32 1, !dbg !890
  %72 = load ptr, ptr %signer82, align 8, !dbg !890
  store ptr %72, ptr %p, align 8, !dbg !891
  br label %for.cond83, !dbg !892

for.cond83:                                       ; preds = %for.inc88, %if.then80
  %73 = load ptr, ptr %p, align 8, !dbg !893
  %74 = load ptr, ptr %x509, align 8, !dbg !895
  %cmp84 = icmp ne ptr %73, %74, !dbg !896
  br i1 %cmp84, label %for.body86, label %for.end90, !dbg !897

for.body86:                                       ; preds = %for.cond83
  %75 = load ptr, ptr %p, align 8, !dbg !898
  %verified87 = getelementptr inbounds %struct.x509_certificate, ptr %75, i32 0, i32 24, !dbg !899
  store i8 1, ptr %verified87, align 1, !dbg !900
  br label %for.inc88, !dbg !898

for.inc88:                                        ; preds = %for.body86
  %76 = load ptr, ptr %p, align 8, !dbg !901
  %signer89 = getelementptr inbounds %struct.x509_certificate, ptr %76, i32 0, i32 1, !dbg !902
  %77 = load ptr, ptr %signer89, align 8, !dbg !902
  store ptr %77, ptr %p, align 8, !dbg !903
  br label %for.cond83, !dbg !904, !llvm.loop !905

for.end90:                                        ; preds = %for.cond83
  br label %if.end91, !dbg !907

if.end91:                                         ; preds = %for.end90, %verified78
  store i32 0, ptr %tmp92, align 4, !dbg !908
  %78 = load i32, ptr %tmp92, align 4, !dbg !911
  store i32 0, ptr %retval, align 4, !dbg !912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !912

cleanup:                                          ; preds = %if.end91, %if.end75, %if.then74, %if.end66, %if.then63, %if.then47, %if.then21, %if.then17, %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #7, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %x509) #7, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #7, !dbg !913
  %79 = load i32, ptr %retval, align 4, !dbg !913
  ret i32 %79, !dbg !913
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !914 dso_local ptr @find_asymmetric_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !919 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !926
  %1 = ptrtoint ptr %0 to i64, !dbg !926
  %2 = inttoptr i64 %1 to ptr, !dbg !926
  %3 = ptrtoint ptr %2 to i64, !dbg !926
  %cmp = icmp uge i64 %3, -4095, !dbg !926
  %lnot = xor i1 %cmp, true, !dbg !926
  %lnot1 = xor i1 %lnot, true, !dbg !926
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !926
  %conv = sext i32 %lnot.ext to i64, !dbg !926
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !926
  %tobool = icmp ne i64 %expval, 0, !dbg !926
  ret i1 %tobool, !dbg !927
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !928 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load i64, ptr %error.addr, align 8, !dbg !934
  %1 = inttoptr i64 %0 to ptr, !dbg !935
  ret ptr %1, !dbg !936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !128 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !937
  %0 = load ptr, ptr %tmp, align 8, !dbg !937
  %call = call i32 %0() #8, !dbg !939
  ret void, !dbg !940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !941 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !945, metadata !DIExpression()), !dbg !946
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !947
  %1 = ptrtoint ptr %0 to i64, !dbg !948
  ret i64 %1, !dbg !949
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !950 dso_local i32 @verify_signature(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !955 dso_local void @key_put(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkcs7_validate_trust120", scope: !2, file: !3, line: 188, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.pkcs7_trust.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/pkcs7_message\22 -D KBUILD_BASENAME=\22pkcs7_trust\22 -D KBUILD_MODNAME=\22pkcs7_message\22 -D __KBUILD_MODNAME=kmod_pkcs7_message -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/pkcs7_trust.ll crypto/asymmetric_keys/pkcs7_trust.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !125, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7_trust.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e4af4f66d005a69abf9b984e91d7059")
!4 = !{!5, !109, !116}
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
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !110, line: 22, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!113 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!114 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!115 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 10, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "false", value: 0)
!120 = !DIEnumerator(name: "true", value: 1)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!125 = !{!0, !126}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !128, file: !129, line: 112, type: !122, isLocal: true, isDefinition: true)
!128 = distinct !DISubprogram(name: "might_resched", scope: !129, file: !129, line: 110, type: !130, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!129 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!130 = !DISubroutineType(types: !131)
!131 = !{null}
!132 = !{i32 7, !"Dwarf Version", i32 5}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 8, !"cf-protection-branch", i32 1}
!136 = !{i32 4, !"function_return_thunk_extern", i32 1}
!137 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!138 = !{i32 1, !"Code Model", i32 2}
!139 = !{i32 1, !"override-stack-alignment", i32 8}
!140 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!141 = distinct !DISubprogram(name: "pkcs7_validate_trust", scope: !3, file: !3, line: 158, type: !142, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !145, !267}
!144 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_message", file: !147, line: 52, size: 448, elements: !148)
!147 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5504888971907a15ec7b804885f1377c")
!148 = !{!149, !240, !241, !257, !258, !259, !260, !265, !266}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !146, file: !147, line: 53, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_certificate", file: !152, line: 12, size: 1344, elements: !153)
!152 = !DIFile(filename: "crypto/asymmetric_keys/x509_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "706a2c38e72925540b7c53948fb9b13f")
!153 = !{!154, !155, !156, !180, !209, !211, !212, !213, !214, !219, !220, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 13, baseType: !150, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !151, file: !152, line: 14, baseType: !150, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !151, file: !152, line: 15, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key", file: !159, line: 22, size: 448, elements: !160)
!159 = !DIFile(filename: "./include/crypto/public_key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bba3709dd387ae2fcb2dcdb4db69068a")
!160 = !{!161, !162, !167, !168, !169, !170, !174, !178, !179}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !158, file: !159, line: 23, baseType: !122, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !158, file: !159, line: 24, baseType: !163, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !164, line: 21, baseType: !165)
!164 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !166, line: 27, baseType: !7)
!166 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !158, file: !159, line: 25, baseType: !5, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !158, file: !159, line: 26, baseType: !122, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "paramlen", scope: !158, file: !159, line: 27, baseType: !163, size: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "key_is_private", scope: !158, file: !159, line: 28, baseType: !171, size: 8, offset: 224)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !172, line: 35, baseType: !173)
!172 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!173 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "id_type", scope: !158, file: !159, line: 29, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !158, file: !159, line: 30, baseType: !175, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "key_eflags", scope: !158, file: !159, line: 31, baseType: !123, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !151, file: !152, line: 16, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key_signature", file: !159, line: 42, size: 576, elements: !183)
!183 = !{!184, !199, !203, !204, !205, !206, !207, !208}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ids", scope: !182, file: !159, line: 43, baseType: !185, size: 192)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 192, elements: !197)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asymmetric_key_id", file: !188, line: 50, size: 16, elements: !189)
!188 = !DIFile(filename: "./include/keys/asymmetric-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3daffae8091b612618c69279094a4c0")
!189 = !{!190, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !187, file: !188, line: 51, baseType: !191, size: 16)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !187, file: !188, line: 52, baseType: !193, offset: 16)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !195)
!194 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !{!196}
!196 = !DISubrange(count: -1)
!197 = !{!198}
!198 = !DISubrange(count: 3)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !182, file: !159, line: 44, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !164, line: 17, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !166, line: 21, baseType: !194)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !182, file: !159, line: 45, baseType: !200, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "s_size", scope: !182, file: !159, line: 46, baseType: !163, size: 32, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !182, file: !159, line: 47, baseType: !163, size: 32, offset: 352)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !182, file: !159, line: 48, baseType: !175, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !182, file: !159, line: 49, baseType: !175, size: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !182, file: !159, line: 50, baseType: !175, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !151, file: !152, line: 17, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !151, file: !152, line: 18, baseType: !210, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !151, file: !152, line: 19, baseType: !186, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !151, file: !152, line: 20, baseType: !186, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "valid_from", scope: !151, file: !152, line: 21, baseType: !215, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !216, line: 8, baseType: !217)
!216 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !166, line: 30, baseType: !218)
!218 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "valid_to", scope: !151, file: !152, line: 22, baseType: !215, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tbs", scope: !151, file: !152, line: 23, baseType: !221, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tbs_size", scope: !151, file: !152, line: 24, baseType: !7, size: 32, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig_size", scope: !151, file: !152, line: 25, baseType: !7, size: 32, offset: 736)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig", scope: !151, file: !152, line: 26, baseType: !221, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial", scope: !151, file: !152, line: 27, baseType: !221, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial_size", scope: !151, file: !152, line: 28, baseType: !7, size: 32, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer_size", scope: !151, file: !152, line: 29, baseType: !7, size: 32, offset: 928)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer", scope: !151, file: !152, line: 30, baseType: !221, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject", scope: !151, file: !152, line: 31, baseType: !221, size: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject_size", scope: !151, file: !152, line: 32, baseType: !7, size: 32, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid_size", scope: !151, file: !152, line: 33, baseType: !7, size: 32, offset: 1120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid", scope: !151, file: !152, line: 34, baseType: !221, size: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !151, file: !152, line: 35, baseType: !7, size: 32, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "seen", scope: !151, file: !152, line: 36, baseType: !171, size: 8, offset: 1248)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "verified", scope: !151, file: !152, line: 37, baseType: !171, size: 8, offset: 1256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "self_signed", scope: !151, file: !152, line: 38, baseType: !171, size: 8, offset: 1264)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_sig", scope: !151, file: !152, line: 39, baseType: !171, size: 8, offset: 1272)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !151, file: !152, line: 40, baseType: !171, size: 8, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !146, file: !147, line: 54, baseType: !150, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "signed_infos", scope: !146, file: !147, line: 55, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_signed_info", file: !147, line: 17, size: 576, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !147, line: 18, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !243, file: !147, line: 19, baseType: !150, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !243, file: !147, line: 20, baseType: !7, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_crypto", scope: !243, file: !147, line: 21, baseType: !171, size: 8, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !243, file: !147, line: 22, baseType: !171, size: 8, offset: 168)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "msgdigest", scope: !243, file: !147, line: 25, baseType: !221, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "msgdigest_len", scope: !243, file: !147, line: 26, baseType: !7, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "authattrs_len", scope: !243, file: !147, line: 29, baseType: !7, size: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "authattrs", scope: !243, file: !147, line: 30, baseType: !221, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aa_set", scope: !243, file: !147, line: 31, baseType: !123, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "signing_time", scope: !243, file: !147, line: 38, baseType: !215, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !243, file: !147, line: 49, baseType: !181, size: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !146, file: !147, line: 56, baseType: !201, size: 8, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "have_authattrs", scope: !146, file: !147, line: 57, baseType: !171, size: 8, offset: 200)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !146, file: !147, line: 60, baseType: !5, size: 32, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !146, file: !147, line: 61, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 61, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !123)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "data_hdrlen", scope: !146, file: !147, line: 62, baseType: !261, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !146, file: !147, line: 63, baseType: !221, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !269, line: 195, size: 1728, elements: !270)
!269 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!270 = !{!271, !281, !286, !303, !348, !351, !352, !357, !358, !366, !373, !376, !377, !378, !380, !381, !568, !584}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !268, file: !269, line: 196, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !273, line: 113, baseType: !274)
!273 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !273, line: 111, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !274, file: !273, line: 112, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !172, line: 174, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 172, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !278, file: !172, line: 173, baseType: !144, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !268, file: !269, line: 197, baseType: !282, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !269, line: 28, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !172, line: 104, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !164, line: 20, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !166, line: 26, baseType: !144)
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 198, baseType: !287, size: 192, offset: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 198, size: 192, elements: !288)
!288 = !{!289, !295}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !287, file: !269, line: 199, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !172, line: 190, size: 128, elements: !291)
!291 = !{!292, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !172, line: 191, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !290, file: !172, line: 191, baseType: !293, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !287, file: !269, line: 200, baseType: !296, size: 192, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !297, line: 5, size: 192, align: 64, elements: !298)
!297 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!298 = !{!299, !300, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !296, file: !297, line: 6, baseType: !123, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !296, file: !297, line: 7, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !296, file: !297, line: 8, baseType: !301, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !268, file: !269, line: 205, baseType: !304, size: 320, offset: 256)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !305, line: 48, size: 320, elements: !306)
!305 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!306 = !{!307, !315, !316, !321, !347}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !304, file: !305, line: 49, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !309, line: 13, baseType: !310)
!309 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !172, line: 181, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 179, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !311, file: !172, line: 180, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !164, line: 22, baseType: !217)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !304, file: !305, line: 55, baseType: !308, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !304, file: !305, line: 57, baseType: !317, size: 32, offset: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !318, line: 15, size: 32, elements: !319)
!318 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !317, file: !318, line: 20, baseType: !277, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !304, file: !305, line: 59, baseType: !322, size: 32, offset: 160)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !323, line: 23, baseType: !324)
!323 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !323, line: 14, size: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !324, file: !323, line: 15, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !328, line: 44, baseType: !329)
!328 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !328, line: 14, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !328, line: 15, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !328, line: 15, size: 32, elements: !333)
!333 = !{!334, !335, !340}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !332, file: !328, line: 16, baseType: !277, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !328, line: 24, baseType: !336, size: 16)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !328, line: 24, size: 16, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !336, file: !328, line: 25, baseType: !201, size: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !336, file: !328, line: 26, baseType: !201, size: 8, offset: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !328, line: 28, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !328, line: 28, size: 32, elements: !342)
!342 = !{!343, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !341, file: !328, line: 29, baseType: !344, size: 16)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !164, line: 19, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !166, line: 24, baseType: !191)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !341, file: !328, line: 30, baseType: !344, size: 16, offset: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !304, file: !305, line: 60, baseType: !290, size: 128, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !268, file: !269, line: 206, baseType: !349, size: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !269, line: 206, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !268, file: !269, line: 207, baseType: !122, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 208, baseType: !353, size: 64, offset: 704)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 208, size: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !353, file: !269, line: 209, baseType: !215, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !353, file: !269, line: 210, baseType: !215, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !268, file: !269, line: 212, baseType: !215, size: 64, offset: 768)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !268, file: !269, line: 213, baseType: !359, size: 32, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !360, line: 23, baseType: !361)
!360 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 21, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !360, line: 22, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !172, line: 37, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !268, file: !269, line: 214, baseType: !367, size: 32, offset: 864)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !360, line: 28, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 26, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !368, file: !360, line: 27, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !172, line: 38, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !7)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !268, file: !269, line: 215, baseType: !374, size: 32, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !269, line: 31, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !172, line: 110, baseType: !163)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !268, file: !269, line: 216, baseType: !191, size: 16, offset: 928)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !268, file: !269, line: 217, baseType: !191, size: 16, offset: 944)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !269, line: 221, baseType: !379, size: 16, offset: 960)
!379 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !269, line: 228, baseType: !123, size: 64, offset: 1024)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 245, baseType: !382, size: 320, offset: 1088)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 245, size: 320, elements: !383)
!383 = !{!384, !560}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !382, file: !269, line: 246, baseType: !385, size: 320)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !269, line: 114, size: 320, elements: !386)
!386 = !{!387, !388, !400, !544, !559}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !385, file: !269, line: 116, baseType: !123, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !269, line: 117, baseType: !389, size: 64, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !269, line: 117, size: 64, elements: !390)
!390 = !{!391, !399}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !269, line: 118, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !269, line: 118, size: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !392, file: !269, line: 120, baseType: !344, size: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !392, file: !269, line: 121, baseType: !396, size: 48, offset: 16)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 48, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 6)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !389, file: !269, line: 127, baseType: !123, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !269, line: 129, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !403, line: 64, size: 1344, elements: !404)
!403 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!404 = !{!405, !406, !407, !408, !412, !433, !437, !441, !442, !460, !464, !468, !469, !475, !479, !484, !502, !530, !535, !539, !540}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !403, line: 66, baseType: !175, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !402, file: !403, line: 72, baseType: !261, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !403, line: 74, baseType: !7, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !402, file: !403, line: 79, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!144, !175}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !402, file: !403, line: 85, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!144, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !403, line: 31, size: 640, elements: !418)
!418 = !{!419, !420, !421, !429, !430, !431, !432}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !417, file: !403, line: 32, baseType: !175, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !417, file: !403, line: 33, baseType: !210, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !417, file: !403, line: 34, baseType: !422, size: 256, offset: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !269, line: 134, size: 256, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !422, file: !269, line: 135, baseType: !122, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !422, file: !269, line: 136, baseType: !426, size: 256)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 4)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !417, file: !403, line: 35, baseType: !221, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !417, file: !403, line: 36, baseType: !261, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !417, file: !403, line: 37, baseType: !261, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !417, file: !403, line: 38, baseType: !215, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !402, file: !403, line: 89, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !416}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !402, file: !403, line: 95, baseType: !438, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!144, !267, !416}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !402, file: !403, line: 102, baseType: !438, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !402, file: !403, line: 108, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!144, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !403, line: 46, size: 256, elements: !448)
!448 = !{!449, !457, !458, !459}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !447, file: !403, line: 51, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!171, !453, !455}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !447, file: !403, line: 54, baseType: !221, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !447, file: !403, line: 55, baseType: !122, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !447, file: !403, line: 56, baseType: !7, size: 32, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !402, file: !403, line: 112, baseType: !461, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !446}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !402, file: !403, line: 117, baseType: !465, size: 64, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !267}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !402, file: !403, line: 120, baseType: !465, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !402, file: !403, line: 123, baseType: !470, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !453, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !269, line: 97, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !402, file: !403, line: 132, baseType: !476, size: 64, offset: 832)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!124, !453, !210, !261}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !402, file: !403, line: 142, baseType: !480, size: 64, offset: 896)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !403, line: 41, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!144, !267, !122}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !402, file: !403, line: 150, baseType: !485, size: 64, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !175}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !269, line: 176, size: 192, elements: !490)
!490 = !{!491, !500, !501}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !489, file: !269, line: 177, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !269, line: 171, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!144, !267, !496, !498, !267}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !489, file: !269, line: 178, baseType: !267, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !489, file: !269, line: 179, baseType: !401, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !402, file: !403, line: 153, baseType: !503, size: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!144, !506, !521}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !110, line: 29, size: 384, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !520}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !508, file: !110, line: 30, baseType: !267, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !508, file: !110, line: 31, baseType: !175, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !508, file: !110, line: 32, baseType: !175, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !508, file: !110, line: 33, baseType: !210, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !508, file: !110, line: 34, baseType: !165, size: 32, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !110, line: 35, baseType: !516, size: 32, offset: 288)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !110, line: 35, size: 32, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !516, file: !110, line: 36, baseType: !165, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !516, file: !110, line: 37, baseType: !165, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !508, file: !110, line: 39, baseType: !109, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !110, line: 13, size: 128, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !522, file: !110, line: 14, baseType: !165, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !522, file: !110, line: 15, baseType: !165, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !522, file: !110, line: 16, baseType: !345, size: 16, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !522, file: !110, line: 17, baseType: !345, size: 16, offset: 80)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !522, file: !110, line: 18, baseType: !345, size: 16, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !522, file: !110, line: 19, baseType: !345, size: 16, offset: 112)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !402, file: !403, line: 155, baseType: !531, size: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!144, !534, !221, !122}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !402, file: !403, line: 157, baseType: !536, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!144, !534, !221, !221}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !402, file: !403, line: 161, baseType: !290, size: 128, offset: 1216)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !402, file: !403, line: 162, baseType: !541, offset: 1344)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !542, line: 206, elements: !543)
!542 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!543 = !{}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !385, file: !269, line: 130, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !269, line: 108, size: 192, elements: !547)
!547 = !{!548, !557, !558}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !546, file: !269, line: 109, baseType: !549, size: 128, align: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !172, line: 232, size: 128, align: 64, elements: !550)
!550 = !{!551, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !172, line: 233, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !549, file: !172, line: 234, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !552}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !546, file: !269, line: 110, baseType: !272, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !546, file: !269, line: 111, baseType: !171, size: 8, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !385, file: !269, line: 131, baseType: !175, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !269, line: 247, baseType: !561, size: 320)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !269, line: 247, size: 320, elements: !562)
!562 = !{!563, !564, !565, !566, !567}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !561, file: !269, line: 248, baseType: !123, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !561, file: !269, line: 249, baseType: !123, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !269, line: 250, baseType: !401, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !561, file: !269, line: 251, baseType: !545, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !561, file: !269, line: 252, baseType: !210, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !269, line: 260, baseType: !569, size: 256, offset: 1408)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 260, size: 256, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !569, file: !269, line: 261, baseType: !422, size: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !269, line: 262, baseType: !573, size: 256)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !269, line: 262, size: 256, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !573, file: !269, line: 264, baseType: !290, size: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !573, file: !269, line: 265, baseType: !577, size: 128, offset: 128)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !578, line: 22, size: 128, elements: !579)
!578 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!579 = !{!580, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !577, file: !578, line: 23, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !578, line: 23, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !577, file: !578, line: 24, baseType: !123, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !268, file: !269, line: 280, baseType: !488, size: 64, offset: 1664)
!585 = !{!586, !587, !588, !589, !590, !591}
!586 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !141, file: !3, line: 158, type: !145)
!587 = !DILocalVariable(name: "trust_keyring", arg: 2, scope: !141, file: !3, line: 159, type: !267)
!588 = !DILocalVariable(name: "sinfo", scope: !141, file: !3, line: 161, type: !242)
!589 = !DILocalVariable(name: "p", scope: !141, file: !3, line: 162, type: !150)
!590 = !DILocalVariable(name: "cached_ret", scope: !141, file: !3, line: 163, type: !144)
!591 = !DILocalVariable(name: "ret", scope: !141, file: !3, line: 164, type: !144)
!592 = !DILocation(line: 158, column: 48, scope: !141)
!593 = !DILocation(line: 159, column: 17, scope: !141)
!594 = !DILocation(line: 161, column: 2, scope: !141)
!595 = !DILocation(line: 161, column: 28, scope: !141)
!596 = !DILocation(line: 162, column: 2, scope: !141)
!597 = !DILocation(line: 162, column: 27, scope: !141)
!598 = !DILocation(line: 163, column: 2, scope: !141)
!599 = !DILocation(line: 163, column: 6, scope: !141)
!600 = !DILocation(line: 164, column: 2, scope: !141)
!601 = !DILocation(line: 164, column: 6, scope: !141)
!602 = !DILocation(line: 166, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !141, file: !3, line: 166, column: 2)
!604 = !DILocation(line: 166, column: 18, scope: !603)
!605 = !DILocation(line: 166, column: 9, scope: !603)
!606 = !DILocation(line: 166, column: 7, scope: !603)
!607 = !DILocation(line: 166, column: 25, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 166, column: 2)
!609 = !DILocation(line: 166, column: 2, scope: !603)
!610 = !DILocation(line: 167, column: 3, scope: !608)
!611 = !DILocation(line: 167, column: 6, scope: !608)
!612 = !DILocation(line: 167, column: 11, scope: !608)
!613 = !DILocation(line: 166, column: 32, scope: !608)
!614 = !DILocation(line: 166, column: 35, scope: !608)
!615 = !DILocation(line: 166, column: 30, scope: !608)
!616 = !DILocation(line: 166, column: 2, scope: !608)
!617 = distinct !{!617, !609, !618, !619, !620}
!618 = !DILocation(line: 167, column: 13, scope: !603)
!619 = !{!"llvm.loop.mustprogress"}
!620 = !{!"llvm.loop.unroll.disable"}
!621 = !DILocation(line: 169, column: 15, scope: !622)
!622 = distinct !DILexicalBlock(scope: !141, file: !3, line: 169, column: 2)
!623 = !DILocation(line: 169, column: 22, scope: !622)
!624 = !DILocation(line: 169, column: 13, scope: !622)
!625 = !DILocation(line: 169, column: 7, scope: !622)
!626 = !DILocation(line: 169, column: 36, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 169, column: 2)
!628 = !DILocation(line: 169, column: 2, scope: !622)
!629 = !DILocation(line: 170, column: 34, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !3, line: 169, column: 64)
!631 = !DILocation(line: 170, column: 41, scope: !630)
!632 = !DILocation(line: 170, column: 48, scope: !630)
!633 = !DILocation(line: 170, column: 9, scope: !630)
!634 = !DILocation(line: 170, column: 7, scope: !630)
!635 = !DILocation(line: 171, column: 11, scope: !630)
!636 = !DILocation(line: 171, column: 3, scope: !630)
!637 = !DILocation(line: 173, column: 4, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !3, line: 171, column: 16)
!639 = !DILocation(line: 175, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !3, line: 175, column: 8)
!641 = !DILocation(line: 175, column: 19, scope: !640)
!642 = !DILocation(line: 175, column: 8, scope: !638)
!643 = !DILocation(line: 176, column: 16, scope: !640)
!644 = !DILocation(line: 176, column: 5, scope: !640)
!645 = !DILocation(line: 177, column: 4, scope: !638)
!646 = !DILocation(line: 179, column: 15, scope: !638)
!647 = !DILocation(line: 180, column: 4, scope: !638)
!648 = !DILocation(line: 182, column: 11, scope: !638)
!649 = !DILocation(line: 182, column: 4, scope: !638)
!650 = !DILocation(line: 169, column: 51, scope: !627)
!651 = !DILocation(line: 169, column: 58, scope: !627)
!652 = !DILocation(line: 169, column: 49, scope: !627)
!653 = !DILocation(line: 169, column: 2, scope: !627)
!654 = distinct !{!654, !628, !655, !619, !620}
!655 = !DILocation(line: 184, column: 2, scope: !622)
!656 = !DILocation(line: 186, column: 9, scope: !141)
!657 = !DILocation(line: 186, column: 2, scope: !141)
!658 = !DILocation(line: 187, column: 1, scope: !141)
!659 = distinct !DISubprogram(name: "pkcs7_validate_trust_one", scope: !3, file: !3, line: 22, type: !660, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!144, !145, !242, !267}
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!663 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !659, file: !3, line: 22, type: !145)
!664 = !DILocalVariable(name: "sinfo", arg: 2, scope: !659, file: !3, line: 23, type: !242)
!665 = !DILocalVariable(name: "trust_keyring", arg: 3, scope: !659, file: !3, line: 24, type: !267)
!666 = !DILocalVariable(name: "sig", scope: !659, file: !3, line: 26, type: !181)
!667 = !DILocalVariable(name: "x509", scope: !659, file: !3, line: 27, type: !150)
!668 = !DILocalVariable(name: "last", scope: !659, file: !3, line: 27, type: !150)
!669 = !DILocalVariable(name: "p", scope: !659, file: !3, line: 27, type: !150)
!670 = !DILocalVariable(name: "key", scope: !659, file: !3, line: 28, type: !267)
!671 = !DILocalVariable(name: "ret", scope: !659, file: !3, line: 29, type: !144)
!672 = !DILabel(scope: !659, name: "matched", file: !3, line: 114)
!673 = !DILabel(scope: !659, name: "verified", file: !3, line: 124)
!674 = !DILocation(line: 22, column: 59, scope: !659)
!675 = !DILocation(line: 23, column: 35, scope: !659)
!676 = !DILocation(line: 24, column: 21, scope: !659)
!677 = !DILocation(line: 26, column: 2, scope: !659)
!678 = !DILocation(line: 26, column: 31, scope: !659)
!679 = !DILocation(line: 26, column: 37, scope: !659)
!680 = !DILocation(line: 26, column: 44, scope: !659)
!681 = !DILocation(line: 27, column: 2, scope: !659)
!682 = !DILocation(line: 27, column: 27, scope: !659)
!683 = !DILocation(line: 27, column: 34, scope: !659)
!684 = !DILocation(line: 27, column: 48, scope: !659)
!685 = !DILocation(line: 28, column: 2, scope: !659)
!686 = !DILocation(line: 28, column: 14, scope: !659)
!687 = !DILocation(line: 29, column: 2, scope: !659)
!688 = !DILocation(line: 29, column: 6, scope: !659)
!689 = !DILocation(line: 31, column: 2, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 31, column: 2)
!691 = distinct !DILexicalBlock(scope: !659, file: !3, line: 31, column: 2)
!692 = !DILocation(line: 31, column: 2, scope: !691)
!693 = !DILocation(line: 33, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !659, file: !3, line: 33, column: 6)
!695 = !DILocation(line: 33, column: 13, scope: !694)
!696 = !{i8 0, i8 2}
!697 = !DILocation(line: 33, column: 6, scope: !659)
!698 = !DILocation(line: 34, column: 3, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 34, column: 3)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 34, column: 3)
!701 = distinct !DILexicalBlock(scope: !694, file: !3, line: 33, column: 33)
!702 = !DILocation(line: 34, column: 3, scope: !700)
!703 = !DILocation(line: 35, column: 3, scope: !701)
!704 = !DILocation(line: 38, column: 14, scope: !705)
!705 = distinct !DILexicalBlock(scope: !659, file: !3, line: 38, column: 2)
!706 = !DILocation(line: 38, column: 21, scope: !705)
!707 = !DILocation(line: 38, column: 12, scope: !705)
!708 = !DILocation(line: 38, column: 7, scope: !705)
!709 = !DILocation(line: 38, column: 29, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !3, line: 38, column: 2)
!711 = !DILocation(line: 38, column: 2, scope: !705)
!712 = !DILocation(line: 39, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 39, column: 7)
!714 = distinct !DILexicalBlock(scope: !710, file: !3, line: 38, column: 56)
!715 = !DILocation(line: 39, column: 13, scope: !713)
!716 = !DILocation(line: 39, column: 7, scope: !714)
!717 = !DILocation(line: 40, column: 8, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 40, column: 8)
!719 = distinct !DILexicalBlock(scope: !713, file: !3, line: 39, column: 19)
!720 = !DILocation(line: 40, column: 14, scope: !718)
!721 = !DILocation(line: 40, column: 8, scope: !719)
!722 = !DILocation(line: 41, column: 5, scope: !718)
!723 = !DILocation(line: 42, column: 4, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 42, column: 4)
!725 = distinct !DILexicalBlock(scope: !719, file: !3, line: 42, column: 4)
!726 = !DILocation(line: 42, column: 4, scope: !725)
!727 = !DILocation(line: 43, column: 4, scope: !719)
!728 = !DILocation(line: 45, column: 3, scope: !714)
!729 = !DILocation(line: 45, column: 9, scope: !714)
!730 = !DILocation(line: 45, column: 14, scope: !714)
!731 = !DILocation(line: 50, column: 29, scope: !714)
!732 = !DILocation(line: 51, column: 8, scope: !714)
!733 = !DILocation(line: 51, column: 14, scope: !714)
!734 = !DILocation(line: 51, column: 18, scope: !714)
!735 = !DILocation(line: 51, column: 24, scope: !714)
!736 = !DILocation(line: 50, column: 9, scope: !714)
!737 = !DILocation(line: 50, column: 7, scope: !714)
!738 = !DILocation(line: 52, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !714, file: !3, line: 52, column: 7)
!740 = !DILocation(line: 52, column: 8, scope: !739)
!741 = !DILocation(line: 52, column: 7, scope: !714)
!742 = !DILocation(line: 58, column: 4, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 58, column: 4)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 58, column: 4)
!745 = distinct !DILexicalBlock(scope: !739, file: !3, line: 52, column: 21)
!746 = !DILocation(line: 58, column: 4, scope: !744)
!747 = !DILocation(line: 60, column: 4, scope: !745)
!748 = !DILocation(line: 62, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !714, file: !3, line: 62, column: 7)
!750 = !DILocation(line: 62, column: 14, scope: !749)
!751 = !DILocation(line: 62, column: 11, scope: !749)
!752 = !DILocation(line: 62, column: 7, scope: !714)
!753 = !DILocation(line: 63, column: 4, scope: !749)
!754 = !DILocation(line: 68, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !714, file: !3, line: 68, column: 7)
!756 = !DILocation(line: 68, column: 13, scope: !755)
!757 = !DILocation(line: 68, column: 23, scope: !755)
!758 = !DILocation(line: 68, column: 20, scope: !755)
!759 = !DILocation(line: 68, column: 7, scope: !714)
!760 = !DILocation(line: 69, column: 4, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 69, column: 4)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 69, column: 4)
!763 = distinct !DILexicalBlock(scope: !755, file: !3, line: 68, column: 29)
!764 = !DILocation(line: 69, column: 4, scope: !762)
!765 = !DILocation(line: 70, column: 4, scope: !763)
!766 = !DILocation(line: 73, column: 3, scope: !714)
!767 = !DILocation(line: 73, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !714, file: !3, line: 73, column: 3)
!769 = !DILocation(line: 74, column: 10, scope: !714)
!770 = !DILocation(line: 74, column: 8, scope: !714)
!771 = !DILocation(line: 75, column: 9, scope: !714)
!772 = !DILocation(line: 75, column: 15, scope: !714)
!773 = !DILocation(line: 75, column: 7, scope: !714)
!774 = !DILocation(line: 76, column: 2, scope: !714)
!775 = !DILocation(line: 38, column: 42, scope: !710)
!776 = !DILocation(line: 38, column: 48, scope: !710)
!777 = !DILocation(line: 38, column: 40, scope: !710)
!778 = !DILocation(line: 38, column: 2, scope: !710)
!779 = distinct !{!779, !711, !780, !619, !620}
!780 = !DILocation(line: 76, column: 2, scope: !705)
!781 = !DILocation(line: 81, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !659, file: !3, line: 81, column: 6)
!783 = !DILocation(line: 81, column: 11, scope: !782)
!784 = !DILocation(line: 81, column: 15, scope: !782)
!785 = !DILocation(line: 81, column: 21, scope: !782)
!786 = !DILocation(line: 81, column: 26, scope: !782)
!787 = !DILocation(line: 81, column: 38, scope: !782)
!788 = !DILocation(line: 81, column: 41, scope: !782)
!789 = !DILocation(line: 81, column: 47, scope: !782)
!790 = !DILocation(line: 81, column: 52, scope: !782)
!791 = !DILocation(line: 81, column: 6, scope: !659)
!792 = !DILocation(line: 82, column: 29, scope: !793)
!793 = distinct !DILexicalBlock(scope: !782, file: !3, line: 81, column: 66)
!794 = !DILocation(line: 83, column: 8, scope: !793)
!795 = !DILocation(line: 83, column: 14, scope: !793)
!796 = !DILocation(line: 83, column: 19, scope: !793)
!797 = !DILocation(line: 84, column: 8, scope: !793)
!798 = !DILocation(line: 84, column: 14, scope: !793)
!799 = !DILocation(line: 84, column: 19, scope: !793)
!800 = !DILocation(line: 82, column: 9, scope: !793)
!801 = !DILocation(line: 82, column: 7, scope: !793)
!802 = !DILocation(line: 86, column: 15, scope: !803)
!803 = distinct !DILexicalBlock(scope: !793, file: !3, line: 86, column: 7)
!804 = !DILocation(line: 86, column: 8, scope: !803)
!805 = !DILocation(line: 86, column: 7, scope: !793)
!806 = !DILocation(line: 87, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 86, column: 21)
!808 = !DILocation(line: 87, column: 9, scope: !807)
!809 = !DILocation(line: 88, column: 4, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 88, column: 4)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 88, column: 4)
!812 = !DILocation(line: 88, column: 4, scope: !811)
!813 = !DILocation(line: 90, column: 4, scope: !807)
!814 = !DILocation(line: 92, column: 15, scope: !815)
!815 = distinct !DILexicalBlock(scope: !793, file: !3, line: 92, column: 7)
!816 = !DILocation(line: 92, column: 7, scope: !815)
!817 = !DILocation(line: 92, column: 20, scope: !815)
!818 = !DILocation(line: 92, column: 7, scope: !793)
!819 = !DILocation(line: 93, column: 19, scope: !815)
!820 = !DILocation(line: 93, column: 11, scope: !815)
!821 = !DILocation(line: 93, column: 4, scope: !815)
!822 = !DILocation(line: 94, column: 2, scope: !793)
!823 = !DILocation(line: 99, column: 28, scope: !659)
!824 = !DILocation(line: 100, column: 7, scope: !659)
!825 = !DILocation(line: 100, column: 14, scope: !659)
!826 = !DILocation(line: 100, column: 19, scope: !659)
!827 = !DILocation(line: 99, column: 8, scope: !659)
!828 = !DILocation(line: 99, column: 6, scope: !659)
!829 = !DILocation(line: 101, column: 14, scope: !830)
!830 = distinct !DILexicalBlock(scope: !659, file: !3, line: 101, column: 6)
!831 = !DILocation(line: 101, column: 7, scope: !830)
!832 = !DILocation(line: 101, column: 6, scope: !659)
!833 = !DILocation(line: 102, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 102, column: 3)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 102, column: 3)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 101, column: 20)
!837 = !DILocation(line: 102, column: 3, scope: !835)
!838 = !DILocation(line: 104, column: 8, scope: !836)
!839 = !DILocation(line: 105, column: 9, scope: !836)
!840 = !DILocation(line: 105, column: 16, scope: !836)
!841 = !DILocation(line: 105, column: 7, scope: !836)
!842 = !DILocation(line: 106, column: 3, scope: !836)
!843 = !DILocation(line: 108, column: 14, scope: !844)
!844 = distinct !DILexicalBlock(scope: !659, file: !3, line: 108, column: 6)
!845 = !DILocation(line: 108, column: 6, scope: !844)
!846 = !DILocation(line: 108, column: 19, scope: !844)
!847 = !DILocation(line: 108, column: 6, scope: !659)
!848 = !DILocation(line: 109, column: 18, scope: !844)
!849 = !DILocation(line: 109, column: 10, scope: !844)
!850 = !DILocation(line: 109, column: 3, scope: !844)
!851 = !DILocation(line: 111, column: 2, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 111, column: 2)
!853 = distinct !DILexicalBlock(scope: !659, file: !3, line: 111, column: 2)
!854 = !DILocation(line: 111, column: 2, scope: !853)
!855 = !DILocation(line: 112, column: 2, scope: !659)
!856 = !DILocation(line: 114, column: 1, scope: !659)
!857 = !DILocation(line: 115, column: 25, scope: !659)
!858 = !DILocation(line: 115, column: 30, scope: !659)
!859 = !DILocation(line: 115, column: 8, scope: !659)
!860 = !DILocation(line: 115, column: 6, scope: !659)
!861 = !DILocation(line: 116, column: 10, scope: !659)
!862 = !DILocation(line: 116, column: 2, scope: !659)
!863 = !DILocation(line: 117, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !659, file: !3, line: 117, column: 6)
!865 = !DILocation(line: 117, column: 10, scope: !864)
!866 = !DILocation(line: 117, column: 6, scope: !659)
!867 = !DILocation(line: 118, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 118, column: 7)
!869 = distinct !DILexicalBlock(scope: !864, file: !3, line: 117, column: 15)
!870 = !DILocation(line: 118, column: 11, scope: !868)
!871 = !DILocation(line: 118, column: 7, scope: !869)
!872 = !DILocation(line: 119, column: 11, scope: !868)
!873 = !DILocation(line: 119, column: 4, scope: !868)
!874 = !DILocation(line: 120, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 120, column: 3)
!876 = distinct !DILexicalBlock(scope: !869, file: !3, line: 120, column: 3)
!877 = !DILocation(line: 120, column: 3, scope: !876)
!878 = !DILocation(line: 121, column: 3, scope: !869)
!879 = !DILocation(line: 117, column: 12, scope: !864)
!880 = !DILocation(line: 124, column: 1, scope: !659)
!881 = !DILocation(line: 125, column: 6, scope: !882)
!882 = distinct !DILexicalBlock(scope: !659, file: !3, line: 125, column: 6)
!883 = !DILocation(line: 125, column: 6, scope: !659)
!884 = !DILocation(line: 126, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !3, line: 125, column: 12)
!886 = !DILocation(line: 126, column: 9, scope: !885)
!887 = !DILocation(line: 126, column: 18, scope: !885)
!888 = !DILocation(line: 127, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 127, column: 3)
!890 = !DILocation(line: 127, column: 19, scope: !889)
!891 = !DILocation(line: 127, column: 10, scope: !889)
!892 = !DILocation(line: 127, column: 8, scope: !889)
!893 = !DILocation(line: 127, column: 27, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !3, line: 127, column: 3)
!895 = !DILocation(line: 127, column: 32, scope: !894)
!896 = !DILocation(line: 127, column: 29, scope: !894)
!897 = !DILocation(line: 127, column: 3, scope: !889)
!898 = !DILocation(line: 128, column: 4, scope: !894)
!899 = !DILocation(line: 128, column: 7, scope: !894)
!900 = !DILocation(line: 128, column: 16, scope: !894)
!901 = !DILocation(line: 127, column: 42, scope: !894)
!902 = !DILocation(line: 127, column: 45, scope: !894)
!903 = !DILocation(line: 127, column: 40, scope: !894)
!904 = !DILocation(line: 127, column: 3, scope: !894)
!905 = distinct !{!905, !897, !906, !619, !620}
!906 = !DILocation(line: 128, column: 18, scope: !889)
!907 = !DILocation(line: 129, column: 2, scope: !885)
!908 = !DILocation(line: 130, column: 2, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 130, column: 2)
!910 = distinct !DILexicalBlock(scope: !659, file: !3, line: 130, column: 2)
!911 = !DILocation(line: 130, column: 2, scope: !910)
!912 = !DILocation(line: 131, column: 2, scope: !659)
!913 = !DILocation(line: 132, column: 1, scope: !659)
!914 = !DISubprogram(name: "find_asymmetric_key", scope: !188, file: !188, line: 81, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{!267, !267, !917, !917, !917, !171}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!919 = distinct !DISubprogram(name: "IS_ERR", scope: !920, file: !920, line: 59, type: !921, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!920 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!921 = !DISubroutineType(types: !922)
!922 = !{!171, !221}
!923 = !{!924}
!924 = !DILocalVariable(name: "ptr", arg: 1, scope: !919, file: !920, line: 59, type: !221)
!925 = !DILocation(line: 59, column: 60, scope: !919)
!926 = !DILocation(line: 61, column: 9, scope: !919)
!927 = !DILocation(line: 61, column: 2, scope: !919)
!928 = distinct !DISubprogram(name: "ERR_PTR", scope: !920, file: !920, line: 39, type: !929, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!122, !124}
!931 = !{!932}
!932 = !DILocalVariable(name: "error", arg: 1, scope: !928, file: !920, line: 39, type: !124)
!933 = !DILocation(line: 39, column: 48, scope: !928)
!934 = !DILocation(line: 41, column: 18, scope: !928)
!935 = !DILocation(line: 41, column: 9, scope: !928)
!936 = !DILocation(line: 41, column: 2, scope: !928)
!937 = !DILocation(line: 112, column: 2, scope: !938)
!938 = distinct !DILexicalBlock(scope: !128, file: !129, line: 112, column: 2)
!939 = !DILocation(line: 112, column: 2, scope: !128)
!940 = !DILocation(line: 113, column: 1, scope: !128)
!941 = distinct !DISubprogram(name: "PTR_ERR", scope: !920, file: !920, line: 49, type: !942, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{!124, !221}
!944 = !{!945}
!945 = !DILocalVariable(name: "ptr", arg: 1, scope: !941, file: !920, line: 49, type: !221)
!946 = !DILocation(line: 49, column: 61, scope: !941)
!947 = !DILocation(line: 51, column: 16, scope: !941)
!948 = !DILocation(line: 51, column: 9, scope: !941)
!949 = !DILocation(line: 51, column: 2, scope: !941)
!950 = !DISubprogram(name: "verify_signature", scope: !159, file: !159, line: 109, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!144, !453, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!955 = !DISubprogram(name: "key_put", scope: !269, file: !269, line: 302, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
