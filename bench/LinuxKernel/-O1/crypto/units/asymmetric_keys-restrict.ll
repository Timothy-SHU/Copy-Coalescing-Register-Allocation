; ModuleID = 'crypto/asymmetric_keys/restrict.c'
source_filename = "crypto/asymmetric_keys/restrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.anon.10 = type { %struct.asymmetric_key_id, [10 x i8] }
%struct.asymmetric_key_id = type { i16, [0 x i8] }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, %struct.rw_semaphore, ptr, ptr, %union.anon.3, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.4, %union.anon.8, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.0 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%union.anon.3 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.4 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.5, ptr, ptr, ptr }
%union.anon.5 = type { i64 }
%union.anon.8 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr, i64 }
%struct.anon.7 = type { i64, i64, ptr, ptr, ptr }
%struct.asymmetric_key_ids = type { [3 x ptr] }

@__setup_str_ca_keys_setup = internal constant [9 x i8] c"ca_keys=\00", section ".init.rodata", align 1, !dbg !0
@__setup_ca_keys_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ca_keys_setup, ptr @ca_keys_setup, i32 0 }, section ".init.setup", align 8, !dbg !157
@key_type_asymmetric = external dso_local global %struct.key_type, align 8
@ca_keyid = internal global ptr null, align 8, !dbg !177
@use_builtin_keys = internal global i8 0, align 1, !dbg !173
@.str = private unnamed_addr constant [4 x i8] c"id:\00", align 1, !dbg !180
@cakey = internal global %struct.anon.10 zeroinitializer, align 2, !dbg !200
@.str.1 = private unnamed_addr constant [39 x i8] c"\013ASYM: Missing or invalid ca_keys id\0A\00", align 1, !dbg !185
@.str.2 = private unnamed_addr constant [42 x i8] c"\013ASYM: Unparsable ca_keys id hex string\0A\00", align 1, !dbg !190
@.str.3 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1, !dbg !195
@key_type_keyring = external dso_local global %struct.key_type, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_ca_keys_setup], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ca_keys_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !221 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %hexlen = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !223, metadata !DIExpression()), !dbg !233
  %0 = load ptr, ptr %str.addr, align 8, !dbg !234
  %tobool = icmp ne ptr %0, null, !dbg !234
  br i1 %tobool, label %if.end, label %if.then, !dbg !236

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !237
  br label %return, !dbg !237

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !238
  %call = call i32 @strncmp(ptr noundef %1, ptr noundef @.str, i64 noundef 3) #11, !dbg !239
  %cmp = icmp eq i32 %call, 0, !dbg !240
  br i1 %cmp, label %if.then1, label %if.else19, !dbg !241

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %p, metadata !224, metadata !DIExpression()), !dbg !243
  store ptr @cakey, ptr %p, align 8, !dbg !243
  call void @llvm.lifetime.start.p0(i64 8, ptr %hexlen) #12, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %hexlen, metadata !227, metadata !DIExpression()), !dbg !245
  %2 = load ptr, ptr %str.addr, align 8, !dbg !246
  %call2 = call i64 @strlen(ptr noundef %2) #11, !dbg !247
  %sub = sub i64 %call2, 3, !dbg !248
  %div = udiv i64 %sub, 2, !dbg !249
  store i64 %div, ptr %hexlen, align 8, !dbg !245
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !232, metadata !DIExpression()), !dbg !251
  %3 = load i64, ptr %hexlen, align 8, !dbg !252
  %cmp3 = icmp eq i64 %3, 0, !dbg !254
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !255

lor.lhs.false:                                    ; preds = %if.then1
  %4 = load i64, ptr %hexlen, align 8, !dbg !256
  %cmp4 = icmp ugt i64 %4, 10, !dbg !257
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !258

if.then5:                                         ; preds = %lor.lhs.false, %if.then1
  br label %do.body, !dbg !259

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !262

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !262

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #13, !dbg !259
  store i32 %call6, ptr %tmp, align 4, !dbg !262
  %5 = load i32, ptr %tmp, align 4, !dbg !259
  store i32 1, ptr %retval, align 4, !dbg !264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !264

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %str.addr, align 8, !dbg !265
  %add.ptr = getelementptr i8, ptr %6, i64 3, !dbg !266
  %7 = load ptr, ptr %p, align 8, !dbg !267
  %8 = load i64, ptr %hexlen, align 8, !dbg !268
  %call8 = call i32 @__asymmetric_key_hex_to_key_id(ptr noundef %add.ptr, ptr noundef %7, i64 noundef %8) #11, !dbg !269
  store i32 %call8, ptr %ret, align 4, !dbg !270
  %9 = load i32, ptr %ret, align 4, !dbg !271
  %cmp9 = icmp slt i32 %9, 0, !dbg !273
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !274

if.then10:                                        ; preds = %if.end7
  br label %do.body11, !dbg !275

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !277

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !277

do.end13:                                         ; preds = %do.cond12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #13, !dbg !275
  store i32 %call15, ptr %tmp14, align 4, !dbg !277
  %10 = load i32, ptr %tmp14, align 4, !dbg !275
  br label %if.end16, !dbg !279

if.else:                                          ; preds = %if.end7
  %11 = load ptr, ptr %p, align 8, !dbg !280
  store ptr %11, ptr @ca_keyid, align 8, !dbg !281
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !282
  br label %cleanup, !dbg !282

cleanup:                                          ; preds = %if.end16, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !282
  call void @llvm.lifetime.end.p0(i64 8, ptr %hexlen) #12, !dbg !282
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !282
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end24, !dbg !283

if.else19:                                        ; preds = %if.end
  %12 = load ptr, ptr %str.addr, align 8, !dbg !284
  %call20 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.3) #11, !dbg !286
  %cmp21 = icmp eq i32 %call20, 0, !dbg !287
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !288

if.then22:                                        ; preds = %if.else19
  store i8 1, ptr @use_builtin_keys, align 1, !dbg !289
  br label %if.end23, !dbg !291

if.end23:                                         ; preds = %if.then22, %if.else19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %cleanup.cont
  store i32 1, ptr %retval, align 4, !dbg !292
  br label %return, !dbg !292

return:                                           ; preds = %if.end24, %cleanup, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !293
  ret i32 %13, !dbg !293

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_signature(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trust_keyring) #1 align 16 !dbg !294 {
entry:
  %retval = alloca i32, align 4
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %trust_keyring.addr = alloca ptr, align 8
  %sig = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !625, metadata !DIExpression()), !dbg !649
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !626, metadata !DIExpression()), !dbg !650
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !627, metadata !DIExpression()), !dbg !651
  store ptr %trust_keyring, ptr %trust_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trust_keyring.addr, metadata !628, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #12, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !629, metadata !DIExpression()), !dbg !654
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #12, !dbg !655
  call void @llvm.dbg.declare(metadata ptr %key, metadata !647, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !648, metadata !DIExpression()), !dbg !658
  store i32 0, ptr %tmp, align 4, !dbg !659
  %0 = load i32, ptr %tmp, align 4, !dbg !662
  %1 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !663
  %tobool = icmp ne ptr %1, null, !dbg !663
  br i1 %tobool, label %if.end, label %if.then, !dbg !665

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !666

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %type.addr, align 8, !dbg !667
  %cmp = icmp ne ptr %2, @key_type_asymmetric, !dbg !669
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !670

if.then1:                                         ; preds = %if.end
  store i32 -95, ptr %retval, align 4, !dbg !671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !671

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %payload.addr, align 8, !dbg !672
  %arrayidx = getelementptr [4 x ptr], ptr %3, i64 0, i64 3, !dbg !672
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !672
  store ptr %4, ptr %sig, align 8, !dbg !673
  %5 = load ptr, ptr %sig, align 8, !dbg !674
  %tobool3 = icmp ne ptr %5, null, !dbg !674
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !676

if.then4:                                         ; preds = %if.end2
  store i32 -65, ptr %retval, align 4, !dbg !677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !677

if.end5:                                          ; preds = %if.end2
  %6 = load ptr, ptr %sig, align 8, !dbg !678
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %6, i32 0, i32 0, !dbg !680
  %arrayidx6 = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !678
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !678
  %tobool7 = icmp ne ptr %7, null, !dbg !678
  br i1 %tobool7, label %if.end16, label %land.lhs.true, !dbg !681

land.lhs.true:                                    ; preds = %if.end5
  %8 = load ptr, ptr %sig, align 8, !dbg !682
  %auth_ids8 = getelementptr inbounds %struct.public_key_signature, ptr %8, i32 0, i32 0, !dbg !683
  %arrayidx9 = getelementptr [3 x ptr], ptr %auth_ids8, i64 0, i64 1, !dbg !682
  %9 = load ptr, ptr %arrayidx9, align 8, !dbg !682
  %tobool10 = icmp ne ptr %9, null, !dbg !682
  br i1 %tobool10, label %if.end16, label %land.lhs.true11, !dbg !684

land.lhs.true11:                                  ; preds = %land.lhs.true
  %10 = load ptr, ptr %sig, align 8, !dbg !685
  %auth_ids12 = getelementptr inbounds %struct.public_key_signature, ptr %10, i32 0, i32 0, !dbg !686
  %arrayidx13 = getelementptr [3 x ptr], ptr %auth_ids12, i64 0, i64 2, !dbg !685
  %11 = load ptr, ptr %arrayidx13, align 8, !dbg !685
  %tobool14 = icmp ne ptr %11, null, !dbg !685
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !687

if.then15:                                        ; preds = %land.lhs.true11
  store i32 -126, ptr %retval, align 4, !dbg !688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !688

if.end16:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.end5
  %12 = load ptr, ptr @ca_keyid, align 8, !dbg !689
  %tobool17 = icmp ne ptr %12, null, !dbg !689
  br i1 %tobool17, label %land.lhs.true18, label %if.end22, !dbg !691

land.lhs.true18:                                  ; preds = %if.end16
  %13 = load ptr, ptr %sig, align 8, !dbg !692
  %auth_ids19 = getelementptr inbounds %struct.public_key_signature, ptr %13, i32 0, i32 0, !dbg !693
  %arrayidx20 = getelementptr [3 x ptr], ptr %auth_ids19, i64 0, i64 1, !dbg !692
  %14 = load ptr, ptr %arrayidx20, align 8, !dbg !692
  %15 = load ptr, ptr @ca_keyid, align 8, !dbg !694
  %call = call zeroext i1 @asymmetric_key_id_partial(ptr noundef %14, ptr noundef %15) #11, !dbg !695
  br i1 %call, label %if.end22, label %if.then21, !dbg !696

if.then21:                                        ; preds = %land.lhs.true18
  store i32 -1, ptr %retval, align 4, !dbg !697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !697

if.end22:                                         ; preds = %land.lhs.true18, %if.end16
  %16 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !698
  %17 = load ptr, ptr %sig, align 8, !dbg !699
  %auth_ids23 = getelementptr inbounds %struct.public_key_signature, ptr %17, i32 0, i32 0, !dbg !700
  %arrayidx24 = getelementptr [3 x ptr], ptr %auth_ids23, i64 0, i64 0, !dbg !699
  %18 = load ptr, ptr %arrayidx24, align 8, !dbg !699
  %19 = load ptr, ptr %sig, align 8, !dbg !701
  %auth_ids25 = getelementptr inbounds %struct.public_key_signature, ptr %19, i32 0, i32 0, !dbg !702
  %arrayidx26 = getelementptr [3 x ptr], ptr %auth_ids25, i64 0, i64 1, !dbg !701
  %20 = load ptr, ptr %arrayidx26, align 8, !dbg !701
  %21 = load ptr, ptr %sig, align 8, !dbg !703
  %auth_ids27 = getelementptr inbounds %struct.public_key_signature, ptr %21, i32 0, i32 0, !dbg !704
  %arrayidx28 = getelementptr [3 x ptr], ptr %auth_ids27, i64 0, i64 2, !dbg !703
  %22 = load ptr, ptr %arrayidx28, align 8, !dbg !703
  %call29 = call ptr @find_asymmetric_key(ptr noundef %16, ptr noundef %18, ptr noundef %20, ptr noundef %22, i1 noundef zeroext false) #11, !dbg !705
  store ptr %call29, ptr %key, align 8, !dbg !706
  %23 = load ptr, ptr %key, align 8, !dbg !707
  %call30 = call zeroext i1 @IS_ERR(ptr noundef %23) #11, !dbg !709
  br i1 %call30, label %if.then31, label %if.end32, !dbg !710

if.then31:                                        ; preds = %if.end22
  store i32 -126, ptr %retval, align 4, !dbg !711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !711

if.end32:                                         ; preds = %if.end22
  %24 = load i8, ptr @use_builtin_keys, align 1, !dbg !712, !range !714, !noundef !578
  %tobool33 = trunc i8 %24 to i1, !dbg !712
  br i1 %tobool33, label %land.lhs.true34, label %if.else, !dbg !715

land.lhs.true34:                                  ; preds = %if.end32
  %25 = load ptr, ptr %key, align 8, !dbg !716
  %flags = getelementptr inbounds %struct.key, ptr %25, i32 0, i32 14, !dbg !716
  %26 = ptrtoint ptr %flags to i64, !dbg !716
  %cmp35 = icmp ne i64 %26, 0, !dbg !716
  %conv = zext i1 %cmp35 to i32, !dbg !716
  %27 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !716
  br i1 %27, label %land.lhs.true36, label %cond.false, !dbg !716

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %28 = load ptr, ptr %key, align 8, !dbg !716
  %flags37 = getelementptr inbounds %struct.key, ptr %28, i32 0, i32 14, !dbg !716
  %29 = ptrtoint ptr %flags37 to i64, !dbg !716
  %cmp38 = icmp ne i64 %29, 0, !dbg !716
  br i1 %cmp38, label %land.lhs.true40, label %cond.false, !dbg !716

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %30 = load ptr, ptr %key, align 8, !dbg !716
  %flags41 = getelementptr inbounds %struct.key, ptr %30, i32 0, i32 14, !dbg !716
  %31 = load i64, ptr %flags41, align 8, !dbg !716
  %32 = call i1 @llvm.is.constant.i64(i64 %31), !dbg !716
  br i1 %32, label %cond.true, label %cond.false, !dbg !717

cond.true:                                        ; preds = %land.lhs.true40
  %33 = load ptr, ptr %key, align 8, !dbg !716
  %flags42 = getelementptr inbounds %struct.key, ptr %33, i32 0, i32 14, !dbg !716
  %call43 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags42) #11, !dbg !716
  br i1 %call43, label %if.else, label %if.then48, !dbg !716

cond.false:                                       ; preds = %land.lhs.true40, %land.lhs.true36, %land.lhs.true34
  %34 = load ptr, ptr %key, align 8, !dbg !716
  %flags45 = getelementptr inbounds %struct.key, ptr %34, i32 0, i32 14, !dbg !716
  %call46 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags45) #11, !dbg !716
  br i1 %call46, label %if.else, label %if.then48, !dbg !717

if.then48:                                        ; preds = %cond.false, %cond.true
  store i32 -126, ptr %ret, align 4, !dbg !718
  br label %if.end50, !dbg !719

if.else:                                          ; preds = %cond.false, %cond.true, %if.end32
  %35 = load ptr, ptr %key, align 8, !dbg !720
  %36 = load ptr, ptr %sig, align 8, !dbg !721
  %call49 = call i32 @verify_signature(ptr noundef %35, ptr noundef %36) #11, !dbg !722
  store i32 %call49, ptr %ret, align 4, !dbg !723
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then48
  %37 = load ptr, ptr %key, align 8, !dbg !724
  call void @key_put(ptr noundef %37) #11, !dbg !725
  %38 = load i32, ptr %ret, align 4, !dbg !726
  store i32 %38, ptr %retval, align 4, !dbg !727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !727

cleanup:                                          ; preds = %if.end50, %if.then31, %if.then21, %if.then15, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #12, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #12, !dbg !728
  %39 = load i32, ptr %retval, align 4, !dbg !728
  ret i32 %39, !dbg !728
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !729 dso_local zeroext i1 @asymmetric_key_id_partial(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !732 dso_local ptr @find_asymmetric_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !735 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !740, metadata !DIExpression()), !dbg !741
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !742
  %1 = ptrtoint ptr %0 to i64, !dbg !742
  %2 = inttoptr i64 %1 to ptr, !dbg !742
  %3 = ptrtoint ptr %2 to i64, !dbg !742
  %cmp = icmp uge i64 %3, -4095, !dbg !742
  %lnot = xor i1 %cmp, true, !dbg !742
  %lnot1 = xor i1 %lnot, true, !dbg !742
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !742
  %conv = sext i32 %lnot.ext to i64, !dbg !742
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !742
  %tobool = icmp ne i64 %expval, 0, !dbg !742
  ret i1 %tobool, !dbg !743
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !744 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !752, metadata !DIExpression()), !dbg !757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !753, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %p, metadata !754, metadata !DIExpression()), !dbg !760
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !761
  %1 = load i64, ptr %nr.addr, align 8, !dbg !762
  %div = udiv i64 %1, 64, !dbg !762
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !763
  store ptr %add.ptr, ptr %p, align 8, !dbg !760
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !755, metadata !DIExpression()), !dbg !765
  %2 = load i64, ptr %nr.addr, align 8, !dbg !766
  %rem = urem i64 %2, 64, !dbg !766
  %shl = shl i64 1, %rem, !dbg !766
  store i64 %shl, ptr %mask, align 8, !dbg !765
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !767
  call void @llvm.dbg.declare(metadata ptr %val, metadata !756, metadata !DIExpression()), !dbg !768
  %3 = load ptr, ptr %p, align 8, !dbg !769
  %4 = load i64, ptr %3, align 8, !dbg !770
  store i64 %4, ptr %val, align 8, !dbg !768
  %5 = load i64, ptr %val, align 8, !dbg !771
  %6 = load i64, ptr %mask, align 8, !dbg !772
  %and = and i64 %5, %6, !dbg !773
  %tobool = icmp ne i64 %and, 0, !dbg !774
  %lnot = xor i1 %tobool, true, !dbg !774
  %lnot1 = xor i1 %lnot, true, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !776
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !776
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !776
  ret i1 %lnot1, !dbg !777
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !778 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !781, metadata !DIExpression()), !dbg !783
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !782, metadata !DIExpression()), !dbg !784
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !785
  %1 = load i64, ptr %nr.addr, align 8, !dbg !786
  %div = udiv i64 %1, 64, !dbg !786
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !787
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !788
  %2 = load i64, ptr %nr.addr, align 8, !dbg !789
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !790
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !791
  ret i1 %call, !dbg !792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !793 dso_local i32 @verify_signature(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !796 dso_local void @key_put(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_ca(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trust_keyring) #1 align 16 !dbg !797 {
entry:
  %retval = alloca i32, align 4
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %trust_keyring.addr = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !799, metadata !DIExpression()), !dbg !817
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !800, metadata !DIExpression()), !dbg !818
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !801, metadata !DIExpression()), !dbg !819
  store ptr %trust_keyring, ptr %trust_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trust_keyring.addr, metadata !802, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #12, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %pkey, metadata !803, metadata !DIExpression()), !dbg !822
  %0 = load ptr, ptr %type.addr, align 8, !dbg !823
  %cmp = icmp ne ptr %0, @key_type_asymmetric, !dbg !825
  br i1 %cmp, label %if.then, label %if.end, !dbg !826

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !827

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %payload.addr, align 8, !dbg !828
  %arrayidx = getelementptr [4 x ptr], ptr %1, i64 0, i64 0, !dbg !828
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !828
  store ptr %2, ptr %pkey, align 8, !dbg !829
  %3 = load ptr, ptr %pkey, align 8, !dbg !830
  %tobool = icmp ne ptr %3, null, !dbg !830
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !832

