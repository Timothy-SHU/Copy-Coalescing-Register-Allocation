; ModuleID = 'crypto/drbg.c'
source_filename = "crypto/drbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_drbg__303_2148_drbg_init\22, \22a\22\09\09"
module asm "__initcall__kmod_drbg__303_2148_drbg_init4:\09\09\09"
module asm ".long\09__initstub__kmod_drbg__303_2148_drbg_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.rng_alg = type { ptr, ptr, ptr, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.drbg_core = type { i32, i8, i8, [128 x i8], [128 x i8] }
%struct.lock_class_key = type {}
%struct.drbg_state_ops = type { ptr, ptr, ptr, ptr }
%struct.drbg_string = type { ptr, i64, %struct.list_head }
%struct.drbg_state = type { %struct.mutex, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.crypto_wait, %struct.scatterlist, %struct.scatterlist, i32, i64, i8, i8, ptr, ptr, ptr, ptr, %struct.drbg_string }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.crypto_rng = type { %struct.crypto_tfm }
%struct.sdesc = type { %struct.shash_desc, [0 x i8] }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i32, %struct.crypto_alg }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }

@__UNIQUE_ID_alias_userspace287 = internal constant [31 x i8] c"drbg.alias=drbg_pr_hmac_sha512\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_alias_crypto288 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha512\00", section ".modinfo", align 1, !dbg !4309
@__UNIQUE_ID_alias_userspace289 = internal constant [33 x i8] c"drbg.alias=drbg_nopr_hmac_sha512\00", section ".modinfo", align 1, !dbg !4314
@__UNIQUE_ID_alias_crypto290 = internal constant [40 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha512\00", section ".modinfo", align 1, !dbg !4319
@__UNIQUE_ID_alias_userspace291 = internal constant [31 x i8] c"drbg.alias=drbg_pr_hmac_sha384\00", section ".modinfo", align 1, !dbg !4324
@__UNIQUE_ID_alias_crypto292 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha384\00", section ".modinfo", align 1, !dbg !4329
@__UNIQUE_ID_alias_userspace293 = internal constant [33 x i8] c"drbg.alias=drbg_nopr_hmac_sha384\00", section ".modinfo", align 1, !dbg !4331
@__UNIQUE_ID_alias_crypto294 = internal constant [40 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha384\00", section ".modinfo", align 1, !dbg !4333
@__UNIQUE_ID_alias_userspace295 = internal constant [31 x i8] c"drbg.alias=drbg_pr_hmac_sha256\00", section ".modinfo", align 1, !dbg !4335
@__UNIQUE_ID_alias_crypto296 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha256\00", section ".modinfo", align 1, !dbg !4337
@__UNIQUE_ID_alias_userspace297 = internal constant [33 x i8] c"drbg.alias=drbg_nopr_hmac_sha256\00", section ".modinfo", align 1, !dbg !4339
@__UNIQUE_ID_alias_crypto298 = internal constant [40 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha256\00", section ".modinfo", align 1, !dbg !4341
@__UNIQUE_ID_alias_userspace299 = internal constant [29 x i8] c"drbg.alias=drbg_pr_hmac_sha1\00", section ".modinfo", align 1, !dbg !4343
@__UNIQUE_ID_alias_crypto300 = internal constant [36 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha1\00", section ".modinfo", align 1, !dbg !4348
@__UNIQUE_ID_alias_userspace301 = internal constant [31 x i8] c"drbg.alias=drbg_nopr_hmac_sha1\00", section ".modinfo", align 1, !dbg !4353
@__UNIQUE_ID_alias_crypto302 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha1\00", section ".modinfo", align 1, !dbg !4355
@drbg_algs = internal global [22 x %struct.rng_alg] zeroinitializer, align 16, !dbg !4395
@__UNIQUE_ID___addressable___initstub__kmod_drbg__303_2148_drbg_init4304 = internal global ptr @__initstub__kmod_drbg__303_2148_drbg_init4, section ".discard.addressable", align 8, !dbg !4357
@__exitcall_drbg_exit = internal global ptr @drbg_exit, section ".exitcall.exit", align 8, !dbg !4359
@__UNIQUE_ID_file305 = internal constant [22 x i8] c"drbg.file=crypto/drbg\00", section ".modinfo", align 1, !dbg !4363
@__UNIQUE_ID_license306 = internal constant [17 x i8] c"drbg.license=GPL\00", section ".modinfo", align 1, !dbg !4368
@__UNIQUE_ID_author307 = internal constant [50 x i8] c"drbg.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1, !dbg !4373
@__UNIQUE_ID_description308 = internal constant [103 x i8] c"drbg.description=NIST SP800-90A Deterministic Random Bit Generator (DRBG) using following cores: HMAC \00", section ".modinfo", align 1, !dbg !4378
@__UNIQUE_ID_alias_userspace309 = internal constant [18 x i8] c"drbg.alias=stdrng\00", section ".modinfo", align 1, !dbg !4383
@__UNIQUE_ID_alias_crypto310 = internal constant [25 x i8] c"drbg.alias=crypto-stdrng\00", section ".modinfo", align 1, !dbg !4388
@__UNIQUE_ID_import_ns311 = internal constant [31 x i8] c"drbg.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1, !dbg !4393
@drbg_cores = internal constant [4 x %struct.drbg_core] [%struct.drbg_core { i32 10, i8 20, i8 20, [128 x i8] c"hmac_sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 48, i8 48, [128 x i8] c"hmac_sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 32, i8 32, [128 x i8] c"hmac_sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 64, i8 64, [128 x i8] c"hmac_sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 16, !dbg !4549
@drbg_fill_array.priority = internal global i32 200, align 4, !dbg !4398
@.str = private unnamed_addr constant [7 x i8] c"stdrng\00", align 1, !dbg !4417
@.str.1 = private unnamed_addr constant [9 x i8] c"drbg_pr_\00", align 1, !dbg !4420
@.str.2 = private unnamed_addr constant [11 x i8] c"drbg_nopr_\00", align 1, !dbg !4425
@drbg_kcapi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4430
@.str.3 = private unnamed_addr constant [18 x i8] c"&drbg->drbg_mutex\00", align 1, !dbg !4524
@.str.4 = private unnamed_addr constant [14 x i8] c"crypto/drbg.c\00", align 1, !dbg !4527
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@drbg_hmac_ops = internal constant %struct.drbg_state_ops { ptr @drbg_hmac_update, ptr @drbg_hmac_generate, ptr @drbg_init_hash_kernel, ptr @drbg_fini_hash_kernel }, align 8, !dbg !4532
@.str.5 = private unnamed_addr constant [50 x i8] c"\016DRBG: could not allocate digest TFM handle: %s\0A\00", align 1, !dbg !4534
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4537
@.str.7 = private unnamed_addr constant [18 x i8] c"jitterentropy_rng\00", align 1, !dbg !4542
@.str.8 = private unnamed_addr constant [39 x i8] c"\016DRBG: Continuing without Jitter RNG\0A\00", align 1, !dbg !4544
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias_userspace287, ptr @__UNIQUE_ID_alias_crypto288, ptr @__UNIQUE_ID_alias_userspace289, ptr @__UNIQUE_ID_alias_crypto290, ptr @__UNIQUE_ID_alias_userspace291, ptr @__UNIQUE_ID_alias_crypto292, ptr @__UNIQUE_ID_alias_userspace293, ptr @__UNIQUE_ID_alias_crypto294, ptr @__UNIQUE_ID_alias_userspace295, ptr @__UNIQUE_ID_alias_crypto296, ptr @__UNIQUE_ID_alias_userspace297, ptr @__UNIQUE_ID_alias_crypto298, ptr @__UNIQUE_ID_alias_userspace299, ptr @__UNIQUE_ID_alias_crypto300, ptr @__UNIQUE_ID_alias_userspace301, ptr @__UNIQUE_ID_alias_crypto302, ptr @drbg_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_drbg__303_2148_drbg_init4304, ptr @__exitcall_drbg_exit, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_alias_userspace309, ptr @__UNIQUE_ID_alias_crypto310, ptr @__UNIQUE_ID_import_ns311], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @drbg_exit() #0 section ".exit.text" align 16 !dbg !4561 {
entry:
  call void @crypto_unregister_rngs(ptr noundef @drbg_algs, i32 noundef 8) #18, !dbg !4562
  ret void, !dbg !4563
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4564 dso_local void @crypto_unregister_rngs(ptr noundef, i32 noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_drbg__303_2148_drbg_init4() #0 section ".init.text" align 16 !dbg !4568 {
entry:
  %call = call i32 @drbg_init() #19, !dbg !4569
  ret i32 %call, !dbg !4569
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @drbg_init() #0 section ".init.text" align 16 !dbg !4570 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !4575
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4572, metadata !DIExpression()), !dbg !4576
  store i32 0, ptr %i, align 4, !dbg !4576
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #20, !dbg !4577
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4573, metadata !DIExpression()), !dbg !4578
  store i32 0, ptr %j, align 4, !dbg !4578
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !4579
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4574, metadata !DIExpression()), !dbg !4580
  %call = call i32 @drbg_healthcheck_sanity() #19, !dbg !4581
  store i32 %call, ptr %ret, align 4, !dbg !4582
  %0 = load i32, ptr %ret, align 4, !dbg !4583
  %tobool = icmp ne i32 %0, 0, !dbg !4583
  br i1 %tobool, label %if.then, label %if.end, !dbg !4585

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !4586
  store i32 %1, ptr %retval, align 4, !dbg !4587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4587

if.end:                                           ; preds = %entry
  store i32 0, ptr %j, align 4, !dbg !4588
  br label %for.cond, !dbg !4590

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %j, align 4, !dbg !4591
  %conv = zext i32 %2 to i64, !dbg !4591
  %cmp = icmp ugt i64 4, %conv, !dbg !4593
  br i1 %cmp, label %for.body, label %for.end, !dbg !4594

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !4595
  %idxprom = zext i32 %3 to i64, !dbg !4596
  %arrayidx = getelementptr [22 x %struct.rng_alg], ptr @drbg_algs, i64 0, i64 %idxprom, !dbg !4596
  %4 = load i32, ptr %j, align 4, !dbg !4597
  %idxprom2 = zext i32 %4 to i64, !dbg !4598
  %arrayidx3 = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i64 0, i64 %idxprom2, !dbg !4598
  call void @drbg_fill_array(ptr noundef %arrayidx, ptr noundef %arrayidx3, i32 noundef 1) #19, !dbg !4599
  br label %for.inc, !dbg !4599

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4, !dbg !4600
  %inc = add i32 %5, 1, !dbg !4600
  store i32 %inc, ptr %j, align 4, !dbg !4600
  %6 = load i32, ptr %i, align 4, !dbg !4601
  %inc4 = add i32 %6, 1, !dbg !4601
  store i32 %inc4, ptr %i, align 4, !dbg !4601
  br label %for.cond, !dbg !4602, !llvm.loop !4603

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !4607
  br label %for.cond5, !dbg !4609

for.cond5:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, ptr %j, align 4, !dbg !4610
  %conv6 = zext i32 %7 to i64, !dbg !4610
  %cmp7 = icmp ugt i64 4, %conv6, !dbg !4612
  br i1 %cmp7, label %for.body9, label %for.end17, !dbg !4613

for.body9:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !dbg !4614
  %idxprom10 = zext i32 %8 to i64, !dbg !4615
  %arrayidx11 = getelementptr [22 x %struct.rng_alg], ptr @drbg_algs, i64 0, i64 %idxprom10, !dbg !4615
  %9 = load i32, ptr %j, align 4, !dbg !4616
  %idxprom12 = zext i32 %9 to i64, !dbg !4617
  %arrayidx13 = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i64 0, i64 %idxprom12, !dbg !4617
  call void @drbg_fill_array(ptr noundef %arrayidx11, ptr noundef %arrayidx13, i32 noundef 0) #19, !dbg !4618
  br label %for.inc14, !dbg !4618

for.inc14:                                        ; preds = %for.body9
  %10 = load i32, ptr %j, align 4, !dbg !4619
  %inc15 = add i32 %10, 1, !dbg !4619
  store i32 %inc15, ptr %j, align 4, !dbg !4619
  %11 = load i32, ptr %i, align 4, !dbg !4620
  %inc16 = add i32 %11, 1, !dbg !4620
  store i32 %inc16, ptr %i, align 4, !dbg !4620
  br label %for.cond5, !dbg !4621, !llvm.loop !4622

for.end17:                                        ; preds = %for.cond5
  %call18 = call i32 @crypto_register_rngs(ptr noundef @drbg_algs, i32 noundef 8) #18, !dbg !4624
  store i32 %call18, ptr %retval, align 4, !dbg !4625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4625

cleanup:                                          ; preds = %for.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #20, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !4626
  %12 = load i32, ptr %retval, align 4, !dbg !4626
  ret i32 %12, !dbg !4626
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @drbg_healthcheck_sanity() #4 section ".init.text" align 16 !dbg !4627 {
entry:
  %len = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %drbg = alloca ptr, align 8
  %ret = alloca i32, align 4
  %rc = alloca i32, align 4
  %pr = alloca i8, align 1
  %coreref = alloca i32, align 4
  %addtl = alloca %struct.drbg_string, align 8
  %max_addtllen = alloca i64, align 8
  %max_request_bytes = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !4640
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4629, metadata !DIExpression()), !dbg !4641
  store i32 0, ptr %len, align 4, !dbg !4641
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #20, !dbg !4642
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4630, metadata !DIExpression()), !dbg !4643
  call void @llvm.lifetime.start.p0(i64 8, ptr %drbg) #20, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %drbg, metadata !4632, metadata !DIExpression()), !dbg !4645
  store ptr null, ptr %drbg, align 8, !dbg !4645
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4633, metadata !DIExpression()), !dbg !4647
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #20, !dbg !4648
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4634, metadata !DIExpression()), !dbg !4649
  store i32 -14, ptr %rc, align 4, !dbg !4649
  call void @llvm.lifetime.start.p0(i64 1, ptr %pr) #20, !dbg !4650
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4635, metadata !DIExpression()), !dbg !4651
  store i8 0, ptr %pr, align 1, !dbg !4651
  call void @llvm.lifetime.start.p0(i64 4, ptr %coreref) #20, !dbg !4652
  call void @llvm.dbg.declare(metadata ptr %coreref, metadata !4636, metadata !DIExpression()), !dbg !4653
  store i32 0, ptr %coreref, align 4, !dbg !4653
  call void @llvm.lifetime.start.p0(i64 32, ptr %addtl) #20, !dbg !4654
  call void @llvm.dbg.declare(metadata ptr %addtl, metadata !4637, metadata !DIExpression()), !dbg !4655
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_addtllen) #20, !dbg !4656
  call void @llvm.dbg.declare(metadata ptr %max_addtllen, metadata !4638, metadata !DIExpression()), !dbg !4657
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_request_bytes) #20, !dbg !4656
  call void @llvm.dbg.declare(metadata ptr %max_request_bytes, metadata !4639, metadata !DIExpression()), !dbg !4658
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_request_bytes) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_addtllen) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 32, ptr %addtl) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 4, ptr %coreref) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 1, ptr %pr) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 8, ptr %drbg) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #20, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !4659
  ret i32 0, !dbg !4660
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @drbg_fill_array(ptr noundef %alg, ptr noundef %core, i32 noundef %pr) #4 section ".init.text" align 16 !dbg !4400 {
entry:
  %alg.addr = alloca ptr, align 8
  %core.addr = alloca ptr, align 8
  %pr.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4413, metadata !DIExpression()), !dbg !4662
  store ptr %core, ptr %core.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %core.addr, metadata !4414, metadata !DIExpression()), !dbg !4663
  store i32 %pr, ptr %pr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4415, metadata !DIExpression()), !dbg !4664
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #20, !dbg !4665
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4416, metadata !DIExpression()), !dbg !4666
  store i32 0, ptr %pos, align 4, !dbg !4666
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4667
  %base = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 4, !dbg !4668
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 8, !dbg !4669
  %arraydecay = getelementptr inbounds [128 x i8], ptr %cra_name, i64 0, i64 0, !dbg !4670
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 @.str, i64 6, i1 false), !dbg !4670
  %1 = load i32, ptr %pr.addr, align 4, !dbg !4671
  %tobool = icmp ne i32 %1, 0, !dbg !4671
  br i1 %tobool, label %if.then, label %if.else, !dbg !4673

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !4674
  %base1 = getelementptr inbounds %struct.rng_alg, ptr %2, i32 0, i32 4, !dbg !4676
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %base1, i32 0, i32 9, !dbg !4677
  %arraydecay2 = getelementptr inbounds [128 x i8], ptr %cra_driver_name, i64 0, i64 0, !dbg !4678
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay2, ptr align 1 @.str.1, i64 8, i1 false), !dbg !4678
  store i32 8, ptr %pos, align 4, !dbg !4679
  br label %if.end, !dbg !4680

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %alg.addr, align 8, !dbg !4681
  %base3 = getelementptr inbounds %struct.rng_alg, ptr %3, i32 0, i32 4, !dbg !4683
  %cra_driver_name4 = getelementptr inbounds %struct.crypto_alg, ptr %base3, i32 0, i32 9, !dbg !4684
  %arraydecay5 = getelementptr inbounds [128 x i8], ptr %cra_driver_name4, i64 0, i64 0, !dbg !4685
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay5, ptr align 1 @.str.2, i64 10, i1 false), !dbg !4685
  store i32 10, ptr %pos, align 4, !dbg !4686
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %alg.addr, align 8, !dbg !4687
  %base6 = getelementptr inbounds %struct.rng_alg, ptr %4, i32 0, i32 4, !dbg !4688
  %cra_driver_name7 = getelementptr inbounds %struct.crypto_alg, ptr %base6, i32 0, i32 9, !dbg !4689
  %arraydecay8 = getelementptr inbounds [128 x i8], ptr %cra_driver_name7, i64 0, i64 0, !dbg !4687
  %5 = load i32, ptr %pos, align 4, !dbg !4690
  %idx.ext = sext i32 %5 to i64, !dbg !4691
  %add.ptr = getelementptr i8, ptr %arraydecay8, i64 %idx.ext, !dbg !4691
  %6 = load ptr, ptr %core.addr, align 8, !dbg !4692
  %cra_name9 = getelementptr inbounds %struct.drbg_core, ptr %6, i32 0, i32 3, !dbg !4693
  %arraydecay10 = getelementptr inbounds [128 x i8], ptr %cra_name9, i64 0, i64 0, !dbg !4694
  %7 = load ptr, ptr %core.addr, align 8, !dbg !4695
  %cra_name11 = getelementptr inbounds %struct.drbg_core, ptr %7, i32 0, i32 3, !dbg !4696
  %arraydecay12 = getelementptr inbounds [128 x i8], ptr %cra_name11, i64 0, i64 0, !dbg !4695
  %call = call i64 @strlen(ptr noundef %arraydecay12) #18, !dbg !4697
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 2 %arraydecay10, i64 %call, i1 false), !dbg !4694
  %8 = load i32, ptr @drbg_fill_array.priority, align 4, !dbg !4698
  %9 = load ptr, ptr %alg.addr, align 8, !dbg !4699
  %base13 = getelementptr inbounds %struct.rng_alg, ptr %9, i32 0, i32 4, !dbg !4700
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %base13, i32 0, i32 6, !dbg !4701
  store i32 %8, ptr %cra_priority, align 8, !dbg !4702
  %10 = load i32, ptr @drbg_fill_array.priority, align 4, !dbg !4703
  %inc = add i32 %10, 1, !dbg !4703
  store i32 %inc, ptr @drbg_fill_array.priority, align 4, !dbg !4703
  %11 = load ptr, ptr %alg.addr, align 8, !dbg !4704
  %base14 = getelementptr inbounds %struct.rng_alg, ptr %11, i32 0, i32 4, !dbg !4705
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %base14, i32 0, i32 4, !dbg !4706
  store i32 328, ptr %cra_ctxsize, align 8, !dbg !4707
  %12 = load ptr, ptr %alg.addr, align 8, !dbg !4708
  %base15 = getelementptr inbounds %struct.rng_alg, ptr %12, i32 0, i32 4, !dbg !4709
  %cra_module = getelementptr inbounds %struct.crypto_alg, ptr %base15, i32 0, i32 15, !dbg !4710
  store ptr null, ptr %cra_module, align 8, !dbg !4711
  %13 = load ptr, ptr %alg.addr, align 8, !dbg !4712
  %base16 = getelementptr inbounds %struct.rng_alg, ptr %13, i32 0, i32 4, !dbg !4713
  %cra_init = getelementptr inbounds %struct.crypto_alg, ptr %base16, i32 0, i32 12, !dbg !4714
  store ptr @drbg_kcapi_init, ptr %cra_init, align 8, !dbg !4715
  %14 = load ptr, ptr %alg.addr, align 8, !dbg !4716
  %base17 = getelementptr inbounds %struct.rng_alg, ptr %14, i32 0, i32 4, !dbg !4717
  %cra_exit = getelementptr inbounds %struct.crypto_alg, ptr %base17, i32 0, i32 13, !dbg !4718
  store ptr @drbg_kcapi_cleanup, ptr %cra_exit, align 8, !dbg !4719
  %15 = load ptr, ptr %alg.addr, align 8, !dbg !4720
  %generate = getelementptr inbounds %struct.rng_alg, ptr %15, i32 0, i32 0, !dbg !4721
  store ptr @drbg_kcapi_random, ptr %generate, align 8, !dbg !4722
  %16 = load ptr, ptr %alg.addr, align 8, !dbg !4723
  %seed = getelementptr inbounds %struct.rng_alg, ptr %16, i32 0, i32 1, !dbg !4724
  store ptr @drbg_kcapi_seed, ptr %seed, align 8, !dbg !4725
  %17 = load ptr, ptr %alg.addr, align 8, !dbg !4726
  %set_ent = getelementptr inbounds %struct.rng_alg, ptr %17, i32 0, i32 2, !dbg !4727
  store ptr @drbg_kcapi_set_entropy, ptr %set_ent, align 8, !dbg !4728
  %18 = load ptr, ptr %alg.addr, align 8, !dbg !4729
  %seedsize = getelementptr inbounds %struct.rng_alg, ptr %18, i32 0, i32 3, !dbg !4730
  store i32 0, ptr %seedsize, align 8, !dbg !4731
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #20, !dbg !4732
  ret void, !dbg !4732
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4733 dso_local i32 @crypto_register_rngs(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4736 dso_local i64 @strlen(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_kcapi_init(ptr noundef %tfm) #6 align 16 !dbg !4432 {
entry:
  %tfm.addr = alloca ptr, align 8
  %drbg = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4434, metadata !DIExpression()), !dbg !4740
  call void @llvm.lifetime.start.p0(i64 8, ptr %drbg) #20, !dbg !4741
  call void @llvm.dbg.declare(metadata ptr %drbg, metadata !4435, metadata !DIExpression()), !dbg !4742
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4743
  %call = call ptr @crypto_tfm_ctx(ptr noundef %0) #18, !dbg !4744
  store ptr %call, ptr %drbg, align 8, !dbg !4742
  br label %do.body, !dbg !4745

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %drbg, align 8, !dbg !4746
  %drbg_mutex = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 0, !dbg !4746
  call void @__mutex_init(ptr noundef %drbg_mutex, ptr noundef @.str.3, ptr noundef @drbg_kcapi_init.__key) #18, !dbg !4746
  br label %do.cond, !dbg !4746

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4746

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %drbg) #20, !dbg !4748
  ret i32 0, !dbg !4749
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drbg_kcapi_cleanup(ptr noundef %tfm) #6 align 16 !dbg !4750 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4754
  %call = call ptr @crypto_tfm_ctx(ptr noundef %0) #18, !dbg !4755
  %call1 = call i32 @drbg_uninstantiate(ptr noundef %call) #18, !dbg !4756
  ret void, !dbg !4757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_kcapi_random(ptr noundef %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, i32 noundef %dlen) #6 align 16 !dbg !4758 {
entry:
  %tfm.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dlen.addr = alloca i32, align 4
  %drbg = alloca ptr, align 8
  %addtl = alloca ptr, align 8
  %string = alloca %struct.drbg_string, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4760, metadata !DIExpression()), !dbg !4768
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4761, metadata !DIExpression()), !dbg !4769
  store i32 %slen, ptr %slen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slen.addr, metadata !4762, metadata !DIExpression()), !dbg !4770
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4763, metadata !DIExpression()), !dbg !4771
  store i32 %dlen, ptr %dlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dlen.addr, metadata !4764, metadata !DIExpression()), !dbg !4772
  call void @llvm.lifetime.start.p0(i64 8, ptr %drbg) #20, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %drbg, metadata !4765, metadata !DIExpression()), !dbg !4774
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4775
  %call = call ptr @crypto_rng_ctx(ptr noundef %0) #18, !dbg !4776
  store ptr %call, ptr %drbg, align 8, !dbg !4774
  call void @llvm.lifetime.start.p0(i64 8, ptr %addtl) #20, !dbg !4777
  call void @llvm.dbg.declare(metadata ptr %addtl, metadata !4766, metadata !DIExpression()), !dbg !4778
  store ptr null, ptr %addtl, align 8, !dbg !4778
  call void @llvm.lifetime.start.p0(i64 32, ptr %string) #20, !dbg !4779
  call void @llvm.dbg.declare(metadata ptr %string, metadata !4767, metadata !DIExpression()), !dbg !4780
  %1 = load i32, ptr %slen.addr, align 4, !dbg !4781
  %tobool = icmp ne i32 %1, 0, !dbg !4781
  br i1 %tobool, label %if.then, label %if.end, !dbg !4783

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %src.addr, align 8, !dbg !4784
  %3 = load i32, ptr %slen.addr, align 4, !dbg !4786
  %conv = zext i32 %3 to i64, !dbg !4786
  call void @drbg_string_fill(ptr noundef %string, ptr noundef %2, i64 noundef %conv) #18, !dbg !4787
  store ptr %string, ptr %addtl, align 8, !dbg !4788
  br label %if.end, !dbg !4789

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %drbg, align 8, !dbg !4790
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !4791
  %6 = load i32, ptr %dlen.addr, align 4, !dbg !4792
  %7 = load ptr, ptr %addtl, align 8, !dbg !4793
  %call1 = call i32 @drbg_generate_long(ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #18, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 32, ptr %string) #20, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %addtl) #20, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %drbg) #20, !dbg !4795
  ret i32 %call1, !dbg !4796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_kcapi_seed(ptr noundef %tfm, ptr noundef %seed, i32 noundef %slen) #6 align 16 !dbg !4797 {
entry:
  %tfm.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  %drbg = alloca ptr, align 8
  %tfm_base = alloca ptr, align 8
  %pr = alloca i8, align 1
  %string = alloca %struct.drbg_string, align 8
  %seed_string = alloca ptr, align 8
  %coreref = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4799, metadata !DIExpression()), !dbg !4808
  store ptr %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !4800, metadata !DIExpression()), !dbg !4809
  store i32 %slen, ptr %slen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slen.addr, metadata !4801, metadata !DIExpression()), !dbg !4810
  call void @llvm.lifetime.start.p0(i64 8, ptr %drbg) #20, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %drbg, metadata !4802, metadata !DIExpression()), !dbg !4812
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4813
  %call = call ptr @crypto_rng_ctx(ptr noundef %0) #18, !dbg !4814
  store ptr %call, ptr %drbg, align 8, !dbg !4812
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm_base) #20, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %tfm_base, metadata !4803, metadata !DIExpression()), !dbg !4816
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !4817
  %call1 = call ptr @crypto_rng_tfm(ptr noundef %1) #18, !dbg !4818
  store ptr %call1, ptr %tfm_base, align 8, !dbg !4816
  call void @llvm.lifetime.start.p0(i64 1, ptr %pr) #20, !dbg !4819
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4804, metadata !DIExpression()), !dbg !4820
  store i8 0, ptr %pr, align 1, !dbg !4820
  call void @llvm.lifetime.start.p0(i64 32, ptr %string) #20, !dbg !4821
  call void @llvm.dbg.declare(metadata ptr %string, metadata !4805, metadata !DIExpression()), !dbg !4822
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed_string) #20, !dbg !4823
  call void @llvm.dbg.declare(metadata ptr %seed_string, metadata !4806, metadata !DIExpression()), !dbg !4824
  store ptr null, ptr %seed_string, align 8, !dbg !4824
  call void @llvm.lifetime.start.p0(i64 4, ptr %coreref) #20, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %coreref, metadata !4807, metadata !DIExpression()), !dbg !4826
  store i32 0, ptr %coreref, align 4, !dbg !4826
  %2 = load ptr, ptr %tfm_base, align 8, !dbg !4827
  %call2 = call ptr @crypto_tfm_alg_driver_name(ptr noundef %2) #18, !dbg !4828
  call void @drbg_convert_tfm_core(ptr noundef %call2, ptr noundef %coreref, ptr noundef %pr) #18, !dbg !4829
  %3 = load i32, ptr %slen.addr, align 4, !dbg !4830
  %cmp = icmp ult i32 0, %3, !dbg !4832
  br i1 %cmp, label %if.then, label %if.end, !dbg !4833

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %seed.addr, align 8, !dbg !4834
  %5 = load i32, ptr %slen.addr, align 4, !dbg !4836
  %conv = zext i32 %5 to i64, !dbg !4836
  call void @drbg_string_fill(ptr noundef %string, ptr noundef %4, i64 noundef %conv) #18, !dbg !4837
  store ptr %string, ptr %seed_string, align 8, !dbg !4838
  br label %if.end, !dbg !4839

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %drbg, align 8, !dbg !4840
  %7 = load ptr, ptr %seed_string, align 8, !dbg !4841
  %8 = load i32, ptr %coreref, align 4, !dbg !4842
  %9 = load i8, ptr %pr, align 1, !dbg !4843, !range !4844, !noundef !505
  %tobool = trunc i8 %9 to i1, !dbg !4843
  %call3 = call i32 @drbg_instantiate(ptr noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %tobool) #18, !dbg !4845
  call void @llvm.lifetime.end.p0(i64 4, ptr %coreref) #20, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed_string) #20, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 32, ptr %string) #20, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 1, ptr %pr) #20, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm_base) #20, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 8, ptr %drbg) #20, !dbg !4846
  ret i32 %call3, !dbg !4847
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drbg_kcapi_set_entropy(ptr noundef %tfm, ptr noundef %data, i32 noundef %len) #6 align 16 !dbg !4848 {
entry:
  %tfm.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %drbg = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4850, metadata !DIExpression()), !dbg !4854
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4851, metadata !DIExpression()), !dbg !4855
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4852, metadata !DIExpression()), !dbg !4856
  call void @llvm.lifetime.start.p0(i64 8, ptr %drbg) #20, !dbg !4857
  call void @llvm.dbg.declare(metadata ptr %drbg, metadata !4853, metadata !DIExpression()), !dbg !4858
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4859
  %call = call ptr @crypto_rng_ctx(ptr noundef %0) #18, !dbg !4860
  store ptr %call, ptr %drbg, align 8, !dbg !4858
  %1 = load ptr, ptr %drbg, align 8, !dbg !4861
  %drbg_mutex = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 0, !dbg !4862
  call void @mutex_lock(ptr noundef %drbg_mutex) #18, !dbg !4863
  %2 = load ptr, ptr %drbg, align 8, !dbg !4864
  %test_data = getelementptr inbounds %struct.drbg_state, ptr %2, i32 0, i32 25, !dbg !4865
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4866
  %4 = load i32, ptr %len.addr, align 4, !dbg !4867
  %conv = zext i32 %4 to i64, !dbg !4867
  call void @drbg_string_fill(ptr noundef %test_data, ptr noundef %3, i64 noundef %conv) #18, !dbg !4868
  %5 = load ptr, ptr %drbg, align 8, !dbg !4869
  %drbg_mutex1 = getelementptr inbounds %struct.drbg_state, ptr %5, i32 0, i32 0, !dbg !4870
  call void @mutex_unlock(ptr noundef %drbg_mutex1) #18, !dbg !4871
  call void @llvm.lifetime.end.p0(i64 8, ptr %drbg) #20, !dbg !4872
  ret void, !dbg !4872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx(ptr noundef %tfm) #7 align 16 !dbg !4873 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4879
  %__crt_ctx = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5, !dbg !4880
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__crt_ctx, i64 0, i64 0, !dbg !4879
  ret ptr %arraydecay, !dbg !4881
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4882 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_uninstantiate(ptr noundef %drbg) #6 align 16 !dbg !4887 {
entry:
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !4891
  %jent = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 22, !dbg !4893
  %1 = load ptr, ptr %jent, align 8, !dbg !4893
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %1) #18, !dbg !4894
  br i1 %call, label %if.end, label %if.then, !dbg !4895

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %drbg.addr, align 8, !dbg !4896
  %jent1 = getelementptr inbounds %struct.drbg_state, ptr %2, i32 0, i32 22, !dbg !4897
  %3 = load ptr, ptr %jent1, align 8, !dbg !4897
  call void @crypto_free_rng(ptr noundef %3) #18, !dbg !4898
  br label %if.end, !dbg !4898

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %drbg.addr, align 8, !dbg !4899
  %jent2 = getelementptr inbounds %struct.drbg_state, ptr %4, i32 0, i32 22, !dbg !4900
  store ptr null, ptr %jent2, align 8, !dbg !4901
  %5 = load ptr, ptr %drbg.addr, align 8, !dbg !4902
  %d_ops = getelementptr inbounds %struct.drbg_state, ptr %5, i32 0, i32 23, !dbg !4904
  %6 = load ptr, ptr %d_ops, align 8, !dbg !4904
  %tobool = icmp ne ptr %6, null, !dbg !4902
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !4905

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !4906
  %d_ops4 = getelementptr inbounds %struct.drbg_state, ptr %7, i32 0, i32 23, !dbg !4907
  %8 = load ptr, ptr %d_ops4, align 8, !dbg !4907
  %crypto_fini = getelementptr inbounds %struct.drbg_state_ops, ptr %8, i32 0, i32 3, !dbg !4908
  %9 = load ptr, ptr %crypto_fini, align 8, !dbg !4908
  %10 = load ptr, ptr %drbg.addr, align 8, !dbg !4909
  %call5 = call i32 %9(ptr noundef %10) #18, !dbg !4906
  br label %if.end6, !dbg !4906

if.end6:                                          ; preds = %if.then3, %if.end
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !4910
  call void @drbg_dealloc_state(ptr noundef %11) #18, !dbg !4911
  ret i32 0, !dbg !4912
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #7 align 16 !dbg !4913 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4920
  %tobool = icmp ne ptr %0, null, !dbg !4920
  %lnot = xor i1 %tobool, true, !dbg !4920
  %lnot1 = xor i1 %lnot, true, !dbg !4920
  %lnot2 = xor i1 %lnot1, true, !dbg !4920
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4920
  %conv = sext i32 %lnot.ext to i64, !dbg !4920
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4920
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4920
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4921

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4922
  %2 = ptrtoint ptr %1 to i64, !dbg !4922
  %3 = inttoptr i64 %2 to ptr, !dbg !4922
  %4 = ptrtoint ptr %3 to i64, !dbg !4922
  %cmp = icmp uge i64 %4, -4095, !dbg !4922
  %lnot5 = xor i1 %cmp, true, !dbg !4922
  %lnot7 = xor i1 %lnot5, true, !dbg !4922
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4922
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4922
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !4922
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !4921
  br label %lor.end, !dbg !4921

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !4923
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_rng(ptr noundef %tfm) #7 align 16 !dbg !4924 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4930
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !4931
  %call = call ptr @crypto_rng_tfm(ptr noundef %1) #18, !dbg !4932
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #18, !dbg !4933
  ret void, !dbg !4934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drbg_dealloc_state(ptr noundef %drbg) #7 align 16 !dbg !4935 {
entry:
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !4941
  %tobool = icmp ne ptr %0, null, !dbg !4941
  br i1 %tobool, label %if.end, label %if.then, !dbg !4943

if.then:                                          ; preds = %entry
  br label %return, !dbg !4944

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !4945
  %Vbuf = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 2, !dbg !4946
  %2 = load ptr, ptr %Vbuf, align 8, !dbg !4946
  call void @kfree_sensitive(ptr noundef %2) #18, !dbg !4947
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !4948
  %Vbuf1 = getelementptr inbounds %struct.drbg_state, ptr %3, i32 0, i32 2, !dbg !4949
  store ptr null, ptr %Vbuf1, align 8, !dbg !4950
  %4 = load ptr, ptr %drbg.addr, align 8, !dbg !4951
  %V = getelementptr inbounds %struct.drbg_state, ptr %4, i32 0, i32 1, !dbg !4952
  store ptr null, ptr %V, align 8, !dbg !4953
  %5 = load ptr, ptr %drbg.addr, align 8, !dbg !4954
  %Cbuf = getelementptr inbounds %struct.drbg_state, ptr %5, i32 0, i32 4, !dbg !4955
  %6 = load ptr, ptr %Cbuf, align 8, !dbg !4955
  call void @kfree_sensitive(ptr noundef %6) #18, !dbg !4956
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !4957
  %Cbuf2 = getelementptr inbounds %struct.drbg_state, ptr %7, i32 0, i32 4, !dbg !4958
  store ptr null, ptr %Cbuf2, align 8, !dbg !4959
  %8 = load ptr, ptr %drbg.addr, align 8, !dbg !4960
  %C = getelementptr inbounds %struct.drbg_state, ptr %8, i32 0, i32 3, !dbg !4961
  store ptr null, ptr %C, align 8, !dbg !4962
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !4963
  %scratchpadbuf = getelementptr inbounds %struct.drbg_state, ptr %9, i32 0, i32 8, !dbg !4964
  %10 = load ptr, ptr %scratchpadbuf, align 8, !dbg !4964
  call void @kfree_sensitive(ptr noundef %10) #18, !dbg !4965
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !4966
  %scratchpadbuf3 = getelementptr inbounds %struct.drbg_state, ptr %11, i32 0, i32 8, !dbg !4967
  store ptr null, ptr %scratchpadbuf3, align 8, !dbg !4968
  %12 = load ptr, ptr %drbg.addr, align 8, !dbg !4969
  %reseed_ctr = getelementptr inbounds %struct.drbg_state, ptr %12, i32 0, i32 5, !dbg !4970
  store i64 0, ptr %reseed_ctr, align 8, !dbg !4971
  %13 = load ptr, ptr %drbg.addr, align 8, !dbg !4972
  %d_ops = getelementptr inbounds %struct.drbg_state, ptr %13, i32 0, i32 23, !dbg !4973
  store ptr null, ptr %d_ops, align 8, !dbg !4974
  %14 = load ptr, ptr %drbg.addr, align 8, !dbg !4975
  %core = getelementptr inbounds %struct.drbg_state, ptr %14, i32 0, i32 24, !dbg !4976
  store ptr null, ptr %core, align 8, !dbg !4977
  br label %return, !dbg !4978

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4978
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4979 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_rng_tfm(ptr noundef %tfm) #7 align 16 !dbg !4982 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4988
  %base = getelementptr inbounds %struct.crypto_rng, ptr %0, i32 0, i32 0, !dbg !4989
  ret ptr %base, !dbg !4990
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4991 dso_local void @kfree_sensitive(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_rng_ctx(ptr noundef %tfm) #7 align 16 !dbg !4994 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5000
  %base = getelementptr inbounds %struct.crypto_rng, ptr %0, i32 0, i32 0, !dbg !5001
  %call = call ptr @crypto_tfm_ctx(ptr noundef %base) #18, !dbg !5002
  ret ptr %call, !dbg !5003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drbg_string_fill(ptr noundef %string, ptr noundef %buf, i64 noundef %len) #7 align 16 !dbg !5004 {
entry:
  %string.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !5008, metadata !DIExpression()), !dbg !5011
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5009, metadata !DIExpression()), !dbg !5012
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5010, metadata !DIExpression()), !dbg !5013
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5014
  %1 = load ptr, ptr %string.addr, align 8, !dbg !5015
  %buf1 = getelementptr inbounds %struct.drbg_string, ptr %1, i32 0, i32 0, !dbg !5016
  store ptr %0, ptr %buf1, align 8, !dbg !5017
  %2 = load i64, ptr %len.addr, align 8, !dbg !5018
  %3 = load ptr, ptr %string.addr, align 8, !dbg !5019
  %len2 = getelementptr inbounds %struct.drbg_string, ptr %3, i32 0, i32 1, !dbg !5020
  store i64 %2, ptr %len2, align 8, !dbg !5021
  %4 = load ptr, ptr %string.addr, align 8, !dbg !5022
  %list = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 2, !dbg !5023
  call void @INIT_LIST_HEAD(ptr noundef %list) #18, !dbg !5024
  ret void, !dbg !5025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_generate_long(ptr noundef %drbg, ptr noundef %buf, i32 noundef %buflen, ptr noundef %addtl) #6 align 16 !dbg !5026 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %addtl.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %slice = alloca i32, align 4
  %err = alloca i32, align 4
  %chunk = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5030, metadata !DIExpression()), !dbg !5039
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5031, metadata !DIExpression()), !dbg !5040
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !5032, metadata !DIExpression()), !dbg !5041
  store ptr %addtl, ptr %addtl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addtl.addr, metadata !5033, metadata !DIExpression()), !dbg !5042
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5034, metadata !DIExpression()), !dbg !5044
  store i32 0, ptr %len, align 4, !dbg !5044
  call void @llvm.lifetime.start.p0(i64 4, ptr %slice) #20, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %slice, metadata !5035, metadata !DIExpression()), !dbg !5046
  store i32 0, ptr %slice, align 4, !dbg !5046
  br label %do.body, !dbg !5047

do.body:                                          ; preds = %land.end, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !5048
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5036, metadata !DIExpression()), !dbg !5049
  store i32 0, ptr %err, align 4, !dbg !5049
  call void @llvm.lifetime.start.p0(i64 4, ptr %chunk) #20, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !5038, metadata !DIExpression()), !dbg !5051
  store i32 0, ptr %chunk, align 4, !dbg !5051
  %0 = load i32, ptr %buflen.addr, align 4, !dbg !5052
  %1 = load i32, ptr %len, align 4, !dbg !5053
  %sub = sub i32 %0, %1, !dbg !5054
  %conv = zext i32 %sub to i64, !dbg !5055
  %2 = load ptr, ptr %drbg.addr, align 8, !dbg !5056
  %call = call i64 @drbg_max_request_bytes(ptr noundef %2) #18, !dbg !5057
  %div = udiv i64 %conv, %call, !dbg !5058
  %conv1 = trunc i64 %div to i32, !dbg !5059
  store i32 %conv1, ptr %slice, align 4, !dbg !5060
  %3 = load i32, ptr %slice, align 4, !dbg !5061
  %tobool = icmp ne i32 %3, 0, !dbg !5061
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5061

cond.true:                                        ; preds = %do.body
  %4 = load ptr, ptr %drbg.addr, align 8, !dbg !5062
  %call2 = call i64 @drbg_max_request_bytes(ptr noundef %4) #18, !dbg !5063
  br label %cond.end, !dbg !5061

cond.false:                                       ; preds = %do.body
  %5 = load i32, ptr %buflen.addr, align 4, !dbg !5064
  %6 = load i32, ptr %len, align 4, !dbg !5065
  %sub3 = sub i32 %5, %6, !dbg !5066
  %conv4 = zext i32 %sub3 to i64, !dbg !5067
  br label %cond.end, !dbg !5061

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %conv4, %cond.false ], !dbg !5061
  %conv5 = trunc i64 %cond to i32, !dbg !5061
  store i32 %conv5, ptr %chunk, align 4, !dbg !5068
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !5069
  %drbg_mutex = getelementptr inbounds %struct.drbg_state, ptr %7, i32 0, i32 0, !dbg !5070
  call void @mutex_lock(ptr noundef %drbg_mutex) #18, !dbg !5071
  %8 = load ptr, ptr %drbg.addr, align 8, !dbg !5072
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5073
  %10 = load i32, ptr %len, align 4, !dbg !5074
  %idx.ext = zext i32 %10 to i64, !dbg !5075
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !5075
  %11 = load i32, ptr %chunk, align 4, !dbg !5076
  %12 = load ptr, ptr %addtl.addr, align 8, !dbg !5077
  %call6 = call i32 @drbg_generate(ptr noundef %8, ptr noundef %add.ptr, i32 noundef %11, ptr noundef %12) #18, !dbg !5078
  store i32 %call6, ptr %err, align 4, !dbg !5079
  %13 = load ptr, ptr %drbg.addr, align 8, !dbg !5080
  %drbg_mutex7 = getelementptr inbounds %struct.drbg_state, ptr %13, i32 0, i32 0, !dbg !5081
  call void @mutex_unlock(ptr noundef %drbg_mutex7) #18, !dbg !5082
  %14 = load i32, ptr %err, align 4, !dbg !5083
  %cmp = icmp sgt i32 0, %14, !dbg !5085
  br i1 %cmp, label %if.then, label %if.end, !dbg !5086

if.then:                                          ; preds = %cond.end
  %15 = load i32, ptr %err, align 4, !dbg !5087
  store i32 %15, ptr %retval, align 4, !dbg !5088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5088

if.end:                                           ; preds = %cond.end
  %16 = load i32, ptr %chunk, align 4, !dbg !5089
  %17 = load i32, ptr %len, align 4, !dbg !5090
  %add = add i32 %17, %16, !dbg !5090
  store i32 %add, ptr %len, align 4, !dbg !5090
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5091
  br label %cleanup, !dbg !5091

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %chunk) #20, !dbg !5091
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !5091
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !5092

do.cond:                                          ; preds = %cleanup.cont
  %18 = load i32, ptr %slice, align 4, !dbg !5093
  %cmp10 = icmp ugt i32 %18, 0, !dbg !5094
  br i1 %cmp10, label %land.rhs, label %land.end, !dbg !5095

land.rhs:                                         ; preds = %do.cond
  %19 = load i32, ptr %len, align 4, !dbg !5096
  %20 = load i32, ptr %buflen.addr, align 4, !dbg !5097
  %cmp12 = icmp ult i32 %19, %20, !dbg !5098
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %cmp12, %land.rhs ], !dbg !5099
  br i1 %21, label %do.body, label %do.end, !dbg !5092, !llvm.loop !5100

do.end:                                           ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !5102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !5102

cleanup14:                                        ; preds = %do.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %slice) #20, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5103
  %22 = load i32, ptr %retval, align 4, !dbg !5103
  ret i32 %22, !dbg !5103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #7 align 16 !dbg !5104 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  br label %do.body, !dbg !5111

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5112

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5114

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5112

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5116
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5116
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5116
  store volatile ptr %0, ptr %next, align 8, !dbg !5116
  br label %do.end3, !dbg !5116

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5112

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5118

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5119

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5121

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5119

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5123
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5123
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5123
  store volatile ptr %2, ptr %prev, align 8, !dbg !5123
  br label %do.end9, !dbg !5123

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5119

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5125
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drbg_max_request_bytes(ptr noundef %drbg) #7 align 16 !dbg !5126 {
entry:
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  ret i64 65536, !dbg !5132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5133 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_generate(ptr noundef %drbg, ptr noundef %buf, i32 noundef %buflen, ptr noundef %addtl) #6 align 16 !dbg !5136 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %addtl.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %addtllist = alloca %struct.list_head, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5138, metadata !DIExpression()), !dbg !5145
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5139, metadata !DIExpression()), !dbg !5146
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !5140, metadata !DIExpression()), !dbg !5147
  store ptr %addtl, ptr %addtl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addtl.addr, metadata !5141, metadata !DIExpression()), !dbg !5148
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5149
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5142, metadata !DIExpression()), !dbg !5150
  store i32 0, ptr %len, align 4, !dbg !5150
  call void @llvm.lifetime.start.p0(i64 16, ptr %addtllist) #20, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %addtllist, metadata !5143, metadata !DIExpression()), !dbg !5151
  %next = getelementptr inbounds %struct.list_head, ptr %addtllist, i32 0, i32 0, !dbg !5151
  store ptr %addtllist, ptr %next, align 8, !dbg !5151
  %prev = getelementptr inbounds %struct.list_head, ptr %addtllist, i32 0, i32 1, !dbg !5151
  store ptr %addtllist, ptr %prev, align 8, !dbg !5151
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5152
  %core = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24, !dbg !5154
  %1 = load ptr, ptr %core, align 8, !dbg !5154
  %tobool = icmp ne ptr %1, null, !dbg !5152
  br i1 %tobool, label %if.end, label %if.then, !dbg !5155

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !5156
  %2 = load i32, ptr %tmp, align 4, !dbg !5160
  store i32 -22, ptr %retval, align 4, !dbg !5161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5161

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %buflen.addr, align 4, !dbg !5162
  %cmp = icmp eq i32 0, %3, !dbg !5164
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !5165

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5166
  %tobool1 = icmp ne ptr %4, null, !dbg !5166
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !5167

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %tmp3, align 4, !dbg !5168
  %5 = load i32, ptr %tmp3, align 4, !dbg !5172
  store i32 -22, ptr %retval, align 4, !dbg !5173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5173

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %addtl.addr, align 8, !dbg !5174
  %tobool5 = icmp ne ptr %6, null, !dbg !5174
  br i1 %tobool5, label %land.lhs.true, label %if.end13, !dbg !5176

land.lhs.true:                                    ; preds = %if.end4
  %7 = load ptr, ptr %addtl.addr, align 8, !dbg !5177
  %buf6 = getelementptr inbounds %struct.drbg_string, ptr %7, i32 0, i32 0, !dbg !5178
  %8 = load ptr, ptr %buf6, align 8, !dbg !5178
  %cmp7 = icmp eq ptr null, %8, !dbg !5179
  br i1 %cmp7, label %land.lhs.true8, label %if.end13, !dbg !5180

land.lhs.true8:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %addtl.addr, align 8, !dbg !5181
  %len9 = getelementptr inbounds %struct.drbg_string, ptr %9, i32 0, i32 1, !dbg !5182
  %10 = load i64, ptr %len9, align 8, !dbg !5182
  %cmp10 = icmp ult i64 0, %10, !dbg !5183
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !5184

if.then11:                                        ; preds = %land.lhs.true8
  store i32 0, ptr %tmp12, align 4, !dbg !5185
  %11 = load i32, ptr %tmp12, align 4, !dbg !5189
  store i32 -22, ptr %retval, align 4, !dbg !5190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

if.end13:                                         ; preds = %land.lhs.true8, %land.lhs.true, %if.end4
  store i32 -22, ptr %len, align 4, !dbg !5191
  %12 = load i32, ptr %buflen.addr, align 4, !dbg !5192
  %conv = zext i32 %12 to i64, !dbg !5192
  %13 = load ptr, ptr %drbg.addr, align 8, !dbg !5194
  %call = call i64 @drbg_max_request_bytes(ptr noundef %13) #18, !dbg !5195
  %cmp14 = icmp ugt i64 %conv, %call, !dbg !5196
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !5197

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %tmp17, align 4, !dbg !5198
  %14 = load i32, ptr %tmp17, align 4, !dbg !5202
  br label %err, !dbg !5203

if.end18:                                         ; preds = %if.end13
  %15 = load ptr, ptr %addtl.addr, align 8, !dbg !5204
  %tobool19 = icmp ne ptr %15, null, !dbg !5204
  br i1 %tobool19, label %land.lhs.true20, label %if.end27, !dbg !5206

land.lhs.true20:                                  ; preds = %if.end18
  %16 = load ptr, ptr %addtl.addr, align 8, !dbg !5207
  %len21 = getelementptr inbounds %struct.drbg_string, ptr %16, i32 0, i32 1, !dbg !5208
  %17 = load i64, ptr %len21, align 8, !dbg !5208
  %18 = load ptr, ptr %drbg.addr, align 8, !dbg !5209
  %call22 = call i64 @drbg_max_addtl(ptr noundef %18) #18, !dbg !5210
  %cmp23 = icmp ugt i64 %17, %call22, !dbg !5211
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !5212

if.then25:                                        ; preds = %land.lhs.true20
  store i32 0, ptr %tmp26, align 4, !dbg !5213
  %19 = load i32, ptr %tmp26, align 4, !dbg !5217
  br label %err, !dbg !5218

if.end27:                                         ; preds = %land.lhs.true20, %if.end18
  %20 = load ptr, ptr %drbg.addr, align 8, !dbg !5219
  %reseed_threshold = getelementptr inbounds %struct.drbg_state, ptr %20, i32 0, i32 6, !dbg !5221
  %21 = load i64, ptr %reseed_threshold, align 8, !dbg !5221
  %22 = load ptr, ptr %drbg.addr, align 8, !dbg !5222
  %reseed_ctr = getelementptr inbounds %struct.drbg_state, ptr %22, i32 0, i32 5, !dbg !5223
  %23 = load i64, ptr %reseed_ctr, align 8, !dbg !5223
  %cmp28 = icmp ult i64 %21, %23, !dbg !5224
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !5225

if.then30:                                        ; preds = %if.end27
  %24 = load ptr, ptr %drbg.addr, align 8, !dbg !5226
  %seeded = getelementptr inbounds %struct.drbg_state, ptr %24, i32 0, i32 17, !dbg !5227
  store i32 0, ptr %seeded, align 8, !dbg !5228
  br label %if.end31, !dbg !5226

if.end31:                                         ; preds = %if.then30, %if.end27
  %25 = load ptr, ptr %drbg.addr, align 8, !dbg !5229
  %pr = getelementptr inbounds %struct.drbg_state, ptr %25, i32 0, i32 19, !dbg !5231
  %26 = load i8, ptr %pr, align 8, !dbg !5231, !range !4844, !noundef !505
  %tobool32 = trunc i8 %26 to i1, !dbg !5231
  br i1 %tobool32, label %if.then38, label %lor.lhs.false34, !dbg !5232

lor.lhs.false34:                                  ; preds = %if.end31
  %27 = load ptr, ptr %drbg.addr, align 8, !dbg !5233
  %seeded35 = getelementptr inbounds %struct.drbg_state, ptr %27, i32 0, i32 17, !dbg !5234
  %28 = load i32, ptr %seeded35, align 8, !dbg !5234
  %cmp36 = icmp eq i32 %28, 0, !dbg !5235
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !5236

if.then38:                                        ; preds = %lor.lhs.false34, %if.end31
  store i32 0, ptr %tmp39, align 4, !dbg !5237
  %29 = load i32, ptr %tmp39, align 4, !dbg !5241
  %30 = load ptr, ptr %drbg.addr, align 8, !dbg !5242
  %31 = load ptr, ptr %addtl.addr, align 8, !dbg !5243
  %call40 = call i32 @drbg_seed(ptr noundef %30, ptr noundef %31, i1 noundef zeroext true) #18, !dbg !5244
  store i32 %call40, ptr %len, align 4, !dbg !5245
  %32 = load i32, ptr %len, align 4, !dbg !5246
  %tobool41 = icmp ne i32 %32, 0, !dbg !5246
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !5248

if.then42:                                        ; preds = %if.then38
  br label %err, !dbg !5249

if.end43:                                         ; preds = %if.then38
  store ptr null, ptr %addtl.addr, align 8, !dbg !5250
  br label %if.end59, !dbg !5251

if.else:                                          ; preds = %lor.lhs.false34
  %call44 = call zeroext i1 @rng_is_initialized() #18, !dbg !5252
  br i1 %call44, label %land.lhs.true46, label %if.end58, !dbg !5254

land.lhs.true46:                                  ; preds = %if.else
  %33 = load ptr, ptr %drbg.addr, align 8, !dbg !5255
  %seeded47 = getelementptr inbounds %struct.drbg_state, ptr %33, i32 0, i32 17, !dbg !5256
  %34 = load i32, ptr %seeded47, align 8, !dbg !5256
  %cmp48 = icmp eq i32 %34, 1, !dbg !5257
  br i1 %cmp48, label %if.then53, label %lor.lhs.false50, !dbg !5258

lor.lhs.false50:                                  ; preds = %land.lhs.true46
  %35 = load ptr, ptr %drbg.addr, align 8, !dbg !5259
  %call51 = call zeroext i1 @drbg_nopr_reseed_interval_elapsed(ptr noundef %35) #18, !dbg !5260
  br i1 %call51, label %if.then53, label %if.end58, !dbg !5261

if.then53:                                        ; preds = %lor.lhs.false50, %land.lhs.true46
  %36 = load ptr, ptr %drbg.addr, align 8, !dbg !5262
  %call54 = call i32 @drbg_seed_from_random(ptr noundef %36) #18, !dbg !5264
  store i32 %call54, ptr %len, align 4, !dbg !5265
  %37 = load i32, ptr %len, align 4, !dbg !5266
  %tobool55 = icmp ne i32 %37, 0, !dbg !5266
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5268

if.then56:                                        ; preds = %if.then53
  br label %err, !dbg !5269

if.end57:                                         ; preds = %if.then53
  br label %if.end58, !dbg !5270

if.end58:                                         ; preds = %if.end57, %lor.lhs.false50, %if.else
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end43
  %38 = load ptr, ptr %addtl.addr, align 8, !dbg !5271
  %tobool60 = icmp ne ptr %38, null, !dbg !5271
  br i1 %tobool60, label %land.lhs.true61, label %if.end66, !dbg !5273

land.lhs.true61:                                  ; preds = %if.end59
  %39 = load ptr, ptr %addtl.addr, align 8, !dbg !5274
  %len62 = getelementptr inbounds %struct.drbg_string, ptr %39, i32 0, i32 1, !dbg !5275
  %40 = load i64, ptr %len62, align 8, !dbg !5275
  %cmp63 = icmp ult i64 0, %40, !dbg !5276
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !5277

if.then65:                                        ; preds = %land.lhs.true61
  %41 = load ptr, ptr %addtl.addr, align 8, !dbg !5278
  %list = getelementptr inbounds %struct.drbg_string, ptr %41, i32 0, i32 2, !dbg !5279
  call void @list_add_tail(ptr noundef %list, ptr noundef %addtllist) #18, !dbg !5280
  br label %if.end66, !dbg !5280

if.end66:                                         ; preds = %if.then65, %land.lhs.true61, %if.end59
  %42 = load ptr, ptr %drbg.addr, align 8, !dbg !5281
  %d_ops = getelementptr inbounds %struct.drbg_state, ptr %42, i32 0, i32 23, !dbg !5282
  %43 = load ptr, ptr %d_ops, align 8, !dbg !5282
  %generate = getelementptr inbounds %struct.drbg_state_ops, ptr %43, i32 0, i32 1, !dbg !5283
  %44 = load ptr, ptr %generate, align 8, !dbg !5283
  %45 = load ptr, ptr %drbg.addr, align 8, !dbg !5284
  %46 = load ptr, ptr %buf.addr, align 8, !dbg !5285
  %47 = load i32, ptr %buflen.addr, align 4, !dbg !5286
  %call67 = call i32 %44(ptr noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef %addtllist) #18, !dbg !5281
  store i32 %call67, ptr %len, align 4, !dbg !5287
  %48 = load ptr, ptr %drbg.addr, align 8, !dbg !5288
  %reseed_ctr68 = getelementptr inbounds %struct.drbg_state, ptr %48, i32 0, i32 5, !dbg !5289
  %49 = load i64, ptr %reseed_ctr68, align 8, !dbg !5290
  %inc = add i64 %49, 1, !dbg !5290
  store i64 %inc, ptr %reseed_ctr68, align 8, !dbg !5290
  %50 = load i32, ptr %len, align 4, !dbg !5291
  %cmp69 = icmp sge i32 0, %50, !dbg !5293
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !5294

if.then71:                                        ; preds = %if.end66
  br label %err, !dbg !5295

if.end72:                                         ; preds = %if.end66
  store i32 0, ptr %len, align 4, !dbg !5296
  br label %err, !dbg !5297

err:                                              ; preds = %if.end72, %if.then71, %if.then56, %if.then42, %if.then25, %if.then16
  call void @llvm.dbg.label(metadata !5144), !dbg !5298
  %51 = load i32, ptr %len, align 4, !dbg !5299
  store i32 %51, ptr %retval, align 4, !dbg !5300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5300

cleanup:                                          ; preds = %err, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %addtllist) #20, !dbg !5301
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5301
  %52 = load i32, ptr %retval, align 4, !dbg !5301
  ret i32 %52, !dbg !5301
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5302 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drbg_max_addtl(ptr noundef %drbg) #7 align 16 !dbg !5303 {
entry:
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5305, metadata !DIExpression()), !dbg !5306
  ret i64 34359738368, !dbg !5307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_seed(ptr noundef %drbg, ptr noundef %pers, i1 noundef zeroext %reseed) #6 align 16 !dbg !5308 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %pers.addr = alloca ptr, align 8
  %reseed.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %entropy = alloca [96 x i8], align 16
  %entropylen = alloca i32, align 4
  %data1 = alloca %struct.drbg_string, align 8
  %seedlist = alloca %struct.list_head, align 8
  %new_seed_state = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5312, metadata !DIExpression()), !dbg !5325
  store ptr %pers, ptr %pers.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pers.addr, metadata !5313, metadata !DIExpression()), !dbg !5326
  %frombool = zext i1 %reseed to i8
  store i8 %frombool, ptr %reseed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %reseed.addr, metadata !5314, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5315, metadata !DIExpression()), !dbg !5329
  call void @llvm.lifetime.start.p0(i64 96, ptr %entropy) #20, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %entropy, metadata !5316, metadata !DIExpression()), !dbg !5331
  call void @llvm.lifetime.start.p0(i64 4, ptr %entropylen) #20, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %entropylen, metadata !5320, metadata !DIExpression()), !dbg !5333
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5334
  %core = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24, !dbg !5335
  %1 = load ptr, ptr %core, align 8, !dbg !5335
  %flags = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 0, !dbg !5336
  %2 = load i32, ptr %flags, align 4, !dbg !5336
  %call = call zeroext i16 @drbg_sec_strength(i32 noundef %2) #18, !dbg !5337
  %conv = zext i16 %call to i32, !dbg !5337
  store i32 %conv, ptr %entropylen, align 4, !dbg !5333
  call void @llvm.lifetime.start.p0(i64 32, ptr %data1) #20, !dbg !5338
  call void @llvm.dbg.declare(metadata ptr %data1, metadata !5321, metadata !DIExpression()), !dbg !5339
  call void @llvm.lifetime.start.p0(i64 16, ptr %seedlist) #20, !dbg !5340
  call void @llvm.dbg.declare(metadata ptr %seedlist, metadata !5322, metadata !DIExpression()), !dbg !5340
  %next = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 0, !dbg !5340
  store ptr %seedlist, ptr %next, align 8, !dbg !5340
  %prev = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 1, !dbg !5340
  store ptr %seedlist, ptr %prev, align 8, !dbg !5340
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_seed_state) #20, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %new_seed_state, metadata !5323, metadata !DIExpression()), !dbg !5342
  store i32 2, ptr %new_seed_state, align 4, !dbg !5342
  %3 = load ptr, ptr %pers.addr, align 8, !dbg !5343
  %tobool = icmp ne ptr %3, null, !dbg !5343
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5345

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pers.addr, align 8, !dbg !5346
  %len = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 1, !dbg !5347
  %5 = load i64, ptr %len, align 8, !dbg !5347
  %6 = load ptr, ptr %drbg.addr, align 8, !dbg !5348
  %call1 = call i64 @drbg_max_addtl(ptr noundef %6) #18, !dbg !5349
  %cmp = icmp ugt i64 %5, %call1, !dbg !5350
  br i1 %cmp, label %if.then, label %if.end, !dbg !5351

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %tmp, align 4, !dbg !5352
  %7 = load i32, ptr %tmp, align 4, !dbg !5356
  store i32 -22, ptr %retval, align 4, !dbg !5357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5357

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %drbg.addr, align 8, !dbg !5358
  %test_data = getelementptr inbounds %struct.drbg_state, ptr %8, i32 0, i32 25, !dbg !5360
  %list = getelementptr inbounds %struct.drbg_string, ptr %test_data, i32 0, i32 2, !dbg !5361
  %call3 = call i32 @list_empty(ptr noundef %list) #18, !dbg !5362
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5362
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5363

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !5364
  %test_data6 = getelementptr inbounds %struct.drbg_state, ptr %9, i32 0, i32 25, !dbg !5366
  %buf = getelementptr inbounds %struct.drbg_string, ptr %test_data6, i32 0, i32 0, !dbg !5367
  %10 = load ptr, ptr %buf, align 8, !dbg !5367
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !5368
  %test_data7 = getelementptr inbounds %struct.drbg_state, ptr %11, i32 0, i32 25, !dbg !5369
  %len8 = getelementptr inbounds %struct.drbg_string, ptr %test_data7, i32 0, i32 1, !dbg !5370
  %12 = load i64, ptr %len8, align 8, !dbg !5370
  call void @drbg_string_fill(ptr noundef %data1, ptr noundef %10, i64 noundef %12) #18, !dbg !5371
  store i32 0, ptr %tmp9, align 4, !dbg !5372
  %13 = load i32, ptr %tmp9, align 4, !dbg !5375
  br label %if.end75, !dbg !5376

if.else:                                          ; preds = %if.end
  br label %do.body, !dbg !5377

do.body:                                          ; preds = %if.else
  %14 = load i32, ptr %entropylen, align 4, !dbg !5379
  %tobool10 = icmp ne i32 %14, 0, !dbg !5379
  %lnot = xor i1 %tobool10, true, !dbg !5379
  %lnot11 = xor i1 %lnot, true, !dbg !5379
  %lnot12 = xor i1 %lnot11, true, !dbg !5379
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5379
  %conv13 = sext i32 %lnot.ext to i64, !dbg !5379
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5379
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5379
  br i1 %tobool14, label %if.then15, label %if.end23, !dbg !5382

if.then15:                                        ; preds = %do.body
  br label %do.body16, !dbg !5379

do.body16:                                        ; preds = %if.then15
  br label %do.body17, !dbg !5383

do.body17:                                        ; preds = %do.body16
  br label %do.cond, !dbg !5385

do.cond:                                          ; preds = %do.body17
  br label %do.end, !dbg !5385

do.end:                                           ; preds = %do.cond
  br label %do.body18, !dbg !5383

do.body18:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 1178, i32 0, i64 12) #20, !dbg !5387, !srcloc !5389
  br label %do.cond19, !dbg !5387

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5387

do.end20:                                         ; preds = %do.cond19
  unreachable, !dbg !5383

do.cond21:                                        ; No predecessors!
  br label %do.end22, !dbg !5383

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !5383

if.end23:                                         ; preds = %do.end22, %do.body
  br label %do.cond24, !dbg !5382

do.cond24:                                        ; preds = %if.end23
  br label %do.end25, !dbg !5382

do.end25:                                         ; preds = %do.cond24
  %15 = load i8, ptr %reseed.addr, align 1, !dbg !5390, !range !4844, !noundef !505
  %tobool26 = trunc i8 %15 to i1, !dbg !5390
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5392

if.then27:                                        ; preds = %do.end25
  %16 = load i32, ptr %entropylen, align 4, !dbg !5393
  %add = add i32 %16, 1, !dbg !5394
  %div = udiv i32 %add, 2, !dbg !5395
  %mul = mul i32 %div, 3, !dbg !5396
  store i32 %mul, ptr %entropylen, align 4, !dbg !5397
  br label %if.end28, !dbg !5398

if.end28:                                         ; preds = %if.then27, %do.end25
  br label %do.body29, !dbg !5399

do.body29:                                        ; preds = %if.end28
  %17 = load i32, ptr %entropylen, align 4, !dbg !5400
  %mul30 = mul i32 %17, 2, !dbg !5400
  %conv31 = zext i32 %mul30 to i64, !dbg !5400
  %cmp32 = icmp ugt i64 %conv31, 96, !dbg !5400
  %lnot34 = xor i1 %cmp32, true, !dbg !5400
  %lnot36 = xor i1 %lnot34, true, !dbg !5400
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5400
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !5400
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !5400
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !5400
  br i1 %tobool40, label %if.then41, label %if.end51, !dbg !5403

if.then41:                                        ; preds = %do.body29
  br label %do.body42, !dbg !5400

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !5404

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !5406

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !5406

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !5404

do.body46:                                        ; preds = %do.end45
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 1181, i32 0, i64 12) #20, !dbg !5408, !srcloc !5410
  br label %do.cond47, !dbg !5408

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !5408

do.end48:                                         ; preds = %do.cond47
  unreachable, !dbg !5404

do.cond49:                                        ; No predecessors!
  br label %do.end50, !dbg !5404

do.end50:                                         ; preds = %do.cond49
  br label %if.end51, !dbg !5404

if.end51:                                         ; preds = %do.end50, %do.body29
  br label %do.cond52, !dbg !5403

do.cond52:                                        ; preds = %if.end51
  br label %do.end53, !dbg !5403

do.end53:                                         ; preds = %do.cond52
  %call54 = call zeroext i1 @rng_is_initialized() #18, !dbg !5411
  br i1 %call54, label %if.end56, label %if.then55, !dbg !5413

if.then55:                                        ; preds = %do.end53
  store i32 1, ptr %new_seed_state, align 4, !dbg !5414
  br label %if.end56, !dbg !5415

if.end56:                                         ; preds = %if.then55, %do.end53
  %18 = load ptr, ptr %drbg.addr, align 8, !dbg !5416
  %arraydecay = getelementptr inbounds [96 x i8], ptr %entropy, i64 0, i64 0, !dbg !5417
  %19 = load i32, ptr %entropylen, align 4, !dbg !5418
  %call57 = call i32 @drbg_get_random_bytes(ptr noundef %18, ptr noundef %arraydecay, i32 noundef %19) #18, !dbg !5419
  store i32 %call57, ptr %ret, align 4, !dbg !5420
  %20 = load i32, ptr %ret, align 4, !dbg !5421
  %tobool58 = icmp ne i32 %20, 0, !dbg !5421
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5423

if.then59:                                        ; preds = %if.end56
  br label %out, !dbg !5424

if.end60:                                         ; preds = %if.end56
  %21 = load ptr, ptr %drbg.addr, align 8, !dbg !5425
  %jent = getelementptr inbounds %struct.drbg_state, ptr %21, i32 0, i32 22, !dbg !5427
  %22 = load ptr, ptr %jent, align 8, !dbg !5427
  %tobool61 = icmp ne ptr %22, null, !dbg !5425
  br i1 %tobool61, label %if.else66, label %if.then62, !dbg !5428

if.then62:                                        ; preds = %if.end60
  %arraydecay63 = getelementptr inbounds [96 x i8], ptr %entropy, i64 0, i64 0, !dbg !5429
  %23 = load i32, ptr %entropylen, align 4, !dbg !5431
  %conv64 = zext i32 %23 to i64, !dbg !5431
  call void @drbg_string_fill(ptr noundef %data1, ptr noundef %arraydecay63, i64 noundef %conv64) #18, !dbg !5432
  store i32 0, ptr %tmp65, align 4, !dbg !5433
  %24 = load i32, ptr %tmp65, align 4, !dbg !5436
  br label %if.end74, !dbg !5437

if.else66:                                        ; preds = %if.end60
  %25 = load ptr, ptr %drbg.addr, align 8, !dbg !5438
  %jent67 = getelementptr inbounds %struct.drbg_state, ptr %25, i32 0, i32 22, !dbg !5440
  %26 = load ptr, ptr %jent67, align 8, !dbg !5440
  %arraydecay68 = getelementptr inbounds [96 x i8], ptr %entropy, i64 0, i64 0, !dbg !5441
  %27 = load i32, ptr %entropylen, align 4, !dbg !5442
  %idx.ext = zext i32 %27 to i64, !dbg !5443
  %add.ptr = getelementptr i8, ptr %arraydecay68, i64 %idx.ext, !dbg !5443
  %28 = load i32, ptr %entropylen, align 4, !dbg !5444
  %call69 = call i32 @crypto_rng_get_bytes(ptr noundef %26, ptr noundef %add.ptr, i32 noundef %28) #18, !dbg !5445
  store i32 %call69, ptr %ret, align 4, !dbg !5446
  %arraydecay70 = getelementptr inbounds [96 x i8], ptr %entropy, i64 0, i64 0, !dbg !5447
  %29 = load i32, ptr %entropylen, align 4, !dbg !5448
  %mul71 = mul i32 %29, 2, !dbg !5449
  %conv72 = zext i32 %mul71 to i64, !dbg !5448
  call void @drbg_string_fill(ptr noundef %data1, ptr noundef %arraydecay70, i64 noundef %conv72) #18, !dbg !5450
  store i32 0, ptr %tmp73, align 4, !dbg !5451
  %30 = load i32, ptr %tmp73, align 4, !dbg !5454
  br label %if.end74

if.end74:                                         ; preds = %if.else66, %if.then62
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then5
  %list76 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2, !dbg !5455
  call void @list_add_tail(ptr noundef %list76, ptr noundef %seedlist) #18, !dbg !5456
  %31 = load ptr, ptr %pers.addr, align 8, !dbg !5457
  %tobool77 = icmp ne ptr %31, null, !dbg !5457
  br i1 %tobool77, label %land.lhs.true78, label %if.end88, !dbg !5459

land.lhs.true78:                                  ; preds = %if.end75
  %32 = load ptr, ptr %pers.addr, align 8, !dbg !5460
  %buf79 = getelementptr inbounds %struct.drbg_string, ptr %32, i32 0, i32 0, !dbg !5461
  %33 = load ptr, ptr %buf79, align 8, !dbg !5461
  %tobool80 = icmp ne ptr %33, null, !dbg !5460
  br i1 %tobool80, label %land.lhs.true81, label %if.end88, !dbg !5462

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %34 = load ptr, ptr %pers.addr, align 8, !dbg !5463
  %len82 = getelementptr inbounds %struct.drbg_string, ptr %34, i32 0, i32 1, !dbg !5464
  %35 = load i64, ptr %len82, align 8, !dbg !5464
  %cmp83 = icmp ult i64 0, %35, !dbg !5465
  br i1 %cmp83, label %if.then85, label %if.end88, !dbg !5466

if.then85:                                        ; preds = %land.lhs.true81
  %36 = load ptr, ptr %pers.addr, align 8, !dbg !5467
  %list86 = getelementptr inbounds %struct.drbg_string, ptr %36, i32 0, i32 2, !dbg !5469
  call void @list_add_tail(ptr noundef %list86, ptr noundef %seedlist) #18, !dbg !5470
  store i32 0, ptr %tmp87, align 4, !dbg !5471
  %37 = load i32, ptr %tmp87, align 4, !dbg !5474
  br label %if.end88, !dbg !5475

if.end88:                                         ; preds = %if.then85, %land.lhs.true81, %land.lhs.true78, %if.end75
  %38 = load i8, ptr %reseed.addr, align 1, !dbg !5476, !range !4844, !noundef !505
  %tobool89 = trunc i8 %38 to i1, !dbg !5476
  br i1 %tobool89, label %if.end95, label %if.then90, !dbg !5478

if.then90:                                        ; preds = %if.end88
  %39 = load ptr, ptr %drbg.addr, align 8, !dbg !5479
  %V = getelementptr inbounds %struct.drbg_state, ptr %39, i32 0, i32 1, !dbg !5481
  %40 = load ptr, ptr %V, align 8, !dbg !5481
  %41 = load ptr, ptr %drbg.addr, align 8, !dbg !5482
  %call91 = call zeroext i8 @drbg_statelen(ptr noundef %41) #18, !dbg !5483
  %conv92 = zext i8 %call91 to i64, !dbg !5483
  call void @llvm.memset.p0.i64(ptr align 1 %40, i8 0, i64 %conv92, i1 false), !dbg !5484
  %42 = load ptr, ptr %drbg.addr, align 8, !dbg !5485
  %C = getelementptr inbounds %struct.drbg_state, ptr %42, i32 0, i32 3, !dbg !5486
  %43 = load ptr, ptr %C, align 8, !dbg !5486
  %44 = load ptr, ptr %drbg.addr, align 8, !dbg !5487
  %call93 = call zeroext i8 @drbg_statelen(ptr noundef %44) #18, !dbg !5488
  %conv94 = zext i8 %call93 to i64, !dbg !5488
  call void @llvm.memset.p0.i64(ptr align 1 %43, i8 0, i64 %conv94, i1 false), !dbg !5489
  br label %if.end95, !dbg !5490

if.end95:                                         ; preds = %if.then90, %if.end88
  %45 = load ptr, ptr %drbg.addr, align 8, !dbg !5491
  %46 = load i8, ptr %reseed.addr, align 1, !dbg !5492, !range !4844, !noundef !505
  %tobool96 = trunc i8 %46 to i1, !dbg !5492
  %conv97 = zext i1 %tobool96 to i32, !dbg !5492
  %47 = load i32, ptr %new_seed_state, align 4, !dbg !5493
  %call98 = call i32 @__drbg_seed(ptr noundef %45, ptr noundef %seedlist, i32 noundef %conv97, i32 noundef %47) #18, !dbg !5494
  store i32 %call98, ptr %ret, align 4, !dbg !5495
  br label %out, !dbg !5496

out:                                              ; preds = %if.end95, %if.then59
  call void @llvm.dbg.label(metadata !5324), !dbg !5497
  %arraydecay99 = getelementptr inbounds [96 x i8], ptr %entropy, i64 0, i64 0, !dbg !5498
  %48 = load i32, ptr %entropylen, align 4, !dbg !5499
  %mul100 = mul i32 %48, 2, !dbg !5500
  %conv101 = zext i32 %mul100 to i64, !dbg !5499
  call void @memzero_explicit(ptr noundef %arraydecay99, i64 noundef %conv101) #18, !dbg !5501
  %49 = load i32, ptr %ret, align 4, !dbg !5502
  store i32 %49, ptr %retval, align 4, !dbg !5503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5503

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_seed_state) #20, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 16, ptr %seedlist) #20, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 32, ptr %data1) #20, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 4, ptr %entropylen) #20, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 96, ptr %entropy) #20, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !5504
  %50 = load i32, ptr %retval, align 4, !dbg !5504
  ret i32 %50, !dbg !5504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5505 dso_local zeroext i1 @rng_is_initialized() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drbg_nopr_reseed_interval_elapsed(ptr noundef %drbg) #6 align 16 !dbg !5507 {
entry:
  %retval = alloca i1, align 1
  %drbg.addr = alloca ptr, align 8
  %next_reseed = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5511, metadata !DIExpression()), !dbg !5513
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_reseed) #20, !dbg !5514
  call void @llvm.dbg.declare(metadata ptr %next_reseed, metadata !5512, metadata !DIExpression()), !dbg !5515
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5516
  %test_data = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 25, !dbg !5518
  %list = getelementptr inbounds %struct.drbg_string, ptr %test_data, i32 0, i32 2, !dbg !5519
  %call = call i32 @list_empty(ptr noundef %list) #18, !dbg !5520
  %tobool = icmp ne i32 %call, 0, !dbg !5520
  br i1 %tobool, label %if.then, label %if.end, !dbg !5521

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5522

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !5523
  %last_seed_time = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 18, !dbg !5524
  %2 = load i64, ptr %last_seed_time, align 8, !dbg !5524
  %add = add i64 %2, 300000, !dbg !5525
  store i64 %add, ptr %next_reseed, align 8, !dbg !5526
  %3 = load i64, ptr %next_reseed, align 8, !dbg !5527
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !5527
  %sub = sub i64 %3, %4, !dbg !5527
  %cmp = icmp slt i64 %sub, 0, !dbg !5527
  store i1 %cmp, ptr %retval, align 1, !dbg !5528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5528

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_reseed) #20, !dbg !5529
  %5 = load i1, ptr %retval, align 1, !dbg !5529
  ret i1 %5, !dbg !5529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_seed_from_random(ptr noundef %drbg) #6 align 16 !dbg !5530 {
entry:
  %drbg.addr = alloca ptr, align 8
  %data = alloca %struct.drbg_string, align 8
  %seedlist = alloca %struct.list_head, align 8
  %entropylen = alloca i32, align 4
  %entropy = alloca [32 x i8], align 16
  %ret = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5532, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 32, ptr %data) #20, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5533, metadata !DIExpression()), !dbg !5541
  call void @llvm.lifetime.start.p0(i64 16, ptr %seedlist) #20, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %seedlist, metadata !5534, metadata !DIExpression()), !dbg !5542
  %next = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 0, !dbg !5542
  store ptr %seedlist, ptr %next, align 8, !dbg !5542
  %prev = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 1, !dbg !5542
  store ptr %seedlist, ptr %prev, align 8, !dbg !5542
  call void @llvm.lifetime.start.p0(i64 4, ptr %entropylen) #20, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %entropylen, metadata !5535, metadata !DIExpression()), !dbg !5544
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5545
  %core = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24, !dbg !5546
  %1 = load ptr, ptr %core, align 8, !dbg !5546
  %flags = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 0, !dbg !5547
  %2 = load i32, ptr %flags, align 4, !dbg !5547
  %call = call zeroext i16 @drbg_sec_strength(i32 noundef %2) #18, !dbg !5548
  %conv = zext i16 %call to i32, !dbg !5548
  store i32 %conv, ptr %entropylen, align 4, !dbg !5544
  call void @llvm.lifetime.start.p0(i64 32, ptr %entropy) #20, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %entropy, metadata !5536, metadata !DIExpression()), !dbg !5550
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !5551
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5537, metadata !DIExpression()), !dbg !5552
  br label %do.body, !dbg !5553

do.body:                                          ; preds = %entry
  %3 = load i32, ptr %entropylen, align 4, !dbg !5554
  %tobool = icmp ne i32 %3, 0, !dbg !5554
  %lnot = xor i1 %tobool, true, !dbg !5554
  %lnot1 = xor i1 %lnot, true, !dbg !5554
  %lnot2 = xor i1 %lnot1, true, !dbg !5554
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5554
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5554
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5554
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5554
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5557

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5554

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5558

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5560

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5560

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5558

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 1100, i32 0, i64 12) #20, !dbg !5562, !srcloc !5564
  br label %do.cond8, !dbg !5562

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5562

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5558

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5558

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5558

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5557

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5557

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5565

do.body14:                                        ; preds = %do.end13
  %4 = load i32, ptr %entropylen, align 4, !dbg !5566
  %conv15 = zext i32 %4 to i64, !dbg !5566
  %cmp = icmp ugt i64 %conv15, 32, !dbg !5566
  %lnot17 = xor i1 %cmp, true, !dbg !5566
  %lnot19 = xor i1 %lnot17, true, !dbg !5566
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5566
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5566
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5566
  %tobool23 = icmp ne i64 %expval22, 0, !dbg !5566
  br i1 %tobool23, label %if.then24, label %if.end34, !dbg !5569

if.then24:                                        ; preds = %do.body14
  br label %do.body25, !dbg !5566

do.body25:                                        ; preds = %if.then24
  br label %do.body26, !dbg !5570

do.body26:                                        ; preds = %do.body25
  br label %do.cond27, !dbg !5572

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5572

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !5570

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 1101, i32 0, i64 12) #20, !dbg !5574, !srcloc !5576
  br label %do.cond30, !dbg !5574

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5574

do.end31:                                         ; preds = %do.cond30
  unreachable, !dbg !5570

do.cond32:                                        ; No predecessors!
  br label %do.end33, !dbg !5570

do.end33:                                         ; preds = %do.cond32
  br label %if.end34, !dbg !5570

if.end34:                                         ; preds = %do.end33, %do.body14
  br label %do.cond35, !dbg !5569

do.cond35:                                        ; preds = %if.end34
  br label %do.end36, !dbg !5569

do.end36:                                         ; preds = %do.cond35
  %arraydecay = getelementptr inbounds [32 x i8], ptr %entropy, i64 0, i64 0, !dbg !5577
  %5 = load i32, ptr %entropylen, align 4, !dbg !5578
  %conv37 = zext i32 %5 to i64, !dbg !5578
  call void @drbg_string_fill(ptr noundef %data, ptr noundef %arraydecay, i64 noundef %conv37) #18, !dbg !5579
  %list = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 2, !dbg !5580
  call void @list_add_tail(ptr noundef %list, ptr noundef %seedlist) #18, !dbg !5581
  %6 = load ptr, ptr %drbg.addr, align 8, !dbg !5582
  %arraydecay38 = getelementptr inbounds [32 x i8], ptr %entropy, i64 0, i64 0, !dbg !5583
  %7 = load i32, ptr %entropylen, align 4, !dbg !5584
  %call39 = call i32 @drbg_get_random_bytes(ptr noundef %6, ptr noundef %arraydecay38, i32 noundef %7) #18, !dbg !5585
  store i32 %call39, ptr %ret, align 4, !dbg !5586
  %8 = load i32, ptr %ret, align 4, !dbg !5587
  %tobool40 = icmp ne i32 %8, 0, !dbg !5587
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5589

if.then41:                                        ; preds = %do.end36
  br label %out, !dbg !5590

if.end42:                                         ; preds = %do.end36
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !5591
  %call43 = call i32 @__drbg_seed(ptr noundef %9, ptr noundef %seedlist, i32 noundef 1, i32 noundef 2) #18, !dbg !5592
  store i32 %call43, ptr %ret, align 4, !dbg !5593
  br label %out, !dbg !5594

out:                                              ; preds = %if.end42, %if.then41
  call void @llvm.dbg.label(metadata !5538), !dbg !5595
  %arraydecay44 = getelementptr inbounds [32 x i8], ptr %entropy, i64 0, i64 0, !dbg !5596
  %10 = load i32, ptr %entropylen, align 4, !dbg !5597
  %conv45 = zext i32 %10 to i64, !dbg !5597
  call void @memzero_explicit(ptr noundef %arraydecay44, i64 noundef %conv45) #18, !dbg !5598
  %11 = load i32, ptr %ret, align 4, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 32, ptr %entropy) #20, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 4, ptr %entropylen) #20, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 16, ptr %seedlist) #20, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 32, ptr %data) #20, !dbg !5600
  ret i32 %11, !dbg !5601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !5602 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5606, metadata !DIExpression()), !dbg !5608
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5607, metadata !DIExpression()), !dbg !5609
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5610
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5611
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5612
  %2 = load ptr, ptr %prev, align 8, !dbg !5612
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5613
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !5614
  ret void, !dbg !5615
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @drbg_sec_strength(i32 noundef %flags) #7 align 16 !dbg !5616 {
entry:
  %retval = alloca i16, align 2
  %flags.addr = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5622
  %and = and i32 %0, 56, !dbg !5623
  switch i32 %and, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
  ], !dbg !5624

sw.bb:                                            ; preds = %entry
  store i16 16, ptr %retval, align 2, !dbg !5625
  br label %return, !dbg !5625

sw.bb1:                                           ; preds = %entry
  store i16 24, ptr %retval, align 2, !dbg !5627
  br label %return, !dbg !5627

sw.bb2:                                           ; preds = %entry
  store i16 32, ptr %retval, align 2, !dbg !5628
  br label %return, !dbg !5628

sw.default:                                       ; preds = %entry
  store i16 32, ptr %retval, align 2, !dbg !5629
  br label %return, !dbg !5629

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i16, ptr %retval, align 2, !dbg !5630
  ret i16 %1, !dbg !5630
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !5631 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  br label %do.body, !dbg !5639

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5641

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5639
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5639
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5639
  store ptr %1, ptr %tmp, align 8, !dbg !5641
  %2 = load ptr, ptr %tmp, align 8, !dbg !5639
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5643
  %cmp = icmp eq ptr %2, %3, !dbg !5644
  %conv = zext i1 %cmp to i32, !dbg !5644
  ret i32 %conv, !dbg !5645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_get_random_bytes(ptr noundef %drbg, ptr noundef %entropy, i32 noundef %entropylen) #7 align 16 !dbg !5646 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %entropy.addr = alloca ptr, align 8
  %entropylen.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5650, metadata !DIExpression()), !dbg !5654
  store ptr %entropy, ptr %entropy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entropy.addr, metadata !5651, metadata !DIExpression()), !dbg !5655
  store i32 %entropylen, ptr %entropylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entropylen.addr, metadata !5652, metadata !DIExpression()), !dbg !5656
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5653, metadata !DIExpression()), !dbg !5658
  br label %do.body, !dbg !5659

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %entropy.addr, align 8, !dbg !5660
  %1 = load i32, ptr %entropylen.addr, align 4, !dbg !5662
  %conv = zext i32 %1 to i64, !dbg !5662
  call void @get_random_bytes(ptr noundef %0, i64 noundef %conv) #18, !dbg !5663
  %2 = load ptr, ptr %drbg.addr, align 8, !dbg !5664
  %3 = load ptr, ptr %entropy.addr, align 8, !dbg !5665
  %call = call i32 @drbg_fips_continuous_test(ptr noundef %2, ptr noundef %3) #18, !dbg !5666
  store i32 %call, ptr %ret, align 4, !dbg !5667
  %4 = load i32, ptr %ret, align 4, !dbg !5668
  %tobool = icmp ne i32 %4, 0, !dbg !5668
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5670

land.lhs.true:                                    ; preds = %do.body
  %5 = load i32, ptr %ret, align 4, !dbg !5671
  %cmp = icmp ne i32 %5, -11, !dbg !5672
  br i1 %cmp, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %ret, align 4, !dbg !5674
  store i32 %6, ptr %retval, align 4, !dbg !5675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5675

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.cond, !dbg !5676

do.cond:                                          ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !5677
  %tobool2 = icmp ne i32 %7, 0, !dbg !5676
  br i1 %tobool2, label %do.body, label %do.end, !dbg !5676, !llvm.loop !5678

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !5680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5680

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !5681
  %8 = load i32, ptr %retval, align 4, !dbg !5681
  ret i32 %8, !dbg !5681
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_rng_get_bytes(ptr noundef %tfm, ptr noundef %rdata, i32 noundef %dlen) #7 align 16 !dbg !5682 {
entry:
  %tfm.addr = alloca ptr, align 8
  %rdata.addr = alloca ptr, align 8
  %dlen.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5686, metadata !DIExpression()), !dbg !5689
  store ptr %rdata, ptr %rdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rdata.addr, metadata !5687, metadata !DIExpression()), !dbg !5690
  store i32 %dlen, ptr %dlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dlen.addr, metadata !5688, metadata !DIExpression()), !dbg !5691
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5692
  %1 = load ptr, ptr %rdata.addr, align 8, !dbg !5693
  %2 = load i32, ptr %dlen.addr, align 4, !dbg !5694
  %call = call i32 @crypto_rng_generate(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2) #18, !dbg !5695
  ret i32 %call, !dbg !5696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @drbg_statelen(ptr noundef %drbg) #7 align 16 !dbg !5697 {
entry:
  %retval = alloca i8, align 1
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5703
  %tobool = icmp ne ptr %0, null, !dbg !5703
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5705

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !5706
  %core = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 24, !dbg !5707
  %2 = load ptr, ptr %core, align 8, !dbg !5707
  %tobool1 = icmp ne ptr %2, null, !dbg !5706
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5708

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !5709
  %core2 = getelementptr inbounds %struct.drbg_state, ptr %3, i32 0, i32 24, !dbg !5710
  %4 = load ptr, ptr %core2, align 8, !dbg !5710
  %statelen = getelementptr inbounds %struct.drbg_core, ptr %4, i32 0, i32 1, !dbg !5711
  %5 = load i8, ptr %statelen, align 4, !dbg !5711
  store i8 %5, ptr %retval, align 1, !dbg !5712
  br label %return, !dbg !5712

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8 0, ptr %retval, align 1, !dbg !5713
  br label %return, !dbg !5713

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, ptr %retval, align 1, !dbg !5714
  ret i8 %6, !dbg !5714
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__drbg_seed(ptr noundef %drbg, ptr noundef %seed, i32 noundef %reseed, i32 noundef %new_seed_state) #7 align 16 !dbg !5715 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %reseed.addr = alloca i32, align 4
  %new_seed_state.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5719, metadata !DIExpression()), !dbg !5724
  store ptr %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !5720, metadata !DIExpression()), !dbg !5725
  store i32 %reseed, ptr %reseed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reseed.addr, metadata !5721, metadata !DIExpression()), !dbg !5726
  store i32 %new_seed_state, ptr %new_seed_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_seed_state.addr, metadata !5722, metadata !DIExpression()), !dbg !5727
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5723, metadata !DIExpression()), !dbg !5729
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5730
  %d_ops = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 23, !dbg !5731
  %1 = load ptr, ptr %d_ops, align 8, !dbg !5731
  %update = getelementptr inbounds %struct.drbg_state_ops, ptr %1, i32 0, i32 0, !dbg !5732
  %2 = load ptr, ptr %update, align 8, !dbg !5732
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !5733
  %4 = load ptr, ptr %seed.addr, align 8, !dbg !5734
  %5 = load i32, ptr %reseed.addr, align 4, !dbg !5735
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, i32 noundef %5) #18, !dbg !5730
  store i32 %call, ptr %ret, align 4, !dbg !5729
  %6 = load i32, ptr %ret, align 4, !dbg !5736
  %tobool = icmp ne i32 %6, 0, !dbg !5736
  br i1 %tobool, label %if.then, label %if.end, !dbg !5738

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !5739
  store i32 %7, ptr %retval, align 4, !dbg !5740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5740

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %new_seed_state.addr, align 4, !dbg !5741
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !5742
  %seeded = getelementptr inbounds %struct.drbg_state, ptr %9, i32 0, i32 17, !dbg !5743
  store i32 %8, ptr %seeded, align 8, !dbg !5744
  %10 = load volatile i64, ptr @jiffies, align 64, !dbg !5745
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !5746
  %last_seed_time = getelementptr inbounds %struct.drbg_state, ptr %11, i32 0, i32 18, !dbg !5747
  store i64 %10, ptr %last_seed_time, align 8, !dbg !5748
  %12 = load ptr, ptr %drbg.addr, align 8, !dbg !5749
  %reseed_ctr = getelementptr inbounds %struct.drbg_state, ptr %12, i32 0, i32 5, !dbg !5750
  store i64 1, ptr %reseed_ctr, align 8, !dbg !5751
  %13 = load ptr, ptr %drbg.addr, align 8, !dbg !5752
  %seeded1 = getelementptr inbounds %struct.drbg_state, ptr %13, i32 0, i32 17, !dbg !5753
  %14 = load i32, ptr %seeded1, align 8, !dbg !5753
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !5754

sw.bb:                                            ; preds = %if.end
  br label %sw.bb2, !dbg !5755

sw.bb2:                                           ; preds = %if.end, %sw.bb
  %15 = load ptr, ptr %drbg.addr, align 8, !dbg !5756
  %reseed_threshold = getelementptr inbounds %struct.drbg_state, ptr %15, i32 0, i32 6, !dbg !5758
  store i64 50, ptr %reseed_threshold, align 8, !dbg !5759
  br label %sw.epilog, !dbg !5760

sw.bb3:                                           ; preds = %if.end
  %16 = load ptr, ptr %drbg.addr, align 8, !dbg !5761
  %call4 = call i64 @drbg_max_requests(ptr noundef %16) #18, !dbg !5762
  %17 = load ptr, ptr %drbg.addr, align 8, !dbg !5763
  %reseed_threshold5 = getelementptr inbounds %struct.drbg_state, ptr %17, i32 0, i32 6, !dbg !5764
  store i64 %call4, ptr %reseed_threshold5, align 8, !dbg !5765
  br label %sw.epilog, !dbg !5766

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2
  %18 = load i32, ptr %ret, align 4, !dbg !5767
  store i32 %18, ptr %retval, align 4, !dbg !5768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5768

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !5769
  %19 = load i32, ptr %retval, align 4, !dbg !5769
  ret i32 %19, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #7 align 16 !dbg !5770 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5774, metadata !DIExpression()), !dbg !5776
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5778
  %1 = load i64, ptr %count.addr, align 8, !dbg !5779
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !5780
  %2 = load ptr, ptr %s.addr, align 8, !dbg !5781
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #20, !dbg !5781, !srcloc !5782
  ret void, !dbg !5783
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5784 dso_local void @get_random_bytes(ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_fips_continuous_test(ptr noundef %drbg, ptr noundef %entropy) #6 align 16 !dbg !5785 {
entry:
  %drbg.addr = alloca ptr, align 8
  %entropy.addr = alloca ptr, align 8
  %entropylen = alloca i16, align 2
  %ret = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5789, metadata !DIExpression()), !dbg !5793
  store ptr %entropy, ptr %entropy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entropy.addr, metadata !5790, metadata !DIExpression()), !dbg !5794
  call void @llvm.lifetime.start.p0(i64 2, ptr %entropylen) #20, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %entropylen, metadata !5791, metadata !DIExpression()), !dbg !5796
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !5797
  %core = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24, !dbg !5798
  %1 = load ptr, ptr %core, align 8, !dbg !5798
  %flags = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 0, !dbg !5799
  %2 = load i32, ptr %flags, align 4, !dbg !5799
  %call = call zeroext i16 @drbg_sec_strength(i32 noundef %2) #18, !dbg !5800
  store i16 %call, ptr %entropylen, align 2, !dbg !5796
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5792, metadata !DIExpression()), !dbg !5802
  store i32 0, ptr %ret, align 4, !dbg !5802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !5803
  call void @llvm.lifetime.end.p0(i64 2, ptr %entropylen) #20, !dbg !5803
  ret i32 0, !dbg !5804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_rng_generate(ptr noundef %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, i32 noundef %dlen) #7 align 16 !dbg !5806 {
entry:
  %tfm.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dlen.addr = alloca i32, align 4
  %alg = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5808, metadata !DIExpression()), !dbg !5814
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5809, metadata !DIExpression()), !dbg !5815
  store i32 %slen, ptr %slen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slen.addr, metadata !5810, metadata !DIExpression()), !dbg !5816
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5811, metadata !DIExpression()), !dbg !5817
  store i32 %dlen, ptr %dlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dlen.addr, metadata !5812, metadata !DIExpression()), !dbg !5818
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #20, !dbg !5819
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5813, metadata !DIExpression()), !dbg !5820
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5821
  %call = call ptr @crypto_rng_alg(ptr noundef %0) #18, !dbg !5822
  store ptr %call, ptr %alg, align 8, !dbg !5820
  %1 = load ptr, ptr %alg, align 8, !dbg !5823
  %2 = load ptr, ptr %alg, align 8, !dbg !5824
  %generate = getelementptr inbounds %struct.rng_alg, ptr %2, i32 0, i32 0, !dbg !5825
  %3 = load ptr, ptr %generate, align 8, !dbg !5825
  %4 = load ptr, ptr %tfm.addr, align 8, !dbg !5826
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5827
  %6 = load i32, ptr %slen.addr, align 4, !dbg !5828
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5829
  %8 = load i32, ptr %dlen.addr, align 4, !dbg !5830
  %call1 = call i32 %3(ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #18, !dbg !5824
  %call2 = call i32 @crypto_rng_errstat(ptr noundef %1, i32 noundef %call1) #18, !dbg !5831
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #20, !dbg !5832
  ret i32 %call2, !dbg !5833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_rng_alg(ptr noundef %tfm) #7 align 16 !dbg !5834 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5838, metadata !DIExpression()), !dbg !5839
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5840
  %call = call ptr @crypto_rng_tfm(ptr noundef %0) #18, !dbg !5841
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !5842
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5842
  %call1 = call ptr @__crypto_rng_alg(ptr noundef %1) #18, !dbg !5843
  ret ptr %call1, !dbg !5844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_rng_errstat(ptr noundef %alg, i32 noundef %err) #7 align 16 !dbg !5845 {
entry:
  %alg.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5847, metadata !DIExpression()), !dbg !5849
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  %0 = load i32, ptr %err.addr, align 4, !dbg !5851
  ret i32 %0, !dbg !5853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_rng_alg(ptr noundef %alg) #7 align 16 !dbg !5854 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5858, metadata !DIExpression()), !dbg !5861
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5859, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5862
  store ptr %0, ptr %__mptr, align 8, !dbg !5862
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5862
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !5862
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5863
  %2 = load ptr, ptr %tmp, align 8, !dbg !5862
  ret ptr %2, !dbg !5864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drbg_max_requests(ptr noundef %drbg) #7 align 16 !dbg !5865 {
entry:
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  ret i64 1048576, !dbg !5869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !5870 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5874, metadata !DIExpression()), !dbg !5877
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5875, metadata !DIExpression()), !dbg !5878
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5876, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5880
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5882
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5883
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !5884
  br i1 %call, label %if.end, label %if.then, !dbg !5885

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5886

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5887
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5888
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5889
  store ptr %3, ptr %prev1, align 8, !dbg !5890
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5891
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5892
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5893
  store ptr %5, ptr %next2, align 8, !dbg !5894
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5895
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5896
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5897
  store ptr %7, ptr %prev3, align 8, !dbg !5898
  br label %do.body, !dbg !5899

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5900

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5902

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5900

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5904
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5904
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5904
  store volatile ptr %9, ptr %next6, align 8, !dbg !5904
  br label %do.end7, !dbg !5904

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5900

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !5907 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5911, metadata !DIExpression()), !dbg !5914
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5912, metadata !DIExpression()), !dbg !5915
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5913, metadata !DIExpression()), !dbg !5916
  ret i1 true, !dbg !5917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drbg_convert_tfm_core(ptr noundef %cra_driver_name, ptr noundef %coreref, ptr noundef %pr) #7 align 16 !dbg !5918 {
entry:
  %cra_driver_name.addr = alloca ptr, align 8
  %coreref.addr = alloca ptr, align 8
  %pr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %start = alloca i64, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cra_driver_name, ptr %cra_driver_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cra_driver_name.addr, metadata !5922, metadata !DIExpression()), !dbg !5928
  store ptr %coreref, ptr %coreref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %coreref.addr, metadata !5923, metadata !DIExpression()), !dbg !5929
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !5924, metadata !DIExpression()), !dbg !5930
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !5931
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5925, metadata !DIExpression()), !dbg !5932
  store i32 0, ptr %i, align 4, !dbg !5932
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #20, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5926, metadata !DIExpression()), !dbg !5934
  store i64 0, ptr %start, align 8, !dbg !5934
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5927, metadata !DIExpression()), !dbg !5936
  store i32 0, ptr %len, align 4, !dbg !5936
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !5937
  store i8 1, ptr %0, align 1, !dbg !5938
  %1 = load ptr, ptr %cra_driver_name.addr, align 8, !dbg !5939
  %call = call i32 @memcmp(ptr noundef %1, ptr noundef @.str.2, i64 noundef 10) #18, !dbg !5941
  %tobool = icmp ne i32 %call, 0, !dbg !5941
  br i1 %tobool, label %if.else, label %if.then, !dbg !5942

if.then:                                          ; preds = %entry
  store i64 10, ptr %start, align 8, !dbg !5943
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !5945
  store i8 0, ptr %2, align 1, !dbg !5946
  br label %if.end5, !dbg !5947

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %cra_driver_name.addr, align 8, !dbg !5948
  %call1 = call i32 @memcmp(ptr noundef %3, ptr noundef @.str.1, i64 noundef 8) #18, !dbg !5950
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5950
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !5951

if.then3:                                         ; preds = %if.else
  store i64 8, ptr %start, align 8, !dbg !5952
  br label %if.end, !dbg !5954

if.else4:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5955

if.end:                                           ; preds = %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %4 = load ptr, ptr %cra_driver_name.addr, align 8, !dbg !5957
  %call6 = call i64 @strlen(ptr noundef %4) #18, !dbg !5958
  %5 = load i64, ptr %start, align 8, !dbg !5959
  %sub = sub i64 %call6, %5, !dbg !5960
  %conv = trunc i64 %sub to i32, !dbg !5958
  store i32 %conv, ptr %len, align 4, !dbg !5961
  store i32 0, ptr %i, align 4, !dbg !5962
  br label %for.cond, !dbg !5964

for.cond:                                         ; preds = %for.inc, %if.end5
  %6 = load i32, ptr %i, align 4, !dbg !5965
  %conv7 = sext i32 %6 to i64, !dbg !5965
  %cmp = icmp ugt i64 4, %conv7, !dbg !5967
  br i1 %cmp, label %for.body, label %for.end, !dbg !5968

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cra_driver_name.addr, align 8, !dbg !5969
  %8 = load i64, ptr %start, align 8, !dbg !5972
  %add.ptr = getelementptr i8, ptr %7, i64 %8, !dbg !5973
  %9 = load i32, ptr %i, align 4, !dbg !5974
  %idxprom = sext i32 %9 to i64, !dbg !5975
  %arrayidx = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i64 0, i64 %idxprom, !dbg !5975
  %cra_name = getelementptr inbounds %struct.drbg_core, ptr %arrayidx, i32 0, i32 3, !dbg !5976
  %arraydecay = getelementptr inbounds [128 x i8], ptr %cra_name, i64 0, i64 0, !dbg !5975
  %10 = load i32, ptr %len, align 4, !dbg !5977
  %conv9 = sext i32 %10 to i64, !dbg !5977
  %call10 = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef %arraydecay, i64 noundef %conv9) #18, !dbg !5978
  %tobool11 = icmp ne i32 %call10, 0, !dbg !5978
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5979

if.then12:                                        ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !5980
  %12 = load ptr, ptr %coreref.addr, align 8, !dbg !5982
  store i32 %11, ptr %12, align 4, !dbg !5983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5984

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !5985

for.inc:                                          ; preds = %if.end13
  %13 = load i32, ptr %i, align 4, !dbg !5986
  %inc = add i32 %13, 1, !dbg !5986
  store i32 %inc, ptr %i, align 4, !dbg !5986
  br label %for.cond, !dbg !5987, !llvm.loop !5988

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5990
  br label %cleanup, !dbg !5990

cleanup:                                          ; preds = %for.end, %if.then12, %if.else4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5990
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #20, !dbg !5990
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !5990
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5990

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_alg_driver_name(ptr noundef %tfm) #7 align 16 !dbg !5991 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5997
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5998
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5998
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 9, !dbg !5999
  %arraydecay = getelementptr inbounds [128 x i8], ptr %cra_driver_name, i64 0, i64 0, !dbg !5997
  ret ptr %arraydecay, !dbg !6000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_instantiate(ptr noundef %drbg, ptr noundef %pers, i32 noundef %coreref, i1 noundef zeroext %pr) #6 align 16 !dbg !6001 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %pers.addr = alloca ptr, align 8
  %coreref.addr = alloca i32, align 4
  %pr.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %reseed = alloca i8, align 1
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6005, metadata !DIExpression()), !dbg !6013
  store ptr %pers, ptr %pers.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pers.addr, metadata !6006, metadata !DIExpression()), !dbg !6014
  store i32 %coreref, ptr %coreref.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %coreref.addr, metadata !6007, metadata !DIExpression()), !dbg !6015
  %frombool = zext i1 %pr to i8
  store i8 %frombool, ptr %pr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !6008, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6009, metadata !DIExpression()), !dbg !6018
  call void @llvm.lifetime.start.p0(i64 1, ptr %reseed) #20, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %reseed, metadata !6010, metadata !DIExpression()), !dbg !6020
  store i8 1, ptr %reseed, align 1, !dbg !6020
  store i32 0, ptr %tmp, align 4, !dbg !6021
  %0 = load i32, ptr %tmp, align 4, !dbg !6024
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !6025
  %drbg_mutex = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 0, !dbg !6026
  call void @mutex_lock(ptr noundef %drbg_mutex) #18, !dbg !6027
  %2 = load ptr, ptr %drbg.addr, align 8, !dbg !6028
  %core = getelementptr inbounds %struct.drbg_state, ptr %2, i32 0, i32 24, !dbg !6030
  %3 = load ptr, ptr %core, align 8, !dbg !6030
  %tobool = icmp ne ptr %3, null, !dbg !6028
  br i1 %tobool, label %if.end12, label %if.then, !dbg !6031

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %coreref.addr, align 4, !dbg !6032
  %idxprom = sext i32 %4 to i64, !dbg !6034
  %arrayidx = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i64 0, i64 %idxprom, !dbg !6034
  %5 = load ptr, ptr %drbg.addr, align 8, !dbg !6035
  %core1 = getelementptr inbounds %struct.drbg_state, ptr %5, i32 0, i32 24, !dbg !6036
  store ptr %arrayidx, ptr %core1, align 8, !dbg !6037
  %6 = load i8, ptr %pr.addr, align 1, !dbg !6038, !range !4844, !noundef !505
  %tobool2 = trunc i8 %6 to i1, !dbg !6038
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !6039
  %pr3 = getelementptr inbounds %struct.drbg_state, ptr %7, i32 0, i32 19, !dbg !6040
  %frombool4 = zext i1 %tobool2 to i8, !dbg !6041
  store i8 %frombool4, ptr %pr3, align 8, !dbg !6041
  %8 = load ptr, ptr %drbg.addr, align 8, !dbg !6042
  %seeded = getelementptr inbounds %struct.drbg_state, ptr %8, i32 0, i32 17, !dbg !6043
  store i32 0, ptr %seeded, align 8, !dbg !6044
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !6045
  %last_seed_time = getelementptr inbounds %struct.drbg_state, ptr %9, i32 0, i32 18, !dbg !6046
  store i64 0, ptr %last_seed_time, align 8, !dbg !6047
  %10 = load ptr, ptr %drbg.addr, align 8, !dbg !6048
  %call = call i64 @drbg_max_requests(ptr noundef %10) #18, !dbg !6049
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !6050
  %reseed_threshold = getelementptr inbounds %struct.drbg_state, ptr %11, i32 0, i32 6, !dbg !6051
  store i64 %call, ptr %reseed_threshold, align 8, !dbg !6052
  %12 = load ptr, ptr %drbg.addr, align 8, !dbg !6053
  %call5 = call i32 @drbg_alloc_state(ptr noundef %12) #18, !dbg !6054
  store i32 %call5, ptr %ret, align 4, !dbg !6055
  %13 = load i32, ptr %ret, align 4, !dbg !6056
  %tobool6 = icmp ne i32 %13, 0, !dbg !6056
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !6058

if.then7:                                         ; preds = %if.then
  br label %unlock, !dbg !6059

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %drbg.addr, align 8, !dbg !6060
  %call8 = call i32 @drbg_prepare_hrng(ptr noundef %14) #18, !dbg !6061
  store i32 %call8, ptr %ret, align 4, !dbg !6062
  %15 = load i32, ptr %ret, align 4, !dbg !6063
  %tobool9 = icmp ne i32 %15, 0, !dbg !6063
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6065

if.then10:                                        ; preds = %if.end
  br label %free_everything, !dbg !6066

if.end11:                                         ; preds = %if.end
  store i8 0, ptr %reseed, align 1, !dbg !6067
  br label %if.end12, !dbg !6068

if.end12:                                         ; preds = %if.end11, %entry
  %16 = load ptr, ptr %drbg.addr, align 8, !dbg !6069
  %17 = load ptr, ptr %pers.addr, align 8, !dbg !6070
  %18 = load i8, ptr %reseed, align 1, !dbg !6071, !range !4844, !noundef !505
  %tobool13 = trunc i8 %18 to i1, !dbg !6071
  %call14 = call i32 @drbg_seed(ptr noundef %16, ptr noundef %17, i1 noundef zeroext %tobool13) #18, !dbg !6072
  store i32 %call14, ptr %ret, align 4, !dbg !6073
  %19 = load i32, ptr %ret, align 4, !dbg !6074
  %tobool15 = icmp ne i32 %19, 0, !dbg !6074
  br i1 %tobool15, label %land.lhs.true, label %if.end18, !dbg !6076

land.lhs.true:                                    ; preds = %if.end12
  %20 = load i8, ptr %reseed, align 1, !dbg !6077, !range !4844, !noundef !505
  %tobool16 = trunc i8 %20 to i1, !dbg !6077
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6078

if.then17:                                        ; preds = %land.lhs.true
  br label %free_everything, !dbg !6079

if.end18:                                         ; preds = %land.lhs.true, %if.end12
  %21 = load ptr, ptr %drbg.addr, align 8, !dbg !6080
  %drbg_mutex19 = getelementptr inbounds %struct.drbg_state, ptr %21, i32 0, i32 0, !dbg !6081
  call void @mutex_unlock(ptr noundef %drbg_mutex19) #18, !dbg !6082
  %22 = load i32, ptr %ret, align 4, !dbg !6083
  store i32 %22, ptr %retval, align 4, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

unlock:                                           ; preds = %if.then7
  call void @llvm.dbg.label(metadata !6011), !dbg !6085
  %23 = load ptr, ptr %drbg.addr, align 8, !dbg !6086
  %drbg_mutex20 = getelementptr inbounds %struct.drbg_state, ptr %23, i32 0, i32 0, !dbg !6087
  call void @mutex_unlock(ptr noundef %drbg_mutex20) #18, !dbg !6088
  %24 = load i32, ptr %ret, align 4, !dbg !6089
  store i32 %24, ptr %retval, align 4, !dbg !6090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

free_everything:                                  ; preds = %if.then17, %if.then10
  call void @llvm.dbg.label(metadata !6012), !dbg !6091
  %25 = load ptr, ptr %drbg.addr, align 8, !dbg !6092
  %drbg_mutex21 = getelementptr inbounds %struct.drbg_state, ptr %25, i32 0, i32 0, !dbg !6093
  call void @mutex_unlock(ptr noundef %drbg_mutex21) #18, !dbg !6094
  %26 = load ptr, ptr %drbg.addr, align 8, !dbg !6095
  %call22 = call i32 @drbg_uninstantiate(ptr noundef %26) #18, !dbg !6096
  %27 = load i32, ptr %ret, align 4, !dbg !6097
  store i32 %27, ptr %retval, align 4, !dbg !6098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6098

cleanup:                                          ; preds = %free_everything, %unlock, %if.end18
  call void @llvm.lifetime.end.p0(i64 1, ptr %reseed) #20, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6099
  %28 = load i32, ptr %retval, align 4, !dbg !6099
  ret i32 %28, !dbg !6099
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6100 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_alloc_state(ptr noundef %drbg) #7 align 16 !dbg !6103 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %sb_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6105, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6106, metadata !DIExpression()), !dbg !6112
  store i32 -12, ptr %ret, align 4, !dbg !6112
  call void @llvm.lifetime.start.p0(i64 4, ptr %sb_size) #20, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %sb_size, metadata !6107, metadata !DIExpression()), !dbg !6114
  store i32 0, ptr %sb_size, align 4, !dbg !6114
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6115
  %core = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24, !dbg !6116
  %1 = load ptr, ptr %core, align 8, !dbg !6116
  %flags = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 0, !dbg !6117
  %2 = load i32, ptr %flags, align 4, !dbg !6117
  %and = and i32 %2, 7, !dbg !6118
  switch i32 %and, label %sw.default [
    i32 2, label %sw.bb
  ], !dbg !6119

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !6120
  %d_ops = getelementptr inbounds %struct.drbg_state, ptr %3, i32 0, i32 23, !dbg !6122
  store ptr @drbg_hmac_ops, ptr %d_ops, align 8, !dbg !6123
  br label %sw.epilog, !dbg !6124

sw.default:                                       ; preds = %entry
  store i32 -95, ptr %ret, align 4, !dbg !6125
  br label %err, !dbg !6126

sw.epilog:                                        ; preds = %sw.bb
  %4 = load ptr, ptr %drbg.addr, align 8, !dbg !6127
  %d_ops1 = getelementptr inbounds %struct.drbg_state, ptr %4, i32 0, i32 23, !dbg !6128
  %5 = load ptr, ptr %d_ops1, align 8, !dbg !6128
  %crypto_init = getelementptr inbounds %struct.drbg_state_ops, ptr %5, i32 0, i32 2, !dbg !6129
  %6 = load ptr, ptr %crypto_init, align 8, !dbg !6129
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !6130
  %call = call i32 %6(ptr noundef %7) #18, !dbg !6127
  store i32 %call, ptr %ret, align 4, !dbg !6131
  %8 = load i32, ptr %ret, align 4, !dbg !6132
  %cmp = icmp slt i32 %8, 0, !dbg !6134
  br i1 %cmp, label %if.then, label %if.end, !dbg !6135

if.then:                                          ; preds = %sw.epilog
  br label %err, !dbg !6136

if.end:                                           ; preds = %sw.epilog
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !6137
  %call2 = call zeroext i8 @drbg_statelen(ptr noundef %9) #18, !dbg !6138
  %conv = zext i8 %call2 to i32, !dbg !6138
  %10 = load i32, ptr %ret, align 4, !dbg !6139
  %add = add i32 %conv, %10, !dbg !6140
  %conv3 = sext i32 %add to i64, !dbg !6138
  %call4 = call noalias ptr @kmalloc(i64 noundef %conv3, i32 noundef 3264) #21, !dbg !6141
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !6142
  %Vbuf = getelementptr inbounds %struct.drbg_state, ptr %11, i32 0, i32 2, !dbg !6143
  store ptr %call4, ptr %Vbuf, align 8, !dbg !6144
  %12 = load ptr, ptr %drbg.addr, align 8, !dbg !6145
  %Vbuf5 = getelementptr inbounds %struct.drbg_state, ptr %12, i32 0, i32 2, !dbg !6147
  %13 = load ptr, ptr %Vbuf5, align 8, !dbg !6147
  %tobool = icmp ne ptr %13, null, !dbg !6145
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !6148

if.then6:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !6149
  br label %fini, !dbg !6151

if.end7:                                          ; preds = %if.end
  %14 = load ptr, ptr %drbg.addr, align 8, !dbg !6152
  %Vbuf8 = getelementptr inbounds %struct.drbg_state, ptr %14, i32 0, i32 2, !dbg !6152
  %15 = load ptr, ptr %Vbuf8, align 8, !dbg !6152
  %16 = ptrtoint ptr %15 to i64, !dbg !6152
  %17 = load i32, ptr %ret, align 4, !dbg !6152
  %add9 = add i32 %17, 1, !dbg !6152
  %conv10 = sext i32 %add9 to i64, !dbg !6152
  %sub = sub i64 %conv10, 1, !dbg !6152
  %add11 = add i64 %16, %sub, !dbg !6152
  %18 = load i32, ptr %ret, align 4, !dbg !6152
  %add12 = add i32 %18, 1, !dbg !6152
  %conv13 = sext i32 %add12 to i64, !dbg !6152
  %sub14 = sub i64 %conv13, 1, !dbg !6152
  %not = xor i64 %sub14, -1, !dbg !6152
  %and15 = and i64 %add11, %not, !dbg !6152
  %19 = inttoptr i64 %and15 to ptr, !dbg !6152
  %20 = load ptr, ptr %drbg.addr, align 8, !dbg !6153
  %V = getelementptr inbounds %struct.drbg_state, ptr %20, i32 0, i32 1, !dbg !6154
  store ptr %19, ptr %V, align 8, !dbg !6155
  %21 = load ptr, ptr %drbg.addr, align 8, !dbg !6156
  %call16 = call zeroext i8 @drbg_statelen(ptr noundef %21) #18, !dbg !6157
  %conv17 = zext i8 %call16 to i32, !dbg !6157
  %22 = load i32, ptr %ret, align 4, !dbg !6158
  %add18 = add i32 %conv17, %22, !dbg !6159
  %conv19 = sext i32 %add18 to i64, !dbg !6157
  %call20 = call noalias ptr @kmalloc(i64 noundef %conv19, i32 noundef 3264) #21, !dbg !6160
  %23 = load ptr, ptr %drbg.addr, align 8, !dbg !6161
  %Cbuf = getelementptr inbounds %struct.drbg_state, ptr %23, i32 0, i32 4, !dbg !6162
  store ptr %call20, ptr %Cbuf, align 8, !dbg !6163
  %24 = load ptr, ptr %drbg.addr, align 8, !dbg !6164
  %Cbuf21 = getelementptr inbounds %struct.drbg_state, ptr %24, i32 0, i32 4, !dbg !6166
  %25 = load ptr, ptr %Cbuf21, align 8, !dbg !6166
  %tobool22 = icmp ne ptr %25, null, !dbg !6164
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !6167

if.then23:                                        ; preds = %if.end7
  store i32 -12, ptr %ret, align 4, !dbg !6168
  br label %fini, !dbg !6170

if.end24:                                         ; preds = %if.end7
  %26 = load ptr, ptr %drbg.addr, align 8, !dbg !6171
  %Cbuf25 = getelementptr inbounds %struct.drbg_state, ptr %26, i32 0, i32 4, !dbg !6171
  %27 = load ptr, ptr %Cbuf25, align 8, !dbg !6171
  %28 = ptrtoint ptr %27 to i64, !dbg !6171
  %29 = load i32, ptr %ret, align 4, !dbg !6171
  %add26 = add i32 %29, 1, !dbg !6171
  %conv27 = sext i32 %add26 to i64, !dbg !6171
  %sub28 = sub i64 %conv27, 1, !dbg !6171
  %add29 = add i64 %28, %sub28, !dbg !6171
  %30 = load i32, ptr %ret, align 4, !dbg !6171
  %add30 = add i32 %30, 1, !dbg !6171
  %conv31 = sext i32 %add30 to i64, !dbg !6171
  %sub32 = sub i64 %conv31, 1, !dbg !6171
  %not33 = xor i64 %sub32, -1, !dbg !6171
  %and34 = and i64 %add29, %not33, !dbg !6171
  %31 = inttoptr i64 %and34 to ptr, !dbg !6171
  %32 = load ptr, ptr %drbg.addr, align 8, !dbg !6172
  %C = getelementptr inbounds %struct.drbg_state, ptr %32, i32 0, i32 3, !dbg !6173
  store ptr %31, ptr %C, align 8, !dbg !6174
  %33 = load ptr, ptr %drbg.addr, align 8, !dbg !6175
  %core35 = getelementptr inbounds %struct.drbg_state, ptr %33, i32 0, i32 24, !dbg !6177
  %34 = load ptr, ptr %core35, align 8, !dbg !6177
  %flags36 = getelementptr inbounds %struct.drbg_core, ptr %34, i32 0, i32 0, !dbg !6178
  %35 = load i32, ptr %flags36, align 4, !dbg !6178
  %and37 = and i32 %35, 2, !dbg !6179
  %tobool38 = icmp ne i32 %and37, 0, !dbg !6179
  br i1 %tobool38, label %if.then39, label %if.else, !dbg !6180

if.then39:                                        ; preds = %if.end24
  store i32 0, ptr %sb_size, align 4, !dbg !6181
  br label %if.end72, !dbg !6182

if.else:                                          ; preds = %if.end24
  %36 = load ptr, ptr %drbg.addr, align 8, !dbg !6183
  %core40 = getelementptr inbounds %struct.drbg_state, ptr %36, i32 0, i32 24, !dbg !6185
  %37 = load ptr, ptr %core40, align 8, !dbg !6185
  %flags41 = getelementptr inbounds %struct.drbg_core, ptr %37, i32 0, i32 0, !dbg !6186
  %38 = load i32, ptr %flags41, align 4, !dbg !6186
  %and42 = and i32 %38, 1, !dbg !6187
  %tobool43 = icmp ne i32 %and42, 0, !dbg !6187
  br i1 %tobool43, label %if.then44, label %if.else65, !dbg !6188

if.then44:                                        ; preds = %if.else
  %39 = load ptr, ptr %drbg.addr, align 8, !dbg !6189
  %call45 = call zeroext i8 @drbg_statelen(ptr noundef %39) #18, !dbg !6190
  %conv46 = zext i8 %call45 to i32, !dbg !6190
  %40 = load ptr, ptr %drbg.addr, align 8, !dbg !6191
  %call47 = call zeroext i8 @drbg_blocklen(ptr noundef %40) #18, !dbg !6192
  %conv48 = zext i8 %call47 to i32, !dbg !6192
  %add49 = add i32 %conv46, %conv48, !dbg !6193
  %41 = load ptr, ptr %drbg.addr, align 8, !dbg !6194
  %call50 = call zeroext i8 @drbg_statelen(ptr noundef %41) #18, !dbg !6195
  %conv51 = zext i8 %call50 to i32, !dbg !6195
  %add52 = add i32 %add49, %conv51, !dbg !6196
  %42 = load ptr, ptr %drbg.addr, align 8, !dbg !6197
  %call53 = call zeroext i8 @drbg_blocklen(ptr noundef %42) #18, !dbg !6198
  %conv54 = zext i8 %call53 to i32, !dbg !6198
  %add55 = add i32 %add52, %conv54, !dbg !6199
  %43 = load ptr, ptr %drbg.addr, align 8, !dbg !6200
  %call56 = call zeroext i8 @drbg_blocklen(ptr noundef %43) #18, !dbg !6201
  %conv57 = zext i8 %call56 to i32, !dbg !6201
  %add58 = add i32 %add55, %conv57, !dbg !6202
  %44 = load ptr, ptr %drbg.addr, align 8, !dbg !6203
  %call59 = call zeroext i8 @drbg_statelen(ptr noundef %44) #18, !dbg !6204
  %conv60 = zext i8 %call59 to i32, !dbg !6204
  %add61 = add i32 %add58, %conv60, !dbg !6205
  %45 = load ptr, ptr %drbg.addr, align 8, !dbg !6206
  %call62 = call zeroext i8 @drbg_blocklen(ptr noundef %45) #18, !dbg !6207
  %conv63 = zext i8 %call62 to i32, !dbg !6207
  %add64 = add i32 %add61, %conv63, !dbg !6208
  store i32 %add64, ptr %sb_size, align 4, !dbg !6209
  br label %if.end71, !dbg !6210

if.else65:                                        ; preds = %if.else
  %46 = load ptr, ptr %drbg.addr, align 8, !dbg !6211
  %call66 = call zeroext i8 @drbg_statelen(ptr noundef %46) #18, !dbg !6212
  %conv67 = zext i8 %call66 to i32, !dbg !6212
  %47 = load ptr, ptr %drbg.addr, align 8, !dbg !6213
  %call68 = call zeroext i8 @drbg_blocklen(ptr noundef %47) #18, !dbg !6214
  %conv69 = zext i8 %call68 to i32, !dbg !6214
  %add70 = add i32 %conv67, %conv69, !dbg !6215
  store i32 %add70, ptr %sb_size, align 4, !dbg !6216
  br label %if.end71

if.end71:                                         ; preds = %if.else65, %if.then44
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then39
  %48 = load i32, ptr %sb_size, align 4, !dbg !6217
  %cmp73 = icmp ult i32 0, %48, !dbg !6219
  br i1 %cmp73, label %if.then75, label %if.end93, !dbg !6220

if.then75:                                        ; preds = %if.end72
  %49 = load i32, ptr %sb_size, align 4, !dbg !6221
  %50 = load i32, ptr %ret, align 4, !dbg !6223
  %add76 = add i32 %49, %50, !dbg !6224
  %conv77 = zext i32 %add76 to i64, !dbg !6221
  %call78 = call noalias ptr @kzalloc(i64 noundef %conv77, i32 noundef 3264) #21, !dbg !6225
  %51 = load ptr, ptr %drbg.addr, align 8, !dbg !6226
  %scratchpadbuf = getelementptr inbounds %struct.drbg_state, ptr %51, i32 0, i32 8, !dbg !6227
  store ptr %call78, ptr %scratchpadbuf, align 8, !dbg !6228
  %52 = load ptr, ptr %drbg.addr, align 8, !dbg !6229
  %scratchpadbuf79 = getelementptr inbounds %struct.drbg_state, ptr %52, i32 0, i32 8, !dbg !6231
  %53 = load ptr, ptr %scratchpadbuf79, align 8, !dbg !6231
  %tobool80 = icmp ne ptr %53, null, !dbg !6229
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !6232

if.then81:                                        ; preds = %if.then75
  store i32 -12, ptr %ret, align 4, !dbg !6233
  br label %fini, !dbg !6235

if.end82:                                         ; preds = %if.then75
  %54 = load ptr, ptr %drbg.addr, align 8, !dbg !6236
  %scratchpadbuf83 = getelementptr inbounds %struct.drbg_state, ptr %54, i32 0, i32 8, !dbg !6236
  %55 = load ptr, ptr %scratchpadbuf83, align 8, !dbg !6236
  %56 = ptrtoint ptr %55 to i64, !dbg !6236
  %57 = load i32, ptr %ret, align 4, !dbg !6236
  %add84 = add i32 %57, 1, !dbg !6236
  %conv85 = sext i32 %add84 to i64, !dbg !6236
  %sub86 = sub i64 %conv85, 1, !dbg !6236
  %add87 = add i64 %56, %sub86, !dbg !6236
  %58 = load i32, ptr %ret, align 4, !dbg !6236
  %add88 = add i32 %58, 1, !dbg !6236
  %conv89 = sext i32 %add88 to i64, !dbg !6236
  %sub90 = sub i64 %conv89, 1, !dbg !6236
  %not91 = xor i64 %sub90, -1, !dbg !6236
  %and92 = and i64 %add87, %not91, !dbg !6236
  %59 = inttoptr i64 %and92 to ptr, !dbg !6236
  %60 = load ptr, ptr %drbg.addr, align 8, !dbg !6237
  %scratchpad = getelementptr inbounds %struct.drbg_state, ptr %60, i32 0, i32 7, !dbg !6238
  store ptr %59, ptr %scratchpad, align 8, !dbg !6239
  br label %if.end93, !dbg !6240

if.end93:                                         ; preds = %if.end82, %if.end72
  store i32 0, ptr %retval, align 4, !dbg !6241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6241

fini:                                             ; preds = %if.then81, %if.then23, %if.then6
  call void @llvm.dbg.label(metadata !6108), !dbg !6242
  %61 = load ptr, ptr %drbg.addr, align 8, !dbg !6243
  %d_ops94 = getelementptr inbounds %struct.drbg_state, ptr %61, i32 0, i32 23, !dbg !6244
  %62 = load ptr, ptr %d_ops94, align 8, !dbg !6244
  %crypto_fini = getelementptr inbounds %struct.drbg_state_ops, ptr %62, i32 0, i32 3, !dbg !6245
  %63 = load ptr, ptr %crypto_fini, align 8, !dbg !6245
  %64 = load ptr, ptr %drbg.addr, align 8, !dbg !6246
  %call95 = call i32 %63(ptr noundef %64) #18, !dbg !6243
  br label %err, !dbg !6243

err:                                              ; preds = %fini, %if.then, %sw.default
  call void @llvm.dbg.label(metadata !6109), !dbg !6247
  %65 = load ptr, ptr %drbg.addr, align 8, !dbg !6248
  call void @drbg_dealloc_state(ptr noundef %65) #18, !dbg !6249
  %66 = load i32, ptr %ret, align 4, !dbg !6250
  store i32 %66, ptr %retval, align 4, !dbg !6251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6251

cleanup:                                          ; preds = %err, %if.end93
  call void @llvm.lifetime.end.p0(i64 4, ptr %sb_size) #20, !dbg !6252
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6252
  %67 = load i32, ptr %retval, align 4, !dbg !6252
  ret i32 %67, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_prepare_hrng(ptr noundef %drbg) #6 align 16 !dbg !6253 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6255, metadata !DIExpression()), !dbg !6259
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6260
  %test_data = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 25, !dbg !6262
  %list = getelementptr inbounds %struct.drbg_string, ptr %test_data, i32 0, i32 2, !dbg !6263
  %call = call i32 @list_empty(ptr noundef %list) #18, !dbg !6264
  %tobool = icmp ne i32 %call, 0, !dbg !6264
  br i1 %tobool, label %if.then, label %if.end, !dbg !6265

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

if.end:                                           ; preds = %entry
  %call1 = call ptr @crypto_alloc_rng(ptr noundef @.str.7, i32 noundef 0, i32 noundef 0) #18, !dbg !6267
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !6268
  %jent = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 22, !dbg !6269
  store ptr %call1, ptr %jent, align 8, !dbg !6270
  %2 = load ptr, ptr %drbg.addr, align 8, !dbg !6271
  %jent2 = getelementptr inbounds %struct.drbg_state, ptr %2, i32 0, i32 22, !dbg !6272
  %3 = load ptr, ptr %jent2, align 8, !dbg !6272
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %3) #18, !dbg !6273
  br i1 %call3, label %if.then4, label %if.end9, !dbg !6274

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6256, metadata !DIExpression()), !dbg !6276
  %4 = load ptr, ptr %drbg.addr, align 8, !dbg !6277
  %jent5 = getelementptr inbounds %struct.drbg_state, ptr %4, i32 0, i32 22, !dbg !6278
  %5 = load ptr, ptr %jent5, align 8, !dbg !6278
  %call6 = call i64 @PTR_ERR(ptr noundef %5) #18, !dbg !6279
  %conv = trunc i64 %call6 to i32, !dbg !6279
  store i32 %conv, ptr %err, align 4, !dbg !6276
  %6 = load ptr, ptr %drbg.addr, align 8, !dbg !6280
  %jent7 = getelementptr inbounds %struct.drbg_state, ptr %6, i32 0, i32 22, !dbg !6281
  store ptr null, ptr %jent7, align 8, !dbg !6282
  br label %do.body, !dbg !6283

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !6285

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6285

do.end:                                           ; preds = %do.cond
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #19, !dbg !6283
  store i32 %call8, ptr %tmp, align 4, !dbg !6285
  %7 = load i32, ptr %tmp, align 4, !dbg !6283
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !6287
  br label %if.end9, !dbg !6288

if.end9:                                          ; preds = %do.end, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6289
  br label %return, !dbg !6289

return:                                           ; preds = %if.end9, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6290
  ret i32 %8, !dbg !6290
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6291 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6295, metadata !DIExpression()), !dbg !6300
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6296, metadata !DIExpression()), !dbg !6301
  %0 = load i64, ptr %size.addr, align 8, !dbg !6302
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6303
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6304

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6305
  %tobool = icmp ne i64 %2, 0, !dbg !6305
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6306

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6297, metadata !DIExpression()), !dbg !6308
  %3 = load i64, ptr %size.addr, align 8, !dbg !6309
  %cmp = icmp ugt i64 %3, 8192, !dbg !6311
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6312

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6313
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6314
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !6315
  store ptr %call, ptr %retval, align 8, !dbg !6316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6316

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6317
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6317
  store i32 %call2, ptr %index, align 4, !dbg !6318
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6319
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6320
  %9 = ptrtoint ptr %8 to i64, !dbg !6320
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6321
  %idxprom = zext i32 %call3 to i64, !dbg !6322
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6322
  %10 = load i32, ptr %index, align 4, !dbg !6323
  %idxprom4 = zext i32 %10 to i64, !dbg !6322
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6322
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6322
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6324
  %13 = load i64, ptr %size.addr, align 8, !dbg !6325
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6326
  store ptr %call6, ptr %retval, align 8, !dbg !6327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !6328
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6329
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6330
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !6331
  store ptr %call8, ptr %retval, align 8, !dbg !6332
  br label %return, !dbg !6332

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6333
  ret ptr %16, !dbg !6333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @drbg_blocklen(ptr noundef %drbg) #7 align 16 !dbg !6334 {
entry:
  %retval = alloca i8, align 1
  %drbg.addr = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6338
  %tobool = icmp ne ptr %0, null, !dbg !6338
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6340

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !6341
  %core = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 24, !dbg !6342
  %2 = load ptr, ptr %core, align 8, !dbg !6342
  %tobool1 = icmp ne ptr %2, null, !dbg !6341
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6343

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !6344
  %core2 = getelementptr inbounds %struct.drbg_state, ptr %3, i32 0, i32 24, !dbg !6345
  %4 = load ptr, ptr %core2, align 8, !dbg !6345
  %blocklen_bytes = getelementptr inbounds %struct.drbg_core, ptr %4, i32 0, i32 2, !dbg !6346
  %5 = load i8, ptr %blocklen_bytes, align 1, !dbg !6346
  store i8 %5, ptr %retval, align 1, !dbg !6347
  br label %return, !dbg !6347

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8 0, ptr %retval, align 1, !dbg !6348
  br label %return, !dbg !6348

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, ptr %retval, align 1, !dbg !6349
  ret i8 %6, !dbg !6349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6350 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6352, metadata !DIExpression()), !dbg !6354
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6353, metadata !DIExpression()), !dbg !6355
  %0 = load i64, ptr %size.addr, align 8, !dbg !6356
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6357
  %or = or i32 %1, 256, !dbg !6358
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !6359
  ret ptr %call, !dbg !6360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_hmac_update(ptr noundef %drbg, ptr noundef %seed, i32 noundef %reseed) #6 align 16 !dbg !6361 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %reseed.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %seed1 = alloca %struct.drbg_string, align 8
  %seed2 = alloca %struct.drbg_string, align 8
  %vdata = alloca %struct.drbg_string, align 8
  %seedlist = alloca %struct.list_head, align 8
  %vdatalist = alloca %struct.list_head, align 8
  %prefix = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6363, metadata !DIExpression()), !dbg !6377
  store ptr %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !6364, metadata !DIExpression()), !dbg !6378
  store i32 %reseed, ptr %reseed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reseed.addr, metadata !6365, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6366, metadata !DIExpression()), !dbg !6381
  store i32 -14, ptr %ret, align 4, !dbg !6381
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6367, metadata !DIExpression()), !dbg !6383
  store i32 0, ptr %i, align 4, !dbg !6383
  call void @llvm.lifetime.start.p0(i64 32, ptr %seed1) #20, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %seed1, metadata !6368, metadata !DIExpression()), !dbg !6385
  call void @llvm.lifetime.start.p0(i64 32, ptr %seed2) #20, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %seed2, metadata !6369, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdata) #20, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %vdata, metadata !6370, metadata !DIExpression()), !dbg !6387
  call void @llvm.lifetime.start.p0(i64 16, ptr %seedlist) #20, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %seedlist, metadata !6371, metadata !DIExpression()), !dbg !6388
  %next = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 0, !dbg !6388
  store ptr %seedlist, ptr %next, align 8, !dbg !6388
  %prev = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 1, !dbg !6388
  store ptr %seedlist, ptr %prev, align 8, !dbg !6388
  call void @llvm.lifetime.start.p0(i64 16, ptr %vdatalist) #20, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %vdatalist, metadata !6372, metadata !DIExpression()), !dbg !6389
  %next1 = getelementptr inbounds %struct.list_head, ptr %vdatalist, i32 0, i32 0, !dbg !6389
  store ptr %vdatalist, ptr %next1, align 8, !dbg !6389
  %prev2 = getelementptr inbounds %struct.list_head, ptr %vdatalist, i32 0, i32 1, !dbg !6389
  store ptr %vdatalist, ptr %prev2, align 8, !dbg !6389
  %0 = load i32, ptr %reseed.addr, align 4, !dbg !6390
  %tobool = icmp ne i32 %0, 0, !dbg !6390
  br i1 %tobool, label %if.end, label %if.then, !dbg !6392

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %drbg.addr, align 8, !dbg !6393
  %V = getelementptr inbounds %struct.drbg_state, ptr %1, i32 0, i32 1, !dbg !6395
  %2 = load ptr, ptr %V, align 8, !dbg !6395
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !6396
  %call = call zeroext i8 @drbg_statelen(ptr noundef %3) #18, !dbg !6397
  %conv = zext i8 %call to i64, !dbg !6397
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 1, i64 %conv, i1 false), !dbg !6398
  %4 = load ptr, ptr %drbg.addr, align 8, !dbg !6399
  %5 = load ptr, ptr %drbg.addr, align 8, !dbg !6400
  %C = getelementptr inbounds %struct.drbg_state, ptr %5, i32 0, i32 3, !dbg !6401
  %6 = load ptr, ptr %C, align 8, !dbg !6401
  call void @drbg_kcapi_hmacsetkey(ptr noundef %4, ptr noundef %6) #18, !dbg !6402
  br label %if.end, !dbg !6403

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !6404
  %V3 = getelementptr inbounds %struct.drbg_state, ptr %7, i32 0, i32 1, !dbg !6405
  %8 = load ptr, ptr %V3, align 8, !dbg !6405
  %9 = load ptr, ptr %drbg.addr, align 8, !dbg !6406
  %call4 = call zeroext i8 @drbg_statelen(ptr noundef %9) #18, !dbg !6407
  %conv5 = zext i8 %call4 to i64, !dbg !6407
  call void @drbg_string_fill(ptr noundef %seed1, ptr noundef %8, i64 noundef %conv5) #18, !dbg !6408
  %list = getelementptr inbounds %struct.drbg_string, ptr %seed1, i32 0, i32 2, !dbg !6409
  call void @list_add_tail(ptr noundef %list, ptr noundef %seedlist) #18, !dbg !6410
  call void @drbg_string_fill(ptr noundef %seed2, ptr noundef null, i64 noundef 1) #18, !dbg !6411
  %list6 = getelementptr inbounds %struct.drbg_string, ptr %seed2, i32 0, i32 2, !dbg !6412
  call void @list_add_tail(ptr noundef %list6, ptr noundef %seedlist) #18, !dbg !6413
  %10 = load ptr, ptr %seed.addr, align 8, !dbg !6414
  %tobool7 = icmp ne ptr %10, null, !dbg !6414
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6416

if.then8:                                         ; preds = %if.end
  %11 = load ptr, ptr %seed.addr, align 8, !dbg !6417
  call void @list_splice_tail(ptr noundef %11, ptr noundef %seedlist) #18, !dbg !6418
  br label %if.end9, !dbg !6418

if.end9:                                          ; preds = %if.then8, %if.end
  %12 = load ptr, ptr %drbg.addr, align 8, !dbg !6419
  %V10 = getelementptr inbounds %struct.drbg_state, ptr %12, i32 0, i32 1, !dbg !6420
  %13 = load ptr, ptr %V10, align 8, !dbg !6420
  %14 = load ptr, ptr %drbg.addr, align 8, !dbg !6421
  %call11 = call zeroext i8 @drbg_statelen(ptr noundef %14) #18, !dbg !6422
  %conv12 = zext i8 %call11 to i64, !dbg !6422
  call void @drbg_string_fill(ptr noundef %vdata, ptr noundef %13, i64 noundef %conv12) #18, !dbg !6423
  %list13 = getelementptr inbounds %struct.drbg_string, ptr %vdata, i32 0, i32 2, !dbg !6424
  call void @list_add_tail(ptr noundef %list13, ptr noundef %vdatalist) #18, !dbg !6425
  store i32 2, ptr %i, align 4, !dbg !6426
  br label %for.cond, !dbg !6427

for.cond:                                         ; preds = %for.inc, %if.end9
  %15 = load i32, ptr %i, align 4, !dbg !6428
  %cmp = icmp slt i32 0, %15, !dbg !6429
  br i1 %cmp, label %for.body, label %for.end, !dbg !6430

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %prefix) #20, !dbg !6431
  call void @llvm.dbg.declare(metadata ptr %prefix, metadata !6373, metadata !DIExpression()), !dbg !6432
  store i8 0, ptr %prefix, align 1, !dbg !6432
  %16 = load i32, ptr %i, align 4, !dbg !6433
  %cmp15 = icmp eq i32 1, %16, !dbg !6435
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !6436

if.then17:                                        ; preds = %for.body
  store i8 1, ptr %prefix, align 1, !dbg !6437
  br label %if.end18, !dbg !6438

if.end18:                                         ; preds = %if.then17, %for.body
  %buf = getelementptr inbounds %struct.drbg_string, ptr %seed2, i32 0, i32 0, !dbg !6439
  store ptr %prefix, ptr %buf, align 8, !dbg !6440
  %17 = load ptr, ptr %drbg.addr, align 8, !dbg !6441
  %18 = load ptr, ptr %drbg.addr, align 8, !dbg !6442
  %C19 = getelementptr inbounds %struct.drbg_state, ptr %18, i32 0, i32 3, !dbg !6443
  %19 = load ptr, ptr %C19, align 8, !dbg !6443
  %call20 = call i32 @drbg_kcapi_hash(ptr noundef %17, ptr noundef %19, ptr noundef %seedlist) #18, !dbg !6444
  store i32 %call20, ptr %ret, align 4, !dbg !6445
  %20 = load i32, ptr %ret, align 4, !dbg !6446
  %tobool21 = icmp ne i32 %20, 0, !dbg !6446
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6448

if.then22:                                        ; preds = %if.end18
  %21 = load i32, ptr %ret, align 4, !dbg !6449
  store i32 %21, ptr %retval, align 4, !dbg !6450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6450

if.end23:                                         ; preds = %if.end18
  %22 = load ptr, ptr %drbg.addr, align 8, !dbg !6451
  %23 = load ptr, ptr %drbg.addr, align 8, !dbg !6452
  %C24 = getelementptr inbounds %struct.drbg_state, ptr %23, i32 0, i32 3, !dbg !6453
  %24 = load ptr, ptr %C24, align 8, !dbg !6453
  call void @drbg_kcapi_hmacsetkey(ptr noundef %22, ptr noundef %24) #18, !dbg !6454
  %25 = load ptr, ptr %drbg.addr, align 8, !dbg !6455
  %26 = load ptr, ptr %drbg.addr, align 8, !dbg !6456
  %V25 = getelementptr inbounds %struct.drbg_state, ptr %26, i32 0, i32 1, !dbg !6457
  %27 = load ptr, ptr %V25, align 8, !dbg !6457
  %call26 = call i32 @drbg_kcapi_hash(ptr noundef %25, ptr noundef %27, ptr noundef %vdatalist) #18, !dbg !6458
  store i32 %call26, ptr %ret, align 4, !dbg !6459
  %28 = load i32, ptr %ret, align 4, !dbg !6460
  %tobool27 = icmp ne i32 %28, 0, !dbg !6460
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6462

if.then28:                                        ; preds = %if.end23
  %29 = load i32, ptr %ret, align 4, !dbg !6463
  store i32 %29, ptr %retval, align 4, !dbg !6464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6464

if.end29:                                         ; preds = %if.end23
  %30 = load ptr, ptr %seed.addr, align 8, !dbg !6465
  %tobool30 = icmp ne ptr %30, null, !dbg !6465
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !6467

if.then31:                                        ; preds = %if.end29
  %31 = load i32, ptr %ret, align 4, !dbg !6468
  store i32 %31, ptr %retval, align 4, !dbg !6469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6469

if.end32:                                         ; preds = %if.end29
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6470
  br label %cleanup, !dbg !6470

cleanup:                                          ; preds = %if.end32, %if.then31, %if.then28, %if.then22
  call void @llvm.lifetime.end.p0(i64 1, ptr %prefix) #20, !dbg !6470
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6471

for.inc:                                          ; preds = %cleanup.cont
  %32 = load i32, ptr %i, align 4, !dbg !6472
  %dec = add i32 %32, -1, !dbg !6472
  store i32 %dec, ptr %i, align 4, !dbg !6472
  br label %for.cond, !dbg !6473, !llvm.loop !6474

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !6476

cleanup33:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %vdatalist) #20, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 16, ptr %seedlist) #20, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdata) #20, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 32, ptr %seed2) #20, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 32, ptr %seed1) #20, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6477
  %33 = load i32, ptr %retval, align 4, !dbg !6477
  ret i32 %33, !dbg !6477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_hmac_generate(ptr noundef %drbg, ptr noundef %buf, i32 noundef %buflen, ptr noundef %addtl) #6 align 16 !dbg !6478 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %addtl.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %data = alloca %struct.drbg_string, align 8
  %datalist = alloca %struct.list_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %outlen = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6480, metadata !DIExpression()), !dbg !6490
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6481, metadata !DIExpression()), !dbg !6491
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6482, metadata !DIExpression()), !dbg !6492
  store ptr %addtl, ptr %addtl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addtl.addr, metadata !6483, metadata !DIExpression()), !dbg !6493
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6484, metadata !DIExpression()), !dbg !6495
  store i32 0, ptr %len, align 4, !dbg !6495
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6496
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6485, metadata !DIExpression()), !dbg !6497
  store i32 0, ptr %ret, align 4, !dbg !6497
  call void @llvm.lifetime.start.p0(i64 32, ptr %data) #20, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6486, metadata !DIExpression()), !dbg !6499
  call void @llvm.lifetime.start.p0(i64 16, ptr %datalist) #20, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %datalist, metadata !6487, metadata !DIExpression()), !dbg !6500
  %next = getelementptr inbounds %struct.list_head, ptr %datalist, i32 0, i32 0, !dbg !6500
  store ptr %datalist, ptr %next, align 8, !dbg !6500
  %prev = getelementptr inbounds %struct.list_head, ptr %datalist, i32 0, i32 1, !dbg !6500
  store ptr %datalist, ptr %prev, align 8, !dbg !6500
  %0 = load ptr, ptr %addtl.addr, align 8, !dbg !6501
  %tobool = icmp ne ptr %0, null, !dbg !6501
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !6503

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %addtl.addr, align 8, !dbg !6504
  %call = call i32 @list_empty(ptr noundef %1) #18, !dbg !6505
  %tobool1 = icmp ne i32 %call, 0, !dbg !6505
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !6506

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %drbg.addr, align 8, !dbg !6507
  %3 = load ptr, ptr %addtl.addr, align 8, !dbg !6509
  %call2 = call i32 @drbg_hmac_update(ptr noundef %2, ptr noundef %3, i32 noundef 1) #18, !dbg !6510
  store i32 %call2, ptr %ret, align 4, !dbg !6511
  %4 = load i32, ptr %ret, align 4, !dbg !6512
  %tobool3 = icmp ne i32 %4, 0, !dbg !6512
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6514

if.then4:                                         ; preds = %if.then
  %5 = load i32, ptr %ret, align 4, !dbg !6515
  store i32 %5, ptr %retval, align 4, !dbg !6516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !6516

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !6517

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %6 = load ptr, ptr %drbg.addr, align 8, !dbg !6518
  %V = getelementptr inbounds %struct.drbg_state, ptr %6, i32 0, i32 1, !dbg !6519
  %7 = load ptr, ptr %V, align 8, !dbg !6519
  %8 = load ptr, ptr %drbg.addr, align 8, !dbg !6520
  %call6 = call zeroext i8 @drbg_statelen(ptr noundef %8) #18, !dbg !6521
  %conv = zext i8 %call6 to i64, !dbg !6521
  call void @drbg_string_fill(ptr noundef %data, ptr noundef %7, i64 noundef %conv) #18, !dbg !6522
  %list = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 2, !dbg !6523
  call void @list_add_tail(ptr noundef %list, ptr noundef %datalist) #18, !dbg !6524
  br label %while.cond, !dbg !6525

while.cond:                                       ; preds = %cleanup.cont, %if.end5
  %9 = load i32, ptr %len, align 4, !dbg !6526
  %10 = load i32, ptr %buflen.addr, align 4, !dbg !6527
  %cmp = icmp ult i32 %9, %10, !dbg !6528
  br i1 %cmp, label %while.body, label %while.end, !dbg !6525

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %outlen) #20, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %outlen, metadata !6488, metadata !DIExpression()), !dbg !6530
  store i32 0, ptr %outlen, align 4, !dbg !6530
  %11 = load ptr, ptr %drbg.addr, align 8, !dbg !6531
  %12 = load ptr, ptr %drbg.addr, align 8, !dbg !6532
  %V8 = getelementptr inbounds %struct.drbg_state, ptr %12, i32 0, i32 1, !dbg !6533
  %13 = load ptr, ptr %V8, align 8, !dbg !6533
  %call9 = call i32 @drbg_kcapi_hash(ptr noundef %11, ptr noundef %13, ptr noundef %datalist) #18, !dbg !6534
  store i32 %call9, ptr %ret, align 4, !dbg !6535
  %14 = load i32, ptr %ret, align 4, !dbg !6536
  %tobool10 = icmp ne i32 %14, 0, !dbg !6536
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6538

if.then11:                                        ; preds = %while.body
  %15 = load i32, ptr %ret, align 4, !dbg !6539
  store i32 %15, ptr %retval, align 4, !dbg !6540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6540

if.end12:                                         ; preds = %while.body
  %16 = load ptr, ptr %drbg.addr, align 8, !dbg !6541
  %call13 = call zeroext i8 @drbg_blocklen(ptr noundef %16) #18, !dbg !6542
  %conv14 = zext i8 %call13 to i32, !dbg !6542
  %17 = load i32, ptr %buflen.addr, align 4, !dbg !6543
  %18 = load i32, ptr %len, align 4, !dbg !6544
  %sub = sub i32 %17, %18, !dbg !6545
  %cmp15 = icmp ult i32 %conv14, %sub, !dbg !6546
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !6547

cond.true:                                        ; preds = %if.end12
  %19 = load ptr, ptr %drbg.addr, align 8, !dbg !6548
  %call17 = call zeroext i8 @drbg_blocklen(ptr noundef %19) #18, !dbg !6549
  %conv18 = zext i8 %call17 to i32, !dbg !6549
  br label %cond.end, !dbg !6547

cond.false:                                       ; preds = %if.end12
  %20 = load i32, ptr %buflen.addr, align 4, !dbg !6550
  %21 = load i32, ptr %len, align 4, !dbg !6551
  %sub19 = sub i32 %20, %21, !dbg !6552
  br label %cond.end, !dbg !6547

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %sub19, %cond.false ], !dbg !6547
  store i32 %cond, ptr %outlen, align 4, !dbg !6553
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !6554
  %23 = load i32, ptr %len, align 4, !dbg !6555
  %idx.ext = sext i32 %23 to i64, !dbg !6556
  %add.ptr = getelementptr i8, ptr %22, i64 %idx.ext, !dbg !6556
  %24 = load ptr, ptr %drbg.addr, align 8, !dbg !6557
  %V20 = getelementptr inbounds %struct.drbg_state, ptr %24, i32 0, i32 1, !dbg !6558
  %25 = load ptr, ptr %V20, align 8, !dbg !6558
  %26 = load i32, ptr %outlen, align 4, !dbg !6559
  %conv21 = zext i32 %26 to i64, !dbg !6559
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %25, i64 %conv21, i1 false), !dbg !6560
  %27 = load i32, ptr %outlen, align 4, !dbg !6561
  %28 = load i32, ptr %len, align 4, !dbg !6562
  %add = add i32 %28, %27, !dbg !6562
  store i32 %add, ptr %len, align 4, !dbg !6562
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6563
  br label %cleanup, !dbg !6563

cleanup:                                          ; preds = %cond.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %outlen) #20, !dbg !6563
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6525, !llvm.loop !6564

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %addtl.addr, align 8, !dbg !6565
  %tobool22 = icmp ne ptr %29, null, !dbg !6565
  br i1 %tobool22, label %land.lhs.true23, label %if.else, !dbg !6567

land.lhs.true23:                                  ; preds = %while.end
  %30 = load ptr, ptr %addtl.addr, align 8, !dbg !6568
  %call24 = call i32 @list_empty(ptr noundef %30) #18, !dbg !6569
  %tobool25 = icmp ne i32 %call24, 0, !dbg !6569
  br i1 %tobool25, label %if.else, label %if.then26, !dbg !6570

if.then26:                                        ; preds = %land.lhs.true23
  %31 = load ptr, ptr %drbg.addr, align 8, !dbg !6571
  %32 = load ptr, ptr %addtl.addr, align 8, !dbg !6572
  %call27 = call i32 @drbg_hmac_update(ptr noundef %31, ptr noundef %32, i32 noundef 1) #18, !dbg !6573
  store i32 %call27, ptr %ret, align 4, !dbg !6574
  br label %if.end29, !dbg !6575

if.else:                                          ; preds = %land.lhs.true23, %while.end
  %33 = load ptr, ptr %drbg.addr, align 8, !dbg !6576
  %call28 = call i32 @drbg_hmac_update(ptr noundef %33, ptr noundef null, i32 noundef 1) #18, !dbg !6577
  store i32 %call28, ptr %ret, align 4, !dbg !6578
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %34 = load i32, ptr %ret, align 4, !dbg !6579
  %tobool30 = icmp ne i32 %34, 0, !dbg !6579
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !6581

if.then31:                                        ; preds = %if.end29
  %35 = load i32, ptr %ret, align 4, !dbg !6582
  store i32 %35, ptr %retval, align 4, !dbg !6583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !6583

if.end32:                                         ; preds = %if.end29
  %36 = load i32, ptr %len, align 4, !dbg !6584
  store i32 %36, ptr %retval, align 4, !dbg !6585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !6585

cleanup33:                                        ; preds = %if.end32, %if.then31, %cleanup, %if.then4
  call void @llvm.lifetime.end.p0(i64 16, ptr %datalist) #20, !dbg !6586
  call void @llvm.lifetime.end.p0(i64 32, ptr %data) #20, !dbg !6586
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6586
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !6586
  %37 = load i32, ptr %retval, align 4, !dbg !6586
  ret i32 %37, !dbg !6586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_init_hash_kernel(ptr noundef %drbg) #6 align 16 !dbg !6587 {
entry:
  %retval = alloca i32, align 4
  %drbg.addr = alloca ptr, align 8
  %sdesc = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6589, metadata !DIExpression()), !dbg !6597
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdesc) #20, !dbg !6598
  call void @llvm.dbg.declare(metadata ptr %sdesc, metadata !6590, metadata !DIExpression()), !dbg !6599
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #20, !dbg !6600
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6596, metadata !DIExpression()), !dbg !6601
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6602
  %core = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24, !dbg !6603
  %1 = load ptr, ptr %core, align 8, !dbg !6603
  %backend_cra_name = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 4, !dbg !6604
  %arraydecay = getelementptr inbounds [128 x i8], ptr %backend_cra_name, i64 0, i64 0, !dbg !6602
  %call = call ptr @crypto_alloc_shash(ptr noundef %arraydecay, i32 noundef 0, i32 noundef 0) #18, !dbg !6605
  store ptr %call, ptr %tfm, align 8, !dbg !6606
  %2 = load ptr, ptr %tfm, align 8, !dbg !6607
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #18, !dbg !6609
  br i1 %call1, label %if.then, label %if.end, !dbg !6610

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6611

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6614

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6614

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %drbg.addr, align 8, !dbg !6611
  %core2 = getelementptr inbounds %struct.drbg_state, ptr %3, i32 0, i32 24, !dbg !6611
  %4 = load ptr, ptr %core2, align 8, !dbg !6611
  %backend_cra_name3 = getelementptr inbounds %struct.drbg_core, ptr %4, i32 0, i32 4, !dbg !6611
  %arraydecay4 = getelementptr inbounds [128 x i8], ptr %backend_cra_name3, i64 0, i64 0, !dbg !6611
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %arraydecay4) #19, !dbg !6611
  store i32 %call5, ptr %tmp, align 4, !dbg !6614
  %5 = load i32, ptr %tmp, align 4, !dbg !6611
  %6 = load ptr, ptr %tfm, align 8, !dbg !6616
  %call6 = call i64 @PTR_ERR(ptr noundef %6) #18, !dbg !6617
  %conv = trunc i64 %call6 to i32, !dbg !6617
  store i32 %conv, ptr %retval, align 4, !dbg !6618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6618

if.end:                                           ; preds = %entry
  br label %do.body7, !dbg !6619

do.body7:                                         ; preds = %if.end
  %7 = load ptr, ptr %drbg.addr, align 8, !dbg !6620
  %call8 = call zeroext i8 @drbg_blocklen(ptr noundef %7) #18, !dbg !6620
  %conv9 = zext i8 %call8 to i32, !dbg !6620
  %8 = load ptr, ptr %tfm, align 8, !dbg !6620
  %call10 = call i32 @crypto_shash_digestsize(ptr noundef %8) #18, !dbg !6620
  %cmp = icmp ne i32 %conv9, %call10, !dbg !6620
  %lnot = xor i1 %cmp, true, !dbg !6620
  %lnot12 = xor i1 %lnot, true, !dbg !6620
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !6620
  %conv13 = sext i32 %lnot.ext to i64, !dbg !6620
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6620
  %tobool = icmp ne i64 %expval, 0, !dbg !6620
  br i1 %tobool, label %if.then14, label %if.end24, !dbg !6623

if.then14:                                        ; preds = %do.body7
  br label %do.body15, !dbg !6620

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !6624

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !6626

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6626

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6624

do.body19:                                        ; preds = %do.end18
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 1690, i32 0, i64 12) #20, !dbg !6628, !srcloc !6630
  br label %do.cond20, !dbg !6628

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6628

do.end21:                                         ; preds = %do.cond20
  unreachable, !dbg !6624

do.cond22:                                        ; No predecessors!
  br label %do.end23, !dbg !6624

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !6624

if.end24:                                         ; preds = %do.end23, %do.body7
  br label %do.cond25, !dbg !6623

do.cond25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !6623

do.end26:                                         ; preds = %do.cond25
  %9 = load ptr, ptr %tfm, align 8, !dbg !6631
  %call27 = call i32 @crypto_shash_descsize(ptr noundef %9) #18, !dbg !6632
  %conv28 = zext i32 %call27 to i64, !dbg !6632
  %add = add i64 8, %conv28, !dbg !6633
  %call29 = call noalias ptr @kzalloc(i64 noundef %add, i32 noundef 3264) #21, !dbg !6634
  store ptr %call29, ptr %sdesc, align 8, !dbg !6635
  %10 = load ptr, ptr %sdesc, align 8, !dbg !6636
  %tobool30 = icmp ne ptr %10, null, !dbg !6636
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !6638

if.then31:                                        ; preds = %do.end26
  %11 = load ptr, ptr %tfm, align 8, !dbg !6639
  call void @crypto_free_shash(ptr noundef %11) #18, !dbg !6641
  store i32 -12, ptr %retval, align 4, !dbg !6642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6642

if.end32:                                         ; preds = %do.end26
  %12 = load ptr, ptr %tfm, align 8, !dbg !6643
  %13 = load ptr, ptr %sdesc, align 8, !dbg !6644
  %shash = getelementptr inbounds %struct.sdesc, ptr %13, i32 0, i32 0, !dbg !6645
  %tfm33 = getelementptr inbounds %struct.shash_desc, ptr %shash, i32 0, i32 0, !dbg !6646
  store ptr %12, ptr %tfm33, align 8, !dbg !6647
  %14 = load ptr, ptr %sdesc, align 8, !dbg !6648
  %15 = load ptr, ptr %drbg.addr, align 8, !dbg !6649
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %15, i32 0, i32 9, !dbg !6650
  store ptr %14, ptr %priv_data, align 8, !dbg !6651
  %16 = load ptr, ptr %tfm, align 8, !dbg !6652
  %call34 = call i32 @crypto_shash_alignmask(ptr noundef %16) #18, !dbg !6653
  store i32 %call34, ptr %retval, align 4, !dbg !6654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6654

cleanup:                                          ; preds = %if.end32, %if.then31, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #20, !dbg !6655
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdesc) #20, !dbg !6655
  %17 = load i32, ptr %retval, align 4, !dbg !6655
  ret i32 %17, !dbg !6655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_fini_hash_kernel(ptr noundef %drbg) #6 align 16 !dbg !6656 {
entry:
  %drbg.addr = alloca ptr, align 8
  %sdesc = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6658, metadata !DIExpression()), !dbg !6660
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdesc) #20, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %sdesc, metadata !6659, metadata !DIExpression()), !dbg !6662
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6663
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9, !dbg !6664
  %1 = load ptr, ptr %priv_data, align 8, !dbg !6664
  store ptr %1, ptr %sdesc, align 8, !dbg !6662
  %2 = load ptr, ptr %sdesc, align 8, !dbg !6665
  %tobool = icmp ne ptr %2, null, !dbg !6665
  br i1 %tobool, label %if.then, label %if.end, !dbg !6667

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sdesc, align 8, !dbg !6668
  %shash = getelementptr inbounds %struct.sdesc, ptr %3, i32 0, i32 0, !dbg !6670
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %shash, i32 0, i32 0, !dbg !6671
  %4 = load ptr, ptr %tfm, align 8, !dbg !6671
  call void @crypto_free_shash(ptr noundef %4) #18, !dbg !6672
  %5 = load ptr, ptr %sdesc, align 8, !dbg !6673
  call void @kfree_sensitive(ptr noundef %5) #18, !dbg !6674
  br label %if.end, !dbg !6675

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %drbg.addr, align 8, !dbg !6676
  %priv_data1 = getelementptr inbounds %struct.drbg_state, ptr %6, i32 0, i32 9, !dbg !6677
  store ptr null, ptr %priv_data1, align 8, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdesc) #20, !dbg !6679
  ret i32 0, !dbg !6680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drbg_kcapi_hmacsetkey(ptr noundef %drbg, ptr noundef %key) #6 align 16 !dbg !6681 {
entry:
  %drbg.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %sdesc = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6685, metadata !DIExpression()), !dbg !6688
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6686, metadata !DIExpression()), !dbg !6689
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdesc) #20, !dbg !6690
  call void @llvm.dbg.declare(metadata ptr %sdesc, metadata !6687, metadata !DIExpression()), !dbg !6691
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6692
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9, !dbg !6693
  %1 = load ptr, ptr %priv_data, align 8, !dbg !6693
  store ptr %1, ptr %sdesc, align 8, !dbg !6691
  %2 = load ptr, ptr %sdesc, align 8, !dbg !6694
  %shash = getelementptr inbounds %struct.sdesc, ptr %2, i32 0, i32 0, !dbg !6695
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %shash, i32 0, i32 0, !dbg !6696
  %3 = load ptr, ptr %tfm, align 8, !dbg !6696
  %4 = load ptr, ptr %key.addr, align 8, !dbg !6697
  %5 = load ptr, ptr %drbg.addr, align 8, !dbg !6698
  %call = call zeroext i8 @drbg_statelen(ptr noundef %5) #18, !dbg !6699
  %conv = zext i8 %call to i32, !dbg !6699
  %call1 = call i32 @crypto_shash_setkey(ptr noundef %3, ptr noundef %4, i32 noundef %conv) #18, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdesc) #20, !dbg !6701
  ret void, !dbg !6701
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail(ptr noundef %list, ptr noundef %head) #7 align 16 !dbg !6702 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6704, metadata !DIExpression()), !dbg !6706
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6705, metadata !DIExpression()), !dbg !6707
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6708
  %call = call i32 @list_empty(ptr noundef %0) #18, !dbg !6710
  %tobool = icmp ne i32 %call, 0, !dbg !6710
  br i1 %tobool, label %if.end, label %if.then, !dbg !6711

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6712
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6713
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6714
  %3 = load ptr, ptr %prev, align 8, !dbg !6714
  %4 = load ptr, ptr %head.addr, align 8, !dbg !6715
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #18, !dbg !6716
  br label %if.end, !dbg !6716

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drbg_kcapi_hash(ptr noundef %drbg, ptr noundef %outval, ptr noundef %in) #6 align 16 !dbg !6718 {
entry:
  %drbg.addr = alloca ptr, align 8
  %outval.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %sdesc = alloca ptr, align 8
  %input = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %drbg, ptr %drbg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drbg.addr, metadata !6722, metadata !DIExpression()), !dbg !6733
  store ptr %outval, ptr %outval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outval.addr, metadata !6723, metadata !DIExpression()), !dbg !6734
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !6724, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdesc) #20, !dbg !6736
  call void @llvm.dbg.declare(metadata ptr %sdesc, metadata !6725, metadata !DIExpression()), !dbg !6737
  %0 = load ptr, ptr %drbg.addr, align 8, !dbg !6738
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9, !dbg !6739
  %1 = load ptr, ptr %priv_data, align 8, !dbg !6739
  store ptr %1, ptr %sdesc, align 8, !dbg !6737
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #20, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %input, metadata !6726, metadata !DIExpression()), !dbg !6741
  store ptr null, ptr %input, align 8, !dbg !6741
  %2 = load ptr, ptr %sdesc, align 8, !dbg !6742
  %shash = getelementptr inbounds %struct.sdesc, ptr %2, i32 0, i32 0, !dbg !6743
  %call = call i32 @crypto_shash_init(ptr noundef %shash) #18, !dbg !6744
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !6745
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6727, metadata !DIExpression()), !dbg !6745
  %3 = load ptr, ptr %in.addr, align 8, !dbg !6745
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6745
  %4 = load ptr, ptr %next, align 8, !dbg !6745
  store ptr %4, ptr %__mptr, align 8, !dbg !6745
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6745
  %add.ptr = getelementptr i8, ptr %5, i64 -16, !dbg !6745
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !6746
  %6 = load ptr, ptr %tmp, align 8, !dbg !6745
  store ptr %6, ptr %input, align 8, !dbg !6746
  br label %for.cond, !dbg !6746

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %input, align 8, !dbg !6747
  %list = getelementptr inbounds %struct.drbg_string, ptr %7, i32 0, i32 2, !dbg !6747
  %8 = load ptr, ptr %in.addr, align 8, !dbg !6747
  %cmp = icmp eq ptr %list, %8, !dbg !6747
  %lnot = xor i1 %cmp, true, !dbg !6747
  br i1 %lnot, label %for.body, label %for.end, !dbg !6746

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %sdesc, align 8, !dbg !6748
  %shash1 = getelementptr inbounds %struct.sdesc, ptr %9, i32 0, i32 0, !dbg !6749
  %10 = load ptr, ptr %input, align 8, !dbg !6750
  %buf = getelementptr inbounds %struct.drbg_string, ptr %10, i32 0, i32 0, !dbg !6751
  %11 = load ptr, ptr %buf, align 8, !dbg !6751
  %12 = load ptr, ptr %input, align 8, !dbg !6752
  %len = getelementptr inbounds %struct.drbg_string, ptr %12, i32 0, i32 1, !dbg !6753
  %13 = load i64, ptr %len, align 8, !dbg !6753
  %conv = trunc i64 %13 to i32, !dbg !6752
  %call2 = call i32 @crypto_shash_update(ptr noundef %shash1, ptr noundef %11, i32 noundef %conv) #18, !dbg !6754
  br label %for.inc, !dbg !6754

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #20, !dbg !6755
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !6730, metadata !DIExpression()), !dbg !6755
  %14 = load ptr, ptr %input, align 8, !dbg !6755
  %list4 = getelementptr inbounds %struct.drbg_string, ptr %14, i32 0, i32 2, !dbg !6755
  %next5 = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !6755
  %15 = load ptr, ptr %next5, align 8, !dbg !6755
  store ptr %15, ptr %__mptr3, align 8, !dbg !6755
  %16 = load ptr, ptr %__mptr3, align 8, !dbg !6755
  %add.ptr7 = getelementptr i8, ptr %16, i64 -16, !dbg !6755
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6755
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #20, !dbg !6747
  %17 = load ptr, ptr %tmp6, align 8, !dbg !6755
  store ptr %17, ptr %input, align 8, !dbg !6747
  br label %for.cond, !dbg !6747, !llvm.loop !6756

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %sdesc, align 8, !dbg !6758
  %shash8 = getelementptr inbounds %struct.sdesc, ptr %18, i32 0, i32 0, !dbg !6759
  %19 = load ptr, ptr %outval.addr, align 8, !dbg !6760
  %call9 = call i32 @crypto_shash_final(ptr noundef %shash8, ptr noundef %19) #18, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #20, !dbg !6762
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdesc) #20, !dbg !6762
  ret i32 %call9, !dbg !6763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6764 dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !6765 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6769, metadata !DIExpression()), !dbg !6774
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6770, metadata !DIExpression()), !dbg !6775
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6771, metadata !DIExpression()), !dbg !6776
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #20, !dbg !6777
  call void @llvm.dbg.declare(metadata ptr %first, metadata !6772, metadata !DIExpression()), !dbg !6778
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6779
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6780
  %1 = load ptr, ptr %next1, align 8, !dbg !6780
  store ptr %1, ptr %first, align 8, !dbg !6778
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #20, !dbg !6781
  call void @llvm.dbg.declare(metadata ptr %last, metadata !6773, metadata !DIExpression()), !dbg !6782
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6783
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6784
  %3 = load ptr, ptr %prev2, align 8, !dbg !6784
  store ptr %3, ptr %last, align 8, !dbg !6782
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !6785
  %5 = load ptr, ptr %first, align 8, !dbg !6786
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !6787
  store ptr %4, ptr %prev3, align 8, !dbg !6788
  %6 = load ptr, ptr %first, align 8, !dbg !6789
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6790
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !6791
  store ptr %6, ptr %next4, align 8, !dbg !6792
  %8 = load ptr, ptr %next.addr, align 8, !dbg !6793
  %9 = load ptr, ptr %last, align 8, !dbg !6794
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !6795
  store ptr %8, ptr %next5, align 8, !dbg !6796
  %10 = load ptr, ptr %last, align 8, !dbg !6797
  %11 = load ptr, ptr %next.addr, align 8, !dbg !6798
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !6799
  store ptr %10, ptr %prev6, align 8, !dbg !6800
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #20, !dbg !6801
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #20, !dbg !6801
  ret void, !dbg !6801
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_init(ptr noundef %desc) #7 align 16 !dbg !6802 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6804, metadata !DIExpression()), !dbg !6806
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #20, !dbg !6807
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6805, metadata !DIExpression()), !dbg !6808
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6809
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !6810
  %1 = load ptr, ptr %tfm1, align 8, !dbg !6810
  store ptr %1, ptr %tfm, align 8, !dbg !6808
  %2 = load ptr, ptr %tfm, align 8, !dbg !6811
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #18, !dbg !6813
  %and = and i32 %call, 1, !dbg !6814
  %tobool = icmp ne i32 %and, 0, !dbg !6814
  br i1 %tobool, label %if.then, label %if.end, !dbg !6815

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !6816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6816

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !6817
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #18, !dbg !6818
  %init = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 0, !dbg !6819
  %4 = load ptr, ptr %init, align 8, !dbg !6819
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !6820
  %call3 = call i32 %4(ptr noundef %5) #18, !dbg !6818
  store i32 %call3, ptr %retval, align 4, !dbg !6821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6821

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #20, !dbg !6822
  %6 = load i32, ptr %retval, align 4, !dbg !6822
  ret i32 %6, !dbg !6822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6823 dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6824 dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_get_flags(ptr noundef %tfm) #7 align 16 !dbg !6825 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6829, metadata !DIExpression()), !dbg !6830
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6831
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #18, !dbg !6832
  %call1 = call i32 @crypto_tfm_get_flags(ptr noundef %call) #18, !dbg !6833
  ret i32 %call1, !dbg !6834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_alg(ptr noundef %tfm) #7 align 16 !dbg !6835 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6839, metadata !DIExpression()), !dbg !6840
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6841
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #18, !dbg !6842
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !6843
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !6843
  %call1 = call ptr @__crypto_shash_alg(ptr noundef %1) #18, !dbg !6844
  ret ptr %call1, !dbg !6845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_get_flags(ptr noundef %tfm) #7 align 16 !dbg !6846 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6850, metadata !DIExpression()), !dbg !6851
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6852
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 1, !dbg !6853
  %1 = load i32, ptr %crt_flags, align 4, !dbg !6853
  ret i32 %1, !dbg !6854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_tfm(ptr noundef %tfm) #7 align 16 !dbg !6855 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6859, metadata !DIExpression()), !dbg !6860
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6861
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !6862
  ret ptr %base, !dbg !6863
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_alg(ptr noundef %alg) #7 align 16 !dbg !6864 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6868, metadata !DIExpression()), !dbg !6871
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !6872
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6869, metadata !DIExpression()), !dbg !6872
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6872
  store ptr %0, ptr %__mptr, align 8, !dbg !6872
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6872
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !6872
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6872
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !6873
  %2 = load ptr, ptr %tmp, align 8, !dbg !6872
  ret ptr %2, !dbg !6874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6875 dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !6878 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6880, metadata !DIExpression()), !dbg !6881
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6882
  %1 = ptrtoint ptr %0 to i64, !dbg !6882
  %2 = inttoptr i64 %1 to ptr, !dbg !6882
  %3 = ptrtoint ptr %2 to i64, !dbg !6882
  %cmp = icmp uge i64 %3, -4095, !dbg !6882
  %lnot = xor i1 %cmp, true, !dbg !6882
  %lnot1 = xor i1 %lnot, true, !dbg !6882
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6882
  %conv = sext i32 %lnot.ext to i64, !dbg !6882
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6882
  %tobool = icmp ne i64 %expval, 0, !dbg !6882
  ret i1 %tobool, !dbg !6883
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6884 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !6888 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6892, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6894
  %1 = ptrtoint ptr %0 to i64, !dbg !6895
  ret i64 %1, !dbg !6896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_digestsize(ptr noundef %tfm) #7 align 16 !dbg !6897 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6901, metadata !DIExpression()), !dbg !6902
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6903
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #18, !dbg !6904
  %1 = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 12, !dbg !6905
  %digestsize = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 0, !dbg !6905
  %2 = load i32, ptr %digestsize, align 8, !dbg !6905
  ret i32 %2, !dbg !6906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_descsize(ptr noundef %tfm) #7 align 16 !dbg !6907 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6909, metadata !DIExpression()), !dbg !6910
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6911
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 0, !dbg !6912
  %1 = load i32, ptr %descsize, align 8, !dbg !6912
  ret i32 %1, !dbg !6913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_shash(ptr noundef %tfm) #7 align 16 !dbg !6914 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6916, metadata !DIExpression()), !dbg !6917
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6918
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6919
  %call = call ptr @crypto_shash_tfm(ptr noundef %1) #18, !dbg !6920
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #18, !dbg !6921
  ret void, !dbg !6922
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_alignmask(ptr noundef %tfm) #7 align 16 !dbg !6923 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6925, metadata !DIExpression()), !dbg !6926
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6927
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #18, !dbg !6928
  %call1 = call i32 @crypto_tfm_alg_alignmask(ptr noundef %call) #18, !dbg !6929
  ret i32 %call1, !dbg !6930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_alignmask(ptr noundef %tfm) #7 align 16 !dbg !6931 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6935, metadata !DIExpression()), !dbg !6936
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6937
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !6938
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !6938
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5, !dbg !6939
  %2 = load i32, ptr %cra_alignmask, align 4, !dbg !6939
  ret i32 %2, !dbg !6940
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6941 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #15 align 16 !dbg !6942 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6946, metadata !DIExpression()), !dbg !6948
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6947, metadata !DIExpression()), !dbg !6949
  %0 = load i64, ptr %size.addr, align 8, !dbg !6950
  %tobool = icmp ne i64 %0, 0, !dbg !6950
  br i1 %tobool, label %if.end, label %if.then, !dbg !6952

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6953
  br label %return, !dbg !6953

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6954
  %cmp = icmp ule i64 %1, 8, !dbg !6956
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6957

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6958
  br label %return, !dbg !6958

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6959
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6961
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6962

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6963
  %cmp4 = icmp ule i64 %3, 96, !dbg !6964
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6965

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6966
  br label %return, !dbg !6966

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6967
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6969
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6970

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6971
  %cmp9 = icmp ule i64 %5, 192, !dbg !6972
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6973

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6974
  br label %return, !dbg !6974

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6975
  %cmp12 = icmp ule i64 %6, 8, !dbg !6977
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6978

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6979
  br label %return, !dbg !6979

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6980
  %cmp15 = icmp ule i64 %7, 16, !dbg !6982
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6983

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6984
  br label %return, !dbg !6984

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6985
  %cmp18 = icmp ule i64 %8, 32, !dbg !6987
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6988

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6989
  br label %return, !dbg !6989

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6990
  %cmp21 = icmp ule i64 %9, 64, !dbg !6992
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6993

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6994
  br label %return, !dbg !6994

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6995
  %cmp24 = icmp ule i64 %10, 128, !dbg !6997
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6998

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6999
  br label %return, !dbg !6999

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7000
  %cmp27 = icmp ule i64 %11, 256, !dbg !7002
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7003

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7004
  br label %return, !dbg !7004

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7005
  %cmp30 = icmp ule i64 %12, 512, !dbg !7007
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7008

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7009
  br label %return, !dbg !7009

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7010
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7012
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7013

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7014
  br label %return, !dbg !7014

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7015
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7017
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7018

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7019
  br label %return, !dbg !7019

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7020
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7022
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7023

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7024
  br label %return, !dbg !7024

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7025
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7027
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7028

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7029
  br label %return, !dbg !7029

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7030
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7032
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7033

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7035
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7037
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7038

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7039
  br label %return, !dbg !7039

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7040
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7042
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7043

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7044
  br label %return, !dbg !7044

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7045
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7047
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7048

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7049
  br label %return, !dbg !7049

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7050
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7052
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7053

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7054
  br label %return, !dbg !7054

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7055
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7057
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7058

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7059
  br label %return, !dbg !7059

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7060
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7062
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7063

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7064
  br label %return, !dbg !7064

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7065
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7067
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7068

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7069
  br label %return, !dbg !7069

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7070, !range !4844, !noundef !505
  %tobool69 = trunc i8 %25 to i1, !dbg !7070
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7072

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7073

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #23, !dbg !7074, !srcloc !7077
  unreachable, !dbg !7074

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7078

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7079

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7080

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7082

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7080

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #20, !dbg !7084, !srcloc !7086
  br label %do.end75, !dbg !7084

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7080

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7087
  br label %return, !dbg !7087

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7088
  ret i32 %26, !dbg !7088
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7089 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #15 align 16 !dbg !7095 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7099, metadata !DIExpression()), !dbg !7101
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7100, metadata !DIExpression()), !dbg !7102
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7103
  %and = and i32 %0, 17, !dbg !7103
  %cmp = icmp eq i32 %and, 0, !dbg !7103
  %lnot = xor i1 %cmp, true, !dbg !7103
  %lnot1 = xor i1 %lnot, true, !dbg !7103
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7103
  %conv = sext i32 %lnot.ext to i64, !dbg !7103
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7103
  %tobool = icmp ne i64 %expval, 0, !dbg !7103
  br i1 %tobool, label %if.then, label %if.end, !dbg !7105

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7106
  br label %return, !dbg !7106

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7107
  %and2 = and i32 %1, 1, !dbg !7109
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7109
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7110

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7111
  br label %return, !dbg !7111

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7112
  br label %return, !dbg !7112

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7114
  ret i32 %2, !dbg !7114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7115 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7116 dso_local void @__compiletime_assert_206() #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7117 dso_local ptr @crypto_alloc_rng(ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { nounwind }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559}
!llvm.ident = !{!4560}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace287", scope: !2, file: !3, line: 645, type: !4326, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.drbg.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/drbg\22 -D KBUILD_BASENAME=\22drbg\22 -D KBUILD_MODNAME=\22drbg\22 -D __KBUILD_MODNAME=kmod_drbg -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/drbg.ll crypto/drbg.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !114, globals: !4308, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/drbg.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "287d5606c81f6217a63564baa8be11b4")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !98, !104}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drbg_seed_state", file: !88, line: 108, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/crypto/drbg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e2d72659fe5c947d94a74e9df0ded9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "DRBG_SEED_STATE_UNSEEDED", value: 0)
!91 = !DIEnumerator(name: "DRBG_SEED_STATE_PARTIAL", value: 1)
!92 = !DIEnumerator(name: "DRBG_SEED_STATE_FULL", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0)
!97 = !DIEnumerator(name: "true", value: 1)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drbg_prefixes", file: !88, line: 279, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "DRBG_PREFIX0", value: 0)
!101 = !DIEnumerator(name: "DRBG_PREFIX1", value: 1)
!102 = !DIEnumerator(name: "DRBG_PREFIX2", value: 2)
!103 = !DIEnumerator(name: "DRBG_PREFIX3", value: 3)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !105, line: 364, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!106 = !{!107, !108, !109, !110, !111, !112, !113}
!107 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!108 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!109 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!110 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!111 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!112 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!113 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!114 = !{!115, !116, !117, !272, !4062, !4064, !4065, !4067, !258, !666, !4230, !4231, !4237}
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !119)
!119 = !{!120, !121, !128, !133, !3738, !3764, !3765, !3766, !3767, !3771, !3774, !3775, !3776, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3843, !3847, !3865, !3882, !3883, !3884, !3885, !3894, !3917, !3918, !3921, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3935, !3936, !4022, !4030, !4031, !4032, !4034, !4038, !4039, !4043, !4044, !4045, !4046, !4048, !4049, !4050, !4057, !4058, !4059, !4061}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !118, file: !6, line: 403, baseType: !5, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !118, file: !6, line: 406, baseType: !122, size: 128, offset: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !123, line: 190, size: 128, elements: !124)
!123 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !123, line: 191, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !123, line: 191, baseType: !126, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !6, line: 409, baseType: !129, size: 448, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 448, elements: !131)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !{!132}
!132 = !DISubrange(count: 56)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !118, file: !6, line: 417, baseType: !134, size: 768, offset: 640)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !135)
!135 = !{!136, !3732, !3733, !3734, !3737}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !134, file: !6, line: 46, baseType: !137, size: 512)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !138, line: 64, size: 512, elements: !139)
!138 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!139 = !{!140, !143, !144, !146, !235, !3618, !3722, !3727, !3728, !3729, !3730, !3731}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !138, line: 65, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !137, file: !138, line: 66, baseType: !122, size: 128, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !137, file: !138, line: 67, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !137, file: !138, line: 68, baseType: !147, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !138, line: 168, size: 768, elements: !149)
!149 = !{!150, !151, !194, !195}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !148, file: !138, line: 169, baseType: !122, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !148, file: !138, line: 170, baseType: !152, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !153, line: 29, baseType: !154)
!153 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !153, line: 17, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 18, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 18, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !157, file: !153, line: 19, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !161, line: 14, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !160, file: !161, line: 15, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !165, line: 44, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !165, line: 14, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 15, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 15, size: 32, elements: !170)
!170 = !{!171, !176, !186}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !165, line: 16, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !123, line: 174, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 172, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !173, file: !123, line: 173, baseType: !115, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 24, baseType: !177, size: 16)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 24, size: 16, elements: !178)
!178 = !{!179, !185}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !177, file: !165, line: 25, baseType: !180, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !181, line: 17, baseType: !182)
!181 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !183, line: 21, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!184 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !177, file: !165, line: 26, baseType: !180, size: 8, offset: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 28, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 28, size: 32, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !187, file: !165, line: 29, baseType: !190, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !181, line: 19, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !183, line: 24, baseType: !192)
!192 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !187, file: !165, line: 30, baseType: !190, size: 16, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !148, file: !138, line: 171, baseType: !137, size: 512, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !148, file: !138, line: 172, baseType: !196, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !138, line: 133, size: 192, elements: !199)
!199 = !{!200, !207, !212}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !198, file: !138, line: 134, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!115, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !138, line: 135, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!141, !205}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !198, file: !138, line: 136, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!115, !205, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !138, line: 125, size: 20736, elements: !219)
!219 = !{!220, !225, !229, !230, !234}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !218, file: !138, line: 126, baseType: !221, size: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 192, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!223 = !{!224}
!224 = !DISubrange(count: 3)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !218, file: !138, line: 127, baseType: !226, size: 4096, offset: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 4096, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !218, file: !138, line: 128, baseType: !115, size: 32, offset: 4288)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !218, file: !138, line: 129, baseType: !231, size: 16384, offset: 4320)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 16384, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2048)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !218, file: !138, line: 130, baseType: !115, size: 32, offset: 20704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !137, file: !138, line: 69, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !138, line: 116, size: 384, elements: !239)
!239 = !{!240, !244, !273, !3580, !3608, !3612}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !238, file: !138, line: 117, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !145}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !238, file: !138, line: 118, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !248, line: 254, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!249 = !{!250, !265}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !247, file: !248, line: 255, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !145, !259, !222}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !123, line: 66, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !256, line: 73, baseType: !257)
!256 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !256, line: 15, baseType: !258)
!258 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !248, line: 30, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !248, line: 31, baseType: !141, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !260, file: !248, line: 32, baseType: !264, size: 16, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !123, line: 24, baseType: !192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !247, file: !248, line: 256, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!254, !145, !259, !141, !269}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 61, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !256, line: 72, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !256, line: 16, baseType: !272)
!272 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !238, file: !138, line: 119, baseType: !274, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !248, line: 84, size: 320, elements: !278)
!278 = !{!279, !280, !284, !3576, !3578}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !248, line: 85, baseType: !141, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !277, file: !248, line: 86, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!264, !145, !259, !115}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !277, file: !248, line: 88, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!264, !145, !288, !115}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !248, line: 175, size: 512, elements: !290)
!290 = !{!291, !292, !293, !294, !3567, !3571, !3572}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !289, file: !248, line: 176, baseType: !260, size: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !289, file: !248, line: 177, baseType: !269, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !289, file: !248, line: 178, baseType: !116, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !289, file: !248, line: 179, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !300)
!300 = !{!301, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3561, !3562, !3563, !3564, !3565, !3566}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !299, file: !14, line: 473, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !304)
!304 = !{!305, !306, !307, !315, !316, !323, !324, !327, !328, !3340, !3341, !3342, !3343, !3344, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3384, !3387, !3388, !3389, !3398, !3399, !3400, !3401}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !303, file: !14, line: 642, baseType: !264, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !303, file: !14, line: 643, baseType: !192, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !303, file: !14, line: 644, baseType: !308, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !309, line: 23, baseType: !310)
!309 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 21, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !310, file: !309, line: 22, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !123, line: 37, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !256, line: 49, baseType: !7)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !303, file: !14, line: 645, baseType: !122, size: 128, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !303, file: !14, line: 646, baseType: !317, size: 32, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !309, line: 28, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 26, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !318, file: !309, line: 27, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !123, line: 38, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !256, line: 50, baseType: !7)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !303, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !303, file: !14, line: 650, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !303, file: !14, line: 651, baseType: !325, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !303, file: !14, line: 654, baseType: !329, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !332)
!332 = !{!333, !3165, !3178, !3182, !3186, !3190, !3194, !3198, !3202, !3206, !3210, !3211, !3215, !3219, !3256, !3285, !3289, !3295, !3299, !3303, !3307, !3311, !3315, !3321, !3325}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !331, file: !14, line: 1967, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !302, !337, !7}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !339, line: 82, size: 1536, elements: !340)
!339 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!340 = !{!341, !342, !352, !360, !361, !381, !382, !386, !399, !3148, !3149, !3150, !3151, !3157, !3158, !3159}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !338, file: !339, line: 84, baseType: !7, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !338, file: !339, line: 85, baseType: !343, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !344, line: 275, baseType: !345)
!344 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !344, line: 275, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !345, file: !344, line: 275, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !344, line: 69, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !344, line: 64, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !349, file: !344, line: 65, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !338, file: !339, line: 86, baseType: !353, size: 128, offset: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !354, line: 38, size: 128, elements: !355)
!354 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !354, line: 39, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !353, file: !354, line: 39, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !338, file: !339, line: 87, baseType: !337, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !338, file: !339, line: 88, baseType: !362, size: 128, offset: 256)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !339, line: 49, size: 128, elements: !363)
!363 = !{!364, !378}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !339, line: 50, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !339, line: 50, size: 64, elements: !366)
!366 = !{!367, !374}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !339, line: 51, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !339, line: 51, size: 64, elements: !369)
!369 = !{!370, !373}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !368, file: !339, line: 52, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !181, line: 21, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !183, line: 27, baseType: !7)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !368, file: !339, line: 52, baseType: !371, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !365, file: !339, line: 54, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !181, line: 23, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !183, line: 31, baseType: !377)
!377 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !339, line: 56, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !338, file: !339, line: 89, baseType: !302, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !338, file: !339, line: 91, baseType: !383, size: 256, offset: 448)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !338, file: !339, line: 94, baseType: !387, size: 64, offset: 704)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !388, line: 25, size: 64, elements: !389)
!388 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !388, line: 26, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !388, line: 26, size: 64, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !391, file: !388, line: 28, baseType: !376, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !388, line: 30, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !388, line: 30, size: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !395, file: !388, line: 31, baseType: !152, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !395, file: !388, line: 32, baseType: !115, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !338, file: !339, line: 95, baseType: !400, size: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !339, line: 128, size: 1024, align: 512, elements: !403)
!403 = !{!404, !408, !409, !416, !422, !426, !430, !434, !435, !439, !443, !3138, !3142}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !402, file: !339, line: 129, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!115, !337, !7}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !402, file: !339, line: 130, baseType: !405, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !402, file: !339, line: 131, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!115, !413, !415}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !402, file: !339, line: 132, baseType: !417, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!115, !413, !7, !141, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !402, file: !339, line: 134, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!115, !413}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !402, file: !339, line: 135, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!115, !337}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !402, file: !339, line: 136, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !337}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !402, file: !339, line: 137, baseType: !431, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !402, file: !339, line: 138, baseType: !436, size: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !337, !302}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !402, file: !339, line: 139, baseType: !440, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!222, !337, !222, !115}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !402, file: !339, line: 140, baseType: !444, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !3137}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !449, line: 70, size: 256, elements: !450)
!449 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!450 = !{!451, !452, !3133, !3134}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !448, file: !449, line: 71, baseType: !337, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !448, file: !449, line: 72, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !455)
!455 = !{!456, !457, !460, !461, !462, !466, !514, !675, !715, !805, !809, !810, !811, !812, !813, !822, !823, !824, !825, !830, !834, !835, !838, !841, !844, !847, !848, !849, !890, !3064, !3065, !3066, !3067, !3068, !3069, !3072, !3074, !3081, !3082, !3083, !3084, !3085, !3100, !3101, !3102, !3103, !3104, !3107, !3108, !3109, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !454, file: !14, line: 1191, baseType: !122, size: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !454, file: !14, line: 1192, baseType: !458, size: 32, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !123, line: 21, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !123, line: 18, baseType: !371)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !454, file: !14, line: 1193, baseType: !184, size: 8, offset: 160)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !454, file: !14, line: 1194, baseType: !272, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !454, file: !14, line: 1195, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !123, line: 52, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !256, line: 88, baseType: !465)
!465 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !454, file: !14, line: 1196, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !469)
!469 = !{!470, !471, !472, !478, !482, !486, !490, !491, !492, !502, !506, !507, !508, !510, !511, !512, !513}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !14, line: 2367, baseType: !141, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !468, file: !14, line: 2368, baseType: !115, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !468, file: !14, line: 2376, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!115, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !449, line: 21, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !468, file: !14, line: 2377, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !468, file: !14, line: 2378, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!337, !467, !115, !141, !116}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !468, file: !14, line: 2380, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !453}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !468, file: !14, line: 2381, baseType: !117, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !14, line: 2382, baseType: !467, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !468, file: !14, line: 2383, baseType: !493, size: 64, offset: 512)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !123, line: 194, size: 64, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !493, file: !123, line: 195, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !123, line: 198, size: 128, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !123, line: 199, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !497, file: !123, line: 199, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !468, file: !14, line: 2385, baseType: !503, offset: 576)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !504, line: 206, elements: !505)
!504 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!505 = !{}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !468, file: !14, line: 2386, baseType: !503, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !468, file: !14, line: 2387, baseType: !503, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !468, file: !14, line: 2388, baseType: !509, offset: 576)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, elements: !223)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !468, file: !14, line: 2390, baseType: !503, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !468, file: !14, line: 2391, baseType: !503, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !468, file: !14, line: 2392, baseType: !503, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !468, file: !14, line: 2393, baseType: !503, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !454, file: !14, line: 1197, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !518)
!518 = !{!519, !523, !527, !528, !532, !538, !542, !543, !544, !548, !552, !556, !557, !558, !564, !569, !570, !577, !578, !579, !580, !584, !588, !657, !673, !674}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !517, file: !14, line: 2058, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!302, !453}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !517, file: !14, line: 2059, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !302}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !517, file: !14, line: 2060, baseType: !524, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !517, file: !14, line: 2062, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !302, !115}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !517, file: !14, line: 2063, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!115, !302, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !517, file: !14, line: 2064, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!115, !302}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !517, file: !14, line: 2065, baseType: !524, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !517, file: !14, line: 2066, baseType: !487, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !517, file: !14, line: 2067, baseType: !545, size: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!115, !453, !115}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !517, file: !14, line: 2068, baseType: !549, size: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!115, !453, !13}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !517, file: !14, line: 2069, baseType: !553, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!115, !453}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !517, file: !14, line: 2070, baseType: !549, size: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !517, file: !14, line: 2071, baseType: !553, size: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !517, file: !14, line: 2072, baseType: !559, size: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!115, !337, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !517, file: !14, line: 2073, baseType: !565, size: 64, offset: 896)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!115, !453, !568, !222}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !517, file: !14, line: 2074, baseType: !487, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !517, file: !14, line: 2076, baseType: !571, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!115, !574, !337}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !576, line: 66, flags: DIFlagFwdDecl)
!576 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!577 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !517, file: !14, line: 2077, baseType: !571, size: 64, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !517, file: !14, line: 2078, baseType: !571, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !517, file: !14, line: 2079, baseType: !571, size: 64, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !517, file: !14, line: 2081, baseType: !581, size: 64, offset: 1280)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!254, !453, !115, !222, !269, !463}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !517, file: !14, line: 2082, baseType: !585, size: 64, offset: 1344)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!254, !453, !115, !141, !269, !463}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !517, file: !14, line: 2083, baseType: !589, size: 64, offset: 1408)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!592, !302}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !621, !622, !623, !624, !640, !641, !642}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !594, file: !19, line: 297, baseType: !497, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !594, file: !19, line: 298, baseType: !122, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !594, file: !19, line: 299, baseType: !122, size: 128, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !594, file: !19, line: 300, baseType: !122, size: 128, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !594, file: !19, line: 301, baseType: !601, size: 256, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !602, line: 66, size: 256, elements: !603)
!602 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!603 = !{!604, !613, !615, !620}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !601, file: !602, line: 67, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !606, line: 13, baseType: !607)
!606 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !123, line: 181, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 179, size: 64, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !608, file: !123, line: 180, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !181, line: 22, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !183, line: 30, baseType: !465)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !601, file: !602, line: 68, baseType: !614, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !161, line: 23, baseType: !160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !601, file: !602, line: 70, baseType: !616, size: 32, offset: 96)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !617, line: 15, size: 32, elements: !618)
!617 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !616, file: !617, line: 20, baseType: !172, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !601, file: !602, line: 72, baseType: !122, size: 128, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !594, file: !19, line: 302, baseType: !152, size: 32, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !594, file: !19, line: 303, baseType: !172, size: 32, offset: 800)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !594, file: !19, line: 304, baseType: !453, size: 64, offset: 832)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !594, file: !19, line: 305, baseType: !625, size: 64, offset: 896)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !626)
!626 = !{!627, !639}
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !19, line: 69, baseType: !628, size: 32)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !19, line: 69, size: 32, elements: !629)
!629 = !{!630, !631, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !628, file: !19, line: 70, baseType: !308, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !628, file: !19, line: 71, baseType: !317, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !628, file: !19, line: 72, baseType: !633, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !634, line: 24, baseType: !635)
!634 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 22, size: 32, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !635, file: !634, line: 23, baseType: !638, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !634, line: 20, baseType: !314)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !594, file: !19, line: 306, baseType: !463, size: 64, offset: 960)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !594, file: !19, line: 307, baseType: !272, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !594, file: !19, line: 308, baseType: !643, size: 576, offset: 1088)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !644)
!644 = !{!645, !647, !648, !649, !650, !651, !652, !653, !656}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !643, file: !19, line: 206, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !465)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !643, file: !19, line: 207, baseType: !646, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !643, file: !19, line: 208, baseType: !646, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !643, file: !19, line: 209, baseType: !646, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !643, file: !19, line: 210, baseType: !646, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !643, file: !19, line: 211, baseType: !646, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !643, file: !19, line: 212, baseType: !646, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !643, file: !19, line: 213, baseType: !654, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !655, line: 8, baseType: !612)
!655 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !643, file: !19, line: 214, baseType: !654, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !517, file: !14, line: 2085, baseType: !658, size: 64, offset: 1472)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!258, !453, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !663, line: 15, size: 256, elements: !664)
!663 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!664 = !{!665, !667, !668, !669, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !662, file: !663, line: 16, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !123, line: 154, baseType: !7)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !662, file: !663, line: 19, baseType: !115, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !662, file: !663, line: 26, baseType: !272, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !662, file: !663, line: 33, baseType: !272, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !662, file: !663, line: 36, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !517, file: !14, line: 2087, baseType: !658, size: 64, offset: 1536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !517, file: !14, line: 2089, baseType: !487, size: 64, offset: 1600)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !454, file: !14, line: 1198, baseType: !676, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !679)
!679 = !{!680, !684, !688, !692, !693, !694, !695, !696, !701, !706, !710}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !678, file: !19, line: 325, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!115, !593}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !678, file: !19, line: 326, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!593, !453, !115}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !678, file: !19, line: 327, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !593}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !678, file: !19, line: 328, baseType: !681, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !678, file: !19, line: 329, baseType: !681, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !678, file: !19, line: 330, baseType: !681, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !678, file: !19, line: 331, baseType: !545, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !678, file: !19, line: 334, baseType: !697, size: 64, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!700, !302}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !678, file: !19, line: 335, baseType: !702, size: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!115, !302, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !678, file: !19, line: 337, baseType: !707, size: 64, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!115, !302, !700}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !678, file: !19, line: 339, baseType: !711, size: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!115, !453, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !454, file: !14, line: 1199, baseType: !716, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !719)
!719 = !{!720, !731, !732, !736, !737, !738, !753, !776, !780, !781, !804}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !718, file: !19, line: 431, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!115, !453, !115, !115, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !727, line: 8, size: 128, elements: !728)
!727 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !726, file: !727, line: 9, baseType: !447, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !726, file: !727, line: 10, baseType: !337, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !718, file: !19, line: 432, baseType: !545, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !718, file: !19, line: 433, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!115, !453, !7}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !718, file: !19, line: 434, baseType: !733, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !718, file: !19, line: 435, baseType: !545, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !718, file: !19, line: 436, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!115, !453, !115, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !743, file: !19, line: 418, baseType: !115, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !743, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !743, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !743, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !743, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !743, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !743, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !743, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !718, file: !19, line: 437, baseType: !754, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!115, !453, !625, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !758, file: !19, line: 346, baseType: !115, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !758, file: !19, line: 347, baseType: !375, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !758, file: !19, line: 348, baseType: !375, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !758, file: !19, line: 349, baseType: !375, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !758, file: !19, line: 350, baseType: !375, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !758, file: !19, line: 351, baseType: !375, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !758, file: !19, line: 352, baseType: !375, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !758, file: !19, line: 353, baseType: !611, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !758, file: !19, line: 355, baseType: !611, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !758, file: !19, line: 356, baseType: !115, size: 32, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !758, file: !19, line: 357, baseType: !115, size: 32, offset: 608)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !758, file: !19, line: 358, baseType: !375, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !758, file: !19, line: 359, baseType: !375, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !758, file: !19, line: 360, baseType: !375, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !758, file: !19, line: 361, baseType: !611, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !758, file: !19, line: 362, baseType: !115, size: 32, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !718, file: !19, line: 438, baseType: !777, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!115, !453, !714, !757}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !718, file: !19, line: 440, baseType: !754, size: 64, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !718, file: !19, line: 441, baseType: !782, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!115, !453, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !786, file: !19, line: 412, baseType: !7, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !786, file: !19, line: 413, baseType: !790, size: 1344, offset: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 1344, elements: !223)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !803}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !19, line: 398, baseType: !7, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !791, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !791, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !791, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !791, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !791, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !791, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !791, file: !19, line: 406, baseType: !377, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !791, file: !19, line: 407, baseType: !802, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !123, line: 132, baseType: !375)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !791, file: !19, line: 408, baseType: !802, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !718, file: !19, line: 442, baseType: !733, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !454, file: !14, line: 1200, baseType: !806, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !454, file: !14, line: 1201, baseType: !272, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !454, file: !14, line: 1202, baseType: !272, size: 64, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !454, file: !14, line: 1203, baseType: !272, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !454, file: !14, line: 1204, baseType: !337, size: 64, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !454, file: !14, line: 1205, baseType: !814, size: 320, offset: 896)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !815, line: 48, size: 320, elements: !816)
!815 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!816 = !{!817, !818, !819, !820, !821}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !814, file: !815, line: 49, baseType: !605, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !814, file: !815, line: 55, baseType: !605, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !814, file: !815, line: 57, baseType: !616, size: 32, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !814, file: !815, line: 59, baseType: !614, size: 32, offset: 160)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !814, file: !815, line: 60, baseType: !122, size: 128, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !454, file: !14, line: 1206, baseType: !115, size: 32, offset: 1216)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !454, file: !14, line: 1207, baseType: !172, size: 32, offset: 1248)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !454, file: !14, line: 1209, baseType: !116, size: 64, offset: 1280)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !454, file: !14, line: 1211, baseType: !826, size: 64, offset: 1344)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !454, file: !14, line: 1223, baseType: !831, size: 64, offset: 1408)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !354, line: 34, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !831, file: !354, line: 35, baseType: !357, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !454, file: !14, line: 1224, baseType: !122, size: 128, offset: 1472)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !454, file: !14, line: 1225, baseType: !836, size: 64, offset: 1600)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !454, file: !14, line: 1226, baseType: !839, size: 64, offset: 1664)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !454, file: !14, line: 1227, baseType: !842, size: 64, offset: 1728)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !454, file: !14, line: 1228, baseType: !845, size: 64, offset: 1792)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !454, file: !14, line: 1229, baseType: !497, size: 128, offset: 1856)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !454, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !454, file: !14, line: 1231, baseType: !850, size: 2496, offset: 2048)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !851)
!851 = !{!852, !853, !854, !856, !888}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !19, line: 522, baseType: !7, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !850, file: !19, line: 523, baseType: !814, size: 320, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !850, file: !19, line: 524, baseType: !855, size: 192, offset: 384)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !223)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !850, file: !19, line: 525, baseType: !857, size: 1728, offset: 576)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 1728, elements: !223)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !859)
!859 = !{!860, !880, !881, !882, !883, !884, !885, !886, !887}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !858, file: !19, line: 223, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !863)
!863 = !{!864, !865, !878, !879}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !862, file: !19, line: 446, baseType: !115, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !862, file: !19, line: 447, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !868, file: !19, line: 313, baseType: !545, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !868, file: !19, line: 314, baseType: !545, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !868, file: !19, line: 315, baseType: !545, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !868, file: !19, line: 316, baseType: !545, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !868, file: !19, line: 317, baseType: !681, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !868, file: !19, line: 318, baseType: !681, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !868, file: !19, line: 319, baseType: !681, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !868, file: !19, line: 320, baseType: !711, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !862, file: !19, line: 448, baseType: !117, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !862, file: !19, line: 449, baseType: !861, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !858, file: !19, line: 224, baseType: !115, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !858, file: !19, line: 226, baseType: !122, size: 128, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !858, file: !19, line: 227, baseType: !272, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !858, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !858, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !858, file: !19, line: 230, baseType: !646, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !858, file: !19, line: 231, baseType: !646, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !858, file: !19, line: 232, baseType: !116, size: 64, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !850, file: !19, line: 526, baseType: !889, size: 192, offset: 2304)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 192, elements: !223)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !454, file: !14, line: 1233, baseType: !891, size: 2368, offset: 4544)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !891, file: !14, line: 1185, baseType: !192, size: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !891, file: !14, line: 1186, baseType: !192, size: 16, offset: 16)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !891, file: !14, line: 1187, baseType: !896, size: 2304, offset: 64)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 2304, elements: !223)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !898, line: 12, size: 768, elements: !899)
!898 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!899 = !{!900, !922, !924, !3062, !3063}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !897, file: !898, line: 13, baseType: !901, size: 384)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !902, line: 17, size: 384, elements: !903)
!902 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!903 = !{!904, !905, !906, !913}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !901, file: !902, line: 18, baseType: !115, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !901, file: !902, line: 19, baseType: !115, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !901, file: !902, line: 20, baseType: !907, size: 192, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !908, line: 41, baseType: !909)
!908 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !908, line: 37, size: 192, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !908, line: 38, baseType: !152, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !909, file: !908, line: 39, baseType: !122, size: 128, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !901, file: !902, line: 22, baseType: !914, size: 128, align: 64, offset: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !123, line: 232, size: 128, align: 64, elements: !915)
!915 = !{!916, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !914, file: !123, line: 233, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !914, file: !123, line: 234, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !917}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !897, file: !898, line: 14, baseType: !923, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !897, file: !898, line: 15, baseType: !925, size: 64, offset: 448)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !926, line: 16, size: 64, elements: !927)
!926 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !925, file: !926, line: 17, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !576, line: 746, size: 58368, elements: !931)
!931 = !{!932, !940, !941, !942, !948, !949, !950, !951, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !1029, !1040, !1135, !1139, !1142, !1173, !1174, !1175, !1176, !1187, !1189, !1190, !1191, !1192, !1193, !1194, !1205, !1206, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1223, !1224, !1231, !1232, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2220, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2235, !2236, !2237, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2269, !2275, !2276, !2277, !2278, !2279, !2283, !2286, !2293, !2298, !2301, !2304, !2307, !2310, !2450, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2490, !2491, !2492, !2501, !2509, !2510, !2511, !2512, !2513, !2518, !2519, !2520, !2523, !2524, !2527, !2530, !2533, !2541, !2544, !2545, !2631, !2632, !2633, !2634, !2635, !2641, !2642, !2643, !2644, !2647, !2648, !2651, !2654, !2655, !2658, !2659, !2660, !2663, !2664, !2665, !2666, !2667, !2668, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2700, !2701, !2707, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2719, !2791, !2793, !2794, !2795, !2796, !2797, !2809, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2839, !2840, !2841}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !930, file: !576, line: 752, baseType: !933, size: 192)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !934, line: 56, size: 192, elements: !935)
!934 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!935 = !{!936, !937, !938, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 57, baseType: !272, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !933, file: !934, line: 58, baseType: !272, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !933, file: !934, line: 59, baseType: !371, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !933, file: !934, line: 61, baseType: !371, size: 32, offset: 160)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !930, file: !576, line: 754, baseType: !7, size: 32, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !930, file: !576, line: 767, baseType: !116, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !930, file: !576, line: 768, baseType: !943, size: 32, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !944, line: 113, baseType: !945)
!944 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !944, line: 111, size: 32, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !945, file: !944, line: 112, baseType: !172, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !576, line: 770, baseType: !7, size: 32, offset: 352)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !930, file: !576, line: 771, baseType: !7, size: 32, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !930, file: !576, line: 774, baseType: !115, size: 32, offset: 416)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !930, file: !576, line: 775, baseType: !952, size: 128, offset: 448)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !953, line: 58, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!954 = !{!955, !961, !966, !967}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !952, file: !953, line: 59, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !957, line: 60, size: 64, elements: !958)
!957 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !957, line: 61, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !953, line: 60, baseType: !962, size: 32, offset: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !953, line: 60, size: 32, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !962, file: !953, line: 61, baseType: !7, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !962, file: !953, line: 62, baseType: !172, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !952, file: !953, line: 65, baseType: !190, size: 16, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !952, file: !953, line: 65, baseType: !190, size: 16, offset: 112)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !930, file: !576, line: 776, baseType: !7, size: 32, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !930, file: !576, line: 777, baseType: !272, size: 64, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !930, file: !576, line: 778, baseType: !929, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !930, file: !576, line: 787, baseType: !115, size: 32, offset: 768)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !930, file: !576, line: 788, baseType: !115, size: 32, offset: 800)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !930, file: !576, line: 790, baseType: !115, size: 32, offset: 832)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !930, file: !576, line: 792, baseType: !115, size: 32, offset: 864)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !930, file: !576, line: 793, baseType: !115, size: 32, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !930, file: !576, line: 794, baseType: !115, size: 32, offset: 928)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !930, file: !576, line: 795, baseType: !7, size: 32, offset: 960)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !930, file: !576, line: 797, baseType: !979, size: 2048, offset: 1024)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !576, line: 551, size: 2048, elements: !980)
!980 = !{!981, !986, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1008, !1011, !1012, !1013}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !979, file: !576, line: 553, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !576, line: 411, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !982, file: !576, line: 412, baseType: !272, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !982, file: !576, line: 413, baseType: !371, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !979, file: !576, line: 554, baseType: !987, size: 192, align: 64, offset: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !988, line: 5, size: 192, align: 64, elements: !989)
!988 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!989 = !{!990, !991, !993}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !987, file: !988, line: 6, baseType: !272, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !987, file: !988, line: 7, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !987, file: !988, line: 8, baseType: !992, size: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !979, file: !576, line: 555, baseType: !375, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !979, file: !576, line: 556, baseType: !375, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !979, file: !576, line: 558, baseType: !122, size: 128, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !979, file: !576, line: 559, baseType: !7, size: 32, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !979, file: !576, line: 561, baseType: !375, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !979, file: !576, line: 562, baseType: !375, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !979, file: !576, line: 563, baseType: !375, size: 64, offset: 768)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !979, file: !576, line: 564, baseType: !375, size: 64, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !979, file: !576, line: 565, baseType: !611, size: 64, offset: 896)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !979, file: !576, line: 566, baseType: !375, size: 64, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !979, file: !576, line: 568, baseType: !375, size: 64, offset: 1024)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !979, file: !576, line: 571, baseType: !115, size: 32, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !979, file: !576, line: 572, baseType: !1007, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !979, file: !576, line: 574, baseType: !1009, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !576, line: 49, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !979, file: !576, line: 576, baseType: !1009, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !979, file: !576, line: 578, baseType: !272, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !979, file: !576, line: 588, baseType: !1014, size: 512, align: 512, offset: 1536)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !576, line: 497, size: 512, align: 512, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1014, file: !576, line: 498, baseType: !375, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1014, file: !576, line: 499, baseType: !375, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1014, file: !576, line: 500, baseType: !375, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1014, file: !576, line: 501, baseType: !371, size: 32, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1014, file: !576, line: 502, baseType: !371, size: 32, offset: 224)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1014, file: !576, line: 503, baseType: !272, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1014, file: !576, line: 504, baseType: !272, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1014, file: !576, line: 505, baseType: !272, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1014, file: !576, line: 506, baseType: !1025, size: 64, align: 64, offset: 448)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !576, line: 445, size: 64, align: 64, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1025, file: !576, line: 446, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1025, file: !576, line: 447, baseType: !7, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !930, file: !576, line: 798, baseType: !1030, size: 384, offset: 3072)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !576, line: 592, size: 384, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1030, file: !576, line: 593, baseType: !122, size: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1030, file: !576, line: 594, baseType: !272, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1030, file: !576, line: 595, baseType: !272, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1030, file: !576, line: 596, baseType: !7, size: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1030, file: !576, line: 597, baseType: !192, size: 16, offset: 288)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1030, file: !576, line: 598, baseType: !192, size: 16, offset: 304)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1030, file: !576, line: 600, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !930, file: !576, line: 799, baseType: !1041, size: 1792, offset: 3456)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !576, line: 610, size: 1792, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1132, !1133}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1041, file: !576, line: 611, baseType: !987, size: 192, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1041, file: !576, line: 618, baseType: !375, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1041, file: !576, line: 619, baseType: !375, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1041, file: !576, line: 620, baseType: !375, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1041, file: !576, line: 621, baseType: !375, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1041, file: !576, line: 622, baseType: !375, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1041, file: !576, line: 629, baseType: !611, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1041, file: !576, line: 630, baseType: !375, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !576, line: 631, baseType: !7, size: 32, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1041, file: !576, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1041, file: !576, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1041, file: !576, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1041, file: !576, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1041, file: !576, line: 662, baseType: !1057, size: 512, offset: 704)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1058)
!1058 = !{!1059, !1067, !1068, !1073, !1128, !1129, !1130, !1131}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1057, file: !25, line: 119, baseType: !1060, size: 256)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1061, line: 9, size: 256, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1060, file: !1061, line: 10, baseType: !987, size: 192, align: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1060, file: !1061, line: 11, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1066, line: 29, baseType: !611)
!1066 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1057, file: !25, line: 120, baseType: !1065, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1057, file: !25, line: 121, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!24, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1057, file: !25, line: 122, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1076)
!1076 = !{!1077, !1102, !1103, !1106, !1111, !1112, !1123, !1127}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1075, file: !25, line: 160, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !25, line: 216, baseType: !614, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1079, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1079, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1079, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1079, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1079, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1079, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1079, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1079, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1079, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1079, file: !25, line: 227, baseType: !192, size: 16, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1079, file: !25, line: 228, baseType: !192, size: 16, offset: 208)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1079, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1079, file: !25, line: 235, baseType: !1065, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1079, file: !25, line: 236, baseType: !1072, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1079, file: !25, line: 237, baseType: !1065, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1079, file: !25, line: 238, baseType: !1072, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1079, file: !25, line: 239, baseType: !1099, size: 4096, align: 512, offset: 512)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 4096, align: 512, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 8)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1075, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1075, file: !25, line: 162, baseType: !1104, size: 32, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !123, line: 32, baseType: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !256, line: 96, baseType: !115)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1075, file: !25, line: 163, baseType: !1107, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !344, line: 274, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !344, line: 274, size: 32, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1108, file: !344, line: 274, baseType: !348, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1075, file: !25, line: 164, baseType: !1072, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1075, file: !25, line: 165, baseType: !1113, size: 128, offset: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1061, line: 14, size: 128, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1113, file: !1061, line: 15, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !988, line: 26, size: 128, elements: !1117)
!1117 = !{!1118, !1122}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1116, file: !988, line: 27, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !988, line: 12, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1119, file: !988, line: 13, baseType: !992, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1116, file: !988, line: 28, baseType: !992, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1075, file: !25, line: 166, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!1065}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1075, file: !25, line: 167, baseType: !1065, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1057, file: !25, line: 123, baseType: !180, size: 8, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1057, file: !25, line: 124, baseType: !180, size: 8, offset: 456)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1057, file: !25, line: 125, baseType: !180, size: 8, offset: 464)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1057, file: !25, line: 126, baseType: !180, size: 8, offset: 472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1041, file: !576, line: 671, baseType: !1057, size: 512, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1041, file: !576, line: 679, baseType: !1134, size: 64, offset: 1728)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !930, file: !576, line: 800, baseType: !1136, size: 64, offset: 5248)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !576, line: 800, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !930, file: !576, line: 809, baseType: !1140, size: 64, offset: 5312)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !576, line: 70, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !930, file: !576, line: 825, baseType: !1143, size: 2048, align: 512, offset: 5632)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !576, line: 509, size: 2048, align: 512, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1143, file: !576, line: 511, baseType: !375, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1143, file: !576, line: 512, baseType: !375, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1143, file: !576, line: 513, baseType: !375, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1143, file: !576, line: 514, baseType: !375, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1143, file: !576, line: 515, baseType: !375, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1143, file: !576, line: 516, baseType: !375, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1143, file: !576, line: 518, baseType: !375, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1143, file: !576, line: 519, baseType: !375, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1143, file: !576, line: 520, baseType: !611, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1143, file: !576, line: 522, baseType: !375, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1143, file: !576, line: 523, baseType: !375, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1143, file: !576, line: 524, baseType: !611, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1143, file: !576, line: 526, baseType: !611, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1143, file: !576, line: 527, baseType: !375, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1143, file: !576, line: 529, baseType: !375, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1143, file: !576, line: 530, baseType: !375, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1143, file: !576, line: 531, baseType: !375, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1143, file: !576, line: 532, baseType: !375, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1143, file: !576, line: 533, baseType: !375, size: 64, offset: 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1143, file: !576, line: 535, baseType: !375, size: 64, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1143, file: !576, line: 536, baseType: !375, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1143, file: !576, line: 537, baseType: !375, size: 64, offset: 1344)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1143, file: !576, line: 538, baseType: !375, size: 64, offset: 1408)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1143, file: !576, line: 539, baseType: !375, size: 64, offset: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1143, file: !576, line: 540, baseType: !375, size: 64, offset: 1536)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1143, file: !576, line: 541, baseType: !375, size: 64, offset: 1600)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1143, file: !576, line: 542, baseType: !375, size: 64, offset: 1664)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1143, file: !576, line: 543, baseType: !375, size: 64, offset: 1728)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !930, file: !576, line: 833, baseType: !7, size: 32, offset: 7680)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !930, file: !576, line: 836, baseType: !7, size: 32, offset: 7712)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !930, file: !576, line: 837, baseType: !115, size: 32, offset: 7744)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !930, file: !576, line: 838, baseType: !1177, size: 64, offset: 7808)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1180, line: 19, baseType: !1181)
!1180 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1180, line: 19, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1181, file: !1180, line: 19, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 1)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !930, file: !576, line: 839, baseType: !1188, size: 64, offset: 7872)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !930, file: !576, line: 840, baseType: !1179, size: 64, offset: 7936)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !930, file: !576, line: 841, baseType: !116, size: 64, offset: 8000)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !930, file: !576, line: 843, baseType: !192, size: 16, offset: 8064)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !930, file: !576, line: 845, baseType: !192, size: 16, offset: 8080)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !930, file: !576, line: 848, baseType: !115, size: 32, offset: 8096)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !930, file: !576, line: 849, baseType: !1195, size: 32, offset: 8128)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !576, line: 718, size: 32, elements: !1196)
!1196 = !{!1197, !1204}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1195, file: !576, line: 724, baseType: !1198, size: 32)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !576, line: 719, size: 32, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1198, file: !576, line: 720, baseType: !180, size: 8)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1198, file: !576, line: 721, baseType: !180, size: 8, offset: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1198, file: !576, line: 722, baseType: !180, size: 8, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1198, file: !576, line: 723, baseType: !180, size: 8, offset: 24)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1195, file: !576, line: 725, baseType: !371, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !930, file: !576, line: 850, baseType: !122, size: 128, offset: 8192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !930, file: !576, line: 851, baseType: !1207, size: 64, offset: 8320)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !576, line: 60, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !930, file: !576, line: 855, baseType: !272, size: 64, offset: 8384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !930, file: !576, line: 856, baseType: !180, size: 8, offset: 8448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !930, file: !576, line: 857, baseType: !180, size: 8, offset: 8456)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !930, file: !576, line: 858, baseType: !115, size: 32, offset: 8480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !930, file: !576, line: 859, baseType: !122, size: 128, offset: 8512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !930, file: !576, line: 860, baseType: !115, size: 32, offset: 8640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !930, file: !576, line: 861, baseType: !122, size: 128, offset: 8704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !930, file: !576, line: 873, baseType: !1217, size: 256, offset: 8832)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !576, line: 376, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1217, file: !576, line: 381, baseType: !272, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1217, file: !576, line: 384, baseType: !377, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1217, file: !576, line: 389, baseType: !377, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1217, file: !576, line: 392, baseType: !377, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !930, file: !576, line: 875, baseType: !122, size: 128, offset: 9088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !930, file: !576, line: 877, baseType: !1225, size: 320, offset: 9216)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1226, line: 86, size: 320, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1225, file: !1226, line: 87, baseType: !115, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1225, file: !1226, line: 88, baseType: !122, size: 128, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1225, file: !1226, line: 89, baseType: !122, size: 128, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !930, file: !576, line: 878, baseType: !987, size: 192, align: 64, offset: 9536)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !930, file: !576, line: 881, baseType: !1233, size: 64, offset: 9728)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1235)
!1235 = !{!1236, !2139}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !38, line: 734, baseType: !1237, size: 10240)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !38, line: 734, size: 10240, elements: !1238)
!1238 = !{!1239, !1243, !1256, !2003, !2004, !2005, !2006, !2007, !2008, !2015, !2016, !2017, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2056, !2058, !2061, !2108, !2109, !2110, !2113, !2114, !2115, !2118, !2119, !2120, !2126, !2127}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !38, line: 739, baseType: !1240, size: 512, align: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !38, line: 739, size: 512, align: 512, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1240, file: !38, line: 747, baseType: !172, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1237, file: !38, line: 750, baseType: !1244, size: 128, offset: 512)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1245, line: 218, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1246 = !{!1247, !1254, !1255}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1245, line: 219, baseType: !1248, size: 32)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1245, line: 219, size: 32, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1248, file: !1245, line: 220, baseType: !152, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1248, file: !1245, line: 221, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1245, line: 197, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 197, elements: !505)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1244, file: !1245, line: 223, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1244, file: !1245, line: 224, baseType: !116, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1237, file: !38, line: 752, baseType: !1257, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!272, !1260, !272, !272, !272, !272}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1262)
!1262 = !{!1263, !1269, !1270, !1272, !1273, !1274, !1275, !1276, !1328, !1523, !1532, !1533, !1534, !1993, !1994, !1995, !1996, !1998, !1999, !2002}
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !14, line: 995, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1261, file: !14, line: 995, size: 128, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1264, file: !14, line: 996, baseType: !956, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1264, file: !14, line: 997, baseType: !914, size: 128, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1264, file: !14, line: 998, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1261, file: !14, line: 1005, baseType: !152, size: 32, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1261, file: !14, line: 1006, baseType: !1271, size: 32, offset: 160)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !123, line: 156, baseType: !7)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1261, file: !14, line: 1007, baseType: !605, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1261, file: !14, line: 1008, baseType: !601, size: 256, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1261, file: !14, line: 1009, baseType: !463, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1261, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1261, file: !14, line: 1011, baseType: !1277, size: 256, offset: 640)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1278)
!1278 = !{!1279, !1300, !1324, !1325, !1326, !1327}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !14, line: 949, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1281, line: 34, baseType: !1282)
!1281 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1281, line: 25, size: 64, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1282, file: !1281, line: 26, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1286, line: 27, baseType: !1287)
!1286 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1286, line: 13, size: 64, elements: !1288)
!1288 = !{!1289, !1299}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1286, line: 14, baseType: !1290, size: 32)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1286, line: 14, size: 32, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1290, file: !1286, line: 15, baseType: !172, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !1286, line: 16, baseType: !1294, size: 32)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1286, line: 16, size: 32, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1294, file: !1286, line: 18, baseType: !180, size: 8)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1294, file: !1286, line: 19, baseType: !1298, size: 24, offset: 8)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 24, elements: !223)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1287, file: !1286, line: 26, baseType: !164, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1277, file: !14, line: 950, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1311, !1312, !1313, !1314}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1302, file: !30, line: 61, baseType: !943, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1302, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1302, file: !30, line: 63, baseType: !152, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1302, file: !30, line: 65, baseType: !1308, size: 256, offset: 128)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 256, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 4)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1302, file: !30, line: 66, baseType: !493, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1302, file: !30, line: 68, baseType: !907, size: 192, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1302, file: !30, line: 69, baseType: !914, size: 128, align: 64, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1302, file: !30, line: 70, baseType: !1315, offset: 768)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, elements: !1322)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1316, file: !30, line: 55, baseType: !115, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1316, file: !30, line: 56, baseType: !1320, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1322 = !{!1323}
!1323 = !DISubrange(count: -1)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1277, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1277, file: !14, line: 952, baseType: !308, size: 32, offset: 160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1277, file: !14, line: 952, baseType: !308, size: 32, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1277, file: !14, line: 953, baseType: !115, size: 32, offset: 224)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1261, file: !14, line: 1012, baseType: !1329, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1332, line: 110, size: 1472, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1350, !1351, !1352, !1353, !1354, !1355, !1468, !1469, !1470, !1471, !1472, !1503, !1506, !1510, !1518}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1331, file: !1332, line: 111, baseType: !605, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1331, file: !1332, line: 112, baseType: !308, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1331, file: !1332, line: 113, baseType: !317, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1331, file: !1332, line: 114, baseType: !308, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1331, file: !1332, line: 115, baseType: !317, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1331, file: !1332, line: 116, baseType: !308, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1331, file: !1332, line: 117, baseType: !317, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1331, file: !1332, line: 118, baseType: !308, size: 32, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1331, file: !1332, line: 119, baseType: !317, size: 32, offset: 288)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1331, file: !1332, line: 120, baseType: !7, size: 32, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1331, file: !1332, line: 121, baseType: !1345, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1346, line: 24, baseType: !1347)
!1346 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1346, line: 24, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1347, file: !1346, line: 24, baseType: !375, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1331, file: !1332, line: 122, baseType: !1345, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1331, file: !1332, line: 123, baseType: !1345, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1331, file: !1332, line: 124, baseType: !1345, size: 64, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1331, file: !1332, line: 125, baseType: !1345, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1331, file: !1332, line: 127, baseType: !184, size: 8, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1331, file: !1332, line: 129, baseType: !1356, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1358, line: 195, size: 1728, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1359 = !{!1360, !1361, !1366, !1371, !1372, !1375, !1376, !1381, !1382, !1383, !1384, !1387, !1388, !1389, !1391, !1392, !1432, !1453}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 196, baseType: !943, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1357, file: !1358, line: 197, baseType: !1362, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1358, line: 28, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !123, line: 104, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !181, line: 20, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !183, line: 26, baseType: !115)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 198, baseType: !1367, size: 192, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 198, size: 192, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1367, file: !1358, line: 199, baseType: !122, size: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1367, file: !1358, line: 200, baseType: !987, size: 192, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1357, file: !1358, line: 205, baseType: !814, size: 320, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 206, baseType: !1373, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1358, line: 206, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 207, baseType: !116, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 208, baseType: !1377, size: 64, offset: 704)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 208, size: 64, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1377, file: !1358, line: 209, baseType: !654, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1377, file: !1358, line: 210, baseType: !654, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1357, file: !1358, line: 212, baseType: !654, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 213, baseType: !308, size: 32, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 214, baseType: !317, size: 32, offset: 864)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1357, file: !1358, line: 215, baseType: !1385, size: 32, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1358, line: 31, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !123, line: 110, baseType: !371)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1357, file: !1358, line: 216, baseType: !192, size: 16, offset: 928)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1357, file: !1358, line: 217, baseType: !192, size: 16, offset: 944)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1357, file: !1358, line: 221, baseType: !1390, size: 16, offset: 960)
!1390 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 228, baseType: !272, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 245, baseType: !1393, size: 320, offset: 1088)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 245, size: 320, elements: !1394)
!1394 = !{!1395, !1424}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1393, file: !1358, line: 246, baseType: !1396, size: 320)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1358, line: 114, size: 320, elements: !1397)
!1397 = !{!1398, !1399, !1411, !1414, !1423}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1396, file: !1358, line: 116, baseType: !272, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1358, line: 117, baseType: !1400, size: 64, offset: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !1358, line: 117, size: 64, elements: !1401)
!1401 = !{!1402, !1410}
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1358, line: 118, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !1358, line: 118, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1403, file: !1358, line: 120, baseType: !190, size: 16)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1403, file: !1358, line: 121, baseType: !1407, size: 48, offset: 16)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 48, elements: !1408)
!1408 = !{!1409}
!1409 = !DISubrange(count: 6)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1400, file: !1358, line: 127, baseType: !272, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1396, file: !1358, line: 129, baseType: !1412, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1358, line: 102, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1396, file: !1358, line: 130, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1358, line: 108, size: 192, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1416, file: !1358, line: 109, baseType: !914, size: 128, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1416, file: !1358, line: 110, baseType: !943, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1416, file: !1358, line: 111, baseType: !1421, size: 8, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !123, line: 35, baseType: !1422)
!1422 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1396, file: !1358, line: 131, baseType: !141, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1358, line: 247, baseType: !1425, size: 320)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !1358, line: 247, size: 320, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1425, file: !1358, line: 248, baseType: !272, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1425, file: !1358, line: 249, baseType: !272, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1425, file: !1358, line: 250, baseType: !1412, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1425, file: !1358, line: 251, baseType: !1415, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1425, file: !1358, line: 252, baseType: !222, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 260, baseType: !1433, size: 256, offset: 1408)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 260, size: 256, elements: !1434)
!1434 = !{!1435, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1433, file: !1358, line: 261, baseType: !1436, size: 256)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1358, line: 134, size: 256, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1436, file: !1358, line: 135, baseType: !116, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1436, file: !1358, line: 136, baseType: !1440, size: 256)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !1309)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1358, line: 262, baseType: !1442, size: 256)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !1358, line: 262, size: 256, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1442, file: !1358, line: 264, baseType: !122, size: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1442, file: !1358, line: 265, baseType: !1446, size: 128, offset: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1447, line: 22, size: 128, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1448 = !{!1449, !1452}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1446, file: !1447, line: 23, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1447, line: 23, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1446, file: !1447, line: 24, baseType: !272, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1357, file: !1358, line: 280, baseType: !1454, size: 64, offset: 1664)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1358, line: 176, size: 192, elements: !1456)
!1456 = !{!1457, !1466, !1467}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1455, file: !1358, line: 177, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1358, line: 171, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!115, !1356, !1462, !1464, !1356}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1455, file: !1358, line: 178, baseType: !1356, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1455, file: !1358, line: 179, baseType: !1412, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1331, file: !1332, line: 130, baseType: !1356, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1331, file: !1332, line: 131, baseType: !1356, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1331, file: !1332, line: 132, baseType: !1356, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1331, file: !1332, line: 135, baseType: !116, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1331, file: !1332, line: 137, baseType: !1473, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1475, line: 14, size: 1088, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1476 = !{!1477, !1478, !1487, !1488, !1489, !1490, !1491, !1492}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1474, file: !1475, line: 15, baseType: !943, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1474, file: !1475, line: 17, baseType: !1479, size: 320, offset: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1480, line: 22, size: 320, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1481 = !{!1482, !1483, !1484, !1485}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1480, line: 23, baseType: !614, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1479, file: !1480, line: 24, baseType: !611, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1479, file: !1480, line: 26, baseType: !122, size: 128, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1479, file: !1480, line: 28, baseType: !1486, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1474, file: !1475, line: 19, baseType: !272, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1474, file: !1475, line: 20, baseType: !605, size: 64, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1474, file: !1475, line: 23, baseType: !497, size: 128, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1474, file: !1475, line: 24, baseType: !308, size: 32, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1474, file: !1475, line: 29, baseType: !605, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1474, file: !1475, line: 36, baseType: !1493, size: 320, offset: 768)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1494, line: 15, size: 320, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !1494, line: 16, baseType: !614, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1493, file: !1494, line: 18, baseType: !115, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1493, file: !1494, line: 19, baseType: !115, size: 32, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1493, file: !1494, line: 20, baseType: !115, size: 32, offset: 96)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1493, file: !1494, line: 21, baseType: !115, size: 32, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1493, file: !1494, line: 22, baseType: !272, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1493, file: !1494, line: 23, baseType: !272, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1331, file: !1332, line: 138, baseType: !1504, size: 64, offset: 1152)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1331, file: !1332, line: 139, baseType: !1507, size: 64, offset: 1216)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1509, line: 16, flags: DIFlagFwdDecl)
!1509 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1331, file: !1332, line: 140, baseType: !1511, size: 64, offset: 1280)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1332, line: 25, size: 64, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1512, file: !1332, line: 26, baseType: !172, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1512, file: !1332, line: 27, baseType: !115, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1512, file: !1332, line: 28, baseType: !1517, offset: 64)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, elements: !1322)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1332, line: 142, baseType: !1519, size: 128, offset: 1344)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !1332, line: 142, size: 128, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1519, file: !1332, line: 143, baseType: !115, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1519, file: !1332, line: 144, baseType: !914, size: 128, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1261, file: !14, line: 1013, baseType: !1524, size: 256, offset: 960)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1524, file: !14, line: 971, baseType: !272, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1524, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1524, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1524, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1524, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1524, file: !14, line: 976, baseType: !463, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1261, file: !14, line: 1014, baseType: !726, size: 128, offset: 1216)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1261, file: !14, line: 1015, baseType: !302, size: 64, offset: 1344)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1261, file: !14, line: 1016, baseType: !1535, size: 64, offset: 1408)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1538)
!1538 = !{!1539, !1540, !1544, !1549, !1553, !1581, !1582, !1588, !1601, !1609, !1613, !1614, !1915, !1916, !1920, !1925, !1926, !1930, !1934, !1940, !1941, !1945, !1946, !1952, !1956, !1960, !1966, !1970, !1974, !1978, !1982, !1983, !1989}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1537, file: !14, line: 1915, baseType: !117, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1537, file: !14, line: 1916, baseType: !1541, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!463, !1260, !463, !115}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !14, line: 1917, baseType: !1545, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!254, !1260, !222, !269, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !14, line: 1918, baseType: !1550, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!254, !1260, !141, !269, !1548}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1537, file: !14, line: 1919, baseType: !1554, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!254, !1557, !1579}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1566, !1567, !1568, !1569}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1558, file: !14, line: 374, baseType: !1260, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1558, file: !14, line: 375, baseType: !463, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1558, file: !14, line: 376, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !1557, !258}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1558, file: !14, line: 377, baseType: !116, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1558, file: !14, line: 378, baseType: !115, size: 32, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1558, file: !14, line: 379, baseType: !190, size: 16, offset: 288)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !14, line: 380, baseType: !1570, size: 64, offset: 320)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1558, file: !14, line: 380, size: 64, elements: !1571)
!1571 = !{!1572, !1575}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1570, file: !14, line: 386, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1570, file: !14, line: 395, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!254, !116}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1537, file: !14, line: 1920, baseType: !1554, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1537, file: !14, line: 1921, baseType: !1583, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!115, !1557, !1586, !7}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1537, file: !14, line: 1923, baseType: !1589, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!115, !1260, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1594)
!1594 = !{!1595, !1600}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1593, file: !14, line: 1859, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1597)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1421, !1592, !141, !115, !463, !375, !7}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1593, file: !14, line: 1860, baseType: !463, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1537, file: !14, line: 1924, baseType: !1602, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1605, !1260, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1606, line: 59, baseType: !7)
!1606 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1537, file: !14, line: 1925, baseType: !1610, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!258, !1260, !7, !272}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1537, file: !14, line: 1926, baseType: !1610, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !14, line: 1927, baseType: !1615, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!115, !1260, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1620)
!1620 = !{!1621, !1630, !1631, !1639, !1646, !1647, !1652, !1653, !1658, !1659, !1662, !1908, !1909, !1910, !1911, !1912, !1913}
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !38, line: 628, baseType: !1622, size: 128)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !38, line: 628, size: 128, elements: !1623)
!1623 = !{!1624, !1629}
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !38, line: 629, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !38, line: 629, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1625, file: !38, line: 631, baseType: !272, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1625, file: !38, line: 632, baseType: !272, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1622, file: !38, line: 635, baseType: !914, size: 128, align: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1619, file: !38, line: 639, baseType: !1233, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1619, file: !38, line: 640, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1633, line: 297, baseType: !1634)
!1633 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1633, line: 297, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1634, file: !1633, line: 297, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1638, line: 19, baseType: !272)
!1638 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !38, line: 646, baseType: !1640, size: 64, offset: 256)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !38, line: 646, size: 64, elements: !1641)
!1641 = !{!1642, !1645}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1640, file: !38, line: 647, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !272)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1640, file: !38, line: 648, baseType: !1644, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1619, file: !38, line: 666, baseType: !115, size: 32, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1619, file: !38, line: 667, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1649, file: !38, line: 580, baseType: !814, size: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1619, file: !38, line: 670, baseType: !1421, size: 8, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1619, file: !38, line: 681, baseType: !1654, size: 256, offset: 512)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !38, line: 678, size: 256, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1654, file: !38, line: 679, baseType: !987, size: 192, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1654, file: !38, line: 680, baseType: !272, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1619, file: !38, line: 689, baseType: !122, size: 128, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1619, file: !38, line: 691, baseType: !1660, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1619, file: !38, line: 694, baseType: !1663, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1666, line: 563, size: 1024, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1667 = !{!1668, !1672, !1673, !1677, !1681, !1685, !1872, !1876, !1880, !1884, !1885, !1886, !1890, !1894, !1900, !1904}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1665, file: !1666, line: 564, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1618}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1665, file: !1666, line: 569, baseType: !1669, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1665, file: !1666, line: 571, baseType: !1674, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!115, !1618, !272}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1665, file: !1666, line: 572, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!115, !1618}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1665, file: !1666, line: 578, baseType: !1682, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!115, !1618, !272, !272, !272}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1665, file: !1666, line: 580, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1666, line: 512, size: 896, elements: !1692)
!1692 = !{!1693, !1701, !1702, !1709, !1716, !1726, !1865, !1866, !1868, !1870}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1666, line: 513, baseType: !1694, size: 320)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !1666, line: 513, size: 320, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1694, file: !1666, line: 514, baseType: !1618, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1694, file: !1666, line: 515, baseType: !666, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1694, file: !1666, line: 516, baseType: !272, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1694, file: !1666, line: 517, baseType: !272, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1694, file: !1666, line: 518, baseType: !272, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1666, line: 520, baseType: !37, size: 32, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1691, file: !1666, line: 522, baseType: !1703, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1638, line: 22, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1638, line: 22, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1705, file: !1638, line: 22, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1638, line: 15, baseType: !272)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1691, file: !1666, line: 524, baseType: !1710, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1633, line: 372, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 372, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1712, file: !1633, line: 372, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1638, line: 16, baseType: !272)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1666, line: 527, baseType: !1717, size: 64, offset: 512)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1666, line: 527, size: 64, elements: !1718)
!1718 = !{!1719, !1725}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1717, file: !1666, line: 528, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1638, line: 21, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1638, line: 21, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1721, file: !1638, line: 21, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1638, line: 14, baseType: !272)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1717, file: !1666, line: 529, baseType: !1704, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1691, file: !1666, line: 534, baseType: !1727, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1729)
!1729 = !{!1730, !1731, !1859, !1864}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !38, line: 75, baseType: !272, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !38, line: 83, baseType: !1732, size: 320, offset: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !38, line: 83, size: 320, elements: !1733)
!1733 = !{!1734, !1755, !1769, !1773, !1858}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !38, line: 84, baseType: !1735, size: 320)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !38, line: 84, size: 320, elements: !1736)
!1736 = !{!1737, !1748, !1749, !1754}
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !38, line: 90, baseType: !1738, size: 128)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !38, line: 90, size: 128, elements: !1739)
!1739 = !{!1740, !1741, !1746, !1747}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1738, file: !38, line: 91, baseType: !122, size: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !38, line: 94, baseType: !1742, size: 128)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !38, line: 94, size: 128, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1742, file: !38, line: 96, baseType: !116, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1742, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1738, file: !38, line: 102, baseType: !122, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1738, file: !38, line: 103, baseType: !122, size: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1735, file: !38, line: 106, baseType: !298, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !38, line: 107, baseType: !1750, size: 64, offset: 192)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !38, line: 107, size: 64, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1750, file: !38, line: 108, baseType: !272, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1750, file: !38, line: 109, baseType: !272, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1735, file: !38, line: 117, baseType: !272, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !38, line: 119, baseType: !1756, size: 320)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !38, line: 119, size: 320, elements: !1757)
!1757 = !{!1758, !1759, !1762, !1763, !1764}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1756, file: !38, line: 124, baseType: !272, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1756, file: !38, line: 125, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1756, file: !38, line: 126, baseType: !272, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1756, file: !38, line: 127, baseType: !272, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !38, line: 128, baseType: !1765, size: 64, offset: 256)
!1765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !38, line: 128, size: 64, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1765, file: !38, line: 133, baseType: !272, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1765, file: !38, line: 138, baseType: !605, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !38, line: 141, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !38, line: 141, size: 64, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1770, file: !38, line: 142, baseType: !272, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !38, line: 144, baseType: !1774, size: 128)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !38, line: 144, size: 128, elements: !1775)
!1775 = !{!1776, !1857}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1774, file: !38, line: 146, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1779)
!1779 = !{!1780, !1790, !1811, !1822, !1823, !1824, !1825, !1839, !1840, !1841}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1778, file: !54, line: 127, baseType: !1781, size: 384)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1782)
!1782 = !{!1783, !1784, !1786, !1787, !1788, !1789}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1781, file: !54, line: 22, baseType: !272, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1781, file: !54, line: 23, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1781, file: !54, line: 24, baseType: !1785, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1781, file: !54, line: 25, baseType: !272, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1781, file: !54, line: 26, baseType: !272, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1781, file: !54, line: 27, baseType: !272, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1778, file: !54, line: 128, baseType: !1791, size: 128, offset: 384)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1792, line: 105, size: 128, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1791, file: !1792, line: 110, baseType: !272, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1791, file: !1792, line: 118, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1792, line: 95, size: 448, elements: !1798)
!1798 = !{!1799, !1800, !1806, !1807, !1808, !1809, !1810}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !1792, line: 96, baseType: !605, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1797, file: !1792, line: 97, baseType: !1801, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1792, line: 60, baseType: !1803)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1797, file: !1792, line: 98, baseType: !1801, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1797, file: !1792, line: 99, baseType: !1421, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1797, file: !1792, line: 100, baseType: !1421, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1797, file: !1792, line: 101, baseType: !914, size: 128, align: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1797, file: !1792, line: 102, baseType: !1805, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1778, file: !54, line: 129, baseType: !1812, size: 256, offset: 512)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1813, line: 26, size: 256, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1812, file: !1813, line: 27, baseType: !7, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1812, file: !1813, line: 28, baseType: !1817, size: 192, offset: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1818, line: 43, size: 192, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1817, file: !1818, line: 44, baseType: !614, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1817, file: !1818, line: 45, baseType: !122, size: 128, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1778, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1778, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1778, file: !54, line: 132, baseType: !272, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1778, file: !54, line: 133, baseType: !1826, size: 64, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1829)
!1829 = !{!1830, !1834, !1835}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1828, file: !54, line: 83, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1727}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1828, file: !54, line: 89, baseType: !1686, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1828, file: !54, line: 100, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!115, !1777, !272, !272, !115}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1778, file: !54, line: 134, baseType: !116, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1778, file: !54, line: 135, baseType: !115, size: 32, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !54, line: 136, baseType: !1842, size: 128, offset: 1088)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !54, line: 136, size: 128, elements: !1843)
!1843 = !{!1844, !1850}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1842, file: !54, line: 137, baseType: !1845, size: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1846, line: 6, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1845, file: !1846, line: 7, baseType: !375, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1845, file: !1846, line: 8, baseType: !375, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !54, line: 138, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !54, line: 138, elements: !1852)
!1852 = !{!1853, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1851, file: !54, line: 138, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !54, line: 138, elements: !505)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1851, file: !54, line: 138, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, elements: !1322)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1774, file: !38, line: 147, baseType: !116, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1732, file: !38, line: 161, baseType: !914, size: 128, align: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !38, line: 164, baseType: !1860, size: 32, offset: 384)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !38, line: 164, size: 32, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1860, file: !38, line: 169, baseType: !172, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1860, file: !38, line: 177, baseType: !7, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1728, file: !38, line: 181, baseType: !172, size: 32, offset: 416)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1691, file: !1666, line: 535, baseType: !1727, size: 64, offset: 640)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1691, file: !1666, line: 541, baseType: !1867, size: 64, offset: 704)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1691, file: !1666, line: 545, baseType: !1869, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1691, file: !1666, line: 549, baseType: !1871, size: 64, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1633, line: 520, baseType: !1727)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1665, file: !1666, line: 581, baseType: !1873, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1689, !1690, !7}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1665, file: !1666, line: 582, baseType: !1877, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1689, !1690, !272, !272}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1665, file: !1666, line: 584, baseType: !1881, size: 64, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!272, !1618}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1665, file: !1666, line: 588, baseType: !1686, size: 64, offset: 576)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1665, file: !1666, line: 591, baseType: !1686, size: 64, offset: 640)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1665, file: !1666, line: 597, baseType: !1887, size: 64, offset: 704)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!115, !1618, !272, !116, !115, !115}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1665, file: !1666, line: 603, baseType: !1891, size: 64, offset: 768)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!141, !1618}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1665, file: !1666, line: 613, baseType: !1895, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!115, !1618, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1665, file: !1666, line: 625, baseType: !1901, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1898, !1618, !272}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1665, file: !1666, line: 633, baseType: !1905, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1727, !1618, !272}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1619, file: !38, line: 697, baseType: !272, size: 64, offset: 1024)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1619, file: !38, line: 699, baseType: !1260, size: 64, offset: 1088)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1619, file: !38, line: 700, baseType: !116, size: 64, offset: 1152)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1619, file: !38, line: 711, baseType: !605, size: 64, offset: 1216)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1619, file: !38, line: 717, baseType: !1898, size: 64, offset: 1280)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1619, file: !38, line: 722, baseType: !1914, offset: 1344)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !505)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1537, file: !14, line: 1928, baseType: !272, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1537, file: !14, line: 1929, baseType: !1917, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!115, !302, !1260}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1537, file: !14, line: 1930, baseType: !1921, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!115, !1260, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !116)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1537, file: !14, line: 1931, baseType: !1917, size: 64, offset: 960)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1537, file: !14, line: 1932, baseType: !1927, size: 64, offset: 1024)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!115, !1260, !463, !463, !115}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1537, file: !14, line: 1933, baseType: !1931, size: 64, offset: 1088)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!115, !115, !1260, !115}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !14, line: 1934, baseType: !1935, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!115, !1260, !115, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1537, file: !14, line: 1935, baseType: !1257, size: 64, offset: 1216)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1537, file: !14, line: 1936, baseType: !1942, size: 64, offset: 1280)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!115, !115}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1537, file: !14, line: 1937, baseType: !1935, size: 64, offset: 1344)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1537, file: !14, line: 1938, baseType: !1947, size: 64, offset: 1408)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!254, !1950, !1260, !1548, !269, !7}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !576, line: 59, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1537, file: !14, line: 1939, baseType: !1953, size: 64, offset: 1472)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!254, !1260, !1548, !1950, !269, !7}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1537, file: !14, line: 1940, baseType: !1957, size: 64, offset: 1536)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1260}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1537, file: !14, line: 1941, baseType: !1961, size: 64, offset: 1600)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!115, !1260, !115, !1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1537, file: !14, line: 1942, baseType: !1967, size: 64, offset: 1664)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!258, !1260, !115, !463, !463}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1537, file: !14, line: 1944, baseType: !1971, size: 64, offset: 1728)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !574, !1260}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1537, file: !14, line: 1948, baseType: !1975, size: 64, offset: 1792)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!254, !1260, !463, !1260, !463, !269, !7}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1537, file: !14, line: 1950, baseType: !1979, size: 64, offset: 1856)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!463, !1260, !463, !1260, !463, !463, !7}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1537, file: !14, line: 1953, baseType: !1927, size: 64, offset: 1920)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1537, file: !14, line: 1954, baseType: !1984, size: 64, offset: 1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!115, !1987, !7}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1537, file: !14, line: 1955, baseType: !1990, size: 64, offset: 2048)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!115, !1987, !1586, !7}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1261, file: !14, line: 1018, baseType: !375, size: 64, offset: 1472)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1261, file: !14, line: 1020, baseType: !116, size: 64, offset: 1536)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1261, file: !14, line: 1023, baseType: !116, size: 64, offset: 1600)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1261, file: !14, line: 1027, baseType: !1997, size: 64, offset: 1664)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1261, file: !14, line: 1029, baseType: !298, size: 64, offset: 1728)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1261, file: !14, line: 1030, baseType: !2000, size: 32, offset: 1792)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2001, line: 8, baseType: !371)
!2001 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1261, file: !14, line: 1031, baseType: !2000, size: 32, offset: 1824)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1237, file: !38, line: 756, baseType: !272, size: 64, offset: 704)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1237, file: !38, line: 757, baseType: !272, size: 64, offset: 768)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1237, file: !38, line: 760, baseType: !272, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1237, file: !38, line: 761, baseType: !272, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1237, file: !38, line: 763, baseType: !272, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1237, file: !38, line: 764, baseType: !2009, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1633, line: 299, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 299, size: 64, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2011, file: !1633, line: 299, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1638, line: 18, baseType: !272)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1237, file: !38, line: 773, baseType: !172, size: 32, offset: 1088)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1237, file: !38, line: 785, baseType: !172, size: 32, offset: 1120)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1237, file: !38, line: 795, baseType: !2018, size: 64, offset: 1152)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2019, file: !38, line: 727, baseType: !375, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2019, file: !38, line: 728, baseType: !115, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1237, file: !38, line: 801, baseType: !272, size: 64, offset: 1216)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1237, file: !38, line: 804, baseType: !605, size: 64, offset: 1280)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1237, file: !38, line: 806, baseType: !115, size: 32, offset: 1344)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1237, file: !38, line: 808, baseType: !152, size: 32, offset: 1376)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1237, file: !38, line: 823, baseType: !814, size: 320, offset: 1408)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1237, file: !38, line: 825, baseType: !122, size: 128, offset: 1728)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1237, file: !38, line: 845, baseType: !115, size: 32, offset: 1856)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1237, file: !38, line: 849, baseType: !272, size: 64, offset: 1920)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1237, file: !38, line: 850, baseType: !272, size: 64, offset: 1984)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1237, file: !38, line: 852, baseType: !272, size: 64, offset: 2048)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1237, file: !38, line: 853, baseType: !272, size: 64, offset: 2112)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1237, file: !38, line: 854, baseType: !607, size: 64, offset: 2176)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1237, file: !38, line: 855, baseType: !272, size: 64, offset: 2240)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1237, file: !38, line: 856, baseType: !272, size: 64, offset: 2304)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1237, file: !38, line: 857, baseType: !272, size: 64, offset: 2368)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1237, file: !38, line: 858, baseType: !272, size: 64, offset: 2432)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1237, file: !38, line: 865, baseType: !348, size: 32, offset: 2496)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1237, file: !38, line: 867, baseType: !152, size: 32, offset: 2528)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1237, file: !38, line: 869, baseType: !272, size: 64, offset: 2560)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1237, file: !38, line: 869, baseType: !272, size: 64, offset: 2624)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1237, file: !38, line: 869, baseType: !272, size: 64, offset: 2688)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1237, file: !38, line: 869, baseType: !272, size: 64, offset: 2752)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1237, file: !38, line: 870, baseType: !272, size: 64, offset: 2816)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1237, file: !38, line: 870, baseType: !272, size: 64, offset: 2880)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1237, file: !38, line: 870, baseType: !272, size: 64, offset: 2944)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1237, file: !38, line: 871, baseType: !272, size: 64, offset: 3008)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1237, file: !38, line: 871, baseType: !272, size: 64, offset: 3072)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1237, file: !38, line: 871, baseType: !272, size: 64, offset: 3136)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1237, file: !38, line: 871, baseType: !272, size: 64, offset: 3200)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1237, file: !38, line: 873, baseType: !2053, size: 3328, offset: 3264)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 3328, elements: !2054)
!2054 = !{!2055}
!2055 = !DISubrange(count: 52)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1237, file: !38, line: 875, baseType: !2057, size: 1280, offset: 6592)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 1280, elements: !1309)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1237, file: !38, line: 877, baseType: !2059, size: 64, offset: 7872)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1237, file: !38, line: 880, baseType: !2062, size: 1088, offset: 7936)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2063, line: 72, baseType: !2064)
!2063 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2063, line: 23, size: 1088, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2073, !2074, !2075, !2076, !2103, !2104, !2105}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2064, file: !2063, line: 28, baseType: !375, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2064, file: !2063, line: 38, baseType: !607, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2064, file: !2063, line: 40, baseType: !272, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2064, file: !2063, line: 43, baseType: !814, size: 320, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2064, file: !2063, line: 44, baseType: !2071, size: 64, offset: 512)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2063, line: 44, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2063, line: 48, baseType: !272, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2064, file: !2063, line: 59, baseType: !601, size: 256, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2064, file: !2063, line: 60, baseType: !116, size: 64, offset: 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2064, file: !2063, line: 61, baseType: !2077, size: 64, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2080, line: 13, size: 1216, elements: !2081)
!2080 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2079, file: !2080, line: 14, baseType: !116, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2079, file: !2080, line: 15, baseType: !272, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2079, file: !2080, line: 17, baseType: !272, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2079, file: !2080, line: 17, baseType: !272, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2079, file: !2080, line: 18, baseType: !272, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2079, file: !2080, line: 18, baseType: !272, size: 64, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2079, file: !2080, line: 19, baseType: !2089, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2079, file: !2080, line: 21, baseType: !258, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2079, file: !2080, line: 23, baseType: !258, size: 64, offset: 512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2079, file: !2080, line: 24, baseType: !258, size: 64, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2079, file: !2080, line: 25, baseType: !258, size: 64, offset: 640)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2079, file: !2080, line: 26, baseType: !258, size: 64, offset: 704)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2079, file: !2080, line: 27, baseType: !258, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2079, file: !2080, line: 28, baseType: !258, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2079, file: !2080, line: 29, baseType: !258, size: 64, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2079, file: !2080, line: 30, baseType: !258, size: 64, offset: 960)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2079, file: !2080, line: 31, baseType: !258, size: 64, offset: 1024)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2079, file: !2080, line: 32, baseType: !258, size: 64, offset: 1088)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2079, file: !2080, line: 33, baseType: !258, size: 64, offset: 1152)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2064, file: !2063, line: 63, baseType: !172, size: 32, offset: 1024)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2064, file: !2063, line: 69, baseType: !190, size: 16, offset: 1056)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2064, file: !2063, line: 70, baseType: !2106, size: 16, offset: 1072)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !181, line: 18, baseType: !2107)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !183, line: 23, baseType: !1390)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !38, line: 882, baseType: !272, size: 64, offset: 9024)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1237, file: !38, line: 885, baseType: !152, size: 32, offset: 9088)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1237, file: !38, line: 886, baseType: !2111, size: 64, offset: 9152)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1237, file: !38, line: 901, baseType: !1504, size: 64, offset: 9216)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1237, file: !38, line: 904, baseType: !1260, size: 64, offset: 9280)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1237, file: !38, line: 906, baseType: !2116, size: 64, offset: 9344)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1237, file: !38, line: 930, baseType: !172, size: 32, offset: 9408)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1237, file: !38, line: 933, baseType: !172, size: 32, offset: 9440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1237, file: !38, line: 935, baseType: !2121, size: 64, offset: 9472)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2121, file: !68, line: 104, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1237, file: !38, line: 940, baseType: !605, size: 64, offset: 9536)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1237, file: !38, line: 942, baseType: !2128, size: 256, offset: 9600)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2129, line: 98, size: 256, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2128, file: !2129, line: 99, baseType: !605, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2128, file: !2129, line: 100, baseType: !122, size: 128, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2128, file: !2129, line: 101, baseType: !2134, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2129, line: 21, baseType: !2135)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1234, file: !38, line: 986, baseType: !2140, offset: 10240)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !1322)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !930, file: !576, line: 882, baseType: !1233, size: 64, offset: 9792)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !930, file: !576, line: 884, baseType: !115, size: 32, offset: 9856)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !930, file: !576, line: 885, baseType: !115, size: 32, offset: 9888)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !930, file: !576, line: 886, baseType: !115, size: 32, offset: 9920)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !930, file: !576, line: 888, baseType: !115, size: 32, offset: 9952)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !930, file: !576, line: 890, baseType: !272, size: 64, offset: 9984)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !930, file: !576, line: 893, baseType: !7, size: 32, offset: 10048)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !930, file: !576, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !930, file: !576, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !930, file: !576, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !930, file: !576, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !930, file: !576, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !930, file: !576, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !930, file: !576, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !930, file: !576, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !930, file: !576, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !930, file: !576, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !930, file: !576, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !930, file: !576, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !930, file: !576, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !930, file: !576, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !930, file: !576, line: 969, baseType: !272, size: 64, offset: 10176)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !930, file: !576, line: 971, baseType: !2164, size: 448, offset: 10240)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2165)
!2165 = !{!2166, !2167, !2172}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2164, file: !62, line: 26, baseType: !272, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2164, file: !62, line: 27, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!258, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !62, line: 28, baseType: !2173, size: 320, offset: 128)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !62, line: 28, size: 320, elements: !2174)
!2174 = !{!2175, !2185, !2210}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2173, file: !62, line: 37, baseType: !2176, size: 320)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !62, line: 30, size: 320, elements: !2177)
!2177 = !{!2178, !2180, !2181, !2182, !2183, !2184}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2176, file: !62, line: 31, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2176, file: !62, line: 32, baseType: !371, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2176, file: !62, line: 33, baseType: !371, size: 32, offset: 96)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2176, file: !62, line: 34, baseType: !371, size: 32, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2176, file: !62, line: 35, baseType: !375, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2176, file: !62, line: 36, baseType: !2179, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2173, file: !62, line: 47, baseType: !2186, size: 192)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !62, line: 39, size: 192, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2209}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2186, file: !62, line: 40, baseType: !1104, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2186, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !62, line: 42, baseType: !2191, size: 64, offset: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2186, file: !62, line: 42, size: 64, elements: !2192)
!2192 = !{!2193, !2201}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2191, file: !62, line: 43, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2196, line: 7, size: 128, elements: !2197)
!2196 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2197 = !{!2198, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2195, file: !2196, line: 8, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !256, line: 93, baseType: !465)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2195, file: !2196, line: 9, baseType: !465, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2191, file: !62, line: 44, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2204, line: 7, size: 64, elements: !2205)
!2204 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2205 = !{!2206, !2208}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2203, file: !2204, line: 8, baseType: !2207, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2204, line: 5, baseType: !1364)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2203, file: !2204, line: 9, baseType: !1364, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2186, file: !62, line: 46, baseType: !375, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2173, file: !62, line: 55, baseType: !2211, size: 256)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !62, line: 49, size: 256, elements: !2212)
!2212 = !{!2213, !2216, !2217, !2218, !2219}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2211, file: !62, line: 50, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2211, file: !62, line: 51, baseType: !115, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2211, file: !62, line: 52, baseType: !115, size: 32, offset: 96)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2211, file: !62, line: 53, baseType: !272, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2211, file: !62, line: 54, baseType: !272, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !930, file: !576, line: 973, baseType: !2221, size: 32, offset: 10688)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !123, line: 27, baseType: !2222)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !256, line: 28, baseType: !115)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !930, file: !576, line: 974, baseType: !2221, size: 32, offset: 10720)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !930, file: !576, line: 978, baseType: !272, size: 64, offset: 10752)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !930, file: !576, line: 987, baseType: !929, size: 64, offset: 10816)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !930, file: !576, line: 990, baseType: !929, size: 64, offset: 10880)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !930, file: !576, line: 995, baseType: !122, size: 128, offset: 10944)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !930, file: !576, line: 996, baseType: !122, size: 128, offset: 11072)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !930, file: !576, line: 997, baseType: !929, size: 64, offset: 11200)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !930, file: !576, line: 1005, baseType: !122, size: 128, offset: 11264)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !930, file: !576, line: 1006, baseType: !122, size: 128, offset: 11392)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !930, file: !576, line: 1009, baseType: !1301, size: 64, offset: 11520)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !930, file: !576, line: 1010, baseType: !2234, size: 512, offset: 11584)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 512, elements: !1309)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !930, file: !576, line: 1011, baseType: !122, size: 128, offset: 12096)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !930, file: !576, line: 1012, baseType: !122, size: 128, offset: 12224)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !930, file: !576, line: 1014, baseType: !2238, size: 64, offset: 12352)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !930, file: !576, line: 1017, baseType: !568, size: 64, offset: 12416)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !930, file: !576, line: 1020, baseType: !568, size: 64, offset: 12480)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !930, file: !576, line: 1023, baseType: !116, size: 64, offset: 12544)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !930, file: !576, line: 1025, baseType: !375, size: 64, offset: 12608)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !930, file: !576, line: 1026, baseType: !375, size: 64, offset: 12672)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !930, file: !576, line: 1031, baseType: !375, size: 64, offset: 12736)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !930, file: !576, line: 1032, baseType: !2246, size: 192, offset: 12800)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !576, line: 324, size: 192, elements: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2246, file: !576, line: 326, baseType: !375, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2246, file: !576, line: 327, baseType: !375, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2246, file: !576, line: 328, baseType: !614, size: 32, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !930, file: !576, line: 1041, baseType: !272, size: 64, offset: 12992)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !930, file: !576, line: 1042, baseType: !272, size: 64, offset: 13056)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !930, file: !576, line: 1045, baseType: !375, size: 64, offset: 13120)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !930, file: !576, line: 1048, baseType: !375, size: 64, offset: 13184)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !930, file: !576, line: 1051, baseType: !272, size: 64, offset: 13248)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !930, file: !576, line: 1052, baseType: !272, size: 64, offset: 13312)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !930, file: !576, line: 1055, baseType: !2258, size: 640, offset: 13376)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2259, line: 132, size: 640, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2260 = !{!2261, !2267, !2268}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2258, file: !2259, line: 133, baseType: !2262, size: 576)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2263, size: 576, elements: !223)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2259, line: 117, size: 192, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2263, file: !2259, line: 118, baseType: !375, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2263, file: !2259, line: 119, baseType: !1113, size: 128, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2258, file: !2259, line: 134, baseType: !7, size: 32, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2258, file: !2259, line: 135, baseType: !7, size: 32, offset: 608)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !930, file: !576, line: 1058, baseType: !2270, size: 448, offset: 14016)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2259, line: 144, size: 448, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2270, file: !2259, line: 145, baseType: !914, size: 128, align: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2270, file: !2259, line: 146, baseType: !601, size: 256, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2270, file: !2259, line: 147, baseType: !7, size: 32, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !930, file: !576, line: 1064, baseType: !1329, size: 64, offset: 14464)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !930, file: !576, line: 1067, baseType: !1329, size: 64, offset: 14528)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !930, file: !576, line: 1070, baseType: !1329, size: 64, offset: 14592)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !930, file: !576, line: 1074, baseType: !1356, size: 64, offset: 14656)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !930, file: !576, line: 1084, baseType: !2280, size: 128, offset: 14720)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !2281)
!2281 = !{!2282}
!2282 = !DISubrange(count: 16)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !930, file: !576, line: 1086, baseType: !2284, size: 64, offset: 14848)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !576, line: 55, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !930, file: !576, line: 1089, baseType: !2287, size: 64, offset: 14912)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2288, line: 12, size: 64, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2289 = !{!2290}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2287, file: !2288, line: 13, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2288, line: 8, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !930, file: !576, line: 1090, baseType: !2294, size: 128, offset: 14976)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2295, line: 13, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2296 = !{!2297}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2294, file: !2295, line: 14, baseType: !122, size: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !930, file: !576, line: 1097, baseType: !2299, size: 64, offset: 15104)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !576, line: 50, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !930, file: !576, line: 1100, baseType: !2302, size: 64, offset: 15168)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !576, line: 1100, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !930, file: !576, line: 1103, baseType: !2305, size: 64, offset: 15232)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !576, line: 53, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !930, file: !576, line: 1107, baseType: !2308, size: 64, offset: 15296)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !576, line: 56, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !930, file: !576, line: 1110, baseType: !2311, size: 64, offset: 15360)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2313, line: 93, size: 8768, elements: !2314)
!2313 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2364, !2373, !2374, !2376, !2377, !2378, !2381, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2419, !2420, !2427, !2437, !2440, !2441, !2444, !2445, !2446, !2447, !2448, !2449}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2312, file: !2313, line: 94, baseType: !943, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2312, file: !2313, line: 95, baseType: !172, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2312, file: !2313, line: 96, baseType: !115, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2312, file: !2313, line: 97, baseType: !115, size: 32, offset: 96)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2312, file: !2313, line: 98, baseType: !122, size: 128, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2312, file: !2313, line: 100, baseType: !907, size: 192, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2312, file: !2313, line: 103, baseType: !929, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2312, file: !2313, line: 106, baseType: !2323, size: 192, offset: 512)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1509, line: 32, size: 192, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2323, file: !1509, line: 33, baseType: !122, size: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2323, file: !1509, line: 34, baseType: !2327, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2328, line: 25, baseType: !2329)
!2328 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2328, line: 23, size: 64, elements: !2330)
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2329, file: !2328, line: 24, baseType: !1184, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2312, file: !2313, line: 109, baseType: !493, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2312, file: !2313, line: 112, baseType: !115, size: 32, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2312, file: !2313, line: 114, baseType: !115, size: 32, offset: 800)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2312, file: !2313, line: 115, baseType: !929, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2312, file: !2313, line: 118, baseType: !115, size: 32, offset: 896)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 119, baseType: !7, size: 32, offset: 928)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2312, file: !2313, line: 121, baseType: !2339, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2313, line: 80, size: 448, elements: !2341)
!2341 = !{!2342, !2343, !2349}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2340, file: !2313, line: 81, baseType: !172, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2340, file: !2313, line: 82, baseType: !2344, size: 128, offset: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2313, line: 75, size: 128, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2344, file: !2313, line: 76, baseType: !929, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2344, file: !2313, line: 77, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2340, file: !2313, line: 83, baseType: !1812, size: 256, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2312, file: !2313, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2312, file: !2313, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2312, file: !2313, line: 138, baseType: !7, size: 32, offset: 1056)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2312, file: !2313, line: 139, baseType: !122, size: 128, offset: 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2312, file: !2313, line: 142, baseType: !1057, size: 512, offset: 1216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2312, file: !2313, line: 143, baseType: !1065, size: 64, offset: 1728)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2312, file: !2313, line: 150, baseType: !2357, size: 256, offset: 1792)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2358, size: 256, elements: !2362)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2313, line: 38, size: 128, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2358, file: !2313, line: 39, baseType: !375, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2358, file: !2313, line: 40, baseType: !375, size: 64, offset: 64)
!2362 = !{!2363}
!2363 = !DISubrange(count: 2)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2312, file: !2313, line: 156, baseType: !2365, size: 192, offset: 2048)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2313, line: 66, size: 192, elements: !2366)
!2366 = !{!2367}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2365, file: !2313, line: 67, baseType: !2368, size: 192)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2313, line: 47, size: 192, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2368, file: !2313, line: 48, baseType: !607, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2368, file: !2313, line: 49, baseType: !607, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2368, file: !2313, line: 50, baseType: !607, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2312, file: !2313, line: 160, baseType: !2258, size: 640, offset: 2240)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2312, file: !2313, line: 163, baseType: !2375, size: 256, offset: 2880)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1301, size: 256, elements: !1309)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2312, file: !2313, line: 169, baseType: !1301, size: 64, offset: 3136)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2312, file: !2313, line: 172, baseType: !115, size: 32, offset: 3200)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2312, file: !2313, line: 174, baseType: !2379, size: 64, offset: 3264)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2313, line: 174, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2312, file: !2313, line: 185, baseType: !2382, size: 64, offset: 3328)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !344, line: 860, baseType: !2383)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 853, size: 64, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2383, file: !344, line: 858, baseType: !343, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2383, file: !344, line: 859, baseType: !152, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2312, file: !2313, line: 186, baseType: !375, size: 64, offset: 3392)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2312, file: !2313, line: 186, baseType: !375, size: 64, offset: 3456)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2312, file: !2313, line: 186, baseType: !375, size: 64, offset: 3520)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2312, file: !2313, line: 186, baseType: !375, size: 64, offset: 3584)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2312, file: !2313, line: 187, baseType: !375, size: 64, offset: 3648)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2312, file: !2313, line: 188, baseType: !375, size: 64, offset: 3712)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2312, file: !2313, line: 189, baseType: !2246, size: 192, offset: 3776)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2312, file: !2313, line: 190, baseType: !272, size: 64, offset: 3968)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2312, file: !2313, line: 190, baseType: !272, size: 64, offset: 4032)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2312, file: !2313, line: 190, baseType: !272, size: 64, offset: 4096)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2312, file: !2313, line: 190, baseType: !272, size: 64, offset: 4160)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2312, file: !2313, line: 191, baseType: !272, size: 64, offset: 4224)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2312, file: !2313, line: 191, baseType: !272, size: 64, offset: 4288)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2312, file: !2313, line: 191, baseType: !272, size: 64, offset: 4352)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2312, file: !2313, line: 191, baseType: !272, size: 64, offset: 4416)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2312, file: !2313, line: 192, baseType: !272, size: 64, offset: 4480)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2312, file: !2313, line: 192, baseType: !272, size: 64, offset: 4544)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2312, file: !2313, line: 192, baseType: !272, size: 64, offset: 4608)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2312, file: !2313, line: 192, baseType: !272, size: 64, offset: 4672)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2312, file: !2313, line: 193, baseType: !272, size: 64, offset: 4736)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2312, file: !2313, line: 193, baseType: !272, size: 64, offset: 4800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2312, file: !2313, line: 194, baseType: !2409, size: 448, offset: 4864)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2410, line: 12, size: 448, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2409, file: !2410, line: 15, baseType: !375, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2409, file: !2410, line: 17, baseType: !375, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2409, file: !2410, line: 19, baseType: !375, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2409, file: !2410, line: 21, baseType: !375, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2409, file: !2410, line: 29, baseType: !375, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2409, file: !2410, line: 35, baseType: !375, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2409, file: !2410, line: 44, baseType: !375, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2312, file: !2313, line: 202, baseType: !377, size: 64, offset: 5312)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2312, file: !2313, line: 213, baseType: !2421, size: 2048, offset: 5376)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 2048, elements: !2281)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2423, line: 43, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2422, file: !2423, line: 44, baseType: !271, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2422, file: !2423, line: 45, baseType: !271, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2312, file: !2313, line: 216, baseType: !2428, size: 448, offset: 7424)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2313, line: 30, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2428, file: !2313, line: 31, baseType: !115, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2428, file: !2313, line: 32, baseType: !258, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2428, file: !2313, line: 33, baseType: !272, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2428, file: !2313, line: 34, baseType: !375, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2428, file: !2313, line: 34, baseType: !375, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2428, file: !2313, line: 35, baseType: !272, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2428, file: !2313, line: 35, baseType: !272, size: 64, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2312, file: !2313, line: 219, baseType: !2438, size: 64, offset: 7872)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2313, line: 219, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2312, file: !2313, line: 222, baseType: !7, size: 32, offset: 7936)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2312, file: !2313, line: 223, baseType: !2442, size: 64, offset: 8000)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2313, line: 223, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2312, file: !2313, line: 230, baseType: !1421, size: 8, offset: 8064)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2312, file: !2313, line: 231, baseType: !1390, size: 16, offset: 8080)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2312, file: !2313, line: 232, baseType: !1390, size: 16, offset: 8096)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2312, file: !2313, line: 234, baseType: !1233, size: 64, offset: 8128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2312, file: !2313, line: 237, baseType: !601, size: 256, offset: 8192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2312, file: !2313, line: 243, baseType: !814, size: 320, offset: 8448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !930, file: !576, line: 1111, baseType: !2451, size: 64, offset: 15424)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2313, line: 20, size: 16640, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2452, file: !2313, line: 21, baseType: !152, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2452, file: !2313, line: 22, baseType: !943, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2452, file: !2313, line: 23, baseType: !907, size: 192, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2452, file: !2313, line: 24, baseType: !2458, size: 16384, offset: 256)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2459, size: 16384, elements: !227)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1509, line: 51, size: 256, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2459, file: !1509, line: 52, baseType: !2462, size: 256)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1509, line: 37, size: 256, elements: !2463)
!2463 = !{!2464, !2471, !2472, !2478}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2462, file: !1509, line: 39, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2466, line: 83, baseType: !2467)
!2466 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2466, line: 82, baseType: !2469)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !115}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2462, file: !1509, line: 40, baseType: !272, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2462, file: !1509, line: 46, baseType: !2473, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2466, line: 86, baseType: !2474)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2466, line: 85, baseType: !2476)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2462, file: !1509, line: 48, baseType: !2327, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !930, file: !576, line: 1112, baseType: !2327, size: 64, offset: 15488)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !930, file: !576, line: 1113, baseType: !2327, size: 64, offset: 15552)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !930, file: !576, line: 1115, baseType: !2327, size: 64, offset: 15616)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !930, file: !576, line: 1116, baseType: !2323, size: 192, offset: 15680)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !930, file: !576, line: 1117, baseType: !272, size: 64, offset: 15872)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !930, file: !576, line: 1118, baseType: !269, size: 64, offset: 15936)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !930, file: !576, line: 1119, baseType: !7, size: 32, offset: 16000)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !930, file: !576, line: 1121, baseType: !917, size: 64, offset: 16064)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !930, file: !576, line: 1125, baseType: !2488, size: 64, offset: 16128)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !576, line: 43, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !930, file: !576, line: 1127, baseType: !308, size: 32, offset: 16192)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !930, file: !576, line: 1128, baseType: !7, size: 32, offset: 16224)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !930, file: !576, line: 1130, baseType: !2493, size: 128, offset: 16256)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2494, line: 37, size: 128, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2495 = !{!2496, !2497, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2493, file: !2494, line: 38, baseType: !115, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2493, file: !2494, line: 39, baseType: !172, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2493, file: !2494, line: 40, baseType: !2499, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2494, line: 24, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !930, file: !576, line: 1131, baseType: !2502, size: 256, offset: 16384)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2503, line: 12, size: 256, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2502, file: !2503, line: 13, baseType: !222, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2502, file: !2503, line: 14, baseType: !272, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2502, file: !2503, line: 15, baseType: !272, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2502, file: !2503, line: 16, baseType: !1421, size: 8, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !930, file: !576, line: 1134, baseType: !375, size: 64, offset: 16640)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !930, file: !576, line: 1135, baseType: !375, size: 64, offset: 16704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !930, file: !576, line: 1138, baseType: !152, size: 32, offset: 16768)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !930, file: !576, line: 1141, baseType: !614, size: 32, offset: 16800)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !930, file: !576, line: 1143, baseType: !2514, size: 64, offset: 16832)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !576, line: 735, size: 64, elements: !2515)
!2515 = !{!2516}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2514, file: !576, line: 736, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !930, file: !576, line: 1147, baseType: !1116, size: 128, offset: 16896)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !930, file: !576, line: 1149, baseType: !929, size: 64, offset: 17024)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !930, file: !576, line: 1151, baseType: !2521, size: 64, offset: 17088)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !576, line: 1151, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !930, file: !576, line: 1188, baseType: !116, size: 64, offset: 17152)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !930, file: !576, line: 1191, baseType: !2525, size: 64, offset: 17216)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !576, line: 44, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !930, file: !576, line: 1194, baseType: !2528, size: 64, offset: 17280)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !576, line: 45, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !930, file: !576, line: 1197, baseType: !2531, size: 64, offset: 17344)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !576, line: 61, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !930, file: !576, line: 1199, baseType: !2534, size: 64, offset: 17408)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2536, line: 99, size: 128, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2535, file: !2536, line: 100, baseType: !605, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2535, file: !2536, line: 101, baseType: !172, size: 32, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2535, file: !2536, line: 103, baseType: !192, size: 16, offset: 96)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !930, file: !576, line: 1202, baseType: !2542, size: 64, offset: 17472)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !576, line: 48, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !930, file: !576, line: 1205, baseType: !272, size: 64, offset: 17536)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !930, file: !576, line: 1206, baseType: !2546, size: 64, offset: 17600)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1509, line: 14, baseType: !2548)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1509, line: 12, size: 384, elements: !2549)
!2549 = !{!2550}
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !1509, line: 13, baseType: !2551, size: 384)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !1509, line: 13, size: 384, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2551, file: !1509, line: 13, baseType: !115, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2551, file: !1509, line: 13, baseType: !115, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2551, file: !1509, line: 13, baseType: !115, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2551, file: !1509, line: 13, baseType: !2557, size: 256, offset: 128)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2558, line: 37, size: 256, elements: !2559)
!2558 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2559 = !{!2560, !2565, !2578, !2584, !2593, !2620, !2625}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2557, file: !2558, line: 42, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 39, size: 64, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2561, file: !2558, line: 40, baseType: !2222, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2561, file: !2558, line: 41, baseType: !314, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2557, file: !2558, line: 50, baseType: !2566, size: 192)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 45, size: 192, elements: !2567)
!2567 = !{!2568, !2570, !2571, !2577}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2566, file: !2558, line: 46, baseType: !2569, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !256, line: 95, baseType: !115)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2566, file: !2558, line: 47, baseType: !115, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2566, file: !2558, line: 48, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2558, line: 11, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2558, line: 8, size: 64, elements: !2574)
!2574 = !{!2575, !2576}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2573, file: !2558, line: 9, baseType: !115, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2573, file: !2558, line: 10, baseType: !116, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2566, file: !2558, line: 49, baseType: !115, size: 32, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2557, file: !2558, line: 57, baseType: !2579, size: 128)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 53, size: 128, elements: !2580)
!2580 = !{!2581, !2582, !2583}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2579, file: !2558, line: 54, baseType: !2222, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2579, file: !2558, line: 55, baseType: !314, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2579, file: !2558, line: 56, baseType: !2572, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2557, file: !2558, line: 66, baseType: !2585, size: 256)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 60, size: 256, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2592}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2585, file: !2558, line: 61, baseType: !2222, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2585, file: !2558, line: 62, baseType: !314, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2585, file: !2558, line: 63, baseType: !115, size: 32, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2585, file: !2558, line: 64, baseType: !2591, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !256, line: 94, baseType: !257)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2585, file: !2558, line: 65, baseType: !2591, size: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2557, file: !2558, line: 105, baseType: !2594, size: 256)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 69, size: 256, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2594, file: !2558, line: 70, baseType: !116, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !2558, line: 79, baseType: !2598, size: 192, offset: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2594, file: !2558, line: 79, size: 192, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2609, !2614}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2598, file: !2558, line: 81, baseType: !115, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2598, file: !2558, line: 86, baseType: !1390, size: 16)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2598, file: !2558, line: 92, baseType: !2603, size: 192)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2598, file: !2558, line: 88, size: 192, elements: !2604)
!2604 = !{!2605, !2607, !2608}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2603, file: !2558, line: 89, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !1100)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2603, file: !2558, line: 90, baseType: !116, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2603, file: !2558, line: 91, baseType: !116, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2598, file: !2558, line: 97, baseType: !2610, size: 96)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2598, file: !2558, line: 94, size: 96, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2610, file: !2558, line: 95, baseType: !2606, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2610, file: !2558, line: 96, baseType: !372, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2598, file: !2558, line: 103, baseType: !2615, size: 128)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2598, file: !2558, line: 99, size: 128, elements: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2615, file: !2558, line: 100, baseType: !272, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2615, file: !2558, line: 101, baseType: !372, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2615, file: !2558, line: 102, baseType: !372, size: 32, offset: 96)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2557, file: !2558, line: 111, baseType: !2621, size: 128)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 108, size: 128, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2621, file: !2558, line: 109, baseType: !258, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2621, file: !2558, line: 110, baseType: !115, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2557, file: !2558, line: 118, baseType: !2626, size: 128)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2558, line: 114, size: 128, elements: !2627)
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2626, file: !2558, line: 115, baseType: !116, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2626, file: !2558, line: 116, baseType: !115, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2626, file: !2558, line: 117, baseType: !7, size: 32, offset: 96)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !930, file: !576, line: 1208, baseType: !2409, size: 448, offset: 17664)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !930, file: !576, line: 1215, baseType: !375, size: 64, offset: 18112)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !930, file: !576, line: 1217, baseType: !375, size: 64, offset: 18176)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !930, file: !576, line: 1219, baseType: !375, size: 64, offset: 18240)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !930, file: !576, line: 1223, baseType: !2636, size: 64, offset: 18304)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2637, line: 99, baseType: !2638)
!2637 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2637, line: 99, size: 64, elements: !2639)
!2639 = !{!2640}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2638, file: !2637, line: 99, baseType: !1184, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !930, file: !576, line: 1225, baseType: !343, size: 32, offset: 18368)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !930, file: !576, line: 1226, baseType: !115, size: 32, offset: 18400)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !930, file: !576, line: 1227, baseType: !115, size: 32, offset: 18432)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !930, file: !576, line: 1231, baseType: !2645, size: 64, offset: 18496)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !576, line: 1231, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !930, file: !576, line: 1233, baseType: !122, size: 128, offset: 18560)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !930, file: !576, line: 1240, baseType: !2649, size: 64, offset: 18688)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !576, line: 62, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !930, file: !576, line: 1242, baseType: !2652, size: 64, offset: 18752)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !576, line: 1242, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !930, file: !576, line: 1244, baseType: !122, size: 128, offset: 18816)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !930, file: !576, line: 1245, baseType: !2656, size: 64, offset: 18944)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !576, line: 51, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !930, file: !576, line: 1246, baseType: !601, size: 256, offset: 19008)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !930, file: !576, line: 1247, baseType: !7, size: 32, offset: 19264)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !930, file: !576, line: 1250, baseType: !2661, size: 64, offset: 19328)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !576, line: 57, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !930, file: !576, line: 1251, baseType: !601, size: 256, offset: 19392)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !930, file: !576, line: 1252, baseType: !122, size: 128, offset: 19648)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !930, file: !576, line: 1259, baseType: !1898, size: 64, offset: 19776)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !930, file: !576, line: 1260, baseType: !1390, size: 16, offset: 19840)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !930, file: !576, line: 1261, baseType: !1390, size: 16, offset: 19856)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !930, file: !576, line: 1314, baseType: !2669, size: 64, offset: 19904)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2671, line: 62, size: 256, align: 256, elements: !2672)
!2671 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2670, file: !2671, line: 75, baseType: !372, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2670, file: !2671, line: 90, baseType: !372, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2670, file: !2671, line: 112, baseType: !376, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2670, file: !2671, line: 132, baseType: !372, size: 32, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2670, file: !2671, line: 140, baseType: !372, size: 32, offset: 160)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2670, file: !2671, line: 149, baseType: !372, size: 32, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2670, file: !2671, line: 154, baseType: !2680, offset: 224)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, elements: !1322)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !930, file: !576, line: 1315, baseType: !371, size: 32, offset: 19968)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !930, file: !576, line: 1316, baseType: !371, size: 32, offset: 20000)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !930, file: !576, line: 1321, baseType: !272, size: 64, offset: 20032)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !930, file: !576, line: 1325, baseType: !115, size: 32, offset: 20096)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !930, file: !576, line: 1326, baseType: !115, size: 32, offset: 20128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !930, file: !576, line: 1327, baseType: !115, size: 32, offset: 20160)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !930, file: !576, line: 1328, baseType: !115, size: 32, offset: 20192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !930, file: !576, line: 1329, baseType: !914, size: 128, align: 64, offset: 20224)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !930, file: !576, line: 1332, baseType: !2690, size: 128, offset: 20352)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2691, line: 51, size: 128, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2692 = !{!2693, !2698, !2699}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2690, file: !2691, line: 60, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2695, line: 7, size: 64, elements: !2696)
!2695 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2694, file: !2695, line: 12, baseType: !1181, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2690, file: !2691, line: 63, baseType: !1421, size: 8, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2690, file: !2691, line: 70, baseType: !1421, size: 8, offset: 72)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !930, file: !576, line: 1335, baseType: !1950, size: 64, offset: 20480)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !930, file: !576, line: 1337, baseType: !2702, size: 128, offset: 20544)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2691, line: 39, size: 128, elements: !2703)
!2703 = !{!2704, !2705, !2706}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2702, file: !2691, line: 40, baseType: !1727, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2702, file: !2691, line: 42, baseType: !372, size: 32, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2702, file: !2691, line: 43, baseType: !372, size: 32, offset: 96)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !930, file: !576, line: 1340, baseType: !2708, size: 64, offset: 20672)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !576, line: 69, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !930, file: !576, line: 1351, baseType: !115, size: 32, offset: 20736)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !930, file: !576, line: 1352, baseType: !115, size: 32, offset: 20768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !930, file: !576, line: 1354, baseType: !272, size: 64, offset: 20800)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !930, file: !576, line: 1364, baseType: !375, size: 64, offset: 20864)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !930, file: !576, line: 1365, baseType: !375, size: 64, offset: 20928)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !930, file: !576, line: 1412, baseType: !272, size: 64, offset: 20992)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !930, file: !576, line: 1453, baseType: !2717, size: 64, offset: 21056)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !576, line: 1453, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !930, file: !576, line: 1457, baseType: !2720, size: 64, offset: 21120)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2722)
!2722 = !{!2723, !2724, !2743, !2746, !2747, !2780, !2790}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2721, file: !68, line: 62, baseType: !67, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !68, line: 64, baseType: !2725, size: 192, offset: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !68, line: 64, size: 192, elements: !2726)
!2726 = !{!2727, !2738}
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !68, line: 65, baseType: !2728, size: 192)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2725, file: !68, line: 65, size: 192, elements: !2729)
!2729 = !{!2730, !2737}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2728, file: !68, line: 66, baseType: !2731, size: 128)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2732, line: 50, size: 128, elements: !2733)
!2732 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2733 = !{!2734, !2735, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2731, file: !2732, line: 52, baseType: !272, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2731, file: !2732, line: 54, baseType: !7, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2731, file: !2732, line: 55, baseType: !7, size: 32, offset: 96)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2728, file: !68, line: 67, baseType: !272, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !68, line: 70, baseType: !2739, size: 192)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2725, file: !68, line: 70, size: 192, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2739, file: !68, line: 71, baseType: !914, size: 128, align: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2739, file: !68, line: 72, baseType: !272, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2721, file: !68, line: 76, baseType: !2744, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2721, file: !68, line: 77, baseType: !272, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2721, file: !68, line: 79, baseType: !2748, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2732, line: 25, size: 256, elements: !2750)
!2750 = !{!2751, !2757, !2761}
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !2749, file: !2732, line: 26, baseType: !2752, size: 128)
!2752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2749, file: !2732, line: 26, size: 128, elements: !2753)
!2753 = !{!2754, !2756}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2752, file: !2732, line: 27, baseType: !2755, size: 128)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !2281)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2752, file: !2732, line: 28, baseType: !2755, size: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2749, file: !2732, line: 31, baseType: !2758, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2732, line: 23, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, scope: !2749, file: !2732, line: 33, baseType: !2762, size: 64, offset: 192)
!2762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2749, file: !2732, line: 33, size: 64, elements: !2763)
!2763 = !{!2764, !2770, !2775}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2762, file: !2732, line: 38, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2762, file: !2732, line: 34, size: 64, elements: !2766)
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2765, file: !2732, line: 35, baseType: !1364, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2765, file: !2732, line: 36, baseType: !180, size: 8, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2765, file: !2732, line: 37, baseType: !180, size: 8, offset: 40)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2762, file: !2732, line: 42, baseType: !2771, size: 16)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2762, file: !2732, line: 39, size: 16, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2771, file: !2732, line: 40, baseType: !180, size: 8)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2771, file: !2732, line: 41, baseType: !180, size: 8, offset: 8)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2762, file: !2732, line: 46, baseType: !2776, size: 16)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2762, file: !2732, line: 43, size: 16, elements: !2777)
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2776, file: !2732, line: 44, baseType: !180, size: 8)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2776, file: !2732, line: 45, baseType: !180, size: 8, offset: 8)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2721, file: !68, line: 81, baseType: !2781, size: 64, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2782, file: !68, line: 86, baseType: !2744, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2782, file: !68, line: 87, baseType: !272, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2782, file: !68, line: 88, baseType: !272, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2782, file: !68, line: 89, baseType: !272, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2782, file: !68, line: 90, baseType: !1421, size: 8, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2782, file: !68, line: 92, baseType: !2781, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2721, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !930, file: !576, line: 1463, baseType: !2792, offset: 21184)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !576, line: 739, elements: !505)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !930, file: !576, line: 1470, baseType: !914, size: 128, align: 64, offset: 21184)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !930, file: !576, line: 1471, baseType: !943, size: 32, offset: 21312)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !930, file: !576, line: 1472, baseType: !115, size: 32, offset: 21344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !930, file: !576, line: 1474, baseType: !929, size: 64, offset: 21376)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !930, file: !576, line: 1475, baseType: !2798, size: 320, offset: 21440)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2799, line: 11, size: 320, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2800 = !{!2801, !2802, !2803, !2808}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2798, file: !2799, line: 16, baseType: !497, size: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2798, file: !2799, line: 17, baseType: !272, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2798, file: !2799, line: 18, baseType: !2804, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2798, file: !2799, line: 19, baseType: !371, size: 32, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !930, file: !576, line: 1478, baseType: !2810, size: 64, offset: 21760)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2812, line: 49, size: 512, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2820, !2821, !2822, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2811, file: !2812, line: 50, baseType: !2810, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2811, file: !2812, line: 51, baseType: !116, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2811, file: !2812, line: 52, baseType: !272, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2811, file: !2812, line: 53, baseType: !272, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2811, file: !2812, line: 54, baseType: !2819, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2811, file: !2812, line: 56, baseType: !7, size: 32, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2811, file: !2812, line: 58, baseType: !7, size: 32, offset: 352)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2811, file: !2812, line: 59, baseType: !2823, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !123, line: 159, baseType: !375)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2811, file: !2812, line: 60, baseType: !2089, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !930, file: !576, line: 1482, baseType: !943, size: 32, offset: 21824)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !930, file: !576, line: 1489, baseType: !116, size: 64, offset: 21888)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !930, file: !576, line: 1504, baseType: !116, size: 64, offset: 21952)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !930, file: !576, line: 1505, baseType: !376, size: 64, offset: 22016)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !930, file: !576, line: 1506, baseType: !375, size: 64, offset: 22080)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !930, file: !576, line: 1507, baseType: !376, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !930, file: !576, line: 1508, baseType: !376, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !930, file: !576, line: 1509, baseType: !376, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !930, file: !576, line: 1510, baseType: !914, size: 128, align: 64, offset: 22208)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !930, file: !576, line: 1511, baseType: !115, size: 32, offset: 22336)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !930, file: !576, line: 1515, baseType: !2836, size: 64, offset: 22400)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !957, line: 56, size: 64, elements: !2837)
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2836, file: !957, line: 57, baseType: !960, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !930, file: !576, line: 1518, baseType: !2836, size: 64, offset: 22464)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !930, file: !576, line: 1528, baseType: !914, size: 128, align: 64, offset: 22528)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !930, file: !576, line: 1552, baseType: !2842, size: 35328, offset: 23040)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2843, line: 430, size: 35328, elements: !2844)
!2843 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2844 = !{!2845, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2874, !2875, !2876, !2877, !2878, !2879, !2882, !2883, !2884, !2885}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2842, file: !2843, line: 432, baseType: !2846, size: 192)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2847, size: 192, elements: !223)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2848, line: 16, size: 64, elements: !2849)
!2848 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2847, file: !2848, line: 17, baseType: !190, size: 16)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2847, file: !2848, line: 18, baseType: !190, size: 16, offset: 16)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2847, file: !2848, line: 19, baseType: !190, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2847, file: !2848, line: 19, baseType: !190, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2847, file: !2848, line: 19, baseType: !190, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2847, file: !2848, line: 19, baseType: !190, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2847, file: !2848, line: 19, baseType: !190, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2847, file: !2848, line: 20, baseType: !190, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2847, file: !2848, line: 20, baseType: !190, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2847, file: !2848, line: 20, baseType: !190, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2847, file: !2848, line: 20, baseType: !190, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2847, file: !2848, line: 20, baseType: !190, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2847, file: !2848, line: 20, baseType: !190, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2842, file: !2843, line: 436, baseType: !272, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2842, file: !2843, line: 440, baseType: !192, size: 16, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2842, file: !2843, line: 441, baseType: !192, size: 16, offset: 272)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2842, file: !2843, line: 442, baseType: !192, size: 16, offset: 288)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2842, file: !2843, line: 443, baseType: !192, size: 16, offset: 304)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2842, file: !2843, line: 447, baseType: !272, size: 64, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2842, file: !2843, line: 448, baseType: !272, size: 64, offset: 384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2842, file: !2843, line: 459, baseType: !2871, size: 256, offset: 448)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2872, size: 256, elements: !1309)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2843, line: 428, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2842, file: !2843, line: 461, baseType: !272, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2842, file: !2843, line: 463, baseType: !272, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2842, file: !2843, line: 465, baseType: !272, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2842, file: !2843, line: 466, baseType: !272, size: 64, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2842, file: !2843, line: 467, baseType: !272, size: 64, offset: 960)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2842, file: !2843, line: 473, baseType: !2880, size: 64, offset: 1024)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2843, line: 10, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2842, file: !2843, line: 480, baseType: !272, size: 64, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2842, file: !2843, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2842, file: !2843, line: 491, baseType: !371, size: 32, offset: 1184)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2842, file: !2843, line: 501, baseType: !2886, size: 33792, offset: 1536)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2887, line: 448, size: 33792, elements: !2888)
!2887 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2888 = !{!2889, !2890, !2891, !3053, !3054, !3060, !3061}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2886, file: !2887, line: 461, baseType: !7, size: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2886, file: !2887, line: 468, baseType: !272, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2886, file: !2887, line: 476, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2887, line: 356, size: 33280, align: 512, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2893, file: !2887, line: 358, baseType: !7, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2893, file: !2887, line: 361, baseType: !7, size: 32, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2893, file: !2887, line: 364, baseType: !375, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2893, file: !2887, line: 367, baseType: !375, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2893, file: !2887, line: 370, baseType: !375, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2893, file: !2887, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2893, file: !2887, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2893, file: !2887, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2893, file: !2887, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2893, file: !2887, line: 397, baseType: !2905, size: 32768, offset: 512)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2887, line: 348, size: 32768, elements: !2906)
!2906 = !{!2907, !2922, !2959, !3036, !3049}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2905, file: !2887, line: 349, baseType: !2908, size: 896)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2887, line: 12, size: 896, elements: !2909)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2921}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2908, file: !2887, line: 13, baseType: !371, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2908, file: !2887, line: 14, baseType: !371, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2908, file: !2887, line: 15, baseType: !371, size: 32, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2908, file: !2887, line: 16, baseType: !371, size: 32, offset: 96)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2908, file: !2887, line: 17, baseType: !371, size: 32, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2908, file: !2887, line: 18, baseType: !371, size: 32, offset: 160)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2908, file: !2887, line: 19, baseType: !371, size: 32, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2908, file: !2887, line: 22, baseType: !2918, size: 640, offset: 224)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 640, elements: !2919)
!2919 = !{!2920}
!2920 = !DISubrange(count: 20)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2908, file: !2887, line: 25, baseType: !371, size: 32, offset: 864)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2905, file: !2887, line: 350, baseType: !2923, size: 4096, align: 128)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2887, line: 34, size: 4096, align: 128, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2944, !2945, !2946, !2948, !2950, !2954}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2923, file: !2887, line: 35, baseType: !190, size: 16)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2923, file: !2887, line: 36, baseType: !190, size: 16, offset: 16)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2923, file: !2887, line: 37, baseType: !190, size: 16, offset: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2923, file: !2887, line: 38, baseType: !190, size: 16, offset: 48)
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !2887, line: 39, baseType: !2930, size: 128, offset: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2923, file: !2887, line: 39, size: 128, elements: !2931)
!2931 = !{!2932, !2937}
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !2887, line: 40, baseType: !2933, size: 128)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2930, file: !2887, line: 40, size: 128, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2933, file: !2887, line: 41, baseType: !375, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2933, file: !2887, line: 42, baseType: !375, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !2887, line: 44, baseType: !2938, size: 128)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2930, file: !2887, line: 44, size: 128, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2938, file: !2887, line: 45, baseType: !371, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2938, file: !2887, line: 46, baseType: !371, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2938, file: !2887, line: 47, baseType: !371, size: 32, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2938, file: !2887, line: 48, baseType: !371, size: 32, offset: 96)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2923, file: !2887, line: 51, baseType: !371, size: 32, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2923, file: !2887, line: 52, baseType: !371, size: 32, offset: 224)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2923, file: !2887, line: 55, baseType: !2947, size: 1024, offset: 256)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 1024, elements: !384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2923, file: !2887, line: 58, baseType: !2949, size: 2048, offset: 1280)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2048, elements: !227)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2923, file: !2887, line: 60, baseType: !2951, size: 384, offset: 3328)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !2952)
!2952 = !{!2953}
!2953 = !DISubrange(count: 12)
!2954 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !2887, line: 62, baseType: !2955, size: 384, offset: 3712)
!2955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2923, file: !2887, line: 62, size: 384, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2955, file: !2887, line: 63, baseType: !2951, size: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2955, file: !2887, line: 64, baseType: !2951, size: 384)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2905, file: !2887, line: 351, baseType: !2960, size: 1088)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2887, line: 79, size: 1088, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !3035}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2960, file: !2887, line: 80, baseType: !371, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2960, file: !2887, line: 81, baseType: !371, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2960, file: !2887, line: 82, baseType: !371, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2960, file: !2887, line: 83, baseType: !371, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2960, file: !2887, line: 84, baseType: !371, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2960, file: !2887, line: 85, baseType: !371, size: 32, offset: 160)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2960, file: !2887, line: 86, baseType: !371, size: 32, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2960, file: !2887, line: 88, baseType: !2918, size: 640, offset: 224)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2960, file: !2887, line: 89, baseType: !180, size: 8, offset: 864)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2960, file: !2887, line: 90, baseType: !180, size: 8, offset: 872)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2960, file: !2887, line: 91, baseType: !180, size: 8, offset: 880)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2960, file: !2887, line: 92, baseType: !180, size: 8, offset: 888)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2960, file: !2887, line: 93, baseType: !180, size: 8, offset: 896)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2960, file: !2887, line: 94, baseType: !180, size: 8, offset: 904)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2960, file: !2887, line: 95, baseType: !2977, size: 64, offset: 960)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2979, line: 11, size: 128, elements: !2980)
!2979 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2978, file: !2979, line: 12, baseType: !258, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2978, file: !2979, line: 13, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2985, line: 103, size: 1344, elements: !2986)
!2985 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3015, !3016, !3017}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2984, file: !2985, line: 109, baseType: !272, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2984, file: !2985, line: 110, baseType: !272, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2984, file: !2985, line: 111, baseType: !272, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2984, file: !2985, line: 112, baseType: !272, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2984, file: !2985, line: 113, baseType: !272, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2984, file: !2985, line: 114, baseType: !272, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2984, file: !2985, line: 117, baseType: !272, size: 64, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2984, file: !2985, line: 118, baseType: !272, size: 64, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2984, file: !2985, line: 119, baseType: !272, size: 64, offset: 512)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2984, file: !2985, line: 120, baseType: !272, size: 64, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2984, file: !2985, line: 121, baseType: !272, size: 64, offset: 640)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2984, file: !2985, line: 122, baseType: !272, size: 64, offset: 704)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2984, file: !2985, line: 123, baseType: !272, size: 64, offset: 768)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2984, file: !2985, line: 124, baseType: !272, size: 64, offset: 832)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2984, file: !2985, line: 125, baseType: !272, size: 64, offset: 896)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2984, file: !2985, line: 139, baseType: !272, size: 64, offset: 960)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2984, file: !2985, line: 142, baseType: !272, size: 64, offset: 1024)
!3004 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2985, line: 144, baseType: !3005, size: 64, offset: 1088)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2984, file: !2985, line: 144, size: 64, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3005, file: !2985, line: 146, baseType: !190, size: 16)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3005, file: !2985, line: 148, baseType: !375, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3005, file: !2985, line: 150, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2985, line: 59, size: 64, elements: !3011)
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3010, file: !2985, line: 61, baseType: !375, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3010, file: !2985, line: 63, baseType: !375, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3010, file: !2985, line: 65, baseType: !375, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2984, file: !2985, line: 153, baseType: !272, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2984, file: !2985, line: 154, baseType: !272, size: 64, offset: 1216)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2985, line: 156, baseType: !3018, size: 64, offset: 1280)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2984, file: !2985, line: 156, size: 64, elements: !3019)
!3019 = !{!3020, !3021, !3022}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3018, file: !2985, line: 158, baseType: !190, size: 16)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3018, file: !2985, line: 160, baseType: !375, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3018, file: !2985, line: 162, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2985, line: 69, size: 64, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3023, file: !2985, line: 71, baseType: !375, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3023, file: !2985, line: 73, baseType: !375, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3023, file: !2985, line: 75, baseType: !375, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3023, file: !2985, line: 77, baseType: !375, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3023, file: !2985, line: 80, baseType: !375, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3023, file: !2985, line: 83, baseType: !375, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3023, file: !2985, line: 86, baseType: !375, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3023, file: !2985, line: 88, baseType: !375, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3023, file: !2985, line: 93, baseType: !375, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3023, file: !2985, line: 100, baseType: !375, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2960, file: !2887, line: 96, baseType: !371, size: 32, offset: 1024)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2905, file: !2887, line: 352, baseType: !3037, size: 4608, align: 512)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2887, line: 333, size: 4608, align: 512, elements: !3038)
!3038 = !{!3039, !3040, !3047}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3037, file: !2887, line: 334, baseType: !2923, size: 4096, align: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3037, file: !2887, line: 335, baseType: !3041, size: 512, offset: 4096)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2887, line: 312, size: 512, elements: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3041, file: !2887, line: 313, baseType: !375, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3041, file: !2887, line: 314, baseType: !375, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3041, file: !2887, line: 315, baseType: !3046, size: 384, offset: 128)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 384, elements: !1408)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3037, file: !2887, line: 336, baseType: !3048, offset: 4608)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !1322)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2905, file: !2887, line: 353, baseType: !3050, size: 32768)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 32768, elements: !3051)
!3051 = !{!3052}
!3052 = !DISubrange(count: 4096)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2886, file: !2887, line: 484, baseType: !2892, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2886, file: !2887, line: 491, baseType: !3055, size: 128, offset: 256)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2887, line: 404, size: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3055, file: !2887, line: 424, baseType: !375, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3055, file: !2887, line: 432, baseType: !7, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3055, file: !2887, line: 440, baseType: !7, size: 32, offset: 96)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2886, file: !2887, line: 498, baseType: !3055, size: 128, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2886, file: !2887, line: 508, baseType: !2893, size: 33280, align: 512, offset: 512)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !897, file: !898, line: 16, baseType: !907, size: 192, offset: 512)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !897, file: !898, line: 17, baseType: !172, size: 32, offset: 704)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !454, file: !14, line: 1240, baseType: !116, size: 64, offset: 6912)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !454, file: !14, line: 1243, baseType: !371, size: 32, offset: 6976)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !454, file: !14, line: 1245, baseType: !654, size: 64, offset: 7040)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !454, file: !14, line: 1246, baseType: !654, size: 64, offset: 7104)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !454, file: !14, line: 1248, baseType: !372, size: 32, offset: 7168)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !454, file: !14, line: 1249, baseType: !3070, size: 64, offset: 7232)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !454, file: !14, line: 1252, baseType: !3073, size: 256, offset: 7296)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !384)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !454, file: !14, line: 1253, baseType: !3075, size: 128, offset: 7552)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3076, line: 21, baseType: !3077)
!3076 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3076, line: 19, size: 128, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3077, file: !3076, line: 20, baseType: !3080, size: 128)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !2281)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !454, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !454, file: !14, line: 1261, baseType: !601, size: 256, offset: 7744)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !454, file: !14, line: 1267, baseType: !141, size: 64, offset: 8000)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !454, file: !14, line: 1269, baseType: !400, size: 64, offset: 8064)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !454, file: !14, line: 1271, baseType: !3086, size: 448, offset: 8128)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !663, line: 63, size: 448, elements: !3087)
!3087 = !{!3088, !3093, !3094, !3095, !3096, !3097, !3098}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3086, file: !663, line: 64, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!272, !3092, !661}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3086, file: !663, line: 66, baseType: !3089, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3086, file: !663, line: 69, baseType: !258, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3086, file: !663, line: 70, baseType: !115, size: 32, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3086, file: !663, line: 71, baseType: !7, size: 32, offset: 224)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3086, file: !663, line: 74, baseType: !122, size: 128, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3086, file: !663, line: 85, baseType: !3099, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !454, file: !14, line: 1274, baseType: !605, size: 64, offset: 8576)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !454, file: !14, line: 1280, baseType: !605, size: 64, offset: 8640)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !454, file: !14, line: 1283, baseType: !115, size: 32, offset: 8704)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !454, file: !14, line: 1286, baseType: !2000, size: 32, offset: 8736)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !454, file: !14, line: 1289, baseType: !3105, size: 64, offset: 8768)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2129, line: 18, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !454, file: !14, line: 1290, baseType: !493, size: 64, offset: 8832)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !454, file: !14, line: 1297, baseType: !1504, size: 64, offset: 8896)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !454, file: !14, line: 1304, baseType: !3110, size: 64, offset: 8960)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3111, line: 49, size: 64, elements: !3112)
!3111 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3110, file: !3111, line: 50, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3111, line: 41, size: 512, align: 512, elements: !3116)
!3116 = !{!3117, !3118, !3123}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3115, file: !3111, line: 43, baseType: !152, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3115, file: !3111, line: 45, baseType: !3119, size: 192, offset: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3111, line: 29, size: 192, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3119, file: !3111, line: 30, baseType: !122, size: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3119, file: !3111, line: 32, baseType: !258, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3115, file: !3111, line: 46, baseType: !258, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !454, file: !14, line: 1305, baseType: !3110, size: 64, offset: 9024)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !454, file: !14, line: 1306, baseType: !914, size: 128, align: 64, offset: 9088)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !454, file: !14, line: 1307, baseType: !2128, size: 256, offset: 9216)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !454, file: !14, line: 1309, baseType: !601, size: 256, offset: 9472)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !454, file: !14, line: 1314, baseType: !115, size: 32, offset: 9728)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !454, file: !14, line: 1317, baseType: !152, size: 32, align: 512, offset: 10240)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !454, file: !14, line: 1318, baseType: !122, size: 128, offset: 10304)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !454, file: !14, line: 1320, baseType: !152, size: 32, offset: 10432)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !454, file: !14, line: 1321, baseType: !122, size: 128, offset: 10496)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !448, file: !449, line: 73, baseType: !115, size: 32, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !448, file: !449, line: 74, baseType: !3135, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1346, line: 42, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !402, file: !339, line: 141, baseType: !3139, size: 64, offset: 704)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!115, !724, !1421}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !402, file: !339, line: 142, baseType: !3143, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!337, !337, !3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !338, file: !339, line: 96, baseType: !453, size: 64, offset: 832)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !338, file: !339, line: 97, baseType: !272, size: 64, offset: 896)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !338, file: !339, line: 98, baseType: !116, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !339, line: 100, baseType: !3152, size: 128, offset: 1024)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !339, line: 100, size: 128, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3152, file: !339, line: 101, baseType: !122, size: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3152, file: !339, line: 102, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !338, file: !339, line: 104, baseType: !122, size: 128, offset: 1152)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !338, file: !339, line: 105, baseType: !122, size: 128, offset: 1280)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !338, file: !339, line: 113, baseType: !3160, size: 128, offset: 1408)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !339, line: 109, size: 128, elements: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3160, file: !339, line: 110, baseType: !497, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3160, file: !339, line: 111, baseType: !353, size: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3160, file: !339, line: 112, baseType: !914, size: 128, align: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !331, file: !14, line: 1968, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!141, !337, !302, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3171, line: 10, size: 128, elements: !3172)
!3171 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3172 = !{!3173, !3177}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3170, file: !3171, line: 11, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !116}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3170, file: !3171, line: 12, baseType: !116, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !331, file: !14, line: 1969, baseType: !3179, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!115, !3135, !302, !115}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !331, file: !14, line: 1970, baseType: !3183, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!325, !302, !115, !1421}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !331, file: !14, line: 1972, baseType: !3187, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!115, !337, !222, !115}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !331, file: !14, line: 1974, baseType: !3191, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!115, !3135, !302, !337, !264, !1421}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !331, file: !14, line: 1976, baseType: !3195, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!115, !337, !302, !337}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !331, file: !14, line: 1977, baseType: !3199, size: 64, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!115, !302, !337}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !331, file: !14, line: 1978, baseType: !3203, size: 64, offset: 512)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!115, !3135, !302, !337, !141}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !331, file: !14, line: 1980, baseType: !3207, size: 64, offset: 576)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!115, !3135, !302, !337, !264}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !331, file: !14, line: 1982, baseType: !3199, size: 64, offset: 640)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !331, file: !14, line: 1983, baseType: !3212, size: 64, offset: 704)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!115, !3135, !302, !337, !264, !458}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !331, file: !14, line: 1985, baseType: !3216, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!115, !3135, !302, !337, !302, !337, !7}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !331, file: !14, line: 1987, baseType: !3220, size: 64, offset: 832)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!115, !3135, !337, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3238, !3247, !3248, !3253, !3254, !3255}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3224, file: !14, line: 227, baseType: !7, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3224, file: !14, line: 228, baseType: !264, size: 16, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !14, line: 241, baseType: !3229, size: 32, offset: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !14, line: 241, size: 32, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3229, file: !14, line: 242, baseType: !308, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3229, file: !14, line: 243, baseType: !3233, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3234, line: 16, baseType: !3235)
!3234 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3234, line: 14, size: 32, elements: !3236)
!3236 = !{!3237}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3235, file: !3234, line: 15, baseType: !313, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !14, line: 245, baseType: !3239, size: 32, offset: 96)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !14, line: 245, size: 32, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3239, file: !14, line: 246, baseType: !317, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3239, file: !14, line: 247, baseType: !3243, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3234, line: 20, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3234, line: 18, size: 32, elements: !3245)
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3244, file: !3234, line: 19, baseType: !321, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3224, file: !14, line: 249, baseType: !463, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3224, file: !14, line: 250, baseType: !3249, size: 128, offset: 192)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !655, line: 13, size: 128, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3249, file: !655, line: 14, baseType: !654, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3249, file: !655, line: 15, baseType: !258, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3224, file: !14, line: 251, baseType: !3249, size: 128, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3224, file: !14, line: 252, baseType: !3249, size: 128, offset: 448)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3224, file: !14, line: 259, baseType: !1260, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !331, file: !14, line: 1988, baseType: !3257, size: 64, offset: 896)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!115, !3135, !724, !3260, !371, !7}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3262, line: 22, size: 1280, elements: !3263)
!3262 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3261, file: !3262, line: 23, baseType: !371, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3261, file: !3262, line: 24, baseType: !264, size: 16, offset: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3261, file: !3262, line: 25, baseType: !7, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3261, file: !3262, line: 26, baseType: !1386, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3261, file: !3262, line: 27, baseType: !375, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3261, file: !3262, line: 28, baseType: !375, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3261, file: !3262, line: 41, baseType: !375, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3261, file: !3262, line: 42, baseType: !458, size: 32, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3261, file: !3262, line: 43, baseType: !458, size: 32, offset: 352)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3261, file: !3262, line: 44, baseType: !308, size: 32, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3261, file: !3262, line: 45, baseType: !317, size: 32, offset: 416)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3261, file: !3262, line: 46, baseType: !463, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3261, file: !3262, line: 47, baseType: !3249, size: 128, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3261, file: !3262, line: 48, baseType: !3249, size: 128, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3261, file: !3262, line: 49, baseType: !3249, size: 128, offset: 768)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3261, file: !3262, line: 50, baseType: !3249, size: 128, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3261, file: !3262, line: 51, baseType: !375, size: 64, offset: 1024)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3261, file: !3262, line: 52, baseType: !375, size: 64, offset: 1088)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3261, file: !3262, line: 53, baseType: !371, size: 32, offset: 1152)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3261, file: !3262, line: 54, baseType: !371, size: 32, offset: 1184)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3261, file: !3262, line: 55, baseType: !375, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !331, file: !14, line: 1990, baseType: !3286, size: 64, offset: 960)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!254, !337, !222, !269}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !331, file: !14, line: 1991, baseType: !3290, size: 64, offset: 1024)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!115, !302, !3293, !375, !375}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !331, file: !14, line: 1993, baseType: !3296, size: 64, offset: 1088)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!115, !302, !115}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !331, file: !14, line: 1994, baseType: !3300, size: 64, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!115, !302, !337, !1260, !7, !264}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !331, file: !14, line: 1997, baseType: !3304, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!115, !3135, !302, !1260, !264}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !331, file: !14, line: 1999, baseType: !3308, size: 64, offset: 1280)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!325, !3135, !337, !115}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !331, file: !14, line: 2001, baseType: !3312, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!115, !3135, !337, !325, !115}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !331, file: !14, line: 2003, baseType: !3316, size: 64, offset: 1408)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!115, !3135, !337, !3319}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !331, file: !14, line: 2005, baseType: !3322, size: 64, offset: 1472)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!115, !337, !3319}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !331, file: !14, line: 2006, baseType: !3326, size: 64, offset: 1536)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!3329, !302}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3331)
!3331 = !{!3332, !3339}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3330, file: !14, line: 3193, baseType: !3333, size: 128)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3334, line: 296, size: 128, elements: !3335)
!3334 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3335 = !{!3336, !3337, !3338}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3333, file: !3334, line: 297, baseType: !152, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3333, file: !3334, line: 299, baseType: !666, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3333, file: !3334, line: 300, baseType: !116, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3330, file: !14, line: 3194, baseType: !371, size: 32, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !303, file: !14, line: 655, baseType: !453, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !303, file: !14, line: 656, baseType: !298, size: 64, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !303, file: !14, line: 659, baseType: !116, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !303, file: !14, line: 663, baseType: !272, size: 64, offset: 640)
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !14, line: 671, baseType: !3345, size: 32, offset: 704)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !14, line: 671, size: 32, elements: !3346)
!3346 = !{!3347, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3345, file: !14, line: 672, baseType: !3348, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3345, file: !14, line: 673, baseType: !7, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !303, file: !14, line: 675, baseType: !458, size: 32, offset: 736)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !303, file: !14, line: 676, baseType: !463, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !303, file: !14, line: 677, baseType: !3249, size: 128, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !303, file: !14, line: 678, baseType: !3249, size: 128, offset: 960)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !303, file: !14, line: 679, baseType: !3249, size: 128, offset: 1088)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !303, file: !14, line: 680, baseType: !152, size: 32, offset: 1216)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !303, file: !14, line: 681, baseType: !192, size: 16, offset: 1248)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !303, file: !14, line: 682, baseType: !180, size: 8, offset: 1264)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !303, file: !14, line: 683, baseType: !180, size: 8, offset: 1272)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !303, file: !14, line: 684, baseType: !802, size: 64, offset: 1280)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !303, file: !14, line: 691, baseType: !272, size: 64, offset: 1344)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !303, file: !14, line: 692, baseType: !814, size: 320, offset: 1408)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !303, file: !14, line: 694, baseType: !272, size: 64, offset: 1728)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !303, file: !14, line: 695, baseType: !272, size: 64, offset: 1792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !303, file: !14, line: 697, baseType: !497, size: 128, offset: 1856)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !303, file: !14, line: 698, baseType: !122, size: 128, offset: 1984)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !303, file: !14, line: 707, baseType: !122, size: 128, offset: 2112)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !303, file: !14, line: 708, baseType: !122, size: 128, offset: 2240)
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !14, line: 709, baseType: !3369, size: 128, offset: 2368)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !14, line: 709, size: 128, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3369, file: !14, line: 710, baseType: !493, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3369, file: !14, line: 711, baseType: !914, size: 128, align: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !303, file: !14, line: 713, baseType: !607, size: 64, offset: 2496)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !303, file: !14, line: 714, baseType: !607, size: 64, offset: 2560)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !303, file: !14, line: 715, baseType: !172, size: 32, offset: 2624)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !303, file: !14, line: 716, baseType: !172, size: 32, offset: 2656)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !303, file: !14, line: 717, baseType: !172, size: 32, offset: 2688)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !303, file: !14, line: 719, baseType: !172, size: 32, offset: 2720)
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !14, line: 721, baseType: !3380, size: 64, offset: 2752)
!3380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !14, line: 721, size: 64, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3380, file: !14, line: 722, baseType: !1535, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3380, file: !14, line: 723, baseType: !524, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !303, file: !14, line: 725, baseType: !3385, size: 64, offset: 2816)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !303, file: !14, line: 726, baseType: !299, size: 1536, align: 64, offset: 2880)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !303, file: !14, line: 727, baseType: !122, size: 128, offset: 4416)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !14, line: 728, baseType: !3390, size: 64, offset: 4544)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !14, line: 728, size: 64, elements: !3391)
!3391 = !{!3392, !3393, !3396, !3397}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3390, file: !14, line: 729, baseType: !1950, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3390, file: !14, line: 730, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3390, file: !14, line: 731, baseType: !222, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3390, file: !14, line: 732, baseType: !7, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !303, file: !14, line: 735, baseType: !372, size: 32, offset: 4608)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !303, file: !14, line: 738, baseType: !372, size: 32, offset: 4640)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !303, file: !14, line: 739, baseType: !3070, size: 64, offset: 4672)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !303, file: !14, line: 750, baseType: !116, size: 64, offset: 4736)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !299, file: !14, line: 474, baseType: !3333, size: 128, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !299, file: !14, line: 475, baseType: !814, size: 320, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !299, file: !14, line: 476, baseType: !666, size: 32, offset: 512)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !299, file: !14, line: 477, baseType: !172, size: 32, offset: 544)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !299, file: !14, line: 482, baseType: !1116, size: 128, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !299, file: !14, line: 483, baseType: !272, size: 64, offset: 704)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !299, file: !14, line: 484, baseType: !272, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !299, file: !14, line: 485, baseType: !3410, size: 64, offset: 832)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3413)
!3413 = !{!3414, !3418, !3488, !3492, !3496, !3502, !3506, !3510, !3515, !3519, !3523, !3527, !3528, !3532, !3536, !3540, !3545, !3549, !3556, !3557}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3412, file: !14, line: 405, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!115, !1727, !536}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3412, file: !14, line: 406, baseType: !3419, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!115, !1260, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3424)
!3424 = !{!3425, !3455, !3469}
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3423, file: !38, line: 295, baseType: !3426, size: 512)
!3426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3423, file: !38, line: 295, size: 512, elements: !3427)
!3427 = !{!3428, !3454}
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3426, file: !38, line: 296, baseType: !3429, size: 448)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3426, file: !38, line: 296, size: 448, elements: !3430)
!3430 = !{!3431, !3432, !3441, !3442, !3443, !3452, !3453}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3429, file: !38, line: 298, baseType: !272, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3429, file: !38, line: 299, baseType: !3433, size: 128, offset: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3429, file: !38, line: 299, size: 128, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3433, file: !38, line: 300, baseType: !122, size: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !38, line: 302, baseType: !3437, size: 128)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3433, file: !38, line: 302, size: 128, elements: !3438)
!3438 = !{!3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3437, file: !38, line: 303, baseType: !116, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3437, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3429, file: !38, line: 310, baseType: !298, size: 64, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3429, file: !38, line: 311, baseType: !272, size: 64, offset: 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !3429, file: !38, line: 312, baseType: !3444, size: 64, offset: 320)
!3444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3429, file: !38, line: 312, size: 64, elements: !3445)
!3445 = !{!3446, !3447}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3444, file: !38, line: 313, baseType: !116, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3444, file: !38, line: 314, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3450)
!3450 = !{!3451}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3449, file: !38, line: 256, baseType: !272, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3429, file: !38, line: 316, baseType: !172, size: 32, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3429, file: !38, line: 317, baseType: !172, size: 32, offset: 416)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3426, file: !38, line: 323, baseType: !1728, size: 512, align: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3423, file: !38, line: 325, baseType: !3456, size: 512, offset: 512)
!3456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3423, file: !38, line: 325, size: 512, elements: !3457)
!3457 = !{!3458, !3468}
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !38, line: 326, baseType: !3459, size: 320)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3456, file: !38, line: 326, size: 320, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3459, file: !38, line: 327, baseType: !272, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3459, file: !38, line: 328, baseType: !272, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3459, file: !38, line: 329, baseType: !272, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3459, file: !38, line: 331, baseType: !172, size: 32, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3459, file: !38, line: 332, baseType: !172, size: 32, offset: 224)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3459, file: !38, line: 333, baseType: !172, size: 32, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3459, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3456, file: !38, line: 339, baseType: !1728, size: 512, align: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3423, file: !38, line: 341, baseType: !3470, size: 512, offset: 1024)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3423, file: !38, line: 341, size: 512, elements: !3471)
!3471 = !{!3472, !3481, !3487}
!3472 = !DIDerivedType(tag: DW_TAG_member, scope: !3470, file: !38, line: 342, baseType: !3473, size: 384)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !38, line: 342, size: 384, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3473, file: !38, line: 343, baseType: !272, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3473, file: !38, line: 344, baseType: !272, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3473, file: !38, line: 346, baseType: !116, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3473, file: !38, line: 347, baseType: !116, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3473, file: !38, line: 348, baseType: !116, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3473, file: !38, line: 349, baseType: !116, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3470, file: !38, line: 352, baseType: !3482, size: 256)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !38, line: 352, size: 256, elements: !3483)
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3482, file: !38, line: 353, baseType: !272, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3482, file: !38, line: 354, baseType: !272, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3482, file: !38, line: 356, baseType: !122, size: 128, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3470, file: !38, line: 359, baseType: !1728, size: 512, align: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3412, file: !14, line: 409, baseType: !3489, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!115, !298, !536}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3412, file: !14, line: 412, baseType: !3493, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!1421, !298, !3422}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3412, file: !14, line: 414, baseType: !3497, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !3500}
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3412, file: !14, line: 416, baseType: !3503, size: 64, offset: 320)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!115, !1260, !298, !463, !7, !2819, !1965}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3412, file: !14, line: 419, baseType: !3507, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!115, !1260, !298, !463, !7, !7, !1727, !116}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3412, file: !14, line: 424, baseType: !3511, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!3514, !298, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !123, line: 131, baseType: !375)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3412, file: !14, line: 425, baseType: !3516, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3422, !269, !269}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3412, file: !14, line: 426, baseType: !3520, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!1421, !3422, !666}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3412, file: !14, line: 427, baseType: !3524, size: 64, offset: 640)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !3422}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3412, file: !14, line: 428, baseType: !1554, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3412, file: !14, line: 433, baseType: !3529, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!115, !298, !3422, !3422, !74}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3412, file: !14, line: 435, baseType: !3533, size: 64, offset: 832)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!115, !3422}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3412, file: !14, line: 436, baseType: !3537, size: 64, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!1421, !3422, !269, !269}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3412, file: !14, line: 438, baseType: !3541, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3422, !3544, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3412, file: !14, line: 439, baseType: !3546, size: 64, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!115, !298, !1727}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3412, file: !14, line: 442, baseType: !3550, size: 64, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!115, !3553, !1260, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3412, file: !14, line: 444, baseType: !1957, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3412, file: !14, line: 445, baseType: !3558, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!115, !1557, !1579}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !14, line: 486, baseType: !272, size: 64, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !299, file: !14, line: 487, baseType: !814, size: 320, offset: 960)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !299, file: !14, line: 488, baseType: !2000, size: 32, offset: 1280)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !299, file: !14, line: 489, baseType: !152, size: 32, offset: 1312)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !299, file: !14, line: 490, baseType: !122, size: 128, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !299, file: !14, line: 491, baseType: !116, size: 64, offset: 1472)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !289, file: !248, line: 180, baseType: !3568, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!254, !1260, !145, !288, !222, !463, !269}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !289, file: !248, line: 182, baseType: !3568, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !289, file: !248, line: 184, baseType: !3573, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!115, !1260, !145, !288, !1618}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !277, file: !248, line: 90, baseType: !3577, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !277, file: !248, line: 91, baseType: !3579, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !238, file: !138, line: 120, baseType: !3581, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!3584, !205}
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3586)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3587)
!3587 = !{!3588, !3589, !3593, !3597, !3603, !3607}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3586, file: !82, line: 40, baseType: !81, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3586, file: !82, line: 41, baseType: !3590, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!1421}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3586, file: !82, line: 42, baseType: !3594, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!116}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3586, file: !82, line: 43, baseType: !3598, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!2089, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3586, file: !82, line: 44, baseType: !3604, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!2089}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3586, file: !82, line: 45, baseType: !3174, size: 64, offset: 320)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !238, file: !138, line: 121, baseType: !3609, size: 64, offset: 256)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!2089, !205}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !238, file: !138, line: 122, baseType: !3613, size: 64, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !205, !3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !137, file: !138, line: 70, baseType: !3619, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3621, line: 190, size: 1152, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3622 = !{!3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3714, !3715, !3716, !3717, !3718, !3721}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3620, file: !3621, line: 191, baseType: !172, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3620, file: !3621, line: 192, baseType: !172, size: 32, offset: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3620, file: !3621, line: 202, baseType: !3619, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3620, file: !3621, line: 203, baseType: !141, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3620, file: !3621, line: 205, baseType: !987, size: 192, align: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3620, file: !3621, line: 207, baseType: !2089, size: 64, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3620, file: !3621, line: 208, baseType: !7, size: 32, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3620, file: !3621, line: 209, baseType: !3631, size: 256, offset: 512)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3620, file: !3621, line: 209, size: 256, elements: !3632)
!3632 = !{!3633, !3642, !3646}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3631, file: !3621, line: 210, baseType: !3634, size: 256)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3621, line: 153, size: 256, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3641}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3634, file: !3621, line: 154, baseType: !272, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3634, file: !3621, line: 156, baseType: !1119, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3634, file: !3621, line: 162, baseType: !3639, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3621, line: 162, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3634, file: !3621, line: 167, baseType: !272, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3631, file: !3621, line: 211, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3621, line: 170, size: 64, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3643, file: !3621, line: 171, baseType: !3619, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3631, file: !3621, line: 212, baseType: !3647, size: 256)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3621, line: 174, size: 256, elements: !3648)
!3648 = !{!3649, !3709, !3712, !3713}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3647, file: !3621, line: 175, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3621, line: 271, size: 768, elements: !3653)
!3653 = !{!3654, !3674, !3678, !3682, !3686, !3690, !3694, !3698, !3699, !3700, !3701, !3705}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3652, file: !3621, line: 276, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!115, !3658}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3621, line: 251, size: 1216, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3659, file: !3621, line: 253, baseType: !3619, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3659, file: !3621, line: 254, baseType: !1260, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3659, file: !3621, line: 255, baseType: !574, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3659, file: !3621, line: 256, baseType: !116, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3659, file: !3621, line: 259, baseType: !601, size: 256, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3659, file: !3621, line: 260, baseType: !601, size: 256, offset: 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3659, file: !3621, line: 261, baseType: !115, size: 32, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3659, file: !3621, line: 262, baseType: !122, size: 128, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3659, file: !3621, line: 263, baseType: !222, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3659, file: !3621, line: 265, baseType: !269, size: 64, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3659, file: !3621, line: 266, baseType: !1421, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3659, file: !3621, line: 267, baseType: !1421, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3659, file: !3621, line: 268, baseType: !1663, size: 64, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3652, file: !3621, line: 277, baseType: !3675, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !3658}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3652, file: !3621, line: 290, baseType: !3679, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!115, !574, !116}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3652, file: !3621, line: 292, baseType: !3683, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!116, !574, !1548}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3652, file: !3621, line: 293, baseType: !3687, size: 64, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!116, !574, !116, !1548}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3652, file: !3621, line: 294, baseType: !3691, size: 64, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !574, !116}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3652, file: !3621, line: 296, baseType: !3695, size: 64, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!254, !3658, !222, !269, !463}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3652, file: !3621, line: 306, baseType: !269, size: 64, offset: 448)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3652, file: !3621, line: 313, baseType: !1421, size: 8, offset: 512)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3652, file: !3621, line: 314, baseType: !3695, size: 64, offset: 576)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3652, file: !3621, line: 317, baseType: !3702, size: 64, offset: 640)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!1605, !3658, !1607}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3652, file: !3621, line: 320, baseType: !3706, size: 64, offset: 704)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!115, !3658, !1618}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3647, file: !3621, line: 176, baseType: !3710, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3621, line: 35, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3647, file: !3621, line: 177, baseType: !463, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3647, file: !3621, line: 178, baseType: !3619, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3620, file: !3621, line: 215, baseType: !116, size: 64, offset: 768)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3620, file: !3621, line: 221, baseType: !375, size: 64, offset: 832)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3620, file: !3621, line: 223, baseType: !192, size: 16, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3620, file: !3621, line: 224, baseType: !264, size: 16, offset: 912)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3620, file: !3621, line: 225, baseType: !3719, size: 64, offset: 960)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3621, line: 36, flags: DIFlagFwdDecl)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3620, file: !3621, line: 227, baseType: !914, size: 128, align: 64, offset: 1024)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !137, file: !138, line: 71, baseType: !3723, size: 32, offset: 448)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3724, line: 19, size: 32, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3725 = !{!3726}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3723, file: !3724, line: 20, baseType: !943, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !137, file: !138, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !137, file: !138, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !137, file: !138, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !137, file: !138, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !137, file: !138, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !134, file: !6, line: 47, baseType: !117, size: 64, offset: 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !134, file: !6, line: 48, baseType: !145, size: 64, offset: 576)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !134, file: !6, line: 49, baseType: !3735, size: 64, offset: 640)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !134, file: !6, line: 50, baseType: !2238, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !118, file: !6, line: 418, baseType: !3739, size: 64, offset: 1408)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3741)
!3741 = !{!3742, !3743, !3748, !3752, !3756, !3760}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3740, file: !6, line: 54, baseType: !260, size: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3740, file: !6, line: 55, baseType: !3744, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!254, !3739, !3747, !222}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3740, file: !6, line: 57, baseType: !3749, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!254, !3739, !3747, !141, !269}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3740, file: !6, line: 59, baseType: !3753, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !117, !141}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3740, file: !6, line: 60, baseType: !3757, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!115, !117}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3740, file: !6, line: 61, baseType: !3761, size: 64, offset: 384)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !117}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !118, file: !6, line: 419, baseType: !141, size: 64, offset: 1472)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !118, file: !6, line: 420, baseType: !141, size: 64, offset: 1536)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !118, file: !6, line: 421, baseType: !145, size: 64, offset: 1600)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !118, file: !6, line: 424, baseType: !3768, size: 64, offset: 1664)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !118, file: !6, line: 425, baseType: !3772, size: 64, offset: 1728)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !118, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !118, file: !6, line: 435, baseType: !601, size: 256, offset: 1856)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !118, file: !6, line: 437, baseType: !3777, size: 64, offset: 2112)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3779, line: 69, size: 320, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3780 = !{!3781, !3782, !3783, !3800, !3802, !3806, !3807}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3778, file: !3779, line: 70, baseType: !141, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3778, file: !3779, line: 71, baseType: !117, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3778, file: !3779, line: 72, baseType: !3784, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3786)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3779, line: 47, size: 256, elements: !3787)
!3787 = !{!3788, !3789, !3795, !3799}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3786, file: !3779, line: 49, baseType: !7, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3786, file: !3779, line: 51, baseType: !3790, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!115, !141, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3786, file: !3779, line: 53, baseType: !3796, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!115, !222, !3793}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3786, file: !3779, line: 55, baseType: !3174, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3778, file: !3779, line: 73, baseType: !3801, size: 16, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3778, file: !3779, line: 74, baseType: !3803, size: 8, offset: 208)
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !181, line: 16, baseType: !3804)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !183, line: 20, baseType: !3805)
!3805 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3778, file: !3779, line: 75, baseType: !180, size: 8, offset: 216)
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3778, file: !3779, line: 76, baseType: !3808, size: 64, offset: 256)
!3808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3778, file: !3779, line: 76, size: 64, elements: !3809)
!3809 = !{!3810, !3811, !3818}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3808, file: !3779, line: 77, baseType: !116, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3808, file: !3779, line: 78, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3779, line: 86, size: 128, elements: !3815)
!3815 = !{!3816, !3817}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3814, file: !3779, line: 87, baseType: !7, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3814, file: !3779, line: 88, baseType: !222, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3808, file: !3779, line: 79, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3821)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3779, line: 92, size: 256, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3821, file: !3779, line: 94, baseType: !7, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3821, file: !3779, line: 95, baseType: !7, size: 32, offset: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3821, file: !3779, line: 96, baseType: !923, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3821, file: !3779, line: 97, baseType: !3784, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3821, file: !3779, line: 98, baseType: !116, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !118, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !118, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !118, file: !6, line: 442, baseType: !3768, size: 64, offset: 2240)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !118, file: !6, line: 443, baseType: !3772, size: 64, offset: 2304)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !118, file: !6, line: 444, baseType: !1421, size: 8, offset: 2368)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !118, file: !6, line: 451, baseType: !1421, size: 8, offset: 2376)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !118, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !118, file: !6, line: 455, baseType: !3836, size: 64, offset: 2432)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3838, line: 23, size: 96, elements: !3839)
!3838 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3837, file: !3838, line: 24, baseType: !115, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3837, file: !3838, line: 24, baseType: !115, size: 32, offset: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3837, file: !3838, line: 24, baseType: !115, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !118, file: !6, line: 458, baseType: !3844, size: 64, offset: 2496)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!115}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !118, file: !6, line: 460, baseType: !3848, size: 4032, align: 512, offset: 2560)
!3848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3849, size: 4032, elements: !3863)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3849, file: !6, line: 363, baseType: !116, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3849, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3849, file: !6, line: 367, baseType: !3854, size: 448, offset: 128)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3854, file: !6, line: 320, baseType: !117, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3854, file: !6, line: 321, baseType: !3858, size: 384, offset: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3859, line: 40, size: 384, elements: !3860)
!3859 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3860 = !{!3861}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3858, file: !3859, line: 41, baseType: !3862, size: 384, align: 64)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 384, align: 64, elements: !2362)
!3863 = !{!3864}
!3864 = !DISubrange(count: 7)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !118, file: !6, line: 463, baseType: !3866, size: 192, offset: 6592)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3867, line: 8, size: 192, elements: !3868)
!3867 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3868 = !{!3869, !3870, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3866, file: !3867, line: 10, baseType: !7, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3866, file: !3867, line: 11, baseType: !568, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3866, file: !3867, line: 12, baseType: !3872, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3874, line: 59, size: 48, elements: !3875)
!3874 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3873, file: !3874, line: 60, baseType: !2106, size: 16)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3873, file: !3874, line: 61, baseType: !2106, size: 16, offset: 16)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3873, file: !3874, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3873, file: !3874, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3873, file: !3874, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3873, file: !3874, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !118, file: !6, line: 465, baseType: !272, size: 64, offset: 6784)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !118, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !118, file: !6, line: 470, baseType: !122, size: 128, offset: 6912)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !118, file: !6, line: 471, baseType: !3886, size: 64, offset: 7040)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3888, line: 33, size: 96, elements: !3889)
!3888 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3889 = !{!3890, !3891, !3892, !3893}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3887, file: !3888, line: 37, baseType: !115, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3887, file: !3888, line: 43, baseType: !115, size: 32, offset: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3887, file: !3888, line: 45, baseType: !192, size: 16, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3887, file: !3888, line: 47, baseType: !192, size: 16, offset: 80)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !118, file: !6, line: 476, baseType: !3895, size: 64, offset: 7104)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3897)
!3897 = !{!3898, !3914, !3915, !3916}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3896, file: !6, line: 379, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3901, line: 204, baseType: !3902)
!3901 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3901, line: 197, size: 192, elements: !3903)
!3903 = !{!3904, !3906, !3907, !3908, !3910, !3912}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3902, file: !3901, line: 198, baseType: !3905, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3901, line: 21, baseType: !372)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3902, file: !3901, line: 199, baseType: !184, size: 8, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3902, file: !3901, line: 200, baseType: !184, size: 8, offset: 40)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3902, file: !3901, line: 201, baseType: !3909, size: 16, offset: 48)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3901, line: 17, baseType: !191)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3902, file: !3901, line: 202, baseType: !3911, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3901, line: 16, baseType: !376)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3902, file: !3901, line: 203, baseType: !3913, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3901, line: 22, baseType: !376)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3896, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3896, file: !6, line: 381, baseType: !222, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3896, file: !6, line: 382, baseType: !222, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !118, file: !6, line: 477, baseType: !3896, size: 256, offset: 7168)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !118, file: !6, line: 480, baseType: !3919, size: 64, offset: 7424)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !118, file: !6, line: 483, baseType: !3922, size: 64, offset: 7488)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !118, file: !6, line: 488, baseType: !222, size: 64, offset: 7552)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !118, file: !6, line: 492, baseType: !116, size: 64, offset: 7616)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !118, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !118, file: !6, line: 495, baseType: !116, size: 64, offset: 7744)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !118, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !118, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !118, file: !6, line: 500, baseType: !3931, size: 64, offset: 7872)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3933, line: 45, baseType: !3934)
!3933 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !118, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !118, file: !6, line: 504, baseType: !3937, size: 64, offset: 8000)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3940, line: 96, size: 192, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3941 = !{!3942, !3943, !3986, !3988}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3939, file: !3940, line: 97, baseType: !7, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3939, file: !3940, line: 98, baseType: !3944, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3940, line: 24, size: 3072, elements: !3946)
!3946 = !{!3947, !3949, !3950, !3951, !3952, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3983, !3984, !3985}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3945, file: !3940, line: 26, baseType: !3948, size: 128)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !2362)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3945, file: !3940, line: 27, baseType: !3948, size: 128, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3945, file: !3940, line: 28, baseType: !115, size: 32, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3945, file: !3940, line: 31, baseType: !152, size: 32, align: 512, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3945, file: !3940, line: 32, baseType: !3953, size: 960, offset: 576)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3954, line: 206, size: 960, elements: !3955)
!3954 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3955 = !{!3956, !3957, !3960, !3962, !3963, !3965}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3953, file: !3954, line: 207, baseType: !917, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3953, file: !3954, line: 208, baseType: !3958, size: 256, offset: 64)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3959, size: 256, elements: !1309)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3953, file: !3954, line: 209, baseType: !3961, size: 256, offset: 320)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !1309)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3953, file: !3954, line: 213, baseType: !258, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3953, file: !3954, line: 215, baseType: !3964, size: 256, offset: 640)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !1309)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3953, file: !3954, line: 216, baseType: !180, size: 8, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3945, file: !3940, line: 33, baseType: !272, size: 64, offset: 1536)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3945, file: !3940, line: 34, baseType: !272, size: 64, offset: 1600)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3945, file: !3940, line: 35, baseType: !1421, size: 8, offset: 1664)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3945, file: !3940, line: 36, baseType: !2798, size: 320, offset: 1728)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3945, file: !3940, line: 37, baseType: !2128, size: 256, offset: 2048)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3945, file: !3940, line: 38, baseType: !914, size: 128, align: 64, offset: 2304)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3945, file: !3940, line: 39, baseType: !3973, size: 64, offset: 2432)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3940, line: 49, size: 768, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3974, file: !3940, line: 50, baseType: !152, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3974, file: !3940, line: 51, baseType: !3961, size: 256, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3974, file: !3940, line: 53, baseType: !3961, size: 256, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3974, file: !3940, line: 54, baseType: !272, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3974, file: !3940, line: 55, baseType: !3973, size: 64, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3974, file: !3940, line: 56, baseType: !115, size: 32, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3974, file: !3940, line: 57, baseType: !115, size: 32, offset: 736)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3945, file: !3940, line: 40, baseType: !272, size: 64, offset: 2496)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3945, file: !3940, line: 42, baseType: !115, size: 32, offset: 2560)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3945, file: !3940, line: 43, baseType: !3938, size: 64, offset: 2624)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3939, file: !3940, line: 99, baseType: !3987, offset: 128)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !504, line: 211, elements: !505)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3939, file: !3940, line: 100, baseType: !3989, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3940, line: 63, size: 3008, elements: !3991)
!3991 = !{!3992, !3993, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4021}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3990, file: !3940, line: 64, baseType: !3973, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3990, file: !3940, line: 65, baseType: !3994, size: 192, offset: 64)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3973, size: 192, elements: !223)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3990, file: !3940, line: 67, baseType: !115, size: 32, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3990, file: !3940, line: 68, baseType: !601, size: 256, offset: 320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3990, file: !3940, line: 69, baseType: !152, size: 32, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3990, file: !3940, line: 70, baseType: !601, size: 256, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3990, file: !3940, line: 71, baseType: !272, size: 64, offset: 896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3990, file: !3940, line: 72, baseType: !272, size: 64, offset: 960)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3990, file: !3940, line: 73, baseType: !272, size: 64, offset: 1024)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3990, file: !3940, line: 74, baseType: !272, size: 64, offset: 1088)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3990, file: !3940, line: 75, baseType: !272, size: 64, offset: 1152)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3990, file: !3940, line: 76, baseType: !272, size: 64, offset: 1216)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3990, file: !3940, line: 77, baseType: !272, size: 64, offset: 1280)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3990, file: !3940, line: 78, baseType: !272, size: 64, offset: 1344)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3990, file: !3940, line: 79, baseType: !1421, size: 8, offset: 1408)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3990, file: !3940, line: 80, baseType: !272, size: 64, offset: 1472)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3990, file: !3940, line: 81, baseType: !601, size: 256, offset: 1536)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3990, file: !3940, line: 82, baseType: !1812, size: 256, offset: 1792)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3990, file: !3940, line: 84, baseType: !172, size: 32, offset: 2048)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3990, file: !3940, line: 87, baseType: !272, size: 64, offset: 2112)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3990, file: !3940, line: 88, baseType: !272, size: 64, offset: 2176)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3990, file: !3940, line: 89, baseType: !4015, size: 704, offset: 2240)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2129, line: 111, size: 704, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4015, file: !2129, line: 112, baseType: !2128, size: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4015, file: !2129, line: 113, baseType: !2798, size: 320, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4015, file: !2129, line: 116, baseType: !3105, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4015, file: !2129, line: 117, baseType: !115, size: 32, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3990, file: !3940, line: 90, baseType: !3938, size: 64, offset: 2944)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !118, file: !6, line: 515, baseType: !4023, size: 64, offset: 8064)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4025, line: 117, size: 128, elements: !4026)
!4025 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4026 = !{!4027, !4028, !4029}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4024, file: !4025, line: 118, baseType: !1364, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4024, file: !4025, line: 119, baseType: !1364, size: 32, offset: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4024, file: !4025, line: 120, baseType: !258, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !118, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !118, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !118, file: !6, line: 520, baseType: !4033, size: 64, offset: 8192)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !118, file: !6, line: 523, baseType: !4035, size: 64, offset: 8256)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !118, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !118, file: !6, line: 525, baseType: !4040, size: 64, offset: 8384)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !118, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !118, file: !6, line: 533, baseType: !116, size: 64, offset: 8512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !118, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !118, file: !6, line: 535, baseType: !4047, size: 64, offset: 8640)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !118, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !118, file: !6, line: 539, baseType: !115, size: 32, offset: 8736)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !118, file: !6, line: 540, baseType: !4051, size: 64, offset: 8768)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4053, line: 32, size: 64, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4054 = !{!4055, !4056}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4052, file: !4053, line: 33, baseType: !1364, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4052, file: !4053, line: 34, baseType: !1364, size: 32, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !118, file: !6, line: 563, baseType: !122, size: 128, offset: 8832)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !118, file: !6, line: 565, baseType: !122, size: 128, offset: 8960)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !118, file: !6, line: 568, baseType: !4060, size: 64, offset: 9088)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !118, file: !6, line: 570, baseType: !172, size: 32, offset: 9152)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "drbg_flag_t", file: !88, line: 82, baseType: !1386)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4063)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rng_alg", file: !4069, line: 58, size: 3328, elements: !4070)
!4069 = !DIFile(filename: "./include/crypto/rng.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8b1199181bccfbde4a70430b217a12d5")
!4070 = !{!4071, !4220, !4224, !4228, !4229}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !4068, file: !4069, line: 59, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!115, !4075, !4196, !7, !4202, !7}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_rng", file: !4069, line: 75, size: 256, elements: !4077)
!4077 = !{!4078}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4076, file: !4069, line: 76, baseType: !4079, size: 256)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !4080, line: 422, size: 256, elements: !4081)
!4080 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!4081 = !{!4082, !4083, !4084, !4085, !4090, !4219}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4079, file: !4080, line: 423, baseType: !943, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !4079, file: !4080, line: 425, baseType: !371, size: 32, offset: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4079, file: !4080, line: 427, baseType: !115, size: 32, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4079, file: !4080, line: 429, baseType: !4086, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !4079, file: !4080, line: 431, baseType: !4091, size: 64, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !4080, line: 343, size: 3072, align: 64, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4106, !4107, !4184, !4212, !4213, !4214, !4218}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !4092, file: !4080, line: 344, baseType: !122, size: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !4092, file: !4080, line: 345, baseType: !122, size: 128, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !4092, file: !4080, line: 347, baseType: !371, size: 32, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !4092, file: !4080, line: 348, baseType: !7, size: 32, offset: 288)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !4092, file: !4080, line: 349, baseType: !7, size: 32, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !4092, file: !4080, line: 350, baseType: !7, size: 32, offset: 352)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !4092, file: !4080, line: 352, baseType: !115, size: 32, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !4092, file: !4080, line: 353, baseType: !943, size: 32, offset: 416)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !4092, file: !4080, line: 355, baseType: !4103, size: 1024, offset: 448)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 1024, elements: !4104)
!4104 = !{!4105}
!4105 = !DISubrange(count: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !4092, file: !4080, line: 356, baseType: !4103, size: 1024, offset: 1472)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !4092, file: !4080, line: 358, baseType: !4108, size: 64, offset: 2496)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4110)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !4111, line: 57, size: 512, elements: !4112)
!4111 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!4112 = !{!4113, !4117, !4121, !4125, !4129, !4135, !4180, !4181, !4182, !4183}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !4110, file: !4111, line: 58, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!7, !4091, !371, !371}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !4110, file: !4111, line: 59, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!7, !4091}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4110, file: !4111, line: 60, baseType: !4122, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!115, !4089}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4110, file: !4111, line: 61, baseType: !4126, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !574, !4091}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !4110, file: !4111, line: 62, baseType: !4130, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!115, !4133, !4091}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !4111, line: 55, flags: DIFlagFwdDecl)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4110, file: !4111, line: 63, baseType: !4136, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !4111, line: 74, size: 3520, elements: !4141)
!4141 = !{!4142, !4143, !4158, !4177, !4178}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4140, file: !4111, line: 75, baseType: !4092, size: 3072, align: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !4140, file: !4111, line: 77, baseType: !4144, size: 64, offset: 3072)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !4111, line: 91, size: 1344, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4157}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4145, file: !4111, line: 92, baseType: !122, size: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !4145, file: !4111, line: 93, baseType: !493, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4145, file: !4111, line: 94, baseType: !117, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4145, file: !4111, line: 96, baseType: !4151, size: 64, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!115, !4144, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !4111, line: 52, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4145, file: !4111, line: 98, baseType: !4103, size: 1024, offset: 320)
!4158 = !DIDerivedType(tag: DW_TAG_member, scope: !4140, file: !4111, line: 79, baseType: !4159, size: 128, offset: 3136)
!4159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4140, file: !4111, line: 79, size: 128, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4159, file: !4111, line: 81, baseType: !497, size: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !4159, file: !4111, line: 83, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !4111, line: 101, size: 384, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4173, !4174, !4175, !4176}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4164, file: !4111, line: 102, baseType: !122, size: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4164, file: !4111, line: 103, baseType: !4091, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, scope: !4164, file: !4111, line: 104, baseType: !4169, size: 64, offset: 192)
!4169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4164, file: !4111, line: 104, size: 64, elements: !4170)
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !4169, file: !4111, line: 106, baseType: !4139, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4169, file: !4111, line: 108, baseType: !4163, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4164, file: !4111, line: 110, baseType: !4108, size: 64, offset: 256)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4164, file: !4111, line: 111, baseType: !371, size: 32, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4164, file: !4111, line: 112, baseType: !1421, size: 8, offset: 352)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4164, file: !4111, line: 113, baseType: !1421, size: 8, offset: 360)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !4140, file: !4111, line: 86, baseType: !2128, size: 256, offset: 3264)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4140, file: !4111, line: 88, baseType: !4179, align: 64, offset: 3520)
!4179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, elements: !1322)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4110, file: !4111, line: 68, baseType: !7, size: 32, offset: 384)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !4110, file: !4111, line: 69, baseType: !7, size: 32, offset: 416)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !4110, file: !4111, line: 70, baseType: !7, size: 32, offset: 448)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !4110, file: !4111, line: 71, baseType: !7, size: 32, offset: 480)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !4092, file: !4080, line: 363, baseType: !4185, size: 256, offset: 2560)
!4185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4092, file: !4080, line: 360, size: 256, elements: !4186)
!4186 = !{!4187, !4204}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !4185, file: !4080, line: 361, baseType: !4188, size: 256)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !4080, line: 235, size: 256, elements: !4189)
!4189 = !{!4190, !4191, !4192, !4198, !4203}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !4188, file: !4080, line: 236, baseType: !7, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !4188, file: !4080, line: 237, baseType: !7, size: 32, offset: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !4188, file: !4080, line: 238, baseType: !4193, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!115, !4089, !4196, !7}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !4188, file: !4080, line: 240, baseType: !4199, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4089, !4202, !4196}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !4188, file: !4080, line: 241, baseType: !4199, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !4185, file: !4080, line: 362, baseType: !4205, size: 128)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !4080, line: 255, size: 128, elements: !4206)
!4206 = !{!4207, !4211}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !4205, file: !4080, line: 256, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!115, !4089, !4196, !7, !4202, !923}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !4205, file: !4080, line: 258, baseType: !4208, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !4092, file: !4080, line: 365, baseType: !4122, size: 64, offset: 2816)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !4092, file: !4080, line: 366, baseType: !4086, size: 64, offset: 2880)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !4092, file: !4080, line: 367, baseType: !4215, size: 64, offset: 2944)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !4091}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !4092, file: !4080, line: 369, baseType: !117, size: 64, offset: 3008)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !4079, file: !4080, line: 433, baseType: !4179, align: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !4068, file: !4069, line: 62, baseType: !4221, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!115, !4075, !4196, !7}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "set_ent", scope: !4068, file: !4069, line: 63, baseType: !4225, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4075, !4196, !7}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "seedsize", scope: !4068, file: !4069, line: 70, baseType: !7, size: 32, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4068, file: !4069, line: 72, baseType: !4092, size: 3072, align: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drbg_string", file: !88, line: 67, size: 256, elements: !4233)
!4233 = !{!4234, !4235, !4236}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4232, file: !88, line: 68, baseType: !379, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4232, file: !88, line: 69, baseType: !269, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4232, file: !88, line: 70, baseType: !122, size: 128, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !4239, line: 225, size: 3904, elements: !4240)
!4239 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!4240 = !{!4241, !4255, !4259, !4263, !4267, !4268, !4272, !4276, !4280, !4284, !4288, !4292, !4293}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4238, file: !4239, line: 226, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!115, !4245}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !4239, line: 175, size: 64, elements: !4247)
!4247 = !{!4248, !4254}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !4246, file: !4239, line: 176, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !4239, line: 268, size: 320, elements: !4251)
!4251 = !{!4252, !4253}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4250, file: !4239, line: 269, baseType: !7, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4250, file: !4239, line: 270, baseType: !4079, size: 256, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4246, file: !4239, line: 177, baseType: !4179, align: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4238, file: !4239, line: 227, baseType: !4256, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!115, !4245, !4196, !7}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4238, file: !4239, line: 229, baseType: !4260, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!115, !4245, !4202}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4238, file: !4239, line: 230, baseType: !4264, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!115, !4245, !4196, !7, !4202}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4238, file: !4239, line: 232, baseType: !4264, size: 64, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4238, file: !4239, line: 234, baseType: !4269, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!115, !4245, !116}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4238, file: !4239, line: 235, baseType: !4273, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!115, !4245, !2089}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4238, file: !4239, line: 236, baseType: !4277, size: 64, offset: 448)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!115, !4249, !4196, !7}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4238, file: !4239, line: 238, baseType: !4281, size: 64, offset: 512)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!115, !4249}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !4238, file: !4239, line: 239, baseType: !4285, size: 64, offset: 576)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{null, !4249}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !4238, file: !4239, line: 240, baseType: !4289, size: 64, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!115, !4249, !4249}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4238, file: !4239, line: 242, baseType: !7, size: 32, offset: 704)
!4293 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !4239, line: 244, baseType: !4294, size: 3136, offset: 768)
!4294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !4239, line: 244, size: 3136, elements: !4295)
!4295 = !{!4296, !4302}
!4296 = !DIDerivedType(tag: DW_TAG_member, scope: !4294, file: !4239, line: 245, baseType: !4297, size: 3136)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4294, file: !4239, line: 245, size: 3136, elements: !4298)
!4298 = !{!4299, !4300, !4301}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4297, file: !4239, line: 245, baseType: !7, size: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4297, file: !4239, line: 245, baseType: !7, size: 32, offset: 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4297, file: !4239, line: 245, baseType: !4092, size: 3072, align: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !4294, file: !4239, line: 246, baseType: !4303, size: 3136)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !4239, line: 70, size: 3136, elements: !4304)
!4304 = !{!4305, !4306, !4307}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4303, file: !4239, line: 70, baseType: !7, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4303, file: !4239, line: 70, baseType: !7, size: 32, offset: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4303, file: !4239, line: 70, baseType: !4092, size: 3072, align: 64, offset: 64)
!4308 = !{!0, !4309, !4314, !4319, !4324, !4329, !4331, !4333, !4335, !4337, !4339, !4341, !4343, !4348, !4353, !4355, !4357, !4359, !4363, !4368, !4373, !4378, !4383, !4388, !4393, !4395, !4398, !4417, !4420, !4425, !4430, !4524, !4527, !4532, !4534, !4537, !4542, !4544, !4549}
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto288", scope: !2, file: !3, line: 645, type: !4311, isLocal: true, isDefinition: true, align: 8)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 304, elements: !4312)
!4312 = !{!4313}
!4313 = !DISubrange(count: 38)
!4314 = !DIGlobalVariableExpression(var: !4315, expr: !DIExpression())
!4315 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace289", scope: !2, file: !3, line: 646, type: !4316, isLocal: true, isDefinition: true, align: 8)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 264, elements: !4317)
!4317 = !{!4318}
!4318 = !DISubrange(count: 33)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto290", scope: !2, file: !3, line: 646, type: !4321, isLocal: true, isDefinition: true, align: 8)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 320, elements: !4322)
!4322 = !{!4323}
!4323 = !DISubrange(count: 40)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace291", scope: !2, file: !3, line: 647, type: !4326, isLocal: true, isDefinition: true, align: 8)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 248, elements: !4327)
!4327 = !{!4328}
!4328 = !DISubrange(count: 31)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto292", scope: !2, file: !3, line: 647, type: !4311, isLocal: true, isDefinition: true, align: 8)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace293", scope: !2, file: !3, line: 648, type: !4316, isLocal: true, isDefinition: true, align: 8)
!4333 = !DIGlobalVariableExpression(var: !4334, expr: !DIExpression())
!4334 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto294", scope: !2, file: !3, line: 648, type: !4321, isLocal: true, isDefinition: true, align: 8)
!4335 = !DIGlobalVariableExpression(var: !4336, expr: !DIExpression())
!4336 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace295", scope: !2, file: !3, line: 649, type: !4326, isLocal: true, isDefinition: true, align: 8)
!4337 = !DIGlobalVariableExpression(var: !4338, expr: !DIExpression())
!4338 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto296", scope: !2, file: !3, line: 649, type: !4311, isLocal: true, isDefinition: true, align: 8)
!4339 = !DIGlobalVariableExpression(var: !4340, expr: !DIExpression())
!4340 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace297", scope: !2, file: !3, line: 650, type: !4316, isLocal: true, isDefinition: true, align: 8)
!4341 = !DIGlobalVariableExpression(var: !4342, expr: !DIExpression())
!4342 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto298", scope: !2, file: !3, line: 650, type: !4321, isLocal: true, isDefinition: true, align: 8)
!4343 = !DIGlobalVariableExpression(var: !4344, expr: !DIExpression())
!4344 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace299", scope: !2, file: !3, line: 651, type: !4345, isLocal: true, isDefinition: true, align: 8)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 232, elements: !4346)
!4346 = !{!4347}
!4347 = !DISubrange(count: 29)
!4348 = !DIGlobalVariableExpression(var: !4349, expr: !DIExpression())
!4349 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto300", scope: !2, file: !3, line: 651, type: !4350, isLocal: true, isDefinition: true, align: 8)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 288, elements: !4351)
!4351 = !{!4352}
!4352 = !DISubrange(count: 36)
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace301", scope: !2, file: !3, line: 652, type: !4326, isLocal: true, isDefinition: true, align: 8)
!4355 = !DIGlobalVariableExpression(var: !4356, expr: !DIExpression())
!4356 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto302", scope: !2, file: !3, line: 652, type: !4311, isLocal: true, isDefinition: true, align: 8)
!4357 = !DIGlobalVariableExpression(var: !4358, expr: !DIExpression())
!4358 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_drbg__303_2148_drbg_init4304", scope: !2, file: !3, line: 2148, type: !116, isLocal: true, isDefinition: true)
!4359 = !DIGlobalVariableExpression(var: !4360, expr: !DIExpression())
!4360 = distinct !DIGlobalVariable(name: "__exitcall_drbg_exit", scope: !2, file: !3, line: 2149, type: !4361, isLocal: true, isDefinition: true)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4362, line: 120, baseType: !4060)
!4362 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4363 = !DIGlobalVariableExpression(var: !4364, expr: !DIExpression())
!4364 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file305", scope: !2, file: !3, line: 2159, type: !4365, isLocal: true, isDefinition: true, align: 8)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 176, elements: !4366)
!4366 = !{!4367}
!4367 = !DISubrange(count: 22)
!4368 = !DIGlobalVariableExpression(var: !4369, expr: !DIExpression())
!4369 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license306", scope: !2, file: !3, line: 2159, type: !4370, isLocal: true, isDefinition: true, align: 8)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 136, elements: !4371)
!4371 = !{!4372}
!4372 = !DISubrange(count: 17)
!4373 = !DIGlobalVariableExpression(var: !4374, expr: !DIExpression())
!4374 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author307", scope: !2, file: !3, line: 2160, type: !4375, isLocal: true, isDefinition: true, align: 8)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 400, elements: !4376)
!4376 = !{!4377}
!4377 = !DISubrange(count: 50)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description308", scope: !2, file: !3, line: 2161, type: !4380, isLocal: true, isDefinition: true, align: 8)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 824, elements: !4381)
!4381 = !{!4382}
!4382 = !DISubrange(count: 103)
!4383 = !DIGlobalVariableExpression(var: !4384, expr: !DIExpression())
!4384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace309", scope: !2, file: !3, line: 2166, type: !4385, isLocal: true, isDefinition: true, align: 8)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 144, elements: !4386)
!4386 = !{!4387}
!4387 = !DISubrange(count: 18)
!4388 = !DIGlobalVariableExpression(var: !4389, expr: !DIExpression())
!4389 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto310", scope: !2, file: !3, line: 2166, type: !4390, isLocal: true, isDefinition: true, align: 8)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 200, elements: !4391)
!4391 = !{!4392}
!4392 = !DISubrange(count: 25)
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_import_ns311", scope: !2, file: !3, line: 2167, type: !4326, isLocal: true, isDefinition: true, align: 8)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(name: "drbg_algs", scope: !2, file: !3, line: 2066, type: !4397, isLocal: true, isDefinition: true)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4068, size: 73216, elements: !4366)
!4398 = !DIGlobalVariableExpression(var: !4399, expr: !DIExpression())
!4399 = distinct !DIGlobalVariable(name: "priority", scope: !4400, file: !3, line: 2077, type: !115, isLocal: true, isDefinition: true)
!4400 = distinct !DISubprogram(name: "drbg_fill_array", scope: !3, file: !3, line: 2073, type: !4401, scopeLine: 2075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4412)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{null, !4067, !4403, !115}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drbg_core", file: !88, line: 84, size: 2112, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4405, file: !88, line: 85, baseType: !4064, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "statelen", scope: !4405, file: !88, line: 86, baseType: !182, size: 8, offset: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "blocklen_bytes", scope: !4405, file: !88, line: 87, baseType: !182, size: 8, offset: 40)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !4405, file: !88, line: 88, baseType: !4103, size: 1024, offset: 48)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "backend_cra_name", scope: !4405, file: !88, line: 90, baseType: !4103, size: 1024, offset: 1072)
!4412 = !{!4413, !4414, !4415, !4416}
!4413 = !DILocalVariable(name: "alg", arg: 1, scope: !4400, file: !3, line: 2073, type: !4067)
!4414 = !DILocalVariable(name: "core", arg: 2, scope: !4400, file: !3, line: 2074, type: !4403)
!4415 = !DILocalVariable(name: "pr", arg: 3, scope: !4400, file: !3, line: 2074, type: !115)
!4416 = !DILocalVariable(name: "pos", scope: !4400, file: !3, line: 2076, type: !115)
!4417 = !DIGlobalVariableExpression(var: !4418, expr: !DIExpression())
!4418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2079, type: !4419, isLocal: true, isDefinition: true)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 56, elements: !3863)
!4420 = !DIGlobalVariableExpression(var: !4421, expr: !DIExpression())
!4421 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2081, type: !4422, isLocal: true, isDefinition: true)
!4422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 72, elements: !4423)
!4423 = !{!4424}
!4424 = !DISubrange(count: 9)
!4425 = !DIGlobalVariableExpression(var: !4426, expr: !DIExpression())
!4426 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2084, type: !4427, isLocal: true, isDefinition: true)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 88, elements: !4428)
!4428 = !{!4429}
!4429 = !DISubrange(count: 11)
!4430 = !DIGlobalVariableExpression(var: !4431, expr: !DIExpression())
!4431 = distinct !DIGlobalVariable(name: "__key", scope: !4432, file: !3, line: 1929, type: !503, isLocal: true, isDefinition: true)
!4432 = distinct !DISubprogram(name: "drbg_kcapi_init", scope: !3, file: !3, line: 1925, type: !4123, scopeLine: 1926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4433 = !{!4434, !4435}
!4434 = !DILocalVariable(name: "tfm", arg: 1, scope: !4432, file: !3, line: 1925, type: !4089)
!4435 = !DILocalVariable(name: "drbg", scope: !4432, file: !3, line: 1927, type: !4436)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drbg_state", file: !88, line: 114, size: 2624, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4456, !4488, !4490, !4491, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4522, !4523}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "drbg_mutex", scope: !4437, file: !88, line: 115, baseType: !601, size: 256)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !4437, file: !88, line: 116, baseType: !4230, size: 64, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "Vbuf", scope: !4437, file: !88, line: 117, baseType: !4230, size: 64, offset: 320)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !4437, file: !88, line: 119, baseType: !4230, size: 64, offset: 384)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "Cbuf", scope: !4437, file: !88, line: 120, baseType: !4230, size: 64, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "reseed_ctr", scope: !4437, file: !88, line: 122, baseType: !269, size: 64, offset: 512)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "reseed_threshold", scope: !4437, file: !88, line: 123, baseType: !269, size: 64, offset: 576)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !4437, file: !88, line: 125, baseType: !4230, size: 64, offset: 640)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpadbuf", scope: !4437, file: !88, line: 126, baseType: !4230, size: 64, offset: 704)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !4437, file: !88, line: 127, baseType: !116, size: 64, offset: 768)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ctr_handle", scope: !4437, file: !88, line: 129, baseType: !4450, size: 64, offset: 832)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_skcipher", file: !4452, line: 42, size: 320, elements: !4453)
!4452 = !DIFile(filename: "./include/crypto/skcipher.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e93186fb464044d79c042c8e9efb9dc")
!4453 = !{!4454, !4455}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "reqsize", scope: !4451, file: !4452, line: 43, baseType: !7, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4451, file: !4452, line: 45, baseType: !4079, size: 256, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ctr_req", scope: !4437, file: !88, line: 130, baseType: !4457, size: 64, offset: 896)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skcipher_request", file: !4452, line: 29, size: 640, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4474, !4475, !4487}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "cryptlen", scope: !4458, file: !4452, line: 30, baseType: !7, size: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !4458, file: !4452, line: 32, baseType: !4202, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4458, file: !4452, line: 34, baseType: !4463, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4465, line: 11, size: 256, elements: !4466)
!4465 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4466 = !{!4467, !4468, !4469, !4470, !4472, !4473}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4464, file: !4465, line: 12, baseType: !272, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4464, file: !4465, line: 13, baseType: !7, size: 32, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4464, file: !4465, line: 14, baseType: !7, size: 32, offset: 96)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4464, file: !4465, line: 15, baseType: !4471, size: 64, offset: 128)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !123, line: 149, baseType: !375)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4464, file: !4465, line: 17, baseType: !7, size: 32, offset: 192)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4464, file: !4465, line: 20, baseType: !7, size: 32, offset: 224)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4458, file: !4452, line: 35, baseType: !4463, size: 64, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4458, file: !4452, line: 37, baseType: !4476, size: 384, offset: 256)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_async_request", file: !4080, line: 172, size: 384, elements: !4477)
!4477 = !{!4478, !4479, !4484, !4485, !4486}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4476, file: !4080, line: 173, baseType: !122, size: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4476, file: !4080, line: 174, baseType: !4480, size: 64, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_completion_t", file: !4080, line: 163, baseType: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !116, !115}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4476, file: !4080, line: 175, baseType: !116, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !4476, file: !4080, line: 176, baseType: !4089, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4476, file: !4080, line: 178, baseType: !371, size: 32, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4458, file: !4452, line: 39, baseType: !4179, align: 64, offset: 640)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "outscratchpadbuf", scope: !4437, file: !88, line: 131, baseType: !4489, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "outscratchpad", scope: !4437, file: !88, line: 132, baseType: !4489, size: 64, offset: 1024)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ctr_wait", scope: !4437, file: !88, line: 133, baseType: !4492, size: 320, offset: 1088)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_wait", file: !4080, line: 375, size: 320, elements: !4493)
!4493 = !{!4494, !4495}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4492, file: !4080, line: 376, baseType: !1812, size: 256)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !4492, file: !4080, line: 377, baseType: !115, size: 32, offset: 256)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sg_in", scope: !4437, file: !88, line: 134, baseType: !4464, size: 256, offset: 1408)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "sg_out", scope: !4437, file: !88, line: 134, baseType: !4464, size: 256, offset: 1664)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "seeded", scope: !4437, file: !88, line: 136, baseType: !87, size: 32, offset: 1920)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "last_seed_time", scope: !4437, file: !88, line: 137, baseType: !272, size: 64, offset: 1984)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !4437, file: !88, line: 138, baseType: !1421, size: 8, offset: 2048)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "fips_primed", scope: !4437, file: !88, line: 139, baseType: !1421, size: 8, offset: 2056)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4437, file: !88, line: 140, baseType: !4230, size: 64, offset: 2112)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "jent", scope: !4437, file: !88, line: 141, baseType: !4075, size: 64, offset: 2176)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ops", scope: !4437, file: !88, line: 142, baseType: !4505, size: 64, offset: 2240)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4507)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drbg_state_ops", file: !88, line: 93, size: 256, elements: !4508)
!4508 = !{!4509, !4513, !4517, !4521}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4507, file: !88, line: 94, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!115, !4436, !126, !115}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !4507, file: !88, line: 96, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!115, !4436, !4230, !7, !126}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "crypto_init", scope: !4507, file: !88, line: 99, baseType: !4518, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!115, !4436}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "crypto_fini", scope: !4507, file: !88, line: 100, baseType: !4518, size: 64, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !4437, file: !88, line: 143, baseType: !4403, size: 64, offset: 2304)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "test_data", scope: !4437, file: !88, line: 144, baseType: !4232, size: 256, offset: 2368)
!4524 = !DIGlobalVariableExpression(var: !4525, expr: !DIExpression())
!4525 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1929, type: !4526, isLocal: true, isDefinition: true)
!4526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 144, elements: !4386)
!4527 = !DIGlobalVariableExpression(var: !4528, expr: !DIExpression())
!4528 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1178, type: !4529, isLocal: true, isDefinition: true)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 112, elements: !4530)
!4530 = !{!4531}
!4531 = !DISubrange(count: 14)
!4532 = !DIGlobalVariableExpression(var: !4533, expr: !DIExpression())
!4533 = distinct !DIGlobalVariable(name: "drbg_hmac_ops", scope: !2, file: !3, line: 751, type: !4506, isLocal: true, isDefinition: true)
!4534 = !DIGlobalVariableExpression(var: !4535, expr: !DIExpression())
!4535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1686, type: !4536, isLocal: true, isDefinition: true)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 400, elements: !4376)
!4537 = !DIGlobalVariableExpression(var: !4538, expr: !DIExpression())
!4538 = distinct !DIGlobalVariable(scope: null, file: !105, line: 480, type: !4539, isLocal: true, isDefinition: true)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 168, elements: !4540)
!4540 = !{!4541}
!4541 = !DISubrange(count: 21)
!4542 = !DIGlobalVariableExpression(var: !4543, expr: !DIExpression())
!4543 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1544, type: !4526, isLocal: true, isDefinition: true)
!4544 = !DIGlobalVariableExpression(var: !4545, expr: !DIExpression())
!4545 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1551, type: !4546, isLocal: true, isDefinition: true)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 312, elements: !4547)
!4547 = !{!4548}
!4548 = !DISubrange(count: 39)
!4549 = !DIGlobalVariableExpression(var: !4550, expr: !DIExpression())
!4550 = distinct !DIGlobalVariable(name: "drbg_cores", scope: !2, file: !3, line: 118, type: !4551, isLocal: true, isDefinition: true)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4404, size: 8448, elements: !1309)
!4552 = !{i32 7, !"Dwarf Version", i32 5}
!4553 = !{i32 2, !"Debug Info Version", i32 3}
!4554 = !{i32 1, !"wchar_size", i32 2}
!4555 = !{i32 8, !"cf-protection-branch", i32 1}
!4556 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4557 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4558 = !{i32 1, !"Code Model", i32 2}
!4559 = !{i32 1, !"override-stack-alignment", i32 8}
!4560 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4561 = distinct !DISubprogram(name: "drbg_exit", scope: !3, file: !3, line: 2143, type: !2476, scopeLine: 2144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4562 = !DILocation(line: 2145, column: 2, scope: !4561)
!4563 = !DILocation(line: 2146, column: 1, scope: !4561)
!4564 = !DISubprogram(name: "crypto_unregister_rngs", scope: !4565, file: !4565, line: 18, type: !4566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4565 = !DIFile(filename: "./include/crypto/internal/rng.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "104ee6ff9ed6d2a3e4aa35168b6ee914")
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4067, !115}
!4568 = distinct !DISubprogram(name: "__initstub__kmod_drbg__303_2148_drbg_init4", scope: !3, file: !3, line: 2148, type: !3845, scopeLine: 2148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4569 = !DILocation(line: 2148, column: 1, scope: !4568)
!4570 = distinct !DISubprogram(name: "drbg_init", scope: !3, file: !3, line: 2110, type: !3845, scopeLine: 2111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4571)
!4571 = !{!4572, !4573, !4574}
!4572 = !DILocalVariable(name: "i", scope: !4570, file: !3, line: 2112, type: !7)
!4573 = !DILocalVariable(name: "j", scope: !4570, file: !3, line: 2113, type: !7)
!4574 = !DILocalVariable(name: "ret", scope: !4570, file: !3, line: 2114, type: !115)
!4575 = !DILocation(line: 2112, column: 2, scope: !4570)
!4576 = !DILocation(line: 2112, column: 15, scope: !4570)
!4577 = !DILocation(line: 2113, column: 2, scope: !4570)
!4578 = !DILocation(line: 2113, column: 15, scope: !4570)
!4579 = !DILocation(line: 2114, column: 2, scope: !4570)
!4580 = !DILocation(line: 2114, column: 6, scope: !4570)
!4581 = !DILocation(line: 2116, column: 8, scope: !4570)
!4582 = !DILocation(line: 2116, column: 6, scope: !4570)
!4583 = !DILocation(line: 2117, column: 6, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 2117, column: 6)
!4585 = !DILocation(line: 2117, column: 6, scope: !4570)
!4586 = !DILocation(line: 2118, column: 10, scope: !4584)
!4587 = !DILocation(line: 2118, column: 3, scope: !4584)
!4588 = !DILocation(line: 2136, column: 9, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 2136, column: 2)
!4590 = !DILocation(line: 2136, column: 7, scope: !4589)
!4591 = !DILocation(line: 2136, column: 39, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 2136, column: 2)
!4593 = !DILocation(line: 2136, column: 37, scope: !4592)
!4594 = !DILocation(line: 2136, column: 2, scope: !4589)
!4595 = !DILocation(line: 2137, column: 30, scope: !4592)
!4596 = !DILocation(line: 2137, column: 20, scope: !4592)
!4597 = !DILocation(line: 2137, column: 46, scope: !4592)
!4598 = !DILocation(line: 2137, column: 35, scope: !4592)
!4599 = !DILocation(line: 2137, column: 3, scope: !4592)
!4600 = !DILocation(line: 2136, column: 43, scope: !4592)
!4601 = !DILocation(line: 2136, column: 48, scope: !4592)
!4602 = !DILocation(line: 2136, column: 2, scope: !4592)
!4603 = distinct !{!4603, !4594, !4604, !4605, !4606}
!4604 = !DILocation(line: 2137, column: 51, scope: !4589)
!4605 = !{!"llvm.loop.mustprogress"}
!4606 = !{!"llvm.loop.unroll.disable"}
!4607 = !DILocation(line: 2138, column: 9, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 2138, column: 2)
!4609 = !DILocation(line: 2138, column: 7, scope: !4608)
!4610 = !DILocation(line: 2138, column: 39, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 2138, column: 2)
!4612 = !DILocation(line: 2138, column: 37, scope: !4611)
!4613 = !DILocation(line: 2138, column: 2, scope: !4608)
!4614 = !DILocation(line: 2139, column: 30, scope: !4611)
!4615 = !DILocation(line: 2139, column: 20, scope: !4611)
!4616 = !DILocation(line: 2139, column: 46, scope: !4611)
!4617 = !DILocation(line: 2139, column: 35, scope: !4611)
!4618 = !DILocation(line: 2139, column: 3, scope: !4611)
!4619 = !DILocation(line: 2138, column: 43, scope: !4611)
!4620 = !DILocation(line: 2138, column: 48, scope: !4611)
!4621 = !DILocation(line: 2138, column: 2, scope: !4611)
!4622 = distinct !{!4622, !4613, !4623, !4605, !4606}
!4623 = !DILocation(line: 2139, column: 51, scope: !4608)
!4624 = !DILocation(line: 2140, column: 9, scope: !4570)
!4625 = !DILocation(line: 2140, column: 2, scope: !4570)
!4626 = !DILocation(line: 2141, column: 1, scope: !4570)
!4627 = distinct !DISubprogram(name: "drbg_healthcheck_sanity", scope: !3, file: !3, line: 2002, type: !3845, scopeLine: 2003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4628)
!4628 = !{!4629, !4630, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639}
!4629 = !DILocalVariable(name: "len", scope: !4627, file: !3, line: 2004, type: !115)
!4630 = !DILocalVariable(name: "buf", scope: !4627, file: !3, line: 2006, type: !4631)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !2281)
!4632 = !DILocalVariable(name: "drbg", scope: !4627, file: !3, line: 2007, type: !4436)
!4633 = !DILocalVariable(name: "ret", scope: !4627, file: !3, line: 2008, type: !115)
!4634 = !DILocalVariable(name: "rc", scope: !4627, file: !3, line: 2009, type: !115)
!4635 = !DILocalVariable(name: "pr", scope: !4627, file: !3, line: 2010, type: !1421)
!4636 = !DILocalVariable(name: "coreref", scope: !4627, file: !3, line: 2011, type: !115)
!4637 = !DILocalVariable(name: "addtl", scope: !4627, file: !3, line: 2012, type: !4232)
!4638 = !DILocalVariable(name: "max_addtllen", scope: !4627, file: !3, line: 2013, type: !269)
!4639 = !DILocalVariable(name: "max_request_bytes", scope: !4627, file: !3, line: 2013, type: !269)
!4640 = !DILocation(line: 2004, column: 2, scope: !4627)
!4641 = !DILocation(line: 2004, column: 6, scope: !4627)
!4642 = !DILocation(line: 2006, column: 2, scope: !4627)
!4643 = !DILocation(line: 2006, column: 16, scope: !4627)
!4644 = !DILocation(line: 2007, column: 2, scope: !4627)
!4645 = !DILocation(line: 2007, column: 21, scope: !4627)
!4646 = !DILocation(line: 2008, column: 2, scope: !4627)
!4647 = !DILocation(line: 2008, column: 6, scope: !4627)
!4648 = !DILocation(line: 2009, column: 2, scope: !4627)
!4649 = !DILocation(line: 2009, column: 6, scope: !4627)
!4650 = !DILocation(line: 2010, column: 2, scope: !4627)
!4651 = !DILocation(line: 2010, column: 7, scope: !4627)
!4652 = !DILocation(line: 2011, column: 2, scope: !4627)
!4653 = !DILocation(line: 2011, column: 6, scope: !4627)
!4654 = !DILocation(line: 2012, column: 2, scope: !4627)
!4655 = !DILocation(line: 2012, column: 21, scope: !4627)
!4656 = !DILocation(line: 2013, column: 2, scope: !4627)
!4657 = !DILocation(line: 2013, column: 9, scope: !4627)
!4658 = !DILocation(line: 2013, column: 23, scope: !4627)
!4659 = !DILocation(line: 2064, column: 1, scope: !4627)
!4660 = !DILocation(line: 2017, column: 3, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 2016, column: 6)
!4662 = !DILocation(line: 2073, column: 59, scope: !4400)
!4663 = !DILocation(line: 2074, column: 32, scope: !4400)
!4664 = !DILocation(line: 2074, column: 42, scope: !4400)
!4665 = !DILocation(line: 2076, column: 2, scope: !4400)
!4666 = !DILocation(line: 2076, column: 6, scope: !4400)
!4667 = !DILocation(line: 2079, column: 9, scope: !4400)
!4668 = !DILocation(line: 2079, column: 14, scope: !4400)
!4669 = !DILocation(line: 2079, column: 19, scope: !4400)
!4670 = !DILocation(line: 2079, column: 2, scope: !4400)
!4671 = !DILocation(line: 2080, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 2080, column: 6)
!4673 = !DILocation(line: 2080, column: 6, scope: !4400)
!4674 = !DILocation(line: 2081, column: 10, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 2080, column: 10)
!4676 = !DILocation(line: 2081, column: 15, scope: !4675)
!4677 = !DILocation(line: 2081, column: 20, scope: !4675)
!4678 = !DILocation(line: 2081, column: 3, scope: !4675)
!4679 = !DILocation(line: 2082, column: 7, scope: !4675)
!4680 = !DILocation(line: 2083, column: 2, scope: !4675)
!4681 = !DILocation(line: 2084, column: 10, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 2083, column: 9)
!4683 = !DILocation(line: 2084, column: 15, scope: !4682)
!4684 = !DILocation(line: 2084, column: 20, scope: !4682)
!4685 = !DILocation(line: 2084, column: 3, scope: !4682)
!4686 = !DILocation(line: 2085, column: 7, scope: !4682)
!4687 = !DILocation(line: 2087, column: 9, scope: !4400)
!4688 = !DILocation(line: 2087, column: 14, scope: !4400)
!4689 = !DILocation(line: 2087, column: 19, scope: !4400)
!4690 = !DILocation(line: 2087, column: 37, scope: !4400)
!4691 = !DILocation(line: 2087, column: 35, scope: !4400)
!4692 = !DILocation(line: 2087, column: 42, scope: !4400)
!4693 = !DILocation(line: 2087, column: 48, scope: !4400)
!4694 = !DILocation(line: 2087, column: 2, scope: !4400)
!4695 = !DILocation(line: 2088, column: 16, scope: !4400)
!4696 = !DILocation(line: 2088, column: 22, scope: !4400)
!4697 = !DILocation(line: 2088, column: 9, scope: !4400)
!4698 = !DILocation(line: 2090, column: 27, scope: !4400)
!4699 = !DILocation(line: 2090, column: 2, scope: !4400)
!4700 = !DILocation(line: 2090, column: 7, scope: !4400)
!4701 = !DILocation(line: 2090, column: 12, scope: !4400)
!4702 = !DILocation(line: 2090, column: 25, scope: !4400)
!4703 = !DILocation(line: 2091, column: 10, scope: !4400)
!4704 = !DILocation(line: 2100, column: 2, scope: !4400)
!4705 = !DILocation(line: 2100, column: 7, scope: !4400)
!4706 = !DILocation(line: 2100, column: 12, scope: !4400)
!4707 = !DILocation(line: 2100, column: 25, scope: !4400)
!4708 = !DILocation(line: 2101, column: 2, scope: !4400)
!4709 = !DILocation(line: 2101, column: 7, scope: !4400)
!4710 = !DILocation(line: 2101, column: 12, scope: !4400)
!4711 = !DILocation(line: 2101, column: 23, scope: !4400)
!4712 = !DILocation(line: 2102, column: 2, scope: !4400)
!4713 = !DILocation(line: 2102, column: 7, scope: !4400)
!4714 = !DILocation(line: 2102, column: 12, scope: !4400)
!4715 = !DILocation(line: 2102, column: 21, scope: !4400)
!4716 = !DILocation(line: 2103, column: 2, scope: !4400)
!4717 = !DILocation(line: 2103, column: 7, scope: !4400)
!4718 = !DILocation(line: 2103, column: 12, scope: !4400)
!4719 = !DILocation(line: 2103, column: 21, scope: !4400)
!4720 = !DILocation(line: 2104, column: 2, scope: !4400)
!4721 = !DILocation(line: 2104, column: 7, scope: !4400)
!4722 = !DILocation(line: 2104, column: 17, scope: !4400)
!4723 = !DILocation(line: 2105, column: 2, scope: !4400)
!4724 = !DILocation(line: 2105, column: 7, scope: !4400)
!4725 = !DILocation(line: 2105, column: 13, scope: !4400)
!4726 = !DILocation(line: 2106, column: 2, scope: !4400)
!4727 = !DILocation(line: 2106, column: 7, scope: !4400)
!4728 = !DILocation(line: 2106, column: 16, scope: !4400)
!4729 = !DILocation(line: 2107, column: 2, scope: !4400)
!4730 = !DILocation(line: 2107, column: 7, scope: !4400)
!4731 = !DILocation(line: 2107, column: 17, scope: !4400)
!4732 = !DILocation(line: 2108, column: 1, scope: !4400)
!4733 = !DISubprogram(name: "crypto_register_rngs", scope: !4565, file: !4565, line: 17, type: !4734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!115, !4067, !115}
!4736 = !DISubprogram(name: "strlen", scope: !4737, file: !4737, line: 128, type: !4738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4737 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!272, !141}
!4740 = !DILocation(line: 1925, column: 47, scope: !4432)
!4741 = !DILocation(line: 1927, column: 2, scope: !4432)
!4742 = !DILocation(line: 1927, column: 21, scope: !4432)
!4743 = !DILocation(line: 1927, column: 43, scope: !4432)
!4744 = !DILocation(line: 1927, column: 28, scope: !4432)
!4745 = !DILocation(line: 1929, column: 2, scope: !4432)
!4746 = !DILocation(line: 1929, column: 2, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 1929, column: 2)
!4748 = !DILocation(line: 1932, column: 1, scope: !4432)
!4749 = !DILocation(line: 1931, column: 2, scope: !4432)
!4750 = distinct !DISubprogram(name: "drbg_kcapi_cleanup", scope: !3, file: !3, line: 1934, type: !4087, scopeLine: 1935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4751)
!4751 = !{!4752}
!4752 = !DILocalVariable(name: "tfm", arg: 1, scope: !4750, file: !3, line: 1934, type: !4089)
!4753 = !DILocation(line: 1934, column: 51, scope: !4750)
!4754 = !DILocation(line: 1936, column: 36, scope: !4750)
!4755 = !DILocation(line: 1936, column: 21, scope: !4750)
!4756 = !DILocation(line: 1936, column: 2, scope: !4750)
!4757 = !DILocation(line: 1937, column: 1, scope: !4750)
!4758 = distinct !DISubprogram(name: "drbg_kcapi_random", scope: !3, file: !3, line: 1948, type: !4073, scopeLine: 1951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4759)
!4759 = !{!4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767}
!4760 = !DILocalVariable(name: "tfm", arg: 1, scope: !4758, file: !3, line: 1948, type: !4075)
!4761 = !DILocalVariable(name: "src", arg: 2, scope: !4758, file: !3, line: 1949, type: !4196)
!4762 = !DILocalVariable(name: "slen", arg: 3, scope: !4758, file: !3, line: 1949, type: !7)
!4763 = !DILocalVariable(name: "dst", arg: 4, scope: !4758, file: !3, line: 1950, type: !4202)
!4764 = !DILocalVariable(name: "dlen", arg: 5, scope: !4758, file: !3, line: 1950, type: !7)
!4765 = !DILocalVariable(name: "drbg", scope: !4758, file: !3, line: 1952, type: !4436)
!4766 = !DILocalVariable(name: "addtl", scope: !4758, file: !3, line: 1953, type: !4231)
!4767 = !DILocalVariable(name: "string", scope: !4758, file: !3, line: 1954, type: !4232)
!4768 = !DILocation(line: 1948, column: 49, scope: !4758)
!4769 = !DILocation(line: 1949, column: 19, scope: !4758)
!4770 = !DILocation(line: 1949, column: 37, scope: !4758)
!4771 = !DILocation(line: 1950, column: 13, scope: !4758)
!4772 = !DILocation(line: 1950, column: 31, scope: !4758)
!4773 = !DILocation(line: 1952, column: 2, scope: !4758)
!4774 = !DILocation(line: 1952, column: 21, scope: !4758)
!4775 = !DILocation(line: 1952, column: 43, scope: !4758)
!4776 = !DILocation(line: 1952, column: 28, scope: !4758)
!4777 = !DILocation(line: 1953, column: 2, scope: !4758)
!4778 = !DILocation(line: 1953, column: 22, scope: !4758)
!4779 = !DILocation(line: 1954, column: 2, scope: !4758)
!4780 = !DILocation(line: 1954, column: 21, scope: !4758)
!4781 = !DILocation(line: 1956, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 1956, column: 6)
!4783 = !DILocation(line: 1956, column: 6, scope: !4758)
!4784 = !DILocation(line: 1958, column: 29, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 1956, column: 12)
!4786 = !DILocation(line: 1958, column: 34, scope: !4785)
!4787 = !DILocation(line: 1958, column: 3, scope: !4785)
!4788 = !DILocation(line: 1959, column: 9, scope: !4785)
!4789 = !DILocation(line: 1960, column: 2, scope: !4785)
!4790 = !DILocation(line: 1962, column: 28, scope: !4758)
!4791 = !DILocation(line: 1962, column: 34, scope: !4758)
!4792 = !DILocation(line: 1962, column: 39, scope: !4758)
!4793 = !DILocation(line: 1962, column: 45, scope: !4758)
!4794 = !DILocation(line: 1962, column: 9, scope: !4758)
!4795 = !DILocation(line: 1963, column: 1, scope: !4758)
!4796 = !DILocation(line: 1962, column: 2, scope: !4758)
!4797 = distinct !DISubprogram(name: "drbg_kcapi_seed", scope: !3, file: !3, line: 1968, type: !4222, scopeLine: 1970, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807}
!4799 = !DILocalVariable(name: "tfm", arg: 1, scope: !4797, file: !3, line: 1968, type: !4075)
!4800 = !DILocalVariable(name: "seed", arg: 2, scope: !4797, file: !3, line: 1969, type: !4196)
!4801 = !DILocalVariable(name: "slen", arg: 3, scope: !4797, file: !3, line: 1969, type: !7)
!4802 = !DILocalVariable(name: "drbg", scope: !4797, file: !3, line: 1971, type: !4436)
!4803 = !DILocalVariable(name: "tfm_base", scope: !4797, file: !3, line: 1972, type: !4089)
!4804 = !DILocalVariable(name: "pr", scope: !4797, file: !3, line: 1973, type: !1421)
!4805 = !DILocalVariable(name: "string", scope: !4797, file: !3, line: 1974, type: !4232)
!4806 = !DILocalVariable(name: "seed_string", scope: !4797, file: !3, line: 1975, type: !4231)
!4807 = !DILocalVariable(name: "coreref", scope: !4797, file: !3, line: 1976, type: !115)
!4808 = !DILocation(line: 1968, column: 47, scope: !4797)
!4809 = !DILocation(line: 1969, column: 17, scope: !4797)
!4810 = !DILocation(line: 1969, column: 36, scope: !4797)
!4811 = !DILocation(line: 1971, column: 2, scope: !4797)
!4812 = !DILocation(line: 1971, column: 21, scope: !4797)
!4813 = !DILocation(line: 1971, column: 43, scope: !4797)
!4814 = !DILocation(line: 1971, column: 28, scope: !4797)
!4815 = !DILocation(line: 1972, column: 2, scope: !4797)
!4816 = !DILocation(line: 1972, column: 21, scope: !4797)
!4817 = !DILocation(line: 1972, column: 47, scope: !4797)
!4818 = !DILocation(line: 1972, column: 32, scope: !4797)
!4819 = !DILocation(line: 1973, column: 2, scope: !4797)
!4820 = !DILocation(line: 1973, column: 7, scope: !4797)
!4821 = !DILocation(line: 1974, column: 2, scope: !4797)
!4822 = !DILocation(line: 1974, column: 21, scope: !4797)
!4823 = !DILocation(line: 1975, column: 2, scope: !4797)
!4824 = !DILocation(line: 1975, column: 22, scope: !4797)
!4825 = !DILocation(line: 1976, column: 2, scope: !4797)
!4826 = !DILocation(line: 1976, column: 6, scope: !4797)
!4827 = !DILocation(line: 1978, column: 51, scope: !4797)
!4828 = !DILocation(line: 1978, column: 24, scope: !4797)
!4829 = !DILocation(line: 1978, column: 2, scope: !4797)
!4830 = !DILocation(line: 1980, column: 10, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 1980, column: 6)
!4832 = !DILocation(line: 1980, column: 8, scope: !4831)
!4833 = !DILocation(line: 1980, column: 6, scope: !4797)
!4834 = !DILocation(line: 1981, column: 29, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 1980, column: 16)
!4836 = !DILocation(line: 1981, column: 35, scope: !4835)
!4837 = !DILocation(line: 1981, column: 3, scope: !4835)
!4838 = !DILocation(line: 1982, column: 15, scope: !4835)
!4839 = !DILocation(line: 1983, column: 2, scope: !4835)
!4840 = !DILocation(line: 1985, column: 26, scope: !4797)
!4841 = !DILocation(line: 1985, column: 32, scope: !4797)
!4842 = !DILocation(line: 1985, column: 45, scope: !4797)
!4843 = !DILocation(line: 1985, column: 54, scope: !4797)
!4844 = !{i8 0, i8 2}
!4845 = !DILocation(line: 1985, column: 9, scope: !4797)
!4846 = !DILocation(line: 1986, column: 1, scope: !4797)
!4847 = !DILocation(line: 1985, column: 2, scope: !4797)
!4848 = distinct !DISubprogram(name: "drbg_kcapi_set_entropy", scope: !3, file: !3, line: 1659, type: !4226, scopeLine: 1661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4849)
!4849 = !{!4850, !4851, !4852, !4853}
!4850 = !DILocalVariable(name: "tfm", arg: 1, scope: !4848, file: !3, line: 1659, type: !4075)
!4851 = !DILocalVariable(name: "data", arg: 2, scope: !4848, file: !3, line: 1660, type: !4196)
!4852 = !DILocalVariable(name: "len", arg: 3, scope: !4848, file: !3, line: 1660, type: !7)
!4853 = !DILocalVariable(name: "drbg", scope: !4848, file: !3, line: 1662, type: !4436)
!4854 = !DILocation(line: 1659, column: 55, scope: !4848)
!4855 = !DILocation(line: 1660, column: 18, scope: !4848)
!4856 = !DILocation(line: 1660, column: 37, scope: !4848)
!4857 = !DILocation(line: 1662, column: 2, scope: !4848)
!4858 = !DILocation(line: 1662, column: 21, scope: !4848)
!4859 = !DILocation(line: 1662, column: 43, scope: !4848)
!4860 = !DILocation(line: 1662, column: 28, scope: !4848)
!4861 = !DILocation(line: 1664, column: 14, scope: !4848)
!4862 = !DILocation(line: 1664, column: 20, scope: !4848)
!4863 = !DILocation(line: 1664, column: 2, scope: !4848)
!4864 = !DILocation(line: 1665, column: 20, scope: !4848)
!4865 = !DILocation(line: 1665, column: 26, scope: !4848)
!4866 = !DILocation(line: 1665, column: 37, scope: !4848)
!4867 = !DILocation(line: 1665, column: 43, scope: !4848)
!4868 = !DILocation(line: 1665, column: 2, scope: !4848)
!4869 = !DILocation(line: 1666, column: 16, scope: !4848)
!4870 = !DILocation(line: 1666, column: 22, scope: !4848)
!4871 = !DILocation(line: 1666, column: 2, scope: !4848)
!4872 = !DILocation(line: 1667, column: 1, scope: !4848)
!4873 = distinct !DISubprogram(name: "crypto_tfm_ctx", scope: !4111, file: !4111, line: 184, type: !4874, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!116, !4089}
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "tfm", arg: 1, scope: !4873, file: !4111, line: 184, type: !4089)
!4878 = !DILocation(line: 184, column: 55, scope: !4873)
!4879 = !DILocation(line: 186, column: 9, scope: !4873)
!4880 = !DILocation(line: 186, column: 14, scope: !4873)
!4881 = !DILocation(line: 186, column: 2, scope: !4873)
!4882 = !DISubprogram(name: "__mutex_init", scope: !602, file: !602, line: 121, type: !4883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{null, !4885, !141, !4886}
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!4887 = distinct !DISubprogram(name: "drbg_uninstantiate", scope: !3, file: !3, line: 1639, type: !4519, scopeLine: 1640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4888)
!4888 = !{!4889}
!4889 = !DILocalVariable(name: "drbg", arg: 1, scope: !4887, file: !3, line: 1639, type: !4436)
!4890 = !DILocation(line: 1639, column: 50, scope: !4887)
!4891 = !DILocation(line: 1641, column: 22, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1641, column: 6)
!4893 = !DILocation(line: 1641, column: 28, scope: !4892)
!4894 = !DILocation(line: 1641, column: 7, scope: !4892)
!4895 = !DILocation(line: 1641, column: 6, scope: !4887)
!4896 = !DILocation(line: 1642, column: 19, scope: !4892)
!4897 = !DILocation(line: 1642, column: 25, scope: !4892)
!4898 = !DILocation(line: 1642, column: 3, scope: !4892)
!4899 = !DILocation(line: 1643, column: 2, scope: !4887)
!4900 = !DILocation(line: 1643, column: 8, scope: !4887)
!4901 = !DILocation(line: 1643, column: 13, scope: !4887)
!4902 = !DILocation(line: 1645, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1645, column: 6)
!4904 = !DILocation(line: 1645, column: 12, scope: !4903)
!4905 = !DILocation(line: 1645, column: 6, scope: !4887)
!4906 = !DILocation(line: 1646, column: 3, scope: !4903)
!4907 = !DILocation(line: 1646, column: 9, scope: !4903)
!4908 = !DILocation(line: 1646, column: 16, scope: !4903)
!4909 = !DILocation(line: 1646, column: 28, scope: !4903)
!4910 = !DILocation(line: 1647, column: 21, scope: !4887)
!4911 = !DILocation(line: 1647, column: 2, scope: !4887)
!4912 = !DILocation(line: 1649, column: 2, scope: !4887)
!4913 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4914, file: !4914, line: 70, type: !4915, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4914 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!1421, !2089}
!4917 = !{!4918}
!4918 = !DILocalVariable(name: "ptr", arg: 1, scope: !4913, file: !4914, line: 70, type: !2089)
!4919 = !DILocation(line: 70, column: 68, scope: !4913)
!4920 = !DILocation(line: 72, column: 9, scope: !4913)
!4921 = !DILocation(line: 72, column: 24, scope: !4913)
!4922 = !DILocation(line: 72, column: 27, scope: !4913)
!4923 = !DILocation(line: 72, column: 2, scope: !4913)
!4924 = distinct !DISubprogram(name: "crypto_free_rng", scope: !4069, file: !4069, line: 142, type: !4925, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4927)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{null, !4075}
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "tfm", arg: 1, scope: !4924, file: !4069, line: 142, type: !4075)
!4929 = !DILocation(line: 142, column: 55, scope: !4924)
!4930 = !DILocation(line: 144, column: 21, scope: !4924)
!4931 = !DILocation(line: 144, column: 41, scope: !4924)
!4932 = !DILocation(line: 144, column: 26, scope: !4924)
!4933 = !DILocation(line: 144, column: 2, scope: !4924)
!4934 = !DILocation(line: 145, column: 1, scope: !4924)
!4935 = distinct !DISubprogram(name: "drbg_dealloc_state", scope: !3, file: !3, line: 1255, type: !4936, scopeLine: 1256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4938)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{null, !4436}
!4938 = !{!4939}
!4939 = !DILocalVariable(name: "drbg", arg: 1, scope: !4935, file: !3, line: 1255, type: !4436)
!4940 = !DILocation(line: 1255, column: 58, scope: !4935)
!4941 = !DILocation(line: 1257, column: 7, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 1257, column: 6)
!4943 = !DILocation(line: 1257, column: 6, scope: !4935)
!4944 = !DILocation(line: 1258, column: 3, scope: !4942)
!4945 = !DILocation(line: 1259, column: 18, scope: !4935)
!4946 = !DILocation(line: 1259, column: 24, scope: !4935)
!4947 = !DILocation(line: 1259, column: 2, scope: !4935)
!4948 = !DILocation(line: 1260, column: 2, scope: !4935)
!4949 = !DILocation(line: 1260, column: 8, scope: !4935)
!4950 = !DILocation(line: 1260, column: 13, scope: !4935)
!4951 = !DILocation(line: 1261, column: 2, scope: !4935)
!4952 = !DILocation(line: 1261, column: 8, scope: !4935)
!4953 = !DILocation(line: 1261, column: 10, scope: !4935)
!4954 = !DILocation(line: 1262, column: 18, scope: !4935)
!4955 = !DILocation(line: 1262, column: 24, scope: !4935)
!4956 = !DILocation(line: 1262, column: 2, scope: !4935)
!4957 = !DILocation(line: 1263, column: 2, scope: !4935)
!4958 = !DILocation(line: 1263, column: 8, scope: !4935)
!4959 = !DILocation(line: 1263, column: 13, scope: !4935)
!4960 = !DILocation(line: 1264, column: 2, scope: !4935)
!4961 = !DILocation(line: 1264, column: 8, scope: !4935)
!4962 = !DILocation(line: 1264, column: 10, scope: !4935)
!4963 = !DILocation(line: 1265, column: 18, scope: !4935)
!4964 = !DILocation(line: 1265, column: 24, scope: !4935)
!4965 = !DILocation(line: 1265, column: 2, scope: !4935)
!4966 = !DILocation(line: 1266, column: 2, scope: !4935)
!4967 = !DILocation(line: 1266, column: 8, scope: !4935)
!4968 = !DILocation(line: 1266, column: 22, scope: !4935)
!4969 = !DILocation(line: 1267, column: 2, scope: !4935)
!4970 = !DILocation(line: 1267, column: 8, scope: !4935)
!4971 = !DILocation(line: 1267, column: 19, scope: !4935)
!4972 = !DILocation(line: 1268, column: 2, scope: !4935)
!4973 = !DILocation(line: 1268, column: 8, scope: !4935)
!4974 = !DILocation(line: 1268, column: 14, scope: !4935)
!4975 = !DILocation(line: 1269, column: 2, scope: !4935)
!4976 = !DILocation(line: 1269, column: 8, scope: !4935)
!4977 = !DILocation(line: 1269, column: 13, scope: !4935)
!4978 = !DILocation(line: 1275, column: 1, scope: !4935)
!4979 = !DISubprogram(name: "crypto_destroy_tfm", scope: !4080, file: !4080, line: 445, type: !4980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{null, !116, !4089}
!4982 = distinct !DISubprogram(name: "crypto_rng_tfm", scope: !4069, file: !4069, line: 113, type: !4983, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!4089, !4075}
!4985 = !{!4986}
!4986 = !DILocalVariable(name: "tfm", arg: 1, scope: !4982, file: !4069, line: 113, type: !4075)
!4987 = !DILocation(line: 113, column: 68, scope: !4982)
!4988 = !DILocation(line: 115, column: 10, scope: !4982)
!4989 = !DILocation(line: 115, column: 15, scope: !4982)
!4990 = !DILocation(line: 115, column: 2, scope: !4982)
!4991 = !DISubprogram(name: "kfree_sensitive", scope: !105, file: !105, line: 228, type: !4992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{null, !2089}
!4994 = distinct !DISubprogram(name: "crypto_rng_ctx", scope: !4565, file: !4565, line: 29, type: !4995, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4997)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!116, !4075}
!4997 = !{!4998}
!4998 = !DILocalVariable(name: "tfm", arg: 1, scope: !4994, file: !4565, line: 29, type: !4075)
!4999 = !DILocation(line: 29, column: 55, scope: !4994)
!5000 = !DILocation(line: 31, column: 25, scope: !4994)
!5001 = !DILocation(line: 31, column: 30, scope: !4994)
!5002 = !DILocation(line: 31, column: 9, scope: !4994)
!5003 = !DILocation(line: 31, column: 2, scope: !4994)
!5004 = distinct !DISubprogram(name: "drbg_string_fill", scope: !88, file: !88, line: 73, type: !5005, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !4231, !379, !269}
!5007 = !{!5008, !5009, !5010}
!5008 = !DILocalVariable(name: "string", arg: 1, scope: !5004, file: !88, line: 73, type: !4231)
!5009 = !DILocalVariable(name: "buf", arg: 2, scope: !5004, file: !88, line: 74, type: !379)
!5010 = !DILocalVariable(name: "len", arg: 3, scope: !5004, file: !88, line: 74, type: !269)
!5011 = !DILocation(line: 73, column: 57, scope: !5004)
!5012 = !DILocation(line: 74, column: 30, scope: !5004)
!5013 = !DILocation(line: 74, column: 42, scope: !5004)
!5014 = !DILocation(line: 76, column: 16, scope: !5004)
!5015 = !DILocation(line: 76, column: 2, scope: !5004)
!5016 = !DILocation(line: 76, column: 10, scope: !5004)
!5017 = !DILocation(line: 76, column: 14, scope: !5004)
!5018 = !DILocation(line: 77, column: 16, scope: !5004)
!5019 = !DILocation(line: 77, column: 2, scope: !5004)
!5020 = !DILocation(line: 77, column: 10, scope: !5004)
!5021 = !DILocation(line: 77, column: 14, scope: !5004)
!5022 = !DILocation(line: 78, column: 18, scope: !5004)
!5023 = !DILocation(line: 78, column: 26, scope: !5004)
!5024 = !DILocation(line: 78, column: 2, scope: !5004)
!5025 = !DILocation(line: 79, column: 1, scope: !5004)
!5026 = distinct !DISubprogram(name: "drbg_generate_long", scope: !3, file: !3, line: 1517, type: !5027, scopeLine: 1520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5029)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!115, !4436, !4230, !7, !4231}
!5029 = !{!5030, !5031, !5032, !5033, !5034, !5035, !5036, !5038}
!5030 = !DILocalVariable(name: "drbg", arg: 1, scope: !5026, file: !3, line: 1517, type: !4436)
!5031 = !DILocalVariable(name: "buf", arg: 2, scope: !5026, file: !3, line: 1518, type: !4230)
!5032 = !DILocalVariable(name: "buflen", arg: 3, scope: !5026, file: !3, line: 1518, type: !7)
!5033 = !DILocalVariable(name: "addtl", arg: 4, scope: !5026, file: !3, line: 1519, type: !4231)
!5034 = !DILocalVariable(name: "len", scope: !5026, file: !3, line: 1521, type: !7)
!5035 = !DILocalVariable(name: "slice", scope: !5026, file: !3, line: 1522, type: !7)
!5036 = !DILocalVariable(name: "err", scope: !5037, file: !3, line: 1524, type: !115)
!5037 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1523, column: 5)
!5038 = !DILocalVariable(name: "chunk", scope: !5037, file: !3, line: 1525, type: !7)
!5039 = !DILocation(line: 1517, column: 50, scope: !5026)
!5040 = !DILocation(line: 1518, column: 25, scope: !5026)
!5041 = !DILocation(line: 1518, column: 43, scope: !5026)
!5042 = !DILocation(line: 1519, column: 30, scope: !5026)
!5043 = !DILocation(line: 1521, column: 2, scope: !5026)
!5044 = !DILocation(line: 1521, column: 15, scope: !5026)
!5045 = !DILocation(line: 1522, column: 2, scope: !5026)
!5046 = !DILocation(line: 1522, column: 15, scope: !5026)
!5047 = !DILocation(line: 1523, column: 2, scope: !5026)
!5048 = !DILocation(line: 1524, column: 3, scope: !5037)
!5049 = !DILocation(line: 1524, column: 7, scope: !5037)
!5050 = !DILocation(line: 1525, column: 3, scope: !5037)
!5051 = !DILocation(line: 1525, column: 16, scope: !5037)
!5052 = !DILocation(line: 1526, column: 13, scope: !5037)
!5053 = !DILocation(line: 1526, column: 22, scope: !5037)
!5054 = !DILocation(line: 1526, column: 20, scope: !5037)
!5055 = !DILocation(line: 1526, column: 12, scope: !5037)
!5056 = !DILocation(line: 1526, column: 52, scope: !5037)
!5057 = !DILocation(line: 1526, column: 29, scope: !5037)
!5058 = !DILocation(line: 1526, column: 27, scope: !5037)
!5059 = !DILocation(line: 1526, column: 11, scope: !5037)
!5060 = !DILocation(line: 1526, column: 9, scope: !5037)
!5061 = !DILocation(line: 1527, column: 11, scope: !5037)
!5062 = !DILocation(line: 1527, column: 42, scope: !5037)
!5063 = !DILocation(line: 1527, column: 19, scope: !5037)
!5064 = !DILocation(line: 1527, column: 51, scope: !5037)
!5065 = !DILocation(line: 1527, column: 60, scope: !5037)
!5066 = !DILocation(line: 1527, column: 58, scope: !5037)
!5067 = !DILocation(line: 1527, column: 50, scope: !5037)
!5068 = !DILocation(line: 1527, column: 9, scope: !5037)
!5069 = !DILocation(line: 1528, column: 15, scope: !5037)
!5070 = !DILocation(line: 1528, column: 21, scope: !5037)
!5071 = !DILocation(line: 1528, column: 3, scope: !5037)
!5072 = !DILocation(line: 1529, column: 23, scope: !5037)
!5073 = !DILocation(line: 1529, column: 29, scope: !5037)
!5074 = !DILocation(line: 1529, column: 35, scope: !5037)
!5075 = !DILocation(line: 1529, column: 33, scope: !5037)
!5076 = !DILocation(line: 1529, column: 40, scope: !5037)
!5077 = !DILocation(line: 1529, column: 47, scope: !5037)
!5078 = !DILocation(line: 1529, column: 9, scope: !5037)
!5079 = !DILocation(line: 1529, column: 7, scope: !5037)
!5080 = !DILocation(line: 1530, column: 17, scope: !5037)
!5081 = !DILocation(line: 1530, column: 23, scope: !5037)
!5082 = !DILocation(line: 1530, column: 3, scope: !5037)
!5083 = !DILocation(line: 1531, column: 11, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 1531, column: 7)
!5085 = !DILocation(line: 1531, column: 9, scope: !5084)
!5086 = !DILocation(line: 1531, column: 7, scope: !5037)
!5087 = !DILocation(line: 1532, column: 11, scope: !5084)
!5088 = !DILocation(line: 1532, column: 4, scope: !5084)
!5089 = !DILocation(line: 1533, column: 10, scope: !5037)
!5090 = !DILocation(line: 1533, column: 7, scope: !5037)
!5091 = !DILocation(line: 1534, column: 2, scope: !5026)
!5092 = !DILocation(line: 1534, column: 2, scope: !5037)
!5093 = !DILocation(line: 1534, column: 11, scope: !5026)
!5094 = !DILocation(line: 1534, column: 17, scope: !5026)
!5095 = !DILocation(line: 1534, column: 21, scope: !5026)
!5096 = !DILocation(line: 1534, column: 25, scope: !5026)
!5097 = !DILocation(line: 1534, column: 31, scope: !5026)
!5098 = !DILocation(line: 1534, column: 29, scope: !5026)
!5099 = !DILocation(line: 0, scope: !5026)
!5100 = distinct !{!5100, !5047, !5101, !4605, !4606}
!5101 = !DILocation(line: 1534, column: 38, scope: !5026)
!5102 = !DILocation(line: 1535, column: 2, scope: !5026)
!5103 = !DILocation(line: 1536, column: 1, scope: !5026)
!5104 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5105, file: !5105, line: 35, type: !5106, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5108)
!5105 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5106 = !DISubroutineType(types: !5107)
!5107 = !{null, !126}
!5108 = !{!5109}
!5109 = !DILocalVariable(name: "list", arg: 1, scope: !5104, file: !5105, line: 35, type: !126)
!5110 = !DILocation(line: 35, column: 53, scope: !5104)
!5111 = !DILocation(line: 37, column: 2, scope: !5104)
!5112 = !DILocation(line: 37, column: 2, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5104, file: !5105, line: 37, column: 2)
!5114 = !DILocation(line: 37, column: 2, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5113, file: !5105, line: 37, column: 2)
!5116 = !DILocation(line: 37, column: 2, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !5105, line: 37, column: 2)
!5118 = !DILocation(line: 38, column: 2, scope: !5104)
!5119 = !DILocation(line: 38, column: 2, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5104, file: !5105, line: 38, column: 2)
!5121 = !DILocation(line: 38, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5120, file: !5105, line: 38, column: 2)
!5123 = !DILocation(line: 38, column: 2, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5120, file: !5105, line: 38, column: 2)
!5125 = !DILocation(line: 39, column: 1, scope: !5104)
!5126 = distinct !DISubprogram(name: "drbg_max_request_bytes", scope: !88, file: !88, line: 168, type: !5127, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!269, !4436}
!5129 = !{!5130}
!5130 = !DILocalVariable(name: "drbg", arg: 1, scope: !5126, file: !88, line: 168, type: !4436)
!5131 = !DILocation(line: 168, column: 64, scope: !5126)
!5132 = !DILocation(line: 171, column: 2, scope: !5126)
!5133 = !DISubprogram(name: "mutex_lock", scope: !602, file: !602, line: 227, type: !5134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{null, !4885}
!5136 = distinct !DISubprogram(name: "drbg_generate", scope: !3, file: !3, line: 1383, type: !5027, scopeLine: 1386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5137 = !{!5138, !5139, !5140, !5141, !5142, !5143, !5144}
!5138 = !DILocalVariable(name: "drbg", arg: 1, scope: !5136, file: !3, line: 1383, type: !4436)
!5139 = !DILocalVariable(name: "buf", arg: 2, scope: !5136, file: !3, line: 1384, type: !4230)
!5140 = !DILocalVariable(name: "buflen", arg: 3, scope: !5136, file: !3, line: 1384, type: !7)
!5141 = !DILocalVariable(name: "addtl", arg: 4, scope: !5136, file: !3, line: 1385, type: !4231)
!5142 = !DILocalVariable(name: "len", scope: !5136, file: !3, line: 1387, type: !115)
!5143 = !DILocalVariable(name: "addtllist", scope: !5136, file: !3, line: 1388, type: !122)
!5144 = !DILabel(scope: !5136, name: "err", file: !3, line: 1505)
!5145 = !DILocation(line: 1383, column: 45, scope: !5136)
!5146 = !DILocation(line: 1384, column: 20, scope: !5136)
!5147 = !DILocation(line: 1384, column: 38, scope: !5136)
!5148 = !DILocation(line: 1385, column: 25, scope: !5136)
!5149 = !DILocation(line: 1387, column: 2, scope: !5136)
!5150 = !DILocation(line: 1387, column: 6, scope: !5136)
!5151 = !DILocation(line: 1388, column: 2, scope: !5136)
!5152 = !DILocation(line: 1390, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1390, column: 6)
!5154 = !DILocation(line: 1390, column: 13, scope: !5153)
!5155 = !DILocation(line: 1390, column: 6, scope: !5136)
!5156 = !DILocation(line: 1391, column: 3, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 1391, column: 3)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 1391, column: 3)
!5159 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 1390, column: 19)
!5160 = !DILocation(line: 1391, column: 3, scope: !5158)
!5161 = !DILocation(line: 1392, column: 3, scope: !5159)
!5162 = !DILocation(line: 1394, column: 11, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1394, column: 6)
!5164 = !DILocation(line: 1394, column: 8, scope: !5163)
!5165 = !DILocation(line: 1394, column: 18, scope: !5163)
!5166 = !DILocation(line: 1394, column: 22, scope: !5163)
!5167 = !DILocation(line: 1394, column: 6, scope: !5136)
!5168 = !DILocation(line: 1395, column: 3, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 1395, column: 3)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 1395, column: 3)
!5171 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 1394, column: 27)
!5172 = !DILocation(line: 1395, column: 3, scope: !5170)
!5173 = !DILocation(line: 1396, column: 3, scope: !5171)
!5174 = !DILocation(line: 1398, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1398, column: 6)
!5176 = !DILocation(line: 1398, column: 12, scope: !5175)
!5177 = !DILocation(line: 1398, column: 23, scope: !5175)
!5178 = !DILocation(line: 1398, column: 30, scope: !5175)
!5179 = !DILocation(line: 1398, column: 20, scope: !5175)
!5180 = !DILocation(line: 1398, column: 34, scope: !5175)
!5181 = !DILocation(line: 1398, column: 41, scope: !5175)
!5182 = !DILocation(line: 1398, column: 48, scope: !5175)
!5183 = !DILocation(line: 1398, column: 39, scope: !5175)
!5184 = !DILocation(line: 1398, column: 6, scope: !5136)
!5185 = !DILocation(line: 1399, column: 3, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 1399, column: 3)
!5187 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 1399, column: 3)
!5188 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 1398, column: 53)
!5189 = !DILocation(line: 1399, column: 3, scope: !5187)
!5190 = !DILocation(line: 1400, column: 3, scope: !5188)
!5191 = !DILocation(line: 1404, column: 6, scope: !5136)
!5192 = !DILocation(line: 1405, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1405, column: 6)
!5194 = !DILocation(line: 1405, column: 39, scope: !5193)
!5195 = !DILocation(line: 1405, column: 16, scope: !5193)
!5196 = !DILocation(line: 1405, column: 13, scope: !5193)
!5197 = !DILocation(line: 1405, column: 6, scope: !5136)
!5198 = !DILocation(line: 1406, column: 3, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 1406, column: 3)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 1406, column: 3)
!5201 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 1405, column: 47)
!5202 = !DILocation(line: 1406, column: 3, scope: !5200)
!5203 = !DILocation(line: 1408, column: 3, scope: !5201)
!5204 = !DILocation(line: 1414, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1414, column: 6)
!5206 = !DILocation(line: 1414, column: 12, scope: !5205)
!5207 = !DILocation(line: 1414, column: 15, scope: !5205)
!5208 = !DILocation(line: 1414, column: 22, scope: !5205)
!5209 = !DILocation(line: 1414, column: 44, scope: !5205)
!5210 = !DILocation(line: 1414, column: 29, scope: !5205)
!5211 = !DILocation(line: 1414, column: 26, scope: !5205)
!5212 = !DILocation(line: 1414, column: 6, scope: !5136)
!5213 = !DILocation(line: 1415, column: 3, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 1415, column: 3)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 1415, column: 3)
!5216 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 1414, column: 52)
!5217 = !DILocation(line: 1415, column: 3, scope: !5215)
!5218 = !DILocation(line: 1417, column: 3, scope: !5216)
!5219 = !DILocation(line: 1425, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1425, column: 6)
!5221 = !DILocation(line: 1425, column: 12, scope: !5220)
!5222 = !DILocation(line: 1425, column: 31, scope: !5220)
!5223 = !DILocation(line: 1425, column: 37, scope: !5220)
!5224 = !DILocation(line: 1425, column: 29, scope: !5220)
!5225 = !DILocation(line: 1425, column: 6, scope: !5136)
!5226 = !DILocation(line: 1426, column: 3, scope: !5220)
!5227 = !DILocation(line: 1426, column: 9, scope: !5220)
!5228 = !DILocation(line: 1426, column: 16, scope: !5220)
!5229 = !DILocation(line: 1428, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1428, column: 6)
!5231 = !DILocation(line: 1428, column: 12, scope: !5230)
!5232 = !DILocation(line: 1428, column: 15, scope: !5230)
!5233 = !DILocation(line: 1428, column: 18, scope: !5230)
!5234 = !DILocation(line: 1428, column: 24, scope: !5230)
!5235 = !DILocation(line: 1428, column: 31, scope: !5230)
!5236 = !DILocation(line: 1428, column: 6, scope: !5136)
!5237 = !DILocation(line: 1429, column: 3, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 1429, column: 3)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 1429, column: 3)
!5240 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 1428, column: 60)
!5241 = !DILocation(line: 1429, column: 3, scope: !5239)
!5242 = !DILocation(line: 1435, column: 19, scope: !5240)
!5243 = !DILocation(line: 1435, column: 25, scope: !5240)
!5244 = !DILocation(line: 1435, column: 9, scope: !5240)
!5245 = !DILocation(line: 1435, column: 7, scope: !5240)
!5246 = !DILocation(line: 1436, column: 7, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 1436, column: 7)
!5248 = !DILocation(line: 1436, column: 7, scope: !5240)
!5249 = !DILocation(line: 1437, column: 4, scope: !5247)
!5250 = !DILocation(line: 1439, column: 9, scope: !5240)
!5251 = !DILocation(line: 1440, column: 2, scope: !5240)
!5252 = !DILocation(line: 1440, column: 13, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 1440, column: 13)
!5254 = !DILocation(line: 1440, column: 34, scope: !5253)
!5255 = !DILocation(line: 1441, column: 7, scope: !5253)
!5256 = !DILocation(line: 1441, column: 13, scope: !5253)
!5257 = !DILocation(line: 1441, column: 20, scope: !5253)
!5258 = !DILocation(line: 1441, column: 47, scope: !5253)
!5259 = !DILocation(line: 1442, column: 41, scope: !5253)
!5260 = !DILocation(line: 1442, column: 7, scope: !5253)
!5261 = !DILocation(line: 1440, column: 13, scope: !5230)
!5262 = !DILocation(line: 1443, column: 31, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 1442, column: 49)
!5264 = !DILocation(line: 1443, column: 9, scope: !5263)
!5265 = !DILocation(line: 1443, column: 7, scope: !5263)
!5266 = !DILocation(line: 1444, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 1444, column: 7)
!5268 = !DILocation(line: 1444, column: 7, scope: !5263)
!5269 = !DILocation(line: 1445, column: 4, scope: !5267)
!5270 = !DILocation(line: 1446, column: 2, scope: !5263)
!5271 = !DILocation(line: 1448, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1448, column: 6)
!5273 = !DILocation(line: 1448, column: 12, scope: !5272)
!5274 = !DILocation(line: 1448, column: 19, scope: !5272)
!5275 = !DILocation(line: 1448, column: 26, scope: !5272)
!5276 = !DILocation(line: 1448, column: 17, scope: !5272)
!5277 = !DILocation(line: 1448, column: 6, scope: !5136)
!5278 = !DILocation(line: 1449, column: 18, scope: !5272)
!5279 = !DILocation(line: 1449, column: 25, scope: !5272)
!5280 = !DILocation(line: 1449, column: 3, scope: !5272)
!5281 = !DILocation(line: 1451, column: 8, scope: !5136)
!5282 = !DILocation(line: 1451, column: 14, scope: !5136)
!5283 = !DILocation(line: 1451, column: 21, scope: !5136)
!5284 = !DILocation(line: 1451, column: 30, scope: !5136)
!5285 = !DILocation(line: 1451, column: 36, scope: !5136)
!5286 = !DILocation(line: 1451, column: 41, scope: !5136)
!5287 = !DILocation(line: 1451, column: 6, scope: !5136)
!5288 = !DILocation(line: 1454, column: 2, scope: !5136)
!5289 = !DILocation(line: 1454, column: 8, scope: !5136)
!5290 = !DILocation(line: 1454, column: 18, scope: !5136)
!5291 = !DILocation(line: 1455, column: 11, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 1455, column: 6)
!5293 = !DILocation(line: 1455, column: 8, scope: !5292)
!5294 = !DILocation(line: 1455, column: 6, scope: !5136)
!5295 = !DILocation(line: 1456, column: 3, scope: !5292)
!5296 = !DILocation(line: 1504, column: 6, scope: !5136)
!5297 = !DILocation(line: 1504, column: 2, scope: !5136)
!5298 = !DILocation(line: 1505, column: 1, scope: !5136)
!5299 = !DILocation(line: 1506, column: 9, scope: !5136)
!5300 = !DILocation(line: 1506, column: 2, scope: !5136)
!5301 = !DILocation(line: 1507, column: 1, scope: !5136)
!5302 = !DISubprogram(name: "mutex_unlock", scope: !602, file: !602, line: 246, type: !5134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5303 = distinct !DISubprogram(name: "drbg_max_addtl", scope: !88, file: !88, line: 174, type: !5127, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5304)
!5304 = !{!5305}
!5305 = !DILocalVariable(name: "drbg", arg: 1, scope: !5303, file: !88, line: 174, type: !4436)
!5306 = !DILocation(line: 174, column: 56, scope: !5303)
!5307 = !DILocation(line: 185, column: 2, scope: !5303)
!5308 = distinct !DISubprogram(name: "drbg_seed", scope: !3, file: !3, line: 1148, type: !5309, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!115, !4436, !4231, !1421}
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5320, !5321, !5322, !5323, !5324}
!5312 = !DILocalVariable(name: "drbg", arg: 1, scope: !5308, file: !3, line: 1148, type: !4436)
!5313 = !DILocalVariable(name: "pers", arg: 2, scope: !5308, file: !3, line: 1148, type: !4231)
!5314 = !DILocalVariable(name: "reseed", arg: 3, scope: !5308, file: !3, line: 1149, type: !1421)
!5315 = !DILocalVariable(name: "ret", scope: !5308, file: !3, line: 1151, type: !115)
!5316 = !DILocalVariable(name: "entropy", scope: !5308, file: !3, line: 1152, type: !5317)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 768, elements: !5318)
!5318 = !{!5319}
!5319 = !DISubrange(count: 96)
!5320 = !DILocalVariable(name: "entropylen", scope: !5308, file: !3, line: 1153, type: !7)
!5321 = !DILocalVariable(name: "data1", scope: !5308, file: !3, line: 1154, type: !4232)
!5322 = !DILocalVariable(name: "seedlist", scope: !5308, file: !3, line: 1155, type: !122)
!5323 = !DILocalVariable(name: "new_seed_state", scope: !5308, file: !3, line: 1156, type: !87)
!5324 = !DILabel(scope: !5308, name: "out", file: !3, line: 1248)
!5325 = !DILocation(line: 1148, column: 41, scope: !5308)
!5326 = !DILocation(line: 1148, column: 67, scope: !5308)
!5327 = !DILocation(line: 1149, column: 13, scope: !5308)
!5328 = !DILocation(line: 1151, column: 2, scope: !5308)
!5329 = !DILocation(line: 1151, column: 6, scope: !5308)
!5330 = !DILocation(line: 1152, column: 2, scope: !5308)
!5331 = !DILocation(line: 1152, column: 16, scope: !5308)
!5332 = !DILocation(line: 1153, column: 2, scope: !5308)
!5333 = !DILocation(line: 1153, column: 15, scope: !5308)
!5334 = !DILocation(line: 1153, column: 46, scope: !5308)
!5335 = !DILocation(line: 1153, column: 52, scope: !5308)
!5336 = !DILocation(line: 1153, column: 58, scope: !5308)
!5337 = !DILocation(line: 1153, column: 28, scope: !5308)
!5338 = !DILocation(line: 1154, column: 2, scope: !5308)
!5339 = !DILocation(line: 1154, column: 21, scope: !5308)
!5340 = !DILocation(line: 1155, column: 2, scope: !5308)
!5341 = !DILocation(line: 1156, column: 2, scope: !5308)
!5342 = !DILocation(line: 1156, column: 23, scope: !5308)
!5343 = !DILocation(line: 1159, column: 6, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 1159, column: 6)
!5345 = !DILocation(line: 1159, column: 11, scope: !5344)
!5346 = !DILocation(line: 1159, column: 14, scope: !5344)
!5347 = !DILocation(line: 1159, column: 20, scope: !5344)
!5348 = !DILocation(line: 1159, column: 42, scope: !5344)
!5349 = !DILocation(line: 1159, column: 27, scope: !5344)
!5350 = !DILocation(line: 1159, column: 24, scope: !5344)
!5351 = !DILocation(line: 1159, column: 6, scope: !5308)
!5352 = !DILocation(line: 1160, column: 3, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 1160, column: 3)
!5354 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 1160, column: 3)
!5355 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 1159, column: 50)
!5356 = !DILocation(line: 1160, column: 3, scope: !5354)
!5357 = !DILocation(line: 1162, column: 3, scope: !5355)
!5358 = !DILocation(line: 1165, column: 18, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 1165, column: 6)
!5360 = !DILocation(line: 1165, column: 24, scope: !5359)
!5361 = !DILocation(line: 1165, column: 34, scope: !5359)
!5362 = !DILocation(line: 1165, column: 6, scope: !5359)
!5363 = !DILocation(line: 1165, column: 6, scope: !5308)
!5364 = !DILocation(line: 1166, column: 28, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1165, column: 41)
!5366 = !DILocation(line: 1166, column: 34, scope: !5365)
!5367 = !DILocation(line: 1166, column: 44, scope: !5365)
!5368 = !DILocation(line: 1167, column: 6, scope: !5365)
!5369 = !DILocation(line: 1167, column: 12, scope: !5365)
!5370 = !DILocation(line: 1167, column: 22, scope: !5365)
!5371 = !DILocation(line: 1166, column: 3, scope: !5365)
!5372 = !DILocation(line: 1168, column: 3, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 1168, column: 3)
!5374 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 1168, column: 3)
!5375 = !DILocation(line: 1168, column: 3, scope: !5374)
!5376 = !DILocation(line: 1169, column: 2, scope: !5365)
!5377 = !DILocation(line: 1178, column: 3, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1169, column: 9)
!5379 = !DILocation(line: 1178, column: 3, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 1178, column: 3)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1178, column: 3)
!5382 = !DILocation(line: 1178, column: 3, scope: !5381)
!5383 = !DILocation(line: 1178, column: 3, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 1178, column: 3)
!5385 = !DILocation(line: 1178, column: 3, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 1178, column: 3)
!5387 = !DILocation(line: 1178, column: 3, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 1178, column: 3)
!5389 = !{i64 2154503884, i64 2154503913, i64 2154503959, i64 2154504017, i64 2154504071, i64 2154504125, i64 2154504180, i64 2154504211}
!5390 = !DILocation(line: 1179, column: 8, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1179, column: 7)
!5392 = !DILocation(line: 1179, column: 7, scope: !5378)
!5393 = !DILocation(line: 1180, column: 19, scope: !5391)
!5394 = !DILocation(line: 1180, column: 30, scope: !5391)
!5395 = !DILocation(line: 1180, column: 35, scope: !5391)
!5396 = !DILocation(line: 1180, column: 40, scope: !5391)
!5397 = !DILocation(line: 1180, column: 15, scope: !5391)
!5398 = !DILocation(line: 1180, column: 4, scope: !5391)
!5399 = !DILocation(line: 1181, column: 3, scope: !5378)
!5400 = !DILocation(line: 1181, column: 3, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 1181, column: 3)
!5402 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1181, column: 3)
!5403 = !DILocation(line: 1181, column: 3, scope: !5402)
!5404 = !DILocation(line: 1181, column: 3, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 1181, column: 3)
!5406 = !DILocation(line: 1181, column: 3, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 1181, column: 3)
!5408 = !DILocation(line: 1181, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 1181, column: 3)
!5410 = !{i64 2154504905, i64 2154504934, i64 2154504980, i64 2154505038, i64 2154505092, i64 2154505146, i64 2154505201, i64 2154505232}
!5411 = !DILocation(line: 1184, column: 8, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1184, column: 7)
!5413 = !DILocation(line: 1184, column: 7, scope: !5378)
!5414 = !DILocation(line: 1185, column: 19, scope: !5412)
!5415 = !DILocation(line: 1185, column: 4, scope: !5412)
!5416 = !DILocation(line: 1187, column: 31, scope: !5378)
!5417 = !DILocation(line: 1187, column: 37, scope: !5378)
!5418 = !DILocation(line: 1187, column: 46, scope: !5378)
!5419 = !DILocation(line: 1187, column: 9, scope: !5378)
!5420 = !DILocation(line: 1187, column: 7, scope: !5378)
!5421 = !DILocation(line: 1188, column: 7, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1188, column: 7)
!5423 = !DILocation(line: 1188, column: 7, scope: !5378)
!5424 = !DILocation(line: 1189, column: 4, scope: !5422)
!5425 = !DILocation(line: 1191, column: 8, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1191, column: 7)
!5427 = !DILocation(line: 1191, column: 14, scope: !5426)
!5428 = !DILocation(line: 1191, column: 7, scope: !5378)
!5429 = !DILocation(line: 1192, column: 29, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 1191, column: 20)
!5431 = !DILocation(line: 1192, column: 38, scope: !5430)
!5432 = !DILocation(line: 1192, column: 4, scope: !5430)
!5433 = !DILocation(line: 1193, column: 4, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 1193, column: 4)
!5435 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 1193, column: 4)
!5436 = !DILocation(line: 1193, column: 4, scope: !5435)
!5437 = !DILocation(line: 1195, column: 3, scope: !5430)
!5438 = !DILocation(line: 1200, column: 31, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 1195, column: 10)
!5440 = !DILocation(line: 1200, column: 37, scope: !5439)
!5441 = !DILocation(line: 1201, column: 10, scope: !5439)
!5442 = !DILocation(line: 1201, column: 20, scope: !5439)
!5443 = !DILocation(line: 1201, column: 18, scope: !5439)
!5444 = !DILocation(line: 1202, column: 10, scope: !5439)
!5445 = !DILocation(line: 1200, column: 10, scope: !5439)
!5446 = !DILocation(line: 1200, column: 8, scope: !5439)
!5447 = !DILocation(line: 1224, column: 29, scope: !5439)
!5448 = !DILocation(line: 1224, column: 38, scope: !5439)
!5449 = !DILocation(line: 1224, column: 49, scope: !5439)
!5450 = !DILocation(line: 1224, column: 4, scope: !5439)
!5451 = !DILocation(line: 1225, column: 4, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 1225, column: 4)
!5453 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 1225, column: 4)
!5454 = !DILocation(line: 1225, column: 4, scope: !5453)
!5455 = !DILocation(line: 1229, column: 23, scope: !5308)
!5456 = !DILocation(line: 1229, column: 2, scope: !5308)
!5457 = !DILocation(line: 1236, column: 6, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 1236, column: 6)
!5459 = !DILocation(line: 1236, column: 11, scope: !5458)
!5460 = !DILocation(line: 1236, column: 14, scope: !5458)
!5461 = !DILocation(line: 1236, column: 20, scope: !5458)
!5462 = !DILocation(line: 1236, column: 24, scope: !5458)
!5463 = !DILocation(line: 1236, column: 31, scope: !5458)
!5464 = !DILocation(line: 1236, column: 37, scope: !5458)
!5465 = !DILocation(line: 1236, column: 29, scope: !5458)
!5466 = !DILocation(line: 1236, column: 6, scope: !5308)
!5467 = !DILocation(line: 1237, column: 18, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 1236, column: 42)
!5469 = !DILocation(line: 1237, column: 24, scope: !5468)
!5470 = !DILocation(line: 1237, column: 3, scope: !5468)
!5471 = !DILocation(line: 1238, column: 3, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 1238, column: 3)
!5473 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 1238, column: 3)
!5474 = !DILocation(line: 1238, column: 3, scope: !5473)
!5475 = !DILocation(line: 1239, column: 2, scope: !5468)
!5476 = !DILocation(line: 1241, column: 7, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 1241, column: 6)
!5478 = !DILocation(line: 1241, column: 6, scope: !5308)
!5479 = !DILocation(line: 1242, column: 10, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 1241, column: 15)
!5481 = !DILocation(line: 1242, column: 16, scope: !5480)
!5482 = !DILocation(line: 1242, column: 36, scope: !5480)
!5483 = !DILocation(line: 1242, column: 22, scope: !5480)
!5484 = !DILocation(line: 1242, column: 3, scope: !5480)
!5485 = !DILocation(line: 1243, column: 10, scope: !5480)
!5486 = !DILocation(line: 1243, column: 16, scope: !5480)
!5487 = !DILocation(line: 1243, column: 36, scope: !5480)
!5488 = !DILocation(line: 1243, column: 22, scope: !5480)
!5489 = !DILocation(line: 1243, column: 3, scope: !5480)
!5490 = !DILocation(line: 1244, column: 2, scope: !5480)
!5491 = !DILocation(line: 1246, column: 20, scope: !5308)
!5492 = !DILocation(line: 1246, column: 37, scope: !5308)
!5493 = !DILocation(line: 1246, column: 45, scope: !5308)
!5494 = !DILocation(line: 1246, column: 8, scope: !5308)
!5495 = !DILocation(line: 1246, column: 6, scope: !5308)
!5496 = !DILocation(line: 1246, column: 2, scope: !5308)
!5497 = !DILocation(line: 1248, column: 1, scope: !5308)
!5498 = !DILocation(line: 1249, column: 19, scope: !5308)
!5499 = !DILocation(line: 1249, column: 28, scope: !5308)
!5500 = !DILocation(line: 1249, column: 39, scope: !5308)
!5501 = !DILocation(line: 1249, column: 2, scope: !5308)
!5502 = !DILocation(line: 1251, column: 9, scope: !5308)
!5503 = !DILocation(line: 1251, column: 2, scope: !5308)
!5504 = !DILocation(line: 1252, column: 1, scope: !5308)
!5505 = !DISubprogram(name: "rng_is_initialized", scope: !5506, file: !5506, line: 120, type: !3591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5506 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!5507 = distinct !DISubprogram(name: "drbg_nopr_reseed_interval_elapsed", scope: !3, file: !3, line: 1117, type: !5508, scopeLine: 1118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!1421, !4436}
!5510 = !{!5511, !5512}
!5511 = !DILocalVariable(name: "drbg", arg: 1, scope: !5507, file: !3, line: 1117, type: !4436)
!5512 = !DILocalVariable(name: "next_reseed", scope: !5507, file: !3, line: 1119, type: !272)
!5513 = !DILocation(line: 1117, column: 66, scope: !5507)
!5514 = !DILocation(line: 1119, column: 2, scope: !5507)
!5515 = !DILocation(line: 1119, column: 16, scope: !5507)
!5516 = !DILocation(line: 1122, column: 18, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 1122, column: 6)
!5518 = !DILocation(line: 1122, column: 24, scope: !5517)
!5519 = !DILocation(line: 1122, column: 34, scope: !5517)
!5520 = !DILocation(line: 1122, column: 6, scope: !5517)
!5521 = !DILocation(line: 1122, column: 6, scope: !5507)
!5522 = !DILocation(line: 1123, column: 3, scope: !5517)
!5523 = !DILocation(line: 1133, column: 16, scope: !5507)
!5524 = !DILocation(line: 1133, column: 22, scope: !5507)
!5525 = !DILocation(line: 1133, column: 37, scope: !5507)
!5526 = !DILocation(line: 1133, column: 14, scope: !5507)
!5527 = !DILocation(line: 1134, column: 9, scope: !5507)
!5528 = !DILocation(line: 1134, column: 2, scope: !5507)
!5529 = !DILocation(line: 1135, column: 1, scope: !5507)
!5530 = distinct !DISubprogram(name: "drbg_seed_from_random", scope: !3, file: !3, line: 1092, type: !4519, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5531)
!5531 = !{!5532, !5533, !5534, !5535, !5536, !5537, !5538}
!5532 = !DILocalVariable(name: "drbg", arg: 1, scope: !5530, file: !3, line: 1092, type: !4436)
!5533 = !DILocalVariable(name: "data", scope: !5530, file: !3, line: 1094, type: !4232)
!5534 = !DILocalVariable(name: "seedlist", scope: !5530, file: !3, line: 1095, type: !122)
!5535 = !DILocalVariable(name: "entropylen", scope: !5530, file: !3, line: 1096, type: !7)
!5536 = !DILocalVariable(name: "entropy", scope: !5530, file: !3, line: 1097, type: !383)
!5537 = !DILocalVariable(name: "ret", scope: !5530, file: !3, line: 1098, type: !115)
!5538 = !DILabel(scope: !5530, name: "out", file: !3, line: 1112)
!5539 = !DILocation(line: 1092, column: 53, scope: !5530)
!5540 = !DILocation(line: 1094, column: 2, scope: !5530)
!5541 = !DILocation(line: 1094, column: 21, scope: !5530)
!5542 = !DILocation(line: 1095, column: 2, scope: !5530)
!5543 = !DILocation(line: 1096, column: 2, scope: !5530)
!5544 = !DILocation(line: 1096, column: 15, scope: !5530)
!5545 = !DILocation(line: 1096, column: 46, scope: !5530)
!5546 = !DILocation(line: 1096, column: 52, scope: !5530)
!5547 = !DILocation(line: 1096, column: 58, scope: !5530)
!5548 = !DILocation(line: 1096, column: 28, scope: !5530)
!5549 = !DILocation(line: 1097, column: 2, scope: !5530)
!5550 = !DILocation(line: 1097, column: 16, scope: !5530)
!5551 = !DILocation(line: 1098, column: 2, scope: !5530)
!5552 = !DILocation(line: 1098, column: 6, scope: !5530)
!5553 = !DILocation(line: 1100, column: 2, scope: !5530)
!5554 = !DILocation(line: 1100, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 1100, column: 2)
!5556 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 1100, column: 2)
!5557 = !DILocation(line: 1100, column: 2, scope: !5556)
!5558 = !DILocation(line: 1100, column: 2, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 1100, column: 2)
!5560 = !DILocation(line: 1100, column: 2, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 1100, column: 2)
!5562 = !DILocation(line: 1100, column: 2, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 1100, column: 2)
!5564 = !{i64 2154500857, i64 2154500886, i64 2154500932, i64 2154500990, i64 2154501044, i64 2154501098, i64 2154501153, i64 2154501184}
!5565 = !DILocation(line: 1101, column: 2, scope: !5530)
!5566 = !DILocation(line: 1101, column: 2, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 1101, column: 2)
!5568 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 1101, column: 2)
!5569 = !DILocation(line: 1101, column: 2, scope: !5568)
!5570 = !DILocation(line: 1101, column: 2, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 1101, column: 2)
!5572 = !DILocation(line: 1101, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 1101, column: 2)
!5574 = !DILocation(line: 1101, column: 2, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 1101, column: 2)
!5576 = !{i64 2154501866, i64 2154501895, i64 2154501941, i64 2154501999, i64 2154502053, i64 2154502107, i64 2154502162, i64 2154502193}
!5577 = !DILocation(line: 1103, column: 26, scope: !5530)
!5578 = !DILocation(line: 1103, column: 35, scope: !5530)
!5579 = !DILocation(line: 1103, column: 2, scope: !5530)
!5580 = !DILocation(line: 1104, column: 22, scope: !5530)
!5581 = !DILocation(line: 1104, column: 2, scope: !5530)
!5582 = !DILocation(line: 1106, column: 30, scope: !5530)
!5583 = !DILocation(line: 1106, column: 36, scope: !5530)
!5584 = !DILocation(line: 1106, column: 45, scope: !5530)
!5585 = !DILocation(line: 1106, column: 8, scope: !5530)
!5586 = !DILocation(line: 1106, column: 6, scope: !5530)
!5587 = !DILocation(line: 1107, column: 6, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 1107, column: 6)
!5589 = !DILocation(line: 1107, column: 6, scope: !5530)
!5590 = !DILocation(line: 1108, column: 3, scope: !5588)
!5591 = !DILocation(line: 1110, column: 20, scope: !5530)
!5592 = !DILocation(line: 1110, column: 8, scope: !5530)
!5593 = !DILocation(line: 1110, column: 6, scope: !5530)
!5594 = !DILocation(line: 1110, column: 2, scope: !5530)
!5595 = !DILocation(line: 1112, column: 1, scope: !5530)
!5596 = !DILocation(line: 1113, column: 19, scope: !5530)
!5597 = !DILocation(line: 1113, column: 28, scope: !5530)
!5598 = !DILocation(line: 1113, column: 2, scope: !5530)
!5599 = !DILocation(line: 1114, column: 9, scope: !5530)
!5600 = !DILocation(line: 1115, column: 1, scope: !5530)
!5601 = !DILocation(line: 1114, column: 2, scope: !5530)
!5602 = distinct !DISubprogram(name: "list_add_tail", scope: !5105, file: !5105, line: 181, type: !5603, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5605)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{null, !126, !126}
!5605 = !{!5606, !5607}
!5606 = !DILocalVariable(name: "new", arg: 1, scope: !5602, file: !5105, line: 181, type: !126)
!5607 = !DILocalVariable(name: "head", arg: 2, scope: !5602, file: !5105, line: 181, type: !126)
!5608 = !DILocation(line: 181, column: 52, scope: !5602)
!5609 = !DILocation(line: 181, column: 75, scope: !5602)
!5610 = !DILocation(line: 183, column: 13, scope: !5602)
!5611 = !DILocation(line: 183, column: 18, scope: !5602)
!5612 = !DILocation(line: 183, column: 24, scope: !5602)
!5613 = !DILocation(line: 183, column: 30, scope: !5602)
!5614 = !DILocation(line: 183, column: 2, scope: !5602)
!5615 = !DILocation(line: 184, column: 1, scope: !5602)
!5616 = distinct !DISubprogram(name: "drbg_sec_strength", scope: !3, file: !3, line: 210, type: !5617, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5619)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!192, !4064}
!5619 = !{!5620}
!5620 = !DILocalVariable(name: "flags", arg: 1, scope: !5616, file: !3, line: 210, type: !4064)
!5621 = !DILocation(line: 210, column: 60, scope: !5616)
!5622 = !DILocation(line: 212, column: 10, scope: !5616)
!5623 = !DILocation(line: 212, column: 16, scope: !5616)
!5624 = !DILocation(line: 212, column: 2, scope: !5616)
!5625 = !DILocation(line: 214, column: 3, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 212, column: 38)
!5627 = !DILocation(line: 216, column: 3, scope: !5626)
!5628 = !DILocation(line: 218, column: 3, scope: !5626)
!5629 = !DILocation(line: 220, column: 3, scope: !5626)
!5630 = !DILocation(line: 222, column: 1, scope: !5616)
!5631 = distinct !DISubprogram(name: "list_empty", scope: !5105, file: !5105, line: 371, type: !5632, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!115, !5634}
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!5636 = !{!5637}
!5637 = !DILocalVariable(name: "head", arg: 1, scope: !5631, file: !5105, line: 371, type: !5634)
!5638 = !DILocation(line: 371, column: 54, scope: !5631)
!5639 = !DILocation(line: 373, column: 9, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5631, file: !5105, line: 373, column: 9)
!5641 = !DILocation(line: 373, column: 9, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5640, file: !5105, line: 373, column: 9)
!5643 = !DILocation(line: 373, column: 34, scope: !5631)
!5644 = !DILocation(line: 373, column: 31, scope: !5631)
!5645 = !DILocation(line: 373, column: 2, scope: !5631)
!5646 = distinct !DISubprogram(name: "drbg_get_random_bytes", scope: !3, file: !3, line: 1076, type: !5647, scopeLine: 1079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!115, !4436, !4230, !7}
!5649 = !{!5650, !5651, !5652, !5653}
!5650 = !DILocalVariable(name: "drbg", arg: 1, scope: !5646, file: !3, line: 1076, type: !4436)
!5651 = !DILocalVariable(name: "entropy", arg: 2, scope: !5646, file: !3, line: 1077, type: !4230)
!5652 = !DILocalVariable(name: "entropylen", arg: 3, scope: !5646, file: !3, line: 1078, type: !7)
!5653 = !DILocalVariable(name: "ret", scope: !5646, file: !3, line: 1080, type: !115)
!5654 = !DILocation(line: 1076, column: 60, scope: !5646)
!5655 = !DILocation(line: 1077, column: 21, scope: !5646)
!5656 = !DILocation(line: 1078, column: 19, scope: !5646)
!5657 = !DILocation(line: 1080, column: 2, scope: !5646)
!5658 = !DILocation(line: 1080, column: 6, scope: !5646)
!5659 = !DILocation(line: 1082, column: 2, scope: !5646)
!5660 = !DILocation(line: 1083, column: 20, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 1082, column: 5)
!5662 = !DILocation(line: 1083, column: 29, scope: !5661)
!5663 = !DILocation(line: 1083, column: 3, scope: !5661)
!5664 = !DILocation(line: 1084, column: 35, scope: !5661)
!5665 = !DILocation(line: 1084, column: 41, scope: !5661)
!5666 = !DILocation(line: 1084, column: 9, scope: !5661)
!5667 = !DILocation(line: 1084, column: 7, scope: !5661)
!5668 = !DILocation(line: 1085, column: 7, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 1085, column: 7)
!5670 = !DILocation(line: 1085, column: 11, scope: !5669)
!5671 = !DILocation(line: 1085, column: 14, scope: !5669)
!5672 = !DILocation(line: 1085, column: 18, scope: !5669)
!5673 = !DILocation(line: 1085, column: 7, scope: !5661)
!5674 = !DILocation(line: 1086, column: 11, scope: !5669)
!5675 = !DILocation(line: 1086, column: 4, scope: !5669)
!5676 = !DILocation(line: 1087, column: 2, scope: !5661)
!5677 = !DILocation(line: 1087, column: 11, scope: !5646)
!5678 = distinct !{!5678, !5659, !5679, !4605, !4606}
!5679 = !DILocation(line: 1087, column: 14, scope: !5646)
!5680 = !DILocation(line: 1089, column: 2, scope: !5646)
!5681 = !DILocation(line: 1090, column: 1, scope: !5646)
!5682 = distinct !DISubprogram(name: "crypto_rng_get_bytes", scope: !4069, file: !4069, line: 209, type: !5683, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{!115, !4075, !4202, !7}
!5685 = !{!5686, !5687, !5688}
!5686 = !DILocalVariable(name: "tfm", arg: 1, scope: !5682, file: !4069, line: 209, type: !4075)
!5687 = !DILocalVariable(name: "rdata", arg: 2, scope: !5682, file: !4069, line: 210, type: !4202)
!5688 = !DILocalVariable(name: "dlen", arg: 3, scope: !5682, file: !4069, line: 210, type: !7)
!5689 = !DILocation(line: 209, column: 59, scope: !5682)
!5690 = !DILocation(line: 210, column: 16, scope: !5682)
!5691 = !DILocation(line: 210, column: 36, scope: !5682)
!5692 = !DILocation(line: 212, column: 29, scope: !5682)
!5693 = !DILocation(line: 212, column: 43, scope: !5682)
!5694 = !DILocation(line: 212, column: 50, scope: !5682)
!5695 = !DILocation(line: 212, column: 9, scope: !5682)
!5696 = !DILocation(line: 212, column: 2, scope: !5682)
!5697 = distinct !DISubprogram(name: "drbg_statelen", scope: !88, file: !88, line: 147, type: !5698, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5700)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!182, !4436}
!5700 = !{!5701}
!5701 = !DILocalVariable(name: "drbg", arg: 1, scope: !5697, file: !88, line: 147, type: !4436)
!5702 = !DILocation(line: 147, column: 53, scope: !5697)
!5703 = !DILocation(line: 149, column: 6, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5697, file: !88, line: 149, column: 6)
!5705 = !DILocation(line: 149, column: 11, scope: !5704)
!5706 = !DILocation(line: 149, column: 14, scope: !5704)
!5707 = !DILocation(line: 149, column: 20, scope: !5704)
!5708 = !DILocation(line: 149, column: 6, scope: !5697)
!5709 = !DILocation(line: 150, column: 10, scope: !5704)
!5710 = !DILocation(line: 150, column: 16, scope: !5704)
!5711 = !DILocation(line: 150, column: 22, scope: !5704)
!5712 = !DILocation(line: 150, column: 3, scope: !5704)
!5713 = !DILocation(line: 151, column: 2, scope: !5697)
!5714 = !DILocation(line: 152, column: 1, scope: !5697)
!5715 = distinct !DISubprogram(name: "__drbg_seed", scope: !3, file: !3, line: 1039, type: !5716, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!115, !4436, !126, !115, !87}
!5718 = !{!5719, !5720, !5721, !5722, !5723}
!5719 = !DILocalVariable(name: "drbg", arg: 1, scope: !5715, file: !3, line: 1039, type: !4436)
!5720 = !DILocalVariable(name: "seed", arg: 2, scope: !5715, file: !3, line: 1039, type: !126)
!5721 = !DILocalVariable(name: "reseed", arg: 3, scope: !5715, file: !3, line: 1040, type: !115)
!5722 = !DILocalVariable(name: "new_seed_state", arg: 4, scope: !5715, file: !3, line: 1040, type: !87)
!5723 = !DILocalVariable(name: "ret", scope: !5715, file: !3, line: 1042, type: !115)
!5724 = !DILocation(line: 1039, column: 50, scope: !5715)
!5725 = !DILocation(line: 1039, column: 74, scope: !5715)
!5726 = !DILocation(line: 1040, column: 14, scope: !5715)
!5727 = !DILocation(line: 1040, column: 43, scope: !5715)
!5728 = !DILocation(line: 1042, column: 2, scope: !5715)
!5729 = !DILocation(line: 1042, column: 6, scope: !5715)
!5730 = !DILocation(line: 1042, column: 12, scope: !5715)
!5731 = !DILocation(line: 1042, column: 18, scope: !5715)
!5732 = !DILocation(line: 1042, column: 25, scope: !5715)
!5733 = !DILocation(line: 1042, column: 32, scope: !5715)
!5734 = !DILocation(line: 1042, column: 38, scope: !5715)
!5735 = !DILocation(line: 1042, column: 44, scope: !5715)
!5736 = !DILocation(line: 1044, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 1044, column: 6)
!5738 = !DILocation(line: 1044, column: 6, scope: !5715)
!5739 = !DILocation(line: 1045, column: 10, scope: !5737)
!5740 = !DILocation(line: 1045, column: 3, scope: !5737)
!5741 = !DILocation(line: 1047, column: 17, scope: !5715)
!5742 = !DILocation(line: 1047, column: 2, scope: !5715)
!5743 = !DILocation(line: 1047, column: 8, scope: !5715)
!5744 = !DILocation(line: 1047, column: 15, scope: !5715)
!5745 = !DILocation(line: 1048, column: 25, scope: !5715)
!5746 = !DILocation(line: 1048, column: 2, scope: !5715)
!5747 = !DILocation(line: 1048, column: 8, scope: !5715)
!5748 = !DILocation(line: 1048, column: 23, scope: !5715)
!5749 = !DILocation(line: 1050, column: 2, scope: !5715)
!5750 = !DILocation(line: 1050, column: 8, scope: !5715)
!5751 = !DILocation(line: 1050, column: 19, scope: !5715)
!5752 = !DILocation(line: 1052, column: 10, scope: !5715)
!5753 = !DILocation(line: 1052, column: 16, scope: !5715)
!5754 = !DILocation(line: 1052, column: 2, scope: !5715)
!5755 = !DILocation(line: 1052, column: 24, scope: !5715)
!5756 = !DILocation(line: 1061, column: 3, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 1052, column: 24)
!5758 = !DILocation(line: 1061, column: 9, scope: !5757)
!5759 = !DILocation(line: 1061, column: 26, scope: !5757)
!5760 = !DILocation(line: 1062, column: 3, scope: !5757)
!5761 = !DILocation(line: 1069, column: 46, scope: !5757)
!5762 = !DILocation(line: 1069, column: 28, scope: !5757)
!5763 = !DILocation(line: 1069, column: 3, scope: !5757)
!5764 = !DILocation(line: 1069, column: 9, scope: !5757)
!5765 = !DILocation(line: 1069, column: 26, scope: !5757)
!5766 = !DILocation(line: 1070, column: 3, scope: !5757)
!5767 = !DILocation(line: 1073, column: 9, scope: !5715)
!5768 = !DILocation(line: 1073, column: 2, scope: !5715)
!5769 = !DILocation(line: 1074, column: 1, scope: !5715)
!5770 = distinct !DISubprogram(name: "memzero_explicit", scope: !4737, file: !4737, line: 276, type: !5771, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{null, !116, !269}
!5773 = !{!5774, !5775}
!5774 = !DILocalVariable(name: "s", arg: 1, scope: !5770, file: !4737, line: 276, type: !116)
!5775 = !DILocalVariable(name: "count", arg: 2, scope: !5770, file: !4737, line: 276, type: !269)
!5776 = !DILocation(line: 276, column: 43, scope: !5770)
!5777 = !DILocation(line: 276, column: 53, scope: !5770)
!5778 = !DILocation(line: 278, column: 9, scope: !5770)
!5779 = !DILocation(line: 278, column: 15, scope: !5770)
!5780 = !DILocation(line: 278, column: 2, scope: !5770)
!5781 = !DILocation(line: 279, column: 2, scope: !5770)
!5782 = !{i64 2148849450}
!5783 = !DILocation(line: 280, column: 1, scope: !5770)
!5784 = !DISubprogram(name: "get_random_bytes", scope: !5506, file: !5506, line: 39, type: !5771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5785 = distinct !DISubprogram(name: "drbg_fips_continuous_test", scope: !3, file: !3, line: 243, type: !5786, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5788)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!115, !4436, !379}
!5788 = !{!5789, !5790, !5791, !5792}
!5789 = !DILocalVariable(name: "drbg", arg: 1, scope: !5785, file: !3, line: 243, type: !4436)
!5790 = !DILocalVariable(name: "entropy", arg: 2, scope: !5785, file: !3, line: 244, type: !379)
!5791 = !DILocalVariable(name: "entropylen", scope: !5785, file: !3, line: 246, type: !192)
!5792 = !DILocalVariable(name: "ret", scope: !5785, file: !3, line: 247, type: !115)
!5793 = !DILocation(line: 243, column: 57, scope: !5785)
!5794 = !DILocation(line: 244, column: 31, scope: !5785)
!5795 = !DILocation(line: 246, column: 2, scope: !5785)
!5796 = !DILocation(line: 246, column: 17, scope: !5785)
!5797 = !DILocation(line: 246, column: 48, scope: !5785)
!5798 = !DILocation(line: 246, column: 54, scope: !5785)
!5799 = !DILocation(line: 246, column: 60, scope: !5785)
!5800 = !DILocation(line: 246, column: 30, scope: !5785)
!5801 = !DILocation(line: 247, column: 2, scope: !5785)
!5802 = !DILocation(line: 247, column: 6, scope: !5785)
!5803 = !DILocation(line: 273, column: 1, scope: !5785)
!5804 = !DILocation(line: 250, column: 3, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 249, column: 6)
!5806 = distinct !DISubprogram(name: "crypto_rng_generate", scope: !4069, file: !4069, line: 181, type: !4073, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5807)
!5807 = !{!5808, !5809, !5810, !5811, !5812, !5813}
!5808 = !DILocalVariable(name: "tfm", arg: 1, scope: !5806, file: !4069, line: 181, type: !4075)
!5809 = !DILocalVariable(name: "src", arg: 2, scope: !5806, file: !4069, line: 182, type: !4196)
!5810 = !DILocalVariable(name: "slen", arg: 3, scope: !5806, file: !4069, line: 182, type: !7)
!5811 = !DILocalVariable(name: "dst", arg: 4, scope: !5806, file: !4069, line: 183, type: !4202)
!5812 = !DILocalVariable(name: "dlen", arg: 5, scope: !5806, file: !4069, line: 183, type: !7)
!5813 = !DILocalVariable(name: "alg", scope: !5806, file: !4069, line: 185, type: !4067)
!5814 = !DILocation(line: 181, column: 58, scope: !5806)
!5815 = !DILocation(line: 182, column: 21, scope: !5806)
!5816 = !DILocation(line: 182, column: 39, scope: !5806)
!5817 = !DILocation(line: 183, column: 15, scope: !5806)
!5818 = !DILocation(line: 183, column: 33, scope: !5806)
!5819 = !DILocation(line: 185, column: 2, scope: !5806)
!5820 = !DILocation(line: 185, column: 18, scope: !5806)
!5821 = !DILocation(line: 185, column: 39, scope: !5806)
!5822 = !DILocation(line: 185, column: 24, scope: !5806)
!5823 = !DILocation(line: 194, column: 28, scope: !5806)
!5824 = !DILocation(line: 195, column: 7, scope: !5806)
!5825 = !DILocation(line: 195, column: 12, scope: !5806)
!5826 = !DILocation(line: 195, column: 21, scope: !5806)
!5827 = !DILocation(line: 195, column: 26, scope: !5806)
!5828 = !DILocation(line: 195, column: 31, scope: !5806)
!5829 = !DILocation(line: 195, column: 37, scope: !5806)
!5830 = !DILocation(line: 195, column: 42, scope: !5806)
!5831 = !DILocation(line: 194, column: 9, scope: !5806)
!5832 = !DILocation(line: 196, column: 1, scope: !5806)
!5833 = !DILocation(line: 194, column: 2, scope: !5806)
!5834 = distinct !DISubprogram(name: "crypto_rng_alg", scope: !4069, file: !4069, line: 131, type: !5835, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5837)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!4067, !4075}
!5837 = !{!5838}
!5838 = !DILocalVariable(name: "tfm", arg: 1, scope: !5834, file: !4069, line: 131, type: !4075)
!5839 = !DILocation(line: 131, column: 65, scope: !5834)
!5840 = !DILocation(line: 133, column: 41, scope: !5834)
!5841 = !DILocation(line: 133, column: 26, scope: !5834)
!5842 = !DILocation(line: 133, column: 47, scope: !5834)
!5843 = !DILocation(line: 133, column: 9, scope: !5834)
!5844 = !DILocation(line: 133, column: 2, scope: !5834)
!5845 = distinct !DISubprogram(name: "crypto_rng_errstat", scope: !4069, file: !4069, line: 156, type: !4734, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5846)
!5846 = !{!5847, !5848}
!5847 = !DILocalVariable(name: "alg", arg: 1, scope: !5845, file: !4069, line: 156, type: !4067)
!5848 = !DILocalVariable(name: "err", arg: 2, scope: !5845, file: !4069, line: 156, type: !115)
!5849 = !DILocation(line: 156, column: 54, scope: !5845)
!5850 = !DILocation(line: 156, column: 63, scope: !5845)
!5851 = !DILocation(line: 159, column: 10, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5845, file: !4069, line: 158, column: 6)
!5853 = !DILocation(line: 159, column: 3, scope: !5852)
!5854 = distinct !DISubprogram(name: "__crypto_rng_alg", scope: !4069, file: !4069, line: 118, type: !5855, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!4067, !4091}
!5857 = !{!5858, !5859}
!5858 = !DILocalVariable(name: "alg", arg: 1, scope: !5854, file: !4069, line: 118, type: !4091)
!5859 = !DILocalVariable(name: "__mptr", scope: !5860, file: !4069, line: 120, type: !116)
!5860 = distinct !DILexicalBlock(scope: !5854, file: !4069, line: 120, column: 9)
!5861 = !DILocation(line: 118, column: 67, scope: !5854)
!5862 = !DILocation(line: 120, column: 9, scope: !5860)
!5863 = !DILocation(line: 120, column: 9, scope: !5854)
!5864 = !DILocation(line: 120, column: 2, scope: !5854)
!5865 = distinct !DISubprogram(name: "drbg_max_requests", scope: !88, file: !88, line: 189, type: !5127, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5866)
!5866 = !{!5867}
!5867 = !DILocalVariable(name: "drbg", arg: 1, scope: !5865, file: !88, line: 189, type: !4436)
!5868 = !DILocation(line: 189, column: 59, scope: !5865)
!5869 = !DILocation(line: 192, column: 2, scope: !5865)
!5870 = distinct !DISubprogram(name: "__list_add", scope: !5105, file: !5105, line: 146, type: !5871, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5873)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{null, !126, !126, !126}
!5873 = !{!5874, !5875, !5876}
!5874 = !DILocalVariable(name: "new", arg: 1, scope: !5870, file: !5105, line: 146, type: !126)
!5875 = !DILocalVariable(name: "prev", arg: 2, scope: !5870, file: !5105, line: 147, type: !126)
!5876 = !DILocalVariable(name: "next", arg: 3, scope: !5870, file: !5105, line: 148, type: !126)
!5877 = !DILocation(line: 146, column: 49, scope: !5870)
!5878 = !DILocation(line: 147, column: 28, scope: !5870)
!5879 = !DILocation(line: 148, column: 28, scope: !5870)
!5880 = !DILocation(line: 150, column: 24, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5870, file: !5105, line: 150, column: 6)
!5882 = !DILocation(line: 150, column: 29, scope: !5881)
!5883 = !DILocation(line: 150, column: 35, scope: !5881)
!5884 = !DILocation(line: 150, column: 7, scope: !5881)
!5885 = !DILocation(line: 150, column: 6, scope: !5870)
!5886 = !DILocation(line: 151, column: 3, scope: !5881)
!5887 = !DILocation(line: 153, column: 15, scope: !5870)
!5888 = !DILocation(line: 153, column: 2, scope: !5870)
!5889 = !DILocation(line: 153, column: 8, scope: !5870)
!5890 = !DILocation(line: 153, column: 13, scope: !5870)
!5891 = !DILocation(line: 154, column: 14, scope: !5870)
!5892 = !DILocation(line: 154, column: 2, scope: !5870)
!5893 = !DILocation(line: 154, column: 7, scope: !5870)
!5894 = !DILocation(line: 154, column: 12, scope: !5870)
!5895 = !DILocation(line: 155, column: 14, scope: !5870)
!5896 = !DILocation(line: 155, column: 2, scope: !5870)
!5897 = !DILocation(line: 155, column: 7, scope: !5870)
!5898 = !DILocation(line: 155, column: 12, scope: !5870)
!5899 = !DILocation(line: 156, column: 2, scope: !5870)
!5900 = !DILocation(line: 156, column: 2, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5870, file: !5105, line: 156, column: 2)
!5902 = !DILocation(line: 156, column: 2, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5901, file: !5105, line: 156, column: 2)
!5904 = !DILocation(line: 156, column: 2, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5901, file: !5105, line: 156, column: 2)
!5906 = !DILocation(line: 157, column: 1, scope: !5870)
!5907 = distinct !DISubprogram(name: "__list_add_valid", scope: !5105, file: !5105, line: 128, type: !5908, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5910)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!1421, !126, !126, !126}
!5910 = !{!5911, !5912, !5913}
!5911 = !DILocalVariable(name: "new", arg: 1, scope: !5907, file: !5105, line: 128, type: !126)
!5912 = !DILocalVariable(name: "prev", arg: 2, scope: !5907, file: !5105, line: 129, type: !126)
!5913 = !DILocalVariable(name: "next", arg: 3, scope: !5907, file: !5105, line: 130, type: !126)
!5914 = !DILocation(line: 128, column: 55, scope: !5907)
!5915 = !DILocation(line: 129, column: 23, scope: !5907)
!5916 = !DILocation(line: 130, column: 23, scope: !5907)
!5917 = !DILocation(line: 132, column: 2, scope: !5907)
!5918 = distinct !DISubprogram(name: "drbg_convert_tfm_core", scope: !3, file: !3, line: 1896, type: !5919, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !141, !568, !3544}
!5921 = !{!5922, !5923, !5924, !5925, !5926, !5927}
!5922 = !DILocalVariable(name: "cra_driver_name", arg: 1, scope: !5918, file: !3, line: 1896, type: !141)
!5923 = !DILocalVariable(name: "coreref", arg: 2, scope: !5918, file: !3, line: 1897, type: !568)
!5924 = !DILocalVariable(name: "pr", arg: 3, scope: !5918, file: !3, line: 1897, type: !3544)
!5925 = !DILocalVariable(name: "i", scope: !5918, file: !3, line: 1899, type: !115)
!5926 = !DILocalVariable(name: "start", scope: !5918, file: !3, line: 1900, type: !269)
!5927 = !DILocalVariable(name: "len", scope: !5918, file: !3, line: 1901, type: !115)
!5928 = !DILocation(line: 1896, column: 54, scope: !5918)
!5929 = !DILocation(line: 1897, column: 12, scope: !5918)
!5930 = !DILocation(line: 1897, column: 27, scope: !5918)
!5931 = !DILocation(line: 1899, column: 2, scope: !5918)
!5932 = !DILocation(line: 1899, column: 6, scope: !5918)
!5933 = !DILocation(line: 1900, column: 2, scope: !5918)
!5934 = !DILocation(line: 1900, column: 9, scope: !5918)
!5935 = !DILocation(line: 1901, column: 2, scope: !5918)
!5936 = !DILocation(line: 1901, column: 6, scope: !5918)
!5937 = !DILocation(line: 1903, column: 3, scope: !5918)
!5938 = !DILocation(line: 1903, column: 6, scope: !5918)
!5939 = !DILocation(line: 1905, column: 14, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 1905, column: 6)
!5941 = !DILocation(line: 1905, column: 7, scope: !5940)
!5942 = !DILocation(line: 1905, column: 6, scope: !5918)
!5943 = !DILocation(line: 1906, column: 9, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 1905, column: 50)
!5945 = !DILocation(line: 1907, column: 4, scope: !5944)
!5946 = !DILocation(line: 1907, column: 7, scope: !5944)
!5947 = !DILocation(line: 1908, column: 2, scope: !5944)
!5948 = !DILocation(line: 1908, column: 21, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 1908, column: 13)
!5950 = !DILocation(line: 1908, column: 14, scope: !5949)
!5951 = !DILocation(line: 1908, column: 13, scope: !5940)
!5952 = !DILocation(line: 1909, column: 9, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 1908, column: 54)
!5954 = !DILocation(line: 1910, column: 2, scope: !5953)
!5955 = !DILocation(line: 1911, column: 3, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 1910, column: 9)
!5957 = !DILocation(line: 1915, column: 15, scope: !5918)
!5958 = !DILocation(line: 1915, column: 8, scope: !5918)
!5959 = !DILocation(line: 1915, column: 34, scope: !5918)
!5960 = !DILocation(line: 1915, column: 32, scope: !5918)
!5961 = !DILocation(line: 1915, column: 6, scope: !5918)
!5962 = !DILocation(line: 1916, column: 9, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 1916, column: 2)
!5964 = !DILocation(line: 1916, column: 7, scope: !5963)
!5965 = !DILocation(line: 1916, column: 39, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5963, file: !3, line: 1916, column: 2)
!5967 = !DILocation(line: 1916, column: 37, scope: !5966)
!5968 = !DILocation(line: 1916, column: 2, scope: !5963)
!5969 = !DILocation(line: 1917, column: 15, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 1917, column: 7)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 1916, column: 47)
!5972 = !DILocation(line: 1917, column: 33, scope: !5970)
!5973 = !DILocation(line: 1917, column: 31, scope: !5970)
!5974 = !DILocation(line: 1917, column: 51, scope: !5970)
!5975 = !DILocation(line: 1917, column: 40, scope: !5970)
!5976 = !DILocation(line: 1917, column: 54, scope: !5970)
!5977 = !DILocation(line: 1918, column: 8, scope: !5970)
!5978 = !DILocation(line: 1917, column: 8, scope: !5970)
!5979 = !DILocation(line: 1917, column: 7, scope: !5971)
!5980 = !DILocation(line: 1919, column: 15, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 1918, column: 14)
!5982 = !DILocation(line: 1919, column: 5, scope: !5981)
!5983 = !DILocation(line: 1919, column: 13, scope: !5981)
!5984 = !DILocation(line: 1920, column: 4, scope: !5981)
!5985 = !DILocation(line: 1922, column: 2, scope: !5971)
!5986 = !DILocation(line: 1916, column: 43, scope: !5966)
!5987 = !DILocation(line: 1916, column: 2, scope: !5966)
!5988 = distinct !{!5988, !5968, !5989, !4605, !4606}
!5989 = !DILocation(line: 1922, column: 2, scope: !5963)
!5990 = !DILocation(line: 1923, column: 1, scope: !5918)
!5991 = distinct !DISubprogram(name: "crypto_tfm_alg_driver_name", scope: !4080, file: !4080, line: 460, type: !5992, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5994)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{!141, !4089}
!5994 = !{!5995}
!5995 = !DILocalVariable(name: "tfm", arg: 1, scope: !5991, file: !4080, line: 460, type: !4089)
!5996 = !DILocation(line: 460, column: 73, scope: !5991)
!5997 = !DILocation(line: 462, column: 9, scope: !5991)
!5998 = !DILocation(line: 462, column: 14, scope: !5991)
!5999 = !DILocation(line: 462, column: 25, scope: !5991)
!6000 = !DILocation(line: 462, column: 2, scope: !5991)
!6001 = distinct !DISubprogram(name: "drbg_instantiate", scope: !3, file: !3, line: 1574, type: !6002, scopeLine: 1576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6004)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!115, !4436, !4231, !115, !1421}
!6004 = !{!6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012}
!6005 = !DILocalVariable(name: "drbg", arg: 1, scope: !6001, file: !3, line: 1574, type: !4436)
!6006 = !DILocalVariable(name: "pers", arg: 2, scope: !6001, file: !3, line: 1574, type: !4231)
!6007 = !DILocalVariable(name: "coreref", arg: 3, scope: !6001, file: !3, line: 1575, type: !115)
!6008 = !DILocalVariable(name: "pr", arg: 4, scope: !6001, file: !3, line: 1575, type: !1421)
!6009 = !DILocalVariable(name: "ret", scope: !6001, file: !3, line: 1577, type: !115)
!6010 = !DILocalVariable(name: "reseed", scope: !6001, file: !3, line: 1578, type: !1421)
!6011 = !DILabel(scope: !6001, name: "unlock", file: !3, line: 1620)
!6012 = !DILabel(scope: !6001, name: "free_everything", file: !3, line: 1624)
!6013 = !DILocation(line: 1574, column: 48, scope: !6001)
!6014 = !DILocation(line: 1574, column: 74, scope: !6001)
!6015 = !DILocation(line: 1575, column: 12, scope: !6001)
!6016 = !DILocation(line: 1575, column: 26, scope: !6001)
!6017 = !DILocation(line: 1577, column: 2, scope: !6001)
!6018 = !DILocation(line: 1577, column: 6, scope: !6001)
!6019 = !DILocation(line: 1578, column: 2, scope: !6001)
!6020 = !DILocation(line: 1578, column: 7, scope: !6001)
!6021 = !DILocation(line: 1580, column: 2, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 1580, column: 2)
!6023 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1580, column: 2)
!6024 = !DILocation(line: 1580, column: 2, scope: !6023)
!6025 = !DILocation(line: 1582, column: 14, scope: !6001)
!6026 = !DILocation(line: 1582, column: 20, scope: !6001)
!6027 = !DILocation(line: 1582, column: 2, scope: !6001)
!6028 = !DILocation(line: 1594, column: 7, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1594, column: 6)
!6030 = !DILocation(line: 1594, column: 13, scope: !6029)
!6031 = !DILocation(line: 1594, column: 6, scope: !6001)
!6032 = !DILocation(line: 1595, column: 28, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 1594, column: 19)
!6034 = !DILocation(line: 1595, column: 17, scope: !6033)
!6035 = !DILocation(line: 1595, column: 3, scope: !6033)
!6036 = !DILocation(line: 1595, column: 9, scope: !6033)
!6037 = !DILocation(line: 1595, column: 14, scope: !6033)
!6038 = !DILocation(line: 1596, column: 14, scope: !6033)
!6039 = !DILocation(line: 1596, column: 3, scope: !6033)
!6040 = !DILocation(line: 1596, column: 9, scope: !6033)
!6041 = !DILocation(line: 1596, column: 12, scope: !6033)
!6042 = !DILocation(line: 1597, column: 3, scope: !6033)
!6043 = !DILocation(line: 1597, column: 9, scope: !6033)
!6044 = !DILocation(line: 1597, column: 16, scope: !6033)
!6045 = !DILocation(line: 1598, column: 3, scope: !6033)
!6046 = !DILocation(line: 1598, column: 9, scope: !6033)
!6047 = !DILocation(line: 1598, column: 24, scope: !6033)
!6048 = !DILocation(line: 1599, column: 46, scope: !6033)
!6049 = !DILocation(line: 1599, column: 28, scope: !6033)
!6050 = !DILocation(line: 1599, column: 3, scope: !6033)
!6051 = !DILocation(line: 1599, column: 9, scope: !6033)
!6052 = !DILocation(line: 1599, column: 26, scope: !6033)
!6053 = !DILocation(line: 1601, column: 26, scope: !6033)
!6054 = !DILocation(line: 1601, column: 9, scope: !6033)
!6055 = !DILocation(line: 1601, column: 7, scope: !6033)
!6056 = !DILocation(line: 1602, column: 7, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 1602, column: 7)
!6058 = !DILocation(line: 1602, column: 7, scope: !6033)
!6059 = !DILocation(line: 1603, column: 4, scope: !6057)
!6060 = !DILocation(line: 1605, column: 27, scope: !6033)
!6061 = !DILocation(line: 1605, column: 9, scope: !6033)
!6062 = !DILocation(line: 1605, column: 7, scope: !6033)
!6063 = !DILocation(line: 1606, column: 7, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 1606, column: 7)
!6065 = !DILocation(line: 1606, column: 7, scope: !6033)
!6066 = !DILocation(line: 1607, column: 4, scope: !6064)
!6067 = !DILocation(line: 1609, column: 10, scope: !6033)
!6068 = !DILocation(line: 1610, column: 2, scope: !6033)
!6069 = !DILocation(line: 1612, column: 18, scope: !6001)
!6070 = !DILocation(line: 1612, column: 24, scope: !6001)
!6071 = !DILocation(line: 1612, column: 30, scope: !6001)
!6072 = !DILocation(line: 1612, column: 8, scope: !6001)
!6073 = !DILocation(line: 1612, column: 6, scope: !6001)
!6074 = !DILocation(line: 1614, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1614, column: 6)
!6076 = !DILocation(line: 1614, column: 10, scope: !6075)
!6077 = !DILocation(line: 1614, column: 14, scope: !6075)
!6078 = !DILocation(line: 1614, column: 6, scope: !6001)
!6079 = !DILocation(line: 1615, column: 3, scope: !6075)
!6080 = !DILocation(line: 1617, column: 16, scope: !6001)
!6081 = !DILocation(line: 1617, column: 22, scope: !6001)
!6082 = !DILocation(line: 1617, column: 2, scope: !6001)
!6083 = !DILocation(line: 1618, column: 9, scope: !6001)
!6084 = !DILocation(line: 1618, column: 2, scope: !6001)
!6085 = !DILocation(line: 1620, column: 1, scope: !6001)
!6086 = !DILocation(line: 1621, column: 16, scope: !6001)
!6087 = !DILocation(line: 1621, column: 22, scope: !6001)
!6088 = !DILocation(line: 1621, column: 2, scope: !6001)
!6089 = !DILocation(line: 1622, column: 9, scope: !6001)
!6090 = !DILocation(line: 1622, column: 2, scope: !6001)
!6091 = !DILocation(line: 1624, column: 1, scope: !6001)
!6092 = !DILocation(line: 1625, column: 16, scope: !6001)
!6093 = !DILocation(line: 1625, column: 22, scope: !6001)
!6094 = !DILocation(line: 1625, column: 2, scope: !6001)
!6095 = !DILocation(line: 1626, column: 21, scope: !6001)
!6096 = !DILocation(line: 1626, column: 2, scope: !6001)
!6097 = !DILocation(line: 1627, column: 9, scope: !6001)
!6098 = !DILocation(line: 1627, column: 2, scope: !6001)
!6099 = !DILocation(line: 1628, column: 1, scope: !6001)
!6100 = !DISubprogram(name: "memcmp", scope: !4737, file: !4737, line: 196, type: !6101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!115, !2089, !2089, !270}
!6103 = distinct !DISubprogram(name: "drbg_alloc_state", scope: !3, file: !3, line: 1281, type: !4519, scopeLine: 1282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6104)
!6104 = !{!6105, !6106, !6107, !6108, !6109}
!6105 = !DILocalVariable(name: "drbg", arg: 1, scope: !6103, file: !3, line: 1281, type: !4436)
!6106 = !DILocalVariable(name: "ret", scope: !6103, file: !3, line: 1283, type: !115)
!6107 = !DILocalVariable(name: "sb_size", scope: !6103, file: !3, line: 1284, type: !7)
!6108 = !DILabel(scope: !6103, name: "fini", file: !3, line: 1356)
!6109 = !DILabel(scope: !6103, name: "err", file: !3, line: 1358)
!6110 = !DILocation(line: 1281, column: 55, scope: !6103)
!6111 = !DILocation(line: 1283, column: 2, scope: !6103)
!6112 = !DILocation(line: 1283, column: 6, scope: !6103)
!6113 = !DILocation(line: 1284, column: 2, scope: !6103)
!6114 = !DILocation(line: 1284, column: 15, scope: !6103)
!6115 = !DILocation(line: 1286, column: 10, scope: !6103)
!6116 = !DILocation(line: 1286, column: 16, scope: !6103)
!6117 = !DILocation(line: 1286, column: 22, scope: !6103)
!6118 = !DILocation(line: 1286, column: 28, scope: !6103)
!6119 = !DILocation(line: 1286, column: 2, scope: !6103)
!6120 = !DILocation(line: 1289, column: 3, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 1286, column: 46)
!6122 = !DILocation(line: 1289, column: 9, scope: !6121)
!6123 = !DILocation(line: 1289, column: 15, scope: !6121)
!6124 = !DILocation(line: 1290, column: 3, scope: !6121)
!6125 = !DILocation(line: 1303, column: 7, scope: !6121)
!6126 = !DILocation(line: 1304, column: 3, scope: !6121)
!6127 = !DILocation(line: 1307, column: 8, scope: !6103)
!6128 = !DILocation(line: 1307, column: 14, scope: !6103)
!6129 = !DILocation(line: 1307, column: 21, scope: !6103)
!6130 = !DILocation(line: 1307, column: 33, scope: !6103)
!6131 = !DILocation(line: 1307, column: 6, scope: !6103)
!6132 = !DILocation(line: 1308, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 1308, column: 6)
!6134 = !DILocation(line: 1308, column: 10, scope: !6133)
!6135 = !DILocation(line: 1308, column: 6, scope: !6103)
!6136 = !DILocation(line: 1309, column: 3, scope: !6133)
!6137 = !DILocation(line: 1311, column: 37, scope: !6103)
!6138 = !DILocation(line: 1311, column: 23, scope: !6103)
!6139 = !DILocation(line: 1311, column: 45, scope: !6103)
!6140 = !DILocation(line: 1311, column: 43, scope: !6103)
!6141 = !DILocation(line: 1311, column: 15, scope: !6103)
!6142 = !DILocation(line: 1311, column: 2, scope: !6103)
!6143 = !DILocation(line: 1311, column: 8, scope: !6103)
!6144 = !DILocation(line: 1311, column: 13, scope: !6103)
!6145 = !DILocation(line: 1312, column: 7, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 1312, column: 6)
!6147 = !DILocation(line: 1312, column: 13, scope: !6146)
!6148 = !DILocation(line: 1312, column: 6, scope: !6103)
!6149 = !DILocation(line: 1313, column: 7, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 1312, column: 19)
!6151 = !DILocation(line: 1314, column: 3, scope: !6150)
!6152 = !DILocation(line: 1316, column: 12, scope: !6103)
!6153 = !DILocation(line: 1316, column: 2, scope: !6103)
!6154 = !DILocation(line: 1316, column: 8, scope: !6103)
!6155 = !DILocation(line: 1316, column: 10, scope: !6103)
!6156 = !DILocation(line: 1317, column: 37, scope: !6103)
!6157 = !DILocation(line: 1317, column: 23, scope: !6103)
!6158 = !DILocation(line: 1317, column: 45, scope: !6103)
!6159 = !DILocation(line: 1317, column: 43, scope: !6103)
!6160 = !DILocation(line: 1317, column: 15, scope: !6103)
!6161 = !DILocation(line: 1317, column: 2, scope: !6103)
!6162 = !DILocation(line: 1317, column: 8, scope: !6103)
!6163 = !DILocation(line: 1317, column: 13, scope: !6103)
!6164 = !DILocation(line: 1318, column: 7, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 1318, column: 6)
!6166 = !DILocation(line: 1318, column: 13, scope: !6165)
!6167 = !DILocation(line: 1318, column: 6, scope: !6103)
!6168 = !DILocation(line: 1319, column: 7, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 1318, column: 19)
!6170 = !DILocation(line: 1320, column: 3, scope: !6169)
!6171 = !DILocation(line: 1322, column: 12, scope: !6103)
!6172 = !DILocation(line: 1322, column: 2, scope: !6103)
!6173 = !DILocation(line: 1322, column: 8, scope: !6103)
!6174 = !DILocation(line: 1322, column: 10, scope: !6103)
!6175 = !DILocation(line: 1324, column: 6, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 1324, column: 6)
!6177 = !DILocation(line: 1324, column: 12, scope: !6176)
!6178 = !DILocation(line: 1324, column: 18, scope: !6176)
!6179 = !DILocation(line: 1324, column: 24, scope: !6176)
!6180 = !DILocation(line: 1324, column: 6, scope: !6103)
!6181 = !DILocation(line: 1325, column: 11, scope: !6176)
!6182 = !DILocation(line: 1325, column: 3, scope: !6176)
!6183 = !DILocation(line: 1326, column: 11, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 1326, column: 11)
!6185 = !DILocation(line: 1326, column: 17, scope: !6184)
!6186 = !DILocation(line: 1326, column: 23, scope: !6184)
!6187 = !DILocation(line: 1326, column: 29, scope: !6184)
!6188 = !DILocation(line: 1326, column: 11, scope: !6176)
!6189 = !DILocation(line: 1327, column: 27, scope: !6184)
!6190 = !DILocation(line: 1327, column: 13, scope: !6184)
!6191 = !DILocation(line: 1327, column: 49, scope: !6184)
!6192 = !DILocation(line: 1327, column: 35, scope: !6184)
!6193 = !DILocation(line: 1327, column: 33, scope: !6184)
!6194 = !DILocation(line: 1328, column: 20, scope: !6184)
!6195 = !DILocation(line: 1328, column: 6, scope: !6184)
!6196 = !DILocation(line: 1327, column: 55, scope: !6184)
!6197 = !DILocation(line: 1329, column: 20, scope: !6184)
!6198 = !DILocation(line: 1329, column: 6, scope: !6184)
!6199 = !DILocation(line: 1328, column: 26, scope: !6184)
!6200 = !DILocation(line: 1330, column: 20, scope: !6184)
!6201 = !DILocation(line: 1330, column: 6, scope: !6184)
!6202 = !DILocation(line: 1329, column: 26, scope: !6184)
!6203 = !DILocation(line: 1331, column: 20, scope: !6184)
!6204 = !DILocation(line: 1331, column: 6, scope: !6184)
!6205 = !DILocation(line: 1330, column: 26, scope: !6184)
!6206 = !DILocation(line: 1331, column: 42, scope: !6184)
!6207 = !DILocation(line: 1331, column: 28, scope: !6184)
!6208 = !DILocation(line: 1331, column: 26, scope: !6184)
!6209 = !DILocation(line: 1327, column: 11, scope: !6184)
!6210 = !DILocation(line: 1327, column: 3, scope: !6184)
!6211 = !DILocation(line: 1333, column: 27, scope: !6184)
!6212 = !DILocation(line: 1333, column: 13, scope: !6184)
!6213 = !DILocation(line: 1333, column: 49, scope: !6184)
!6214 = !DILocation(line: 1333, column: 35, scope: !6184)
!6215 = !DILocation(line: 1333, column: 33, scope: !6184)
!6216 = !DILocation(line: 1333, column: 11, scope: !6184)
!6217 = !DILocation(line: 1335, column: 10, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 1335, column: 6)
!6219 = !DILocation(line: 1335, column: 8, scope: !6218)
!6220 = !DILocation(line: 1335, column: 6, scope: !6103)
!6221 = !DILocation(line: 1336, column: 33, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 1335, column: 19)
!6223 = !DILocation(line: 1336, column: 43, scope: !6222)
!6224 = !DILocation(line: 1336, column: 41, scope: !6222)
!6225 = !DILocation(line: 1336, column: 25, scope: !6222)
!6226 = !DILocation(line: 1336, column: 3, scope: !6222)
!6227 = !DILocation(line: 1336, column: 9, scope: !6222)
!6228 = !DILocation(line: 1336, column: 23, scope: !6222)
!6229 = !DILocation(line: 1337, column: 8, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 1337, column: 7)
!6231 = !DILocation(line: 1337, column: 14, scope: !6230)
!6232 = !DILocation(line: 1337, column: 7, scope: !6222)
!6233 = !DILocation(line: 1338, column: 8, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 1337, column: 29)
!6235 = !DILocation(line: 1339, column: 4, scope: !6234)
!6236 = !DILocation(line: 1341, column: 22, scope: !6222)
!6237 = !DILocation(line: 1341, column: 3, scope: !6222)
!6238 = !DILocation(line: 1341, column: 9, scope: !6222)
!6239 = !DILocation(line: 1341, column: 20, scope: !6222)
!6240 = !DILocation(line: 1342, column: 2, scope: !6222)
!6241 = !DILocation(line: 1354, column: 2, scope: !6103)
!6242 = !DILocation(line: 1356, column: 1, scope: !6103)
!6243 = !DILocation(line: 1357, column: 2, scope: !6103)
!6244 = !DILocation(line: 1357, column: 8, scope: !6103)
!6245 = !DILocation(line: 1357, column: 15, scope: !6103)
!6246 = !DILocation(line: 1357, column: 27, scope: !6103)
!6247 = !DILocation(line: 1358, column: 1, scope: !6103)
!6248 = !DILocation(line: 1359, column: 21, scope: !6103)
!6249 = !DILocation(line: 1359, column: 2, scope: !6103)
!6250 = !DILocation(line: 1360, column: 9, scope: !6103)
!6251 = !DILocation(line: 1360, column: 2, scope: !6103)
!6252 = !DILocation(line: 1361, column: 1, scope: !6103)
!6253 = distinct !DISubprogram(name: "drbg_prepare_hrng", scope: !3, file: !3, line: 1538, type: !4519, scopeLine: 1539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6254)
!6254 = !{!6255, !6256}
!6255 = !DILocalVariable(name: "drbg", arg: 1, scope: !6253, file: !3, line: 1538, type: !4436)
!6256 = !DILocalVariable(name: "err", scope: !6257, file: !3, line: 1546, type: !3934)
!6257 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 1545, column: 26)
!6258 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 1545, column: 6)
!6259 = !DILocation(line: 1538, column: 49, scope: !6253)
!6260 = !DILocation(line: 1541, column: 18, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 1541, column: 6)
!6262 = !DILocation(line: 1541, column: 24, scope: !6261)
!6263 = !DILocation(line: 1541, column: 34, scope: !6261)
!6264 = !DILocation(line: 1541, column: 6, scope: !6261)
!6265 = !DILocation(line: 1541, column: 6, scope: !6253)
!6266 = !DILocation(line: 1542, column: 3, scope: !6261)
!6267 = !DILocation(line: 1544, column: 15, scope: !6253)
!6268 = !DILocation(line: 1544, column: 2, scope: !6253)
!6269 = !DILocation(line: 1544, column: 8, scope: !6253)
!6270 = !DILocation(line: 1544, column: 13, scope: !6253)
!6271 = !DILocation(line: 1545, column: 13, scope: !6258)
!6272 = !DILocation(line: 1545, column: 19, scope: !6258)
!6273 = !DILocation(line: 1545, column: 6, scope: !6258)
!6274 = !DILocation(line: 1545, column: 6, scope: !6253)
!6275 = !DILocation(line: 1546, column: 3, scope: !6257)
!6276 = !DILocation(line: 1546, column: 13, scope: !6257)
!6277 = !DILocation(line: 1546, column: 27, scope: !6257)
!6278 = !DILocation(line: 1546, column: 33, scope: !6257)
!6279 = !DILocation(line: 1546, column: 19, scope: !6257)
!6280 = !DILocation(line: 1548, column: 3, scope: !6257)
!6281 = !DILocation(line: 1548, column: 9, scope: !6257)
!6282 = !DILocation(line: 1548, column: 14, scope: !6257)
!6283 = !DILocation(line: 1551, column: 3, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 1551, column: 3)
!6285 = !DILocation(line: 1551, column: 3, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 1551, column: 3)
!6287 = !DILocation(line: 1552, column: 2, scope: !6258)
!6288 = !DILocation(line: 1552, column: 2, scope: !6257)
!6289 = !DILocation(line: 1554, column: 2, scope: !6253)
!6290 = !DILocation(line: 1555, column: 1, scope: !6253)
!6291 = distinct !DISubprogram(name: "kmalloc", scope: !105, file: !105, line: 591, type: !6292, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!116, !269, !666}
!6294 = !{!6295, !6296, !6297}
!6295 = !DILocalVariable(name: "size", arg: 1, scope: !6291, file: !105, line: 591, type: !269)
!6296 = !DILocalVariable(name: "flags", arg: 2, scope: !6291, file: !105, line: 591, type: !666)
!6297 = !DILocalVariable(name: "index", scope: !6298, file: !105, line: 594, type: !7)
!6298 = distinct !DILexicalBlock(scope: !6299, file: !105, line: 593, column: 42)
!6299 = distinct !DILexicalBlock(scope: !6291, file: !105, line: 593, column: 6)
!6300 = !DILocation(line: 591, column: 61, scope: !6291)
!6301 = !DILocation(line: 591, column: 73, scope: !6291)
!6302 = !DILocation(line: 593, column: 27, scope: !6299)
!6303 = !DILocation(line: 593, column: 6, scope: !6299)
!6304 = !DILocation(line: 593, column: 33, scope: !6299)
!6305 = !DILocation(line: 593, column: 36, scope: !6299)
!6306 = !DILocation(line: 593, column: 6, scope: !6291)
!6307 = !DILocation(line: 594, column: 3, scope: !6298)
!6308 = !DILocation(line: 594, column: 16, scope: !6298)
!6309 = !DILocation(line: 596, column: 7, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6298, file: !105, line: 596, column: 7)
!6311 = !DILocation(line: 596, column: 12, scope: !6310)
!6312 = !DILocation(line: 596, column: 7, scope: !6298)
!6313 = !DILocation(line: 597, column: 25, scope: !6310)
!6314 = !DILocation(line: 597, column: 31, scope: !6310)
!6315 = !DILocation(line: 597, column: 11, scope: !6310)
!6316 = !DILocation(line: 597, column: 4, scope: !6310)
!6317 = !DILocation(line: 599, column: 11, scope: !6298)
!6318 = !DILocation(line: 599, column: 9, scope: !6298)
!6319 = !DILocation(line: 601, column: 33, scope: !6298)
!6320 = !DILocation(line: 601, column: 40, scope: !6298)
!6321 = !DILocation(line: 601, column: 20, scope: !6298)
!6322 = !DILocation(line: 601, column: 5, scope: !6298)
!6323 = !DILocation(line: 601, column: 51, scope: !6298)
!6324 = !DILocation(line: 602, column: 5, scope: !6298)
!6325 = !DILocation(line: 602, column: 12, scope: !6298)
!6326 = !DILocation(line: 600, column: 10, scope: !6298)
!6327 = !DILocation(line: 600, column: 3, scope: !6298)
!6328 = !DILocation(line: 603, column: 2, scope: !6299)
!6329 = !DILocation(line: 604, column: 19, scope: !6291)
!6330 = !DILocation(line: 604, column: 25, scope: !6291)
!6331 = !DILocation(line: 604, column: 9, scope: !6291)
!6332 = !DILocation(line: 604, column: 2, scope: !6291)
!6333 = !DILocation(line: 605, column: 1, scope: !6291)
!6334 = distinct !DISubprogram(name: "drbg_blocklen", scope: !88, file: !88, line: 154, type: !5698, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6335 = !{!6336}
!6336 = !DILocalVariable(name: "drbg", arg: 1, scope: !6334, file: !88, line: 154, type: !4436)
!6337 = !DILocation(line: 154, column: 53, scope: !6334)
!6338 = !DILocation(line: 156, column: 6, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6334, file: !88, line: 156, column: 6)
!6340 = !DILocation(line: 156, column: 11, scope: !6339)
!6341 = !DILocation(line: 156, column: 14, scope: !6339)
!6342 = !DILocation(line: 156, column: 20, scope: !6339)
!6343 = !DILocation(line: 156, column: 6, scope: !6334)
!6344 = !DILocation(line: 157, column: 10, scope: !6339)
!6345 = !DILocation(line: 157, column: 16, scope: !6339)
!6346 = !DILocation(line: 157, column: 22, scope: !6339)
!6347 = !DILocation(line: 157, column: 3, scope: !6339)
!6348 = !DILocation(line: 158, column: 2, scope: !6334)
!6349 = !DILocation(line: 159, column: 1, scope: !6334)
!6350 = distinct !DISubprogram(name: "kzalloc", scope: !105, file: !105, line: 719, type: !6292, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6351)
!6351 = !{!6352, !6353}
!6352 = !DILocalVariable(name: "size", arg: 1, scope: !6350, file: !105, line: 719, type: !269)
!6353 = !DILocalVariable(name: "flags", arg: 2, scope: !6350, file: !105, line: 719, type: !666)
!6354 = !DILocation(line: 719, column: 52, scope: !6350)
!6355 = !DILocation(line: 719, column: 64, scope: !6350)
!6356 = !DILocation(line: 721, column: 17, scope: !6350)
!6357 = !DILocation(line: 721, column: 23, scope: !6350)
!6358 = !DILocation(line: 721, column: 29, scope: !6350)
!6359 = !DILocation(line: 721, column: 9, scope: !6350)
!6360 = !DILocation(line: 721, column: 2, scope: !6350)
!6361 = distinct !DISubprogram(name: "drbg_hmac_update", scope: !3, file: !3, line: 655, type: !4511, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6362)
!6362 = !{!6363, !6364, !6365, !6366, !6367, !6368, !6369, !6370, !6371, !6372, !6373}
!6363 = !DILocalVariable(name: "drbg", arg: 1, scope: !6361, file: !3, line: 655, type: !4436)
!6364 = !DILocalVariable(name: "seed", arg: 2, scope: !6361, file: !3, line: 655, type: !126)
!6365 = !DILocalVariable(name: "reseed", arg: 3, scope: !6361, file: !3, line: 656, type: !115)
!6366 = !DILocalVariable(name: "ret", scope: !6361, file: !3, line: 658, type: !115)
!6367 = !DILocalVariable(name: "i", scope: !6361, file: !3, line: 659, type: !115)
!6368 = !DILocalVariable(name: "seed1", scope: !6361, file: !3, line: 660, type: !4232)
!6369 = !DILocalVariable(name: "seed2", scope: !6361, file: !3, line: 660, type: !4232)
!6370 = !DILocalVariable(name: "vdata", scope: !6361, file: !3, line: 660, type: !4232)
!6371 = !DILocalVariable(name: "seedlist", scope: !6361, file: !3, line: 661, type: !122)
!6372 = !DILocalVariable(name: "vdatalist", scope: !6361, file: !3, line: 662, type: !122)
!6373 = !DILocalVariable(name: "prefix", scope: !6374, file: !3, line: 683, type: !184)
!6374 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 681, column: 26)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 681, column: 2)
!6376 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 681, column: 2)
!6377 = !DILocation(line: 655, column: 48, scope: !6361)
!6378 = !DILocation(line: 655, column: 72, scope: !6361)
!6379 = !DILocation(line: 656, column: 12, scope: !6361)
!6380 = !DILocation(line: 658, column: 2, scope: !6361)
!6381 = !DILocation(line: 658, column: 6, scope: !6361)
!6382 = !DILocation(line: 659, column: 2, scope: !6361)
!6383 = !DILocation(line: 659, column: 6, scope: !6361)
!6384 = !DILocation(line: 660, column: 2, scope: !6361)
!6385 = !DILocation(line: 660, column: 21, scope: !6361)
!6386 = !DILocation(line: 660, column: 28, scope: !6361)
!6387 = !DILocation(line: 660, column: 35, scope: !6361)
!6388 = !DILocation(line: 661, column: 2, scope: !6361)
!6389 = !DILocation(line: 662, column: 2, scope: !6361)
!6390 = !DILocation(line: 664, column: 7, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 664, column: 6)
!6392 = !DILocation(line: 664, column: 6, scope: !6361)
!6393 = !DILocation(line: 666, column: 10, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 664, column: 15)
!6395 = !DILocation(line: 666, column: 16, scope: !6394)
!6396 = !DILocation(line: 666, column: 36, scope: !6394)
!6397 = !DILocation(line: 666, column: 22, scope: !6394)
!6398 = !DILocation(line: 666, column: 3, scope: !6394)
!6399 = !DILocation(line: 667, column: 25, scope: !6394)
!6400 = !DILocation(line: 667, column: 31, scope: !6394)
!6401 = !DILocation(line: 667, column: 37, scope: !6394)
!6402 = !DILocation(line: 667, column: 3, scope: !6394)
!6403 = !DILocation(line: 668, column: 2, scope: !6394)
!6404 = !DILocation(line: 670, column: 27, scope: !6361)
!6405 = !DILocation(line: 670, column: 33, scope: !6361)
!6406 = !DILocation(line: 670, column: 50, scope: !6361)
!6407 = !DILocation(line: 670, column: 36, scope: !6361)
!6408 = !DILocation(line: 670, column: 2, scope: !6361)
!6409 = !DILocation(line: 671, column: 23, scope: !6361)
!6410 = !DILocation(line: 671, column: 2, scope: !6361)
!6411 = !DILocation(line: 673, column: 2, scope: !6361)
!6412 = !DILocation(line: 674, column: 23, scope: !6361)
!6413 = !DILocation(line: 674, column: 2, scope: !6361)
!6414 = !DILocation(line: 676, column: 6, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 676, column: 6)
!6416 = !DILocation(line: 676, column: 6, scope: !6361)
!6417 = !DILocation(line: 677, column: 20, scope: !6415)
!6418 = !DILocation(line: 677, column: 3, scope: !6415)
!6419 = !DILocation(line: 679, column: 27, scope: !6361)
!6420 = !DILocation(line: 679, column: 33, scope: !6361)
!6421 = !DILocation(line: 679, column: 50, scope: !6361)
!6422 = !DILocation(line: 679, column: 36, scope: !6361)
!6423 = !DILocation(line: 679, column: 2, scope: !6361)
!6424 = !DILocation(line: 680, column: 23, scope: !6361)
!6425 = !DILocation(line: 680, column: 2, scope: !6361)
!6426 = !DILocation(line: 681, column: 9, scope: !6376)
!6427 = !DILocation(line: 681, column: 7, scope: !6376)
!6428 = !DILocation(line: 681, column: 18, scope: !6375)
!6429 = !DILocation(line: 681, column: 16, scope: !6375)
!6430 = !DILocation(line: 681, column: 2, scope: !6376)
!6431 = !DILocation(line: 683, column: 3, scope: !6374)
!6432 = !DILocation(line: 683, column: 17, scope: !6374)
!6433 = !DILocation(line: 684, column: 12, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 684, column: 7)
!6435 = !DILocation(line: 684, column: 9, scope: !6434)
!6436 = !DILocation(line: 684, column: 7, scope: !6374)
!6437 = !DILocation(line: 685, column: 11, scope: !6434)
!6438 = !DILocation(line: 685, column: 4, scope: !6434)
!6439 = !DILocation(line: 687, column: 9, scope: !6374)
!6440 = !DILocation(line: 687, column: 13, scope: !6374)
!6441 = !DILocation(line: 688, column: 25, scope: !6374)
!6442 = !DILocation(line: 688, column: 31, scope: !6374)
!6443 = !DILocation(line: 688, column: 37, scope: !6374)
!6444 = !DILocation(line: 688, column: 9, scope: !6374)
!6445 = !DILocation(line: 688, column: 7, scope: !6374)
!6446 = !DILocation(line: 689, column: 7, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 689, column: 7)
!6448 = !DILocation(line: 689, column: 7, scope: !6374)
!6449 = !DILocation(line: 690, column: 11, scope: !6447)
!6450 = !DILocation(line: 690, column: 4, scope: !6447)
!6451 = !DILocation(line: 691, column: 25, scope: !6374)
!6452 = !DILocation(line: 691, column: 31, scope: !6374)
!6453 = !DILocation(line: 691, column: 37, scope: !6374)
!6454 = !DILocation(line: 691, column: 3, scope: !6374)
!6455 = !DILocation(line: 694, column: 25, scope: !6374)
!6456 = !DILocation(line: 694, column: 31, scope: !6374)
!6457 = !DILocation(line: 694, column: 37, scope: !6374)
!6458 = !DILocation(line: 694, column: 9, scope: !6374)
!6459 = !DILocation(line: 694, column: 7, scope: !6374)
!6460 = !DILocation(line: 695, column: 7, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 695, column: 7)
!6462 = !DILocation(line: 695, column: 7, scope: !6374)
!6463 = !DILocation(line: 696, column: 11, scope: !6461)
!6464 = !DILocation(line: 696, column: 4, scope: !6461)
!6465 = !DILocation(line: 699, column: 8, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 699, column: 7)
!6467 = !DILocation(line: 699, column: 7, scope: !6374)
!6468 = !DILocation(line: 700, column: 11, scope: !6466)
!6469 = !DILocation(line: 700, column: 4, scope: !6466)
!6470 = !DILocation(line: 701, column: 2, scope: !6375)
!6471 = !DILocation(line: 701, column: 2, scope: !6374)
!6472 = !DILocation(line: 681, column: 22, scope: !6375)
!6473 = !DILocation(line: 681, column: 2, scope: !6375)
!6474 = distinct !{!6474, !6430, !6475, !4605, !4606}
!6475 = !DILocation(line: 701, column: 2, scope: !6376)
!6476 = !DILocation(line: 703, column: 2, scope: !6361)
!6477 = !DILocation(line: 704, column: 1, scope: !6361)
!6478 = distinct !DISubprogram(name: "drbg_hmac_generate", scope: !3, file: !3, line: 707, type: !4515, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6479)
!6479 = !{!6480, !6481, !6482, !6483, !6484, !6485, !6486, !6487, !6488}
!6480 = !DILocalVariable(name: "drbg", arg: 1, scope: !6478, file: !3, line: 707, type: !4436)
!6481 = !DILocalVariable(name: "buf", arg: 2, scope: !6478, file: !3, line: 708, type: !4230)
!6482 = !DILocalVariable(name: "buflen", arg: 3, scope: !6478, file: !3, line: 709, type: !7)
!6483 = !DILocalVariable(name: "addtl", arg: 4, scope: !6478, file: !3, line: 710, type: !126)
!6484 = !DILocalVariable(name: "len", scope: !6478, file: !3, line: 712, type: !115)
!6485 = !DILocalVariable(name: "ret", scope: !6478, file: !3, line: 713, type: !115)
!6486 = !DILocalVariable(name: "data", scope: !6478, file: !3, line: 714, type: !4232)
!6487 = !DILocalVariable(name: "datalist", scope: !6478, file: !3, line: 715, type: !122)
!6488 = !DILocalVariable(name: "outlen", scope: !6489, file: !3, line: 727, type: !7)
!6489 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 726, column: 23)
!6490 = !DILocation(line: 707, column: 50, scope: !6478)
!6491 = !DILocation(line: 708, column: 25, scope: !6478)
!6492 = !DILocation(line: 709, column: 23, scope: !6478)
!6493 = !DILocation(line: 710, column: 28, scope: !6478)
!6494 = !DILocation(line: 712, column: 2, scope: !6478)
!6495 = !DILocation(line: 712, column: 6, scope: !6478)
!6496 = !DILocation(line: 713, column: 2, scope: !6478)
!6497 = !DILocation(line: 713, column: 6, scope: !6478)
!6498 = !DILocation(line: 714, column: 2, scope: !6478)
!6499 = !DILocation(line: 714, column: 21, scope: !6478)
!6500 = !DILocation(line: 715, column: 2, scope: !6478)
!6501 = !DILocation(line: 718, column: 6, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 718, column: 6)
!6503 = !DILocation(line: 718, column: 12, scope: !6502)
!6504 = !DILocation(line: 718, column: 27, scope: !6502)
!6505 = !DILocation(line: 718, column: 16, scope: !6502)
!6506 = !DILocation(line: 718, column: 6, scope: !6478)
!6507 = !DILocation(line: 719, column: 26, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 718, column: 35)
!6509 = !DILocation(line: 719, column: 32, scope: !6508)
!6510 = !DILocation(line: 719, column: 9, scope: !6508)
!6511 = !DILocation(line: 719, column: 7, scope: !6508)
!6512 = !DILocation(line: 720, column: 7, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 720, column: 7)
!6514 = !DILocation(line: 720, column: 7, scope: !6508)
!6515 = !DILocation(line: 721, column: 11, scope: !6513)
!6516 = !DILocation(line: 721, column: 4, scope: !6513)
!6517 = !DILocation(line: 722, column: 2, scope: !6508)
!6518 = !DILocation(line: 724, column: 26, scope: !6478)
!6519 = !DILocation(line: 724, column: 32, scope: !6478)
!6520 = !DILocation(line: 724, column: 49, scope: !6478)
!6521 = !DILocation(line: 724, column: 35, scope: !6478)
!6522 = !DILocation(line: 724, column: 2, scope: !6478)
!6523 = !DILocation(line: 725, column: 22, scope: !6478)
!6524 = !DILocation(line: 725, column: 2, scope: !6478)
!6525 = !DILocation(line: 726, column: 2, scope: !6478)
!6526 = !DILocation(line: 726, column: 9, scope: !6478)
!6527 = !DILocation(line: 726, column: 15, scope: !6478)
!6528 = !DILocation(line: 726, column: 13, scope: !6478)
!6529 = !DILocation(line: 727, column: 3, scope: !6489)
!6530 = !DILocation(line: 727, column: 16, scope: !6489)
!6531 = !DILocation(line: 729, column: 25, scope: !6489)
!6532 = !DILocation(line: 729, column: 31, scope: !6489)
!6533 = !DILocation(line: 729, column: 37, scope: !6489)
!6534 = !DILocation(line: 729, column: 9, scope: !6489)
!6535 = !DILocation(line: 729, column: 7, scope: !6489)
!6536 = !DILocation(line: 730, column: 7, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 730, column: 7)
!6538 = !DILocation(line: 730, column: 7, scope: !6489)
!6539 = !DILocation(line: 731, column: 11, scope: !6537)
!6540 = !DILocation(line: 731, column: 4, scope: !6537)
!6541 = !DILocation(line: 732, column: 27, scope: !6489)
!6542 = !DILocation(line: 732, column: 13, scope: !6489)
!6543 = !DILocation(line: 732, column: 36, scope: !6489)
!6544 = !DILocation(line: 732, column: 45, scope: !6489)
!6545 = !DILocation(line: 732, column: 43, scope: !6489)
!6546 = !DILocation(line: 732, column: 33, scope: !6489)
!6547 = !DILocation(line: 732, column: 12, scope: !6489)
!6548 = !DILocation(line: 733, column: 20, scope: !6489)
!6549 = !DILocation(line: 733, column: 6, scope: !6489)
!6550 = !DILocation(line: 733, column: 29, scope: !6489)
!6551 = !DILocation(line: 733, column: 38, scope: !6489)
!6552 = !DILocation(line: 733, column: 36, scope: !6489)
!6553 = !DILocation(line: 732, column: 10, scope: !6489)
!6554 = !DILocation(line: 736, column: 10, scope: !6489)
!6555 = !DILocation(line: 736, column: 16, scope: !6489)
!6556 = !DILocation(line: 736, column: 14, scope: !6489)
!6557 = !DILocation(line: 736, column: 21, scope: !6489)
!6558 = !DILocation(line: 736, column: 27, scope: !6489)
!6559 = !DILocation(line: 736, column: 30, scope: !6489)
!6560 = !DILocation(line: 736, column: 3, scope: !6489)
!6561 = !DILocation(line: 737, column: 10, scope: !6489)
!6562 = !DILocation(line: 737, column: 7, scope: !6489)
!6563 = !DILocation(line: 738, column: 2, scope: !6478)
!6564 = distinct !{!6564, !6525, !6563, !4605, !4606}
!6565 = !DILocation(line: 741, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 741, column: 6)
!6567 = !DILocation(line: 741, column: 12, scope: !6566)
!6568 = !DILocation(line: 741, column: 27, scope: !6566)
!6569 = !DILocation(line: 741, column: 16, scope: !6566)
!6570 = !DILocation(line: 741, column: 6, scope: !6478)
!6571 = !DILocation(line: 742, column: 26, scope: !6566)
!6572 = !DILocation(line: 742, column: 32, scope: !6566)
!6573 = !DILocation(line: 742, column: 9, scope: !6566)
!6574 = !DILocation(line: 742, column: 7, scope: !6566)
!6575 = !DILocation(line: 742, column: 3, scope: !6566)
!6576 = !DILocation(line: 744, column: 26, scope: !6566)
!6577 = !DILocation(line: 744, column: 9, scope: !6566)
!6578 = !DILocation(line: 744, column: 7, scope: !6566)
!6579 = !DILocation(line: 745, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 745, column: 6)
!6581 = !DILocation(line: 745, column: 6, scope: !6478)
!6582 = !DILocation(line: 746, column: 10, scope: !6580)
!6583 = !DILocation(line: 746, column: 3, scope: !6580)
!6584 = !DILocation(line: 748, column: 9, scope: !6478)
!6585 = !DILocation(line: 748, column: 2, scope: !6478)
!6586 = !DILocation(line: 749, column: 1, scope: !6478)
!6587 = distinct !DISubprogram(name: "drbg_init_hash_kernel", scope: !3, file: !3, line: 1679, type: !4519, scopeLine: 1680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6588)
!6588 = !{!6589, !6590, !6596}
!6589 = !DILocalVariable(name: "drbg", arg: 1, scope: !6587, file: !3, line: 1679, type: !4436)
!6590 = !DILocalVariable(name: "sdesc", scope: !6587, file: !3, line: 1681, type: !6591)
!6591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6592, size: 64)
!6592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdesc", file: !3, line: 1674, size: 64, elements: !6593)
!6593 = !{!6594, !6595}
!6594 = !DIDerivedType(tag: DW_TAG_member, name: "shash", scope: !6592, file: !3, line: 1675, baseType: !4246, size: 64)
!6595 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !6592, file: !3, line: 1676, baseType: !2680, offset: 64)
!6596 = !DILocalVariable(name: "tfm", scope: !6587, file: !3, line: 1682, type: !4249)
!6597 = !DILocation(line: 1679, column: 53, scope: !6587)
!6598 = !DILocation(line: 1681, column: 2, scope: !6587)
!6599 = !DILocation(line: 1681, column: 16, scope: !6587)
!6600 = !DILocation(line: 1682, column: 2, scope: !6587)
!6601 = !DILocation(line: 1682, column: 23, scope: !6587)
!6602 = !DILocation(line: 1684, column: 27, scope: !6587)
!6603 = !DILocation(line: 1684, column: 33, scope: !6587)
!6604 = !DILocation(line: 1684, column: 39, scope: !6587)
!6605 = !DILocation(line: 1684, column: 8, scope: !6587)
!6606 = !DILocation(line: 1684, column: 6, scope: !6587)
!6607 = !DILocation(line: 1685, column: 13, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 1685, column: 6)
!6609 = !DILocation(line: 1685, column: 6, scope: !6608)
!6610 = !DILocation(line: 1685, column: 6, scope: !6587)
!6611 = !DILocation(line: 1686, column: 3, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 1686, column: 3)
!6613 = distinct !DILexicalBlock(scope: !6608, file: !3, line: 1685, column: 19)
!6614 = !DILocation(line: 1686, column: 3, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 1686, column: 3)
!6616 = !DILocation(line: 1688, column: 18, scope: !6613)
!6617 = !DILocation(line: 1688, column: 10, scope: !6613)
!6618 = !DILocation(line: 1688, column: 3, scope: !6613)
!6619 = !DILocation(line: 1690, column: 2, scope: !6587)
!6620 = !DILocation(line: 1690, column: 2, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 1690, column: 2)
!6622 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 1690, column: 2)
!6623 = !DILocation(line: 1690, column: 2, scope: !6622)
!6624 = !DILocation(line: 1690, column: 2, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 1690, column: 2)
!6626 = !DILocation(line: 1690, column: 2, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6625, file: !3, line: 1690, column: 2)
!6628 = !DILocation(line: 1690, column: 2, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6625, file: !3, line: 1690, column: 2)
!6630 = !{i64 2154515323, i64 2154515352, i64 2154515398, i64 2154515456, i64 2154515510, i64 2154515564, i64 2154515619, i64 2154515650}
!6631 = !DILocation(line: 1691, column: 68, scope: !6587)
!6632 = !DILocation(line: 1691, column: 46, scope: !6587)
!6633 = !DILocation(line: 1691, column: 44, scope: !6587)
!6634 = !DILocation(line: 1691, column: 10, scope: !6587)
!6635 = !DILocation(line: 1691, column: 8, scope: !6587)
!6636 = !DILocation(line: 1693, column: 7, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 1693, column: 6)
!6638 = !DILocation(line: 1693, column: 6, scope: !6587)
!6639 = !DILocation(line: 1694, column: 21, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6637, file: !3, line: 1693, column: 14)
!6641 = !DILocation(line: 1694, column: 3, scope: !6640)
!6642 = !DILocation(line: 1695, column: 3, scope: !6640)
!6643 = !DILocation(line: 1698, column: 21, scope: !6587)
!6644 = !DILocation(line: 1698, column: 2, scope: !6587)
!6645 = !DILocation(line: 1698, column: 9, scope: !6587)
!6646 = !DILocation(line: 1698, column: 15, scope: !6587)
!6647 = !DILocation(line: 1698, column: 19, scope: !6587)
!6648 = !DILocation(line: 1699, column: 20, scope: !6587)
!6649 = !DILocation(line: 1699, column: 2, scope: !6587)
!6650 = !DILocation(line: 1699, column: 8, scope: !6587)
!6651 = !DILocation(line: 1699, column: 18, scope: !6587)
!6652 = !DILocation(line: 1701, column: 32, scope: !6587)
!6653 = !DILocation(line: 1701, column: 9, scope: !6587)
!6654 = !DILocation(line: 1701, column: 2, scope: !6587)
!6655 = !DILocation(line: 1702, column: 1, scope: !6587)
!6656 = distinct !DISubprogram(name: "drbg_fini_hash_kernel", scope: !3, file: !3, line: 1704, type: !4519, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6657)
!6657 = !{!6658, !6659}
!6658 = !DILocalVariable(name: "drbg", arg: 1, scope: !6656, file: !3, line: 1704, type: !4436)
!6659 = !DILocalVariable(name: "sdesc", scope: !6656, file: !3, line: 1706, type: !6591)
!6660 = !DILocation(line: 1704, column: 53, scope: !6656)
!6661 = !DILocation(line: 1706, column: 2, scope: !6656)
!6662 = !DILocation(line: 1706, column: 16, scope: !6656)
!6663 = !DILocation(line: 1706, column: 24, scope: !6656)
!6664 = !DILocation(line: 1706, column: 30, scope: !6656)
!6665 = !DILocation(line: 1707, column: 6, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 1707, column: 6)
!6667 = !DILocation(line: 1707, column: 6, scope: !6656)
!6668 = !DILocation(line: 1708, column: 21, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6666, file: !3, line: 1707, column: 13)
!6670 = !DILocation(line: 1708, column: 28, scope: !6669)
!6671 = !DILocation(line: 1708, column: 34, scope: !6669)
!6672 = !DILocation(line: 1708, column: 3, scope: !6669)
!6673 = !DILocation(line: 1709, column: 19, scope: !6669)
!6674 = !DILocation(line: 1709, column: 3, scope: !6669)
!6675 = !DILocation(line: 1710, column: 2, scope: !6669)
!6676 = !DILocation(line: 1711, column: 2, scope: !6656)
!6677 = !DILocation(line: 1711, column: 8, scope: !6656)
!6678 = !DILocation(line: 1711, column: 18, scope: !6656)
!6679 = !DILocation(line: 1713, column: 1, scope: !6656)
!6680 = !DILocation(line: 1712, column: 2, scope: !6656)
!6681 = distinct !DISubprogram(name: "drbg_kcapi_hmacsetkey", scope: !3, file: !3, line: 1715, type: !6682, scopeLine: 1717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6684)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{null, !4436, !379}
!6684 = !{!6685, !6686, !6687}
!6685 = !DILocalVariable(name: "drbg", arg: 1, scope: !6681, file: !3, line: 1715, type: !4436)
!6686 = !DILocalVariable(name: "key", arg: 2, scope: !6681, file: !3, line: 1716, type: !379)
!6687 = !DILocalVariable(name: "sdesc", scope: !6681, file: !3, line: 1718, type: !6591)
!6688 = !DILocation(line: 1715, column: 54, scope: !6681)
!6689 = !DILocation(line: 1716, column: 28, scope: !6681)
!6690 = !DILocation(line: 1718, column: 2, scope: !6681)
!6691 = !DILocation(line: 1718, column: 16, scope: !6681)
!6692 = !DILocation(line: 1718, column: 24, scope: !6681)
!6693 = !DILocation(line: 1718, column: 30, scope: !6681)
!6694 = !DILocation(line: 1720, column: 22, scope: !6681)
!6695 = !DILocation(line: 1720, column: 29, scope: !6681)
!6696 = !DILocation(line: 1720, column: 35, scope: !6681)
!6697 = !DILocation(line: 1720, column: 40, scope: !6681)
!6698 = !DILocation(line: 1720, column: 59, scope: !6681)
!6699 = !DILocation(line: 1720, column: 45, scope: !6681)
!6700 = !DILocation(line: 1720, column: 2, scope: !6681)
!6701 = !DILocation(line: 1721, column: 1, scope: !6681)
!6702 = distinct !DISubprogram(name: "list_splice_tail", scope: !5105, file: !5105, line: 554, type: !5603, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6703)
!6703 = !{!6704, !6705}
!6704 = !DILocalVariable(name: "list", arg: 1, scope: !6702, file: !5105, line: 554, type: !126)
!6705 = !DILocalVariable(name: "head", arg: 2, scope: !6702, file: !5105, line: 555, type: !126)
!6706 = !DILocation(line: 554, column: 55, scope: !6702)
!6707 = !DILocation(line: 555, column: 23, scope: !6702)
!6708 = !DILocation(line: 557, column: 18, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6702, file: !5105, line: 557, column: 6)
!6710 = !DILocation(line: 557, column: 7, scope: !6709)
!6711 = !DILocation(line: 557, column: 6, scope: !6702)
!6712 = !DILocation(line: 558, column: 17, scope: !6709)
!6713 = !DILocation(line: 558, column: 23, scope: !6709)
!6714 = !DILocation(line: 558, column: 29, scope: !6709)
!6715 = !DILocation(line: 558, column: 35, scope: !6709)
!6716 = !DILocation(line: 558, column: 3, scope: !6709)
!6717 = !DILocation(line: 559, column: 1, scope: !6702)
!6718 = distinct !DISubprogram(name: "drbg_kcapi_hash", scope: !3, file: !3, line: 1723, type: !6719, scopeLine: 1725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6721)
!6719 = !DISubroutineType(types: !6720)
!6720 = !{!115, !4436, !4230, !5634}
!6721 = !{!6722, !6723, !6724, !6725, !6726, !6727, !6730}
!6722 = !DILocalVariable(name: "drbg", arg: 1, scope: !6718, file: !3, line: 1723, type: !4436)
!6723 = !DILocalVariable(name: "outval", arg: 2, scope: !6718, file: !3, line: 1723, type: !4230)
!6724 = !DILocalVariable(name: "in", arg: 3, scope: !6718, file: !3, line: 1724, type: !5634)
!6725 = !DILocalVariable(name: "sdesc", scope: !6718, file: !3, line: 1726, type: !6591)
!6726 = !DILocalVariable(name: "input", scope: !6718, file: !3, line: 1727, type: !4231)
!6727 = !DILocalVariable(name: "__mptr", scope: !6728, file: !3, line: 1730, type: !116)
!6728 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 1730, column: 2)
!6729 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 1730, column: 2)
!6730 = !DILocalVariable(name: "__mptr", scope: !6731, file: !3, line: 1730, type: !116)
!6731 = distinct !DILexicalBlock(scope: !6732, file: !3, line: 1730, column: 2)
!6732 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 1730, column: 2)
!6733 = !DILocation(line: 1723, column: 47, scope: !6718)
!6734 = !DILocation(line: 1723, column: 68, scope: !6718)
!6735 = !DILocation(line: 1724, column: 31, scope: !6718)
!6736 = !DILocation(line: 1726, column: 2, scope: !6718)
!6737 = !DILocation(line: 1726, column: 16, scope: !6718)
!6738 = !DILocation(line: 1726, column: 24, scope: !6718)
!6739 = !DILocation(line: 1726, column: 30, scope: !6718)
!6740 = !DILocation(line: 1727, column: 2, scope: !6718)
!6741 = !DILocation(line: 1727, column: 22, scope: !6718)
!6742 = !DILocation(line: 1729, column: 21, scope: !6718)
!6743 = !DILocation(line: 1729, column: 28, scope: !6718)
!6744 = !DILocation(line: 1729, column: 2, scope: !6718)
!6745 = !DILocation(line: 1730, column: 2, scope: !6728)
!6746 = !DILocation(line: 1730, column: 2, scope: !6729)
!6747 = !DILocation(line: 1730, column: 2, scope: !6732)
!6748 = !DILocation(line: 1731, column: 24, scope: !6732)
!6749 = !DILocation(line: 1731, column: 31, scope: !6732)
!6750 = !DILocation(line: 1731, column: 38, scope: !6732)
!6751 = !DILocation(line: 1731, column: 45, scope: !6732)
!6752 = !DILocation(line: 1731, column: 50, scope: !6732)
!6753 = !DILocation(line: 1731, column: 57, scope: !6732)
!6754 = !DILocation(line: 1731, column: 3, scope: !6732)
!6755 = !DILocation(line: 1730, column: 2, scope: !6731)
!6756 = distinct !{!6756, !6746, !6757, !4605, !4606}
!6757 = !DILocation(line: 1731, column: 60, scope: !6729)
!6758 = !DILocation(line: 1732, column: 29, scope: !6718)
!6759 = !DILocation(line: 1732, column: 36, scope: !6718)
!6760 = !DILocation(line: 1732, column: 43, scope: !6718)
!6761 = !DILocation(line: 1732, column: 9, scope: !6718)
!6762 = !DILocation(line: 1733, column: 1, scope: !6718)
!6763 = !DILocation(line: 1732, column: 2, scope: !6718)
!6764 = !DISubprogram(name: "crypto_shash_setkey", scope: !4239, file: !4239, line: 903, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6765 = distinct !DISubprogram(name: "__list_splice", scope: !5105, file: !5105, line: 523, type: !6766, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6768)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{null, !5634, !126, !126}
!6768 = !{!6769, !6770, !6771, !6772, !6773}
!6769 = !DILocalVariable(name: "list", arg: 1, scope: !6765, file: !5105, line: 523, type: !5634)
!6770 = !DILocalVariable(name: "prev", arg: 2, scope: !6765, file: !5105, line: 524, type: !126)
!6771 = !DILocalVariable(name: "next", arg: 3, scope: !6765, file: !5105, line: 525, type: !126)
!6772 = !DILocalVariable(name: "first", scope: !6765, file: !5105, line: 527, type: !126)
!6773 = !DILocalVariable(name: "last", scope: !6765, file: !5105, line: 528, type: !126)
!6774 = !DILocation(line: 523, column: 58, scope: !6765)
!6775 = !DILocation(line: 524, column: 24, scope: !6765)
!6776 = !DILocation(line: 525, column: 24, scope: !6765)
!6777 = !DILocation(line: 527, column: 2, scope: !6765)
!6778 = !DILocation(line: 527, column: 20, scope: !6765)
!6779 = !DILocation(line: 527, column: 28, scope: !6765)
!6780 = !DILocation(line: 527, column: 34, scope: !6765)
!6781 = !DILocation(line: 528, column: 2, scope: !6765)
!6782 = !DILocation(line: 528, column: 20, scope: !6765)
!6783 = !DILocation(line: 528, column: 27, scope: !6765)
!6784 = !DILocation(line: 528, column: 33, scope: !6765)
!6785 = !DILocation(line: 530, column: 16, scope: !6765)
!6786 = !DILocation(line: 530, column: 2, scope: !6765)
!6787 = !DILocation(line: 530, column: 9, scope: !6765)
!6788 = !DILocation(line: 530, column: 14, scope: !6765)
!6789 = !DILocation(line: 531, column: 15, scope: !6765)
!6790 = !DILocation(line: 531, column: 2, scope: !6765)
!6791 = !DILocation(line: 531, column: 8, scope: !6765)
!6792 = !DILocation(line: 531, column: 13, scope: !6765)
!6793 = !DILocation(line: 533, column: 15, scope: !6765)
!6794 = !DILocation(line: 533, column: 2, scope: !6765)
!6795 = !DILocation(line: 533, column: 8, scope: !6765)
!6796 = !DILocation(line: 533, column: 13, scope: !6765)
!6797 = !DILocation(line: 534, column: 15, scope: !6765)
!6798 = !DILocation(line: 534, column: 2, scope: !6765)
!6799 = !DILocation(line: 534, column: 8, scope: !6765)
!6800 = !DILocation(line: 534, column: 13, scope: !6765)
!6801 = !DILocation(line: 535, column: 1, scope: !6765)
!6802 = distinct !DISubprogram(name: "crypto_shash_init", scope: !4239, file: !4239, line: 994, type: !4243, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6803)
!6803 = !{!6804, !6805}
!6804 = !DILocalVariable(name: "desc", arg: 1, scope: !6802, file: !4239, line: 994, type: !4245)
!6805 = !DILocalVariable(name: "tfm", scope: !6802, file: !4239, line: 996, type: !4249)
!6806 = !DILocation(line: 994, column: 56, scope: !6802)
!6807 = !DILocation(line: 996, column: 2, scope: !6802)
!6808 = !DILocation(line: 996, column: 23, scope: !6802)
!6809 = !DILocation(line: 996, column: 29, scope: !6802)
!6810 = !DILocation(line: 996, column: 35, scope: !6802)
!6811 = !DILocation(line: 998, column: 29, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6802, file: !4239, line: 998, column: 6)
!6813 = !DILocation(line: 998, column: 6, scope: !6812)
!6814 = !DILocation(line: 998, column: 34, scope: !6812)
!6815 = !DILocation(line: 998, column: 6, scope: !6802)
!6816 = !DILocation(line: 999, column: 3, scope: !6812)
!6817 = !DILocation(line: 1001, column: 26, scope: !6802)
!6818 = !DILocation(line: 1001, column: 9, scope: !6802)
!6819 = !DILocation(line: 1001, column: 32, scope: !6802)
!6820 = !DILocation(line: 1001, column: 37, scope: !6802)
!6821 = !DILocation(line: 1001, column: 2, scope: !6802)
!6822 = !DILocation(line: 1002, column: 1, scope: !6802)
!6823 = !DISubprogram(name: "crypto_shash_update", scope: !4239, file: !4239, line: 1016, type: !4257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6824 = !DISubprogram(name: "crypto_shash_final", scope: !4239, file: !4239, line: 1033, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6825 = distinct !DISubprogram(name: "crypto_shash_get_flags", scope: !4239, file: !4239, line: 850, type: !6826, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6828)
!6826 = !DISubroutineType(types: !6827)
!6827 = !{!371, !4249}
!6828 = !{!6829}
!6829 = !DILocalVariable(name: "tfm", arg: 1, scope: !6825, file: !4239, line: 850, type: !4249)
!6830 = !DILocation(line: 850, column: 63, scope: !6825)
!6831 = !DILocation(line: 852, column: 47, scope: !6825)
!6832 = !DILocation(line: 852, column: 30, scope: !6825)
!6833 = !DILocation(line: 852, column: 9, scope: !6825)
!6834 = !DILocation(line: 852, column: 2, scope: !6825)
!6835 = distinct !DISubprogram(name: "crypto_shash_alg", scope: !4239, file: !4239, line: 826, type: !6836, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6838)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{!4237, !4249}
!6838 = !{!6839}
!6839 = !DILocalVariable(name: "tfm", arg: 1, scope: !6835, file: !4239, line: 826, type: !4249)
!6840 = !DILocation(line: 826, column: 71, scope: !6835)
!6841 = !DILocation(line: 828, column: 45, scope: !6835)
!6842 = !DILocation(line: 828, column: 28, scope: !6835)
!6843 = !DILocation(line: 828, column: 51, scope: !6835)
!6844 = !DILocation(line: 828, column: 9, scope: !6835)
!6845 = !DILocation(line: 828, column: 2, scope: !6835)
!6846 = distinct !DISubprogram(name: "crypto_tfm_get_flags", scope: !4080, file: !4080, line: 475, type: !6847, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6849)
!6847 = !DISubroutineType(types: !6848)
!6848 = !{!371, !4089}
!6849 = !{!6850}
!6850 = !DILocalVariable(name: "tfm", arg: 1, scope: !6846, file: !4080, line: 475, type: !4089)
!6851 = !DILocation(line: 475, column: 59, scope: !6846)
!6852 = !DILocation(line: 477, column: 9, scope: !6846)
!6853 = !DILocation(line: 477, column: 14, scope: !6846)
!6854 = !DILocation(line: 477, column: 2, scope: !6846)
!6855 = distinct !DISubprogram(name: "crypto_shash_tfm", scope: !4239, file: !4239, line: 775, type: !6856, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6858)
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!4089, !4249}
!6858 = !{!6859}
!6859 = !DILocalVariable(name: "tfm", arg: 1, scope: !6855, file: !4239, line: 775, type: !4249)
!6860 = !DILocation(line: 775, column: 72, scope: !6855)
!6861 = !DILocation(line: 777, column: 10, scope: !6855)
!6862 = !DILocation(line: 777, column: 15, scope: !6855)
!6863 = !DILocation(line: 777, column: 2, scope: !6855)
!6864 = distinct !DISubprogram(name: "__crypto_shash_alg", scope: !4239, file: !4239, line: 821, type: !6865, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6865 = !DISubroutineType(types: !6866)
!6866 = !{!4237, !4091}
!6867 = !{!6868, !6869}
!6868 = !DILocalVariable(name: "alg", arg: 1, scope: !6864, file: !4239, line: 821, type: !4091)
!6869 = !DILocalVariable(name: "__mptr", scope: !6870, file: !4239, line: 823, type: !116)
!6870 = distinct !DILexicalBlock(scope: !6864, file: !4239, line: 823, column: 9)
!6871 = !DILocation(line: 821, column: 71, scope: !6864)
!6872 = !DILocation(line: 823, column: 9, scope: !6870)
!6873 = !DILocation(line: 823, column: 9, scope: !6864)
!6874 = !DILocation(line: 823, column: 2, scope: !6864)
!6875 = !DISubprogram(name: "crypto_alloc_shash", scope: !4239, file: !4239, line: 768, type: !6876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6876 = !DISubroutineType(types: !6877)
!6877 = !{!4249, !141, !371, !371}
!6878 = distinct !DISubprogram(name: "IS_ERR", scope: !4914, file: !4914, line: 59, type: !4915, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6879)
!6879 = !{!6880}
!6880 = !DILocalVariable(name: "ptr", arg: 1, scope: !6878, file: !4914, line: 59, type: !2089)
!6881 = !DILocation(line: 59, column: 60, scope: !6878)
!6882 = !DILocation(line: 61, column: 9, scope: !6878)
!6883 = !DILocation(line: 61, column: 2, scope: !6878)
!6884 = !DISubprogram(name: "_printk", scope: !6885, file: !6885, line: 153, type: !6886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6885 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!115, !141, null}
!6888 = distinct !DISubprogram(name: "PTR_ERR", scope: !4914, file: !4914, line: 49, type: !6889, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6891)
!6889 = !DISubroutineType(types: !6890)
!6890 = !{!258, !2089}
!6891 = !{!6892}
!6892 = !DILocalVariable(name: "ptr", arg: 1, scope: !6888, file: !4914, line: 49, type: !2089)
!6893 = !DILocation(line: 49, column: 61, scope: !6888)
!6894 = !DILocation(line: 51, column: 16, scope: !6888)
!6895 = !DILocation(line: 51, column: 9, scope: !6888)
!6896 = !DILocation(line: 51, column: 2, scope: !6888)
!6897 = distinct !DISubprogram(name: "crypto_shash_digestsize", scope: !4239, file: !4239, line: 840, type: !6898, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6898 = !DISubroutineType(types: !6899)
!6899 = !{!7, !4249}
!6900 = !{!6901}
!6901 = !DILocalVariable(name: "tfm", arg: 1, scope: !6897, file: !4239, line: 840, type: !4249)
!6902 = !DILocation(line: 840, column: 73, scope: !6897)
!6903 = !DILocation(line: 842, column: 26, scope: !6897)
!6904 = !DILocation(line: 842, column: 9, scope: !6897)
!6905 = !DILocation(line: 842, column: 32, scope: !6897)
!6906 = !DILocation(line: 842, column: 2, scope: !6897)
!6907 = distinct !DISubprogram(name: "crypto_shash_descsize", scope: !4239, file: !4239, line: 880, type: !6898, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6908)
!6908 = !{!6909}
!6909 = !DILocalVariable(name: "tfm", arg: 1, scope: !6907, file: !4239, line: 880, type: !4249)
!6910 = !DILocation(line: 880, column: 71, scope: !6907)
!6911 = !DILocation(line: 882, column: 9, scope: !6907)
!6912 = !DILocation(line: 882, column: 14, scope: !6907)
!6913 = !DILocation(line: 882, column: 2, scope: !6907)
!6914 = distinct !DISubprogram(name: "crypto_free_shash", scope: !4239, file: !4239, line: 786, type: !4286, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6915)
!6915 = !{!6916}
!6916 = !DILocalVariable(name: "tfm", arg: 1, scope: !6914, file: !4239, line: 786, type: !4249)
!6917 = !DILocation(line: 786, column: 59, scope: !6914)
!6918 = !DILocation(line: 788, column: 21, scope: !6914)
!6919 = !DILocation(line: 788, column: 43, scope: !6914)
!6920 = !DILocation(line: 788, column: 26, scope: !6914)
!6921 = !DILocation(line: 788, column: 2, scope: !6914)
!6922 = !DILocation(line: 789, column: 1, scope: !6914)
!6923 = distinct !DISubprogram(name: "crypto_shash_alignmask", scope: !4239, file: !4239, line: 801, type: !6898, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6924)
!6924 = !{!6925}
!6925 = !DILocalVariable(name: "tfm", arg: 1, scope: !6923, file: !4239, line: 802, type: !4249)
!6926 = !DILocation(line: 802, column: 23, scope: !6923)
!6927 = !DILocation(line: 804, column: 51, scope: !6923)
!6928 = !DILocation(line: 804, column: 34, scope: !6923)
!6929 = !DILocation(line: 804, column: 9, scope: !6923)
!6930 = !DILocation(line: 804, column: 2, scope: !6923)
!6931 = distinct !DISubprogram(name: "crypto_tfm_alg_alignmask", scope: !4080, file: !4080, line: 470, type: !6932, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6934)
!6932 = !DISubroutineType(types: !6933)
!6933 = !{!7, !4089}
!6934 = !{!6935}
!6935 = !DILocalVariable(name: "tfm", arg: 1, scope: !6931, file: !4080, line: 470, type: !4089)
!6936 = !DILocation(line: 470, column: 72, scope: !6931)
!6937 = !DILocation(line: 472, column: 9, scope: !6931)
!6938 = !DILocation(line: 472, column: 14, scope: !6931)
!6939 = !DILocation(line: 472, column: 25, scope: !6931)
!6940 = !DILocation(line: 472, column: 2, scope: !6931)
!6941 = !DISubprogram(name: "kmalloc_large", scope: !105, file: !105, line: 531, type: !6292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6942 = distinct !DISubprogram(name: "__kmalloc_index", scope: !105, file: !105, line: 444, type: !6943, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6945)
!6943 = !DISubroutineType(types: !6944)
!6944 = !{!7, !269, !1421}
!6945 = !{!6946, !6947}
!6946 = !DILocalVariable(name: "size", arg: 1, scope: !6942, file: !105, line: 444, type: !269)
!6947 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6942, file: !105, line: 445, type: !1421)
!6948 = !DILocation(line: 444, column: 60, scope: !6942)
!6949 = !DILocation(line: 445, column: 16, scope: !6942)
!6950 = !DILocation(line: 447, column: 7, scope: !6951)
!6951 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 447, column: 6)
!6952 = !DILocation(line: 447, column: 6, scope: !6942)
!6953 = !DILocation(line: 448, column: 3, scope: !6951)
!6954 = !DILocation(line: 450, column: 6, scope: !6955)
!6955 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 450, column: 6)
!6956 = !DILocation(line: 450, column: 11, scope: !6955)
!6957 = !DILocation(line: 450, column: 6, scope: !6942)
!6958 = !DILocation(line: 451, column: 3, scope: !6955)
!6959 = !DILocation(line: 453, column: 32, scope: !6960)
!6960 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 453, column: 6)
!6961 = !DILocation(line: 453, column: 37, scope: !6960)
!6962 = !DILocation(line: 453, column: 42, scope: !6960)
!6963 = !DILocation(line: 453, column: 45, scope: !6960)
!6964 = !DILocation(line: 453, column: 50, scope: !6960)
!6965 = !DILocation(line: 453, column: 6, scope: !6942)
!6966 = !DILocation(line: 454, column: 3, scope: !6960)
!6967 = !DILocation(line: 455, column: 32, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 455, column: 6)
!6969 = !DILocation(line: 455, column: 37, scope: !6968)
!6970 = !DILocation(line: 455, column: 43, scope: !6968)
!6971 = !DILocation(line: 455, column: 46, scope: !6968)
!6972 = !DILocation(line: 455, column: 51, scope: !6968)
!6973 = !DILocation(line: 455, column: 6, scope: !6942)
!6974 = !DILocation(line: 456, column: 3, scope: !6968)
!6975 = !DILocation(line: 457, column: 6, scope: !6976)
!6976 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 457, column: 6)
!6977 = !DILocation(line: 457, column: 11, scope: !6976)
!6978 = !DILocation(line: 457, column: 6, scope: !6942)
!6979 = !DILocation(line: 457, column: 26, scope: !6976)
!6980 = !DILocation(line: 458, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 458, column: 6)
!6982 = !DILocation(line: 458, column: 11, scope: !6981)
!6983 = !DILocation(line: 458, column: 6, scope: !6942)
!6984 = !DILocation(line: 458, column: 26, scope: !6981)
!6985 = !DILocation(line: 459, column: 6, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 459, column: 6)
!6987 = !DILocation(line: 459, column: 11, scope: !6986)
!6988 = !DILocation(line: 459, column: 6, scope: !6942)
!6989 = !DILocation(line: 459, column: 26, scope: !6986)
!6990 = !DILocation(line: 460, column: 6, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 460, column: 6)
!6992 = !DILocation(line: 460, column: 11, scope: !6991)
!6993 = !DILocation(line: 460, column: 6, scope: !6942)
!6994 = !DILocation(line: 460, column: 26, scope: !6991)
!6995 = !DILocation(line: 461, column: 6, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 461, column: 6)
!6997 = !DILocation(line: 461, column: 11, scope: !6996)
!6998 = !DILocation(line: 461, column: 6, scope: !6942)
!6999 = !DILocation(line: 461, column: 26, scope: !6996)
!7000 = !DILocation(line: 462, column: 6, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 462, column: 6)
!7002 = !DILocation(line: 462, column: 11, scope: !7001)
!7003 = !DILocation(line: 462, column: 6, scope: !6942)
!7004 = !DILocation(line: 462, column: 26, scope: !7001)
!7005 = !DILocation(line: 463, column: 6, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 463, column: 6)
!7007 = !DILocation(line: 463, column: 11, scope: !7006)
!7008 = !DILocation(line: 463, column: 6, scope: !6942)
!7009 = !DILocation(line: 463, column: 26, scope: !7006)
!7010 = !DILocation(line: 464, column: 6, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 464, column: 6)
!7012 = !DILocation(line: 464, column: 11, scope: !7011)
!7013 = !DILocation(line: 464, column: 6, scope: !6942)
!7014 = !DILocation(line: 464, column: 26, scope: !7011)
!7015 = !DILocation(line: 465, column: 6, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 465, column: 6)
!7017 = !DILocation(line: 465, column: 11, scope: !7016)
!7018 = !DILocation(line: 465, column: 6, scope: !6942)
!7019 = !DILocation(line: 465, column: 26, scope: !7016)
!7020 = !DILocation(line: 466, column: 6, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 466, column: 6)
!7022 = !DILocation(line: 466, column: 11, scope: !7021)
!7023 = !DILocation(line: 466, column: 6, scope: !6942)
!7024 = !DILocation(line: 466, column: 26, scope: !7021)
!7025 = !DILocation(line: 467, column: 6, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 467, column: 6)
!7027 = !DILocation(line: 467, column: 11, scope: !7026)
!7028 = !DILocation(line: 467, column: 6, scope: !6942)
!7029 = !DILocation(line: 467, column: 26, scope: !7026)
!7030 = !DILocation(line: 468, column: 6, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 468, column: 6)
!7032 = !DILocation(line: 468, column: 11, scope: !7031)
!7033 = !DILocation(line: 468, column: 6, scope: !6942)
!7034 = !DILocation(line: 468, column: 26, scope: !7031)
!7035 = !DILocation(line: 469, column: 6, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 469, column: 6)
!7037 = !DILocation(line: 469, column: 11, scope: !7036)
!7038 = !DILocation(line: 469, column: 6, scope: !6942)
!7039 = !DILocation(line: 469, column: 26, scope: !7036)
!7040 = !DILocation(line: 470, column: 6, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 470, column: 6)
!7042 = !DILocation(line: 470, column: 11, scope: !7041)
!7043 = !DILocation(line: 470, column: 6, scope: !6942)
!7044 = !DILocation(line: 470, column: 26, scope: !7041)
!7045 = !DILocation(line: 471, column: 6, scope: !7046)
!7046 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 471, column: 6)
!7047 = !DILocation(line: 471, column: 11, scope: !7046)
!7048 = !DILocation(line: 471, column: 6, scope: !6942)
!7049 = !DILocation(line: 471, column: 26, scope: !7046)
!7050 = !DILocation(line: 472, column: 6, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 472, column: 6)
!7052 = !DILocation(line: 472, column: 11, scope: !7051)
!7053 = !DILocation(line: 472, column: 6, scope: !6942)
!7054 = !DILocation(line: 472, column: 26, scope: !7051)
!7055 = !DILocation(line: 473, column: 6, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 473, column: 6)
!7057 = !DILocation(line: 473, column: 11, scope: !7056)
!7058 = !DILocation(line: 473, column: 6, scope: !6942)
!7059 = !DILocation(line: 473, column: 26, scope: !7056)
!7060 = !DILocation(line: 474, column: 6, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 474, column: 6)
!7062 = !DILocation(line: 474, column: 11, scope: !7061)
!7063 = !DILocation(line: 474, column: 6, scope: !6942)
!7064 = !DILocation(line: 474, column: 27, scope: !7061)
!7065 = !DILocation(line: 475, column: 6, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 475, column: 6)
!7067 = !DILocation(line: 475, column: 11, scope: !7066)
!7068 = !DILocation(line: 475, column: 6, scope: !6942)
!7069 = !DILocation(line: 475, column: 32, scope: !7066)
!7070 = !DILocation(line: 477, column: 50, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !6942, file: !105, line: 477, column: 6)
!7072 = !DILocation(line: 477, column: 6, scope: !6942)
!7073 = !DILocation(line: 478, column: 3, scope: !7071)
!7074 = !DILocation(line: 478, column: 3, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7076, file: !105, line: 478, column: 3)
!7076 = distinct !DILexicalBlock(scope: !7071, file: !105, line: 478, column: 3)
!7077 = !{i32 -2142244076}
!7078 = !DILocation(line: 478, column: 3, scope: !7076)
!7079 = !DILocation(line: 480, column: 3, scope: !7071)
!7080 = !DILocation(line: 480, column: 3, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !7071, file: !105, line: 480, column: 3)
!7082 = !DILocation(line: 480, column: 3, scope: !7083)
!7083 = distinct !DILexicalBlock(scope: !7081, file: !105, line: 480, column: 3)
!7084 = !DILocation(line: 480, column: 3, scope: !7085)
!7085 = distinct !DILexicalBlock(scope: !7081, file: !105, line: 480, column: 3)
!7086 = !{i64 2152723423, i64 2152723452, i64 2152723498, i64 2152723556, i64 2152723610, i64 2152723664, i64 2152723719, i64 2152723750}
!7087 = !DILocation(line: 483, column: 2, scope: !6942)
!7088 = !DILocation(line: 484, column: 1, scope: !6942)
!7089 = !DISubprogram(name: "kmalloc_trace", scope: !105, file: !105, line: 525, type: !7090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7090 = !DISubroutineType(types: !7091)
!7091 = !{!116, !7092, !666, !269}
!7092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7093, size: 64)
!7093 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7094, line: 11, flags: DIFlagFwdDecl)
!7094 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!7095 = distinct !DISubprogram(name: "kmalloc_type", scope: !105, file: !105, line: 401, type: !7096, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7098)
!7096 = !DISubroutineType(types: !7097)
!7097 = !{!104, !666, !272}
!7098 = !{!7099, !7100}
!7099 = !DILocalVariable(name: "flags", arg: 1, scope: !7095, file: !105, line: 401, type: !666)
!7100 = !DILocalVariable(name: "caller", arg: 2, scope: !7095, file: !105, line: 401, type: !272)
!7101 = !DILocation(line: 401, column: 67, scope: !7095)
!7102 = !DILocation(line: 401, column: 88, scope: !7095)
!7103 = !DILocation(line: 407, column: 6, scope: !7104)
!7104 = distinct !DILexicalBlock(scope: !7095, file: !105, line: 407, column: 6)
!7105 = !DILocation(line: 407, column: 6, scope: !7095)
!7106 = !DILocation(line: 413, column: 3, scope: !7104)
!7107 = !DILocation(line: 423, column: 38, scope: !7108)
!7108 = distinct !DILexicalBlock(scope: !7095, file: !105, line: 423, column: 6)
!7109 = !DILocation(line: 423, column: 44, scope: !7108)
!7110 = !DILocation(line: 423, column: 6, scope: !7095)
!7111 = !DILocation(line: 424, column: 3, scope: !7108)
!7112 = !DILocation(line: 426, column: 3, scope: !7113)
!7113 = distinct !DILexicalBlock(scope: !7095, file: !105, line: 425, column: 6)
!7114 = !DILocation(line: 429, column: 1, scope: !7095)
!7115 = !DISubprogram(name: "__kmalloc", scope: !105, file: !105, line: 488, type: !6292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7116 = !DISubprogram(name: "__compiletime_assert_206", scope: !105, file: !105, line: 478, type: !2476, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7117 = !DISubprogram(name: "crypto_alloc_rng", scope: !4069, file: !4069, line: 111, type: !7118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{!4075, !141, !371, !371}