if.then1:                                         ; preds = %if.end
  store i32 -65, ptr %retval, align 4, !dbg !833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !833

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %pkey, align 8, !dbg !834
  %key_eflags = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 8, !dbg !834
  %5 = ptrtoint ptr %key_eflags to i64, !dbg !834
  %cmp3 = icmp ne i64 %5, 0, !dbg !834
  %conv = zext i1 %cmp3 to i32, !dbg !834
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !834
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !834

land.lhs.true:                                    ; preds = %if.end2
  %7 = load ptr, ptr %pkey, align 8, !dbg !834
  %key_eflags4 = getelementptr inbounds %struct.public_key, ptr %7, i32 0, i32 8, !dbg !834
  %8 = ptrtoint ptr %key_eflags4 to i64, !dbg !834
  %cmp5 = icmp ne i64 %8, 0, !dbg !834
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !834

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %pkey, align 8, !dbg !834
  %key_eflags8 = getelementptr inbounds %struct.public_key, ptr %9, i32 0, i32 8, !dbg !834
  %10 = load i64, ptr %key_eflags8, align 8, !dbg !834
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !834
  br i1 %11, label %cond.true, label %cond.false, !dbg !836

cond.true:                                        ; preds = %land.lhs.true7
  %12 = load ptr, ptr %pkey, align 8, !dbg !834
  %key_eflags9 = getelementptr inbounds %struct.public_key, ptr %12, i32 0, i32 8, !dbg !834
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %key_eflags9) #11, !dbg !834
  br i1 %call, label %if.end15, label %if.then14, !dbg !834

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %if.end2
  %13 = load ptr, ptr %pkey, align 8, !dbg !834
  %key_eflags11 = getelementptr inbounds %struct.public_key, ptr %13, i32 0, i32 8, !dbg !834
  %call12 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %key_eflags11) #11, !dbg !834
  br i1 %call12, label %if.end15, label %if.then14, !dbg !836

if.then14:                                        ; preds = %cond.false, %cond.true
  store i32 -126, ptr %retval, align 4, !dbg !837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !837

if.end15:                                         ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %pkey, align 8, !dbg !838
  %key_eflags16 = getelementptr inbounds %struct.public_key, ptr %14, i32 0, i32 8, !dbg !838
  %15 = ptrtoint ptr %key_eflags16 to i64, !dbg !838
  %cmp17 = icmp ne i64 %15, 0, !dbg !838
  %conv18 = zext i1 %cmp17 to i32, !dbg !838
  %16 = call i1 @llvm.is.constant.i32(i32 %conv18), !dbg !838
  br i1 %16, label %land.lhs.true19, label %cond.false29, !dbg !838

land.lhs.true19:                                  ; preds = %if.end15
  %17 = load ptr, ptr %pkey, align 8, !dbg !838
  %key_eflags20 = getelementptr inbounds %struct.public_key, ptr %17, i32 0, i32 8, !dbg !838
  %18 = ptrtoint ptr %key_eflags20 to i64, !dbg !838
  %cmp21 = icmp ne i64 %18, 0, !dbg !838
  br i1 %cmp21, label %land.lhs.true23, label %cond.false29, !dbg !838

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %19 = load ptr, ptr %pkey, align 8, !dbg !838
  %key_eflags24 = getelementptr inbounds %struct.public_key, ptr %19, i32 0, i32 8, !dbg !838
  %20 = load i64, ptr %key_eflags24, align 8, !dbg !838
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !838
  br i1 %21, label %cond.true25, label %cond.false29, !dbg !840

cond.true25:                                      ; preds = %land.lhs.true23
  %22 = load ptr, ptr %pkey, align 8, !dbg !838
  %key_eflags26 = getelementptr inbounds %struct.public_key, ptr %22, i32 0, i32 8, !dbg !838
  %call27 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %key_eflags26) #11, !dbg !838
  br i1 %call27, label %if.end34, label %if.then33, !dbg !838

cond.false29:                                     ; preds = %land.lhs.true23, %land.lhs.true19, %if.end15
  %23 = load ptr, ptr %pkey, align 8, !dbg !838
  %key_eflags30 = getelementptr inbounds %struct.public_key, ptr %23, i32 0, i32 8, !dbg !838
  %call31 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %key_eflags30) #11, !dbg !838
  br i1 %call31, label %if.end34, label %if.then33, !dbg !840

if.then33:                                        ; preds = %cond.false29, %cond.true25
  store i32 -126, ptr %retval, align 4, !dbg !841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !841

if.end34:                                         ; preds = %cond.false29, %cond.true25
  store i32 0, ptr %retval, align 4, !dbg !842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !842

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #12, !dbg !844
  %24 = load i32, ptr %retval, align 4, !dbg !844
  ret i32 %24, !dbg !844
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_digsig(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trust_keyring) #1 align 16 !dbg !845 {
entry:
  %retval = alloca i32, align 4
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %trust_keyring.addr = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !847, metadata !DIExpression()), !dbg !852
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !848, metadata !DIExpression()), !dbg !853
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !849, metadata !DIExpression()), !dbg !854
  store ptr %trust_keyring, ptr %trust_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trust_keyring.addr, metadata !850, metadata !DIExpression()), !dbg !855
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #12, !dbg !856
  call void @llvm.dbg.declare(metadata ptr %pkey, metadata !851, metadata !DIExpression()), !dbg !857
  %0 = load ptr, ptr %type.addr, align 8, !dbg !858
  %cmp = icmp ne ptr %0, @key_type_asymmetric, !dbg !860
  br i1 %cmp, label %if.then, label %if.end, !dbg !861

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !862

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %payload.addr, align 8, !dbg !863
  %arrayidx = getelementptr [4 x ptr], ptr %1, i64 0, i64 0, !dbg !863
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !863
  store ptr %2, ptr %pkey, align 8, !dbg !864
  %3 = load ptr, ptr %pkey, align 8, !dbg !865
  %tobool = icmp ne ptr %3, null, !dbg !865
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !867

if.then1:                                         ; preds = %if.end
  store i32 -65, ptr %retval, align 4, !dbg !868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !868

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %pkey, align 8, !dbg !869
  %key_eflags = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 8, !dbg !869
  %5 = ptrtoint ptr %key_eflags to i64, !dbg !869
  %cmp3 = icmp ne i64 %5, 0, !dbg !869
  %conv = zext i1 %cmp3 to i32, !dbg !869
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !869
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !869

land.lhs.true:                                    ; preds = %if.end2
  %7 = load ptr, ptr %pkey, align 8, !dbg !869
  %key_eflags4 = getelementptr inbounds %struct.public_key, ptr %7, i32 0, i32 8, !dbg !869
  %8 = ptrtoint ptr %key_eflags4 to i64, !dbg !869
  %cmp5 = icmp ne i64 %8, 0, !dbg !869
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !869

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %pkey, align 8, !dbg !869
  %key_eflags8 = getelementptr inbounds %struct.public_key, ptr %9, i32 0, i32 8, !dbg !869
  %10 = load i64, ptr %key_eflags8, align 8, !dbg !869
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !869
  br i1 %11, label %cond.true, label %cond.false, !dbg !871

cond.true:                                        ; preds = %land.lhs.true7
  %12 = load ptr, ptr %pkey, align 8, !dbg !869
  %key_eflags9 = getelementptr inbounds %struct.public_key, ptr %12, i32 0, i32 8, !dbg !869
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %key_eflags9) #11, !dbg !869
  br i1 %call, label %if.end15, label %if.then14, !dbg !869

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %if.end2
  %13 = load ptr, ptr %pkey, align 8, !dbg !869
  %key_eflags11 = getelementptr inbounds %struct.public_key, ptr %13, i32 0, i32 8, !dbg !869
  %call12 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %key_eflags11) #11, !dbg !869
  br i1 %call12, label %if.end15, label %if.then14, !dbg !871

if.then14:                                        ; preds = %cond.false, %cond.true
  store i32 -126, ptr %retval, align 4, !dbg !872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !872

if.end15:                                         ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %pkey, align 8, !dbg !873
  %key_eflags16 = getelementptr inbounds %struct.public_key, ptr %14, i32 0, i32 8, !dbg !873
  %15 = ptrtoint ptr %key_eflags16 to i64, !dbg !873
  %cmp17 = icmp ne i64 %15, 0, !dbg !873
  %conv18 = zext i1 %cmp17 to i32, !dbg !873
  %16 = call i1 @llvm.is.constant.i32(i32 %conv18), !dbg !873
  br i1 %16, label %land.lhs.true19, label %cond.false29, !dbg !873

land.lhs.true19:                                  ; preds = %if.end15
  %17 = load ptr, ptr %pkey, align 8, !dbg !873
  %key_eflags20 = getelementptr inbounds %struct.public_key, ptr %17, i32 0, i32 8, !dbg !873
  %18 = ptrtoint ptr %key_eflags20 to i64, !dbg !873
  %cmp21 = icmp ne i64 %18, 0, !dbg !873
  br i1 %cmp21, label %land.lhs.true23, label %cond.false29, !dbg !873

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %19 = load ptr, ptr %pkey, align 8, !dbg !873
  %key_eflags24 = getelementptr inbounds %struct.public_key, ptr %19, i32 0, i32 8, !dbg !873
  %20 = load i64, ptr %key_eflags24, align 8, !dbg !873
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !873
  br i1 %21, label %cond.true25, label %cond.false29, !dbg !875

cond.true25:                                      ; preds = %land.lhs.true23
  %22 = load ptr, ptr %pkey, align 8, !dbg !873
  %key_eflags26 = getelementptr inbounds %struct.public_key, ptr %22, i32 0, i32 8, !dbg !873
  %call27 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %key_eflags26) #11, !dbg !873
  br i1 %call27, label %if.then33, label %if.end34, !dbg !873

cond.false29:                                     ; preds = %land.lhs.true23, %land.lhs.true19, %if.end15
  %23 = load ptr, ptr %pkey, align 8, !dbg !873
  %key_eflags30 = getelementptr inbounds %struct.public_key, ptr %23, i32 0, i32 8, !dbg !873
  %call31 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %key_eflags30) #11, !dbg !873
  br i1 %call31, label %if.then33, label %if.end34, !dbg !875

if.then33:                                        ; preds = %cond.false29, %cond.true25
  store i32 -126, ptr %retval, align 4, !dbg !876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !876

if.end34:                                         ; preds = %cond.false29, %cond.true25
  %24 = load ptr, ptr %pkey, align 8, !dbg !877
  %key_eflags35 = getelementptr inbounds %struct.public_key, ptr %24, i32 0, i32 8, !dbg !877
  %25 = ptrtoint ptr %key_eflags35 to i64, !dbg !877
  %cmp36 = icmp ne i64 %25, 0, !dbg !877
  %conv37 = zext i1 %cmp36 to i32, !dbg !877
  %26 = call i1 @llvm.is.constant.i32(i32 %conv37), !dbg !877
  br i1 %26, label %land.lhs.true38, label %cond.false48, !dbg !877

land.lhs.true38:                                  ; preds = %if.end34
  %27 = load ptr, ptr %pkey, align 8, !dbg !877
  %key_eflags39 = getelementptr inbounds %struct.public_key, ptr %27, i32 0, i32 8, !dbg !877
  %28 = ptrtoint ptr %key_eflags39 to i64, !dbg !877
  %cmp40 = icmp ne i64 %28, 0, !dbg !877
  br i1 %cmp40, label %land.lhs.true42, label %cond.false48, !dbg !877

land.lhs.true42:                                  ; preds = %land.lhs.true38
  %29 = load ptr, ptr %pkey, align 8, !dbg !877
  %key_eflags43 = getelementptr inbounds %struct.public_key, ptr %29, i32 0, i32 8, !dbg !877
  %30 = load i64, ptr %key_eflags43, align 8, !dbg !877
  %31 = call i1 @llvm.is.constant.i64(i64 %30), !dbg !877
  br i1 %31, label %cond.true44, label %cond.false48, !dbg !879

cond.true44:                                      ; preds = %land.lhs.true42
  %32 = load ptr, ptr %pkey, align 8, !dbg !877
  %key_eflags45 = getelementptr inbounds %struct.public_key, ptr %32, i32 0, i32 8, !dbg !877
  %call46 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %key_eflags45) #11, !dbg !877
  br i1 %call46, label %if.then52, label %if.end53, !dbg !877

cond.false48:                                     ; preds = %land.lhs.true42, %land.lhs.true38, %if.end34
  %33 = load ptr, ptr %pkey, align 8, !dbg !877
  %key_eflags49 = getelementptr inbounds %struct.public_key, ptr %33, i32 0, i32 8, !dbg !877
  %call50 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %key_eflags49) #11, !dbg !877
  br i1 %call50, label %if.then52, label %if.end53, !dbg !879

if.then52:                                        ; preds = %cond.false48, %cond.true44
  store i32 -126, ptr %retval, align 4, !dbg !880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !880

if.end53:                                         ; preds = %cond.false48, %cond.true44
  %34 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !881
  %35 = load ptr, ptr %type.addr, align 8, !dbg !882
  %36 = load ptr, ptr %payload.addr, align 8, !dbg !883
  %37 = load ptr, ptr %trust_keyring.addr, align 8, !dbg !884
  %call54 = call i32 @restrict_link_by_signature(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37) #11, !dbg !885
  store i32 %call54, ptr %retval, align 4, !dbg !886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !886

cleanup:                                          ; preds = %if.end53, %if.then52, %if.then33, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #12, !dbg !887
  %38 = load i32, ptr %retval, align 4, !dbg !887
  ret i32 %38, !dbg !887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_key_or_keyring(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trusted) #1 align 16 !dbg !888 {
entry:
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %trusted.addr = alloca ptr, align 8
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !890, metadata !DIExpression()), !dbg !894
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !891, metadata !DIExpression()), !dbg !895
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !892, metadata !DIExpression()), !dbg !896
  store ptr %trusted, ptr %trusted.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trusted.addr, metadata !893, metadata !DIExpression()), !dbg !897
  %0 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !898
  %1 = load ptr, ptr %type.addr, align 8, !dbg !899
  %2 = load ptr, ptr %payload.addr, align 8, !dbg !900
  %3 = load ptr, ptr %trusted.addr, align 8, !dbg !901
  %call = call i32 @key_or_keyring_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #11, !dbg !902
  ret i32 %call, !dbg !903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @key_or_keyring_common(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trusted, i1 noundef zeroext %check_dest) #1 align 16 !dbg !904 {
entry:
  %retval = alloca i32, align 4
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %trusted.addr = alloca ptr, align 8
  %check_dest.addr = alloca i8, align 1
  %sig = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %signer_ids = alloca ptr, align 8
  %auth_id = alloca ptr, align 8
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !908, metadata !DIExpression()), !dbg !926
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !909, metadata !DIExpression()), !dbg !927
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !910, metadata !DIExpression()), !dbg !928
  store ptr %trusted, ptr %trusted.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trusted.addr, metadata !911, metadata !DIExpression()), !dbg !929
  %frombool = zext i1 %check_dest to i8
  store i8 %frombool, ptr %check_dest.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_dest.addr, metadata !912, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #12, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !913, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #12, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %key, metadata !914, metadata !DIExpression()), !dbg !934
  store ptr null, ptr %key, align 8, !dbg !934
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !915, metadata !DIExpression()), !dbg !936
  store i32 0, ptr %tmp, align 4, !dbg !937
  %0 = load i32, ptr %tmp, align 4, !dbg !940
  %1 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !941
  %tobool = icmp ne ptr %1, null, !dbg !941
  br i1 %tobool, label %if.else, label %if.then, !dbg !943

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !944

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !945
  %3 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 15, !dbg !947
  %type1 = getelementptr inbounds %struct.anon.7, ptr %3, i32 0, i32 2, !dbg !947
  %4 = load ptr, ptr %type1, align 8, !dbg !947
  %cmp = icmp ne ptr %4, @key_type_keyring, !dbg !948
  br i1 %cmp, label %if.then2, label %if.end, !dbg !949

if.then2:                                         ; preds = %if.else
  store i32 -95, ptr %retval, align 4, !dbg !950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !950

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %trusted.addr, align 8, !dbg !951
  %tobool4 = icmp ne ptr %5, null, !dbg !951
  br i1 %tobool4, label %if.end7, label %land.lhs.true, !dbg !953

land.lhs.true:                                    ; preds = %if.end3
  %6 = load i8, ptr %check_dest.addr, align 1, !dbg !954, !range !714, !noundef !578
  %tobool5 = trunc i8 %6 to i1, !dbg !954
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !955

if.then6:                                         ; preds = %land.lhs.true
  store i32 -126, ptr %retval, align 4, !dbg !956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !956

if.end7:                                          ; preds = %land.lhs.true, %if.end3
  %7 = load ptr, ptr %type.addr, align 8, !dbg !957
  %cmp8 = icmp ne ptr %7, @key_type_asymmetric, !dbg !959
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !960

if.then9:                                         ; preds = %if.end7
  store i32 -95, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

if.end10:                                         ; preds = %if.end7
  %8 = load ptr, ptr %payload.addr, align 8, !dbg !962
  %arrayidx = getelementptr [4 x ptr], ptr %8, i64 0, i64 3, !dbg !962
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !962
  store ptr %9, ptr %sig, align 8, !dbg !963
  %10 = load ptr, ptr %sig, align 8, !dbg !964
  %tobool11 = icmp ne ptr %10, null, !dbg !964
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !966

if.then12:                                        ; preds = %if.end10
  store i32 -65, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

if.end13:                                         ; preds = %if.end10
  %11 = load ptr, ptr %sig, align 8, !dbg !968
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %11, i32 0, i32 0, !dbg !970
  %arrayidx14 = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !968
  %12 = load ptr, ptr %arrayidx14, align 8, !dbg !968
  %tobool15 = icmp ne ptr %12, null, !dbg !968
  br i1 %tobool15, label %if.end25, label %land.lhs.true16, !dbg !971

land.lhs.true16:                                  ; preds = %if.end13
  %13 = load ptr, ptr %sig, align 8, !dbg !972
  %auth_ids17 = getelementptr inbounds %struct.public_key_signature, ptr %13, i32 0, i32 0, !dbg !973
  %arrayidx18 = getelementptr [3 x ptr], ptr %auth_ids17, i64 0, i64 1, !dbg !972
  %14 = load ptr, ptr %arrayidx18, align 8, !dbg !972
  %tobool19 = icmp ne ptr %14, null, !dbg !972
  br i1 %tobool19, label %if.end25, label %land.lhs.true20, !dbg !974

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %15 = load ptr, ptr %sig, align 8, !dbg !975
  %auth_ids21 = getelementptr inbounds %struct.public_key_signature, ptr %15, i32 0, i32 0, !dbg !976
  %arrayidx22 = getelementptr [3 x ptr], ptr %auth_ids21, i64 0, i64 2, !dbg !975
  %16 = load ptr, ptr %arrayidx22, align 8, !dbg !975
  %tobool23 = icmp ne ptr %16, null, !dbg !975
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !977

if.then24:                                        ; preds = %land.lhs.true20
  store i32 -126, ptr %retval, align 4, !dbg !978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !978

if.end25:                                         ; preds = %land.lhs.true20, %land.lhs.true16, %if.end13
  %17 = load ptr, ptr %trusted.addr, align 8, !dbg !979
  %tobool26 = icmp ne ptr %17, null, !dbg !979
  br i1 %tobool26, label %if.then27, label %if.end94, !dbg !980

if.then27:                                        ; preds = %if.end25
  %18 = load ptr, ptr %trusted.addr, align 8, !dbg !981
  %19 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 15, !dbg !982
  %type28 = getelementptr inbounds %struct.anon.7, ptr %19, i32 0, i32 2, !dbg !982
  %20 = load ptr, ptr %type28, align 8, !dbg !982
  %cmp29 = icmp eq ptr %20, @key_type_keyring, !dbg !983
  br i1 %cmp29, label %if.then30, label %if.else40, !dbg !984

if.then30:                                        ; preds = %if.then27
  %21 = load ptr, ptr %trusted.addr, align 8, !dbg !985
  %22 = load ptr, ptr %sig, align 8, !dbg !987
  %auth_ids31 = getelementptr inbounds %struct.public_key_signature, ptr %22, i32 0, i32 0, !dbg !988
  %arrayidx32 = getelementptr [3 x ptr], ptr %auth_ids31, i64 0, i64 0, !dbg !987
  %23 = load ptr, ptr %arrayidx32, align 8, !dbg !987
  %24 = load ptr, ptr %sig, align 8, !dbg !989
  %auth_ids33 = getelementptr inbounds %struct.public_key_signature, ptr %24, i32 0, i32 0, !dbg !990
  %arrayidx34 = getelementptr [3 x ptr], ptr %auth_ids33, i64 0, i64 1, !dbg !989
  %25 = load ptr, ptr %arrayidx34, align 8, !dbg !989
  %26 = load ptr, ptr %sig, align 8, !dbg !991
  %auth_ids35 = getelementptr inbounds %struct.public_key_signature, ptr %26, i32 0, i32 0, !dbg !992
  %arrayidx36 = getelementptr [3 x ptr], ptr %auth_ids35, i64 0, i64 2, !dbg !991
  %27 = load ptr, ptr %arrayidx36, align 8, !dbg !991
  %call = call ptr @find_asymmetric_key(ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %27, i1 noundef zeroext false) #11, !dbg !993
  store ptr %call, ptr %key, align 8, !dbg !994
  %28 = load ptr, ptr %key, align 8, !dbg !995
  %call37 = call zeroext i1 @IS_ERR(ptr noundef %28) #11, !dbg !997
  br i1 %call37, label %if.then38, label %if.end39, !dbg !998

if.then38:                                        ; preds = %if.then30
  store ptr null, ptr %key, align 8, !dbg !999
  br label %if.end39, !dbg !1000

if.end39:                                         ; preds = %if.then38, %if.then30
  br label %if.end93, !dbg !1001

if.else40:                                        ; preds = %if.then27
  %29 = load ptr, ptr %trusted.addr, align 8, !dbg !1002
  %30 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 15, !dbg !1003
  %type41 = getelementptr inbounds %struct.anon.7, ptr %30, i32 0, i32 2, !dbg !1003
  %31 = load ptr, ptr %type41, align 8, !dbg !1003
  %cmp42 = icmp eq ptr %31, @key_type_asymmetric, !dbg !1004
  br i1 %cmp42, label %if.then43, label %if.else91, !dbg !1005

if.then43:                                        ; preds = %if.else40
  call void @llvm.lifetime.start.p0(i64 8, ptr %signer_ids) #12, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %signer_ids, metadata !916, metadata !DIExpression()), !dbg !1007
  %32 = load ptr, ptr %trusted.addr, align 8, !dbg !1008
  %call44 = call ptr @asymmetric_key_ids(ptr noundef %32) #11, !dbg !1009
  %id = getelementptr inbounds %struct.asymmetric_key_ids, ptr %call44, i32 0, i32 0, !dbg !1010
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %id, i64 0, i64 0, !dbg !1009
  store ptr %arraydecay, ptr %signer_ids, align 8, !dbg !1011
  %33 = load ptr, ptr %sig, align 8, !dbg !1012
  %auth_ids45 = getelementptr inbounds %struct.public_key_signature, ptr %33, i32 0, i32 0, !dbg !1013
  %arrayidx46 = getelementptr [3 x ptr], ptr %auth_ids45, i64 0, i64 0, !dbg !1012
  %34 = load ptr, ptr %arrayidx46, align 8, !dbg !1012
  %tobool47 = icmp ne ptr %34, null, !dbg !1012
  br i1 %tobool47, label %if.else60, label %land.lhs.true48, !dbg !1014

land.lhs.true48:                                  ; preds = %if.then43
  %35 = load ptr, ptr %sig, align 8, !dbg !1015
  %auth_ids49 = getelementptr inbounds %struct.public_key_signature, ptr %35, i32 0, i32 0, !dbg !1016
  %arrayidx50 = getelementptr [3 x ptr], ptr %auth_ids49, i64 0, i64 1, !dbg !1015
  %36 = load ptr, ptr %arrayidx50, align 8, !dbg !1015
  %tobool51 = icmp ne ptr %36, null, !dbg !1015
  br i1 %tobool51, label %if.else60, label %if.then52, !dbg !1017

if.then52:                                        ; preds = %land.lhs.true48
  %37 = load ptr, ptr %signer_ids, align 8, !dbg !1018
  %arrayidx53 = getelementptr ptr, ptr %37, i64 2, !dbg !1018
  %38 = load ptr, ptr %arrayidx53, align 8, !dbg !1018
  %39 = load ptr, ptr %sig, align 8, !dbg !1021
  %auth_ids54 = getelementptr inbounds %struct.public_key_signature, ptr %39, i32 0, i32 0, !dbg !1022
  %arrayidx55 = getelementptr [3 x ptr], ptr %auth_ids54, i64 0, i64 2, !dbg !1021
  %40 = load ptr, ptr %arrayidx55, align 8, !dbg !1021
  %call56 = call zeroext i1 @asymmetric_key_id_same(ptr noundef %38, ptr noundef %40) #11, !dbg !1023
  br i1 %call56, label %if.then57, label %if.end59, !dbg !1024

if.then57:                                        ; preds = %if.then52
  %41 = load ptr, ptr %trusted.addr, align 8, !dbg !1025
  %call58 = call ptr @__key_get(ptr noundef %41) #11, !dbg !1026
  store ptr %call58, ptr %key, align 8, !dbg !1027
  br label %if.end59, !dbg !1028

if.end59:                                         ; preds = %if.then57, %if.then52
  br label %if.end90, !dbg !1029

if.else60:                                        ; preds = %land.lhs.true48, %if.then43
  %42 = load ptr, ptr %sig, align 8, !dbg !1030
  %auth_ids61 = getelementptr inbounds %struct.public_key_signature, ptr %42, i32 0, i32 0, !dbg !1031
  %arrayidx62 = getelementptr [3 x ptr], ptr %auth_ids61, i64 0, i64 0, !dbg !1030
  %43 = load ptr, ptr %arrayidx62, align 8, !dbg !1030
  %tobool63 = icmp ne ptr %43, null, !dbg !1030
  br i1 %tobool63, label %lor.lhs.false, label %if.then67, !dbg !1032

lor.lhs.false:                                    ; preds = %if.else60
  %44 = load ptr, ptr %sig, align 8, !dbg !1033
  %auth_ids64 = getelementptr inbounds %struct.public_key_signature, ptr %44, i32 0, i32 0, !dbg !1034
  %arrayidx65 = getelementptr [3 x ptr], ptr %auth_ids64, i64 0, i64 1, !dbg !1033
  %45 = load ptr, ptr %arrayidx65, align 8, !dbg !1033
  %tobool66 = icmp ne ptr %45, null, !dbg !1033
  br i1 %tobool66, label %if.else77, label %if.then67, !dbg !1035

if.then67:                                        ; preds = %lor.lhs.false, %if.else60
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_id) #12, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %auth_id, metadata !922, metadata !DIExpression()), !dbg !1037
  %46 = load ptr, ptr %sig, align 8, !dbg !1038
  %auth_ids68 = getelementptr inbounds %struct.public_key_signature, ptr %46, i32 0, i32 0, !dbg !1039
  %arrayidx69 = getelementptr [3 x ptr], ptr %auth_ids68, i64 0, i64 0, !dbg !1038
  %47 = load ptr, ptr %arrayidx69, align 8, !dbg !1038
  %tobool70 = icmp ne ptr %47, null, !dbg !1038
  br i1 %tobool70, label %cond.true, label %cond.false, !dbg !1038

cond.true:                                        ; preds = %if.then67
  br label %cond.end, !dbg !1038

cond.false:                                       ; preds = %if.then67
  %48 = load ptr, ptr %sig, align 8, !dbg !1040
  %auth_ids71 = getelementptr inbounds %struct.public_key_signature, ptr %48, i32 0, i32 0, !dbg !1041
  %arrayidx72 = getelementptr [3 x ptr], ptr %auth_ids71, i64 0, i64 1, !dbg !1040
  %49 = load ptr, ptr %arrayidx72, align 8, !dbg !1040
  br label %cond.end, !dbg !1038

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %47, %cond.true ], [ %49, %cond.false ], !dbg !1038
  store ptr %cond, ptr %auth_id, align 8, !dbg !1042
  %50 = load ptr, ptr %signer_ids, align 8, !dbg !1043
  %51 = load ptr, ptr %auth_id, align 8, !dbg !1045
  %call73 = call zeroext i1 @match_either_id(ptr noundef %50, ptr noundef %51) #11, !dbg !1046
  br i1 %call73, label %if.then74, label %if.end76, !dbg !1047

if.then74:                                        ; preds = %cond.end
  %52 = load ptr, ptr %trusted.addr, align 8, !dbg !1048
  %call75 = call ptr @__key_get(ptr noundef %52) #11, !dbg !1049
  store ptr %call75, ptr %key, align 8, !dbg !1050
  br label %if.end76, !dbg !1051

if.end76:                                         ; preds = %if.then74, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_id) #12, !dbg !1052
  br label %if.end89, !dbg !1053

if.else77:                                        ; preds = %lor.lhs.false
  %53 = load ptr, ptr %signer_ids, align 8, !dbg !1054
  %arrayidx78 = getelementptr ptr, ptr %53, i64 1, !dbg !1054
  %54 = load ptr, ptr %arrayidx78, align 8, !dbg !1054
  %55 = load ptr, ptr %sig, align 8, !dbg !1056
  %auth_ids79 = getelementptr inbounds %struct.public_key_signature, ptr %55, i32 0, i32 0, !dbg !1057
  %arrayidx80 = getelementptr [3 x ptr], ptr %auth_ids79, i64 0, i64 1, !dbg !1056
  %56 = load ptr, ptr %arrayidx80, align 8, !dbg !1056
  %call81 = call zeroext i1 @asymmetric_key_id_same(ptr noundef %54, ptr noundef %56) #11, !dbg !1058
  br i1 %call81, label %land.lhs.true82, label %if.end88, !dbg !1059

land.lhs.true82:                                  ; preds = %if.else77
  %57 = load ptr, ptr %signer_ids, align 8, !dbg !1060
  %58 = load ptr, ptr %sig, align 8, !dbg !1061
  %auth_ids83 = getelementptr inbounds %struct.public_key_signature, ptr %58, i32 0, i32 0, !dbg !1062
  %arrayidx84 = getelementptr [3 x ptr], ptr %auth_ids83, i64 0, i64 0, !dbg !1061
  %59 = load ptr, ptr %arrayidx84, align 8, !dbg !1061
  %call85 = call zeroext i1 @match_either_id(ptr noundef %57, ptr noundef %59) #11, !dbg !1063
  br i1 %call85, label %if.then86, label %if.end88, !dbg !1064

if.then86:                                        ; preds = %land.lhs.true82
  %60 = load ptr, ptr %trusted.addr, align 8, !dbg !1065
  %call87 = call ptr @__key_get(ptr noundef %60) #11, !dbg !1067
  store ptr %call87, ptr %key, align 8, !dbg !1068
  br label %if.end88, !dbg !1069

if.end88:                                         ; preds = %if.then86, %land.lhs.true82, %if.else77
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end76
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end59
  call void @llvm.lifetime.end.p0(i64 8, ptr %signer_ids) #12, !dbg !1070
  br label %if.end92, !dbg !1071

if.else91:                                        ; preds = %if.else40
  store i32 -95, ptr %retval, align 4, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1072

if.end92:                                         ; preds = %if.end90
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end39
  br label %if.end94, !dbg !1074

if.end94:                                         ; preds = %if.end93, %if.end25
  %61 = load i8, ptr %check_dest.addr, align 1, !dbg !1075, !range !714, !noundef !578
  %tobool95 = trunc i8 %61 to i1, !dbg !1075
  br i1 %tobool95, label %land.lhs.true96, label %if.end109, !dbg !1077

land.lhs.true96:                                  ; preds = %if.end94
  %62 = load ptr, ptr %key, align 8, !dbg !1078
  %tobool97 = icmp ne ptr %62, null, !dbg !1078
  br i1 %tobool97, label %if.end109, label %if.then98, !dbg !1079

if.then98:                                        ; preds = %land.lhs.true96
  %63 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !1080
  %64 = load ptr, ptr %sig, align 8, !dbg !1082
  %auth_ids99 = getelementptr inbounds %struct.public_key_signature, ptr %64, i32 0, i32 0, !dbg !1083
  %arrayidx100 = getelementptr [3 x ptr], ptr %auth_ids99, i64 0, i64 0, !dbg !1082
  %65 = load ptr, ptr %arrayidx100, align 8, !dbg !1082
  %66 = load ptr, ptr %sig, align 8, !dbg !1084
  %auth_ids101 = getelementptr inbounds %struct.public_key_signature, ptr %66, i32 0, i32 0, !dbg !1085
  %arrayidx102 = getelementptr [3 x ptr], ptr %auth_ids101, i64 0, i64 1, !dbg !1084
  %67 = load ptr, ptr %arrayidx102, align 8, !dbg !1084
  %68 = load ptr, ptr %sig, align 8, !dbg !1086
  %auth_ids103 = getelementptr inbounds %struct.public_key_signature, ptr %68, i32 0, i32 0, !dbg !1087
  %arrayidx104 = getelementptr [3 x ptr], ptr %auth_ids103, i64 0, i64 2, !dbg !1086
  %69 = load ptr, ptr %arrayidx104, align 8, !dbg !1086
  %call105 = call ptr @find_asymmetric_key(ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, i1 noundef zeroext false) #11, !dbg !1088
  store ptr %call105, ptr %key, align 8, !dbg !1089
  %70 = load ptr, ptr %key, align 8, !dbg !1090
  %call106 = call zeroext i1 @IS_ERR(ptr noundef %70) #11, !dbg !1092
  br i1 %call106, label %if.then107, label %if.end108, !dbg !1093

if.then107:                                       ; preds = %if.then98
  store ptr null, ptr %key, align 8, !dbg !1094
  br label %if.end108, !dbg !1095

if.end108:                                        ; preds = %if.then107, %if.then98
  br label %if.end109, !dbg !1096

if.end109:                                        ; preds = %if.end108, %land.lhs.true96, %if.end94
  %71 = load ptr, ptr %key, align 8, !dbg !1097
  %tobool110 = icmp ne ptr %71, null, !dbg !1097
  br i1 %tobool110, label %if.end112, label %if.then111, !dbg !1099

if.then111:                                       ; preds = %if.end109
  store i32 -126, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1100

if.end112:                                        ; preds = %if.end109
  %72 = load ptr, ptr %key, align 8, !dbg !1101
  %call113 = call i32 @key_validate(ptr noundef %72) #11, !dbg !1102
  store i32 %call113, ptr %ret, align 4, !dbg !1103
  %73 = load i32, ptr %ret, align 4, !dbg !1104
  %cmp114 = icmp eq i32 %73, 0, !dbg !1106
  br i1 %cmp114, label %if.then115, label %if.end117, !dbg !1107

if.then115:                                       ; preds = %if.end112
  %74 = load ptr, ptr %key, align 8, !dbg !1108
  %75 = load ptr, ptr %sig, align 8, !dbg !1109
  %call116 = call i32 @verify_signature(ptr noundef %74, ptr noundef %75) #11, !dbg !1110
  store i32 %call116, ptr %ret, align 4, !dbg !1111
  br label %if.end117, !dbg !1112

if.end117:                                        ; preds = %if.then115, %if.end112
  %76 = load ptr, ptr %key, align 8, !dbg !1113
  call void @key_put(ptr noundef %76) #11, !dbg !1114
  %77 = load i32, ptr %ret, align 4, !dbg !1115
  store i32 %77, ptr %retval, align 4, !dbg !1116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1116

cleanup:                                          ; preds = %if.end117, %if.then111, %if.else91, %if.then24, %if.then12, %if.then9, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #12, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #12, !dbg !1117
  %78 = load i32, ptr %retval, align 4, !dbg !1117
  ret i32 %78, !dbg !1117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_key_or_keyring_chain(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trusted) #1 align 16 !dbg !1118 {
entry:
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %trusted.addr = alloca ptr, align 8
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !1120, metadata !DIExpression()), !dbg !1124
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1121, metadata !DIExpression()), !dbg !1125
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !1122, metadata !DIExpression()), !dbg !1126
  store ptr %trusted, ptr %trusted.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trusted.addr, metadata !1123, metadata !DIExpression()), !dbg !1127
  %0 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !1128
  %1 = load ptr, ptr %type.addr, align 8, !dbg !1129
  %2 = load ptr, ptr %payload.addr, align 8, !dbg !1130
  %3 = load ptr, ptr %trusted.addr, align 8, !dbg !1131
  %call = call i32 @key_or_keyring_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true) #11, !dbg !1132
  ret i32 %call, !dbg !1133
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1134 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1138 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1141 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1145 dso_local i32 @__asymmetric_key_hex_to_key_id(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1149 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !1152 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1160, metadata !DIExpression()), !dbg !1162
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1161, metadata !DIExpression()), !dbg !1163
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1164
  %1 = load i64, ptr %size.addr, align 8, !dbg !1165
  %conv = trunc i64 %1 to i32, !dbg !1165
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !1166
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1167
  %3 = load i64, ptr %size.addr, align 8, !dbg !1167
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !1167
  ret void, !dbg !1168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1169 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1172, metadata !DIExpression()), !dbg !1174
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1173, metadata !DIExpression()), !dbg !1175
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1176
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1177
  br i1 %1, label %cond.true, label %cond.false, !dbg !1177

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1178
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1179
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !1180
  %conv = zext i1 %call to i32, !dbg !1180
  br label %cond.end, !dbg !1177

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1181
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1182
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !1183
  %conv2 = zext i1 %call1 to i32, !dbg !1183
  br label %cond.end, !dbg !1177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1177
  %tobool = icmp ne i32 %cond, 0, !dbg !1177
  ret i1 %tobool, !dbg !1184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1185 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1190, metadata !DIExpression()), !dbg !1192
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1191, metadata !DIExpression()), !dbg !1193
  ret i1 true, !dbg !1194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !1195 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1200, metadata !DIExpression()), !dbg !1203
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1201, metadata !DIExpression()), !dbg !1204
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1202, metadata !DIExpression()), !dbg !1205
  ret void, !dbg !1206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1207 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1211, metadata !DIExpression()), !dbg !1213
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1212, metadata !DIExpression()), !dbg !1214
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1215
  %and = and i64 %0, 63, !dbg !1216
  %shl = shl i64 1, %and, !dbg !1217
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1218
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1219
  %shr = ashr i64 %2, 6, !dbg !1220
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1218
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1218
  %and1 = and i64 %shl, %3, !dbg !1221
  %cmp = icmp ne i64 %and1, 0, !dbg !1222
  ret i1 %cmp, !dbg !1223
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1224 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1226, metadata !DIExpression()), !dbg !1229
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1227, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1228, metadata !DIExpression()), !dbg !1232
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1233
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1234
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !1235, !srcloc !1236
  %3 = icmp ult i8 %2, 2, !dbg !1235
  call void @llvm.assume(i1 %3), !dbg !1235
  store i8 %2, ptr %oldbit, align 1, !dbg !1235
  %4 = load i8, ptr %oldbit, align 1, !dbg !1237, !range !714, !noundef !578
  %tobool = trunc i8 %4 to i1, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !1238
  ret i1 %tobool, !dbg !1239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @asymmetric_key_ids(ptr noundef %key) #5 align 16 !dbg !1240 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1252
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !1253
  %arrayidx = getelementptr [4 x ptr], ptr %1, i64 0, i64 2, !dbg !1252
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1252
  ret ptr %2, !dbg !1254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1255 dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__key_get(ptr noundef %key) #5 align 16 !dbg !1256 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1260, metadata !DIExpression()), !dbg !1261
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1262
  %usage = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 0, !dbg !1263
  call void @refcount_inc(ptr noundef %usage) #11, !dbg !1264
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1265
  ret ptr %1, !dbg !1266
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @match_either_id(ptr noundef %pair, ptr noundef %single) #1 align 16 !dbg !1267 {
entry:
  %pair.addr = alloca ptr, align 8
  %single.addr = alloca ptr, align 8
  store ptr %pair, ptr %pair.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pair.addr, metadata !1271, metadata !DIExpression()), !dbg !1273
  store ptr %single, ptr %single.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %single.addr, metadata !1272, metadata !DIExpression()), !dbg !1274
  %0 = load ptr, ptr %pair.addr, align 8, !dbg !1275
  %arrayidx = getelementptr ptr, ptr %0, i64 0, !dbg !1275
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !1275
  %2 = load ptr, ptr %single.addr, align 8, !dbg !1276
  %call = call zeroext i1 @asymmetric_key_id_same(ptr noundef %1, ptr noundef %2) #11, !dbg !1277
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !1278

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %pair.addr, align 8, !dbg !1279
  %arrayidx1 = getelementptr ptr, ptr %3, i64 1, !dbg !1279
  %4 = load ptr, ptr %arrayidx1, align 8, !dbg !1279
  %5 = load ptr, ptr %single.addr, align 8, !dbg !1280
  %call2 = call zeroext i1 @asymmetric_key_id_same(ptr noundef %4, ptr noundef %5) #11, !dbg !1281
  br label %lor.end, !dbg !1278

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %6, !dbg !1282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1283 dso_local i32 @key_validate(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !1286 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1291, metadata !DIExpression()), !dbg !1292
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1293
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #11, !dbg !1294
  ret void, !dbg !1295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !1296 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1301, metadata !DIExpression()), !dbg !1303
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1302, metadata !DIExpression()), !dbg !1304
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1305
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !1306
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !1307
  ret void, !dbg !1308
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !1309 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1313, metadata !DIExpression()), !dbg !1317
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1314, metadata !DIExpression()), !dbg !1318
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1315, metadata !DIExpression()), !dbg !1319
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #12, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1316, metadata !DIExpression()), !dbg !1321
  %0 = load i32, ptr %i.addr, align 4, !dbg !1322
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1323
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !1324
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #11, !dbg !1325
  store i32 %call, ptr %old, align 4, !dbg !1321
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !1326
  %tobool = icmp ne ptr %2, null, !dbg !1326
  br i1 %tobool, label %if.then, label %if.end, !dbg !1328

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !1329
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !1330
  store i32 %3, ptr %4, align 4, !dbg !1331
  br label %if.end, !dbg !1332

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !1333
  %tobool1 = icmp ne i32 %5, 0, !dbg !1333
  %lnot = xor i1 %tobool1, true, !dbg !1333
  %lnot2 = xor i1 %lnot, true, !dbg !1333
  %lnot3 = xor i1 %lnot2, true, !dbg !1333
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1333
  %conv = sext i32 %lnot.ext to i64, !dbg !1333
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1333
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1333
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1335

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1336
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #11, !dbg !1337
  br label %if.end18, !dbg !1337

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !1338
  %cmp = icmp slt i32 %7, 0, !dbg !1338
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1338

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !1338
  %9 = load i32, ptr %i.addr, align 4, !dbg !1338
  %add = add i32 %8, %9, !dbg !1338
  %cmp7 = icmp slt i32 %add, 0, !dbg !1338
  br label %lor.end, !dbg !1338

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !1338
  %lnot11 = xor i1 %lnot9, true, !dbg !1338
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1338
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1338
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !1338
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !1338
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1340

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1341
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #11, !dbg !1342
  br label %if.end17, !dbg !1342

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #12, !dbg !1343
  ret void, !dbg !1343
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !1344 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1350, metadata !DIExpression()), !dbg !1352
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1351, metadata !DIExpression()), !dbg !1353
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1354
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !1355
  %1 = load i32, ptr %i.addr, align 4, !dbg !1356
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1357
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #11, !dbg !1358
  ret i32 %call, !dbg !1359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1360 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !1363 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1365, metadata !DIExpression()), !dbg !1367
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1366, metadata !DIExpression()), !dbg !1368
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1369
  %1 = load i64, ptr %size.addr, align 8, !dbg !1370
  %conv = trunc i64 %1 to i32, !dbg !1370
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !1371
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1372
  %3 = load i64, ptr %size.addr, align 8, !dbg !1372
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !1372
  ret void, !dbg !1373
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !1374 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1377, metadata !DIExpression()), !dbg !1379
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1378, metadata !DIExpression()), !dbg !1380
  %0 = load i32, ptr %i.addr, align 4, !dbg !1381
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1382
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #11, !dbg !1383
  ret i32 %call, !dbg !1384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1385 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1387, metadata !DIExpression()), !dbg !1389
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1388, metadata !DIExpression()), !dbg !1390
  ret i1 true, !dbg !1391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !1392 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1395, metadata !DIExpression()), !dbg !1399
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1396, metadata !DIExpression()), !dbg !1400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1397, metadata !DIExpression()), !dbg !1401
  %0 = load i32, ptr %i.addr, align 4, !dbg !1401
  store i32 %0, ptr %__ret, align 4, !dbg !1401
  %1 = load i32, ptr %__ret, align 4, !dbg !1401
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1401
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1401
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !1401, !srcloc !1402
  store i32 %3, ptr %__ret, align 4, !dbg !1401
  %4 = load i32, ptr %__ret, align 4, !dbg !1401
  store i32 %4, ptr %tmp, align 4, !dbg !1401
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !1403
  %5 = load i32, ptr %tmp, align 4, !dbg !1401
  ret i32 %5, !dbg !1404
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_ca_keys_setup", scope: !2, file: !3, line: 50, type: !209, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.restrict.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/asymmetric_keys\22 -D KBUILD_BASENAME=\22restrict\22 -D KBUILD_MODNAME=\22asymmetric_keys\22 -D __KBUILD_MODNAME=kmod_asymmetric_keys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/restrict.ll crypto/asymmetric_keys/restrict.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !156, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/asymmetric_keys/restrict.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37640bf2ad54af1abfe35c688ba5cfac")
!4 = !{!5, !13, !20, !25, !128}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!10 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!11 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!12 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asymmetric_payload_bits", file: !14, line: 22, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/keys/asymmetric-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3daffae8091b612618c69279094a4c0")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "asym_crypto", value: 0)
!17 = !DIEnumerator(name: "asym_subtype", value: 1)
!18 = !DIEnumerator(name: "asym_key_ids", value: 2)
!19 = !DIEnumerator(name: "asym_auth", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 10, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "false", value: 0)
!24 = !DIEnumerator(name: "true", value: 1)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OID", file: !26, line: 19, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/oid_registry.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5d57e234dafd05fd37f1d558d9555b7")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!28 = !DIEnumerator(name: "OID_id_dsa_with_sha1", value: 0)
!29 = !DIEnumerator(name: "OID_id_dsa", value: 1)
!30 = !DIEnumerator(name: "OID_id_ecPublicKey", value: 2)
!31 = !DIEnumerator(name: "OID_id_prime192v1", value: 3)
!32 = !DIEnumerator(name: "OID_id_prime256v1", value: 4)
!33 = !DIEnumerator(name: "OID_id_ecdsa_with_sha1", value: 5)
!34 = !DIEnumerator(name: "OID_id_ecdsa_with_sha224", value: 6)
!35 = !DIEnumerator(name: "OID_id_ecdsa_with_sha256", value: 7)
!36 = !DIEnumerator(name: "OID_id_ecdsa_with_sha384", value: 8)
!37 = !DIEnumerator(name: "OID_id_ecdsa_with_sha512", value: 9)
!38 = !DIEnumerator(name: "OID_rsaEncryption", value: 10)
!39 = !DIEnumerator(name: "OID_md2WithRSAEncryption", value: 11)
!40 = !DIEnumerator(name: "OID_md3WithRSAEncryption", value: 12)
!41 = !DIEnumerator(name: "OID_md4WithRSAEncryption", value: 13)
!42 = !DIEnumerator(name: "OID_sha1WithRSAEncryption", value: 14)
!43 = !DIEnumerator(name: "OID_sha256WithRSAEncryption", value: 15)
!44 = !DIEnumerator(name: "OID_sha384WithRSAEncryption", value: 16)
!45 = !DIEnumerator(name: "OID_sha512WithRSAEncryption", value: 17)
!46 = !DIEnumerator(name: "OID_sha224WithRSAEncryption", value: 18)
!47 = !DIEnumerator(name: "OID_data", value: 19)
!48 = !DIEnumerator(name: "OID_signed_data", value: 20)
!49 = !DIEnumerator(name: "OID_email_address", value: 21)
!50 = !DIEnumerator(name: "OID_contentType", value: 22)
!51 = !DIEnumerator(name: "OID_messageDigest", value: 23)
!52 = !DIEnumerator(name: "OID_signingTime", value: 24)
!53 = !DIEnumerator(name: "OID_smimeCapabilites", value: 25)
!54 = !DIEnumerator(name: "OID_smimeAuthenticatedAttrs", value: 26)
!55 = !DIEnumerator(name: "OID_md2", value: 27)
!56 = !DIEnumerator(name: "OID_md4", value: 28)
!57 = !DIEnumerator(name: "OID_md5", value: 29)
!58 = !DIEnumerator(name: "OID_mskrb5", value: 30)
!59 = !DIEnumerator(name: "OID_krb5", value: 31)
!60 = !DIEnumerator(name: "OID_krb5u2u", value: 32)
!61 = !DIEnumerator(name: "OID_msIndirectData", value: 33)
!62 = !DIEnumerator(name: "OID_msStatementType", value: 34)
!63 = !DIEnumerator(name: "OID_msSpOpusInfo", value: 35)
!64 = !DIEnumerator(name: "OID_msPeImageDataObjId", value: 36)
!65 = !DIEnumerator(name: "OID_msIndividualSPKeyPurpose", value: 37)
!66 = !DIEnumerator(name: "OID_msOutlookExpress", value: 38)
!67 = !DIEnumerator(name: "OID_ntlmssp", value: 39)
!68 = !DIEnumerator(name: "OID_negoex", value: 40)
!69 = !DIEnumerator(name: "OID_spnego", value: 41)
!70 = !DIEnumerator(name: "OID_IAKerb", value: 42)
!71 = !DIEnumerator(name: "OID_PKU2U", value: 43)
!72 = !DIEnumerator(name: "OID_Scram", value: 44)
!73 = !DIEnumerator(name: "OID_certAuthInfoAccess", value: 45)
!74 = !DIEnumerator(name: "OID_sha1", value: 46)
!75 = !DIEnumerator(name: "OID_id_ansip384r1", value: 47)
!76 = !DIEnumerator(name: "OID_sha256", value: 48)
!77 = !DIEnumerator(name: "OID_sha384", value: 49)
!78 = !DIEnumerator(name: "OID_sha512", value: 50)
!79 = !DIEnumerator(name: "OID_sha224", value: 51)
!80 = !DIEnumerator(name: "OID_commonName", value: 52)
!81 = !DIEnumerator(name: "OID_surname", value: 53)
!82 = !DIEnumerator(name: "OID_countryName", value: 54)
!83 = !DIEnumerator(name: "OID_locality", value: 55)
!84 = !DIEnumerator(name: "OID_stateOrProvinceName", value: 56)
!85 = !DIEnumerator(name: "OID_organizationName", value: 57)
!86 = !DIEnumerator(name: "OID_organizationUnitName", value: 58)
!87 = !DIEnumerator(name: "OID_title", value: 59)
!88 = !DIEnumerator(name: "OID_description", value: 60)
!89 = !DIEnumerator(name: "OID_name", value: 61)
!90 = !DIEnumerator(name: "OID_givenName", value: 62)
!91 = !DIEnumerator(name: "OID_initials", value: 63)
!92 = !DIEnumerator(name: "OID_generationalQualifier", value: 64)
!93 = !DIEnumerator(name: "OID_subjectKeyIdentifier", value: 65)
!94 = !DIEnumerator(name: "OID_keyUsage", value: 66)
!95 = !DIEnumerator(name: "OID_subjectAltName", value: 67)
!96 = !DIEnumerator(name: "OID_issuerAltName", value: 68)
!97 = !DIEnumerator(name: "OID_basicConstraints", value: 69)
!98 = !DIEnumerator(name: "OID_crlDistributionPoints", value: 70)
!99 = !DIEnumerator(name: "OID_certPolicies", value: 71)
!100 = !DIEnumerator(name: "OID_authorityKeyIdentifier", value: 72)
!101 = !DIEnumerator(name: "OID_extKeyUsage", value: 73)
!102 = !DIEnumerator(name: "OID_NetlogonMechanism", value: 74)
!103 = !DIEnumerator(name: "OID_appleLocalKdcSupported", value: 75)
!104 = !DIEnumerator(name: "OID_gostCPSignA", value: 76)
!105 = !DIEnumerator(name: "OID_gostCPSignB", value: 77)
!106 = !DIEnumerator(name: "OID_gostCPSignC", value: 78)
!107 = !DIEnumerator(name: "OID_gost2012PKey256", value: 79)
!108 = !DIEnumerator(name: "OID_gost2012PKey512", value: 80)
!109 = !DIEnumerator(name: "OID_gost2012Digest256", value: 81)
!110 = !DIEnumerator(name: "OID_gost2012Digest512", value: 82)
!111 = !DIEnumerator(name: "OID_gost2012Signature256", value: 83)
!112 = !DIEnumerator(name: "OID_gost2012Signature512", value: 84)
!113 = !DIEnumerator(name: "OID_gostTC26Sign256A", value: 85)
!114 = !DIEnumerator(name: "OID_gostTC26Sign256B", value: 86)
!115 = !DIEnumerator(name: "OID_gostTC26Sign256C", value: 87)
!116 = !DIEnumerator(name: "OID_gostTC26Sign256D", value: 88)
!117 = !DIEnumerator(name: "OID_gostTC26Sign512A", value: 89)
!118 = !DIEnumerator(name: "OID_gostTC26Sign512B", value: 90)
!119 = !DIEnumerator(name: "OID_gostTC26Sign512C", value: 91)
!120 = !DIEnumerator(name: "OID_sm2", value: 92)
!121 = !DIEnumerator(name: "OID_sm3", value: 93)
!122 = !DIEnumerator(name: "OID_SM2_with_SM3", value: 94)
!123 = !DIEnumerator(name: "OID_sm3WithRSAEncryption", value: 95)
!124 = !DIEnumerator(name: "OID_TPMLoadableKey", value: 96)
!125 = !DIEnumerator(name: "OID_TPMImportableKey", value: 97)
!126 = !DIEnumerator(name: "OID_TPMSealedData", value: 98)
!127 = !DIEnumerator(name: "OID__NR", value: 99)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !129, line: 119, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!130 = !{!131, !132, !133, !134, !135}
!131 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!132 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!133 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!134 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!135 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!136 = !{!137, !140, !141, !139, !143, !144}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !138, line: 42, baseType: !139)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asymmetric_key_id", file: !14, line: 50, size: 16, elements: !148)
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !147, file: !14, line: 51, baseType: !150, size: 16)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !14, line: 52, baseType: !152, offset: 16)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !154)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!155}
!155 = !DISubrange(count: -1)
!156 = !{!157, !173, !177, !0, !180, !185, !190, !195, !200}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__setup_ca_keys_setup", scope: !2, file: !3, line: 50, type: !159, isLocal: true, isDefinition: true, align: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !160, line: 324, size: 192, elements: !161)
!160 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!161 = !{!162, !166, !172}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !159, file: !160, line: 325, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !159, file: !160, line: 326, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !171}
!170 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !159, file: !160, line: 327, baseType: !170, size: 32, offset: 128)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "use_builtin_keys", scope: !2, file: !3, line: 15, type: !175, isLocal: true, isDefinition: true)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 35, baseType: !176)
!176 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "ca_keyid", scope: !2, file: !3, line: 16, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 32, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 4)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 312, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 39)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 336, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 42)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 8)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "cakey", scope: !2, file: !3, line: 22, type: !202, isLocal: true, isDefinition: true)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 19, size: 96, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !202, file: !3, line: 20, baseType: !147, size: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !202, file: !3, line: 21, baseType: !206, size: 80, offset: 16)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 80, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 10)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 72, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 9)
!212 = !{i32 7, !"Dwarf Version", i32 5}
!213 = !{i32 2, !"Debug Info Version", i32 3}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 8, !"cf-protection-branch", i32 1}
!216 = !{i32 4, !"function_return_thunk_extern", i32 1}
!217 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!218 = !{i32 1, !"Code Model", i32 2}
!219 = !{i32 1, !"override-stack-alignment", i32 8}
!220 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!221 = distinct !DISubprogram(name: "ca_keys_setup", scope: !3, file: !3, line: 24, type: !168, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!222 = !{!223, !224, !227, !232}
!223 = !DILocalVariable(name: "str", arg: 1, scope: !221, file: !3, line: 24, type: !171)
!224 = !DILocalVariable(name: "p", scope: !225, file: !3, line: 30, type: !179)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 29, column: 35)
!226 = distinct !DILexicalBlock(scope: !221, file: !3, line: 29, column: 6)
!227 = !DILocalVariable(name: "hexlen", scope: !225, file: !3, line: 31, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 61, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !230, line: 72, baseType: !231)
!230 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !230, line: 16, baseType: !139)
!232 = !DILocalVariable(name: "ret", scope: !225, file: !3, line: 32, type: !170)
!233 = !DILocation(line: 24, column: 39, scope: !221)
!234 = !DILocation(line: 26, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !221, file: !3, line: 26, column: 6)
!236 = !DILocation(line: 26, column: 6, scope: !221)
!237 = !DILocation(line: 27, column: 3, scope: !235)
!238 = !DILocation(line: 29, column: 14, scope: !226)
!239 = !DILocation(line: 29, column: 6, scope: !226)
!240 = !DILocation(line: 29, column: 29, scope: !226)
!241 = !DILocation(line: 29, column: 6, scope: !221)
!242 = !DILocation(line: 30, column: 3, scope: !225)
!243 = !DILocation(line: 30, column: 29, scope: !225)
!244 = !DILocation(line: 31, column: 3, scope: !225)
!245 = !DILocation(line: 31, column: 10, scope: !225)
!246 = !DILocation(line: 31, column: 27, scope: !225)
!247 = !DILocation(line: 31, column: 20, scope: !225)
!248 = !DILocation(line: 31, column: 32, scope: !225)
!249 = !DILocation(line: 31, column: 37, scope: !225)
!250 = !DILocation(line: 32, column: 3, scope: !225)
!251 = !DILocation(line: 32, column: 7, scope: !225)
!252 = !DILocation(line: 34, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !225, file: !3, line: 34, column: 7)
!254 = !DILocation(line: 34, column: 14, scope: !253)
!255 = !DILocation(line: 34, column: 19, scope: !253)
!256 = !DILocation(line: 34, column: 22, scope: !253)
!257 = !DILocation(line: 34, column: 29, scope: !253)
!258 = !DILocation(line: 34, column: 7, scope: !225)
!259 = !DILocation(line: 35, column: 4, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 35, column: 4)
!261 = distinct !DILexicalBlock(scope: !253, file: !3, line: 34, column: 51)
!262 = !DILocation(line: 35, column: 4, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 35, column: 4)
!264 = !DILocation(line: 36, column: 4, scope: !261)
!265 = !DILocation(line: 39, column: 40, scope: !225)
!266 = !DILocation(line: 39, column: 44, scope: !225)
!267 = !DILocation(line: 39, column: 49, scope: !225)
!268 = !DILocation(line: 39, column: 52, scope: !225)
!269 = !DILocation(line: 39, column: 9, scope: !225)
!270 = !DILocation(line: 39, column: 7, scope: !225)
!271 = !DILocation(line: 40, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !225, file: !3, line: 40, column: 7)
!273 = !DILocation(line: 40, column: 11, scope: !272)
!274 = !DILocation(line: 40, column: 7, scope: !225)
!275 = !DILocation(line: 41, column: 4, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 41, column: 4)
!277 = !DILocation(line: 41, column: 4, scope: !278)
!278 = distinct !DILexicalBlock(scope: !276, file: !3, line: 41, column: 4)
!279 = !DILocation(line: 41, column: 4, scope: !272)
!280 = !DILocation(line: 43, column: 15, scope: !272)
!281 = !DILocation(line: 43, column: 13, scope: !272)
!282 = !DILocation(line: 44, column: 2, scope: !226)
!283 = !DILocation(line: 44, column: 2, scope: !225)
!284 = !DILocation(line: 44, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !226, file: !3, line: 44, column: 13)
!286 = !DILocation(line: 44, column: 13, scope: !285)
!287 = !DILocation(line: 44, column: 36, scope: !285)
!288 = !DILocation(line: 44, column: 13, scope: !226)
!289 = !DILocation(line: 45, column: 20, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 44, column: 42)
!291 = !DILocation(line: 46, column: 2, scope: !290)
!292 = !DILocation(line: 48, column: 2, scope: !221)
!293 = !DILocation(line: 49, column: 1, scope: !221)
!294 = distinct !DISubprogram(name: "restrict_link_by_signature", scope: !3, file: !3, line: 70, type: !295, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !624)
!295 = !DISubroutineType(types: !296)
!296 = !{!170, !297, !620, !622, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !299, line: 195, size: 1728, elements: !300)
!299 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!300 = !{!301, !310, !317, !334, !383, !386, !387, !394, !395, !403, !410, !415, !416, !417, !419, !420, !603, !619}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !298, file: !299, line: 196, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !129, line: 113, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !129, line: 111, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !303, file: !129, line: 112, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 174, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 172, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !307, file: !138, line: 173, baseType: !170, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !298, file: !299, line: 197, baseType: !311, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !299, line: 28, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 104, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !314, line: 20, baseType: !315)
!314 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !316, line: 26, baseType: !170)
!316 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !299, line: 198, baseType: !318, size: 192, offset: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !299, line: 198, size: 192, elements: !319)
!319 = !{!320, !326}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !318, file: !299, line: 199, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 190, size: 128, elements: !322)
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !138, line: 191, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !321, file: !138, line: 191, baseType: !324, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !318, file: !299, line: 200, baseType: !327, size: 192, align: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !328, line: 5, size: 192, align: 64, elements: !329)
!328 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!329 = !{!330, !331, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !327, file: !328, line: 6, baseType: !139, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !327, file: !328, line: 7, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !327, file: !328, line: 8, baseType: !332, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !298, file: !299, line: 205, baseType: !335, size: 320, offset: 256)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !336, line: 48, size: 320, elements: !337)
!336 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!337 = !{!338, !348, !349, !354, !382}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !335, file: !336, line: 49, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !340, line: 13, baseType: !341)
!340 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 181, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 179, size: 64, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !342, file: !138, line: 180, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !314, line: 22, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !316, line: 30, baseType: !347)
!347 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !335, file: !336, line: 55, baseType: !339, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !335, file: !336, line: 57, baseType: !350, size: 32, offset: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !351, line: 15, size: 32, elements: !352)
!351 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !350, file: !351, line: 20, baseType: !306, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !335, file: !336, line: 59, baseType: !355, size: 32, offset: 160)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !356, line: 23, baseType: !357)
!356 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !356, line: 14, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !357, file: !356, line: 15, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !361, line: 44, baseType: !362)
!361 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !361, line: 14, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !361, line: 15, baseType: !365, size: 32)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !361, line: 15, size: 32, elements: !366)
!366 = !{!367, !368, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !361, line: 16, baseType: !306, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !361, line: 24, baseType: !369, size: 16)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !361, line: 24, size: 16, elements: !370)
!370 = !{!371, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !369, file: !361, line: 25, baseType: !372, size: 8)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !314, line: 17, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !316, line: 21, baseType: !153)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !369, file: !361, line: 26, baseType: !372, size: 8, offset: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !361, line: 28, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !361, line: 28, size: 32, elements: !377)
!377 = !{!378, !381}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !376, file: !361, line: 29, baseType: !379, size: 16)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !314, line: 19, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !316, line: 24, baseType: !150)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !376, file: !361, line: 30, baseType: !379, size: 16, offset: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !335, file: !336, line: 60, baseType: !321, size: 128, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !298, file: !299, line: 206, baseType: !384, size: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !299, line: 206, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !298, file: !299, line: 207, baseType: !140, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !299, line: 208, baseType: !388, size: 64, offset: 704)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !299, line: 208, size: 64, elements: !389)
!389 = !{!390, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !388, file: !299, line: 209, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !392, line: 8, baseType: !346)
!392 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !388, file: !299, line: 210, baseType: !391, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !298, file: !299, line: 212, baseType: !391, size: 64, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !298, file: !299, line: 213, baseType: !396, size: 32, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !397, line: 23, baseType: !398)
!397 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 21, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !397, line: 22, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 37, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !230, line: 49, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !298, file: !299, line: 214, baseType: !404, size: 32, offset: 864)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !397, line: 28, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 26, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !397, line: 27, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 38, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !230, line: 50, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !298, file: !299, line: 215, baseType: !411, size: 32, offset: 896)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !299, line: 31, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 110, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !314, line: 21, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !316, line: 27, baseType: !7)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !298, file: !299, line: 216, baseType: !150, size: 16, offset: 928)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !298, file: !299, line: 217, baseType: !150, size: 16, offset: 944)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !299, line: 221, baseType: !418, size: 16, offset: 960)
!418 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !299, line: 228, baseType: !139, size: 64, offset: 1024)
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !299, line: 245, baseType: !421, size: 320, offset: 1088)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !299, line: 245, size: 320, elements: !422)
!422 = !{!423, !595}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !421, file: !299, line: 246, baseType: !424, size: 320)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !299, line: 114, size: 320, elements: !425)
!425 = !{!426, !427, !439, !579, !594}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !424, file: !299, line: 116, baseType: !139, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !299, line: 117, baseType: !428, size: 64, offset: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !299, line: 117, size: 64, elements: !429)
!429 = !{!430, !438}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !299, line: 118, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !299, line: 118, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !431, file: !299, line: 120, baseType: !379, size: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !431, file: !299, line: 121, baseType: !435, size: 48, offset: 16)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 6)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !428, file: !299, line: 127, baseType: !139, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !299, line: 129, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !442, line: 64, size: 1344, elements: !443)
!442 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!443 = !{!444, !445, !446, !447, !451, !472, !476, !480, !481, !499, !503, !507, !508, !515, !520, !525, !537, !565, !570, !574, !575}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !441, file: !442, line: 66, baseType: !163, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !441, file: !442, line: 72, baseType: !228, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !442, line: 74, baseType: !7, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !441, file: !442, line: 79, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!170, !163}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !441, file: !442, line: 85, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!170, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !442, line: 31, size: 640, elements: !457)
!457 = !{!458, !459, !460, !466, !469, !470, !471}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !456, file: !442, line: 32, baseType: !163, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !456, file: !442, line: 33, baseType: !171, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !456, file: !442, line: 34, baseType: !461, size: 256, offset: 128)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !299, line: 134, size: 256, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !461, file: !299, line: 135, baseType: !140, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !461, file: !299, line: 136, baseType: !465, size: 256)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !183)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !456, file: !442, line: 35, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !456, file: !442, line: 36, baseType: !228, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !456, file: !442, line: 37, baseType: !228, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !456, file: !442, line: 38, baseType: !391, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !441, file: !442, line: 89, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !455}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !441, file: !442, line: 95, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!170, !297, !455}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !441, file: !442, line: 102, baseType: !477, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !441, file: !442, line: 108, baseType: !482, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!170, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !442, line: 46, size: 256, elements: !487)
!487 = !{!488, !496, !497, !498}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !486, file: !442, line: 51, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!175, !492, !494}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !486, file: !442, line: 54, baseType: !467, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !486, file: !442, line: 55, baseType: !140, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !486, file: !442, line: 56, baseType: !7, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !441, file: !442, line: 112, baseType: !500, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !485}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !441, file: !442, line: 117, baseType: !504, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !297}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !441, file: !442, line: 120, baseType: !504, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !441, file: !442, line: 123, baseType: !509, size: 64, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !492, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !514, line: 66, flags: DIFlagFwdDecl)
!514 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!515 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !441, file: !442, line: 132, baseType: !516, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !492, !171, !228}
!519 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !441, file: !442, line: 142, baseType: !521, size: 64, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !442, line: 41, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!170, !297, !140}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !441, file: !442, line: 150, baseType: !526, size: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!529, !163}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !299, line: 176, size: 192, elements: !531)
!531 = !{!532, !535, !536}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !530, file: !299, line: 177, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !299, line: 171, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !530, file: !299, line: 178, baseType: !297, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !530, file: !299, line: 179, baseType: !440, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !441, file: !442, line: 153, baseType: !538, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!170, !541, !556}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !6, line: 29, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !555}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !543, file: !6, line: 30, baseType: !297, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !543, file: !6, line: 31, baseType: !163, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !543, file: !6, line: 32, baseType: !163, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !543, file: !6, line: 33, baseType: !171, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !543, file: !6, line: 34, baseType: !414, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !6, line: 35, baseType: !551, size: 32, offset: 288)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !6, line: 35, size: 32, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !551, file: !6, line: 36, baseType: !414, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !551, file: !6, line: 37, baseType: !414, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !543, file: !6, line: 39, baseType: !5, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !6, line: 13, size: 128, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !557, file: !6, line: 14, baseType: !414, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !557, file: !6, line: 15, baseType: !414, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !557, file: !6, line: 16, baseType: !380, size: 16, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !557, file: !6, line: 17, baseType: !380, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !557, file: !6, line: 18, baseType: !380, size: 16, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !557, file: !6, line: 19, baseType: !380, size: 16, offset: 112)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !441, file: !442, line: 155, baseType: !566, size: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!170, !569, !467, !140}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !441, file: !442, line: 157, baseType: !571, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!170, !569, !467, !467}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !441, file: !442, line: 161, baseType: !321, size: 128, offset: 1216)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !441, file: !442, line: 162, baseType: !576, offset: 1344)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !577, line: 206, elements: !578)
!577 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!578 = !{}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !424, file: !299, line: 130, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !299, line: 108, size: 192, elements: !582)
!582 = !{!583, !592, !593}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !581, file: !299, line: 109, baseType: !584, size: 128, align: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 232, size: 128, align: 64, elements: !585)
!585 = !{!586, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !138, line: 233, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !584, file: !138, line: 234, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !587}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !581, file: !299, line: 110, baseType: !302, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !581, file: !299, line: 111, baseType: !175, size: 8, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !424, file: !299, line: 131, baseType: !163, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !299, line: 247, baseType: !596, size: 320)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !299, line: 247, size: 320, elements: !597)
!597 = !{!598, !599, !600, !601, !602}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !596, file: !299, line: 248, baseType: !139, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !596, file: !299, line: 249, baseType: !139, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !299, line: 250, baseType: !440, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !596, file: !299, line: 251, baseType: !580, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !596, file: !299, line: 252, baseType: !171, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !299, line: 260, baseType: !604, size: 256, offset: 1408)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !299, line: 260, size: 256, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !604, file: !299, line: 261, baseType: !461, size: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !299, line: 262, baseType: !608, size: 256)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !299, line: 262, size: 256, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !608, file: !299, line: 264, baseType: !321, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !608, file: !299, line: 265, baseType: !612, size: 128, offset: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !613, line: 22, size: 128, elements: !614)
!613 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!614 = !{!615, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !612, file: !613, line: 23, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !613, line: 23, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !612, file: !613, line: 24, baseType: !139, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !298, file: !299, line: 280, baseType: !529, size: 64, offset: 1664)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!624 = !{!625, !626, !627, !628, !629, !647, !648}
!625 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !294, file: !3, line: 70, type: !297)
!626 = !DILocalVariable(name: "type", arg: 2, scope: !294, file: !3, line: 71, type: !620)
!627 = !DILocalVariable(name: "payload", arg: 3, scope: !294, file: !3, line: 72, type: !622)
!628 = !DILocalVariable(name: "trust_keyring", arg: 4, scope: !294, file: !3, line: 73, type: !297)
!629 = !DILocalVariable(name: "sig", scope: !294, file: !3, line: 75, type: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key_signature", file: !633, line: 42, size: 576, elements: !634)
!633 = !DIFile(filename: "./include/crypto/public_key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bba3709dd387ae2fcb2dcdb4db69068a")
!634 = !{!635, !639, !641, !642, !643, !644, !645, !646}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ids", scope: !632, file: !633, line: 43, baseType: !636, size: 192)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 192, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 3)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !632, file: !633, line: 44, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !632, file: !633, line: 45, baseType: !640, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_size", scope: !632, file: !633, line: 46, baseType: !413, size: 32, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !632, file: !633, line: 47, baseType: !413, size: 32, offset: 352)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !632, file: !633, line: 48, baseType: !163, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !632, file: !633, line: 49, baseType: !163, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !632, file: !633, line: 50, baseType: !163, size: 64, offset: 512)
!647 = !DILocalVariable(name: "key", scope: !294, file: !3, line: 76, type: !297)
!648 = !DILocalVariable(name: "ret", scope: !294, file: !3, line: 77, type: !170)
!649 = !DILocation(line: 70, column: 44, scope: !294)
!650 = !DILocation(line: 71, column: 34, scope: !294)
!651 = !DILocation(line: 72, column: 36, scope: !294)
!652 = !DILocation(line: 73, column: 23, scope: !294)
!653 = !DILocation(line: 75, column: 2, scope: !294)
!654 = !DILocation(line: 75, column: 37, scope: !294)
!655 = !DILocation(line: 76, column: 2, scope: !294)
!656 = !DILocation(line: 76, column: 14, scope: !294)
!657 = !DILocation(line: 77, column: 2, scope: !294)
!658 = !DILocation(line: 77, column: 6, scope: !294)
!659 = !DILocation(line: 79, column: 2, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 79, column: 2)
!661 = distinct !DILexicalBlock(scope: !294, file: !3, line: 79, column: 2)
!662 = !DILocation(line: 79, column: 2, scope: !661)
!663 = !DILocation(line: 81, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !294, file: !3, line: 81, column: 6)
!665 = !DILocation(line: 81, column: 6, scope: !294)
!666 = !DILocation(line: 82, column: 3, scope: !664)
!667 = !DILocation(line: 84, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !294, file: !3, line: 84, column: 6)
!669 = !DILocation(line: 84, column: 11, scope: !668)
!670 = !DILocation(line: 84, column: 6, scope: !294)
!671 = !DILocation(line: 85, column: 3, scope: !668)
!672 = !DILocation(line: 87, column: 8, scope: !294)
!673 = !DILocation(line: 87, column: 6, scope: !294)
!674 = !DILocation(line: 88, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !294, file: !3, line: 88, column: 6)
!676 = !DILocation(line: 88, column: 6, scope: !294)
!677 = !DILocation(line: 89, column: 3, scope: !675)
!678 = !DILocation(line: 90, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !294, file: !3, line: 90, column: 6)
!680 = !DILocation(line: 90, column: 12, scope: !679)
!681 = !DILocation(line: 90, column: 24, scope: !679)
!682 = !DILocation(line: 90, column: 28, scope: !679)
!683 = !DILocation(line: 90, column: 33, scope: !679)
!684 = !DILocation(line: 90, column: 45, scope: !679)
!685 = !DILocation(line: 90, column: 49, scope: !679)
!686 = !DILocation(line: 90, column: 54, scope: !679)
!687 = !DILocation(line: 90, column: 6, scope: !294)
!688 = !DILocation(line: 91, column: 3, scope: !679)
!689 = !DILocation(line: 93, column: 6, scope: !690)
!690 = distinct !DILexicalBlock(scope: !294, file: !3, line: 93, column: 6)
!691 = !DILocation(line: 93, column: 15, scope: !690)
!692 = !DILocation(line: 93, column: 45, scope: !690)
!693 = !DILocation(line: 93, column: 50, scope: !690)
!694 = !DILocation(line: 93, column: 63, scope: !690)
!695 = !DILocation(line: 93, column: 19, scope: !690)
!696 = !DILocation(line: 93, column: 6, scope: !294)
!697 = !DILocation(line: 94, column: 3, scope: !690)
!698 = !DILocation(line: 97, column: 28, scope: !294)
!699 = !DILocation(line: 98, column: 7, scope: !294)
!700 = !DILocation(line: 98, column: 12, scope: !294)
!701 = !DILocation(line: 98, column: 25, scope: !294)
!702 = !DILocation(line: 98, column: 30, scope: !294)
!703 = !DILocation(line: 99, column: 7, scope: !294)
!704 = !DILocation(line: 99, column: 12, scope: !294)
!705 = !DILocation(line: 97, column: 8, scope: !294)
!706 = !DILocation(line: 97, column: 6, scope: !294)
!707 = !DILocation(line: 100, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !294, file: !3, line: 100, column: 6)
!709 = !DILocation(line: 100, column: 6, scope: !708)
!710 = !DILocation(line: 100, column: 6, scope: !294)
!711 = !DILocation(line: 101, column: 3, scope: !708)
!712 = !DILocation(line: 103, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !294, file: !3, line: 103, column: 6)
!714 = !{i8 0, i8 2}
!715 = !DILocation(line: 103, column: 23, scope: !713)
!716 = !DILocation(line: 103, column: 27, scope: !713)
!717 = !DILocation(line: 103, column: 6, scope: !294)
!718 = !DILocation(line: 104, column: 7, scope: !713)
!719 = !DILocation(line: 104, column: 3, scope: !713)
!720 = !DILocation(line: 106, column: 26, scope: !713)
!721 = !DILocation(line: 106, column: 31, scope: !713)
!722 = !DILocation(line: 106, column: 9, scope: !713)
!723 = !DILocation(line: 106, column: 7, scope: !713)
!724 = !DILocation(line: 107, column: 10, scope: !294)
!725 = !DILocation(line: 107, column: 2, scope: !294)
!726 = !DILocation(line: 108, column: 9, scope: !294)
!727 = !DILocation(line: 108, column: 2, scope: !294)
!728 = !DILocation(line: 109, column: 1, scope: !294)
!729 = !DISubprogram(name: "asymmetric_key_id_partial", scope: !14, file: !14, line: 62, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!730 = !DISubroutineType(types: !731)
!731 = !{!175, !145, !145}
!732 = !DISubprogram(name: "find_asymmetric_key", scope: !14, file: !14, line: 81, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{!297, !297, !145, !145, !145, !175}
!735 = distinct !DISubprogram(name: "IS_ERR", scope: !736, file: !736, line: 59, type: !737, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !739)
!736 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!737 = !DISubroutineType(types: !738)
!738 = !{!175, !467}
!739 = !{!740}
!740 = !DILocalVariable(name: "ptr", arg: 1, scope: !735, file: !736, line: 59, type: !467)
!741 = !DILocation(line: 59, column: 60, scope: !735)
!742 = !DILocation(line: 61, column: 9, scope: !735)
!743 = !DILocation(line: 61, column: 2, scope: !735)
!744 = distinct !DISubprogram(name: "const_test_bit", scope: !745, file: !745, line: 166, type: !746, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !751)
!745 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!746 = !DISubroutineType(types: !747)
!747 = !{!175, !139, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !139)
!751 = !{!752, !753, !754, !755, !756}
!752 = !DILocalVariable(name: "nr", arg: 1, scope: !744, file: !745, line: 166, type: !139)
!753 = !DILocalVariable(name: "addr", arg: 2, scope: !744, file: !745, line: 166, type: !748)
!754 = !DILocalVariable(name: "p", scope: !744, file: !745, line: 168, type: !141)
!755 = !DILocalVariable(name: "mask", scope: !744, file: !745, line: 169, type: !139)
!756 = !DILocalVariable(name: "val", scope: !744, file: !745, line: 170, type: !139)
!757 = !DILocation(line: 166, column: 30, scope: !744)
!758 = !DILocation(line: 166, column: 64, scope: !744)
!759 = !DILocation(line: 168, column: 2, scope: !744)
!760 = !DILocation(line: 168, column: 23, scope: !744)
!761 = !DILocation(line: 168, column: 50, scope: !744)
!762 = !DILocation(line: 168, column: 57, scope: !744)
!763 = !DILocation(line: 168, column: 55, scope: !744)
!764 = !DILocation(line: 169, column: 2, scope: !744)
!765 = !DILocation(line: 169, column: 16, scope: !744)
!766 = !DILocation(line: 169, column: 23, scope: !744)
!767 = !DILocation(line: 170, column: 2, scope: !744)
!768 = !DILocation(line: 170, column: 16, scope: !744)
!769 = !DILocation(line: 170, column: 23, scope: !744)
!770 = !DILocation(line: 170, column: 22, scope: !744)
!771 = !DILocation(line: 172, column: 12, scope: !744)
!772 = !DILocation(line: 172, column: 18, scope: !744)
!773 = !DILocation(line: 172, column: 16, scope: !744)
!774 = !DILocation(line: 172, column: 10, scope: !744)
!775 = !DILocation(line: 172, column: 9, scope: !744)
!776 = !DILocation(line: 173, column: 1, scope: !744)
!777 = !DILocation(line: 172, column: 2, scope: !744)
!778 = distinct !DISubprogram(name: "_test_bit", scope: !779, file: !779, line: 139, type: !746, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!779 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!780 = !{!781, !782}
!781 = !DILocalVariable(name: "nr", arg: 1, scope: !778, file: !779, line: 139, type: !139)
!782 = !DILocalVariable(name: "addr", arg: 2, scope: !778, file: !779, line: 139, type: !748)
!783 = !DILocation(line: 139, column: 25, scope: !778)
!784 = !DILocation(line: 139, column: 59, scope: !778)
!785 = !DILocation(line: 141, column: 25, scope: !778)
!786 = !DILocation(line: 141, column: 32, scope: !778)
!787 = !DILocation(line: 141, column: 30, scope: !778)
!788 = !DILocation(line: 141, column: 2, scope: !778)
!789 = !DILocation(line: 142, column: 23, scope: !778)
!790 = !DILocation(line: 142, column: 27, scope: !778)
!791 = !DILocation(line: 142, column: 9, scope: !778)
!792 = !DILocation(line: 142, column: 2, scope: !778)
!793 = !DISubprogram(name: "verify_signature", scope: !633, file: !633, line: 109, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = !DISubroutineType(types: !795)
!795 = !{!170, !492, !630}
!796 = !DISubprogram(name: "key_put", scope: !299, file: !299, line: 302, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = distinct !DISubprogram(name: "restrict_link_by_ca", scope: !3, file: !3, line: 126, type: !295, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !798)
!798 = !{!799, !800, !801, !802, !803}
!799 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !797, file: !3, line: 126, type: !297)
!800 = !DILocalVariable(name: "type", arg: 2, scope: !797, file: !3, line: 127, type: !620)
!801 = !DILocalVariable(name: "payload", arg: 3, scope: !797, file: !3, line: 128, type: !622)
!802 = !DILocalVariable(name: "trust_keyring", arg: 4, scope: !797, file: !3, line: 129, type: !297)
!803 = !DILocalVariable(name: "pkey", scope: !797, file: !3, line: 131, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key", file: !633, line: 22, size: 448, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !806, file: !633, line: 23, baseType: !140, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !806, file: !633, line: 24, baseType: !413, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !806, file: !633, line: 25, baseType: !25, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !806, file: !633, line: 26, baseType: !140, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "paramlen", scope: !806, file: !633, line: 27, baseType: !413, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "key_is_private", scope: !806, file: !633, line: 28, baseType: !175, size: 8, offset: 224)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "id_type", scope: !806, file: !633, line: 29, baseType: !163, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !806, file: !633, line: 30, baseType: !163, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "key_eflags", scope: !806, file: !633, line: 31, baseType: !139, size: 64, offset: 384)
!817 = !DILocation(line: 126, column: 37, scope: !797)
!818 = !DILocation(line: 127, column: 27, scope: !797)
!819 = !DILocation(line: 128, column: 29, scope: !797)
!820 = !DILocation(line: 129, column: 16, scope: !797)
!821 = !DILocation(line: 131, column: 2, scope: !797)
!822 = !DILocation(line: 131, column: 27, scope: !797)
!823 = !DILocation(line: 133, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !797, file: !3, line: 133, column: 6)
!825 = !DILocation(line: 133, column: 11, scope: !824)
!826 = !DILocation(line: 133, column: 6, scope: !797)
!827 = !DILocation(line: 134, column: 3, scope: !824)
!828 = !DILocation(line: 136, column: 9, scope: !797)
!829 = !DILocation(line: 136, column: 7, scope: !797)
!830 = !DILocation(line: 137, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !797, file: !3, line: 137, column: 6)
!832 = !DILocation(line: 137, column: 6, scope: !797)
!833 = !DILocation(line: 138, column: 3, scope: !831)
!834 = !DILocation(line: 139, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !797, file: !3, line: 139, column: 6)
!836 = !DILocation(line: 139, column: 6, scope: !797)
!837 = !DILocation(line: 140, column: 3, scope: !835)
!838 = !DILocation(line: 141, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !797, file: !3, line: 141, column: 6)
!840 = !DILocation(line: 141, column: 6, scope: !797)
!841 = !DILocation(line: 142, column: 3, scope: !839)
!842 = !DILocation(line: 144, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !797, file: !3, line: 143, column: 6)
!844 = !DILocation(line: 149, column: 1, scope: !797)
!845 = distinct !DISubprogram(name: "restrict_link_by_digsig", scope: !3, file: !3, line: 167, type: !295, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !846)
!846 = !{!847, !848, !849, !850, !851}
!847 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !845, file: !3, line: 167, type: !297)
!848 = !DILocalVariable(name: "type", arg: 2, scope: !845, file: !3, line: 168, type: !620)
!849 = !DILocalVariable(name: "payload", arg: 3, scope: !845, file: !3, line: 169, type: !622)
!850 = !DILocalVariable(name: "trust_keyring", arg: 4, scope: !845, file: !3, line: 170, type: !297)
!851 = !DILocalVariable(name: "pkey", scope: !845, file: !3, line: 172, type: !804)
!852 = !DILocation(line: 167, column: 41, scope: !845)
!853 = !DILocation(line: 168, column: 31, scope: !845)
!854 = !DILocation(line: 169, column: 33, scope: !845)
!855 = !DILocation(line: 170, column: 20, scope: !845)
!856 = !DILocation(line: 172, column: 2, scope: !845)
!857 = !DILocation(line: 172, column: 27, scope: !845)
!858 = !DILocation(line: 174, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !845, file: !3, line: 174, column: 6)
!860 = !DILocation(line: 174, column: 11, scope: !859)
!861 = !DILocation(line: 174, column: 6, scope: !845)
!862 = !DILocation(line: 175, column: 3, scope: !859)
!863 = !DILocation(line: 177, column: 9, scope: !845)
!864 = !DILocation(line: 177, column: 7, scope: !845)
!865 = !DILocation(line: 179, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !845, file: !3, line: 179, column: 6)
!867 = !DILocation(line: 179, column: 6, scope: !845)
!868 = !DILocation(line: 180, column: 3, scope: !866)
!869 = !DILocation(line: 182, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !845, file: !3, line: 182, column: 6)
!871 = !DILocation(line: 182, column: 6, scope: !845)
!872 = !DILocation(line: 183, column: 3, scope: !870)
!873 = !DILocation(line: 185, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !845, file: !3, line: 185, column: 6)
!875 = !DILocation(line: 185, column: 6, scope: !845)
!876 = !DILocation(line: 186, column: 3, scope: !874)
!877 = !DILocation(line: 188, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !845, file: !3, line: 188, column: 6)
!879 = !DILocation(line: 188, column: 6, scope: !845)
!880 = !DILocation(line: 189, column: 3, scope: !878)
!881 = !DILocation(line: 191, column: 36, scope: !845)
!882 = !DILocation(line: 191, column: 50, scope: !845)
!883 = !DILocation(line: 191, column: 56, scope: !845)
!884 = !DILocation(line: 192, column: 8, scope: !845)
!885 = !DILocation(line: 191, column: 9, scope: !845)
!886 = !DILocation(line: 191, column: 2, scope: !845)
!887 = !DILocation(line: 193, column: 1, scope: !845)
!888 = distinct !DISubprogram(name: "restrict_link_by_key_or_keyring", scope: !3, file: !3, line: 324, type: !295, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!889 = !{!890, !891, !892, !893}
!890 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !888, file: !3, line: 324, type: !297)
!891 = !DILocalVariable(name: "type", arg: 2, scope: !888, file: !3, line: 325, type: !620)
!892 = !DILocalVariable(name: "payload", arg: 3, scope: !888, file: !3, line: 326, type: !622)
!893 = !DILocalVariable(name: "trusted", arg: 4, scope: !888, file: !3, line: 327, type: !297)
!894 = !DILocation(line: 324, column: 49, scope: !888)
!895 = !DILocation(line: 325, column: 32, scope: !888)
!896 = !DILocation(line: 326, column: 34, scope: !888)
!897 = !DILocation(line: 327, column: 21, scope: !888)
!898 = !DILocation(line: 329, column: 31, scope: !888)
!899 = !DILocation(line: 329, column: 45, scope: !888)
!900 = !DILocation(line: 329, column: 51, scope: !888)
!901 = !DILocation(line: 329, column: 60, scope: !888)
!902 = !DILocation(line: 329, column: 9, scope: !888)
!903 = !DILocation(line: 329, column: 2, scope: !888)
!904 = distinct !DISubprogram(name: "key_or_keyring_common", scope: !3, file: !3, line: 202, type: !905, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{!170, !297, !620, !622, !297, !175}
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916, !922}
!908 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !904, file: !3, line: 202, type: !297)
!909 = !DILocalVariable(name: "type", arg: 2, scope: !904, file: !3, line: 203, type: !620)
!910 = !DILocalVariable(name: "payload", arg: 3, scope: !904, file: !3, line: 204, type: !622)
!911 = !DILocalVariable(name: "trusted", arg: 4, scope: !904, file: !3, line: 205, type: !297)
!912 = !DILocalVariable(name: "check_dest", arg: 5, scope: !904, file: !3, line: 205, type: !175)
!913 = !DILocalVariable(name: "sig", scope: !904, file: !3, line: 207, type: !630)
!914 = !DILocalVariable(name: "key", scope: !904, file: !3, line: 208, type: !297)
!915 = !DILocalVariable(name: "ret", scope: !904, file: !3, line: 209, type: !170)
!916 = !DILocalVariable(name: "signer_ids", scope: !917, file: !3, line: 239, type: !144)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 238, column: 53)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 238, column: 14)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 231, column: 7)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 230, column: 15)
!921 = distinct !DILexicalBlock(scope: !904, file: !3, line: 230, column: 6)
!922 = !DILocalVariable(name: "auth_id", scope: !923, file: !3, line: 269, type: !145)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 268, column: 55)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 268, column: 15)
!925 = distinct !DILexicalBlock(scope: !917, file: !3, line: 263, column: 8)
!926 = !DILocation(line: 202, column: 46, scope: !904)
!927 = !DILocation(line: 203, column: 29, scope: !904)
!928 = !DILocation(line: 204, column: 31, scope: !904)
!929 = !DILocation(line: 205, column: 18, scope: !904)
!930 = !DILocation(line: 205, column: 32, scope: !904)
!931 = !DILocation(line: 207, column: 2, scope: !904)
!932 = !DILocation(line: 207, column: 37, scope: !904)
!933 = !DILocation(line: 208, column: 2, scope: !904)
!934 = !DILocation(line: 208, column: 14, scope: !904)
!935 = !DILocation(line: 209, column: 2, scope: !904)
!936 = !DILocation(line: 209, column: 6, scope: !904)
!937 = !DILocation(line: 211, column: 2, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 211, column: 2)
!939 = distinct !DILexicalBlock(scope: !904, file: !3, line: 211, column: 2)
!940 = !DILocation(line: 211, column: 2, scope: !939)
!941 = !DILocation(line: 213, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !904, file: !3, line: 213, column: 6)
!943 = !DILocation(line: 213, column: 6, scope: !904)
!944 = !DILocation(line: 214, column: 3, scope: !942)
!945 = !DILocation(line: 215, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 215, column: 11)
!947 = !DILocation(line: 215, column: 25, scope: !946)
!948 = !DILocation(line: 215, column: 30, scope: !946)
!949 = !DILocation(line: 215, column: 11, scope: !942)
!950 = !DILocation(line: 216, column: 3, scope: !946)
!951 = !DILocation(line: 218, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !904, file: !3, line: 218, column: 6)
!953 = !DILocation(line: 218, column: 15, scope: !952)
!954 = !DILocation(line: 218, column: 19, scope: !952)
!955 = !DILocation(line: 218, column: 6, scope: !904)
!956 = !DILocation(line: 219, column: 3, scope: !952)
!957 = !DILocation(line: 221, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !904, file: !3, line: 221, column: 6)
!959 = !DILocation(line: 221, column: 11, scope: !958)
!960 = !DILocation(line: 221, column: 6, scope: !904)
!961 = !DILocation(line: 222, column: 3, scope: !958)
!962 = !DILocation(line: 224, column: 8, scope: !904)
!963 = !DILocation(line: 224, column: 6, scope: !904)
!964 = !DILocation(line: 225, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !904, file: !3, line: 225, column: 6)
!966 = !DILocation(line: 225, column: 6, scope: !904)
!967 = !DILocation(line: 226, column: 3, scope: !965)
!968 = !DILocation(line: 227, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !904, file: !3, line: 227, column: 6)
!970 = !DILocation(line: 227, column: 12, scope: !969)
!971 = !DILocation(line: 227, column: 24, scope: !969)
!972 = !DILocation(line: 227, column: 28, scope: !969)
!973 = !DILocation(line: 227, column: 33, scope: !969)
!974 = !DILocation(line: 227, column: 45, scope: !969)
!975 = !DILocation(line: 227, column: 49, scope: !969)
!976 = !DILocation(line: 227, column: 54, scope: !969)
!977 = !DILocation(line: 227, column: 6, scope: !904)
!978 = !DILocation(line: 228, column: 3, scope: !969)
!979 = !DILocation(line: 230, column: 6, scope: !921)
!980 = !DILocation(line: 230, column: 6, scope: !904)
!981 = !DILocation(line: 231, column: 7, scope: !919)
!982 = !DILocation(line: 231, column: 16, scope: !919)
!983 = !DILocation(line: 231, column: 21, scope: !919)
!984 = !DILocation(line: 231, column: 7, scope: !920)
!985 = !DILocation(line: 233, column: 30, scope: !986)
!986 = distinct !DILexicalBlock(scope: !919, file: !3, line: 231, column: 43)
!987 = !DILocation(line: 233, column: 39, scope: !986)
!988 = !DILocation(line: 233, column: 44, scope: !986)
!989 = !DILocation(line: 234, column: 9, scope: !986)
!990 = !DILocation(line: 234, column: 14, scope: !986)
!991 = !DILocation(line: 235, column: 9, scope: !986)
!992 = !DILocation(line: 235, column: 14, scope: !986)
!993 = !DILocation(line: 233, column: 10, scope: !986)
!994 = !DILocation(line: 233, column: 8, scope: !986)
!995 = !DILocation(line: 236, column: 15, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !3, line: 236, column: 8)
!997 = !DILocation(line: 236, column: 8, scope: !996)
!998 = !DILocation(line: 236, column: 8, scope: !986)
!999 = !DILocation(line: 237, column: 9, scope: !996)
!1000 = !DILocation(line: 237, column: 5, scope: !996)
!1001 = !DILocation(line: 238, column: 3, scope: !986)
!1002 = !DILocation(line: 238, column: 14, scope: !918)
!1003 = !DILocation(line: 238, column: 23, scope: !918)
!1004 = !DILocation(line: 238, column: 28, scope: !918)
!1005 = !DILocation(line: 238, column: 14, scope: !919)
!1006 = !DILocation(line: 239, column: 4, scope: !917)
!1007 = !DILocation(line: 239, column: 37, scope: !917)
!1008 = !DILocation(line: 242, column: 24, scope: !917)
!1009 = !DILocation(line: 242, column: 5, scope: !917)
!1010 = !DILocation(line: 242, column: 34, scope: !917)
!1011 = !DILocation(line: 241, column: 15, scope: !917)
!1012 = !DILocation(line: 263, column: 9, scope: !925)
!1013 = !DILocation(line: 263, column: 14, scope: !925)
!1014 = !DILocation(line: 263, column: 26, scope: !925)
!1015 = !DILocation(line: 263, column: 30, scope: !925)
!1016 = !DILocation(line: 263, column: 35, scope: !925)
!1017 = !DILocation(line: 263, column: 8, scope: !917)
!1018 = !DILocation(line: 264, column: 32, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 264, column: 9)
!1020 = distinct !DILexicalBlock(scope: !925, file: !3, line: 263, column: 48)
!1021 = !DILocation(line: 265, column: 11, scope: !1019)
!1022 = !DILocation(line: 265, column: 16, scope: !1019)
!1023 = !DILocation(line: 264, column: 9, scope: !1019)
!1024 = !DILocation(line: 264, column: 9, scope: !1020)
!1025 = !DILocation(line: 266, column: 22, scope: !1019)
!1026 = !DILocation(line: 266, column: 12, scope: !1019)
!1027 = !DILocation(line: 266, column: 10, scope: !1019)
!1028 = !DILocation(line: 266, column: 6, scope: !1019)
!1029 = !DILocation(line: 268, column: 4, scope: !1020)
!1030 = !DILocation(line: 268, column: 16, scope: !924)
!1031 = !DILocation(line: 268, column: 21, scope: !924)
!1032 = !DILocation(line: 268, column: 33, scope: !924)
!1033 = !DILocation(line: 268, column: 37, scope: !924)
!1034 = !DILocation(line: 268, column: 42, scope: !924)
!1035 = !DILocation(line: 268, column: 15, scope: !925)
!1036 = !DILocation(line: 269, column: 5, scope: !923)
!1037 = !DILocation(line: 269, column: 37, scope: !923)
!1038 = !DILocation(line: 271, column: 15, scope: !923)
!1039 = !DILocation(line: 271, column: 20, scope: !923)
!1040 = !DILocation(line: 271, column: 35, scope: !923)
!1041 = !DILocation(line: 271, column: 40, scope: !923)
!1042 = !DILocation(line: 271, column: 13, scope: !923)
!1043 = !DILocation(line: 272, column: 25, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !923, file: !3, line: 272, column: 9)
!1045 = !DILocation(line: 272, column: 37, scope: !1044)
!1046 = !DILocation(line: 272, column: 9, scope: !1044)
!1047 = !DILocation(line: 272, column: 9, scope: !923)
!1048 = !DILocation(line: 273, column: 22, scope: !1044)
!1049 = !DILocation(line: 273, column: 12, scope: !1044)
!1050 = !DILocation(line: 273, column: 10, scope: !1044)
!1051 = !DILocation(line: 273, column: 6, scope: !1044)
!1052 = !DILocation(line: 275, column: 4, scope: !924)
!1053 = !DILocation(line: 275, column: 4, scope: !923)
!1054 = !DILocation(line: 275, column: 38, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !924, file: !3, line: 275, column: 15)
!1056 = !DILocation(line: 276, column: 10, scope: !1055)
!1057 = !DILocation(line: 276, column: 15, scope: !1055)
!1058 = !DILocation(line: 275, column: 15, scope: !1055)
!1059 = !DILocation(line: 276, column: 28, scope: !1055)
!1060 = !DILocation(line: 277, column: 24, scope: !1055)
!1061 = !DILocation(line: 278, column: 10, scope: !1055)
!1062 = !DILocation(line: 278, column: 15, scope: !1055)
!1063 = !DILocation(line: 277, column: 8, scope: !1055)
!1064 = !DILocation(line: 275, column: 15, scope: !924)
!1065 = !DILocation(line: 279, column: 21, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 278, column: 29)
!1067 = !DILocation(line: 279, column: 11, scope: !1066)
!1068 = !DILocation(line: 279, column: 9, scope: !1066)
!1069 = !DILocation(line: 280, column: 4, scope: !1066)
!1070 = !DILocation(line: 281, column: 3, scope: !918)
!1071 = !DILocation(line: 281, column: 3, scope: !917)
!1072 = !DILocation(line: 282, column: 4, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !918, file: !3, line: 281, column: 10)
!1074 = !DILocation(line: 284, column: 2, scope: !920)
!1075 = !DILocation(line: 286, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !904, file: !3, line: 286, column: 6)
!1077 = !DILocation(line: 286, column: 17, scope: !1076)
!1078 = !DILocation(line: 286, column: 21, scope: !1076)
!1079 = !DILocation(line: 286, column: 6, scope: !904)
!1080 = !DILocation(line: 288, column: 29, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 286, column: 26)
!1082 = !DILocation(line: 288, column: 43, scope: !1081)
!1083 = !DILocation(line: 288, column: 48, scope: !1081)
!1084 = !DILocation(line: 289, column: 8, scope: !1081)
!1085 = !DILocation(line: 289, column: 13, scope: !1081)
!1086 = !DILocation(line: 289, column: 26, scope: !1081)
!1087 = !DILocation(line: 289, column: 31, scope: !1081)
!1088 = !DILocation(line: 288, column: 9, scope: !1081)
!1089 = !DILocation(line: 288, column: 7, scope: !1081)
!1090 = !DILocation(line: 291, column: 14, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 291, column: 7)
!1092 = !DILocation(line: 291, column: 7, scope: !1091)
!1093 = !DILocation(line: 291, column: 7, scope: !1081)
!1094 = !DILocation(line: 292, column: 8, scope: !1091)
!1095 = !DILocation(line: 292, column: 4, scope: !1091)
!1096 = !DILocation(line: 293, column: 2, scope: !1081)
!1097 = !DILocation(line: 295, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !904, file: !3, line: 295, column: 6)
!1099 = !DILocation(line: 295, column: 6, scope: !904)
!1100 = !DILocation(line: 296, column: 3, scope: !1098)
!1101 = !DILocation(line: 298, column: 21, scope: !904)
!1102 = !DILocation(line: 298, column: 8, scope: !904)
!1103 = !DILocation(line: 298, column: 6, scope: !904)
!1104 = !DILocation(line: 299, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !904, file: !3, line: 299, column: 6)
!1106 = !DILocation(line: 299, column: 10, scope: !1105)
!1107 = !DILocation(line: 299, column: 6, scope: !904)
!1108 = !DILocation(line: 300, column: 26, scope: !1105)
!1109 = !DILocation(line: 300, column: 31, scope: !1105)
!1110 = !DILocation(line: 300, column: 9, scope: !1105)
!1111 = !DILocation(line: 300, column: 7, scope: !1105)
!1112 = !DILocation(line: 300, column: 3, scope: !1105)
!1113 = !DILocation(line: 302, column: 10, scope: !904)
!1114 = !DILocation(line: 302, column: 2, scope: !904)
!1115 = !DILocation(line: 303, column: 9, scope: !904)
!1116 = !DILocation(line: 303, column: 2, scope: !904)
!1117 = !DILocation(line: 304, column: 1, scope: !904)
!1118 = distinct !DISubprogram(name: "restrict_link_by_key_or_keyring_chain", scope: !3, file: !3, line: 352, type: !295, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1119)
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !1118, file: !3, line: 352, type: !297)
!1121 = !DILocalVariable(name: "type", arg: 2, scope: !1118, file: !3, line: 353, type: !620)
!1122 = !DILocalVariable(name: "payload", arg: 3, scope: !1118, file: !3, line: 354, type: !622)
!1123 = !DILocalVariable(name: "trusted", arg: 4, scope: !1118, file: !3, line: 355, type: !297)
!1124 = !DILocation(line: 352, column: 55, scope: !1118)
!1125 = !DILocation(line: 353, column: 31, scope: !1118)
!1126 = !DILocation(line: 354, column: 33, scope: !1118)
!1127 = !DILocation(line: 355, column: 20, scope: !1118)
!1128 = !DILocation(line: 357, column: 31, scope: !1118)
!1129 = !DILocation(line: 357, column: 45, scope: !1118)
!1130 = !DILocation(line: 357, column: 51, scope: !1118)
!1131 = !DILocation(line: 357, column: 60, scope: !1118)
!1132 = !DILocation(line: 357, column: 9, scope: !1118)
!1133 = !DILocation(line: 357, column: 2, scope: !1118)
!1134 = !DISubprogram(name: "strncmp", scope: !1135, file: !1135, line: 91, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!170, !163, !163, !229}
!1138 = !DISubprogram(name: "strlen", scope: !1135, file: !1135, line: 128, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!139, !163}
!1141 = !DISubprogram(name: "_printk", scope: !1142, file: !1142, line: 153, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!170, !163, null}
!1145 = !DISubprogram(name: "__asymmetric_key_hex_to_key_id", scope: !1146, file: !1146, line: 12, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DIFile(filename: "crypto/asymmetric_keys/asymmetric_keys.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76f65de6f499ba7de94d6c41006a61b3")
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!170, !163, !179, !228}
!1149 = !DISubprogram(name: "strcmp", scope: !1135, file: !1135, line: 88, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!170, !163, !163}
!1152 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1153, file: !1153, line: 66, type: !1154, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1153 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !1156, !228}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1159 = !{!1160, !1161}
!1160 = !DILocalVariable(name: "v", arg: 1, scope: !1152, file: !1153, line: 66, type: !1156)
!1161 = !DILocalVariable(name: "size", arg: 2, scope: !1152, file: !1153, line: 66, type: !228)
!1162 = !DILocation(line: 66, column: 73, scope: !1152)
!1163 = !DILocation(line: 66, column: 83, scope: !1152)
!1164 = !DILocation(line: 68, column: 19, scope: !1152)
!1165 = !DILocation(line: 68, column: 22, scope: !1152)
!1166 = !DILocation(line: 68, column: 2, scope: !1152)
!1167 = !DILocation(line: 69, column: 2, scope: !1152)
!1168 = !DILocation(line: 70, column: 1, scope: !1152)
!1169 = distinct !DISubprogram(name: "arch_test_bit", scope: !1170, file: !1170, line: 237, type: !746, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1171 = !{!1172, !1173}
!1172 = !DILocalVariable(name: "nr", arg: 1, scope: !1169, file: !1170, line: 237, type: !139)
!1173 = !DILocalVariable(name: "addr", arg: 2, scope: !1169, file: !1170, line: 237, type: !748)
!1174 = !DILocation(line: 237, column: 29, scope: !1169)
!1175 = !DILocation(line: 237, column: 63, scope: !1169)
!1176 = !DILocation(line: 239, column: 30, scope: !1169)
!1177 = !DILocation(line: 239, column: 9, scope: !1169)
!1178 = !DILocation(line: 239, column: 54, scope: !1169)
!1179 = !DILocation(line: 239, column: 58, scope: !1169)
!1180 = !DILocation(line: 239, column: 36, scope: !1169)
!1181 = !DILocation(line: 240, column: 26, scope: !1169)
!1182 = !DILocation(line: 240, column: 30, scope: !1169)
!1183 = !DILocation(line: 240, column: 8, scope: !1169)
!1184 = !DILocation(line: 239, column: 2, scope: !1169)
!1185 = distinct !DISubprogram(name: "kasan_check_read", scope: !1186, file: !1186, line: 40, type: !1187, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1186 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!175, !1156, !7}
!1189 = !{!1190, !1191}
!1190 = !DILocalVariable(name: "p", arg: 1, scope: !1185, file: !1186, line: 40, type: !1156)
!1191 = !DILocalVariable(name: "size", arg: 2, scope: !1185, file: !1186, line: 40, type: !7)
!1192 = !DILocation(line: 40, column: 58, scope: !1185)
!1193 = !DILocation(line: 40, column: 74, scope: !1185)
!1194 = !DILocation(line: 42, column: 2, scope: !1185)
!1195 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1196, file: !1196, line: 229, type: !1197, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1199)
!1196 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1156, !228, !170}
!1199 = !{!1200, !1201, !1202}
!1200 = !DILocalVariable(name: "ptr", arg: 1, scope: !1195, file: !1196, line: 229, type: !1156)
!1201 = !DILocalVariable(name: "size", arg: 2, scope: !1195, file: !1196, line: 229, type: !228)
!1202 = !DILocalVariable(name: "type", arg: 3, scope: !1195, file: !1196, line: 230, type: !170)
!1203 = !DILocation(line: 229, column: 60, scope: !1195)
!1204 = !DILocation(line: 229, column: 72, scope: !1195)
!1205 = !DILocation(line: 230, column: 15, scope: !1195)
!1206 = !DILocation(line: 230, column: 23, scope: !1195)
!1207 = distinct !DISubprogram(name: "constant_test_bit", scope: !1170, file: !1170, line: 204, type: !1208, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!175, !519, !748}
!1210 = !{!1211, !1212}
!1211 = !DILocalVariable(name: "nr", arg: 1, scope: !1207, file: !1170, line: 204, type: !519)
!1212 = !DILocalVariable(name: "addr", arg: 2, scope: !1207, file: !1170, line: 204, type: !748)
!1213 = !DILocation(line: 204, column: 52, scope: !1207)
!1214 = !DILocation(line: 204, column: 86, scope: !1207)
!1215 = !DILocation(line: 206, column: 19, scope: !1207)
!1216 = !DILocation(line: 206, column: 22, scope: !1207)
!1217 = !DILocation(line: 206, column: 15, scope: !1207)
!1218 = !DILocation(line: 207, column: 4, scope: !1207)
!1219 = !DILocation(line: 207, column: 9, scope: !1207)
!1220 = !DILocation(line: 207, column: 12, scope: !1207)
!1221 = !DILocation(line: 206, column: 44, scope: !1207)
!1222 = !DILocation(line: 207, column: 37, scope: !1207)
!1223 = !DILocation(line: 206, column: 2, scope: !1207)
!1224 = distinct !DISubprogram(name: "variable_test_bit", scope: !1170, file: !1170, line: 224, type: !1208, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DILocalVariable(name: "nr", arg: 1, scope: !1224, file: !1170, line: 224, type: !519)
!1227 = !DILocalVariable(name: "addr", arg: 2, scope: !1224, file: !1170, line: 224, type: !748)
!1228 = !DILocalVariable(name: "oldbit", scope: !1224, file: !1170, line: 226, type: !175)
!1229 = !DILocation(line: 224, column: 52, scope: !1224)
!1230 = !DILocation(line: 224, column: 86, scope: !1224)
!1231 = !DILocation(line: 226, column: 2, scope: !1224)
!1232 = !DILocation(line: 226, column: 7, scope: !1224)
!1233 = !DILocation(line: 231, column: 33, scope: !1224)
!1234 = !DILocation(line: 231, column: 46, scope: !1224)
!1235 = !DILocation(line: 228, column: 2, scope: !1224)
!1236 = !{i64 2148351595, i64 2148351669}
!1237 = !DILocation(line: 233, column: 9, scope: !1224)
!1238 = !DILocation(line: 234, column: 1, scope: !1224)
!1239 = !DILocation(line: 233, column: 2, scope: !1224)
!1240 = distinct !DISubprogram(name: "asymmetric_key_ids", scope: !14, file: !14, line: 70, type: !1241, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1243, !492}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asymmetric_key_ids", file: !14, line: 55, size: 192, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1245, file: !14, line: 56, baseType: !1248, size: 192)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 192, elements: !637)
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "key", arg: 1, scope: !1240, file: !14, line: 70, type: !492)
!1251 = !DILocation(line: 70, column: 71, scope: !1240)
!1252 = !DILocation(line: 72, column: 9, scope: !1240)
!1253 = !DILocation(line: 72, column: 14, scope: !1240)
!1254 = !DILocation(line: 72, column: 2, scope: !1240)
!1255 = !DISubprogram(name: "asymmetric_key_id_same", scope: !14, file: !14, line: 59, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = distinct !DISubprogram(name: "__key_get", scope: !299, file: !299, line: 306, type: !1257, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!297, !297}
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "key", arg: 1, scope: !1256, file: !299, line: 306, type: !297)
!1261 = !DILocation(line: 306, column: 49, scope: !1256)
!1262 = !DILocation(line: 308, column: 16, scope: !1256)
!1263 = !DILocation(line: 308, column: 21, scope: !1256)
!1264 = !DILocation(line: 308, column: 2, scope: !1256)
!1265 = !DILocation(line: 309, column: 9, scope: !1256)
!1266 = !DILocation(line: 309, column: 2, scope: !1256)
!1267 = distinct !DISubprogram(name: "match_either_id", scope: !3, file: !3, line: 195, type: !1268, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!175, !144, !145}
!1270 = !{!1271, !1272}
!1271 = !DILocalVariable(name: "pair", arg: 1, scope: !1267, file: !3, line: 195, type: !144)
!1272 = !DILocalVariable(name: "single", arg: 2, scope: !1267, file: !3, line: 196, type: !145)
!1273 = !DILocation(line: 195, column: 62, scope: !1267)
!1274 = !DILocation(line: 196, column: 40, scope: !1267)
!1275 = !DILocation(line: 198, column: 33, scope: !1267)
!1276 = !DILocation(line: 198, column: 42, scope: !1267)
!1277 = !DILocation(line: 198, column: 10, scope: !1267)
!1278 = !DILocation(line: 198, column: 50, scope: !1267)
!1279 = !DILocation(line: 199, column: 26, scope: !1267)
!1280 = !DILocation(line: 199, column: 35, scope: !1267)
!1281 = !DILocation(line: 199, column: 3, scope: !1267)
!1282 = !DILocation(line: 198, column: 2, scope: !1267)
!1283 = !DISubprogram(name: "key_validate", scope: !299, file: !299, line: 387, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!170, !492}
!1286 = distinct !DISubprogram(name: "refcount_inc", scope: !129, file: !129, line: 265, type: !1287, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1290)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1290 = !{!1291}
!1291 = !DILocalVariable(name: "r", arg: 1, scope: !1286, file: !129, line: 265, type: !1289)
!1292 = !DILocation(line: 265, column: 45, scope: !1286)
!1293 = !DILocation(line: 267, column: 17, scope: !1286)
!1294 = !DILocation(line: 267, column: 2, scope: !1286)
!1295 = !DILocation(line: 268, column: 1, scope: !1286)
!1296 = distinct !DISubprogram(name: "__refcount_inc", scope: !129, file: !129, line: 248, type: !1297, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1300)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1289, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1300 = !{!1301, !1302}
!1301 = !DILocalVariable(name: "r", arg: 1, scope: !1296, file: !129, line: 248, type: !1289)
!1302 = !DILocalVariable(name: "oldp", arg: 2, scope: !1296, file: !129, line: 248, type: !1299)
!1303 = !DILocation(line: 248, column: 47, scope: !1296)
!1304 = !DILocation(line: 248, column: 55, scope: !1296)
!1305 = !DILocation(line: 250, column: 20, scope: !1296)
!1306 = !DILocation(line: 250, column: 23, scope: !1296)
!1307 = !DILocation(line: 250, column: 2, scope: !1296)
!1308 = !DILocation(line: 251, column: 1, scope: !1296)
!1309 = distinct !DISubprogram(name: "__refcount_add", scope: !129, file: !129, line: 191, type: !1310, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !170, !1289, !1299}
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DILocalVariable(name: "i", arg: 1, scope: !1309, file: !129, line: 191, type: !170)
!1314 = !DILocalVariable(name: "r", arg: 2, scope: !1309, file: !129, line: 191, type: !1289)
!1315 = !DILocalVariable(name: "oldp", arg: 3, scope: !1309, file: !129, line: 191, type: !1299)
!1316 = !DILocalVariable(name: "old", scope: !1309, file: !129, line: 193, type: !170)
!1317 = !DILocation(line: 191, column: 39, scope: !1309)
!1318 = !DILocation(line: 191, column: 54, scope: !1309)
!1319 = !DILocation(line: 191, column: 62, scope: !1309)
!1320 = !DILocation(line: 193, column: 2, scope: !1309)
!1321 = !DILocation(line: 193, column: 6, scope: !1309)
!1322 = !DILocation(line: 193, column: 37, scope: !1309)
!1323 = !DILocation(line: 193, column: 41, scope: !1309)
!1324 = !DILocation(line: 193, column: 44, scope: !1309)
!1325 = !DILocation(line: 193, column: 12, scope: !1309)
!1326 = !DILocation(line: 195, column: 6, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1309, file: !129, line: 195, column: 6)
!1328 = !DILocation(line: 195, column: 6, scope: !1309)
!1329 = !DILocation(line: 196, column: 11, scope: !1327)
!1330 = !DILocation(line: 196, column: 4, scope: !1327)
!1331 = !DILocation(line: 196, column: 9, scope: !1327)
!1332 = !DILocation(line: 196, column: 3, scope: !1327)
!1333 = !DILocation(line: 198, column: 6, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1309, file: !129, line: 198, column: 6)
!1335 = !DILocation(line: 198, column: 6, scope: !1309)
!1336 = !DILocation(line: 199, column: 26, scope: !1334)
!1337 = !DILocation(line: 199, column: 3, scope: !1334)
!1338 = !DILocation(line: 200, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !129, line: 200, column: 11)
!1340 = !DILocation(line: 200, column: 11, scope: !1334)
!1341 = !DILocation(line: 201, column: 26, scope: !1339)
!1342 = !DILocation(line: 201, column: 3, scope: !1339)
!1343 = !DILocation(line: 202, column: 1, scope: !1309)
!1344 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !1345, file: !1345, line: 250, type: !1346, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1345 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!170, !170, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1349 = !{!1350, !1351}
!1350 = !DILocalVariable(name: "i", arg: 1, scope: !1344, file: !1345, line: 250, type: !170)
!1351 = !DILocalVariable(name: "v", arg: 2, scope: !1344, file: !1345, line: 250, type: !1348)
!1352 = !DILocation(line: 250, column: 30, scope: !1344)
!1353 = !DILocation(line: 250, column: 43, scope: !1344)
!1354 = !DILocation(line: 252, column: 31, scope: !1344)
!1355 = !DILocation(line: 252, column: 2, scope: !1344)
!1356 = !DILocation(line: 253, column: 38, scope: !1344)
!1357 = !DILocation(line: 253, column: 41, scope: !1344)
!1358 = !DILocation(line: 253, column: 9, scope: !1344)
!1359 = !DILocation(line: 253, column: 2, scope: !1344)
!1360 = !DISubprogram(name: "refcount_warn_saturate", scope: !129, file: !129, line: 127, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1289, !128}
!1363 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1153, file: !1153, line: 94, type: !1154, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1364)
!1364 = !{!1365, !1366}
!1365 = !DILocalVariable(name: "v", arg: 1, scope: !1363, file: !1153, line: 94, type: !1156)
!1366 = !DILocalVariable(name: "size", arg: 2, scope: !1363, file: !1153, line: 94, type: !228)
!1367 = !DILocation(line: 94, column: 79, scope: !1363)
!1368 = !DILocation(line: 94, column: 89, scope: !1363)
!1369 = !DILocation(line: 96, column: 20, scope: !1363)
!1370 = !DILocation(line: 96, column: 23, scope: !1363)
!1371 = !DILocation(line: 96, column: 2, scope: !1363)
!1372 = !DILocation(line: 97, column: 2, scope: !1363)
!1373 = !DILocation(line: 98, column: 1, scope: !1363)
!1374 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !1375, file: !1375, line: 731, type: !1346, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1376)
!1375 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1376 = !{!1377, !1378}
!1377 = !DILocalVariable(name: "i", arg: 1, scope: !1374, file: !1375, line: 731, type: !170)
!1378 = !DILocalVariable(name: "v", arg: 2, scope: !1374, file: !1375, line: 731, type: !1348)
!1379 = !DILocation(line: 731, column: 34, scope: !1374)
!1380 = !DILocation(line: 731, column: 47, scope: !1374)
!1381 = !DILocation(line: 736, column: 31, scope: !1374)
!1382 = !DILocation(line: 736, column: 34, scope: !1374)
!1383 = !DILocation(line: 736, column: 9, scope: !1374)
!1384 = !DILocation(line: 736, column: 2, scope: !1374)
!1385 = distinct !DISubprogram(name: "kasan_check_write", scope: !1186, file: !1186, line: 44, type: !1187, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1386 = !{!1387, !1388}
!1387 = !DILocalVariable(name: "p", arg: 1, scope: !1385, file: !1186, line: 44, type: !1156)
!1388 = !DILocalVariable(name: "size", arg: 2, scope: !1385, file: !1186, line: 44, type: !7)
!1389 = !DILocation(line: 44, column: 59, scope: !1385)
!1390 = !DILocation(line: 44, column: 75, scope: !1385)
!1391 = !DILocation(line: 46, column: 2, scope: !1385)
!1392 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !1393, file: !1393, line: 95, type: !1346, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1393 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1394 = !{!1395, !1396, !1397}
!1395 = !DILocalVariable(name: "i", arg: 1, scope: !1392, file: !1393, line: 95, type: !170)
!1396 = !DILocalVariable(name: "v", arg: 2, scope: !1392, file: !1393, line: 95, type: !1348)
!1397 = !DILocalVariable(name: "__ret", scope: !1398, file: !1393, line: 97, type: !170)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !1393, line: 97, column: 9)
!1399 = !DILocation(line: 95, column: 54, scope: !1392)
!1400 = !DILocation(line: 95, column: 67, scope: !1392)
!1401 = !DILocation(line: 97, column: 9, scope: !1398)
!1402 = !{i64 2148801801, i64 2148801840, i64 2148801861, i64 2148801898, i64 2148801921, i64 2148801930}
!1403 = !DILocation(line: 97, column: 9, scope: !1392)
!1404 = !DILocation(line: 97, column: 2, scope: !1392)
