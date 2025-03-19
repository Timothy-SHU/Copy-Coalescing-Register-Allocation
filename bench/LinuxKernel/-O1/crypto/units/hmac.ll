; ModuleID = 'crypto/hmac.c'
source_filename = "crypto/hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_hmac__315_274_hmac_module_init\22, \22a\22\09\09"
module asm "__initcall__kmod_hmac__315_274_hmac_module_init4:\09\09\09"
module asm ".long\09__initstub__kmod_hmac__315_274_hmac_module_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.15, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.shash_instance = type { ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { [104 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.18, %struct.work_struct, [0 x ptr] }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.crypto_shash_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.19, ptr, i32, i8, i8 }
%union.anon.19 = type { ptr }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.hmac_ctx = type { ptr }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }

@hmac_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @hmac_create, [128 x i8] c"hmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_hmac__315_274_hmac_module_init4316 = internal global ptr @__initstub__kmod_hmac__315_274_hmac_module_init4, section ".discard.addressable", align 8, !dbg !4283
@__exitcall_hmac_module_exit = internal global ptr @hmac_module_exit, section ".exitcall.exit", align 8, !dbg !4285
@__UNIQUE_ID_file317 = internal constant [22 x i8] c"hmac.file=crypto/hmac\00", section ".modinfo", align 1, !dbg !4289
@__UNIQUE_ID_license318 = internal constant [17 x i8] c"hmac.license=GPL\00", section ".modinfo", align 1, !dbg !4294
@__UNIQUE_ID_description319 = internal constant [37 x i8] c"hmac.description=HMAC hash algorithm\00", section ".modinfo", align 1, !dbg !4299
@__UNIQUE_ID_alias_userspace320 = internal constant [16 x i8] c"hmac.alias=hmac\00", section ".modinfo", align 1, !dbg !4304
@__UNIQUE_ID_alias_crypto321 = internal constant [23 x i8] c"hmac.alias=crypto-hmac\00", section ".modinfo", align 1, !dbg !4307
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4312
@llvm.compiler.used = appending global [8 x ptr] [ptr @hmac_module_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_hmac__315_274_hmac_module_init4316, ptr @__exitcall_hmac_module_exit, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_alias_userspace320, ptr @__UNIQUE_ID_alias_crypto321], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @hmac_module_exit() #0 section ".exit.text" align 16 !dbg !4326 {
entry:
  call void @crypto_unregister_template(ptr noundef @hmac_tmpl) #16, !dbg !4327
  ret void, !dbg !4328
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4329 dso_local void @crypto_unregister_template(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_hmac__315_274_hmac_module_init4() #0 section ".init.text" align 16 !dbg !4332 {
entry:
  %call = call i32 @hmac_module_init() #17, !dbg !4333
  ret i32 %call, !dbg !4333
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @hmac_module_init() #0 section ".init.text" align 16 !dbg !4334 {
entry:
  %call = call i32 @crypto_register_template(ptr noundef @hmac_tmpl) #16, !dbg !4335
  ret i32 %call, !dbg !4336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 16 !dbg !4337 {
entry:
  %retval = alloca i32, align 4
  %tmpl.addr = alloca ptr, align 8
  %tb.addr = alloca ptr, align 8
  %inst = alloca ptr, align 8
  %spawn = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %salg = alloca ptr, align 8
  %mask = alloca i32, align 4
  %err = alloca i32, align 4
  %ds = alloca i32, align 4
  %ss = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tmpl, ptr %tmpl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmpl.addr, metadata !4339, metadata !DIExpression()), !dbg !4356
  store ptr %tb, ptr %tb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tb.addr, metadata !4340, metadata !DIExpression()), !dbg !4357
  call void @llvm.lifetime.start.p0(i64 8, ptr %inst) #18, !dbg !4358
  call void @llvm.dbg.declare(metadata ptr %inst, metadata !4341, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 8, ptr %spawn) #18, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %spawn, metadata !4342, metadata !DIExpression()), !dbg !4361
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #18, !dbg !4362
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !4347, metadata !DIExpression()), !dbg !4363
  call void @llvm.lifetime.start.p0(i64 8, ptr %salg) #18, !dbg !4364
  call void @llvm.dbg.declare(metadata ptr %salg, metadata !4348, metadata !DIExpression()), !dbg !4365
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #18, !dbg !4366
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4349, metadata !DIExpression()), !dbg !4367
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !4368
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4350, metadata !DIExpression()), !dbg !4369
  call void @llvm.lifetime.start.p0(i64 4, ptr %ds) #18, !dbg !4370
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !4351, metadata !DIExpression()), !dbg !4371
  call void @llvm.lifetime.start.p0(i64 4, ptr %ss) #18, !dbg !4372
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !4352, metadata !DIExpression()), !dbg !4373
  %0 = load ptr, ptr %tb.addr, align 8, !dbg !4374
  %call = call i32 @crypto_check_attr_type(ptr noundef %0, i32 noundef 14, ptr noundef %mask) #16, !dbg !4375
  store i32 %call, ptr %err, align 4, !dbg !4376
  %1 = load i32, ptr %err, align 4, !dbg !4377
  %tobool = icmp ne i32 %1, 0, !dbg !4377
  br i1 %tobool, label %if.then, label %if.end, !dbg !4379

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !4380
  store i32 %2, ptr %retval, align 4, !dbg !4381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4381

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 600, i32 noundef 3264) #19, !dbg !4382
  store ptr %call1, ptr %inst, align 8, !dbg !4383
  %3 = load ptr, ptr %inst, align 8, !dbg !4384
  %tobool2 = icmp ne ptr %3, null, !dbg !4384
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4386

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4387

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %inst, align 8, !dbg !4388
  %call5 = call ptr @shash_instance_ctx(ptr noundef %4) #16, !dbg !4389
  store ptr %call5, ptr %spawn, align 8, !dbg !4390
  %5 = load ptr, ptr %spawn, align 8, !dbg !4391
  %6 = load ptr, ptr %inst, align 8, !dbg !4392
  %call6 = call ptr @shash_crypto_instance(ptr noundef %6) #16, !dbg !4393
  %7 = load ptr, ptr %tb.addr, align 8, !dbg !4394
  %arrayidx = getelementptr ptr, ptr %7, i64 1, !dbg !4394
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !4394
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %8) #16, !dbg !4395
  %9 = load i32, ptr %mask, align 4, !dbg !4396
  %call8 = call i32 @crypto_grab_shash(ptr noundef %5, ptr noundef %call6, ptr noundef %call7, i32 noundef 0, i32 noundef %9) #16, !dbg !4397
  store i32 %call8, ptr %err, align 4, !dbg !4398
  %10 = load i32, ptr %err, align 4, !dbg !4399
  %tobool9 = icmp ne i32 %10, 0, !dbg !4399
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4401

if.then10:                                        ; preds = %if.end4
  br label %err_free_inst, !dbg !4402

if.end11:                                         ; preds = %if.end4
  %11 = load ptr, ptr %spawn, align 8, !dbg !4403
  %call12 = call ptr @crypto_spawn_shash_alg(ptr noundef %11) #16, !dbg !4404
  store ptr %call12, ptr %salg, align 8, !dbg !4405
  %12 = load ptr, ptr %salg, align 8, !dbg !4406
  %13 = getelementptr inbounds %struct.shash_alg, ptr %12, i32 0, i32 12, !dbg !4407
  %base = getelementptr inbounds %struct.anon.14, ptr %13, i32 0, i32 2, !dbg !4407
  store ptr %base, ptr %alg, align 8, !dbg !4408
  store i32 -22, ptr %err, align 4, !dbg !4409
  %14 = load ptr, ptr %salg, align 8, !dbg !4410
  %call13 = call zeroext i1 @crypto_shash_alg_needs_key(ptr noundef %14) #16, !dbg !4412
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4413

if.then14:                                        ; preds = %if.end11
  br label %err_free_inst, !dbg !4414

if.end15:                                         ; preds = %if.end11
  %15 = load ptr, ptr %salg, align 8, !dbg !4415
  %16 = getelementptr inbounds %struct.shash_alg, ptr %15, i32 0, i32 12, !dbg !4416
  %digestsize = getelementptr inbounds %struct.anon.14, ptr %16, i32 0, i32 0, !dbg !4416
  %17 = load i32, ptr %digestsize, align 8, !dbg !4416
  store i32 %17, ptr %ds, align 4, !dbg !4417
  %18 = load ptr, ptr %salg, align 8, !dbg !4418
  %19 = getelementptr inbounds %struct.shash_alg, ptr %18, i32 0, i32 12, !dbg !4419
  %statesize = getelementptr inbounds %struct.anon.14, ptr %19, i32 0, i32 1, !dbg !4419
  %20 = load i32, ptr %statesize, align 4, !dbg !4419
  store i32 %20, ptr %ss, align 4, !dbg !4420
  %21 = load i32, ptr %ds, align 4, !dbg !4421
  %22 = load ptr, ptr %alg, align 8, !dbg !4423
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 3, !dbg !4424
  %23 = load i32, ptr %cra_blocksize, align 4, !dbg !4424
  %cmp = icmp ugt i32 %21, %23, !dbg !4425
  br i1 %cmp, label %if.then18, label %lor.lhs.false, !dbg !4426

lor.lhs.false:                                    ; preds = %if.end15
  %24 = load i32, ptr %ss, align 4, !dbg !4427
  %25 = load ptr, ptr %alg, align 8, !dbg !4428
  %cra_blocksize16 = getelementptr inbounds %struct.crypto_alg, ptr %25, i32 0, i32 3, !dbg !4429
  %26 = load i32, ptr %cra_blocksize16, align 4, !dbg !4429
  %cmp17 = icmp ult i32 %24, %26, !dbg !4430
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !4431

if.then18:                                        ; preds = %lor.lhs.false, %if.end15
  br label %err_free_inst, !dbg !4432

if.end19:                                         ; preds = %lor.lhs.false
  %27 = load ptr, ptr %inst, align 8, !dbg !4433
  %call20 = call ptr @shash_crypto_instance(ptr noundef %27) #16, !dbg !4434
  %28 = load ptr, ptr %tmpl.addr, align 8, !dbg !4435
  %name = getelementptr inbounds %struct.crypto_template, ptr %28, i32 0, i32 4, !dbg !4436
  %arraydecay = getelementptr inbounds [128 x i8], ptr %name, i64 0, i64 0, !dbg !4435
  %29 = load ptr, ptr %alg, align 8, !dbg !4437
  %call21 = call i32 @crypto_inst_setname(ptr noundef %call20, ptr noundef %arraydecay, ptr noundef %29) #16, !dbg !4438
  store i32 %call21, ptr %err, align 4, !dbg !4439
  %30 = load i32, ptr %err, align 4, !dbg !4440
  %tobool22 = icmp ne i32 %30, 0, !dbg !4440
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4442

if.then23:                                        ; preds = %if.end19
  br label %err_free_inst, !dbg !4443

if.end24:                                         ; preds = %if.end19
  %31 = load ptr, ptr %alg, align 8, !dbg !4444
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %31, i32 0, i32 6, !dbg !4445
  %32 = load i32, ptr %cra_priority, align 8, !dbg !4445
  %33 = load ptr, ptr %inst, align 8, !dbg !4446
  %34 = getelementptr inbounds %struct.shash_instance, ptr %33, i32 0, i32 1, !dbg !4447
  %35 = getelementptr inbounds %struct.shash_alg, ptr %34, i32 0, i32 12, !dbg !4448
  %base25 = getelementptr inbounds %struct.anon.14, ptr %35, i32 0, i32 2, !dbg !4448
  %cra_priority26 = getelementptr inbounds %struct.crypto_alg, ptr %base25, i32 0, i32 6, !dbg !4449
  store i32 %32, ptr %cra_priority26, align 8, !dbg !4450
  %36 = load ptr, ptr %alg, align 8, !dbg !4451
  %cra_blocksize27 = getelementptr inbounds %struct.crypto_alg, ptr %36, i32 0, i32 3, !dbg !4452
  %37 = load i32, ptr %cra_blocksize27, align 4, !dbg !4452
  %38 = load ptr, ptr %inst, align 8, !dbg !4453
  %39 = getelementptr inbounds %struct.shash_instance, ptr %38, i32 0, i32 1, !dbg !4454
  %40 = getelementptr inbounds %struct.shash_alg, ptr %39, i32 0, i32 12, !dbg !4455
  %base28 = getelementptr inbounds %struct.anon.14, ptr %40, i32 0, i32 2, !dbg !4455
  %cra_blocksize29 = getelementptr inbounds %struct.crypto_alg, ptr %base28, i32 0, i32 3, !dbg !4456
  store i32 %37, ptr %cra_blocksize29, align 4, !dbg !4457
  %41 = load ptr, ptr %alg, align 8, !dbg !4458
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %41, i32 0, i32 5, !dbg !4459
  %42 = load i32, ptr %cra_alignmask, align 4, !dbg !4459
  %43 = load ptr, ptr %inst, align 8, !dbg !4460
  %44 = getelementptr inbounds %struct.shash_instance, ptr %43, i32 0, i32 1, !dbg !4461
  %45 = getelementptr inbounds %struct.shash_alg, ptr %44, i32 0, i32 12, !dbg !4462
  %base30 = getelementptr inbounds %struct.anon.14, ptr %45, i32 0, i32 2, !dbg !4462
  %cra_alignmask31 = getelementptr inbounds %struct.crypto_alg, ptr %base30, i32 0, i32 5, !dbg !4463
  store i32 %42, ptr %cra_alignmask31, align 4, !dbg !4464
  %46 = load i32, ptr %ss, align 4, !dbg !4465
  %47 = load ptr, ptr %alg, align 8, !dbg !4465
  %cra_alignmask32 = getelementptr inbounds %struct.crypto_alg, ptr %47, i32 0, i32 5, !dbg !4465
  %48 = load i32, ptr %cra_alignmask32, align 4, !dbg !4465
  %add = add i32 %48, 1, !dbg !4465
  %sub = sub i32 %add, 1, !dbg !4465
  %add33 = add i32 %46, %sub, !dbg !4465
  %49 = load ptr, ptr %alg, align 8, !dbg !4465
  %cra_alignmask34 = getelementptr inbounds %struct.crypto_alg, ptr %49, i32 0, i32 5, !dbg !4465
  %50 = load i32, ptr %cra_alignmask34, align 4, !dbg !4465
  %add35 = add i32 %50, 1, !dbg !4465
  %sub36 = sub i32 %add35, 1, !dbg !4465
  %not = xor i32 %sub36, -1, !dbg !4465
  %and = and i32 %add33, %not, !dbg !4465
  store i32 %and, ptr %ss, align 4, !dbg !4466
  %51 = load i32, ptr %ds, align 4, !dbg !4467
  %52 = load ptr, ptr %inst, align 8, !dbg !4468
  %53 = getelementptr inbounds %struct.shash_instance, ptr %52, i32 0, i32 1, !dbg !4469
  %54 = getelementptr inbounds %struct.shash_alg, ptr %53, i32 0, i32 12, !dbg !4470
  %digestsize37 = getelementptr inbounds %struct.anon.14, ptr %54, i32 0, i32 0, !dbg !4470
  store i32 %51, ptr %digestsize37, align 8, !dbg !4471
  %55 = load i32, ptr %ss, align 4, !dbg !4472
  %56 = load ptr, ptr %inst, align 8, !dbg !4473
  %57 = getelementptr inbounds %struct.shash_instance, ptr %56, i32 0, i32 1, !dbg !4474
  %58 = getelementptr inbounds %struct.shash_alg, ptr %57, i32 0, i32 12, !dbg !4475
  %statesize38 = getelementptr inbounds %struct.anon.14, ptr %58, i32 0, i32 1, !dbg !4475
  store i32 %55, ptr %statesize38, align 4, !dbg !4476
  %59 = load i32, ptr %ss, align 4, !dbg !4477
  %mul = mul i32 %59, 2, !dbg !4477
  %call39 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !4477
  %sub40 = sub i32 %call39, 1, !dbg !4477
  %add41 = add i32 %mul, %sub40, !dbg !4477
  %call42 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !4477
  %sub43 = sub i32 %call42, 1, !dbg !4477
  %not44 = xor i32 %sub43, -1, !dbg !4477
  %and45 = and i32 %add41, %not44, !dbg !4477
  %conv = sext i32 %and45 to i64, !dbg !4477
  %add46 = add i64 8, %conv, !dbg !4478
  %conv47 = trunc i64 %add46 to i32, !dbg !4479
  %60 = load ptr, ptr %inst, align 8, !dbg !4480
  %61 = getelementptr inbounds %struct.shash_instance, ptr %60, i32 0, i32 1, !dbg !4481
  %62 = getelementptr inbounds %struct.shash_alg, ptr %61, i32 0, i32 12, !dbg !4482
  %base48 = getelementptr inbounds %struct.anon.14, ptr %62, i32 0, i32 2, !dbg !4482
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %base48, i32 0, i32 4, !dbg !4483
  store i32 %conv47, ptr %cra_ctxsize, align 8, !dbg !4484
  %63 = load ptr, ptr %inst, align 8, !dbg !4485
  %64 = getelementptr inbounds %struct.shash_instance, ptr %63, i32 0, i32 1, !dbg !4486
  %init = getelementptr inbounds %struct.shash_alg, ptr %64, i32 0, i32 0, !dbg !4487
  store ptr @hmac_init, ptr %init, align 8, !dbg !4488
  %65 = load ptr, ptr %inst, align 8, !dbg !4489
  %66 = getelementptr inbounds %struct.shash_instance, ptr %65, i32 0, i32 1, !dbg !4490
  %update = getelementptr inbounds %struct.shash_alg, ptr %66, i32 0, i32 1, !dbg !4491
  store ptr @hmac_update, ptr %update, align 8, !dbg !4492
  %67 = load ptr, ptr %inst, align 8, !dbg !4493
  %68 = getelementptr inbounds %struct.shash_instance, ptr %67, i32 0, i32 1, !dbg !4494
  %final = getelementptr inbounds %struct.shash_alg, ptr %68, i32 0, i32 2, !dbg !4495
  store ptr @hmac_final, ptr %final, align 8, !dbg !4496
  %69 = load ptr, ptr %inst, align 8, !dbg !4497
  %70 = getelementptr inbounds %struct.shash_instance, ptr %69, i32 0, i32 1, !dbg !4498
  %finup = getelementptr inbounds %struct.shash_alg, ptr %70, i32 0, i32 3, !dbg !4499
  store ptr @hmac_finup, ptr %finup, align 8, !dbg !4500
  %71 = load ptr, ptr %inst, align 8, !dbg !4501
  %72 = getelementptr inbounds %struct.shash_instance, ptr %71, i32 0, i32 1, !dbg !4502
  %export = getelementptr inbounds %struct.shash_alg, ptr %72, i32 0, i32 5, !dbg !4503
  store ptr @hmac_export, ptr %export, align 8, !dbg !4504
  %73 = load ptr, ptr %inst, align 8, !dbg !4505
  %74 = getelementptr inbounds %struct.shash_instance, ptr %73, i32 0, i32 1, !dbg !4506
  %import = getelementptr inbounds %struct.shash_alg, ptr %74, i32 0, i32 6, !dbg !4507
  store ptr @hmac_import, ptr %import, align 8, !dbg !4508
  %75 = load ptr, ptr %inst, align 8, !dbg !4509
  %76 = getelementptr inbounds %struct.shash_instance, ptr %75, i32 0, i32 1, !dbg !4510
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %76, i32 0, i32 7, !dbg !4511
  store ptr @hmac_setkey, ptr %setkey, align 8, !dbg !4512
  %77 = load ptr, ptr %inst, align 8, !dbg !4513
  %78 = getelementptr inbounds %struct.shash_instance, ptr %77, i32 0, i32 1, !dbg !4514
  %init_tfm = getelementptr inbounds %struct.shash_alg, ptr %78, i32 0, i32 8, !dbg !4515
  store ptr @hmac_init_tfm, ptr %init_tfm, align 8, !dbg !4516
  %79 = load ptr, ptr %inst, align 8, !dbg !4517
  %80 = getelementptr inbounds %struct.shash_instance, ptr %79, i32 0, i32 1, !dbg !4518
  %clone_tfm = getelementptr inbounds %struct.shash_alg, ptr %80, i32 0, i32 10, !dbg !4519
  store ptr @hmac_clone_tfm, ptr %clone_tfm, align 8, !dbg !4520
  %81 = load ptr, ptr %inst, align 8, !dbg !4521
  %82 = getelementptr inbounds %struct.shash_instance, ptr %81, i32 0, i32 1, !dbg !4522
  %exit_tfm = getelementptr inbounds %struct.shash_alg, ptr %82, i32 0, i32 9, !dbg !4523
  store ptr @hmac_exit_tfm, ptr %exit_tfm, align 8, !dbg !4524
  %83 = load ptr, ptr %inst, align 8, !dbg !4525
  %free = getelementptr inbounds %struct.shash_instance, ptr %83, i32 0, i32 0, !dbg !4526
  store ptr @shash_free_singlespawn_instance, ptr %free, align 8, !dbg !4527
  %84 = load ptr, ptr %tmpl.addr, align 8, !dbg !4528
  %85 = load ptr, ptr %inst, align 8, !dbg !4529
  %call49 = call i32 @shash_register_instance(ptr noundef %84, ptr noundef %85) #16, !dbg !4530
  store i32 %call49, ptr %err, align 4, !dbg !4531
  %86 = load i32, ptr %err, align 4, !dbg !4532
  %tobool50 = icmp ne i32 %86, 0, !dbg !4532
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4533

if.then51:                                        ; preds = %if.end24
  br label %err_free_inst, !dbg !4534

err_free_inst:                                    ; preds = %if.then51, %if.then23, %if.then18, %if.then14, %if.then10
  call void @llvm.dbg.label(metadata !4353), !dbg !4535
  %87 = load ptr, ptr %inst, align 8, !dbg !4536
  call void @shash_free_singlespawn_instance(ptr noundef %87) #16, !dbg !4537
  br label %if.end52, !dbg !4538

if.end52:                                         ; preds = %err_free_inst, %if.end24
  %88 = load i32, ptr %err, align 4, !dbg !4539
  store i32 %88, ptr %retval, align 4, !dbg !4540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4540

cleanup:                                          ; preds = %if.end52, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ss) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 4, ptr %ds) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %salg) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %spawn) #18, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %inst) #18, !dbg !4541
  %89 = load i32, ptr %retval, align 4, !dbg !4541
  ret i32 %89, !dbg !4541
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4542 dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4545 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4549, metadata !DIExpression()), !dbg !4551
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4550, metadata !DIExpression()), !dbg !4552
  %0 = load i64, ptr %size.addr, align 8, !dbg !4553
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4554
  %or = or i32 %1, 256, !dbg !4555
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !4556
  ret ptr %call, !dbg !4557
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_instance_ctx(ptr noundef %inst) #6 align 16 !dbg !4558 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !4564
  %call = call ptr @shash_crypto_instance(ptr noundef %0) #16, !dbg !4565
  %call1 = call ptr @crypto_instance_ctx(ptr noundef %call) #16, !dbg !4566
  ret ptr %call1, !dbg !4567
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4568 dso_local i32 @crypto_grab_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_crypto_instance(ptr noundef %inst) #6 align 16 !dbg !4571 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !4577
  %1 = getelementptr inbounds %struct.shash_instance, ptr %0, i32 0, i32 1, !dbg !4578
  %base = getelementptr inbounds %struct.anon.17, ptr %1, i32 0, i32 1, !dbg !4579
  ret ptr %base, !dbg !4580
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4581 dso_local ptr @crypto_attr_alg_name(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_spawn_shash_alg(ptr noundef %spawn) #6 align 16 !dbg !4584 {
entry:
  %spawn.addr = alloca ptr, align 8
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  %0 = load ptr, ptr %spawn.addr, align 8, !dbg !4590
  %base = getelementptr inbounds %struct.crypto_shash_spawn, ptr %0, i32 0, i32 0, !dbg !4591
  %alg = getelementptr inbounds %struct.crypto_spawn, ptr %base, i32 0, i32 1, !dbg !4592
  %1 = load ptr, ptr %alg, align 8, !dbg !4592
  %call = call ptr @__crypto_shash_alg(ptr noundef %1) #16, !dbg !4593
  ret ptr %call, !dbg !4594
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @crypto_shash_alg_needs_key(ptr noundef %alg) #6 align 16 !dbg !4595 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4601
  %call = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %0) #16, !dbg !4602
  br i1 %call, label %land.rhs, label %land.end, !dbg !4603

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !4604
  %2 = getelementptr inbounds %struct.shash_alg, ptr %1, i32 0, i32 12, !dbg !4605
  %base = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 2, !dbg !4605
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 2, !dbg !4606
  %3 = load i32, ptr %cra_flags, align 8, !dbg !4606
  %and = and i32 %3, 16384, !dbg !4607
  %tobool = icmp ne i32 %and, 0, !dbg !4608
  %lnot = xor i1 %tobool, true, !dbg !4608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !4609
  ret i1 %4, !dbg !4610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4611 dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_ctx_alignment() #6 align 16 !dbg !4614 {
entry:
  %tfm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #18, !dbg !4619
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !4618, metadata !DIExpression()), !dbg !4620
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #18, !dbg !4621
  ret i32 8, !dbg !4622
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_init(ptr noundef %pdesc) #2 align 16 !dbg !4623 {
entry:
  %pdesc.addr = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !4627
  %1 = load ptr, ptr %pdesc.addr, align 8, !dbg !4628
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !4629
  %2 = load ptr, ptr %tfm, align 8, !dbg !4629
  %call = call ptr @crypto_shash_ctx_aligned(ptr noundef %2) #16, !dbg !4630
  %call1 = call i32 @hmac_import(ptr noundef %0, ptr noundef %call) #16, !dbg !4631
  ret i32 %call1, !dbg !4632
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_update(ptr noundef %pdesc, ptr noundef %data, i32 noundef %nbytes) #2 align 16 !dbg !4633 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %nbytes.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !4635, metadata !DIExpression()), !dbg !4639
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4636, metadata !DIExpression()), !dbg !4640
  store i32 %nbytes, ptr %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !4637, metadata !DIExpression()), !dbg !4641
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !4642
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4638, metadata !DIExpression()), !dbg !4643
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !4644
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #16, !dbg !4645
  store ptr %call, ptr %desc, align 8, !dbg !4643
  %1 = load ptr, ptr %desc, align 8, !dbg !4646
  %2 = load ptr, ptr %data.addr, align 8, !dbg !4647
  %3 = load i32, ptr %nbytes.addr, align 4, !dbg !4648
  %call1 = call i32 @crypto_shash_update(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16, !dbg !4649
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !4650
  ret i32 %call1, !dbg !4651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_final(ptr noundef %pdesc, ptr noundef %out) #2 align 16 !dbg !4652 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %ds = alloca i32, align 4
  %ss = alloca i32, align 4
  %opad = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !4654, metadata !DIExpression()), !dbg !4661
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4655, metadata !DIExpression()), !dbg !4662
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !4663
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4656, metadata !DIExpression()), !dbg !4664
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !4665
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !4666
  %1 = load ptr, ptr %tfm, align 8, !dbg !4666
  store ptr %1, ptr %parent, align 8, !dbg !4664
  call void @llvm.lifetime.start.p0(i64 4, ptr %ds) #18, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !4657, metadata !DIExpression()), !dbg !4668
  %2 = load ptr, ptr %parent, align 8, !dbg !4669
  %call = call i32 @crypto_shash_digestsize(ptr noundef %2) #16, !dbg !4670
  store i32 %call, ptr %ds, align 4, !dbg !4668
  call void @llvm.lifetime.start.p0(i64 4, ptr %ss) #18, !dbg !4671
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !4658, metadata !DIExpression()), !dbg !4672
  %3 = load ptr, ptr %parent, align 8, !dbg !4673
  %call1 = call i32 @crypto_shash_statesize(ptr noundef %3) #16, !dbg !4674
  store i32 %call1, ptr %ss, align 4, !dbg !4672
  call void @llvm.lifetime.start.p0(i64 8, ptr %opad) #18, !dbg !4675
  call void @llvm.dbg.declare(metadata ptr %opad, metadata !4659, metadata !DIExpression()), !dbg !4676
  %4 = load ptr, ptr %parent, align 8, !dbg !4677
  %call2 = call ptr @crypto_shash_ctx_aligned(ptr noundef %4) #16, !dbg !4678
  %5 = load i32, ptr %ss, align 4, !dbg !4679
  %idx.ext = sext i32 %5 to i64, !dbg !4680
  %add.ptr = getelementptr i8, ptr %call2, i64 %idx.ext, !dbg !4680
  store ptr %add.ptr, ptr %opad, align 8, !dbg !4676
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !4681
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4660, metadata !DIExpression()), !dbg !4682
  %6 = load ptr, ptr %pdesc.addr, align 8, !dbg !4683
  %call3 = call ptr @shash_desc_ctx(ptr noundef %6) #16, !dbg !4684
  store ptr %call3, ptr %desc, align 8, !dbg !4682
  %7 = load ptr, ptr %desc, align 8, !dbg !4685
  %8 = load ptr, ptr %out.addr, align 8, !dbg !4686
  %call4 = call i32 @crypto_shash_final(ptr noundef %7, ptr noundef %8) #16, !dbg !4687
  %tobool = icmp ne i32 %call4, 0, !dbg !4687
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4687

cond.true:                                        ; preds = %entry
  br label %cond.end10, !dbg !4687

cond.false:                                       ; preds = %entry
  %9 = load ptr, ptr %desc, align 8, !dbg !4688
  %10 = load ptr, ptr %opad, align 8, !dbg !4689
  %call5 = call i32 @crypto_shash_import(ptr noundef %9, ptr noundef %10) #16, !dbg !4690
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4690
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !4690

cond.true7:                                       ; preds = %cond.false
  br label %cond.end, !dbg !4690

cond.false8:                                      ; preds = %cond.false
  %11 = load ptr, ptr %desc, align 8, !dbg !4691
  %12 = load ptr, ptr %out.addr, align 8, !dbg !4692
  %13 = load i32, ptr %ds, align 4, !dbg !4693
  %14 = load ptr, ptr %out.addr, align 8, !dbg !4694
  %call9 = call i32 @crypto_shash_finup(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14) #16, !dbg !4695
  br label %cond.end, !dbg !4690

cond.end:                                         ; preds = %cond.false8, %cond.true7
  %cond = phi i32 [ %call5, %cond.true7 ], [ %call9, %cond.false8 ], !dbg !4690
  br label %cond.end10, !dbg !4687

cond.end10:                                       ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ %call4, %cond.true ], [ %cond, %cond.end ], !dbg !4687
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 8, ptr %opad) #18, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %ss) #18, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %ds) #18, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !4696
  ret i32 %cond11, !dbg !4697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_finup(ptr noundef %pdesc, ptr noundef %data, i32 noundef %nbytes, ptr noundef %out) #2 align 16 !dbg !4698 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %nbytes.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %ds = alloca i32, align 4
  %ss = alloca i32, align 4
  %opad = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !4700, metadata !DIExpression()), !dbg !4709
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4701, metadata !DIExpression()), !dbg !4710
  store i32 %nbytes, ptr %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !4702, metadata !DIExpression()), !dbg !4711
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4703, metadata !DIExpression()), !dbg !4712
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !4713
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4704, metadata !DIExpression()), !dbg !4714
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !4715
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !4716
  %1 = load ptr, ptr %tfm, align 8, !dbg !4716
  store ptr %1, ptr %parent, align 8, !dbg !4714
  call void @llvm.lifetime.start.p0(i64 4, ptr %ds) #18, !dbg !4717
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !4705, metadata !DIExpression()), !dbg !4718
  %2 = load ptr, ptr %parent, align 8, !dbg !4719
  %call = call i32 @crypto_shash_digestsize(ptr noundef %2) #16, !dbg !4720
  store i32 %call, ptr %ds, align 4, !dbg !4718
  call void @llvm.lifetime.start.p0(i64 4, ptr %ss) #18, !dbg !4721
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !4706, metadata !DIExpression()), !dbg !4722
  %3 = load ptr, ptr %parent, align 8, !dbg !4723
  %call1 = call i32 @crypto_shash_statesize(ptr noundef %3) #16, !dbg !4724
  store i32 %call1, ptr %ss, align 4, !dbg !4722
  call void @llvm.lifetime.start.p0(i64 8, ptr %opad) #18, !dbg !4725
  call void @llvm.dbg.declare(metadata ptr %opad, metadata !4707, metadata !DIExpression()), !dbg !4726
  %4 = load ptr, ptr %parent, align 8, !dbg !4727
  %call2 = call ptr @crypto_shash_ctx_aligned(ptr noundef %4) #16, !dbg !4728
  %5 = load i32, ptr %ss, align 4, !dbg !4729
  %idx.ext = sext i32 %5 to i64, !dbg !4730
  %add.ptr = getelementptr i8, ptr %call2, i64 %idx.ext, !dbg !4730
  store ptr %add.ptr, ptr %opad, align 8, !dbg !4726
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !4731
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4708, metadata !DIExpression()), !dbg !4732
  %6 = load ptr, ptr %pdesc.addr, align 8, !dbg !4733
  %call3 = call ptr @shash_desc_ctx(ptr noundef %6) #16, !dbg !4734
  store ptr %call3, ptr %desc, align 8, !dbg !4732
  %7 = load ptr, ptr %desc, align 8, !dbg !4735
  %8 = load ptr, ptr %data.addr, align 8, !dbg !4736
  %9 = load i32, ptr %nbytes.addr, align 4, !dbg !4737
  %10 = load ptr, ptr %out.addr, align 8, !dbg !4738
  %call4 = call i32 @crypto_shash_finup(ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10) #16, !dbg !4739
  %tobool = icmp ne i32 %call4, 0, !dbg !4739
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4739

cond.true:                                        ; preds = %entry
  br label %cond.end10, !dbg !4739

cond.false:                                       ; preds = %entry
  %11 = load ptr, ptr %desc, align 8, !dbg !4740
  %12 = load ptr, ptr %opad, align 8, !dbg !4741
  %call5 = call i32 @crypto_shash_import(ptr noundef %11, ptr noundef %12) #16, !dbg !4742
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4742
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !4742

cond.true7:                                       ; preds = %cond.false
  br label %cond.end, !dbg !4742

cond.false8:                                      ; preds = %cond.false
  %13 = load ptr, ptr %desc, align 8, !dbg !4743
  %14 = load ptr, ptr %out.addr, align 8, !dbg !4744
  %15 = load i32, ptr %ds, align 4, !dbg !4745
  %16 = load ptr, ptr %out.addr, align 8, !dbg !4746
  %call9 = call i32 @crypto_shash_finup(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16) #16, !dbg !4747
  br label %cond.end, !dbg !4742

cond.end:                                         ; preds = %cond.false8, %cond.true7
  %cond = phi i32 [ %call5, %cond.true7 ], [ %call9, %cond.false8 ], !dbg !4742
  br label %cond.end10, !dbg !4739

cond.end10:                                       ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ %call4, %cond.true ], [ %cond, %cond.end ], !dbg !4739
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !4748
  call void @llvm.lifetime.end.p0(i64 8, ptr %opad) #18, !dbg !4748
  call void @llvm.lifetime.end.p0(i64 4, ptr %ss) #18, !dbg !4748
  call void @llvm.lifetime.end.p0(i64 4, ptr %ds) #18, !dbg !4748
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !4748
  ret i32 %cond11, !dbg !4749
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_export(ptr noundef %pdesc, ptr noundef %out) #2 align 16 !dbg !4750 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !4752, metadata !DIExpression()), !dbg !4755
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4753, metadata !DIExpression()), !dbg !4756
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !4757
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4754, metadata !DIExpression()), !dbg !4758
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !4759
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #16, !dbg !4760
  store ptr %call, ptr %desc, align 8, !dbg !4758
  %1 = load ptr, ptr %desc, align 8, !dbg !4761
  %2 = load ptr, ptr %out.addr, align 8, !dbg !4762
  %call1 = call i32 @crypto_shash_export(ptr noundef %1, ptr noundef %2) #16, !dbg !4763
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !4764
  ret i32 %call1, !dbg !4765
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_import(ptr noundef %pdesc, ptr noundef %in) #2 align 16 !dbg !4766 {
entry:
  %pdesc.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %pdesc, ptr %pdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdesc.addr, metadata !4768, metadata !DIExpression()), !dbg !4776
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !4769, metadata !DIExpression()), !dbg !4777
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4770, metadata !DIExpression()), !dbg !4779
  %0 = load ptr, ptr %pdesc.addr, align 8, !dbg !4780
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #16, !dbg !4781
  store ptr %call, ptr %desc, align 8, !dbg !4779
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !4782
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4771, metadata !DIExpression()), !dbg !4783
  %1 = load ptr, ptr %pdesc.addr, align 8, !dbg !4784
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !4785
  %2 = load ptr, ptr %tfm, align 8, !dbg !4785
  %call1 = call ptr @hmac_ctx(ptr noundef %2) #16, !dbg !4786
  store ptr %call1, ptr %ctx, align 8, !dbg !4783
  %3 = load ptr, ptr %ctx, align 8, !dbg !4787
  %hash = getelementptr inbounds %struct.hmac_ctx, ptr %3, i32 0, i32 0, !dbg !4788
  %4 = load ptr, ptr %hash, align 8, !dbg !4788
  %5 = load ptr, ptr %desc, align 8, !dbg !4789
  %tfm2 = getelementptr inbounds %struct.shash_desc, ptr %5, i32 0, i32 0, !dbg !4790
  store ptr %4, ptr %tfm2, align 8, !dbg !4791
  %6 = load ptr, ptr %desc, align 8, !dbg !4792
  %7 = load ptr, ptr %in.addr, align 8, !dbg !4793
  %call3 = call i32 @crypto_shash_import(ptr noundef %6, ptr noundef %7) #16, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !4795
  ret i32 %call3, !dbg !4796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_setkey(ptr noundef %parent, ptr noundef %inkey, i32 noundef %keylen) #2 align 16 !dbg !4797 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %inkey.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %bs = alloca i32, align 4
  %ds = alloca i32, align 4
  %ss = alloca i32, align 4
  %ipad = alloca ptr, align 8
  %opad = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %__shash_desc = alloca [376 x i8], align 8
  %shash = alloca ptr, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4799, metadata !DIExpression()), !dbg !4818
  store ptr %inkey, ptr %inkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inkey.addr, metadata !4800, metadata !DIExpression()), !dbg !4819
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !4801, metadata !DIExpression()), !dbg !4820
  call void @llvm.lifetime.start.p0(i64 4, ptr %bs) #18, !dbg !4821
  call void @llvm.dbg.declare(metadata ptr %bs, metadata !4802, metadata !DIExpression()), !dbg !4822
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4823
  %call = call i32 @crypto_shash_blocksize(ptr noundef %0) #16, !dbg !4824
  store i32 %call, ptr %bs, align 4, !dbg !4822
  call void @llvm.lifetime.start.p0(i64 4, ptr %ds) #18, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !4803, metadata !DIExpression()), !dbg !4826
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4827
  %call1 = call i32 @crypto_shash_digestsize(ptr noundef %1) #16, !dbg !4828
  store i32 %call1, ptr %ds, align 4, !dbg !4826
  call void @llvm.lifetime.start.p0(i64 4, ptr %ss) #18, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !4804, metadata !DIExpression()), !dbg !4830
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4831
  %call2 = call i32 @crypto_shash_statesize(ptr noundef %2) #16, !dbg !4832
  store i32 %call2, ptr %ss, align 4, !dbg !4830
  call void @llvm.lifetime.start.p0(i64 8, ptr %ipad) #18, !dbg !4833
  call void @llvm.dbg.declare(metadata ptr %ipad, metadata !4805, metadata !DIExpression()), !dbg !4834
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !4835
  %call3 = call ptr @crypto_shash_ctx_aligned(ptr noundef %3) #16, !dbg !4836
  store ptr %call3, ptr %ipad, align 8, !dbg !4834
  call void @llvm.lifetime.start.p0(i64 8, ptr %opad) #18, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %opad, metadata !4806, metadata !DIExpression()), !dbg !4838
  %4 = load ptr, ptr %ipad, align 8, !dbg !4839
  %5 = load i32, ptr %ss, align 4, !dbg !4840
  %idx.ext = sext i32 %5 to i64, !dbg !4841
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !4841
  store ptr %add.ptr, ptr %opad, align 8, !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !4842
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4807, metadata !DIExpression()), !dbg !4843
  %6 = load ptr, ptr %opad, align 8, !dbg !4844
  %7 = load i32, ptr %ss, align 4, !dbg !4845
  %idx.ext4 = sext i32 %7 to i64, !dbg !4846
  %add.ptr5 = getelementptr i8, ptr %6, i64 %idx.ext4, !dbg !4846
  %call6 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !4847
  %call7 = call ptr @align_ptr(ptr noundef %add.ptr5, i32 noundef %call6) #16, !dbg !4848
  store ptr %call7, ptr %ctx, align 8, !dbg !4843
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #18, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !4808, metadata !DIExpression()), !dbg !4850
  %8 = load ptr, ptr %ctx, align 8, !dbg !4851
  %hash8 = getelementptr inbounds %struct.hmac_ctx, ptr %8, i32 0, i32 0, !dbg !4852
  %9 = load ptr, ptr %hash8, align 8, !dbg !4852
  store ptr %9, ptr %hash, align 8, !dbg !4850
  call void @llvm.lifetime.start.p0(i64 376, ptr %__shash_desc) #18, !dbg !4853
  call void @llvm.dbg.declare(metadata ptr %__shash_desc, metadata !4809, metadata !DIExpression()), !dbg !4853
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #18, !dbg !4853
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !4813, metadata !DIExpression()), !dbg !4853
  %arraydecay = getelementptr inbounds [376 x i8], ptr %__shash_desc, i64 0, i64 0, !dbg !4853
  store ptr %arraydecay, ptr %shash, align 8, !dbg !4853
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4854
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4814, metadata !DIExpression()), !dbg !4855
  %10 = load ptr, ptr %hash, align 8, !dbg !4856
  %11 = load ptr, ptr %shash, align 8, !dbg !4857
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %11, i32 0, i32 0, !dbg !4858
  store ptr %10, ptr %tfm, align 8, !dbg !4859
  %12 = load i32, ptr %keylen.addr, align 4, !dbg !4860
  %13 = load i32, ptr %bs, align 4, !dbg !4861
  %cmp = icmp ugt i32 %12, %13, !dbg !4862
  br i1 %cmp, label %if.then, label %if.else, !dbg !4863

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !4864
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4815, metadata !DIExpression()), !dbg !4865
  %14 = load ptr, ptr %shash, align 8, !dbg !4866
  %15 = load ptr, ptr %inkey.addr, align 8, !dbg !4867
  %16 = load i32, ptr %keylen.addr, align 4, !dbg !4868
  %17 = load ptr, ptr %ipad, align 8, !dbg !4869
  %call9 = call i32 @crypto_shash_digest(ptr noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17) #16, !dbg !4870
  store i32 %call9, ptr %err, align 4, !dbg !4871
  %18 = load i32, ptr %err, align 4, !dbg !4872
  %tobool = icmp ne i32 %18, 0, !dbg !4872
  br i1 %tobool, label %if.then10, label %if.end, !dbg !4874

if.then10:                                        ; preds = %if.then
  %19 = load i32, ptr %err, align 4, !dbg !4875
  store i32 %19, ptr %retval, align 4, !dbg !4876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4876

if.end:                                           ; preds = %if.then
  %20 = load i32, ptr %ds, align 4, !dbg !4877
  store i32 %20, ptr %keylen.addr, align 4, !dbg !4878
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4879
  br label %cleanup, !dbg !4879

cleanup:                                          ; preds = %if.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !4879
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11, !dbg !4880

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %ipad, align 8, !dbg !4881
  %22 = load ptr, ptr %inkey.addr, align 8, !dbg !4882
  %23 = load i32, ptr %keylen.addr, align 4, !dbg !4883
  %conv = zext i32 %23 to i64, !dbg !4883
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %conv, i1 false), !dbg !4884
  br label %if.end11

if.end11:                                         ; preds = %if.else, %cleanup.cont
  %24 = load ptr, ptr %ipad, align 8, !dbg !4885
  %25 = load i32, ptr %keylen.addr, align 4, !dbg !4886
  %idx.ext12 = zext i32 %25 to i64, !dbg !4887
  %add.ptr13 = getelementptr i8, ptr %24, i64 %idx.ext12, !dbg !4887
  %26 = load i32, ptr %bs, align 4, !dbg !4888
  %27 = load i32, ptr %keylen.addr, align 4, !dbg !4889
  %sub = sub i32 %26, %27, !dbg !4890
  %conv14 = zext i32 %sub to i64, !dbg !4888
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr13, i8 0, i64 %conv14, i1 false), !dbg !4891
  %28 = load ptr, ptr %opad, align 8, !dbg !4892
  %29 = load ptr, ptr %ipad, align 8, !dbg !4893
  %30 = load i32, ptr %bs, align 4, !dbg !4894
  %conv15 = sext i32 %30 to i64, !dbg !4894
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %29, i64 %conv15, i1 false), !dbg !4895
  store i32 0, ptr %i, align 4, !dbg !4896
  br label %for.cond, !dbg !4898

for.cond:                                         ; preds = %for.inc, %if.end11
  %31 = load i32, ptr %i, align 4, !dbg !4899
  %32 = load i32, ptr %bs, align 4, !dbg !4901
  %cmp16 = icmp ult i32 %31, %32, !dbg !4902
  br i1 %cmp16, label %for.body, label %for.end, !dbg !4903

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %ipad, align 8, !dbg !4904
  %34 = load i32, ptr %i, align 4, !dbg !4906
  %idxprom = zext i32 %34 to i64, !dbg !4904
  %arrayidx = getelementptr i8, ptr %33, i64 %idxprom, !dbg !4904
  %35 = load i8, ptr %arrayidx, align 1, !dbg !4907
  %conv18 = zext i8 %35 to i32, !dbg !4907
  %xor = xor i32 %conv18, 54, !dbg !4907
  %conv19 = trunc i32 %xor to i8, !dbg !4907
  store i8 %conv19, ptr %arrayidx, align 1, !dbg !4907
  %36 = load ptr, ptr %opad, align 8, !dbg !4908
  %37 = load i32, ptr %i, align 4, !dbg !4909
  %idxprom20 = zext i32 %37 to i64, !dbg !4908
  %arrayidx21 = getelementptr i8, ptr %36, i64 %idxprom20, !dbg !4908
  %38 = load i8, ptr %arrayidx21, align 1, !dbg !4910
  %conv22 = zext i8 %38 to i32, !dbg !4910
  %xor23 = xor i32 %conv22, 92, !dbg !4910
  %conv24 = trunc i32 %xor23 to i8, !dbg !4910
  store i8 %conv24, ptr %arrayidx21, align 1, !dbg !4910
  br label %for.inc, !dbg !4911

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4, !dbg !4912
  %inc = add i32 %39, 1, !dbg !4912
  store i32 %inc, ptr %i, align 4, !dbg !4912
  br label %for.cond, !dbg !4913, !llvm.loop !4914

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %shash, align 8, !dbg !4918
  %call25 = call i32 @crypto_shash_init(ptr noundef %40) #16, !dbg !4919
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4919
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !4919

cond.true:                                        ; preds = %for.end
  br label %cond.end50, !dbg !4919

cond.false:                                       ; preds = %for.end
  %41 = load ptr, ptr %shash, align 8, !dbg !4920
  %42 = load ptr, ptr %ipad, align 8, !dbg !4921
  %43 = load i32, ptr %bs, align 4, !dbg !4922
  %call27 = call i32 @crypto_shash_update(ptr noundef %41, ptr noundef %42, i32 noundef %43) #16, !dbg !4923
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4923
  br i1 %tobool28, label %cond.true29, label %cond.false30, !dbg !4923

cond.true29:                                      ; preds = %cond.false
  br label %cond.end48, !dbg !4923

cond.false30:                                     ; preds = %cond.false
  %44 = load ptr, ptr %shash, align 8, !dbg !4924
  %45 = load ptr, ptr %ipad, align 8, !dbg !4925
  %call31 = call i32 @crypto_shash_export(ptr noundef %44, ptr noundef %45) #16, !dbg !4926
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4926
  br i1 %tobool32, label %cond.true33, label %cond.false34, !dbg !4926

cond.true33:                                      ; preds = %cond.false30
  br label %cond.end46, !dbg !4926

cond.false34:                                     ; preds = %cond.false30
  %46 = load ptr, ptr %shash, align 8, !dbg !4927
  %call35 = call i32 @crypto_shash_init(ptr noundef %46) #16, !dbg !4928
  %tobool36 = icmp ne i32 %call35, 0, !dbg !4928
  br i1 %tobool36, label %cond.true37, label %cond.false38, !dbg !4928

cond.true37:                                      ; preds = %cond.false34
  br label %cond.end44, !dbg !4928

cond.false38:                                     ; preds = %cond.false34
  %47 = load ptr, ptr %shash, align 8, !dbg !4929
  %48 = load ptr, ptr %opad, align 8, !dbg !4930
  %49 = load i32, ptr %bs, align 4, !dbg !4931
  %call39 = call i32 @crypto_shash_update(ptr noundef %47, ptr noundef %48, i32 noundef %49) #16, !dbg !4932
  %tobool40 = icmp ne i32 %call39, 0, !dbg !4932
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4932

cond.true41:                                      ; preds = %cond.false38
  br label %cond.end, !dbg !4932

cond.false42:                                     ; preds = %cond.false38
  %50 = load ptr, ptr %shash, align 8, !dbg !4933
  %51 = load ptr, ptr %opad, align 8, !dbg !4934
  %call43 = call i32 @crypto_shash_export(ptr noundef %50, ptr noundef %51) #16, !dbg !4935
  br label %cond.end, !dbg !4932

cond.end:                                         ; preds = %cond.false42, %cond.true41
  %cond = phi i32 [ %call39, %cond.true41 ], [ %call43, %cond.false42 ], !dbg !4932
  br label %cond.end44, !dbg !4928

cond.end44:                                       ; preds = %cond.end, %cond.true37
  %cond45 = phi i32 [ %call35, %cond.true37 ], [ %cond, %cond.end ], !dbg !4928
  br label %cond.end46, !dbg !4926

cond.end46:                                       ; preds = %cond.end44, %cond.true33
  %cond47 = phi i32 [ %call31, %cond.true33 ], [ %cond45, %cond.end44 ], !dbg !4926
  br label %cond.end48, !dbg !4923

cond.end48:                                       ; preds = %cond.end46, %cond.true29
  %cond49 = phi i32 [ %call27, %cond.true29 ], [ %cond47, %cond.end46 ], !dbg !4923
  br label %cond.end50, !dbg !4919

cond.end50:                                       ; preds = %cond.end48, %cond.true
  %cond51 = phi i32 [ %call25, %cond.true ], [ %cond49, %cond.end48 ], !dbg !4919
  store i32 %cond51, ptr %retval, align 4, !dbg !4936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup52, !dbg !4936

cleanup52:                                        ; preds = %cond.end50, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 376, ptr %__shash_desc) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %opad) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %ipad) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 4, ptr %ss) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 4, ptr %ds) #18, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 4, ptr %bs) #18, !dbg !4937
  %52 = load i32, ptr %retval, align 4, !dbg !4937
  ret i32 %52, !dbg !4937
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_init_tfm(ptr noundef %parent) #2 align 16 !dbg !4938 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %inst = alloca ptr, align 8
  %spawn = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4940, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #18, !dbg !4946
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !4941, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 8, ptr %inst) #18, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %inst, metadata !4942, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4950
  %call = call ptr @shash_alg_instance(ptr noundef %0) #16, !dbg !4951
  store ptr %call, ptr %inst, align 8, !dbg !4949
  call void @llvm.lifetime.start.p0(i64 8, ptr %spawn) #18, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %spawn, metadata !4943, metadata !DIExpression()), !dbg !4953
  %1 = load ptr, ptr %inst, align 8, !dbg !4954
  %call1 = call ptr @shash_instance_ctx(ptr noundef %1) #16, !dbg !4955
  store ptr %call1, ptr %spawn, align 8, !dbg !4953
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4944, metadata !DIExpression()), !dbg !4957
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4958
  %call2 = call ptr @hmac_ctx(ptr noundef %2) #16, !dbg !4959
  store ptr %call2, ptr %ctx, align 8, !dbg !4957
  %3 = load ptr, ptr %spawn, align 8, !dbg !4960
  %call3 = call ptr @crypto_spawn_shash(ptr noundef %3) #16, !dbg !4961
  store ptr %call3, ptr %hash, align 8, !dbg !4962
  %4 = load ptr, ptr %hash, align 8, !dbg !4963
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !4965
  br i1 %call4, label %if.then, label %if.end, !dbg !4966

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %hash, align 8, !dbg !4967
  %call5 = call i64 @PTR_ERR(ptr noundef %5) #16, !dbg !4968
  %conv = trunc i64 %call5 to i32, !dbg !4968
  store i32 %conv, ptr %retval, align 4, !dbg !4969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4969

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %hash, align 8, !dbg !4970
  %call6 = call i32 @crypto_shash_descsize(ptr noundef %6) #16, !dbg !4971
  %conv7 = zext i32 %call6 to i64, !dbg !4971
  %add = add i64 8, %conv7, !dbg !4972
  %conv8 = trunc i64 %add to i32, !dbg !4973
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !4974
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 0, !dbg !4975
  store i32 %conv8, ptr %descsize, align 8, !dbg !4976
  %8 = load ptr, ptr %hash, align 8, !dbg !4977
  %9 = load ptr, ptr %ctx, align 8, !dbg !4978
  %hash9 = getelementptr inbounds %struct.hmac_ctx, ptr %9, i32 0, i32 0, !dbg !4979
  store ptr %8, ptr %hash9, align 8, !dbg !4980
  store i32 0, ptr %retval, align 4, !dbg !4981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4981

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 8, ptr %spawn) #18, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 8, ptr %inst) #18, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #18, !dbg !4982
  %10 = load i32, ptr %retval, align 4, !dbg !4982
  ret i32 %10, !dbg !4982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hmac_clone_tfm(ptr noundef %dst, ptr noundef %src) #2 align 16 !dbg !4983 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %sctx = alloca ptr, align 8
  %dctx = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4985, metadata !DIExpression()), !dbg !4990
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4986, metadata !DIExpression()), !dbg !4991
  call void @llvm.lifetime.start.p0(i64 8, ptr %sctx) #18, !dbg !4992
  call void @llvm.dbg.declare(metadata ptr %sctx, metadata !4987, metadata !DIExpression()), !dbg !4993
  %0 = load ptr, ptr %src.addr, align 8, !dbg !4994
  %call = call ptr @hmac_ctx(ptr noundef %0) #16, !dbg !4995
  store ptr %call, ptr %sctx, align 8, !dbg !4993
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #18, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !4988, metadata !DIExpression()), !dbg !4997
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !4998
  %call1 = call ptr @hmac_ctx(ptr noundef %1) #16, !dbg !4999
  store ptr %call1, ptr %dctx, align 8, !dbg !4997
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #18, !dbg !5000
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !4989, metadata !DIExpression()), !dbg !5001
  %2 = load ptr, ptr %sctx, align 8, !dbg !5002
  %hash2 = getelementptr inbounds %struct.hmac_ctx, ptr %2, i32 0, i32 0, !dbg !5003
  %3 = load ptr, ptr %hash2, align 8, !dbg !5003
  %call3 = call ptr @crypto_clone_shash(ptr noundef %3) #16, !dbg !5004
  store ptr %call3, ptr %hash, align 8, !dbg !5005
  %4 = load ptr, ptr %hash, align 8, !dbg !5006
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !5008
  br i1 %call4, label %if.then, label %if.end, !dbg !5009

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %hash, align 8, !dbg !5010
  %call5 = call i64 @PTR_ERR(ptr noundef %5) #16, !dbg !5011
  %conv = trunc i64 %call5 to i32, !dbg !5011
  store i32 %conv, ptr %retval, align 4, !dbg !5012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5012

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %hash, align 8, !dbg !5013
  %7 = load ptr, ptr %dctx, align 8, !dbg !5014
  %hash6 = getelementptr inbounds %struct.hmac_ctx, ptr %7, i32 0, i32 0, !dbg !5015
  store ptr %6, ptr %hash6, align 8, !dbg !5016
  store i32 0, ptr %retval, align 4, !dbg !5017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5017

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #18, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #18, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 8, ptr %sctx) #18, !dbg !5018
  %8 = load i32, ptr %retval, align 4, !dbg !5018
  ret i32 %8, !dbg !5018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hmac_exit_tfm(ptr noundef %parent) #2 align 16 !dbg !5019 {
entry:
  %parent.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5021, metadata !DIExpression()), !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !5024
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5022, metadata !DIExpression()), !dbg !5025
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5026
  %call = call ptr @hmac_ctx(ptr noundef %0) #16, !dbg !5027
  store ptr %call, ptr %ctx, align 8, !dbg !5025
  %1 = load ptr, ptr %ctx, align 8, !dbg !5028
  %hash = getelementptr inbounds %struct.hmac_ctx, ptr %1, i32 0, i32 0, !dbg !5029
  %2 = load ptr, ptr %hash, align 8, !dbg !5029
  call void @crypto_free_shash(ptr noundef %2) #16, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !5031
  ret void, !dbg !5031
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5032 dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5033 dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5036 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5038, metadata !DIExpression()), !dbg !5043
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5039, metadata !DIExpression()), !dbg !5044
  %0 = load i64, ptr %size.addr, align 8, !dbg !5045
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5046
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5047

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5048
  %tobool = icmp ne i64 %2, 0, !dbg !5048
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5049

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5040, metadata !DIExpression()), !dbg !5051
  %3 = load i64, ptr %size.addr, align 8, !dbg !5052
  %cmp = icmp ugt i64 %3, 8192, !dbg !5054
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5055

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5056
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5057
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5058
  store ptr %call, ptr %retval, align 8, !dbg !5059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5059

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5060
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5060
  store i32 %call2, ptr %index, align 4, !dbg !5061
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5062
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5063
  %9 = ptrtoint ptr %8 to i64, !dbg !5063
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5064
  %idxprom = zext i32 %call3 to i64, !dbg !5065
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5065
  %10 = load i32, ptr %index, align 4, !dbg !5066
  %idxprom4 = zext i32 %10 to i64, !dbg !5065
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5065
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5065
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5067
  %13 = load i64, ptr %size.addr, align 8, !dbg !5068
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5069
  store ptr %call6, ptr %retval, align 8, !dbg !5070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5070

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5071
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5072
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5073
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5074
  store ptr %call8, ptr %retval, align 8, !dbg !5075
  br label %return, !dbg !5075

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5076
  ret ptr %16, !dbg !5076
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5077 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5082, metadata !DIExpression()), !dbg !5084
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5083, metadata !DIExpression()), !dbg !5085
  %0 = load i64, ptr %size.addr, align 8, !dbg !5086
  %tobool = icmp ne i64 %0, 0, !dbg !5086
  br i1 %tobool, label %if.end, label %if.then, !dbg !5088

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5090
  %cmp = icmp ule i64 %1, 8, !dbg !5092
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5093

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5094
  br label %return, !dbg !5094

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5095
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5097
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5098

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5099
  %cmp4 = icmp ule i64 %3, 96, !dbg !5100
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5101

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5103
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5105
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5106

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5107
  %cmp9 = icmp ule i64 %5, 192, !dbg !5108
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5109

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5111
  %cmp12 = icmp ule i64 %6, 8, !dbg !5113
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5114

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp15 = icmp ule i64 %7, 16, !dbg !5118
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5119

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5121
  %cmp18 = icmp ule i64 %8, 32, !dbg !5123
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5124

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5126
  %cmp21 = icmp ule i64 %9, 64, !dbg !5128
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5129

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5131
  %cmp24 = icmp ule i64 %10, 128, !dbg !5133
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5134

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5136
  %cmp27 = icmp ule i64 %11, 256, !dbg !5138
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5139

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp30 = icmp ule i64 %12, 512, !dbg !5143
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5144

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5146
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5148
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5149

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5151
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5153
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5154

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5156
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5158
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5159

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5161
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5163
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5164

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5166
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5168
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5169

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5171
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5173
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5174

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5176
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5178
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5179

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5181
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5183
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5184

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5186
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5188
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5189

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5191
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5193
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5194

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5196
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5198
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5199

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5201
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5203
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5204

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5205
  br label %return, !dbg !5205

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5206, !range !5208, !noundef !493
  %tobool69 = trunc i8 %25 to i1, !dbg !5206
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5209

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5210

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !5211, !srcloc !5214
  unreachable, !dbg !5211

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5215

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5216

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5217

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5219

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5217

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #18, !dbg !5221, !srcloc !5223
  br label %do.end75, !dbg !5221

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5217

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5225
  ret i32 %26, !dbg !5225
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5226 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5232 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5236, metadata !DIExpression()), !dbg !5238
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5237, metadata !DIExpression()), !dbg !5239
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5240
  %and = and i32 %0, 17, !dbg !5240
  %cmp = icmp eq i32 %and, 0, !dbg !5240
  %lnot = xor i1 %cmp, true, !dbg !5240
  %lnot1 = xor i1 %lnot, true, !dbg !5240
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5240
  %conv = sext i32 %lnot.ext to i64, !dbg !5240
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5240
  %tobool = icmp ne i64 %expval, 0, !dbg !5240
  br i1 %tobool, label %if.then, label %if.end, !dbg !5242

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5243
  br label %return, !dbg !5243

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5244
  %and2 = and i32 %1, 1, !dbg !5246
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5246
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5247

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5251
  ret i32 %2, !dbg !5251
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5252 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5253 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_instance_ctx(ptr noundef %inst) #6 align 16 !dbg !5254 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !5260
  %__ctx = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 4, !dbg !5261
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !5260
  ret ptr %arraydecay, !dbg !5262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_alg(ptr noundef %alg) #6 align 16 !dbg !5263 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5267, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5268, metadata !DIExpression()), !dbg !5271
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5271
  store ptr %0, ptr %__mptr, align 8, !dbg !5271
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5271
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !5271
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5272
  %2 = load ptr, ptr %tmp, align 8, !dbg !5271
  ret ptr %2, !dbg !5273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %alg) #6 align 16 !dbg !5274 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5278
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 7, !dbg !5279
  %1 = load ptr, ptr %setkey, align 8, !dbg !5279
  %cmp = icmp ne ptr %1, @shash_no_setkey, !dbg !5280
  ret i1 %cmp, !dbg !5281
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @shash_no_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_ctx_aligned(ptr noundef %tfm) #6 align 16 !dbg !5282 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5288
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !5289
  %call = call ptr @crypto_tfm_ctx_aligned(ptr noundef %base) #16, !dbg !5290
  ret ptr %call, !dbg !5291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx_aligned(ptr noundef %tfm) #6 align 16 !dbg !5292 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5298
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5299
  %call = call i32 @crypto_tfm_alg_alignmask(ptr noundef %1) #16, !dbg !5300
  %add = add i32 %call, 1, !dbg !5301
  %call1 = call ptr @crypto_tfm_ctx_align(ptr noundef %0, i32 noundef %add) #16, !dbg !5302
  ret ptr %call1, !dbg !5303
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx_align(ptr noundef %tfm, i32 noundef %align) #6 align 16 !dbg !5304 {
entry:
  %tfm.addr = alloca ptr, align 8
  %align.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5308, metadata !DIExpression()), !dbg !5310
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5309, metadata !DIExpression()), !dbg !5311
  %0 = load i32, ptr %align.addr, align 4, !dbg !5312
  %call = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !5314
  %cmp = icmp ule i32 %0, %call, !dbg !5315
  br i1 %cmp, label %if.then, label %if.end, !dbg !5316

if.then:                                          ; preds = %entry
  store i32 1, ptr %align.addr, align 4, !dbg !5317
  br label %if.end, !dbg !5318

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5319
  %call1 = call ptr @crypto_tfm_ctx(ptr noundef %1) #16, !dbg !5319
  %2 = ptrtoint ptr %call1 to i64, !dbg !5319
  %3 = load i32, ptr %align.addr, align 4, !dbg !5319
  %conv = zext i32 %3 to i64, !dbg !5319
  %sub = sub i64 %conv, 1, !dbg !5319
  %add = add i64 %2, %sub, !dbg !5319
  %4 = load i32, ptr %align.addr, align 4, !dbg !5319
  %conv2 = zext i32 %4 to i64, !dbg !5319
  %sub3 = sub i64 %conv2, 1, !dbg !5319
  %not = xor i64 %sub3, -1, !dbg !5319
  %and = and i64 %add, %not, !dbg !5319
  %5 = inttoptr i64 %and to ptr, !dbg !5319
  ret ptr %5, !dbg !5320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_alignmask(ptr noundef %tfm) #6 align 16 !dbg !5321 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5327
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5328
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5328
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5, !dbg !5329
  %2 = load i32, ptr %cra_alignmask, align 4, !dbg !5329
  ret i32 %2, !dbg !5330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx(ptr noundef %tfm) #6 align 16 !dbg !5331 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5335
  %__crt_ctx = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5, !dbg !5336
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__crt_ctx, i64 0, i64 0, !dbg !5335
  ret ptr %arraydecay, !dbg !5337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_desc_ctx(ptr noundef %desc) #6 align 16 !dbg !5338 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5344
  %__ctx = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 1, !dbg !5345
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !5344
  ret ptr %arraydecay, !dbg !5346
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5347 dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_digestsize(ptr noundef %tfm) #6 align 16 !dbg !5348 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5354
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #16, !dbg !5355
  %1 = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 12, !dbg !5356
  %digestsize = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 0, !dbg !5356
  %2 = load i32, ptr %digestsize, align 8, !dbg !5356
  ret i32 %2, !dbg !5357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_statesize(ptr noundef %tfm) #6 align 16 !dbg !5358 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5362
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #16, !dbg !5363
  %1 = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 12, !dbg !5364
  %statesize = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1, !dbg !5364
  %2 = load i32, ptr %statesize, align 4, !dbg !5364
  ret i32 %2, !dbg !5365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5366 dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_import(ptr noundef %desc, ptr noundef %in) #6 align 16 !dbg !5367 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5369, metadata !DIExpression()), !dbg !5372
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !5370, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #18, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5371, metadata !DIExpression()), !dbg !5375
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5376
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5377
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5377
  store ptr %1, ptr %tfm, align 8, !dbg !5375
  %2 = load ptr, ptr %tfm, align 8, !dbg !5378
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #16, !dbg !5380
  %and = and i32 %call, 1, !dbg !5381
  %tobool = icmp ne i32 %and, 0, !dbg !5381
  br i1 %tobool, label %if.then, label %if.end, !dbg !5382

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !5384
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #16, !dbg !5385
  %import = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 6, !dbg !5386
  %4 = load ptr, ptr %import, align 8, !dbg !5386
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5387
  %6 = load ptr, ptr %in.addr, align 8, !dbg !5388
  %call3 = call i32 %4(ptr noundef %5, ptr noundef %6) #16, !dbg !5385
  store i32 %call3, ptr %retval, align 4, !dbg !5389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5389

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #18, !dbg !5390
  %7 = load i32, ptr %retval, align 4, !dbg !5390
  ret i32 %7, !dbg !5390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5391 dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_alg(ptr noundef %tfm) #6 align 16 !dbg !5392 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5398
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !5399
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !5400
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5400
  %call1 = call ptr @__crypto_shash_alg(ptr noundef %1) #16, !dbg !5401
  ret ptr %call1, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_tfm(ptr noundef %tfm) #6 align 16 !dbg !5403 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5409
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !5410
  ret ptr %base, !dbg !5411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_get_flags(ptr noundef %tfm) #6 align 16 !dbg !5412 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5418
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !5419
  %call1 = call i32 @crypto_tfm_get_flags(ptr noundef %call) #16, !dbg !5420
  ret i32 %call1, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_get_flags(ptr noundef %tfm) #6 align 16 !dbg !5422 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5428
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 1, !dbg !5429
  %1 = load i32, ptr %crt_flags, align 4, !dbg !5429
  ret i32 %1, !dbg !5430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_export(ptr noundef %desc, ptr noundef %out) #6 align 16 !dbg !5431 {
entry:
  %desc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5433, metadata !DIExpression()), !dbg !5435
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5434, metadata !DIExpression()), !dbg !5436
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5437
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5438
  %1 = load ptr, ptr %tfm, align 8, !dbg !5438
  %call = call ptr @crypto_shash_alg(ptr noundef %1) #16, !dbg !5439
  %export = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 5, !dbg !5440
  %2 = load ptr, ptr %export, align 8, !dbg !5440
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !5441
  %4 = load ptr, ptr %out.addr, align 8, !dbg !5442
  %call1 = call i32 %2(ptr noundef %3, ptr noundef %4) #16, !dbg !5439
  ret i32 %call1, !dbg !5443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hmac_ctx(ptr noundef %tfm) #6 align 16 !dbg !5444 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5450
  %call = call ptr @crypto_shash_ctx_aligned(ptr noundef %0) #16, !dbg !5451
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5452
  %call1 = call i32 @crypto_shash_statesize(ptr noundef %1) #16, !dbg !5453
  %mul = mul i32 %call1, 2, !dbg !5454
  %idx.ext = zext i32 %mul to i64, !dbg !5455
  %add.ptr = getelementptr i8, ptr %call, i64 %idx.ext, !dbg !5455
  %call2 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !5456
  %call3 = call ptr @align_ptr(ptr noundef %add.ptr, i32 noundef %call2) #16, !dbg !5457
  ret ptr %call3, !dbg !5458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @align_ptr(ptr noundef %p, i32 noundef %align) #6 align 16 !dbg !5459 {
entry:
  %p.addr = alloca ptr, align 8
  %align.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5463, metadata !DIExpression()), !dbg !5465
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5464, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5467
  %1 = ptrtoint ptr %0 to i64, !dbg !5467
  %2 = load i32, ptr %align.addr, align 4, !dbg !5467
  %conv = zext i32 %2 to i64, !dbg !5467
  %sub = sub i64 %conv, 1, !dbg !5467
  %add = add i64 %1, %sub, !dbg !5467
  %3 = load i32, ptr %align.addr, align 4, !dbg !5467
  %conv1 = zext i32 %3 to i64, !dbg !5467
  %sub2 = sub i64 %conv1, 1, !dbg !5467
  %not = xor i64 %sub2, -1, !dbg !5467
  %and = and i64 %add, %not, !dbg !5467
  %4 = inttoptr i64 %and to ptr, !dbg !5468
  ret ptr %4, !dbg !5469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_blocksize(ptr noundef %tfm) #6 align 16 !dbg !5470 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5474
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !5475
  %call1 = call i32 @crypto_tfm_alg_blocksize(ptr noundef %call) #16, !dbg !5476
  ret i32 %call1, !dbg !5477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5478 dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_init(ptr noundef %desc) #6 align 16 !dbg !5479 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5481, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #18, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5482, metadata !DIExpression()), !dbg !5485
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5486
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5487
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5487
  store ptr %1, ptr %tfm, align 8, !dbg !5485
  %2 = load ptr, ptr %tfm, align 8, !dbg !5488
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #16, !dbg !5490
  %and = and i32 %call, 1, !dbg !5491
  %tobool = icmp ne i32 %and, 0, !dbg !5491
  br i1 %tobool, label %if.then, label %if.end, !dbg !5492

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !5493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5493

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !5494
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #16, !dbg !5495
  %init = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 0, !dbg !5496
  %4 = load ptr, ptr %init, align 8, !dbg !5496
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5497
  %call3 = call i32 %4(ptr noundef %5) #16, !dbg !5495
  store i32 %call3, ptr %retval, align 4, !dbg !5498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5498

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #18, !dbg !5499
  %6 = load i32, ptr %retval, align 4, !dbg !5499
  ret i32 %6, !dbg !5499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_blocksize(ptr noundef %tfm) #6 align 16 !dbg !5500 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5504
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5505
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5505
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3, !dbg !5506
  %2 = load i32, ptr %cra_blocksize, align 4, !dbg !5506
  ret i32 %2, !dbg !5507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_alg_instance(ptr noundef %shash) #6 align 16 !dbg !5508 {
entry:
  %shash.addr = alloca ptr, align 8
  store ptr %shash, ptr %shash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shash.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  %0 = load ptr, ptr %shash.addr, align 8, !dbg !5514
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !5515
  %call = call ptr @crypto_tfm_alg_instance(ptr noundef %base) #16, !dbg !5516
  %call1 = call ptr @shash_instance(ptr noundef %call) #16, !dbg !5517
  ret ptr %call1, !dbg !5518
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_spawn_shash(ptr noundef %spawn) #6 align 16 !dbg !5519 {
entry:
  %spawn.addr = alloca ptr, align 8
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !5523, metadata !DIExpression()), !dbg !5524
  %0 = load ptr, ptr %spawn.addr, align 8, !dbg !5525
  %base = getelementptr inbounds %struct.crypto_shash_spawn, ptr %0, i32 0, i32 0, !dbg !5526
  %call = call ptr @crypto_spawn_tfm2(ptr noundef %base) #16, !dbg !5527
  ret ptr %call, !dbg !5528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !5529 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5536
  %1 = ptrtoint ptr %0 to i64, !dbg !5536
  %2 = inttoptr i64 %1 to ptr, !dbg !5536
  %3 = ptrtoint ptr %2 to i64, !dbg !5536
  %cmp = icmp uge i64 %3, -4095, !dbg !5536
  %lnot = xor i1 %cmp, true, !dbg !5536
  %lnot1 = xor i1 %lnot, true, !dbg !5536
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5536
  %conv = sext i32 %lnot.ext to i64, !dbg !5536
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5536
  %tobool = icmp ne i64 %expval, 0, !dbg !5536
  ret i1 %tobool, !dbg !5537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !5538 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5544
  %1 = ptrtoint ptr %0 to i64, !dbg !5545
  ret i64 %1, !dbg !5546
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_descsize(ptr noundef %tfm) #6 align 16 !dbg !5547 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5551
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 0, !dbg !5552
  %1 = load i32, ptr %descsize, align 8, !dbg !5552
  ret i32 %1, !dbg !5553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_instance(ptr noundef %inst) #6 align 16 !dbg !5554 {
entry:
  %inst.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !5558, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5559, metadata !DIExpression()), !dbg !5562
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !5562
  store ptr %0, ptr %__mptr, align 8, !dbg !5562
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5562
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !5562
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5563
  %2 = load ptr, ptr %tmp, align 8, !dbg !5562
  ret ptr %2, !dbg !5564
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_alg_instance(ptr noundef %tfm) #6 align 16 !dbg !5565 {
entry:
  %tfm.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5569, metadata !DIExpression()), !dbg !5572
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5573
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5570, metadata !DIExpression()), !dbg !5573
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5573
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5573
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5573
  store ptr %1, ptr %__mptr, align 8, !dbg !5573
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5573
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5573
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5574
  %3 = load ptr, ptr %tmp, align 8, !dbg !5573
  ret ptr %3, !dbg !5575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5576 dso_local ptr @crypto_spawn_tfm2(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5579 dso_local ptr @crypto_clone_shash(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_shash(ptr noundef %tfm) #6 align 16 !dbg !5582 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5586
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5587
  %call = call ptr @crypto_shash_tfm(ptr noundef %1) #16, !dbg !5588
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #16, !dbg !5589
  ret void, !dbg !5590
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5591 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5594 dso_local i32 @crypto_register_template(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!llvm.ident = !{!4325}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hmac_tmpl", scope: !2, file: !3, line: 258, type: !4133, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.hmac.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/hmac\22 -D KBUILD_BASENAME=\22hmac\22 -D KBUILD_MODNAME=\22hmac\22 -D __KBUILD_MODNAME=kmod_hmac -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/hmac.ll crypto/hmac.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !4282, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/hmac.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "337d45c0e0edf63537dcdf921bd98c44")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !92}
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !93, line: 364, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!100 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!101 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!102 = !{!103, !104, !654, !163, !260, !4051, !4059, !4262, !4127, !246}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !106)
!106 = !{!107, !108, !115, !120, !3727, !3753, !3754, !3755, !3756, !3760, !3763, !3764, !3765, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3832, !3836, !3854, !3871, !3872, !3873, !3874, !3883, !3906, !3907, !3910, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3924, !3925, !4011, !4019, !4020, !4021, !4023, !4027, !4028, !4032, !4033, !4034, !4035, !4037, !4038, !4039, !4046, !4047, !4048, !4050}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !105, file: !6, line: 403, baseType: !5, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !105, file: !6, line: 406, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !110, line: 190, size: 128, elements: !111)
!110 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !110, line: 191, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !110, line: 191, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !6, line: 409, baseType: !116, size: 448, offset: 192)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 448, elements: !118)
!117 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!119}
!119 = !DISubrange(count: 56)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !105, file: !6, line: 417, baseType: !121, size: 768, offset: 640)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !122)
!122 = !{!123, !3721, !3722, !3723, !3726}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !121, file: !6, line: 46, baseType: !124, size: 512)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !125, line: 64, size: 512, elements: !126)
!125 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!126 = !{!127, !130, !131, !133, !223, !3607, !3711, !3716, !3717, !3718, !3719, !3720}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !125, line: 65, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !124, file: !125, line: 66, baseType: !109, size: 128, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !124, file: !125, line: 67, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !124, file: !125, line: 68, baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !125, line: 168, size: 768, elements: !136)
!136 = !{!137, !138, !182, !183}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !135, file: !125, line: 169, baseType: !109, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !135, file: !125, line: 170, baseType: !139, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !140, line: 29, baseType: !141)
!140 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !140, line: 17, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 18, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 18, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !144, file: !140, line: 19, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !148, line: 14, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !147, file: !148, line: 15, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !152, line: 44, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !152, line: 14, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 15, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 15, size: 32, elements: !157)
!157 = !{!158, !164, !174}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !156, file: !152, line: 16, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !110, line: 174, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 172, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !160, file: !110, line: 173, baseType: !163, size: 32)
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !152, line: 24, baseType: !165, size: 16)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !152, line: 24, size: 16, elements: !166)
!166 = !{!167, !173}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !165, file: !152, line: 25, baseType: !168, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !169, line: 17, baseType: !170)
!169 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !171, line: 21, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !165, file: !152, line: 26, baseType: !168, size: 8, offset: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !152, line: 28, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !152, line: 28, size: 32, elements: !176)
!176 = !{!177, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !175, file: !152, line: 29, baseType: !178, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !169, line: 19, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !171, line: 24, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !175, file: !152, line: 30, baseType: !178, size: 16, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !135, file: !125, line: 171, baseType: !124, size: 512, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !135, file: !125, line: 172, baseType: !184, size: 64, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !125, line: 133, size: 192, elements: !187)
!187 = !{!188, !195, !200}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !186, file: !125, line: 134, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!163, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !125, line: 135, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!128, !193}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !186, file: !125, line: 136, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!163, !193, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !125, line: 125, size: 20736, elements: !207)
!207 = !{!208, !213, !217, !218, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !206, file: !125, line: 126, baseType: !209, size: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!211 = !{!212}
!212 = !DISubrange(count: 3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !206, file: !125, line: 127, baseType: !214, size: 4096, offset: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 4096, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !206, file: !125, line: 128, baseType: !163, size: 32, offset: 4288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !206, file: !125, line: 129, baseType: !219, size: 16384, offset: 4320)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 16384, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !206, file: !125, line: 130, baseType: !163, size: 32, offset: 20704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !124, file: !125, line: 69, baseType: !224, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !125, line: 116, size: 384, elements: !227)
!227 = !{!228, !232, !261, !3569, !3597, !3601}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !226, file: !125, line: 117, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !132}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !226, file: !125, line: 118, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !236, line: 254, size: 128, elements: !237)
!236 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!237 = !{!238, !253}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !235, file: !236, line: 255, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !132, !247, !210}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !110, line: 66, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !244, line: 73, baseType: !245)
!244 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !244, line: 15, baseType: !246)
!246 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !236, line: 30, size: 128, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !236, line: 31, baseType: !128, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !248, file: !236, line: 32, baseType: !252, size: 16, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !110, line: 24, baseType: !180)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !235, file: !236, line: 256, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!242, !132, !247, !128, !257}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 61, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !244, line: 72, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !244, line: 16, baseType: !260)
!260 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !226, file: !125, line: 119, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !236, line: 84, size: 320, elements: !266)
!266 = !{!267, !268, !272, !3565, !3567}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !236, line: 85, baseType: !128, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !265, file: !236, line: 86, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!252, !132, !247, !163}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !265, file: !236, line: 88, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!252, !132, !276, !163}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !236, line: 175, size: 512, elements: !278)
!278 = !{!279, !280, !281, !282, !3556, !3560, !3561}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !277, file: !236, line: 176, baseType: !248, size: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !277, file: !236, line: 177, baseType: !257, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !277, file: !236, line: 178, baseType: !103, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !277, file: !236, line: 179, baseType: !283, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !288)
!288 = !{!289, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3550, !3551, !3552, !3553, !3554, !3555}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !287, file: !14, line: 473, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !292)
!292 = !{!293, !294, !295, !303, !304, !311, !312, !315, !316, !3329, !3330, !3331, !3332, !3333, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3373, !3376, !3377, !3378, !3387, !3388, !3389, !3390}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !291, file: !14, line: 642, baseType: !252, size: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !291, file: !14, line: 643, baseType: !180, size: 16, offset: 16)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !291, file: !14, line: 644, baseType: !296, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !297, line: 23, baseType: !298)
!297 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 21, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !297, line: 22, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !110, line: 37, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !244, line: 49, baseType: !7)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !291, file: !14, line: 645, baseType: !109, size: 128, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !291, file: !14, line: 646, baseType: !305, size: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !297, line: 28, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 26, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !297, line: 27, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !110, line: 38, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !244, line: 50, baseType: !7)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !291, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !291, file: !14, line: 650, baseType: !313, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !291, file: !14, line: 651, baseType: !313, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !291, file: !14, line: 654, baseType: !317, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !320)
!320 = !{!321, !3154, !3167, !3171, !3175, !3179, !3183, !3187, !3191, !3195, !3199, !3200, !3204, !3208, !3245, !3274, !3278, !3284, !3288, !3292, !3296, !3300, !3304, !3310, !3314}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !319, file: !14, line: 1967, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !290, !325, !7}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !327, line: 82, size: 1536, elements: !328)
!327 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!328 = !{!329, !330, !340, !348, !349, !369, !370, !374, !387, !3137, !3138, !3139, !3140, !3146, !3147, !3148}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !326, file: !327, line: 84, baseType: !7, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !326, file: !327, line: 85, baseType: !331, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !332, line: 275, baseType: !333)
!332 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !332, line: 275, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !333, file: !332, line: 275, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !332, line: 69, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !332, line: 64, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !337, file: !332, line: 65, baseType: !7, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !326, file: !327, line: 86, baseType: !341, size: 128, offset: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !342, line: 38, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !342, line: 39, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !341, file: !342, line: 39, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !326, file: !327, line: 87, baseType: !325, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !326, file: !327, line: 88, baseType: !350, size: 128, offset: 256)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !327, line: 49, size: 128, elements: !351)
!351 = !{!352, !366}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !327, line: 50, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !327, line: 50, size: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !327, line: 51, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !327, line: 51, size: 64, elements: !357)
!357 = !{!358, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !356, file: !327, line: 52, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !169, line: 21, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !171, line: 27, baseType: !7)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !356, file: !327, line: 52, baseType: !359, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !353, file: !327, line: 54, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !169, line: 23, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !171, line: 31, baseType: !365)
!365 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !327, line: 56, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !326, file: !327, line: 89, baseType: !290, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !326, file: !327, line: 91, baseType: !371, size: 256, offset: 448)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !326, file: !327, line: 94, baseType: !375, size: 64, offset: 704)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !376, line: 25, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 26, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 26, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !379, file: !376, line: 28, baseType: !364, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !376, line: 30, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !376, line: 30, size: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !376, line: 31, baseType: !139, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !383, file: !376, line: 32, baseType: !163, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !326, file: !327, line: 95, baseType: !388, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !327, line: 128, size: 1024, align: 512, elements: !391)
!391 = !{!392, !396, !397, !404, !410, !414, !418, !422, !423, !427, !431, !3127, !3131}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !390, file: !327, line: 129, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!163, !325, !7}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !390, file: !327, line: 130, baseType: !393, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !390, file: !327, line: 131, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!163, !401, !403}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !390, file: !327, line: 132, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!163, !401, !7, !128, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !390, file: !327, line: 134, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!163, !401}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !390, file: !327, line: 135, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!163, !325}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !390, file: !327, line: 136, baseType: !419, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !325}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !390, file: !327, line: 137, baseType: !419, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !390, file: !327, line: 138, baseType: !424, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !325, !290}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !390, file: !327, line: 139, baseType: !428, size: 64, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!210, !325, !210, !163}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !390, file: !327, line: 140, baseType: !432, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !3126}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !437, line: 70, size: 256, elements: !438)
!437 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!438 = !{!439, !440, !3122, !3123}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !436, file: !437, line: 71, baseType: !325, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !436, file: !437, line: 72, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !443)
!443 = !{!444, !445, !448, !449, !450, !454, !502, !663, !703, !793, !797, !798, !799, !800, !801, !810, !811, !812, !813, !818, !822, !823, !826, !829, !832, !835, !836, !837, !878, !3053, !3054, !3055, !3056, !3057, !3058, !3061, !3063, !3070, !3071, !3072, !3073, !3074, !3089, !3090, !3091, !3092, !3093, !3096, !3097, !3098, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !442, file: !14, line: 1191, baseType: !109, size: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !442, file: !14, line: 1192, baseType: !446, size: 32, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !110, line: 21, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !110, line: 18, baseType: !359)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !442, file: !14, line: 1193, baseType: !172, size: 8, offset: 160)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !442, file: !14, line: 1194, baseType: !260, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !442, file: !14, line: 1195, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !110, line: 52, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !244, line: 88, baseType: !453)
!453 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !442, file: !14, line: 1196, baseType: !455, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !457)
!457 = !{!458, !459, !460, !466, !470, !474, !478, !479, !480, !490, !494, !495, !496, !498, !499, !500, !501}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !14, line: 2367, baseType: !128, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !456, file: !14, line: 2368, baseType: !163, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !456, file: !14, line: 2376, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!163, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !437, line: 21, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !456, file: !14, line: 2377, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !456, file: !14, line: 2378, baseType: !471, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!325, !455, !163, !128, !103}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !456, file: !14, line: 2380, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !441}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !456, file: !14, line: 2381, baseType: !104, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !14, line: 2382, baseType: !455, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !456, file: !14, line: 2383, baseType: !481, size: 64, offset: 512)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !110, line: 194, size: 64, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !481, file: !110, line: 195, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !110, line: 198, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !110, line: 199, baseType: !484, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !485, file: !110, line: 199, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !456, file: !14, line: 2385, baseType: !491, offset: 576)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !492, line: 206, elements: !493)
!492 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!493 = !{}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !456, file: !14, line: 2386, baseType: !491, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !456, file: !14, line: 2387, baseType: !491, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !456, file: !14, line: 2388, baseType: !497, offset: 576)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, elements: !211)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !456, file: !14, line: 2390, baseType: !491, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !456, file: !14, line: 2391, baseType: !491, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !456, file: !14, line: 2392, baseType: !491, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !456, file: !14, line: 2393, baseType: !491, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !442, file: !14, line: 1197, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !506)
!506 = !{!507, !511, !515, !516, !520, !526, !530, !531, !532, !536, !540, !544, !545, !546, !552, !557, !558, !565, !566, !567, !568, !572, !576, !645, !661, !662}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !505, file: !14, line: 2058, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!290, !441}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !505, file: !14, line: 2059, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !290}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !505, file: !14, line: 2060, baseType: !512, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !505, file: !14, line: 2062, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !290, !163}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !505, file: !14, line: 2063, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!163, !290, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !505, file: !14, line: 2064, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!163, !290}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !505, file: !14, line: 2065, baseType: !512, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !505, file: !14, line: 2066, baseType: !475, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !505, file: !14, line: 2067, baseType: !533, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!163, !441, !163}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !505, file: !14, line: 2068, baseType: !537, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!163, !441, !13}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !505, file: !14, line: 2069, baseType: !541, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!163, !441}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !505, file: !14, line: 2070, baseType: !537, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !505, file: !14, line: 2071, baseType: !541, size: 64, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !505, file: !14, line: 2072, baseType: !547, size: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!163, !325, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !505, file: !14, line: 2073, baseType: !553, size: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!163, !441, !556, !210}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !505, file: !14, line: 2074, baseType: !475, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !505, file: !14, line: 2076, baseType: !559, size: 64, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!163, !562, !325}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !564, line: 54, flags: DIFlagFwdDecl)
!564 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !505, file: !14, line: 2077, baseType: !559, size: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !505, file: !14, line: 2078, baseType: !559, size: 64, offset: 1152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !505, file: !14, line: 2079, baseType: !559, size: 64, offset: 1216)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !505, file: !14, line: 2081, baseType: !569, size: 64, offset: 1280)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!242, !441, !163, !210, !257, !451}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !505, file: !14, line: 2082, baseType: !573, size: 64, offset: 1344)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!242, !441, !163, !128, !257, !451}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !505, file: !14, line: 2083, baseType: !577, size: 64, offset: 1408)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!580, !290}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !609, !610, !611, !612, !628, !629, !630}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !582, file: !19, line: 297, baseType: !485, size: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !582, file: !19, line: 298, baseType: !109, size: 128, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !582, file: !19, line: 299, baseType: !109, size: 128, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !582, file: !19, line: 300, baseType: !109, size: 128, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !582, file: !19, line: 301, baseType: !589, size: 256, offset: 512)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !590, line: 66, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!591 = !{!592, !601, !603, !608}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !589, file: !590, line: 67, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !594, line: 13, baseType: !595)
!594 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !110, line: 181, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 179, size: 64, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !596, file: !110, line: 180, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !169, line: 22, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !171, line: 30, baseType: !453)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !589, file: !590, line: 68, baseType: !602, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !148, line: 23, baseType: !147)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !589, file: !590, line: 70, baseType: !604, size: 32, offset: 96)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !605, line: 15, size: 32, elements: !606)
!605 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !604, file: !605, line: 20, baseType: !159, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !589, file: !590, line: 72, baseType: !109, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !582, file: !19, line: 302, baseType: !139, size: 32, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !582, file: !19, line: 303, baseType: !159, size: 32, offset: 800)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !582, file: !19, line: 304, baseType: !441, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !582, file: !19, line: 305, baseType: !613, size: 64, offset: 896)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !614)
!614 = !{!615, !627}
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !19, line: 69, baseType: !616, size: 32)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !19, line: 69, size: 32, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !616, file: !19, line: 70, baseType: !296, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !616, file: !19, line: 71, baseType: !305, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !616, file: !19, line: 72, baseType: !621, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !622, line: 24, baseType: !623)
!622 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 22, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !622, line: 23, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !622, line: 20, baseType: !302)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !582, file: !19, line: 306, baseType: !451, size: 64, offset: 960)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !582, file: !19, line: 307, baseType: !260, size: 64, offset: 1024)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !582, file: !19, line: 308, baseType: !631, size: 576, offset: 1088)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !632)
!632 = !{!633, !635, !636, !637, !638, !639, !640, !641, !644}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !631, file: !19, line: 206, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !453)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !631, file: !19, line: 207, baseType: !634, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !631, file: !19, line: 208, baseType: !634, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !631, file: !19, line: 209, baseType: !634, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !631, file: !19, line: 210, baseType: !634, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !631, file: !19, line: 211, baseType: !634, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !631, file: !19, line: 212, baseType: !634, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !631, file: !19, line: 213, baseType: !642, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !643, line: 8, baseType: !600)
!643 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !631, file: !19, line: 214, baseType: !642, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !505, file: !14, line: 2085, baseType: !646, size: 64, offset: 1472)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!246, !441, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !651, line: 15, size: 256, elements: !652)
!651 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!652 = !{!653, !655, !656, !657, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !650, file: !651, line: 16, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !110, line: 154, baseType: !7)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !650, file: !651, line: 19, baseType: !163, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !650, file: !651, line: 26, baseType: !260, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !650, file: !651, line: 33, baseType: !260, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !650, file: !651, line: 36, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !505, file: !14, line: 2087, baseType: !646, size: 64, offset: 1536)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !505, file: !14, line: 2089, baseType: !475, size: 64, offset: 1600)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !442, file: !14, line: 1198, baseType: !664, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !667)
!667 = !{!668, !672, !676, !680, !681, !682, !683, !684, !689, !694, !698}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !666, file: !19, line: 325, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!163, !581}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !666, file: !19, line: 326, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!581, !441, !163}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !666, file: !19, line: 327, baseType: !677, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !581}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !666, file: !19, line: 328, baseType: !669, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !666, file: !19, line: 329, baseType: !669, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !666, file: !19, line: 330, baseType: !669, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !666, file: !19, line: 331, baseType: !533, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !666, file: !19, line: 334, baseType: !685, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!688, !290}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !666, file: !19, line: 335, baseType: !690, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!163, !290, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !666, file: !19, line: 337, baseType: !695, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!163, !290, !688}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !666, file: !19, line: 339, baseType: !699, size: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!163, !441, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !442, file: !14, line: 1199, baseType: !704, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !707)
!707 = !{!708, !719, !720, !724, !725, !726, !741, !764, !768, !769, !792}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !706, file: !19, line: 431, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!163, !441, !163, !163, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !715, line: 8, size: 128, elements: !716)
!715 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !714, file: !715, line: 9, baseType: !435, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !714, file: !715, line: 10, baseType: !325, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !706, file: !19, line: 432, baseType: !533, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !706, file: !19, line: 433, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!163, !441, !7}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !706, file: !19, line: 434, baseType: !721, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !706, file: !19, line: 435, baseType: !533, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !706, file: !19, line: 436, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!163, !441, !163, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !731, file: !19, line: 418, baseType: !163, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !731, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !731, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !731, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !731, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !731, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !731, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !731, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !706, file: !19, line: 437, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!163, !441, !613, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !746, file: !19, line: 346, baseType: !163, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !746, file: !19, line: 347, baseType: !363, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !746, file: !19, line: 348, baseType: !363, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !746, file: !19, line: 349, baseType: !363, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !746, file: !19, line: 350, baseType: !363, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !746, file: !19, line: 351, baseType: !363, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !746, file: !19, line: 352, baseType: !363, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !746, file: !19, line: 353, baseType: !599, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !746, file: !19, line: 355, baseType: !599, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !746, file: !19, line: 356, baseType: !163, size: 32, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !746, file: !19, line: 357, baseType: !163, size: 32, offset: 608)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !746, file: !19, line: 358, baseType: !363, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !746, file: !19, line: 359, baseType: !363, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !746, file: !19, line: 360, baseType: !363, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !746, file: !19, line: 361, baseType: !599, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !746, file: !19, line: 362, baseType: !163, size: 32, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !706, file: !19, line: 438, baseType: !765, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!163, !441, !702, !745}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !706, file: !19, line: 440, baseType: !742, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !706, file: !19, line: 441, baseType: !770, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!163, !441, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !774, file: !19, line: 412, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !774, file: !19, line: 413, baseType: !778, size: 1344, offset: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 1344, elements: !211)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !19, line: 398, baseType: !7, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !779, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !779, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !779, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !779, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !779, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !779, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !779, file: !19, line: 406, baseType: !365, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !779, file: !19, line: 407, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !110, line: 132, baseType: !363)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !779, file: !19, line: 408, baseType: !790, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !706, file: !19, line: 442, baseType: !721, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !442, file: !14, line: 1200, baseType: !794, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !442, file: !14, line: 1201, baseType: !260, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !442, file: !14, line: 1202, baseType: !260, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !442, file: !14, line: 1203, baseType: !260, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !442, file: !14, line: 1204, baseType: !325, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !442, file: !14, line: 1205, baseType: !802, size: 320, offset: 896)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !803, line: 48, size: 320, elements: !804)
!803 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!804 = !{!805, !806, !807, !808, !809}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !802, file: !803, line: 49, baseType: !593, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !802, file: !803, line: 55, baseType: !593, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !802, file: !803, line: 57, baseType: !604, size: 32, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !802, file: !803, line: 59, baseType: !602, size: 32, offset: 160)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !802, file: !803, line: 60, baseType: !109, size: 128, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !442, file: !14, line: 1206, baseType: !163, size: 32, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !442, file: !14, line: 1207, baseType: !159, size: 32, offset: 1248)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !442, file: !14, line: 1209, baseType: !103, size: 64, offset: 1280)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !442, file: !14, line: 1211, baseType: !814, size: 64, offset: 1344)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !442, file: !14, line: 1223, baseType: !819, size: 64, offset: 1408)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !342, line: 34, size: 64, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !819, file: !342, line: 35, baseType: !345, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !442, file: !14, line: 1224, baseType: !109, size: 128, offset: 1472)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !442, file: !14, line: 1225, baseType: !824, size: 64, offset: 1600)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !442, file: !14, line: 1226, baseType: !827, size: 64, offset: 1664)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !442, file: !14, line: 1227, baseType: !830, size: 64, offset: 1728)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !442, file: !14, line: 1228, baseType: !833, size: 64, offset: 1792)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !442, file: !14, line: 1229, baseType: !485, size: 128, offset: 1856)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !442, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !442, file: !14, line: 1231, baseType: !838, size: 2496, offset: 2048)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !839)
!839 = !{!840, !841, !842, !844, !876}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !19, line: 522, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !838, file: !19, line: 523, baseType: !802, size: 320, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !838, file: !19, line: 524, baseType: !843, size: 192, offset: 384)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !211)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !838, file: !19, line: 525, baseType: !845, size: 1728, offset: 576)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 1728, elements: !211)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !847)
!847 = !{!848, !868, !869, !870, !871, !872, !873, !874, !875}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !846, file: !19, line: 223, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !851)
!851 = !{!852, !853, !866, !867}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !850, file: !19, line: 446, baseType: !163, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !850, file: !19, line: 447, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !856, file: !19, line: 313, baseType: !533, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !856, file: !19, line: 314, baseType: !533, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !856, file: !19, line: 315, baseType: !533, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !856, file: !19, line: 316, baseType: !533, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !856, file: !19, line: 317, baseType: !669, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !856, file: !19, line: 318, baseType: !669, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !856, file: !19, line: 319, baseType: !669, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !856, file: !19, line: 320, baseType: !699, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !850, file: !19, line: 448, baseType: !104, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !850, file: !19, line: 449, baseType: !849, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !846, file: !19, line: 224, baseType: !163, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !846, file: !19, line: 226, baseType: !109, size: 128, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !846, file: !19, line: 227, baseType: !260, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !846, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !846, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !846, file: !19, line: 230, baseType: !634, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !846, file: !19, line: 231, baseType: !634, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !846, file: !19, line: 232, baseType: !103, size: 64, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !838, file: !19, line: 526, baseType: !877, size: 192, offset: 2304)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 192, elements: !211)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !442, file: !14, line: 1233, baseType: !879, size: 2368, offset: 4544)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !879, file: !14, line: 1185, baseType: !180, size: 16)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !879, file: !14, line: 1186, baseType: !180, size: 16, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !879, file: !14, line: 1187, baseType: !884, size: 2304, offset: 64)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 2304, elements: !211)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !886, line: 12, size: 768, elements: !887)
!886 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!887 = !{!888, !910, !912, !3051, !3052}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !885, file: !886, line: 13, baseType: !889, size: 384)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !890, line: 17, size: 384, elements: !891)
!890 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!891 = !{!892, !893, !894, !901}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !889, file: !890, line: 18, baseType: !163, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !889, file: !890, line: 19, baseType: !163, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !889, file: !890, line: 20, baseType: !895, size: 192, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !896, line: 41, baseType: !897)
!896 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !896, line: 37, size: 192, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !897, file: !896, line: 38, baseType: !139, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !897, file: !896, line: 39, baseType: !109, size: 128, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !889, file: !890, line: 22, baseType: !902, size: 128, align: 64, offset: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !110, line: 232, size: 128, align: 64, elements: !903)
!903 = !{!904, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !110, line: 233, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !902, file: !110, line: 234, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !905}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !885, file: !886, line: 14, baseType: !911, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !885, file: !886, line: 15, baseType: !913, size: 64, offset: 448)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !914, line: 16, size: 64, elements: !915)
!914 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !913, file: !914, line: 17, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !919, line: 746, size: 58368, elements: !920)
!919 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!920 = !{!921, !929, !930, !931, !937, !938, !939, !940, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !1018, !1029, !1124, !1128, !1131, !1162, !1163, !1164, !1165, !1176, !1178, !1179, !1180, !1181, !1182, !1183, !1194, !1195, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1212, !1213, !1220, !1221, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2209, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2224, !2225, !2226, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2258, !2264, !2265, !2266, !2267, !2268, !2272, !2275, !2282, !2287, !2290, !2293, !2296, !2299, !2439, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2479, !2480, !2481, !2490, !2498, !2499, !2500, !2501, !2502, !2507, !2508, !2509, !2512, !2513, !2516, !2519, !2522, !2530, !2533, !2534, !2620, !2621, !2622, !2623, !2624, !2630, !2631, !2632, !2633, !2636, !2637, !2640, !2643, !2644, !2647, !2648, !2649, !2652, !2653, !2654, !2655, !2656, !2657, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2689, !2690, !2696, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2708, !2780, !2782, !2783, !2784, !2785, !2786, !2798, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2828, !2829, !2830}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !918, file: !919, line: 752, baseType: !922, size: 192)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !923, line: 56, size: 192, elements: !924)
!923 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!924 = !{!925, !926, !927, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !923, line: 57, baseType: !260, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !922, file: !923, line: 58, baseType: !260, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !922, file: !923, line: 59, baseType: !359, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !922, file: !923, line: 61, baseType: !359, size: 32, offset: 160)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !918, file: !919, line: 754, baseType: !7, size: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !918, file: !919, line: 767, baseType: !103, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !918, file: !919, line: 768, baseType: !932, size: 32, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !933, line: 113, baseType: !934)
!933 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !933, line: 111, size: 32, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !934, file: !933, line: 112, baseType: !159, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !918, file: !919, line: 770, baseType: !7, size: 32, offset: 352)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !918, file: !919, line: 771, baseType: !7, size: 32, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !918, file: !919, line: 774, baseType: !163, size: 32, offset: 416)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !918, file: !919, line: 775, baseType: !941, size: 128, offset: 448)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !942, line: 58, size: 128, elements: !943)
!942 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!943 = !{!944, !950, !955, !956}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !941, file: !942, line: 59, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !946, line: 60, size: 64, elements: !947)
!946 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !945, file: !946, line: 61, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !942, line: 60, baseType: !951, size: 32, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !942, line: 60, size: 32, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !951, file: !942, line: 61, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !951, file: !942, line: 62, baseType: !159, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !941, file: !942, line: 65, baseType: !178, size: 16, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !941, file: !942, line: 65, baseType: !178, size: 16, offset: 112)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !918, file: !919, line: 776, baseType: !7, size: 32, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !918, file: !919, line: 777, baseType: !260, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !918, file: !919, line: 778, baseType: !917, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !918, file: !919, line: 787, baseType: !163, size: 32, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !918, file: !919, line: 788, baseType: !163, size: 32, offset: 800)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !918, file: !919, line: 790, baseType: !163, size: 32, offset: 832)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !918, file: !919, line: 792, baseType: !163, size: 32, offset: 864)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !918, file: !919, line: 793, baseType: !163, size: 32, offset: 896)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !918, file: !919, line: 794, baseType: !163, size: 32, offset: 928)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !918, file: !919, line: 795, baseType: !7, size: 32, offset: 960)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !918, file: !919, line: 797, baseType: !968, size: 2048, offset: 1024)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !919, line: 551, size: 2048, elements: !969)
!969 = !{!970, !975, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !997, !1000, !1001, !1002}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !968, file: !919, line: 553, baseType: !971, size: 128)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !919, line: 411, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !971, file: !919, line: 412, baseType: !260, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !971, file: !919, line: 413, baseType: !359, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !968, file: !919, line: 554, baseType: !976, size: 192, align: 64, offset: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !977, line: 5, size: 192, align: 64, elements: !978)
!977 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!978 = !{!979, !980, !982}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !976, file: !977, line: 6, baseType: !260, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !976, file: !977, line: 7, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !976, file: !977, line: 8, baseType: !981, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !968, file: !919, line: 555, baseType: !363, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !968, file: !919, line: 556, baseType: !363, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !968, file: !919, line: 558, baseType: !109, size: 128, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !968, file: !919, line: 559, baseType: !7, size: 32, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !968, file: !919, line: 561, baseType: !363, size: 64, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !968, file: !919, line: 562, baseType: !363, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !968, file: !919, line: 563, baseType: !363, size: 64, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !968, file: !919, line: 564, baseType: !363, size: 64, offset: 832)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !968, file: !919, line: 565, baseType: !599, size: 64, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !968, file: !919, line: 566, baseType: !363, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !968, file: !919, line: 568, baseType: !363, size: 64, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !968, file: !919, line: 571, baseType: !163, size: 32, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !968, file: !919, line: 572, baseType: !996, size: 64, offset: 1152)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !968, file: !919, line: 574, baseType: !998, size: 64, offset: 1216)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !919, line: 49, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !968, file: !919, line: 576, baseType: !998, size: 64, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !968, file: !919, line: 578, baseType: !260, size: 64, offset: 1344)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !968, file: !919, line: 588, baseType: !1003, size: 512, align: 512, offset: 1536)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !919, line: 497, size: 512, align: 512, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1003, file: !919, line: 498, baseType: !363, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1003, file: !919, line: 499, baseType: !363, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1003, file: !919, line: 500, baseType: !363, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1003, file: !919, line: 501, baseType: !359, size: 32, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1003, file: !919, line: 502, baseType: !359, size: 32, offset: 224)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1003, file: !919, line: 503, baseType: !260, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1003, file: !919, line: 504, baseType: !260, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1003, file: !919, line: 505, baseType: !260, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1003, file: !919, line: 506, baseType: !1014, size: 64, align: 64, offset: 448)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !919, line: 445, size: 64, align: 64, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1014, file: !919, line: 446, baseType: !7, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1014, file: !919, line: 447, baseType: !7, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !918, file: !919, line: 798, baseType: !1019, size: 384, offset: 3072)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !919, line: 592, size: 384, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1019, file: !919, line: 593, baseType: !109, size: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1019, file: !919, line: 594, baseType: !260, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1019, file: !919, line: 595, baseType: !260, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1019, file: !919, line: 596, baseType: !7, size: 32, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1019, file: !919, line: 597, baseType: !180, size: 16, offset: 288)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1019, file: !919, line: 598, baseType: !180, size: 16, offset: 304)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1019, file: !919, line: 600, baseType: !1028, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !918, file: !919, line: 799, baseType: !1030, size: 1792, offset: 3456)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !919, line: 610, size: 1792, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1121, !1122}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1030, file: !919, line: 611, baseType: !976, size: 192, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1030, file: !919, line: 618, baseType: !363, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1030, file: !919, line: 619, baseType: !363, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1030, file: !919, line: 620, baseType: !363, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1030, file: !919, line: 621, baseType: !363, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1030, file: !919, line: 622, baseType: !363, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1030, file: !919, line: 629, baseType: !599, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1030, file: !919, line: 630, baseType: !363, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1030, file: !919, line: 631, baseType: !7, size: 32, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1030, file: !919, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1030, file: !919, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1030, file: !919, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1030, file: !919, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1030, file: !919, line: 662, baseType: !1046, size: 512, offset: 704)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1047)
!1047 = !{!1048, !1056, !1057, !1062, !1117, !1118, !1119, !1120}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1046, file: !25, line: 119, baseType: !1049, size: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1050, line: 9, size: 256, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1049, file: !1050, line: 10, baseType: !976, size: 192, align: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1049, file: !1050, line: 11, baseType: !1054, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1055, line: 29, baseType: !599)
!1055 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1046, file: !25, line: 120, baseType: !1054, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1046, file: !25, line: 121, baseType: !1058, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!24, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1046, file: !25, line: 122, baseType: !1063, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1065)
!1065 = !{!1066, !1091, !1092, !1095, !1100, !1101, !1112, !1116}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1064, file: !25, line: 160, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1068, file: !25, line: 216, baseType: !602, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1068, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1068, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1068, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1068, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1068, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1068, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1068, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1068, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1068, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1068, file: !25, line: 227, baseType: !180, size: 16, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1068, file: !25, line: 228, baseType: !180, size: 16, offset: 208)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1068, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1068, file: !25, line: 235, baseType: !1054, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1068, file: !25, line: 236, baseType: !1061, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1068, file: !25, line: 237, baseType: !1054, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1068, file: !25, line: 238, baseType: !1061, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1068, file: !25, line: 239, baseType: !1088, size: 4096, align: 512, offset: 512)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 4096, align: 512, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 8)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1064, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1064, file: !25, line: 162, baseType: !1093, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !110, line: 32, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !244, line: 96, baseType: !163)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1064, file: !25, line: 163, baseType: !1096, size: 32, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !332, line: 274, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !332, line: 274, size: 32, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1097, file: !332, line: 274, baseType: !336, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1064, file: !25, line: 164, baseType: !1061, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1064, file: !25, line: 165, baseType: !1102, size: 128, offset: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1050, line: 14, size: 128, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1102, file: !1050, line: 15, baseType: !1105, size: 128)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !977, line: 26, size: 128, elements: !1106)
!1106 = !{!1107, !1111}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1105, file: !977, line: 27, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !977, line: 12, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1108, file: !977, line: 13, baseType: !981, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1105, file: !977, line: 28, baseType: !981, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1064, file: !25, line: 166, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!1054}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1064, file: !25, line: 167, baseType: !1054, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1046, file: !25, line: 123, baseType: !168, size: 8, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1046, file: !25, line: 124, baseType: !168, size: 8, offset: 456)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1046, file: !25, line: 125, baseType: !168, size: 8, offset: 464)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1046, file: !25, line: 126, baseType: !168, size: 8, offset: 472)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1030, file: !919, line: 671, baseType: !1046, size: 512, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1030, file: !919, line: 679, baseType: !1123, size: 64, offset: 1728)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !918, file: !919, line: 800, baseType: !1125, size: 64, offset: 5248)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !919, line: 800, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !918, file: !919, line: 809, baseType: !1129, size: 64, offset: 5312)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !919, line: 70, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !918, file: !919, line: 825, baseType: !1132, size: 2048, align: 512, offset: 5632)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !919, line: 509, size: 2048, align: 512, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1132, file: !919, line: 511, baseType: !363, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1132, file: !919, line: 512, baseType: !363, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1132, file: !919, line: 513, baseType: !363, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1132, file: !919, line: 514, baseType: !363, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1132, file: !919, line: 515, baseType: !363, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1132, file: !919, line: 516, baseType: !363, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1132, file: !919, line: 518, baseType: !363, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1132, file: !919, line: 519, baseType: !363, size: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1132, file: !919, line: 520, baseType: !599, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1132, file: !919, line: 522, baseType: !363, size: 64, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1132, file: !919, line: 523, baseType: !363, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1132, file: !919, line: 524, baseType: !599, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1132, file: !919, line: 526, baseType: !599, size: 64, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1132, file: !919, line: 527, baseType: !363, size: 64, offset: 832)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1132, file: !919, line: 529, baseType: !363, size: 64, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1132, file: !919, line: 530, baseType: !363, size: 64, offset: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1132, file: !919, line: 531, baseType: !363, size: 64, offset: 1024)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1132, file: !919, line: 532, baseType: !363, size: 64, offset: 1088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1132, file: !919, line: 533, baseType: !363, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1132, file: !919, line: 535, baseType: !363, size: 64, offset: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1132, file: !919, line: 536, baseType: !363, size: 64, offset: 1280)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1132, file: !919, line: 537, baseType: !363, size: 64, offset: 1344)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1132, file: !919, line: 538, baseType: !363, size: 64, offset: 1408)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1132, file: !919, line: 539, baseType: !363, size: 64, offset: 1472)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1132, file: !919, line: 540, baseType: !363, size: 64, offset: 1536)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1132, file: !919, line: 541, baseType: !363, size: 64, offset: 1600)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1132, file: !919, line: 542, baseType: !363, size: 64, offset: 1664)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1132, file: !919, line: 543, baseType: !363, size: 64, offset: 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !918, file: !919, line: 833, baseType: !7, size: 32, offset: 7680)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !918, file: !919, line: 836, baseType: !7, size: 32, offset: 7712)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !918, file: !919, line: 837, baseType: !163, size: 32, offset: 7744)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !918, file: !919, line: 838, baseType: !1166, size: 64, offset: 7808)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1169, line: 19, baseType: !1170)
!1169 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1169, line: 19, size: 64, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1170, file: !1169, line: 19, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 1)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !918, file: !919, line: 839, baseType: !1177, size: 64, offset: 7872)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !918, file: !919, line: 840, baseType: !1168, size: 64, offset: 7936)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !918, file: !919, line: 841, baseType: !103, size: 64, offset: 8000)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !918, file: !919, line: 843, baseType: !180, size: 16, offset: 8064)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !918, file: !919, line: 845, baseType: !180, size: 16, offset: 8080)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !918, file: !919, line: 848, baseType: !163, size: 32, offset: 8096)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !918, file: !919, line: 849, baseType: !1184, size: 32, offset: 8128)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !919, line: 718, size: 32, elements: !1185)
!1185 = !{!1186, !1193}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1184, file: !919, line: 724, baseType: !1187, size: 32)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !919, line: 719, size: 32, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1187, file: !919, line: 720, baseType: !168, size: 8)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1187, file: !919, line: 721, baseType: !168, size: 8, offset: 8)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1187, file: !919, line: 722, baseType: !168, size: 8, offset: 16)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1187, file: !919, line: 723, baseType: !168, size: 8, offset: 24)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1184, file: !919, line: 725, baseType: !359, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !918, file: !919, line: 850, baseType: !109, size: 128, offset: 8192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !918, file: !919, line: 851, baseType: !1196, size: 64, offset: 8320)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !919, line: 60, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !918, file: !919, line: 855, baseType: !260, size: 64, offset: 8384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !918, file: !919, line: 856, baseType: !168, size: 8, offset: 8448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !918, file: !919, line: 857, baseType: !168, size: 8, offset: 8456)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !918, file: !919, line: 858, baseType: !163, size: 32, offset: 8480)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !918, file: !919, line: 859, baseType: !109, size: 128, offset: 8512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !918, file: !919, line: 860, baseType: !163, size: 32, offset: 8640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !918, file: !919, line: 861, baseType: !109, size: 128, offset: 8704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !918, file: !919, line: 873, baseType: !1206, size: 256, offset: 8832)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !919, line: 376, size: 256, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1206, file: !919, line: 381, baseType: !260, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1206, file: !919, line: 384, baseType: !365, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1206, file: !919, line: 389, baseType: !365, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1206, file: !919, line: 392, baseType: !365, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !918, file: !919, line: 875, baseType: !109, size: 128, offset: 9088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !918, file: !919, line: 877, baseType: !1214, size: 320, offset: 9216)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1215, line: 86, size: 320, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1214, file: !1215, line: 87, baseType: !163, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1214, file: !1215, line: 88, baseType: !109, size: 128, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1214, file: !1215, line: 89, baseType: !109, size: 128, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !918, file: !919, line: 878, baseType: !976, size: 192, align: 64, offset: 9536)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !918, file: !919, line: 881, baseType: !1222, size: 64, offset: 9728)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1224)
!1224 = !{!1225, !2128}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !38, line: 734, baseType: !1226, size: 10240)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !38, line: 734, size: 10240, elements: !1227)
!1227 = !{!1228, !1232, !1245, !1992, !1993, !1994, !1995, !1996, !1997, !2004, !2005, !2006, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2045, !2047, !2050, !2097, !2098, !2099, !2102, !2103, !2104, !2107, !2108, !2109, !2115, !2116}
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !38, line: 739, baseType: !1229, size: 512, align: 512)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !38, line: 739, size: 512, align: 512, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1229, file: !38, line: 747, baseType: !159, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1226, file: !38, line: 750, baseType: !1233, size: 128, offset: 512)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1234, line: 218, size: 128, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1235 = !{!1236, !1243, !1244}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1234, line: 219, baseType: !1237, size: 32)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1234, line: 219, size: 32, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1237, file: !1234, line: 220, baseType: !139, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1237, file: !1234, line: 221, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1234, line: 197, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1234, line: 197, elements: !493)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1233, file: !1234, line: 223, baseType: !7, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1233, file: !1234, line: 224, baseType: !103, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1226, file: !38, line: 752, baseType: !1246, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!260, !1249, !260, !260, !260, !260}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1251)
!1251 = !{!1252, !1258, !1259, !1261, !1262, !1263, !1264, !1265, !1317, !1512, !1521, !1522, !1523, !1982, !1983, !1984, !1985, !1987, !1988, !1991}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !14, line: 995, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !14, line: 995, size: 128, elements: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1253, file: !14, line: 996, baseType: !945, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1253, file: !14, line: 997, baseType: !902, size: 128, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1253, file: !14, line: 998, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1250, file: !14, line: 1005, baseType: !139, size: 32, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1250, file: !14, line: 1006, baseType: !1260, size: 32, offset: 160)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !110, line: 156, baseType: !7)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1250, file: !14, line: 1007, baseType: !593, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1250, file: !14, line: 1008, baseType: !589, size: 256, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1250, file: !14, line: 1009, baseType: !451, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1250, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1250, file: !14, line: 1011, baseType: !1266, size: 256, offset: 640)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1267)
!1267 = !{!1268, !1289, !1313, !1314, !1315, !1316}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1266, file: !14, line: 949, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1270, line: 34, baseType: !1271)
!1270 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 25, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1271, file: !1270, line: 26, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1275, line: 27, baseType: !1276)
!1275 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1275, line: 13, size: 64, elements: !1277)
!1277 = !{!1278, !1288}
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !1275, line: 14, baseType: !1279, size: 32)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !1275, line: 14, size: 32, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1279, file: !1275, line: 15, baseType: !159, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !1275, line: 16, baseType: !1283, size: 32)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1275, line: 16, size: 32, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1283, file: !1275, line: 18, baseType: !168, size: 8)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1283, file: !1275, line: 19, baseType: !1287, size: 24, offset: 8)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 24, elements: !211)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1276, file: !1275, line: 26, baseType: !151, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1266, file: !14, line: 950, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1300, !1301, !1302, !1303}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1291, file: !30, line: 61, baseType: !932, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1291, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1291, file: !30, line: 63, baseType: !139, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1291, file: !30, line: 65, baseType: !1297, size: 256, offset: 128)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 256, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 4)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1291, file: !30, line: 66, baseType: !481, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1291, file: !30, line: 68, baseType: !895, size: 192, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1291, file: !30, line: 69, baseType: !902, size: 128, align: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1291, file: !30, line: 70, baseType: !1304, offset: 768)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, elements: !1311)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1305, file: !30, line: 55, baseType: !163, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1305, file: !30, line: 56, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1311 = !{!1312}
!1312 = !DISubrange(count: -1)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1266, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1266, file: !14, line: 952, baseType: !296, size: 32, offset: 160)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1266, file: !14, line: 952, baseType: !296, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1266, file: !14, line: 953, baseType: !163, size: 32, offset: 224)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1250, file: !14, line: 1012, baseType: !1318, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1321, line: 110, size: 1472, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1339, !1340, !1341, !1342, !1343, !1344, !1457, !1458, !1459, !1460, !1461, !1492, !1495, !1499, !1507}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1320, file: !1321, line: 111, baseType: !593, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1320, file: !1321, line: 112, baseType: !296, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1320, file: !1321, line: 113, baseType: !305, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1320, file: !1321, line: 114, baseType: !296, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1320, file: !1321, line: 115, baseType: !305, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1320, file: !1321, line: 116, baseType: !296, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1320, file: !1321, line: 117, baseType: !305, size: 32, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1320, file: !1321, line: 118, baseType: !296, size: 32, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1320, file: !1321, line: 119, baseType: !305, size: 32, offset: 288)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1320, file: !1321, line: 120, baseType: !7, size: 32, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1320, file: !1321, line: 121, baseType: !1334, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1335, line: 24, baseType: !1336)
!1335 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1335, line: 24, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1336, file: !1335, line: 24, baseType: !363, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1320, file: !1321, line: 122, baseType: !1334, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1320, file: !1321, line: 123, baseType: !1334, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1320, file: !1321, line: 124, baseType: !1334, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1320, file: !1321, line: 125, baseType: !1334, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1320, file: !1321, line: 127, baseType: !172, size: 8, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1320, file: !1321, line: 129, baseType: !1345, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1347, line: 195, size: 1728, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1348 = !{!1349, !1350, !1355, !1360, !1361, !1364, !1365, !1370, !1371, !1372, !1373, !1376, !1377, !1378, !1380, !1381, !1421, !1442}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1346, file: !1347, line: 196, baseType: !932, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1346, file: !1347, line: 197, baseType: !1351, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1347, line: 28, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !110, line: 104, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !169, line: 20, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !171, line: 26, baseType: !163)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1347, line: 198, baseType: !1356, size: 192, offset: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1347, line: 198, size: 192, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1356, file: !1347, line: 199, baseType: !109, size: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1356, file: !1347, line: 200, baseType: !976, size: 192, align: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1346, file: !1347, line: 205, baseType: !802, size: 320, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1346, file: !1347, line: 206, baseType: !1362, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1347, line: 206, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1346, file: !1347, line: 207, baseType: !103, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1347, line: 208, baseType: !1366, size: 64, offset: 704)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1347, line: 208, size: 64, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1366, file: !1347, line: 209, baseType: !642, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1366, file: !1347, line: 210, baseType: !642, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1346, file: !1347, line: 212, baseType: !642, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1346, file: !1347, line: 213, baseType: !296, size: 32, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1346, file: !1347, line: 214, baseType: !305, size: 32, offset: 864)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1346, file: !1347, line: 215, baseType: !1374, size: 32, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1347, line: 31, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !110, line: 110, baseType: !359)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1346, file: !1347, line: 216, baseType: !180, size: 16, offset: 928)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1346, file: !1347, line: 217, baseType: !180, size: 16, offset: 944)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1346, file: !1347, line: 221, baseType: !1379, size: 16, offset: 960)
!1379 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1346, file: !1347, line: 228, baseType: !260, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1347, line: 245, baseType: !1382, size: 320, offset: 1088)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1347, line: 245, size: 320, elements: !1383)
!1383 = !{!1384, !1413}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1382, file: !1347, line: 246, baseType: !1385, size: 320)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1347, line: 114, size: 320, elements: !1386)
!1386 = !{!1387, !1388, !1400, !1403, !1412}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1385, file: !1347, line: 116, baseType: !260, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !1347, line: 117, baseType: !1389, size: 64, offset: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !1347, line: 117, size: 64, elements: !1390)
!1390 = !{!1391, !1399}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1347, line: 118, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1389, file: !1347, line: 118, size: 64, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1392, file: !1347, line: 120, baseType: !178, size: 16)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1392, file: !1347, line: 121, baseType: !1396, size: 48, offset: 16)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 48, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 6)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1389, file: !1347, line: 127, baseType: !260, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1385, file: !1347, line: 129, baseType: !1401, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1347, line: 102, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1385, file: !1347, line: 130, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1347, line: 108, size: 192, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1405, file: !1347, line: 109, baseType: !902, size: 128, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1405, file: !1347, line: 110, baseType: !932, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1405, file: !1347, line: 111, baseType: !1410, size: 8, offset: 160)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !110, line: 35, baseType: !1411)
!1411 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1385, file: !1347, line: 131, baseType: !128, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1347, line: 247, baseType: !1414, size: 320)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1347, line: 247, size: 320, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1414, file: !1347, line: 248, baseType: !260, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1414, file: !1347, line: 249, baseType: !260, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !1347, line: 250, baseType: !1401, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1414, file: !1347, line: 251, baseType: !1404, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1414, file: !1347, line: 252, baseType: !210, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1347, line: 260, baseType: !1422, size: 256, offset: 1408)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1347, line: 260, size: 256, elements: !1423)
!1423 = !{!1424, !1430}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1422, file: !1347, line: 261, baseType: !1425, size: 256)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1347, line: 134, size: 256, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1425, file: !1347, line: 135, baseType: !103, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1425, file: !1347, line: 136, baseType: !1429, size: 256)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !1298)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1347, line: 262, baseType: !1431, size: 256)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !1347, line: 262, size: 256, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1431, file: !1347, line: 264, baseType: !109, size: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1431, file: !1347, line: 265, baseType: !1435, size: 128, offset: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1436, line: 22, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1437 = !{!1438, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1435, file: !1436, line: 23, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1436, line: 23, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1435, file: !1436, line: 24, baseType: !260, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1346, file: !1347, line: 280, baseType: !1443, size: 64, offset: 1664)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1347, line: 176, size: 192, elements: !1445)
!1445 = !{!1446, !1455, !1456}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1444, file: !1347, line: 177, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1347, line: 171, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!163, !1345, !1451, !1453, !1345}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1444, file: !1347, line: 178, baseType: !1345, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1444, file: !1347, line: 179, baseType: !1401, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1320, file: !1321, line: 130, baseType: !1345, size: 64, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1320, file: !1321, line: 131, baseType: !1345, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1320, file: !1321, line: 132, baseType: !1345, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1320, file: !1321, line: 135, baseType: !103, size: 64, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1320, file: !1321, line: 137, baseType: !1462, size: 64, offset: 1088)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1464, line: 14, size: 1088, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1465 = !{!1466, !1467, !1476, !1477, !1478, !1479, !1480, !1481}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1463, file: !1464, line: 15, baseType: !932, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1463, file: !1464, line: 17, baseType: !1468, size: 320, offset: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1469, line: 22, size: 320, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1470 = !{!1471, !1472, !1473, !1474}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !1469, line: 23, baseType: !602, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1468, file: !1469, line: 24, baseType: !599, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1468, file: !1469, line: 26, baseType: !109, size: 128, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1468, file: !1469, line: 28, baseType: !1475, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1463, file: !1464, line: 19, baseType: !260, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1463, file: !1464, line: 20, baseType: !593, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1463, file: !1464, line: 23, baseType: !485, size: 128, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1463, file: !1464, line: 24, baseType: !296, size: 32, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1463, file: !1464, line: 29, baseType: !593, size: 64, offset: 704)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1463, file: !1464, line: 36, baseType: !1482, size: 320, offset: 768)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1483, line: 15, size: 320, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !1483, line: 16, baseType: !602, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1482, file: !1483, line: 18, baseType: !163, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1482, file: !1483, line: 19, baseType: !163, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1482, file: !1483, line: 20, baseType: !163, size: 32, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1482, file: !1483, line: 21, baseType: !163, size: 32, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1482, file: !1483, line: 22, baseType: !260, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1482, file: !1483, line: 23, baseType: !260, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1320, file: !1321, line: 138, baseType: !1493, size: 64, offset: 1152)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1320, file: !1321, line: 139, baseType: !1496, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1498, line: 16, flags: DIFlagFwdDecl)
!1498 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1320, file: !1321, line: 140, baseType: !1500, size: 64, offset: 1280)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1321, line: 25, size: 64, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1501, file: !1321, line: 26, baseType: !159, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1501, file: !1321, line: 27, baseType: !163, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1501, file: !1321, line: 28, baseType: !1506, offset: 64)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, elements: !1311)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1321, line: 142, baseType: !1508, size: 128, offset: 1344)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !1321, line: 142, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1508, file: !1321, line: 143, baseType: !163, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1508, file: !1321, line: 144, baseType: !902, size: 128, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1250, file: !14, line: 1013, baseType: !1513, size: 256, offset: 960)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1513, file: !14, line: 971, baseType: !260, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1513, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1513, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1513, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1513, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1513, file: !14, line: 976, baseType: !451, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1250, file: !14, line: 1014, baseType: !714, size: 128, offset: 1216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1250, file: !14, line: 1015, baseType: !290, size: 64, offset: 1344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1250, file: !14, line: 1016, baseType: !1524, size: 64, offset: 1408)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1527)
!1527 = !{!1528, !1529, !1533, !1538, !1542, !1570, !1571, !1577, !1590, !1598, !1602, !1603, !1904, !1905, !1909, !1914, !1915, !1919, !1923, !1929, !1930, !1934, !1935, !1941, !1945, !1949, !1955, !1959, !1963, !1967, !1971, !1972, !1978}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1526, file: !14, line: 1915, baseType: !104, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1526, file: !14, line: 1916, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!451, !1249, !451, !163}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1526, file: !14, line: 1917, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!242, !1249, !210, !257, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1526, file: !14, line: 1918, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!242, !1249, !128, !257, !1537}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1526, file: !14, line: 1919, baseType: !1543, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!242, !1546, !1568}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1555, !1556, !1557, !1558}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1547, file: !14, line: 374, baseType: !1249, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1547, file: !14, line: 375, baseType: !451, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1547, file: !14, line: 376, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1546, !246}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1547, file: !14, line: 377, baseType: !103, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1547, file: !14, line: 378, baseType: !163, size: 32, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1547, file: !14, line: 379, baseType: !178, size: 16, offset: 288)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !14, line: 380, baseType: !1559, size: 64, offset: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !14, line: 380, size: 64, elements: !1560)
!1560 = !{!1561, !1564}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1559, file: !14, line: 386, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1559, file: !14, line: 395, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!242, !103}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1526, file: !14, line: 1920, baseType: !1543, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1526, file: !14, line: 1921, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!163, !1546, !1575, !7}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1526, file: !14, line: 1923, baseType: !1578, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!163, !1249, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1583)
!1583 = !{!1584, !1589}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1582, file: !14, line: 1859, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1410, !1581, !128, !163, !451, !363, !7}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1582, file: !14, line: 1860, baseType: !451, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1526, file: !14, line: 1924, baseType: !1591, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1594, !1249, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1595, line: 59, baseType: !7)
!1595 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1526, file: !14, line: 1925, baseType: !1599, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!246, !1249, !7, !260}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1526, file: !14, line: 1926, baseType: !1599, size: 64, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1526, file: !14, line: 1927, baseType: !1604, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!163, !1249, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1609)
!1609 = !{!1610, !1619, !1620, !1628, !1635, !1636, !1641, !1642, !1647, !1648, !1651, !1897, !1898, !1899, !1900, !1901, !1902}
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !38, line: 628, baseType: !1611, size: 128)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !38, line: 628, size: 128, elements: !1612)
!1612 = !{!1613, !1618}
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !38, line: 629, baseType: !1614, size: 128)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !38, line: 629, size: 128, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1614, file: !38, line: 631, baseType: !260, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1614, file: !38, line: 632, baseType: !260, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1611, file: !38, line: 635, baseType: !902, size: 128, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1608, file: !38, line: 639, baseType: !1222, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1608, file: !38, line: 640, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1622, line: 297, baseType: !1623)
!1622 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1622, line: 297, size: 64, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1623, file: !1622, line: 297, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1627, line: 19, baseType: !260)
!1627 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !38, line: 646, baseType: !1629, size: 64, offset: 256)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !38, line: 646, size: 64, elements: !1630)
!1630 = !{!1631, !1634}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1629, file: !38, line: 647, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !260)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1629, file: !38, line: 648, baseType: !1633, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1608, file: !38, line: 666, baseType: !163, size: 32, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1608, file: !38, line: 667, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1639)
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1638, file: !38, line: 580, baseType: !802, size: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1608, file: !38, line: 670, baseType: !1410, size: 8, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1608, file: !38, line: 681, baseType: !1643, size: 256, offset: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1608, file: !38, line: 678, size: 256, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1643, file: !38, line: 679, baseType: !976, size: 192, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1643, file: !38, line: 680, baseType: !260, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1608, file: !38, line: 689, baseType: !109, size: 128, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1608, file: !38, line: 691, baseType: !1649, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1608, file: !38, line: 694, baseType: !1652, size: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1655, line: 563, size: 1024, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1656 = !{!1657, !1661, !1662, !1666, !1670, !1674, !1861, !1865, !1869, !1873, !1874, !1875, !1879, !1883, !1889, !1893}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1654, file: !1655, line: 564, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1607}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1654, file: !1655, line: 569, baseType: !1658, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1654, file: !1655, line: 571, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!163, !1607, !260}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1654, file: !1655, line: 572, baseType: !1667, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!163, !1607}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1654, file: !1655, line: 578, baseType: !1671, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!163, !1607, !260, !260, !260}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1654, file: !1655, line: 580, baseType: !1675, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1655, line: 512, size: 896, elements: !1681)
!1681 = !{!1682, !1690, !1691, !1698, !1705, !1715, !1854, !1855, !1857, !1859}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1655, line: 513, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !1655, line: 513, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1683, file: !1655, line: 514, baseType: !1607, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1683, file: !1655, line: 515, baseType: !654, size: 32, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1683, file: !1655, line: 516, baseType: !260, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1683, file: !1655, line: 517, baseType: !260, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1683, file: !1655, line: 518, baseType: !260, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1680, file: !1655, line: 520, baseType: !37, size: 32, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1680, file: !1655, line: 522, baseType: !1692, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1627, line: 22, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1627, line: 22, size: 64, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1694, file: !1627, line: 22, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1627, line: 15, baseType: !260)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1680, file: !1655, line: 524, baseType: !1699, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1622, line: 372, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1622, line: 372, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1701, file: !1622, line: 372, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1627, line: 16, baseType: !260)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1655, line: 527, baseType: !1706, size: 64, offset: 512)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !1655, line: 527, size: 64, elements: !1707)
!1707 = !{!1708, !1714}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1706, file: !1655, line: 528, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1627, line: 21, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1627, line: 21, size: 64, elements: !1711)
!1711 = !{!1712}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1710, file: !1627, line: 21, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1627, line: 14, baseType: !260)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1706, file: !1655, line: 529, baseType: !1693, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1680, file: !1655, line: 534, baseType: !1716, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1718)
!1718 = !{!1719, !1720, !1848, !1853}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1717, file: !38, line: 75, baseType: !260, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !38, line: 83, baseType: !1721, size: 320, offset: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !38, line: 83, size: 320, elements: !1722)
!1722 = !{!1723, !1744, !1758, !1762, !1847}
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !38, line: 84, baseType: !1724, size: 320)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !38, line: 84, size: 320, elements: !1725)
!1725 = !{!1726, !1737, !1738, !1743}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !38, line: 90, baseType: !1727, size: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1724, file: !38, line: 90, size: 128, elements: !1728)
!1728 = !{!1729, !1730, !1735, !1736}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1727, file: !38, line: 91, baseType: !109, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !38, line: 94, baseType: !1731, size: 128)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1727, file: !38, line: 94, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1731, file: !38, line: 96, baseType: !103, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1731, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1727, file: !38, line: 102, baseType: !109, size: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1727, file: !38, line: 103, baseType: !109, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1724, file: !38, line: 106, baseType: !286, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !38, line: 107, baseType: !1739, size: 64, offset: 192)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1724, file: !38, line: 107, size: 64, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1739, file: !38, line: 108, baseType: !260, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1739, file: !38, line: 109, baseType: !260, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1724, file: !38, line: 117, baseType: !260, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !38, line: 119, baseType: !1745, size: 320)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !38, line: 119, size: 320, elements: !1746)
!1746 = !{!1747, !1748, !1751, !1752, !1753}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1745, file: !38, line: 124, baseType: !260, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1745, file: !38, line: 125, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1745, file: !38, line: 126, baseType: !260, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1745, file: !38, line: 127, baseType: !260, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !38, line: 128, baseType: !1754, size: 64, offset: 256)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !38, line: 128, size: 64, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1754, file: !38, line: 133, baseType: !260, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1754, file: !38, line: 138, baseType: !593, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !38, line: 141, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !38, line: 141, size: 64, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1759, file: !38, line: 142, baseType: !260, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !38, line: 144, baseType: !1763, size: 128)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !38, line: 144, size: 128, elements: !1764)
!1764 = !{!1765, !1846}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1763, file: !38, line: 146, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1768)
!1768 = !{!1769, !1779, !1800, !1811, !1812, !1813, !1814, !1828, !1829, !1830}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1767, file: !54, line: 127, baseType: !1770, size: 384)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1771)
!1771 = !{!1772, !1773, !1775, !1776, !1777, !1778}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1770, file: !54, line: 22, baseType: !260, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1770, file: !54, line: 23, baseType: !1774, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1770, file: !54, line: 24, baseType: !1774, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1770, file: !54, line: 25, baseType: !260, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1770, file: !54, line: 26, baseType: !260, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1770, file: !54, line: 27, baseType: !260, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1767, file: !54, line: 128, baseType: !1780, size: 128, offset: 384)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1781, line: 105, size: 128, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1780, file: !1781, line: 110, baseType: !260, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1780, file: !1781, line: 118, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1781, line: 95, size: 448, elements: !1787)
!1787 = !{!1788, !1789, !1795, !1796, !1797, !1798, !1799}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1786, file: !1781, line: 96, baseType: !593, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1786, file: !1781, line: 97, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1781, line: 60, baseType: !1792)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1786, file: !1781, line: 98, baseType: !1790, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1786, file: !1781, line: 99, baseType: !1410, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1786, file: !1781, line: 100, baseType: !1410, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1786, file: !1781, line: 101, baseType: !902, size: 128, align: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1786, file: !1781, line: 102, baseType: !1794, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1767, file: !54, line: 129, baseType: !1801, size: 256, offset: 512)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1802, line: 26, size: 256, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1801, file: !1802, line: 27, baseType: !7, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1801, file: !1802, line: 28, baseType: !1806, size: 192, offset: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1807, line: 43, size: 192, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !1807, line: 44, baseType: !602, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1806, file: !1807, line: 45, baseType: !109, size: 128, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1767, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1767, file: !54, line: 132, baseType: !260, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1767, file: !54, line: 133, baseType: !1815, size: 64, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1818)
!1818 = !{!1819, !1823, !1824}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1817, file: !54, line: 83, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1716}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1817, file: !54, line: 89, baseType: !1675, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1817, file: !54, line: 100, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!163, !1766, !260, !260, !163}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1767, file: !54, line: 134, baseType: !103, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1767, file: !54, line: 135, baseType: !163, size: 32, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !54, line: 136, baseType: !1831, size: 128, offset: 1088)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !54, line: 136, size: 128, elements: !1832)
!1832 = !{!1833, !1839}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1831, file: !54, line: 137, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1835, line: 6, size: 128, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1834, file: !1835, line: 7, baseType: !363, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1834, file: !1835, line: 8, baseType: !363, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !54, line: 138, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !54, line: 138, elements: !1841)
!1841 = !{!1842, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1840, file: !54, line: 138, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !54, line: 138, elements: !493)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1840, file: !54, line: 138, baseType: !1845)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, elements: !1311)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1763, file: !38, line: 147, baseType: !103, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1721, file: !38, line: 161, baseType: !902, size: 128, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !38, line: 164, baseType: !1849, size: 32, offset: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !38, line: 164, size: 32, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1849, file: !38, line: 169, baseType: !159, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1849, file: !38, line: 177, baseType: !7, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1717, file: !38, line: 181, baseType: !159, size: 32, offset: 416)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1680, file: !1655, line: 535, baseType: !1716, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1680, file: !1655, line: 541, baseType: !1856, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1680, file: !1655, line: 545, baseType: !1858, size: 64, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1680, file: !1655, line: 549, baseType: !1860, size: 64, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1622, line: 520, baseType: !1716)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1654, file: !1655, line: 581, baseType: !1862, size: 64, offset: 384)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1678, !1679, !7}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1654, file: !1655, line: 582, baseType: !1866, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1678, !1679, !260, !260}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1654, file: !1655, line: 584, baseType: !1870, size: 64, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!260, !1607}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1654, file: !1655, line: 588, baseType: !1675, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1654, file: !1655, line: 591, baseType: !1675, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1654, file: !1655, line: 597, baseType: !1876, size: 64, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!163, !1607, !260, !103, !163, !163}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1654, file: !1655, line: 603, baseType: !1880, size: 64, offset: 768)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!128, !1607}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1654, file: !1655, line: 613, baseType: !1884, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!163, !1607, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1654, file: !1655, line: 625, baseType: !1890, size: 64, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1887, !1607, !260}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1654, file: !1655, line: 633, baseType: !1894, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1716, !1607, !260}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1608, file: !38, line: 697, baseType: !260, size: 64, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1608, file: !38, line: 699, baseType: !1249, size: 64, offset: 1088)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1608, file: !38, line: 700, baseType: !103, size: 64, offset: 1152)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1608, file: !38, line: 711, baseType: !593, size: 64, offset: 1216)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1608, file: !38, line: 717, baseType: !1887, size: 64, offset: 1280)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1608, file: !38, line: 722, baseType: !1903, offset: 1344)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !493)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1526, file: !14, line: 1928, baseType: !260, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1526, file: !14, line: 1929, baseType: !1906, size: 64, offset: 832)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!163, !290, !1249}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1526, file: !14, line: 1930, baseType: !1910, size: 64, offset: 896)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!163, !1249, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !103)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1526, file: !14, line: 1931, baseType: !1906, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1526, file: !14, line: 1932, baseType: !1916, size: 64, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!163, !1249, !451, !451, !163}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1526, file: !14, line: 1933, baseType: !1920, size: 64, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!163, !163, !1249, !163}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1526, file: !14, line: 1934, baseType: !1924, size: 64, offset: 1152)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!163, !1249, !163, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1526, file: !14, line: 1935, baseType: !1246, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1526, file: !14, line: 1936, baseType: !1931, size: 64, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!163, !163}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1526, file: !14, line: 1937, baseType: !1924, size: 64, offset: 1344)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1526, file: !14, line: 1938, baseType: !1936, size: 64, offset: 1408)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!242, !1939, !1249, !1537, !257, !7}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !919, line: 59, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1526, file: !14, line: 1939, baseType: !1942, size: 64, offset: 1472)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!242, !1249, !1537, !1939, !257, !7}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1526, file: !14, line: 1940, baseType: !1946, size: 64, offset: 1536)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1249}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1526, file: !14, line: 1941, baseType: !1950, size: 64, offset: 1600)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!163, !1249, !163, !1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1526, file: !14, line: 1942, baseType: !1956, size: 64, offset: 1664)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!246, !1249, !163, !451, !451}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1526, file: !14, line: 1944, baseType: !1960, size: 64, offset: 1728)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !562, !1249}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1526, file: !14, line: 1948, baseType: !1964, size: 64, offset: 1792)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!242, !1249, !451, !1249, !451, !257, !7}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1526, file: !14, line: 1950, baseType: !1968, size: 64, offset: 1856)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!451, !1249, !451, !1249, !451, !451, !7}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1526, file: !14, line: 1953, baseType: !1916, size: 64, offset: 1920)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1526, file: !14, line: 1954, baseType: !1973, size: 64, offset: 1984)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!163, !1976, !7}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1526, file: !14, line: 1955, baseType: !1979, size: 64, offset: 2048)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!163, !1976, !1575, !7}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1250, file: !14, line: 1018, baseType: !363, size: 64, offset: 1472)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1250, file: !14, line: 1020, baseType: !103, size: 64, offset: 1536)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1250, file: !14, line: 1023, baseType: !103, size: 64, offset: 1600)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1250, file: !14, line: 1027, baseType: !1986, size: 64, offset: 1664)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1250, file: !14, line: 1029, baseType: !286, size: 64, offset: 1728)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1250, file: !14, line: 1030, baseType: !1989, size: 32, offset: 1792)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1990, line: 8, baseType: !359)
!1990 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1250, file: !14, line: 1031, baseType: !1989, size: 32, offset: 1824)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1226, file: !38, line: 756, baseType: !260, size: 64, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1226, file: !38, line: 757, baseType: !260, size: 64, offset: 768)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1226, file: !38, line: 760, baseType: !260, size: 64, offset: 832)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1226, file: !38, line: 761, baseType: !260, size: 64, offset: 896)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1226, file: !38, line: 763, baseType: !260, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1226, file: !38, line: 764, baseType: !1998, size: 64, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1622, line: 299, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1622, line: 299, size: 64, elements: !2001)
!2001 = !{!2002}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2000, file: !1622, line: 299, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1627, line: 18, baseType: !260)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1226, file: !38, line: 773, baseType: !159, size: 32, offset: 1088)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1226, file: !38, line: 785, baseType: !159, size: 32, offset: 1120)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1226, file: !38, line: 795, baseType: !2007, size: 64, offset: 1152)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2008, file: !38, line: 727, baseType: !363, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2008, file: !38, line: 728, baseType: !163, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1226, file: !38, line: 801, baseType: !260, size: 64, offset: 1216)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1226, file: !38, line: 804, baseType: !593, size: 64, offset: 1280)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1226, file: !38, line: 806, baseType: !163, size: 32, offset: 1344)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1226, file: !38, line: 808, baseType: !139, size: 32, offset: 1376)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1226, file: !38, line: 823, baseType: !802, size: 320, offset: 1408)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1226, file: !38, line: 825, baseType: !109, size: 128, offset: 1728)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1226, file: !38, line: 845, baseType: !163, size: 32, offset: 1856)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1226, file: !38, line: 849, baseType: !260, size: 64, offset: 1920)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1226, file: !38, line: 850, baseType: !260, size: 64, offset: 1984)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1226, file: !38, line: 852, baseType: !260, size: 64, offset: 2048)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1226, file: !38, line: 853, baseType: !260, size: 64, offset: 2112)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1226, file: !38, line: 854, baseType: !595, size: 64, offset: 2176)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1226, file: !38, line: 855, baseType: !260, size: 64, offset: 2240)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1226, file: !38, line: 856, baseType: !260, size: 64, offset: 2304)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1226, file: !38, line: 857, baseType: !260, size: 64, offset: 2368)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1226, file: !38, line: 858, baseType: !260, size: 64, offset: 2432)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1226, file: !38, line: 865, baseType: !336, size: 32, offset: 2496)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1226, file: !38, line: 867, baseType: !139, size: 32, offset: 2528)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1226, file: !38, line: 869, baseType: !260, size: 64, offset: 2560)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1226, file: !38, line: 869, baseType: !260, size: 64, offset: 2624)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1226, file: !38, line: 869, baseType: !260, size: 64, offset: 2688)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1226, file: !38, line: 869, baseType: !260, size: 64, offset: 2752)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1226, file: !38, line: 870, baseType: !260, size: 64, offset: 2816)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1226, file: !38, line: 870, baseType: !260, size: 64, offset: 2880)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1226, file: !38, line: 870, baseType: !260, size: 64, offset: 2944)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1226, file: !38, line: 871, baseType: !260, size: 64, offset: 3008)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1226, file: !38, line: 871, baseType: !260, size: 64, offset: 3072)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1226, file: !38, line: 871, baseType: !260, size: 64, offset: 3136)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1226, file: !38, line: 871, baseType: !260, size: 64, offset: 3200)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1226, file: !38, line: 873, baseType: !2042, size: 3328, offset: 3264)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 3328, elements: !2043)
!2043 = !{!2044}
!2044 = !DISubrange(count: 52)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1226, file: !38, line: 875, baseType: !2046, size: 1280, offset: 6592)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 1280, elements: !1298)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1226, file: !38, line: 877, baseType: !2048, size: 64, offset: 7872)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1226, file: !38, line: 880, baseType: !2051, size: 1088, offset: 7936)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2052, line: 72, baseType: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2052, line: 23, size: 1088, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2062, !2063, !2064, !2065, !2092, !2093, !2094}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2053, file: !2052, line: 28, baseType: !363, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2053, file: !2052, line: 38, baseType: !595, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2053, file: !2052, line: 40, baseType: !260, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2053, file: !2052, line: 43, baseType: !802, size: 320, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2053, file: !2052, line: 44, baseType: !2060, size: 64, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2052, line: 44, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2053, file: !2052, line: 48, baseType: !260, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2053, file: !2052, line: 59, baseType: !589, size: 256, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2053, file: !2052, line: 60, baseType: !103, size: 64, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2053, file: !2052, line: 61, baseType: !2066, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2069, line: 13, size: 1216, elements: !2070)
!2069 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2068, file: !2069, line: 14, baseType: !103, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2068, file: !2069, line: 15, baseType: !260, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2068, file: !2069, line: 17, baseType: !260, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2068, file: !2069, line: 17, baseType: !260, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2068, file: !2069, line: 18, baseType: !260, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2068, file: !2069, line: 18, baseType: !260, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2068, file: !2069, line: 19, baseType: !2078, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2068, file: !2069, line: 21, baseType: !246, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2068, file: !2069, line: 23, baseType: !246, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2068, file: !2069, line: 24, baseType: !246, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2068, file: !2069, line: 25, baseType: !246, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2068, file: !2069, line: 26, baseType: !246, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2068, file: !2069, line: 27, baseType: !246, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2068, file: !2069, line: 28, baseType: !246, size: 64, offset: 832)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2068, file: !2069, line: 29, baseType: !246, size: 64, offset: 896)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2068, file: !2069, line: 30, baseType: !246, size: 64, offset: 960)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2068, file: !2069, line: 31, baseType: !246, size: 64, offset: 1024)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2068, file: !2069, line: 32, baseType: !246, size: 64, offset: 1088)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2068, file: !2069, line: 33, baseType: !246, size: 64, offset: 1152)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2053, file: !2052, line: 63, baseType: !159, size: 32, offset: 1024)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2053, file: !2052, line: 69, baseType: !178, size: 16, offset: 1056)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2053, file: !2052, line: 70, baseType: !2095, size: 16, offset: 1072)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !169, line: 18, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !171, line: 23, baseType: !1379)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1226, file: !38, line: 882, baseType: !260, size: 64, offset: 9024)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1226, file: !38, line: 885, baseType: !139, size: 32, offset: 9088)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1226, file: !38, line: 886, baseType: !2100, size: 64, offset: 9152)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1226, file: !38, line: 901, baseType: !1493, size: 64, offset: 9216)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1226, file: !38, line: 904, baseType: !1249, size: 64, offset: 9280)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1226, file: !38, line: 906, baseType: !2105, size: 64, offset: 9344)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1226, file: !38, line: 930, baseType: !159, size: 32, offset: 9408)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1226, file: !38, line: 933, baseType: !159, size: 32, offset: 9440)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1226, file: !38, line: 935, baseType: !2110, size: 64, offset: 9472)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2111)
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2110, file: !68, line: 104, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1226, file: !38, line: 940, baseType: !593, size: 64, offset: 9536)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1226, file: !38, line: 942, baseType: !2117, size: 256, offset: 9600)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2118, line: 98, size: 256, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2117, file: !2118, line: 99, baseType: !593, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2117, file: !2118, line: 100, baseType: !109, size: 128, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2117, file: !2118, line: 101, baseType: !2123, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2118, line: 21, baseType: !2124)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1223, file: !38, line: 986, baseType: !2129, offset: 10240)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !1311)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !918, file: !919, line: 882, baseType: !1222, size: 64, offset: 9792)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !918, file: !919, line: 884, baseType: !163, size: 32, offset: 9856)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !918, file: !919, line: 885, baseType: !163, size: 32, offset: 9888)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !918, file: !919, line: 886, baseType: !163, size: 32, offset: 9920)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !918, file: !919, line: 888, baseType: !163, size: 32, offset: 9952)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !918, file: !919, line: 890, baseType: !260, size: 64, offset: 9984)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !918, file: !919, line: 893, baseType: !7, size: 32, offset: 10048)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !918, file: !919, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !918, file: !919, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !918, file: !919, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !918, file: !919, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !918, file: !919, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !918, file: !919, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !918, file: !919, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !918, file: !919, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !918, file: !919, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !918, file: !919, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !918, file: !919, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !918, file: !919, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !918, file: !919, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !918, file: !919, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !918, file: !919, line: 969, baseType: !260, size: 64, offset: 10176)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !918, file: !919, line: 971, baseType: !2153, size: 448, offset: 10240)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2154)
!2154 = !{!2155, !2156, !2161}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2153, file: !62, line: 26, baseType: !260, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2153, file: !62, line: 27, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!246, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !62, line: 28, baseType: !2162, size: 320, offset: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !62, line: 28, size: 320, elements: !2163)
!2163 = !{!2164, !2174, !2199}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2162, file: !62, line: 37, baseType: !2165, size: 320)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !62, line: 30, size: 320, elements: !2166)
!2166 = !{!2167, !2169, !2170, !2171, !2172, !2173}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2165, file: !62, line: 31, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2165, file: !62, line: 32, baseType: !359, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !62, line: 33, baseType: !359, size: 32, offset: 96)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2165, file: !62, line: 34, baseType: !359, size: 32, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2165, file: !62, line: 35, baseType: !363, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2165, file: !62, line: 36, baseType: !2168, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2162, file: !62, line: 47, baseType: !2175, size: 192)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !62, line: 39, size: 192, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2198}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2175, file: !62, line: 40, baseType: !1093, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2175, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !62, line: 42, baseType: !2180, size: 64, offset: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !62, line: 42, size: 64, elements: !2181)
!2181 = !{!2182, !2190}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2180, file: !62, line: 43, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2185, line: 7, size: 128, elements: !2186)
!2185 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2186 = !{!2187, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2184, file: !2185, line: 8, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !244, line: 93, baseType: !453)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2184, file: !2185, line: 9, baseType: !453, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2180, file: !62, line: 44, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2193, line: 7, size: 64, elements: !2194)
!2193 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2194 = !{!2195, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2192, file: !2193, line: 8, baseType: !2196, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2193, line: 5, baseType: !1353)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2192, file: !2193, line: 9, baseType: !1353, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2175, file: !62, line: 46, baseType: !363, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2162, file: !62, line: 55, baseType: !2200, size: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !62, line: 49, size: 256, elements: !2201)
!2201 = !{!2202, !2205, !2206, !2207, !2208}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2200, file: !62, line: 50, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2200, file: !62, line: 51, baseType: !163, size: 32, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2200, file: !62, line: 52, baseType: !163, size: 32, offset: 96)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2200, file: !62, line: 53, baseType: !260, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2200, file: !62, line: 54, baseType: !260, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !918, file: !919, line: 973, baseType: !2210, size: 32, offset: 10688)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !110, line: 27, baseType: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !244, line: 28, baseType: !163)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !918, file: !919, line: 974, baseType: !2210, size: 32, offset: 10720)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !918, file: !919, line: 978, baseType: !260, size: 64, offset: 10752)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !918, file: !919, line: 987, baseType: !917, size: 64, offset: 10816)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !918, file: !919, line: 990, baseType: !917, size: 64, offset: 10880)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !918, file: !919, line: 995, baseType: !109, size: 128, offset: 10944)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !918, file: !919, line: 996, baseType: !109, size: 128, offset: 11072)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !918, file: !919, line: 997, baseType: !917, size: 64, offset: 11200)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !918, file: !919, line: 1005, baseType: !109, size: 128, offset: 11264)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !918, file: !919, line: 1006, baseType: !109, size: 128, offset: 11392)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !918, file: !919, line: 1009, baseType: !1290, size: 64, offset: 11520)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !918, file: !919, line: 1010, baseType: !2223, size: 512, offset: 11584)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 512, elements: !1298)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !918, file: !919, line: 1011, baseType: !109, size: 128, offset: 12096)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !918, file: !919, line: 1012, baseType: !109, size: 128, offset: 12224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !918, file: !919, line: 1014, baseType: !2227, size: 64, offset: 12352)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !918, file: !919, line: 1017, baseType: !556, size: 64, offset: 12416)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !918, file: !919, line: 1020, baseType: !556, size: 64, offset: 12480)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !918, file: !919, line: 1023, baseType: !103, size: 64, offset: 12544)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !918, file: !919, line: 1025, baseType: !363, size: 64, offset: 12608)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !918, file: !919, line: 1026, baseType: !363, size: 64, offset: 12672)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !918, file: !919, line: 1031, baseType: !363, size: 64, offset: 12736)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !918, file: !919, line: 1032, baseType: !2235, size: 192, offset: 12800)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !919, line: 324, size: 192, elements: !2236)
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2235, file: !919, line: 326, baseType: !363, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2235, file: !919, line: 327, baseType: !363, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2235, file: !919, line: 328, baseType: !602, size: 32, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !918, file: !919, line: 1041, baseType: !260, size: 64, offset: 12992)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !918, file: !919, line: 1042, baseType: !260, size: 64, offset: 13056)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !918, file: !919, line: 1045, baseType: !363, size: 64, offset: 13120)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !918, file: !919, line: 1048, baseType: !363, size: 64, offset: 13184)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !918, file: !919, line: 1051, baseType: !260, size: 64, offset: 13248)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !918, file: !919, line: 1052, baseType: !260, size: 64, offset: 13312)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !918, file: !919, line: 1055, baseType: !2247, size: 640, offset: 13376)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2248, line: 132, size: 640, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2249 = !{!2250, !2256, !2257}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2247, file: !2248, line: 133, baseType: !2251, size: 576)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2252, size: 576, elements: !211)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2248, line: 117, size: 192, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2252, file: !2248, line: 118, baseType: !363, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2252, file: !2248, line: 119, baseType: !1102, size: 128, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2247, file: !2248, line: 134, baseType: !7, size: 32, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2247, file: !2248, line: 135, baseType: !7, size: 32, offset: 608)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !918, file: !919, line: 1058, baseType: !2259, size: 448, offset: 14016)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2248, line: 144, size: 448, elements: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2259, file: !2248, line: 145, baseType: !902, size: 128, align: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2259, file: !2248, line: 146, baseType: !589, size: 256, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2259, file: !2248, line: 147, baseType: !7, size: 32, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !918, file: !919, line: 1064, baseType: !1318, size: 64, offset: 14464)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !918, file: !919, line: 1067, baseType: !1318, size: 64, offset: 14528)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !918, file: !919, line: 1070, baseType: !1318, size: 64, offset: 14592)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !918, file: !919, line: 1074, baseType: !1345, size: 64, offset: 14656)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !918, file: !919, line: 1084, baseType: !2269, size: 128, offset: 14720)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !2270)
!2270 = !{!2271}
!2271 = !DISubrange(count: 16)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !918, file: !919, line: 1086, baseType: !2273, size: 64, offset: 14848)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !919, line: 55, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !918, file: !919, line: 1089, baseType: !2276, size: 64, offset: 14912)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2277, line: 12, size: 64, elements: !2278)
!2277 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2278 = !{!2279}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2276, file: !2277, line: 13, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2277, line: 8, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !918, file: !919, line: 1090, baseType: !2283, size: 128, offset: 14976)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2284, line: 13, size: 128, elements: !2285)
!2284 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2283, file: !2284, line: 14, baseType: !109, size: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !918, file: !919, line: 1097, baseType: !2288, size: 64, offset: 15104)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !919, line: 50, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !918, file: !919, line: 1100, baseType: !2291, size: 64, offset: 15168)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !919, line: 1100, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !918, file: !919, line: 1103, baseType: !2294, size: 64, offset: 15232)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !919, line: 53, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !918, file: !919, line: 1107, baseType: !2297, size: 64, offset: 15296)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !919, line: 56, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !918, file: !919, line: 1110, baseType: !2300, size: 64, offset: 15360)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2302, line: 93, size: 8768, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2353, !2362, !2363, !2365, !2366, !2367, !2370, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2408, !2409, !2416, !2426, !2429, !2430, !2433, !2434, !2435, !2436, !2437, !2438}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2301, file: !2302, line: 94, baseType: !932, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2301, file: !2302, line: 95, baseType: !159, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2301, file: !2302, line: 96, baseType: !163, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2301, file: !2302, line: 97, baseType: !163, size: 32, offset: 96)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2301, file: !2302, line: 98, baseType: !109, size: 128, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2301, file: !2302, line: 100, baseType: !895, size: 192, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2301, file: !2302, line: 103, baseType: !917, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2301, file: !2302, line: 106, baseType: !2312, size: 192, offset: 512)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1498, line: 32, size: 192, elements: !2313)
!2313 = !{!2314, !2315}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2312, file: !1498, line: 33, baseType: !109, size: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2312, file: !1498, line: 34, baseType: !2316, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2317, line: 25, baseType: !2318)
!2317 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2317, line: 23, size: 64, elements: !2319)
!2319 = !{!2320}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2318, file: !2317, line: 24, baseType: !1173, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2301, file: !2302, line: 109, baseType: !481, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2301, file: !2302, line: 112, baseType: !163, size: 32, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2301, file: !2302, line: 114, baseType: !163, size: 32, offset: 800)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2301, file: !2302, line: 115, baseType: !917, size: 64, offset: 832)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2301, file: !2302, line: 118, baseType: !163, size: 32, offset: 896)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2301, file: !2302, line: 119, baseType: !7, size: 32, offset: 928)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2301, file: !2302, line: 121, baseType: !2328, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2302, line: 80, size: 448, elements: !2330)
!2330 = !{!2331, !2332, !2338}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2329, file: !2302, line: 81, baseType: !159, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2329, file: !2302, line: 82, baseType: !2333, size: 128, offset: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2302, line: 75, size: 128, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2333, file: !2302, line: 76, baseType: !917, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2333, file: !2302, line: 77, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2329, file: !2302, line: 83, baseType: !1801, size: 256, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2301, file: !2302, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2301, file: !2302, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2301, file: !2302, line: 138, baseType: !7, size: 32, offset: 1056)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2301, file: !2302, line: 139, baseType: !109, size: 128, offset: 1088)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2301, file: !2302, line: 142, baseType: !1046, size: 512, offset: 1216)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2301, file: !2302, line: 143, baseType: !1054, size: 64, offset: 1728)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2301, file: !2302, line: 150, baseType: !2346, size: 256, offset: 1792)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2347, size: 256, elements: !2351)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2302, line: 38, size: 128, elements: !2348)
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2347, file: !2302, line: 39, baseType: !363, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2347, file: !2302, line: 40, baseType: !363, size: 64, offset: 64)
!2351 = !{!2352}
!2352 = !DISubrange(count: 2)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2301, file: !2302, line: 156, baseType: !2354, size: 192, offset: 2048)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2302, line: 66, size: 192, elements: !2355)
!2355 = !{!2356}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2354, file: !2302, line: 67, baseType: !2357, size: 192)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2302, line: 47, size: 192, elements: !2358)
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2357, file: !2302, line: 48, baseType: !595, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2357, file: !2302, line: 49, baseType: !595, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2357, file: !2302, line: 50, baseType: !595, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2301, file: !2302, line: 160, baseType: !2247, size: 640, offset: 2240)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2301, file: !2302, line: 163, baseType: !2364, size: 256, offset: 2880)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 256, elements: !1298)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2301, file: !2302, line: 169, baseType: !1290, size: 64, offset: 3136)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2301, file: !2302, line: 172, baseType: !163, size: 32, offset: 3200)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2301, file: !2302, line: 174, baseType: !2368, size: 64, offset: 3264)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2302, line: 174, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2301, file: !2302, line: 185, baseType: !2371, size: 64, offset: 3328)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !332, line: 860, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 853, size: 64, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2372, file: !332, line: 858, baseType: !331, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2372, file: !332, line: 859, baseType: !139, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2301, file: !2302, line: 186, baseType: !363, size: 64, offset: 3392)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2301, file: !2302, line: 186, baseType: !363, size: 64, offset: 3456)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2301, file: !2302, line: 186, baseType: !363, size: 64, offset: 3520)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2301, file: !2302, line: 186, baseType: !363, size: 64, offset: 3584)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2301, file: !2302, line: 187, baseType: !363, size: 64, offset: 3648)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2301, file: !2302, line: 188, baseType: !363, size: 64, offset: 3712)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2301, file: !2302, line: 189, baseType: !2235, size: 192, offset: 3776)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2301, file: !2302, line: 190, baseType: !260, size: 64, offset: 3968)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2301, file: !2302, line: 190, baseType: !260, size: 64, offset: 4032)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2301, file: !2302, line: 190, baseType: !260, size: 64, offset: 4096)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2301, file: !2302, line: 190, baseType: !260, size: 64, offset: 4160)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2301, file: !2302, line: 191, baseType: !260, size: 64, offset: 4224)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2301, file: !2302, line: 191, baseType: !260, size: 64, offset: 4288)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2301, file: !2302, line: 191, baseType: !260, size: 64, offset: 4352)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2301, file: !2302, line: 191, baseType: !260, size: 64, offset: 4416)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2301, file: !2302, line: 192, baseType: !260, size: 64, offset: 4480)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2301, file: !2302, line: 192, baseType: !260, size: 64, offset: 4544)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2301, file: !2302, line: 192, baseType: !260, size: 64, offset: 4608)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2301, file: !2302, line: 192, baseType: !260, size: 64, offset: 4672)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2301, file: !2302, line: 193, baseType: !260, size: 64, offset: 4736)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2301, file: !2302, line: 193, baseType: !260, size: 64, offset: 4800)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2301, file: !2302, line: 194, baseType: !2398, size: 448, offset: 4864)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2399, line: 12, size: 448, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2398, file: !2399, line: 15, baseType: !363, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2398, file: !2399, line: 17, baseType: !363, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2398, file: !2399, line: 19, baseType: !363, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2398, file: !2399, line: 21, baseType: !363, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2398, file: !2399, line: 29, baseType: !363, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2398, file: !2399, line: 35, baseType: !363, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2398, file: !2399, line: 44, baseType: !363, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2301, file: !2302, line: 202, baseType: !365, size: 64, offset: 5312)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2301, file: !2302, line: 213, baseType: !2410, size: 2048, offset: 5376)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2411, size: 2048, elements: !2270)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2412, line: 43, size: 128, elements: !2413)
!2412 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2411, file: !2412, line: 44, baseType: !259, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2411, file: !2412, line: 45, baseType: !259, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2301, file: !2302, line: 216, baseType: !2417, size: 448, offset: 7424)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2302, line: 30, size: 448, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2417, file: !2302, line: 31, baseType: !163, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2417, file: !2302, line: 32, baseType: !246, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2417, file: !2302, line: 33, baseType: !260, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2417, file: !2302, line: 34, baseType: !363, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2417, file: !2302, line: 34, baseType: !363, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2417, file: !2302, line: 35, baseType: !260, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2417, file: !2302, line: 35, baseType: !260, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2301, file: !2302, line: 219, baseType: !2427, size: 64, offset: 7872)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2302, line: 219, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2301, file: !2302, line: 222, baseType: !7, size: 32, offset: 7936)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2301, file: !2302, line: 223, baseType: !2431, size: 64, offset: 8000)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2302, line: 223, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2301, file: !2302, line: 230, baseType: !1410, size: 8, offset: 8064)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2301, file: !2302, line: 231, baseType: !1379, size: 16, offset: 8080)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2301, file: !2302, line: 232, baseType: !1379, size: 16, offset: 8096)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2301, file: !2302, line: 234, baseType: !1222, size: 64, offset: 8128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2301, file: !2302, line: 237, baseType: !589, size: 256, offset: 8192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2301, file: !2302, line: 243, baseType: !802, size: 320, offset: 8448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !918, file: !919, line: 1111, baseType: !2440, size: 64, offset: 15424)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2302, line: 20, size: 16640, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2441, file: !2302, line: 21, baseType: !139, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2441, file: !2302, line: 22, baseType: !932, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2441, file: !2302, line: 23, baseType: !895, size: 192, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2441, file: !2302, line: 24, baseType: !2447, size: 16384, offset: 256)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2448, size: 16384, elements: !215)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1498, line: 51, size: 256, elements: !2449)
!2449 = !{!2450}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2448, file: !1498, line: 52, baseType: !2451, size: 256)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1498, line: 37, size: 256, elements: !2452)
!2452 = !{!2453, !2460, !2461, !2467}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2451, file: !1498, line: 39, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2455, line: 83, baseType: !2456)
!2455 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2455, line: 82, baseType: !2458)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !163}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2451, file: !1498, line: 40, baseType: !260, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2451, file: !1498, line: 46, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2455, line: 86, baseType: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2455, line: 85, baseType: !2465)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2451, file: !1498, line: 48, baseType: !2316, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !918, file: !919, line: 1112, baseType: !2316, size: 64, offset: 15488)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !918, file: !919, line: 1113, baseType: !2316, size: 64, offset: 15552)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !918, file: !919, line: 1115, baseType: !2316, size: 64, offset: 15616)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !918, file: !919, line: 1116, baseType: !2312, size: 192, offset: 15680)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !918, file: !919, line: 1117, baseType: !260, size: 64, offset: 15872)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !918, file: !919, line: 1118, baseType: !257, size: 64, offset: 15936)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !918, file: !919, line: 1119, baseType: !7, size: 32, offset: 16000)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !918, file: !919, line: 1121, baseType: !905, size: 64, offset: 16064)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !918, file: !919, line: 1125, baseType: !2477, size: 64, offset: 16128)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !919, line: 43, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !918, file: !919, line: 1127, baseType: !296, size: 32, offset: 16192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !918, file: !919, line: 1128, baseType: !7, size: 32, offset: 16224)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !918, file: !919, line: 1130, baseType: !2482, size: 128, offset: 16256)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2483, line: 37, size: 128, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2482, file: !2483, line: 38, baseType: !163, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2482, file: !2483, line: 39, baseType: !159, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2482, file: !2483, line: 40, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2483, line: 24, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !918, file: !919, line: 1131, baseType: !2491, size: 256, offset: 16384)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2492, line: 12, size: 256, elements: !2493)
!2492 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2491, file: !2492, line: 13, baseType: !210, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2491, file: !2492, line: 14, baseType: !260, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2491, file: !2492, line: 15, baseType: !260, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2491, file: !2492, line: 16, baseType: !1410, size: 8, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !918, file: !919, line: 1134, baseType: !363, size: 64, offset: 16640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !918, file: !919, line: 1135, baseType: !363, size: 64, offset: 16704)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !918, file: !919, line: 1138, baseType: !139, size: 32, offset: 16768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !918, file: !919, line: 1141, baseType: !602, size: 32, offset: 16800)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !918, file: !919, line: 1143, baseType: !2503, size: 64, offset: 16832)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !919, line: 735, size: 64, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2503, file: !919, line: 736, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !918, file: !919, line: 1147, baseType: !1105, size: 128, offset: 16896)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !918, file: !919, line: 1149, baseType: !917, size: 64, offset: 17024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !918, file: !919, line: 1151, baseType: !2510, size: 64, offset: 17088)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !919, line: 1151, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !918, file: !919, line: 1188, baseType: !103, size: 64, offset: 17152)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !918, file: !919, line: 1191, baseType: !2514, size: 64, offset: 17216)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !919, line: 44, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !918, file: !919, line: 1194, baseType: !2517, size: 64, offset: 17280)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !919, line: 45, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !918, file: !919, line: 1197, baseType: !2520, size: 64, offset: 17344)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !919, line: 61, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !918, file: !919, line: 1199, baseType: !2523, size: 64, offset: 17408)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2525, line: 99, size: 128, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2526 = !{!2527, !2528, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2524, file: !2525, line: 100, baseType: !593, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2524, file: !2525, line: 101, baseType: !159, size: 32, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2524, file: !2525, line: 103, baseType: !180, size: 16, offset: 96)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !918, file: !919, line: 1202, baseType: !2531, size: 64, offset: 17472)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !919, line: 48, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !918, file: !919, line: 1205, baseType: !260, size: 64, offset: 17536)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !918, file: !919, line: 1206, baseType: !2535, size: 64, offset: 17600)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1498, line: 14, baseType: !2537)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1498, line: 12, size: 384, elements: !2538)
!2538 = !{!2539}
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !1498, line: 13, baseType: !2540, size: 384)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2537, file: !1498, line: 13, size: 384, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2540, file: !1498, line: 13, baseType: !163, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2540, file: !1498, line: 13, baseType: !163, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2540, file: !1498, line: 13, baseType: !163, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2540, file: !1498, line: 13, baseType: !2546, size: 256, offset: 128)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2547, line: 37, size: 256, elements: !2548)
!2547 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2548 = !{!2549, !2554, !2567, !2573, !2582, !2609, !2614}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2546, file: !2547, line: 42, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 39, size: 64, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2550, file: !2547, line: 40, baseType: !2211, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2550, file: !2547, line: 41, baseType: !302, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2546, file: !2547, line: 50, baseType: !2555, size: 192)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 45, size: 192, elements: !2556)
!2556 = !{!2557, !2559, !2560, !2566}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2555, file: !2547, line: 46, baseType: !2558, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !244, line: 95, baseType: !163)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2555, file: !2547, line: 47, baseType: !163, size: 32, offset: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2555, file: !2547, line: 48, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2547, line: 11, baseType: !2562)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2547, line: 8, size: 64, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2562, file: !2547, line: 9, baseType: !163, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2562, file: !2547, line: 10, baseType: !103, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2555, file: !2547, line: 49, baseType: !163, size: 32, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2546, file: !2547, line: 57, baseType: !2568, size: 128)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 53, size: 128, elements: !2569)
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2568, file: !2547, line: 54, baseType: !2211, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2568, file: !2547, line: 55, baseType: !302, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2568, file: !2547, line: 56, baseType: !2561, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2546, file: !2547, line: 66, baseType: !2574, size: 256)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 60, size: 256, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2581}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2574, file: !2547, line: 61, baseType: !2211, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2574, file: !2547, line: 62, baseType: !302, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2574, file: !2547, line: 63, baseType: !163, size: 32, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2574, file: !2547, line: 64, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !244, line: 94, baseType: !245)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2574, file: !2547, line: 65, baseType: !2580, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2546, file: !2547, line: 105, baseType: !2583, size: 256)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 69, size: 256, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2583, file: !2547, line: 70, baseType: !103, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !2547, line: 79, baseType: !2587, size: 192, offset: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2583, file: !2547, line: 79, size: 192, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2598, !2603}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2587, file: !2547, line: 81, baseType: !163, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2587, file: !2547, line: 86, baseType: !1379, size: 16)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2587, file: !2547, line: 92, baseType: !2592, size: 192)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2547, line: 88, size: 192, elements: !2593)
!2593 = !{!2594, !2596, !2597}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2592, file: !2547, line: 89, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !1089)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2592, file: !2547, line: 90, baseType: !103, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2592, file: !2547, line: 91, baseType: !103, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2587, file: !2547, line: 97, baseType: !2599, size: 96)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2547, line: 94, size: 96, elements: !2600)
!2600 = !{!2601, !2602}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2599, file: !2547, line: 95, baseType: !2595, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2599, file: !2547, line: 96, baseType: !360, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2587, file: !2547, line: 103, baseType: !2604, size: 128)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2547, line: 99, size: 128, elements: !2605)
!2605 = !{!2606, !2607, !2608}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2604, file: !2547, line: 100, baseType: !260, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2604, file: !2547, line: 101, baseType: !360, size: 32, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2604, file: !2547, line: 102, baseType: !360, size: 32, offset: 96)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2546, file: !2547, line: 111, baseType: !2610, size: 128)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 108, size: 128, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2610, file: !2547, line: 109, baseType: !246, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2610, file: !2547, line: 110, baseType: !163, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2546, file: !2547, line: 118, baseType: !2615, size: 128)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 114, size: 128, elements: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2615, file: !2547, line: 115, baseType: !103, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2615, file: !2547, line: 116, baseType: !163, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2615, file: !2547, line: 117, baseType: !7, size: 32, offset: 96)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !918, file: !919, line: 1208, baseType: !2398, size: 448, offset: 17664)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !918, file: !919, line: 1215, baseType: !363, size: 64, offset: 18112)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !918, file: !919, line: 1217, baseType: !363, size: 64, offset: 18176)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !918, file: !919, line: 1219, baseType: !363, size: 64, offset: 18240)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !918, file: !919, line: 1223, baseType: !2625, size: 64, offset: 18304)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2626, line: 99, baseType: !2627)
!2626 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2626, line: 99, size: 64, elements: !2628)
!2628 = !{!2629}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2627, file: !2626, line: 99, baseType: !1173, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !918, file: !919, line: 1225, baseType: !331, size: 32, offset: 18368)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !918, file: !919, line: 1226, baseType: !163, size: 32, offset: 18400)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !918, file: !919, line: 1227, baseType: !163, size: 32, offset: 18432)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !918, file: !919, line: 1231, baseType: !2634, size: 64, offset: 18496)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !919, line: 1231, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !918, file: !919, line: 1233, baseType: !109, size: 128, offset: 18560)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !918, file: !919, line: 1240, baseType: !2638, size: 64, offset: 18688)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !919, line: 62, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !918, file: !919, line: 1242, baseType: !2641, size: 64, offset: 18752)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !919, line: 1242, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !918, file: !919, line: 1244, baseType: !109, size: 128, offset: 18816)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !918, file: !919, line: 1245, baseType: !2645, size: 64, offset: 18944)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !919, line: 51, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !918, file: !919, line: 1246, baseType: !589, size: 256, offset: 19008)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !918, file: !919, line: 1247, baseType: !7, size: 32, offset: 19264)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !918, file: !919, line: 1250, baseType: !2650, size: 64, offset: 19328)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !919, line: 57, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !918, file: !919, line: 1251, baseType: !589, size: 256, offset: 19392)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !918, file: !919, line: 1252, baseType: !109, size: 128, offset: 19648)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !918, file: !919, line: 1259, baseType: !1887, size: 64, offset: 19776)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !918, file: !919, line: 1260, baseType: !1379, size: 16, offset: 19840)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !918, file: !919, line: 1261, baseType: !1379, size: 16, offset: 19856)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !918, file: !919, line: 1314, baseType: !2658, size: 64, offset: 19904)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2660, line: 62, size: 256, align: 256, elements: !2661)
!2660 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2659, file: !2660, line: 75, baseType: !360, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2659, file: !2660, line: 90, baseType: !360, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2659, file: !2660, line: 112, baseType: !364, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2659, file: !2660, line: 132, baseType: !360, size: 32, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2659, file: !2660, line: 140, baseType: !360, size: 32, offset: 160)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2659, file: !2660, line: 149, baseType: !360, size: 32, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2659, file: !2660, line: 154, baseType: !2669, offset: 224)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !1311)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !918, file: !919, line: 1315, baseType: !359, size: 32, offset: 19968)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !918, file: !919, line: 1316, baseType: !359, size: 32, offset: 20000)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !918, file: !919, line: 1321, baseType: !260, size: 64, offset: 20032)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !918, file: !919, line: 1325, baseType: !163, size: 32, offset: 20096)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !918, file: !919, line: 1326, baseType: !163, size: 32, offset: 20128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !918, file: !919, line: 1327, baseType: !163, size: 32, offset: 20160)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !918, file: !919, line: 1328, baseType: !163, size: 32, offset: 20192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !918, file: !919, line: 1329, baseType: !902, size: 128, align: 64, offset: 20224)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !918, file: !919, line: 1332, baseType: !2679, size: 128, offset: 20352)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2680, line: 51, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2681 = !{!2682, !2687, !2688}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2679, file: !2680, line: 60, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2684, line: 7, size: 64, elements: !2685)
!2684 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2683, file: !2684, line: 12, baseType: !1170, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2679, file: !2680, line: 63, baseType: !1410, size: 8, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2679, file: !2680, line: 70, baseType: !1410, size: 8, offset: 72)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !918, file: !919, line: 1335, baseType: !1939, size: 64, offset: 20480)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !918, file: !919, line: 1337, baseType: !2691, size: 128, offset: 20544)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2680, line: 39, size: 128, elements: !2692)
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2691, file: !2680, line: 40, baseType: !1716, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2691, file: !2680, line: 42, baseType: !360, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2691, file: !2680, line: 43, baseType: !360, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !918, file: !919, line: 1340, baseType: !2697, size: 64, offset: 20672)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !919, line: 69, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !918, file: !919, line: 1351, baseType: !163, size: 32, offset: 20736)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !918, file: !919, line: 1352, baseType: !163, size: 32, offset: 20768)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !918, file: !919, line: 1354, baseType: !260, size: 64, offset: 20800)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !918, file: !919, line: 1364, baseType: !363, size: 64, offset: 20864)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !918, file: !919, line: 1365, baseType: !363, size: 64, offset: 20928)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !918, file: !919, line: 1412, baseType: !260, size: 64, offset: 20992)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !918, file: !919, line: 1453, baseType: !2706, size: 64, offset: 21056)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !919, line: 1453, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !918, file: !919, line: 1457, baseType: !2709, size: 64, offset: 21120)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2711)
!2711 = !{!2712, !2713, !2732, !2735, !2736, !2769, !2779}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2710, file: !68, line: 62, baseType: !67, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, scope: !2710, file: !68, line: 64, baseType: !2714, size: 192, offset: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2710, file: !68, line: 64, size: 192, elements: !2715)
!2715 = !{!2716, !2727}
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2714, file: !68, line: 65, baseType: !2717, size: 192)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2714, file: !68, line: 65, size: 192, elements: !2718)
!2718 = !{!2719, !2726}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2717, file: !68, line: 66, baseType: !2720, size: 128)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2721, line: 50, size: 128, elements: !2722)
!2721 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2720, file: !2721, line: 52, baseType: !260, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2720, file: !2721, line: 54, baseType: !7, size: 32, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2720, file: !2721, line: 55, baseType: !7, size: 32, offset: 96)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2717, file: !68, line: 67, baseType: !260, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2714, file: !68, line: 70, baseType: !2728, size: 192)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2714, file: !68, line: 70, size: 192, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2728, file: !68, line: 71, baseType: !902, size: 128, align: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2728, file: !68, line: 72, baseType: !260, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2710, file: !68, line: 76, baseType: !2733, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2710, file: !68, line: 77, baseType: !260, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2710, file: !68, line: 79, baseType: !2737, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2721, line: 25, size: 256, elements: !2739)
!2739 = !{!2740, !2746, !2750}
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !2721, line: 26, baseType: !2741, size: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2738, file: !2721, line: 26, size: 128, elements: !2742)
!2742 = !{!2743, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2741, file: !2721, line: 27, baseType: !2744, size: 128)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !2270)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2741, file: !2721, line: 28, baseType: !2744, size: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2738, file: !2721, line: 31, baseType: !2747, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2721, line: 23, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !2721, line: 33, baseType: !2751, size: 64, offset: 192)
!2751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2738, file: !2721, line: 33, size: 64, elements: !2752)
!2752 = !{!2753, !2759, !2764}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2751, file: !2721, line: 38, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2751, file: !2721, line: 34, size: 64, elements: !2755)
!2755 = !{!2756, !2757, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2754, file: !2721, line: 35, baseType: !1353, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2754, file: !2721, line: 36, baseType: !168, size: 8, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2754, file: !2721, line: 37, baseType: !168, size: 8, offset: 40)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2751, file: !2721, line: 42, baseType: !2760, size: 16)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2751, file: !2721, line: 39, size: 16, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2760, file: !2721, line: 40, baseType: !168, size: 8)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2760, file: !2721, line: 41, baseType: !168, size: 8, offset: 8)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2751, file: !2721, line: 46, baseType: !2765, size: 16)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2751, file: !2721, line: 43, size: 16, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2765, file: !2721, line: 44, baseType: !168, size: 8)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2765, file: !2721, line: 45, baseType: !168, size: 8, offset: 8)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2710, file: !68, line: 81, baseType: !2770, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2771, file: !68, line: 86, baseType: !2733, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2771, file: !68, line: 87, baseType: !260, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2771, file: !68, line: 88, baseType: !260, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2771, file: !68, line: 89, baseType: !260, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2771, file: !68, line: 90, baseType: !1410, size: 8, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2771, file: !68, line: 92, baseType: !2770, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2710, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !918, file: !919, line: 1463, baseType: !2781, offset: 21184)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !919, line: 739, elements: !493)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !918, file: !919, line: 1470, baseType: !902, size: 128, align: 64, offset: 21184)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !918, file: !919, line: 1471, baseType: !932, size: 32, offset: 21312)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !918, file: !919, line: 1472, baseType: !163, size: 32, offset: 21344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !918, file: !919, line: 1474, baseType: !917, size: 64, offset: 21376)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !918, file: !919, line: 1475, baseType: !2787, size: 320, offset: 21440)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2788, line: 11, size: 320, elements: !2789)
!2788 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2789 = !{!2790, !2791, !2792, !2797}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2787, file: !2788, line: 16, baseType: !485, size: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2787, file: !2788, line: 17, baseType: !260, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2787, file: !2788, line: 18, baseType: !2793, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2787, file: !2788, line: 19, baseType: !359, size: 32, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !918, file: !919, line: 1478, baseType: !2799, size: 64, offset: 21760)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2801, line: 49, size: 512, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2809, !2810, !2811, !2813}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2800, file: !2801, line: 50, baseType: !2799, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2800, file: !2801, line: 51, baseType: !103, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2800, file: !2801, line: 52, baseType: !260, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2800, file: !2801, line: 53, baseType: !260, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2800, file: !2801, line: 54, baseType: !2808, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2800, file: !2801, line: 56, baseType: !7, size: 32, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2800, file: !2801, line: 58, baseType: !7, size: 32, offset: 352)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2800, file: !2801, line: 59, baseType: !2812, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !110, line: 159, baseType: !363)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2800, file: !2801, line: 60, baseType: !2078, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !918, file: !919, line: 1482, baseType: !932, size: 32, offset: 21824)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !918, file: !919, line: 1489, baseType: !103, size: 64, offset: 21888)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !918, file: !919, line: 1504, baseType: !103, size: 64, offset: 21952)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !918, file: !919, line: 1505, baseType: !364, size: 64, offset: 22016)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !918, file: !919, line: 1506, baseType: !363, size: 64, offset: 22080)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !918, file: !919, line: 1507, baseType: !364, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !918, file: !919, line: 1508, baseType: !364, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !918, file: !919, line: 1509, baseType: !364, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !918, file: !919, line: 1510, baseType: !902, size: 128, align: 64, offset: 22208)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !918, file: !919, line: 1511, baseType: !163, size: 32, offset: 22336)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !918, file: !919, line: 1515, baseType: !2825, size: 64, offset: 22400)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !946, line: 56, size: 64, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2825, file: !946, line: 57, baseType: !949, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !918, file: !919, line: 1518, baseType: !2825, size: 64, offset: 22464)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !918, file: !919, line: 1528, baseType: !902, size: 128, align: 64, offset: 22528)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !918, file: !919, line: 1552, baseType: !2831, size: 35328, offset: 23040)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2832, line: 430, size: 35328, elements: !2833)
!2832 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2833 = !{!2834, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2863, !2864, !2865, !2866, !2867, !2868, !2871, !2872, !2873, !2874}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2831, file: !2832, line: 432, baseType: !2835, size: 192)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2836, size: 192, elements: !211)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2837, line: 16, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2836, file: !2837, line: 17, baseType: !178, size: 16)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2836, file: !2837, line: 18, baseType: !178, size: 16, offset: 16)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2836, file: !2837, line: 19, baseType: !178, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2836, file: !2837, line: 19, baseType: !178, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2836, file: !2837, line: 19, baseType: !178, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2836, file: !2837, line: 19, baseType: !178, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2836, file: !2837, line: 19, baseType: !178, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2836, file: !2837, line: 20, baseType: !178, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2836, file: !2837, line: 20, baseType: !178, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2836, file: !2837, line: 20, baseType: !178, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2836, file: !2837, line: 20, baseType: !178, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2836, file: !2837, line: 20, baseType: !178, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2836, file: !2837, line: 20, baseType: !178, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2831, file: !2832, line: 436, baseType: !260, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2831, file: !2832, line: 440, baseType: !180, size: 16, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2831, file: !2832, line: 441, baseType: !180, size: 16, offset: 272)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2831, file: !2832, line: 442, baseType: !180, size: 16, offset: 288)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2831, file: !2832, line: 443, baseType: !180, size: 16, offset: 304)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2831, file: !2832, line: 447, baseType: !260, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2831, file: !2832, line: 448, baseType: !260, size: 64, offset: 384)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2831, file: !2832, line: 459, baseType: !2860, size: 256, offset: 448)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, size: 256, elements: !1298)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2832, line: 428, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2831, file: !2832, line: 461, baseType: !260, size: 64, offset: 704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2831, file: !2832, line: 463, baseType: !260, size: 64, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2831, file: !2832, line: 465, baseType: !260, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2831, file: !2832, line: 466, baseType: !260, size: 64, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2831, file: !2832, line: 467, baseType: !260, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2831, file: !2832, line: 473, baseType: !2869, size: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2832, line: 10, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2831, file: !2832, line: 480, baseType: !260, size: 64, offset: 1088)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2831, file: !2832, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2831, file: !2832, line: 491, baseType: !359, size: 32, offset: 1184)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2831, file: !2832, line: 501, baseType: !2875, size: 33792, offset: 1536)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2876, line: 448, size: 33792, elements: !2877)
!2876 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2877 = !{!2878, !2879, !2880, !3042, !3043, !3049, !3050}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2875, file: !2876, line: 461, baseType: !7, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2875, file: !2876, line: 468, baseType: !260, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2875, file: !2876, line: 476, baseType: !2881, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2876, line: 356, size: 33280, align: 512, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2882, file: !2876, line: 358, baseType: !7, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2882, file: !2876, line: 361, baseType: !7, size: 32, offset: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2882, file: !2876, line: 364, baseType: !363, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2882, file: !2876, line: 367, baseType: !363, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2882, file: !2876, line: 370, baseType: !363, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2882, file: !2876, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2882, file: !2876, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2882, file: !2876, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2882, file: !2876, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2882, file: !2876, line: 397, baseType: !2894, size: 32768, offset: 512)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2876, line: 348, size: 32768, elements: !2895)
!2895 = !{!2896, !2911, !2948, !3025, !3038}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2894, file: !2876, line: 349, baseType: !2897, size: 896)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2876, line: 12, size: 896, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2910}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2897, file: !2876, line: 13, baseType: !359, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2897, file: !2876, line: 14, baseType: !359, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2897, file: !2876, line: 15, baseType: !359, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2897, file: !2876, line: 16, baseType: !359, size: 32, offset: 96)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2897, file: !2876, line: 17, baseType: !359, size: 32, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2897, file: !2876, line: 18, baseType: !359, size: 32, offset: 160)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2897, file: !2876, line: 19, baseType: !359, size: 32, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2897, file: !2876, line: 22, baseType: !2907, size: 640, offset: 224)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 640, elements: !2908)
!2908 = !{!2909}
!2909 = !DISubrange(count: 20)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2897, file: !2876, line: 25, baseType: !359, size: 32, offset: 864)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2894, file: !2876, line: 350, baseType: !2912, size: 4096, align: 128)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2876, line: 34, size: 4096, align: 128, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2933, !2934, !2935, !2937, !2939, !2943}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2912, file: !2876, line: 35, baseType: !178, size: 16)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2912, file: !2876, line: 36, baseType: !178, size: 16, offset: 16)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2912, file: !2876, line: 37, baseType: !178, size: 16, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2912, file: !2876, line: 38, baseType: !178, size: 16, offset: 48)
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !2876, line: 39, baseType: !2919, size: 128, offset: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !2876, line: 39, size: 128, elements: !2920)
!2920 = !{!2921, !2926}
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2919, file: !2876, line: 40, baseType: !2922, size: 128)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2919, file: !2876, line: 40, size: 128, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2922, file: !2876, line: 41, baseType: !363, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2922, file: !2876, line: 42, baseType: !363, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !2919, file: !2876, line: 44, baseType: !2927, size: 128)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2919, file: !2876, line: 44, size: 128, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2927, file: !2876, line: 45, baseType: !359, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2927, file: !2876, line: 46, baseType: !359, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2927, file: !2876, line: 47, baseType: !359, size: 32, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2927, file: !2876, line: 48, baseType: !359, size: 32, offset: 96)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2912, file: !2876, line: 51, baseType: !359, size: 32, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2912, file: !2876, line: 52, baseType: !359, size: 32, offset: 224)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2912, file: !2876, line: 55, baseType: !2936, size: 1024, offset: 256)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 1024, elements: !372)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2912, file: !2876, line: 58, baseType: !2938, size: 2048, offset: 1280)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 2048, elements: !215)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2912, file: !2876, line: 60, baseType: !2940, size: 384, offset: 3328)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 384, elements: !2941)
!2941 = !{!2942}
!2942 = !DISubrange(count: 12)
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !2876, line: 62, baseType: !2944, size: 384, offset: 3712)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !2876, line: 62, size: 384, elements: !2945)
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2944, file: !2876, line: 63, baseType: !2940, size: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2944, file: !2876, line: 64, baseType: !2940, size: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2894, file: !2876, line: 351, baseType: !2949, size: 1088)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2876, line: 79, size: 1088, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !3024}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2949, file: !2876, line: 80, baseType: !359, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2949, file: !2876, line: 81, baseType: !359, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2949, file: !2876, line: 82, baseType: !359, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2949, file: !2876, line: 83, baseType: !359, size: 32, offset: 96)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2949, file: !2876, line: 84, baseType: !359, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2949, file: !2876, line: 85, baseType: !359, size: 32, offset: 160)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2949, file: !2876, line: 86, baseType: !359, size: 32, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2949, file: !2876, line: 88, baseType: !2907, size: 640, offset: 224)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2949, file: !2876, line: 89, baseType: !168, size: 8, offset: 864)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2949, file: !2876, line: 90, baseType: !168, size: 8, offset: 872)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2949, file: !2876, line: 91, baseType: !168, size: 8, offset: 880)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2949, file: !2876, line: 92, baseType: !168, size: 8, offset: 888)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2949, file: !2876, line: 93, baseType: !168, size: 8, offset: 896)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2949, file: !2876, line: 94, baseType: !168, size: 8, offset: 904)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2949, file: !2876, line: 95, baseType: !2966, size: 64, offset: 960)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2968, line: 11, size: 128, elements: !2969)
!2968 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2967, file: !2968, line: 12, baseType: !246, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2967, file: !2968, line: 13, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2974, line: 103, size: 1344, elements: !2975)
!2974 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3004, !3005, !3006}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2973, file: !2974, line: 109, baseType: !260, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2973, file: !2974, line: 110, baseType: !260, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2973, file: !2974, line: 111, baseType: !260, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2973, file: !2974, line: 112, baseType: !260, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2973, file: !2974, line: 113, baseType: !260, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2973, file: !2974, line: 114, baseType: !260, size: 64, offset: 320)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2973, file: !2974, line: 117, baseType: !260, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2973, file: !2974, line: 118, baseType: !260, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2973, file: !2974, line: 119, baseType: !260, size: 64, offset: 512)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2973, file: !2974, line: 120, baseType: !260, size: 64, offset: 576)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2973, file: !2974, line: 121, baseType: !260, size: 64, offset: 640)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2973, file: !2974, line: 122, baseType: !260, size: 64, offset: 704)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2973, file: !2974, line: 123, baseType: !260, size: 64, offset: 768)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2973, file: !2974, line: 124, baseType: !260, size: 64, offset: 832)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2973, file: !2974, line: 125, baseType: !260, size: 64, offset: 896)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2973, file: !2974, line: 139, baseType: !260, size: 64, offset: 960)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2973, file: !2974, line: 142, baseType: !260, size: 64, offset: 1024)
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !2974, line: 144, baseType: !2994, size: 64, offset: 1088)
!2994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2973, file: !2974, line: 144, size: 64, elements: !2995)
!2995 = !{!2996, !2997, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2994, file: !2974, line: 146, baseType: !178, size: 16)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2994, file: !2974, line: 148, baseType: !363, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2994, file: !2974, line: 150, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2974, line: 59, size: 64, elements: !3000)
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2999, file: !2974, line: 61, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2999, file: !2974, line: 63, baseType: !363, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2999, file: !2974, line: 65, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2973, file: !2974, line: 153, baseType: !260, size: 64, offset: 1152)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2973, file: !2974, line: 154, baseType: !260, size: 64, offset: 1216)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !2974, line: 156, baseType: !3007, size: 64, offset: 1280)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2973, file: !2974, line: 156, size: 64, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3007, file: !2974, line: 158, baseType: !178, size: 16)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3007, file: !2974, line: 160, baseType: !363, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3007, file: !2974, line: 162, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2974, line: 69, size: 64, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3012, file: !2974, line: 71, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3012, file: !2974, line: 73, baseType: !363, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3012, file: !2974, line: 75, baseType: !363, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3012, file: !2974, line: 77, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3012, file: !2974, line: 80, baseType: !363, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3012, file: !2974, line: 83, baseType: !363, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3012, file: !2974, line: 86, baseType: !363, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3012, file: !2974, line: 88, baseType: !363, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3012, file: !2974, line: 93, baseType: !363, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3012, file: !2974, line: 100, baseType: !363, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2949, file: !2876, line: 96, baseType: !359, size: 32, offset: 1024)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2894, file: !2876, line: 352, baseType: !3026, size: 4608, align: 512)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2876, line: 333, size: 4608, align: 512, elements: !3027)
!3027 = !{!3028, !3029, !3036}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3026, file: !2876, line: 334, baseType: !2912, size: 4096, align: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3026, file: !2876, line: 335, baseType: !3030, size: 512, offset: 4096)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2876, line: 312, size: 512, elements: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3030, file: !2876, line: 313, baseType: !363, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3030, file: !2876, line: 314, baseType: !363, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3030, file: !2876, line: 315, baseType: !3035, size: 384, offset: 128)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !1397)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3026, file: !2876, line: 336, baseType: !3037, offset: 4608)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !1311)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2894, file: !2876, line: 353, baseType: !3039, size: 32768)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 32768, elements: !3040)
!3040 = !{!3041}
!3041 = !DISubrange(count: 4096)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2875, file: !2876, line: 484, baseType: !2881, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2875, file: !2876, line: 491, baseType: !3044, size: 128, offset: 256)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2876, line: 404, size: 128, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3044, file: !2876, line: 424, baseType: !363, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3044, file: !2876, line: 432, baseType: !7, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3044, file: !2876, line: 440, baseType: !7, size: 32, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2875, file: !2876, line: 498, baseType: !3044, size: 128, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2875, file: !2876, line: 508, baseType: !2882, size: 33280, align: 512, offset: 512)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !885, file: !886, line: 16, baseType: !895, size: 192, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !885, file: !886, line: 17, baseType: !159, size: 32, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !442, file: !14, line: 1240, baseType: !103, size: 64, offset: 6912)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !442, file: !14, line: 1243, baseType: !359, size: 32, offset: 6976)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !442, file: !14, line: 1245, baseType: !642, size: 64, offset: 7040)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !442, file: !14, line: 1246, baseType: !642, size: 64, offset: 7104)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !442, file: !14, line: 1248, baseType: !360, size: 32, offset: 7168)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !442, file: !14, line: 1249, baseType: !3059, size: 64, offset: 7232)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !442, file: !14, line: 1252, baseType: !3062, size: 256, offset: 7296)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !372)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !442, file: !14, line: 1253, baseType: !3064, size: 128, offset: 7552)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3065, line: 21, baseType: !3066)
!3065 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3065, line: 19, size: 128, elements: !3067)
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3066, file: !3065, line: 20, baseType: !3069, size: 128)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !2270)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !442, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !442, file: !14, line: 1261, baseType: !589, size: 256, offset: 7744)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !442, file: !14, line: 1267, baseType: !128, size: 64, offset: 8000)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !442, file: !14, line: 1269, baseType: !388, size: 64, offset: 8064)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !442, file: !14, line: 1271, baseType: !3075, size: 448, offset: 8128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !651, line: 63, size: 448, elements: !3076)
!3076 = !{!3077, !3082, !3083, !3084, !3085, !3086, !3087}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3075, file: !651, line: 64, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!260, !3081, !649}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3075, file: !651, line: 66, baseType: !3078, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3075, file: !651, line: 69, baseType: !246, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3075, file: !651, line: 70, baseType: !163, size: 32, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3075, file: !651, line: 71, baseType: !7, size: 32, offset: 224)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3075, file: !651, line: 74, baseType: !109, size: 128, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3075, file: !651, line: 85, baseType: !3088, size: 64, offset: 384)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !442, file: !14, line: 1274, baseType: !593, size: 64, offset: 8576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !442, file: !14, line: 1280, baseType: !593, size: 64, offset: 8640)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !442, file: !14, line: 1283, baseType: !163, size: 32, offset: 8704)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !442, file: !14, line: 1286, baseType: !1989, size: 32, offset: 8736)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !442, file: !14, line: 1289, baseType: !3094, size: 64, offset: 8768)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2118, line: 18, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !442, file: !14, line: 1290, baseType: !481, size: 64, offset: 8832)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !442, file: !14, line: 1297, baseType: !1493, size: 64, offset: 8896)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !442, file: !14, line: 1304, baseType: !3099, size: 64, offset: 8960)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3100, line: 49, size: 64, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3099, file: !3100, line: 50, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3100, line: 41, size: 512, align: 512, elements: !3105)
!3105 = !{!3106, !3107, !3112}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3104, file: !3100, line: 43, baseType: !139, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3104, file: !3100, line: 45, baseType: !3108, size: 192, offset: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3100, line: 29, size: 192, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3108, file: !3100, line: 30, baseType: !109, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3108, file: !3100, line: 32, baseType: !246, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3104, file: !3100, line: 46, baseType: !246, size: 64, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !442, file: !14, line: 1305, baseType: !3099, size: 64, offset: 9024)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !442, file: !14, line: 1306, baseType: !902, size: 128, align: 64, offset: 9088)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !442, file: !14, line: 1307, baseType: !2117, size: 256, offset: 9216)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !442, file: !14, line: 1309, baseType: !589, size: 256, offset: 9472)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !442, file: !14, line: 1314, baseType: !163, size: 32, offset: 9728)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !442, file: !14, line: 1317, baseType: !139, size: 32, align: 512, offset: 10240)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !442, file: !14, line: 1318, baseType: !109, size: 128, offset: 10304)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !442, file: !14, line: 1320, baseType: !139, size: 32, offset: 10432)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !442, file: !14, line: 1321, baseType: !109, size: 128, offset: 10496)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !436, file: !437, line: 73, baseType: !163, size: 32, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !436, file: !437, line: 74, baseType: !3124, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1335, line: 42, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !390, file: !327, line: 141, baseType: !3128, size: 64, offset: 704)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!163, !712, !1410}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !390, file: !327, line: 142, baseType: !3132, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!325, !325, !3135}
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !326, file: !327, line: 96, baseType: !441, size: 64, offset: 832)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !326, file: !327, line: 97, baseType: !260, size: 64, offset: 896)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !326, file: !327, line: 98, baseType: !103, size: 64, offset: 960)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !327, line: 100, baseType: !3141, size: 128, offset: 1024)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !327, line: 100, size: 128, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3141, file: !327, line: 101, baseType: !109, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3141, file: !327, line: 102, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !326, file: !327, line: 104, baseType: !109, size: 128, offset: 1152)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !326, file: !327, line: 105, baseType: !109, size: 128, offset: 1280)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !326, file: !327, line: 113, baseType: !3149, size: 128, offset: 1408)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !327, line: 109, size: 128, elements: !3150)
!3150 = !{!3151, !3152, !3153}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3149, file: !327, line: 110, baseType: !485, size: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3149, file: !327, line: 111, baseType: !341, size: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3149, file: !327, line: 112, baseType: !902, size: 128, align: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !319, file: !14, line: 1968, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!128, !325, !290, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3160, line: 10, size: 128, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3161 = !{!3162, !3166}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3159, file: !3160, line: 11, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !103}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3159, file: !3160, line: 12, baseType: !103, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !319, file: !14, line: 1969, baseType: !3168, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!163, !3124, !290, !163}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !319, file: !14, line: 1970, baseType: !3172, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!313, !290, !163, !1410}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !319, file: !14, line: 1972, baseType: !3176, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!163, !325, !210, !163}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !319, file: !14, line: 1974, baseType: !3180, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!163, !3124, !290, !325, !252, !1410}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !319, file: !14, line: 1976, baseType: !3184, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!163, !325, !290, !325}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !319, file: !14, line: 1977, baseType: !3188, size: 64, offset: 448)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!163, !290, !325}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !319, file: !14, line: 1978, baseType: !3192, size: 64, offset: 512)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!163, !3124, !290, !325, !128}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !319, file: !14, line: 1980, baseType: !3196, size: 64, offset: 576)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!163, !3124, !290, !325, !252}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !319, file: !14, line: 1982, baseType: !3188, size: 64, offset: 640)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !319, file: !14, line: 1983, baseType: !3201, size: 64, offset: 704)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!163, !3124, !290, !325, !252, !446}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !319, file: !14, line: 1985, baseType: !3205, size: 64, offset: 768)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!163, !3124, !290, !325, !290, !325, !7}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !319, file: !14, line: 1987, baseType: !3209, size: 64, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!163, !3124, !325, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3227, !3236, !3237, !3242, !3243, !3244}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3213, file: !14, line: 227, baseType: !7, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3213, file: !14, line: 228, baseType: !252, size: 16, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !14, line: 241, baseType: !3218, size: 32, offset: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !14, line: 241, size: 32, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3218, file: !14, line: 242, baseType: !296, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3218, file: !14, line: 243, baseType: !3222, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3223, line: 16, baseType: !3224)
!3223 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3223, line: 14, size: 32, elements: !3225)
!3225 = !{!3226}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3224, file: !3223, line: 15, baseType: !301, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !14, line: 245, baseType: !3228, size: 32, offset: 96)
!3228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !14, line: 245, size: 32, elements: !3229)
!3229 = !{!3230, !3231}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3228, file: !14, line: 246, baseType: !305, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3228, file: !14, line: 247, baseType: !3232, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3223, line: 20, baseType: !3233)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3223, line: 18, size: 32, elements: !3234)
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3233, file: !3223, line: 19, baseType: !309, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3213, file: !14, line: 249, baseType: !451, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3213, file: !14, line: 250, baseType: !3238, size: 128, offset: 192)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !643, line: 13, size: 128, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3238, file: !643, line: 14, baseType: !642, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3238, file: !643, line: 15, baseType: !246, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3213, file: !14, line: 251, baseType: !3238, size: 128, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3213, file: !14, line: 252, baseType: !3238, size: 128, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3213, file: !14, line: 259, baseType: !1249, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !319, file: !14, line: 1988, baseType: !3246, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!163, !3124, !712, !3249, !359, !7}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3251, line: 22, size: 1280, elements: !3252)
!3251 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3250, file: !3251, line: 23, baseType: !359, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3250, file: !3251, line: 24, baseType: !252, size: 16, offset: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3250, file: !3251, line: 25, baseType: !7, size: 32, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3250, file: !3251, line: 26, baseType: !1375, size: 32, offset: 96)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3250, file: !3251, line: 27, baseType: !363, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3250, file: !3251, line: 28, baseType: !363, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3250, file: !3251, line: 41, baseType: !363, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3250, file: !3251, line: 42, baseType: !446, size: 32, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3250, file: !3251, line: 43, baseType: !446, size: 32, offset: 352)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3250, file: !3251, line: 44, baseType: !296, size: 32, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3250, file: !3251, line: 45, baseType: !305, size: 32, offset: 416)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3250, file: !3251, line: 46, baseType: !451, size: 64, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3250, file: !3251, line: 47, baseType: !3238, size: 128, offset: 512)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3250, file: !3251, line: 48, baseType: !3238, size: 128, offset: 640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3250, file: !3251, line: 49, baseType: !3238, size: 128, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3250, file: !3251, line: 50, baseType: !3238, size: 128, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3250, file: !3251, line: 51, baseType: !363, size: 64, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3250, file: !3251, line: 52, baseType: !363, size: 64, offset: 1088)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3250, file: !3251, line: 53, baseType: !359, size: 32, offset: 1152)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3250, file: !3251, line: 54, baseType: !359, size: 32, offset: 1184)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3250, file: !3251, line: 55, baseType: !363, size: 64, offset: 1216)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !319, file: !14, line: 1990, baseType: !3275, size: 64, offset: 960)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!242, !325, !210, !257}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !319, file: !14, line: 1991, baseType: !3279, size: 64, offset: 1024)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!163, !290, !3282, !363, !363}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !319, file: !14, line: 1993, baseType: !3285, size: 64, offset: 1088)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!163, !290, !163}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !319, file: !14, line: 1994, baseType: !3289, size: 64, offset: 1152)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!163, !290, !325, !1249, !7, !252}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !319, file: !14, line: 1997, baseType: !3293, size: 64, offset: 1216)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!163, !3124, !290, !1249, !252}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !319, file: !14, line: 1999, baseType: !3297, size: 64, offset: 1280)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!313, !3124, !325, !163}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !319, file: !14, line: 2001, baseType: !3301, size: 64, offset: 1344)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!163, !3124, !325, !313, !163}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !319, file: !14, line: 2003, baseType: !3305, size: 64, offset: 1408)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!163, !3124, !325, !3308}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !319, file: !14, line: 2005, baseType: !3311, size: 64, offset: 1472)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!163, !325, !3308}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !319, file: !14, line: 2006, baseType: !3315, size: 64, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!3318, !290}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3320)
!3320 = !{!3321, !3328}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3319, file: !14, line: 3193, baseType: !3322, size: 128)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3323, line: 296, size: 128, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3324 = !{!3325, !3326, !3327}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3322, file: !3323, line: 297, baseType: !139, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3322, file: !3323, line: 299, baseType: !654, size: 32, offset: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3322, file: !3323, line: 300, baseType: !103, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3319, file: !14, line: 3194, baseType: !359, size: 32, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !291, file: !14, line: 655, baseType: !441, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !291, file: !14, line: 656, baseType: !286, size: 64, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !291, file: !14, line: 659, baseType: !103, size: 64, offset: 576)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !291, file: !14, line: 663, baseType: !260, size: 64, offset: 640)
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !14, line: 671, baseType: !3334, size: 32, offset: 704)
!3334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !14, line: 671, size: 32, elements: !3335)
!3335 = !{!3336, !3338}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3334, file: !14, line: 672, baseType: !3337, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3334, file: !14, line: 673, baseType: !7, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !291, file: !14, line: 675, baseType: !446, size: 32, offset: 736)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !291, file: !14, line: 676, baseType: !451, size: 64, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !291, file: !14, line: 677, baseType: !3238, size: 128, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !291, file: !14, line: 678, baseType: !3238, size: 128, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !291, file: !14, line: 679, baseType: !3238, size: 128, offset: 1088)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !291, file: !14, line: 680, baseType: !139, size: 32, offset: 1216)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !291, file: !14, line: 681, baseType: !180, size: 16, offset: 1248)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !291, file: !14, line: 682, baseType: !168, size: 8, offset: 1264)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !291, file: !14, line: 683, baseType: !168, size: 8, offset: 1272)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !291, file: !14, line: 684, baseType: !790, size: 64, offset: 1280)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !291, file: !14, line: 691, baseType: !260, size: 64, offset: 1344)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !291, file: !14, line: 692, baseType: !802, size: 320, offset: 1408)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !291, file: !14, line: 694, baseType: !260, size: 64, offset: 1728)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !291, file: !14, line: 695, baseType: !260, size: 64, offset: 1792)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !291, file: !14, line: 697, baseType: !485, size: 128, offset: 1856)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !291, file: !14, line: 698, baseType: !109, size: 128, offset: 1984)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !291, file: !14, line: 707, baseType: !109, size: 128, offset: 2112)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !291, file: !14, line: 708, baseType: !109, size: 128, offset: 2240)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !14, line: 709, baseType: !3358, size: 128, offset: 2368)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !14, line: 709, size: 128, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3358, file: !14, line: 710, baseType: !481, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3358, file: !14, line: 711, baseType: !902, size: 128, align: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !291, file: !14, line: 713, baseType: !595, size: 64, offset: 2496)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !291, file: !14, line: 714, baseType: !595, size: 64, offset: 2560)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !291, file: !14, line: 715, baseType: !159, size: 32, offset: 2624)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !291, file: !14, line: 716, baseType: !159, size: 32, offset: 2656)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !291, file: !14, line: 717, baseType: !159, size: 32, offset: 2688)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !291, file: !14, line: 719, baseType: !159, size: 32, offset: 2720)
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !14, line: 721, baseType: !3369, size: 64, offset: 2752)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !14, line: 721, size: 64, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3369, file: !14, line: 722, baseType: !1524, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3369, file: !14, line: 723, baseType: !512, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !291, file: !14, line: 725, baseType: !3374, size: 64, offset: 2816)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !291, file: !14, line: 726, baseType: !287, size: 1536, align: 64, offset: 2880)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !291, file: !14, line: 727, baseType: !109, size: 128, offset: 4416)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !14, line: 728, baseType: !3379, size: 64, offset: 4544)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !14, line: 728, size: 64, elements: !3380)
!3380 = !{!3381, !3382, !3385, !3386}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3379, file: !14, line: 729, baseType: !1939, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3379, file: !14, line: 730, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3379, file: !14, line: 731, baseType: !210, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3379, file: !14, line: 732, baseType: !7, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !291, file: !14, line: 735, baseType: !360, size: 32, offset: 4608)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !291, file: !14, line: 738, baseType: !360, size: 32, offset: 4640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !291, file: !14, line: 739, baseType: !3059, size: 64, offset: 4672)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !291, file: !14, line: 750, baseType: !103, size: 64, offset: 4736)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !287, file: !14, line: 474, baseType: !3322, size: 128, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !287, file: !14, line: 475, baseType: !802, size: 320, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !287, file: !14, line: 476, baseType: !654, size: 32, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !287, file: !14, line: 477, baseType: !159, size: 32, offset: 544)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !287, file: !14, line: 482, baseType: !1105, size: 128, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !287, file: !14, line: 483, baseType: !260, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !287, file: !14, line: 484, baseType: !260, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !287, file: !14, line: 485, baseType: !3399, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3402)
!3402 = !{!3403, !3407, !3477, !3481, !3485, !3491, !3495, !3499, !3504, !3508, !3512, !3516, !3517, !3521, !3525, !3529, !3534, !3538, !3545, !3546}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3401, file: !14, line: 405, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!163, !1716, !524}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3401, file: !14, line: 406, baseType: !3408, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!163, !1249, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3413)
!3413 = !{!3414, !3444, !3458}
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !38, line: 295, baseType: !3415, size: 512)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !38, line: 295, size: 512, elements: !3416)
!3416 = !{!3417, !3443}
!3417 = !DIDerivedType(tag: DW_TAG_member, scope: !3415, file: !38, line: 296, baseType: !3418, size: 448)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3415, file: !38, line: 296, size: 448, elements: !3419)
!3419 = !{!3420, !3421, !3430, !3431, !3432, !3441, !3442}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3418, file: !38, line: 298, baseType: !260, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !38, line: 299, baseType: !3422, size: 128, offset: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !38, line: 299, size: 128, elements: !3423)
!3423 = !{!3424, !3425}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3422, file: !38, line: 300, baseType: !109, size: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !38, line: 302, baseType: !3426, size: 128)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !38, line: 302, size: 128, elements: !3427)
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3426, file: !38, line: 303, baseType: !103, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3426, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3418, file: !38, line: 310, baseType: !286, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3418, file: !38, line: 311, baseType: !260, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !38, line: 312, baseType: !3433, size: 64, offset: 320)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !38, line: 312, size: 64, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3433, file: !38, line: 313, baseType: !103, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3433, file: !38, line: 314, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3439)
!3439 = !{!3440}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3438, file: !38, line: 256, baseType: !260, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3418, file: !38, line: 316, baseType: !159, size: 32, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3418, file: !38, line: 317, baseType: !159, size: 32, offset: 416)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3415, file: !38, line: 323, baseType: !1717, size: 512, align: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !38, line: 325, baseType: !3445, size: 512, offset: 512)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !38, line: 325, size: 512, elements: !3446)
!3446 = !{!3447, !3457}
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !38, line: 326, baseType: !3448, size: 320)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3445, file: !38, line: 326, size: 320, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3448, file: !38, line: 327, baseType: !260, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3448, file: !38, line: 328, baseType: !260, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3448, file: !38, line: 329, baseType: !260, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3448, file: !38, line: 331, baseType: !159, size: 32, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3448, file: !38, line: 332, baseType: !159, size: 32, offset: 224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3448, file: !38, line: 333, baseType: !159, size: 32, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3448, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3445, file: !38, line: 339, baseType: !1717, size: 512, align: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !38, line: 341, baseType: !3459, size: 512, offset: 1024)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !38, line: 341, size: 512, elements: !3460)
!3460 = !{!3461, !3470, !3476}
!3461 = !DIDerivedType(tag: DW_TAG_member, scope: !3459, file: !38, line: 342, baseType: !3462, size: 384)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3459, file: !38, line: 342, size: 384, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3462, file: !38, line: 343, baseType: !260, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3462, file: !38, line: 344, baseType: !260, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3462, file: !38, line: 346, baseType: !103, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3462, file: !38, line: 347, baseType: !103, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3462, file: !38, line: 348, baseType: !103, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3462, file: !38, line: 349, baseType: !103, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3459, file: !38, line: 352, baseType: !3471, size: 256)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3459, file: !38, line: 352, size: 256, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3471, file: !38, line: 353, baseType: !260, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3471, file: !38, line: 354, baseType: !260, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3471, file: !38, line: 356, baseType: !109, size: 128, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3459, file: !38, line: 359, baseType: !1717, size: 512, align: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3401, file: !14, line: 409, baseType: !3478, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!163, !286, !524}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3401, file: !14, line: 412, baseType: !3482, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!1410, !286, !3411}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3401, file: !14, line: 414, baseType: !3486, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3401, file: !14, line: 416, baseType: !3492, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!163, !1249, !286, !451, !7, !2808, !1954}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3401, file: !14, line: 419, baseType: !3496, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!163, !1249, !286, !451, !7, !7, !1716, !103}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3401, file: !14, line: 424, baseType: !3500, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!3503, !286, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !110, line: 131, baseType: !363)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3401, file: !14, line: 425, baseType: !3505, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3411, !257, !257}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3401, file: !14, line: 426, baseType: !3509, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!1410, !3411, !654}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3401, file: !14, line: 427, baseType: !3513, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3411}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3401, file: !14, line: 428, baseType: !1543, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3401, file: !14, line: 433, baseType: !3518, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!163, !286, !3411, !3411, !74}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3401, file: !14, line: 435, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!163, !3411}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3401, file: !14, line: 436, baseType: !3526, size: 64, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!1410, !3411, !257, !257}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3401, file: !14, line: 438, baseType: !3530, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !3411, !3533, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3401, file: !14, line: 439, baseType: !3535, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!163, !286, !1716}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3401, file: !14, line: 442, baseType: !3539, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!163, !3542, !1249, !3544}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3401, file: !14, line: 444, baseType: !1946, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3401, file: !14, line: 445, baseType: !3547, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!163, !1546, !1568}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !14, line: 486, baseType: !260, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !287, file: !14, line: 487, baseType: !802, size: 320, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !287, file: !14, line: 488, baseType: !1989, size: 32, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !287, file: !14, line: 489, baseType: !139, size: 32, offset: 1312)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !287, file: !14, line: 490, baseType: !109, size: 128, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !287, file: !14, line: 491, baseType: !103, size: 64, offset: 1472)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !277, file: !236, line: 180, baseType: !3557, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!242, !1249, !132, !276, !210, !451, !257}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !277, file: !236, line: 182, baseType: !3557, size: 64, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !277, file: !236, line: 184, baseType: !3562, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!163, !1249, !132, !276, !1607}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !265, file: !236, line: 90, baseType: !3566, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !265, file: !236, line: 91, baseType: !3568, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !226, file: !125, line: 120, baseType: !3570, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!3573, !193}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3575)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3576)
!3576 = !{!3577, !3578, !3582, !3586, !3592, !3596}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3575, file: !82, line: 40, baseType: !81, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3575, file: !82, line: 41, baseType: !3579, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!1410}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3575, file: !82, line: 42, baseType: !3583, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!103}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3575, file: !82, line: 43, baseType: !3587, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!2078, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3575, file: !82, line: 44, baseType: !3593, size: 64, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!2078}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3575, file: !82, line: 45, baseType: !3163, size: 64, offset: 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !226, file: !125, line: 121, baseType: !3598, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!2078, !193}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !226, file: !125, line: 122, baseType: !3602, size: 64, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !193, !3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !124, file: !125, line: 70, baseType: !3608, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3610, line: 190, size: 1152, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3703, !3704, !3705, !3706, !3707, !3710}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3609, file: !3610, line: 191, baseType: !159, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3609, file: !3610, line: 192, baseType: !159, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3609, file: !3610, line: 202, baseType: !3608, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3609, file: !3610, line: 203, baseType: !128, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3609, file: !3610, line: 205, baseType: !976, size: 192, align: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3609, file: !3610, line: 207, baseType: !2078, size: 64, offset: 384)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3609, file: !3610, line: 208, baseType: !7, size: 32, offset: 448)
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3610, line: 209, baseType: !3620, size: 256, offset: 512)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3610, line: 209, size: 256, elements: !3621)
!3621 = !{!3622, !3631, !3635}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3620, file: !3610, line: 210, baseType: !3623, size: 256)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3610, line: 153, size: 256, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3630}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3623, file: !3610, line: 154, baseType: !260, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3623, file: !3610, line: 156, baseType: !1108, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3623, file: !3610, line: 162, baseType: !3628, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3610, line: 162, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3623, file: !3610, line: 167, baseType: !260, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3620, file: !3610, line: 211, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3610, line: 170, size: 64, elements: !3633)
!3633 = !{!3634}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3632, file: !3610, line: 171, baseType: !3608, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3620, file: !3610, line: 212, baseType: !3636, size: 256)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3610, line: 174, size: 256, elements: !3637)
!3637 = !{!3638, !3698, !3701, !3702}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3636, file: !3610, line: 175, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3610, line: 271, size: 768, elements: !3642)
!3642 = !{!3643, !3663, !3667, !3671, !3675, !3679, !3683, !3687, !3688, !3689, !3690, !3694}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3641, file: !3610, line: 276, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!163, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3610, line: 251, size: 1216, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3648, file: !3610, line: 253, baseType: !3608, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3648, file: !3610, line: 254, baseType: !1249, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3648, file: !3610, line: 255, baseType: !562, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3648, file: !3610, line: 256, baseType: !103, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3648, file: !3610, line: 259, baseType: !589, size: 256, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3648, file: !3610, line: 260, baseType: !589, size: 256, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3648, file: !3610, line: 261, baseType: !163, size: 32, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3648, file: !3610, line: 262, baseType: !109, size: 128, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3648, file: !3610, line: 263, baseType: !210, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3648, file: !3610, line: 265, baseType: !257, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3648, file: !3610, line: 266, baseType: !1410, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3648, file: !3610, line: 267, baseType: !1410, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3648, file: !3610, line: 268, baseType: !1652, size: 64, offset: 1152)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3641, file: !3610, line: 277, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !3647}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3641, file: !3610, line: 290, baseType: !3668, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!163, !562, !103}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3641, file: !3610, line: 292, baseType: !3672, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!103, !562, !1537}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3641, file: !3610, line: 293, baseType: !3676, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!103, !562, !103, !1537}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3641, file: !3610, line: 294, baseType: !3680, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !562, !103}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3641, file: !3610, line: 296, baseType: !3684, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!242, !3647, !210, !257, !451}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3641, file: !3610, line: 306, baseType: !257, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3641, file: !3610, line: 313, baseType: !1410, size: 8, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3641, file: !3610, line: 314, baseType: !3684, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3641, file: !3610, line: 317, baseType: !3691, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!1594, !3647, !1596}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3641, file: !3610, line: 320, baseType: !3695, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!163, !3647, !1607}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3636, file: !3610, line: 176, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3610, line: 35, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3636, file: !3610, line: 177, baseType: !451, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3636, file: !3610, line: 178, baseType: !3608, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3609, file: !3610, line: 215, baseType: !103, size: 64, offset: 768)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3609, file: !3610, line: 221, baseType: !363, size: 64, offset: 832)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3609, file: !3610, line: 223, baseType: !180, size: 16, offset: 896)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3609, file: !3610, line: 224, baseType: !252, size: 16, offset: 912)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3609, file: !3610, line: 225, baseType: !3708, size: 64, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3610, line: 36, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3609, file: !3610, line: 227, baseType: !902, size: 128, align: 64, offset: 1024)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !124, file: !125, line: 71, baseType: !3712, size: 32, offset: 448)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3713, line: 19, size: 32, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3714 = !{!3715}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3712, file: !3713, line: 20, baseType: !932, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !124, file: !125, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !124, file: !125, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !124, file: !125, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !124, file: !125, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !124, file: !125, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !121, file: !6, line: 47, baseType: !104, size: 64, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !121, file: !6, line: 48, baseType: !132, size: 64, offset: 576)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !121, file: !6, line: 49, baseType: !3724, size: 64, offset: 640)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !121, file: !6, line: 50, baseType: !2227, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !105, file: !6, line: 418, baseType: !3728, size: 64, offset: 1408)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3730)
!3730 = !{!3731, !3732, !3737, !3741, !3745, !3749}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3729, file: !6, line: 54, baseType: !248, size: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3729, file: !6, line: 55, baseType: !3733, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!242, !3728, !3736, !210}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3729, file: !6, line: 57, baseType: !3738, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!242, !3728, !3736, !128, !257}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3729, file: !6, line: 59, baseType: !3742, size: 64, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !104, !128}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3729, file: !6, line: 60, baseType: !3746, size: 64, offset: 320)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!163, !104}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3729, file: !6, line: 61, baseType: !3750, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !104}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !105, file: !6, line: 419, baseType: !128, size: 64, offset: 1472)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !105, file: !6, line: 420, baseType: !128, size: 64, offset: 1536)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !105, file: !6, line: 421, baseType: !132, size: 64, offset: 1600)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !105, file: !6, line: 424, baseType: !3757, size: 64, offset: 1664)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3759)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !105, file: !6, line: 425, baseType: !3761, size: 64, offset: 1728)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !105, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !105, file: !6, line: 435, baseType: !589, size: 256, offset: 1856)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !105, file: !6, line: 437, baseType: !3766, size: 64, offset: 2112)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3768, line: 69, size: 320, elements: !3769)
!3768 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3769 = !{!3770, !3771, !3772, !3789, !3791, !3795, !3796}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3767, file: !3768, line: 70, baseType: !128, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3767, file: !3768, line: 71, baseType: !104, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3767, file: !3768, line: 72, baseType: !3773, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3775)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3768, line: 47, size: 256, elements: !3776)
!3776 = !{!3777, !3778, !3784, !3788}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3775, file: !3768, line: 49, baseType: !7, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3775, file: !3768, line: 51, baseType: !3779, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!163, !128, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3767)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3775, file: !3768, line: 53, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!163, !210, !3782}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3775, file: !3768, line: 55, baseType: !3163, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3767, file: !3768, line: 73, baseType: !3790, size: 16, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3767, file: !3768, line: 74, baseType: !3792, size: 8, offset: 208)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !169, line: 16, baseType: !3793)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !171, line: 20, baseType: !3794)
!3794 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3767, file: !3768, line: 75, baseType: !168, size: 8, offset: 216)
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !3767, file: !3768, line: 76, baseType: !3797, size: 64, offset: 256)
!3797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3767, file: !3768, line: 76, size: 64, elements: !3798)
!3798 = !{!3799, !3800, !3807}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3797, file: !3768, line: 77, baseType: !103, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3797, file: !3768, line: 78, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3768, line: 86, size: 128, elements: !3804)
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3803, file: !3768, line: 87, baseType: !7, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3803, file: !3768, line: 88, baseType: !210, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3797, file: !3768, line: 79, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3810)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3768, line: 92, size: 256, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3810, file: !3768, line: 94, baseType: !7, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3810, file: !3768, line: 95, baseType: !7, size: 32, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3810, file: !3768, line: 96, baseType: !911, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3810, file: !3768, line: 97, baseType: !3773, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3810, file: !3768, line: 98, baseType: !103, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !105, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !105, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !105, file: !6, line: 442, baseType: !3757, size: 64, offset: 2240)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !105, file: !6, line: 443, baseType: !3761, size: 64, offset: 2304)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !105, file: !6, line: 444, baseType: !1410, size: 8, offset: 2368)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !105, file: !6, line: 451, baseType: !1410, size: 8, offset: 2376)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !105, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !105, file: !6, line: 455, baseType: !3825, size: 64, offset: 2432)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3827, line: 23, size: 96, elements: !3828)
!3827 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3828 = !{!3829, !3830, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3826, file: !3827, line: 24, baseType: !163, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3826, file: !3827, line: 24, baseType: !163, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3826, file: !3827, line: 24, baseType: !163, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !105, file: !6, line: 458, baseType: !3833, size: 64, offset: 2496)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!163}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !105, file: !6, line: 460, baseType: !3837, size: 4032, align: 512, offset: 2560)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3838, size: 4032, elements: !3852)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3839)
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3838, file: !6, line: 363, baseType: !103, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3838, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3838, file: !6, line: 367, baseType: !3843, size: 448, offset: 128)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3843, file: !6, line: 320, baseType: !104, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3843, file: !6, line: 321, baseType: !3847, size: 384, offset: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3848, line: 40, size: 384, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3849 = !{!3850}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3847, file: !3848, line: 41, baseType: !3851, size: 384, align: 64)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 384, align: 64, elements: !2351)
!3852 = !{!3853}
!3853 = !DISubrange(count: 7)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !105, file: !6, line: 463, baseType: !3855, size: 192, offset: 6592)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3856, line: 8, size: 192, elements: !3857)
!3856 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3857 = !{!3858, !3859, !3860}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3855, file: !3856, line: 10, baseType: !7, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3855, file: !3856, line: 11, baseType: !556, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3855, file: !3856, line: 12, baseType: !3861, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3863, line: 59, size: 48, elements: !3864)
!3863 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3862, file: !3863, line: 60, baseType: !2095, size: 16)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3862, file: !3863, line: 61, baseType: !2095, size: 16, offset: 16)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3862, file: !3863, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3862, file: !3863, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3862, file: !3863, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3862, file: !3863, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !105, file: !6, line: 465, baseType: !260, size: 64, offset: 6784)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !105, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !105, file: !6, line: 470, baseType: !109, size: 128, offset: 6912)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !105, file: !6, line: 471, baseType: !3875, size: 64, offset: 7040)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3877, line: 33, size: 96, elements: !3878)
!3877 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3878 = !{!3879, !3880, !3881, !3882}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3876, file: !3877, line: 37, baseType: !163, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3876, file: !3877, line: 43, baseType: !163, size: 32, offset: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3876, file: !3877, line: 45, baseType: !180, size: 16, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3876, file: !3877, line: 47, baseType: !180, size: 16, offset: 80)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !105, file: !6, line: 476, baseType: !3884, size: 64, offset: 7104)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3886)
!3886 = !{!3887, !3903, !3904, !3905}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3885, file: !6, line: 379, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3890, line: 204, baseType: !3891)
!3890 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3890, line: 197, size: 192, elements: !3892)
!3892 = !{!3893, !3895, !3896, !3897, !3899, !3901}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3891, file: !3890, line: 198, baseType: !3894, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3890, line: 21, baseType: !360)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3891, file: !3890, line: 199, baseType: !172, size: 8, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3891, file: !3890, line: 200, baseType: !172, size: 8, offset: 40)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3891, file: !3890, line: 201, baseType: !3898, size: 16, offset: 48)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3890, line: 17, baseType: !179)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3891, file: !3890, line: 202, baseType: !3900, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3890, line: 16, baseType: !364)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3891, file: !3890, line: 203, baseType: !3902, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3890, line: 22, baseType: !364)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3885, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3885, file: !6, line: 381, baseType: !210, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3885, file: !6, line: 382, baseType: !210, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !105, file: !6, line: 477, baseType: !3885, size: 256, offset: 7168)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !105, file: !6, line: 480, baseType: !3908, size: 64, offset: 7424)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !105, file: !6, line: 483, baseType: !3911, size: 64, offset: 7488)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !105, file: !6, line: 488, baseType: !210, size: 64, offset: 7552)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !105, file: !6, line: 492, baseType: !103, size: 64, offset: 7616)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !105, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !105, file: !6, line: 495, baseType: !103, size: 64, offset: 7744)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !105, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !105, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !105, file: !6, line: 500, baseType: !3920, size: 64, offset: 7872)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3922, line: 45, baseType: !3923)
!3922 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !105, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !105, file: !6, line: 504, baseType: !3926, size: 64, offset: 8000)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3929, line: 96, size: 192, elements: !3930)
!3929 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3930 = !{!3931, !3932, !3975, !3977}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3928, file: !3929, line: 97, baseType: !7, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3928, file: !3929, line: 98, baseType: !3933, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3929, line: 24, size: 3072, elements: !3935)
!3935 = !{!3936, !3938, !3939, !3940, !3941, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3972, !3973, !3974}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3934, file: !3929, line: 26, baseType: !3937, size: 128)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 128, elements: !2351)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3934, file: !3929, line: 27, baseType: !3937, size: 128, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3934, file: !3929, line: 28, baseType: !163, size: 32, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3934, file: !3929, line: 31, baseType: !139, size: 32, align: 512, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3934, file: !3929, line: 32, baseType: !3942, size: 960, offset: 576)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3943, line: 206, size: 960, elements: !3944)
!3943 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3944 = !{!3945, !3946, !3949, !3951, !3952, !3954}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3942, file: !3943, line: 207, baseType: !905, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3942, file: !3943, line: 208, baseType: !3947, size: 256, offset: 64)
!3947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3948, size: 256, elements: !1298)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3942, file: !3943, line: 209, baseType: !3950, size: 256, offset: 320)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !1298)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3942, file: !3943, line: 213, baseType: !246, size: 64, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3942, file: !3943, line: 215, baseType: !3953, size: 256, offset: 640)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !1298)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3942, file: !3943, line: 216, baseType: !168, size: 8, offset: 896)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3934, file: !3929, line: 33, baseType: !260, size: 64, offset: 1536)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3934, file: !3929, line: 34, baseType: !260, size: 64, offset: 1600)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3934, file: !3929, line: 35, baseType: !1410, size: 8, offset: 1664)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3934, file: !3929, line: 36, baseType: !2787, size: 320, offset: 1728)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3934, file: !3929, line: 37, baseType: !2117, size: 256, offset: 2048)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3934, file: !3929, line: 38, baseType: !902, size: 128, align: 64, offset: 2304)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3934, file: !3929, line: 39, baseType: !3962, size: 64, offset: 2432)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3929, line: 49, size: 768, elements: !3964)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3963, file: !3929, line: 50, baseType: !139, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3963, file: !3929, line: 51, baseType: !3950, size: 256, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3963, file: !3929, line: 53, baseType: !3950, size: 256, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3963, file: !3929, line: 54, baseType: !260, size: 64, offset: 576)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3963, file: !3929, line: 55, baseType: !3962, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3963, file: !3929, line: 56, baseType: !163, size: 32, offset: 704)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3963, file: !3929, line: 57, baseType: !163, size: 32, offset: 736)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3934, file: !3929, line: 40, baseType: !260, size: 64, offset: 2496)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3934, file: !3929, line: 42, baseType: !163, size: 32, offset: 2560)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3934, file: !3929, line: 43, baseType: !3927, size: 64, offset: 2624)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3928, file: !3929, line: 99, baseType: !3976, offset: 128)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !492, line: 211, elements: !493)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3928, file: !3929, line: 100, baseType: !3978, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3929, line: 63, size: 3008, elements: !3980)
!3980 = !{!3981, !3982, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4010}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3979, file: !3929, line: 64, baseType: !3962, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3979, file: !3929, line: 65, baseType: !3983, size: 192, offset: 64)
!3983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3962, size: 192, elements: !211)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3979, file: !3929, line: 67, baseType: !163, size: 32, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3979, file: !3929, line: 68, baseType: !589, size: 256, offset: 320)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3979, file: !3929, line: 69, baseType: !139, size: 32, offset: 576)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3979, file: !3929, line: 70, baseType: !589, size: 256, offset: 640)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3979, file: !3929, line: 71, baseType: !260, size: 64, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3979, file: !3929, line: 72, baseType: !260, size: 64, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3979, file: !3929, line: 73, baseType: !260, size: 64, offset: 1024)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3979, file: !3929, line: 74, baseType: !260, size: 64, offset: 1088)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3979, file: !3929, line: 75, baseType: !260, size: 64, offset: 1152)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3979, file: !3929, line: 76, baseType: !260, size: 64, offset: 1216)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3979, file: !3929, line: 77, baseType: !260, size: 64, offset: 1280)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3979, file: !3929, line: 78, baseType: !260, size: 64, offset: 1344)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3979, file: !3929, line: 79, baseType: !1410, size: 8, offset: 1408)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3979, file: !3929, line: 80, baseType: !260, size: 64, offset: 1472)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3979, file: !3929, line: 81, baseType: !589, size: 256, offset: 1536)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3979, file: !3929, line: 82, baseType: !1801, size: 256, offset: 1792)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3979, file: !3929, line: 84, baseType: !159, size: 32, offset: 2048)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3979, file: !3929, line: 87, baseType: !260, size: 64, offset: 2112)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3979, file: !3929, line: 88, baseType: !260, size: 64, offset: 2176)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3979, file: !3929, line: 89, baseType: !4004, size: 704, offset: 2240)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2118, line: 111, size: 704, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4004, file: !2118, line: 112, baseType: !2117, size: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4004, file: !2118, line: 113, baseType: !2787, size: 320, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4004, file: !2118, line: 116, baseType: !3094, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4004, file: !2118, line: 117, baseType: !163, size: 32, offset: 640)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3979, file: !3929, line: 90, baseType: !3927, size: 64, offset: 2944)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !105, file: !6, line: 515, baseType: !4012, size: 64, offset: 8064)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4014, line: 117, size: 128, elements: !4015)
!4014 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4015 = !{!4016, !4017, !4018}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4013, file: !4014, line: 118, baseType: !1353, size: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4013, file: !4014, line: 119, baseType: !1353, size: 32, offset: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4013, file: !4014, line: 120, baseType: !246, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !105, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !105, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !105, file: !6, line: 520, baseType: !4022, size: 64, offset: 8192)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !105, file: !6, line: 523, baseType: !4024, size: 64, offset: 8256)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !105, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !105, file: !6, line: 525, baseType: !4029, size: 64, offset: 8384)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !105, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !105, file: !6, line: 533, baseType: !103, size: 64, offset: 8512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !105, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !105, file: !6, line: 535, baseType: !4036, size: 64, offset: 8640)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !105, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !105, file: !6, line: 539, baseType: !163, size: 32, offset: 8736)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !105, file: !6, line: 540, baseType: !4040, size: 64, offset: 8768)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4042, line: 32, size: 64, elements: !4043)
!4042 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4043 = !{!4044, !4045}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4041, file: !4042, line: 33, baseType: !1353, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4041, file: !4042, line: 34, baseType: !1353, size: 32, offset: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !105, file: !6, line: 563, baseType: !109, size: 128, offset: 8832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !105, file: !6, line: 565, baseType: !109, size: 128, offset: 8960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !105, file: !6, line: 568, baseType: !4049, size: 64, offset: 9088)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !105, file: !6, line: 570, baseType: !159, size: 32, offset: 9152)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !4053, line: 225, size: 3904, elements: !4054)
!4053 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!4054 = !{!4055, !4209, !4213, !4217, !4221, !4222, !4226, !4230, !4234, !4238, !4242, !4246, !4247}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4052, file: !4053, line: 226, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!163, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !4053, line: 175, size: 64, elements: !4061)
!4061 = !{!4062, !4208}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !4060, file: !4053, line: 176, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !4053, line: 268, size: 320, elements: !4065)
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4064, file: !4053, line: 269, baseType: !7, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4064, file: !4053, line: 270, baseType: !4068, size: 256, offset: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !4069, line: 422, size: 256, elements: !4070)
!4069 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!4070 = !{!4071, !4072, !4073, !4074, !4079, !4207}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4068, file: !4069, line: 423, baseType: !932, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !4068, file: !4069, line: 425, baseType: !359, size: 32, offset: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4068, file: !4069, line: 427, baseType: !163, size: 32, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4068, file: !4069, line: 429, baseType: !4075, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !4068, file: !4069, line: 431, baseType: !4080, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !4069, line: 343, size: 3072, align: 64, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4095, !4096, !4172, !4200, !4201, !4202, !4206}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !4081, file: !4069, line: 344, baseType: !109, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !4081, file: !4069, line: 345, baseType: !109, size: 128, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !4081, file: !4069, line: 347, baseType: !359, size: 32, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !4081, file: !4069, line: 348, baseType: !7, size: 32, offset: 288)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !4081, file: !4069, line: 349, baseType: !7, size: 32, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !4081, file: !4069, line: 350, baseType: !7, size: 32, offset: 352)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !4081, file: !4069, line: 352, baseType: !163, size: 32, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !4081, file: !4069, line: 353, baseType: !932, size: 32, offset: 416)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !4081, file: !4069, line: 355, baseType: !4092, size: 1024, offset: 448)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !4081, file: !4069, line: 356, baseType: !4092, size: 1024, offset: 1472)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !4081, file: !4069, line: 358, baseType: !4097, size: 64, offset: 2496)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !564, line: 57, size: 512, elements: !4100)
!4100 = !{!4101, !4105, !4109, !4113, !4117, !4123, !4168, !4169, !4170, !4171}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !4099, file: !564, line: 58, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!7, !4080, !359, !359}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !4099, file: !564, line: 59, baseType: !4106, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!7, !4080}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4099, file: !564, line: 60, baseType: !4110, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!163, !4078}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4099, file: !564, line: 61, baseType: !4114, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !562, !4080}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !4099, file: !564, line: 62, baseType: !4118, size: 64, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!163, !4121, !4080}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !564, line: 55, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4099, file: !564, line: 63, baseType: !4124, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !564, line: 74, size: 3520, elements: !4129)
!4129 = !{!4130, !4131, !4146, !4165, !4166}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4128, file: !564, line: 75, baseType: !4081, size: 3072, align: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !4128, file: !564, line: 77, baseType: !4132, size: 64, offset: 3072)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !564, line: 91, size: 1344, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4145}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4133, file: !564, line: 92, baseType: !109, size: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !4133, file: !564, line: 93, baseType: !481, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4133, file: !564, line: 94, baseType: !104, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4133, file: !564, line: 96, baseType: !4139, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!163, !4132, !4142}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !564, line: 52, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4133, file: !564, line: 98, baseType: !4092, size: 1024, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !564, line: 79, baseType: !4147, size: 128, offset: 3136)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !564, line: 79, size: 128, elements: !4148)
!4148 = !{!4149, !4150}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4147, file: !564, line: 81, baseType: !485, size: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !4147, file: !564, line: 83, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !564, line: 101, size: 384, elements: !4153)
!4153 = !{!4154, !4155, !4156, !4161, !4162, !4163, !4164}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4152, file: !564, line: 102, baseType: !109, size: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4152, file: !564, line: 103, baseType: !4080, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !564, line: 104, baseType: !4157, size: 64, offset: 192)
!4157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4152, file: !564, line: 104, size: 64, elements: !4158)
!4158 = !{!4159, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !4157, file: !564, line: 106, baseType: !4127, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4157, file: !564, line: 108, baseType: !4151, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4152, file: !564, line: 110, baseType: !4097, size: 64, offset: 256)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4152, file: !564, line: 111, baseType: !359, size: 32, offset: 320)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4152, file: !564, line: 112, baseType: !1410, size: 8, offset: 352)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4152, file: !564, line: 113, baseType: !1410, size: 8, offset: 360)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !4128, file: !564, line: 86, baseType: !2117, size: 256, offset: 3264)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4128, file: !564, line: 88, baseType: !4167, align: 64, offset: 3520)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !1311)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4099, file: !564, line: 68, baseType: !7, size: 32, offset: 384)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !4099, file: !564, line: 69, baseType: !7, size: 32, offset: 416)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !4099, file: !564, line: 70, baseType: !7, size: 32, offset: 448)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !4099, file: !564, line: 71, baseType: !7, size: 32, offset: 480)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !4081, file: !4069, line: 363, baseType: !4173, size: 256, offset: 2560)
!4173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4081, file: !4069, line: 360, size: 256, elements: !4174)
!4174 = !{!4175, !4192}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !4173, file: !4069, line: 361, baseType: !4176, size: 256)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !4069, line: 235, size: 256, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4186, !4191}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !4176, file: !4069, line: 236, baseType: !7, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !4176, file: !4069, line: 237, baseType: !7, size: 32, offset: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !4176, file: !4069, line: 238, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!163, !4078, !4184, !7}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !4176, file: !4069, line: 240, baseType: !4187, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !4078, !4190, !4184}
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !4176, file: !4069, line: 241, baseType: !4187, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !4173, file: !4069, line: 362, baseType: !4193, size: 128)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !4069, line: 255, size: 128, elements: !4194)
!4194 = !{!4195, !4199}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !4193, file: !4069, line: 256, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!163, !4078, !4184, !7, !4190, !911}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !4193, file: !4069, line: 258, baseType: !4196, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !4081, file: !4069, line: 365, baseType: !4110, size: 64, offset: 2816)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !4081, file: !4069, line: 366, baseType: !4075, size: 64, offset: 2880)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !4081, file: !4069, line: 367, baseType: !4203, size: 64, offset: 2944)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !4080}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !4081, file: !4069, line: 369, baseType: !104, size: 64, offset: 3008)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !4068, file: !4069, line: 433, baseType: !4167, align: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4060, file: !4053, line: 177, baseType: !4167, align: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4052, file: !4053, line: 227, baseType: !4210, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!163, !4059, !4184, !7}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4052, file: !4053, line: 229, baseType: !4214, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!163, !4059, !4190}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4052, file: !4053, line: 230, baseType: !4218, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!163, !4059, !4184, !7, !4190}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4052, file: !4053, line: 232, baseType: !4218, size: 64, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4052, file: !4053, line: 234, baseType: !4223, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!163, !4059, !103}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4052, file: !4053, line: 235, baseType: !4227, size: 64, offset: 384)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!163, !4059, !2078}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4052, file: !4053, line: 236, baseType: !4231, size: 64, offset: 448)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!163, !4063, !4184, !7}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4052, file: !4053, line: 238, baseType: !4235, size: 64, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!163, !4063}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !4052, file: !4053, line: 239, baseType: !4239, size: 64, offset: 576)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4063}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !4052, file: !4053, line: 240, baseType: !4243, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!163, !4063, !4063}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4052, file: !4053, line: 242, baseType: !7, size: 32, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !4053, line: 244, baseType: !4248, size: 3136, offset: 768)
!4248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !4053, line: 244, size: 3136, elements: !4249)
!4249 = !{!4250, !4256}
!4250 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !4053, line: 245, baseType: !4251, size: 3136)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4248, file: !4053, line: 245, size: 3136, elements: !4252)
!4252 = !{!4253, !4254, !4255}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4251, file: !4053, line: 245, baseType: !7, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4251, file: !4053, line: 245, baseType: !7, size: 32, offset: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4251, file: !4053, line: 245, baseType: !4081, size: 3072, align: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !4248, file: !4053, line: 246, baseType: !4257, size: 3136)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !4053, line: 70, size: 3136, elements: !4258)
!4258 = !{!4259, !4260, !4261}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4257, file: !4053, line: 70, baseType: !7, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4257, file: !4053, line: 70, baseType: !7, size: 32, offset: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4257, file: !4053, line: 70, baseType: !4081, size: 3072, align: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_instance", file: !4264, line: 43, size: 4416, elements: !4265)
!4264 = !DIFile(filename: "./include/crypto/internal/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed36183aa18097edaf56e7e16397323")
!4265 = !{!4266, !4270}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4263, file: !4264, line: 44, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4262}
!4270 = !DIDerivedType(tag: DW_TAG_member, scope: !4263, file: !4264, line: 45, baseType: !4271, size: 4352, offset: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4263, file: !4264, line: 45, size: 4352, elements: !4272)
!4272 = !{!4273, !4281}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4271, file: !4264, line: 49, baseType: !4274, size: 4352)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4271, file: !4264, line: 46, size: 4352, elements: !4275)
!4275 = !{!4276, !4280}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4274, file: !4264, line: 47, baseType: !4277, size: 832)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 832, elements: !4278)
!4278 = !{!4279}
!4279 = !DISubrange(count: 104)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4274, file: !4264, line: 48, baseType: !4128, size: 3520, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4271, file: !4264, line: 50, baseType: !4052, size: 3904)
!4282 = !{!4283, !4285, !4289, !4294, !4299, !4304, !4307, !0, !4312}
!4283 = !DIGlobalVariableExpression(var: !4284, expr: !DIExpression())
!4284 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_hmac__315_274_hmac_module_init4316", scope: !2, file: !3, line: 274, type: !103, isLocal: true, isDefinition: true)
!4285 = !DIGlobalVariableExpression(var: !4286, expr: !DIExpression())
!4286 = distinct !DIGlobalVariable(name: "__exitcall_hmac_module_exit", scope: !2, file: !3, line: 275, type: !4287, isLocal: true, isDefinition: true)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4288, line: 120, baseType: !4049)
!4288 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4289 = !DIGlobalVariableExpression(var: !4290, expr: !DIExpression())
!4290 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file317", scope: !2, file: !3, line: 277, type: !4291, isLocal: true, isDefinition: true, align: 8)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 176, elements: !4292)
!4292 = !{!4293}
!4293 = !DISubrange(count: 22)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license318", scope: !2, file: !3, line: 277, type: !4296, isLocal: true, isDefinition: true, align: 8)
!4296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 136, elements: !4297)
!4297 = !{!4298}
!4298 = !DISubrange(count: 17)
!4299 = !DIGlobalVariableExpression(var: !4300, expr: !DIExpression())
!4300 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description319", scope: !2, file: !3, line: 278, type: !4301, isLocal: true, isDefinition: true, align: 8)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 296, elements: !4302)
!4302 = !{!4303}
!4303 = !DISubrange(count: 37)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_userspace320", scope: !2, file: !3, line: 279, type: !4306, isLocal: true, isDefinition: true, align: 8)
!4306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !2270)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias_crypto321", scope: !2, file: !3, line: 279, type: !4309, isLocal: true, isDefinition: true, align: 8)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 184, elements: !4310)
!4310 = !{!4311}
!4311 = !DISubrange(count: 23)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4314, isLocal: true, isDefinition: true)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 168, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 21)
!4317 = !{i32 7, !"Dwarf Version", i32 5}
!4318 = !{i32 2, !"Debug Info Version", i32 3}
!4319 = !{i32 1, !"wchar_size", i32 2}
!4320 = !{i32 8, !"cf-protection-branch", i32 1}
!4321 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4322 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4323 = !{i32 1, !"Code Model", i32 2}
!4324 = !{i32 1, !"override-stack-alignment", i32 8}
!4325 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4326 = distinct !DISubprogram(name: "hmac_module_exit", scope: !3, file: !3, line: 269, type: !2465, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4327 = !DILocation(line: 271, column: 2, scope: !4326)
!4328 = !DILocation(line: 272, column: 1, scope: !4326)
!4329 = !DISubprogram(name: "crypto_unregister_template", scope: !564, file: !564, line: 150, type: !4330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !4132}
!4332 = distinct !DISubprogram(name: "__initstub__kmod_hmac__315_274_hmac_module_init4", scope: !3, file: !3, line: 274, type: !3834, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4333 = !DILocation(line: 274, column: 1, scope: !4332)
!4334 = distinct !DISubprogram(name: "hmac_module_init", scope: !3, file: !3, line: 264, type: !3834, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4335 = !DILocation(line: 266, column: 9, scope: !4334)
!4336 = !DILocation(line: 266, column: 2, scope: !4334)
!4337 = distinct !DISubprogram(name: "hmac_create", scope: !3, file: !3, line: 184, type: !4140, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4338 = !{!4339, !4340, !4341, !4342, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!4339 = !DILocalVariable(name: "tmpl", arg: 1, scope: !4337, file: !3, line: 184, type: !4132)
!4340 = !DILocalVariable(name: "tb", arg: 2, scope: !4337, file: !3, line: 184, type: !4142)
!4341 = !DILocalVariable(name: "inst", scope: !4337, file: !3, line: 186, type: !4262)
!4342 = !DILocalVariable(name: "spawn", scope: !4337, file: !3, line: 187, type: !4343)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash_spawn", file: !4264, line: 58, size: 384, elements: !4345)
!4345 = !{!4346}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4344, file: !4264, line: 59, baseType: !4152, size: 384)
!4347 = !DILocalVariable(name: "alg", scope: !4337, file: !3, line: 188, type: !4080)
!4348 = !DILocalVariable(name: "salg", scope: !4337, file: !3, line: 189, type: !4051)
!4349 = !DILocalVariable(name: "mask", scope: !4337, file: !3, line: 190, type: !359)
!4350 = !DILocalVariable(name: "err", scope: !4337, file: !3, line: 191, type: !163)
!4351 = !DILocalVariable(name: "ds", scope: !4337, file: !3, line: 192, type: !163)
!4352 = !DILocalVariable(name: "ss", scope: !4337, file: !3, line: 193, type: !163)
!4353 = !DILabel(scope: !4354, name: "err_free_inst", file: !3, line: 252)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 251, column: 11)
!4355 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 251, column: 6)
!4356 = !DILocation(line: 184, column: 48, scope: !4337)
!4357 = !DILocation(line: 184, column: 70, scope: !4337)
!4358 = !DILocation(line: 186, column: 2, scope: !4337)
!4359 = !DILocation(line: 186, column: 25, scope: !4337)
!4360 = !DILocation(line: 187, column: 2, scope: !4337)
!4361 = !DILocation(line: 187, column: 29, scope: !4337)
!4362 = !DILocation(line: 188, column: 2, scope: !4337)
!4363 = !DILocation(line: 188, column: 21, scope: !4337)
!4364 = !DILocation(line: 189, column: 2, scope: !4337)
!4365 = !DILocation(line: 189, column: 20, scope: !4337)
!4366 = !DILocation(line: 190, column: 2, scope: !4337)
!4367 = !DILocation(line: 190, column: 6, scope: !4337)
!4368 = !DILocation(line: 191, column: 2, scope: !4337)
!4369 = !DILocation(line: 191, column: 6, scope: !4337)
!4370 = !DILocation(line: 192, column: 2, scope: !4337)
!4371 = !DILocation(line: 192, column: 6, scope: !4337)
!4372 = !DILocation(line: 193, column: 2, scope: !4337)
!4373 = !DILocation(line: 193, column: 6, scope: !4337)
!4374 = !DILocation(line: 195, column: 31, scope: !4337)
!4375 = !DILocation(line: 195, column: 8, scope: !4337)
!4376 = !DILocation(line: 195, column: 6, scope: !4337)
!4377 = !DILocation(line: 196, column: 6, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 196, column: 6)
!4379 = !DILocation(line: 196, column: 6, scope: !4337)
!4380 = !DILocation(line: 197, column: 10, scope: !4378)
!4381 = !DILocation(line: 197, column: 3, scope: !4378)
!4382 = !DILocation(line: 199, column: 9, scope: !4337)
!4383 = !DILocation(line: 199, column: 7, scope: !4337)
!4384 = !DILocation(line: 200, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 200, column: 6)
!4386 = !DILocation(line: 200, column: 6, scope: !4337)
!4387 = !DILocation(line: 201, column: 3, scope: !4385)
!4388 = !DILocation(line: 202, column: 29, scope: !4337)
!4389 = !DILocation(line: 202, column: 10, scope: !4337)
!4390 = !DILocation(line: 202, column: 8, scope: !4337)
!4391 = !DILocation(line: 204, column: 26, scope: !4337)
!4392 = !DILocation(line: 204, column: 55, scope: !4337)
!4393 = !DILocation(line: 204, column: 33, scope: !4337)
!4394 = !DILocation(line: 205, column: 26, scope: !4337)
!4395 = !DILocation(line: 205, column: 5, scope: !4337)
!4396 = !DILocation(line: 205, column: 37, scope: !4337)
!4397 = !DILocation(line: 204, column: 8, scope: !4337)
!4398 = !DILocation(line: 204, column: 6, scope: !4337)
!4399 = !DILocation(line: 206, column: 6, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 206, column: 6)
!4401 = !DILocation(line: 206, column: 6, scope: !4337)
!4402 = !DILocation(line: 207, column: 3, scope: !4400)
!4403 = !DILocation(line: 208, column: 32, scope: !4337)
!4404 = !DILocation(line: 208, column: 9, scope: !4337)
!4405 = !DILocation(line: 208, column: 7, scope: !4337)
!4406 = !DILocation(line: 209, column: 9, scope: !4337)
!4407 = !DILocation(line: 209, column: 15, scope: !4337)
!4408 = !DILocation(line: 209, column: 6, scope: !4337)
!4409 = !DILocation(line: 212, column: 6, scope: !4337)
!4410 = !DILocation(line: 213, column: 33, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 213, column: 6)
!4412 = !DILocation(line: 213, column: 6, scope: !4411)
!4413 = !DILocation(line: 213, column: 6, scope: !4337)
!4414 = !DILocation(line: 214, column: 3, scope: !4411)
!4415 = !DILocation(line: 216, column: 7, scope: !4337)
!4416 = !DILocation(line: 216, column: 13, scope: !4337)
!4417 = !DILocation(line: 216, column: 5, scope: !4337)
!4418 = !DILocation(line: 217, column: 7, scope: !4337)
!4419 = !DILocation(line: 217, column: 13, scope: !4337)
!4420 = !DILocation(line: 217, column: 5, scope: !4337)
!4421 = !DILocation(line: 218, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 218, column: 6)
!4423 = !DILocation(line: 218, column: 11, scope: !4422)
!4424 = !DILocation(line: 218, column: 16, scope: !4422)
!4425 = !DILocation(line: 218, column: 9, scope: !4422)
!4426 = !DILocation(line: 218, column: 30, scope: !4422)
!4427 = !DILocation(line: 219, column: 6, scope: !4422)
!4428 = !DILocation(line: 219, column: 11, scope: !4422)
!4429 = !DILocation(line: 219, column: 16, scope: !4422)
!4430 = !DILocation(line: 219, column: 9, scope: !4422)
!4431 = !DILocation(line: 218, column: 6, scope: !4337)
!4432 = !DILocation(line: 220, column: 3, scope: !4422)
!4433 = !DILocation(line: 222, column: 50, scope: !4337)
!4434 = !DILocation(line: 222, column: 28, scope: !4337)
!4435 = !DILocation(line: 222, column: 57, scope: !4337)
!4436 = !DILocation(line: 222, column: 63, scope: !4337)
!4437 = !DILocation(line: 222, column: 69, scope: !4337)
!4438 = !DILocation(line: 222, column: 8, scope: !4337)
!4439 = !DILocation(line: 222, column: 6, scope: !4337)
!4440 = !DILocation(line: 223, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 223, column: 6)
!4442 = !DILocation(line: 223, column: 6, scope: !4337)
!4443 = !DILocation(line: 224, column: 3, scope: !4441)
!4444 = !DILocation(line: 226, column: 32, scope: !4337)
!4445 = !DILocation(line: 226, column: 37, scope: !4337)
!4446 = !DILocation(line: 226, column: 2, scope: !4337)
!4447 = !DILocation(line: 226, column: 8, scope: !4337)
!4448 = !DILocation(line: 226, column: 12, scope: !4337)
!4449 = !DILocation(line: 226, column: 17, scope: !4337)
!4450 = !DILocation(line: 226, column: 30, scope: !4337)
!4451 = !DILocation(line: 227, column: 33, scope: !4337)
!4452 = !DILocation(line: 227, column: 38, scope: !4337)
!4453 = !DILocation(line: 227, column: 2, scope: !4337)
!4454 = !DILocation(line: 227, column: 8, scope: !4337)
!4455 = !DILocation(line: 227, column: 12, scope: !4337)
!4456 = !DILocation(line: 227, column: 17, scope: !4337)
!4457 = !DILocation(line: 227, column: 31, scope: !4337)
!4458 = !DILocation(line: 228, column: 33, scope: !4337)
!4459 = !DILocation(line: 228, column: 38, scope: !4337)
!4460 = !DILocation(line: 228, column: 2, scope: !4337)
!4461 = !DILocation(line: 228, column: 8, scope: !4337)
!4462 = !DILocation(line: 228, column: 12, scope: !4337)
!4463 = !DILocation(line: 228, column: 17, scope: !4337)
!4464 = !DILocation(line: 228, column: 31, scope: !4337)
!4465 = !DILocation(line: 230, column: 7, scope: !4337)
!4466 = !DILocation(line: 230, column: 5, scope: !4337)
!4467 = !DILocation(line: 231, column: 25, scope: !4337)
!4468 = !DILocation(line: 231, column: 2, scope: !4337)
!4469 = !DILocation(line: 231, column: 8, scope: !4337)
!4470 = !DILocation(line: 231, column: 12, scope: !4337)
!4471 = !DILocation(line: 231, column: 23, scope: !4337)
!4472 = !DILocation(line: 232, column: 24, scope: !4337)
!4473 = !DILocation(line: 232, column: 2, scope: !4337)
!4474 = !DILocation(line: 232, column: 8, scope: !4337)
!4475 = !DILocation(line: 232, column: 12, scope: !4337)
!4476 = !DILocation(line: 232, column: 22, scope: !4337)
!4477 = !DILocation(line: 235, column: 10, scope: !4337)
!4478 = !DILocation(line: 234, column: 55, scope: !4337)
!4479 = !DILocation(line: 234, column: 31, scope: !4337)
!4480 = !DILocation(line: 234, column: 2, scope: !4337)
!4481 = !DILocation(line: 234, column: 8, scope: !4337)
!4482 = !DILocation(line: 234, column: 12, scope: !4337)
!4483 = !DILocation(line: 234, column: 17, scope: !4337)
!4484 = !DILocation(line: 234, column: 29, scope: !4337)
!4485 = !DILocation(line: 237, column: 2, scope: !4337)
!4486 = !DILocation(line: 237, column: 8, scope: !4337)
!4487 = !DILocation(line: 237, column: 12, scope: !4337)
!4488 = !DILocation(line: 237, column: 17, scope: !4337)
!4489 = !DILocation(line: 238, column: 2, scope: !4337)
!4490 = !DILocation(line: 238, column: 8, scope: !4337)
!4491 = !DILocation(line: 238, column: 12, scope: !4337)
!4492 = !DILocation(line: 238, column: 19, scope: !4337)
!4493 = !DILocation(line: 239, column: 2, scope: !4337)
!4494 = !DILocation(line: 239, column: 8, scope: !4337)
!4495 = !DILocation(line: 239, column: 12, scope: !4337)
!4496 = !DILocation(line: 239, column: 18, scope: !4337)
!4497 = !DILocation(line: 240, column: 2, scope: !4337)
!4498 = !DILocation(line: 240, column: 8, scope: !4337)
!4499 = !DILocation(line: 240, column: 12, scope: !4337)
!4500 = !DILocation(line: 240, column: 18, scope: !4337)
!4501 = !DILocation(line: 241, column: 2, scope: !4337)
!4502 = !DILocation(line: 241, column: 8, scope: !4337)
!4503 = !DILocation(line: 241, column: 12, scope: !4337)
!4504 = !DILocation(line: 241, column: 19, scope: !4337)
!4505 = !DILocation(line: 242, column: 2, scope: !4337)
!4506 = !DILocation(line: 242, column: 8, scope: !4337)
!4507 = !DILocation(line: 242, column: 12, scope: !4337)
!4508 = !DILocation(line: 242, column: 19, scope: !4337)
!4509 = !DILocation(line: 243, column: 2, scope: !4337)
!4510 = !DILocation(line: 243, column: 8, scope: !4337)
!4511 = !DILocation(line: 243, column: 12, scope: !4337)
!4512 = !DILocation(line: 243, column: 19, scope: !4337)
!4513 = !DILocation(line: 244, column: 2, scope: !4337)
!4514 = !DILocation(line: 244, column: 8, scope: !4337)
!4515 = !DILocation(line: 244, column: 12, scope: !4337)
!4516 = !DILocation(line: 244, column: 21, scope: !4337)
!4517 = !DILocation(line: 245, column: 2, scope: !4337)
!4518 = !DILocation(line: 245, column: 8, scope: !4337)
!4519 = !DILocation(line: 245, column: 12, scope: !4337)
!4520 = !DILocation(line: 245, column: 22, scope: !4337)
!4521 = !DILocation(line: 246, column: 2, scope: !4337)
!4522 = !DILocation(line: 246, column: 8, scope: !4337)
!4523 = !DILocation(line: 246, column: 12, scope: !4337)
!4524 = !DILocation(line: 246, column: 21, scope: !4337)
!4525 = !DILocation(line: 248, column: 2, scope: !4337)
!4526 = !DILocation(line: 248, column: 8, scope: !4337)
!4527 = !DILocation(line: 248, column: 13, scope: !4337)
!4528 = !DILocation(line: 250, column: 32, scope: !4337)
!4529 = !DILocation(line: 250, column: 38, scope: !4337)
!4530 = !DILocation(line: 250, column: 8, scope: !4337)
!4531 = !DILocation(line: 250, column: 6, scope: !4337)
!4532 = !DILocation(line: 251, column: 6, scope: !4355)
!4533 = !DILocation(line: 251, column: 6, scope: !4337)
!4534 = !DILocation(line: 251, column: 11, scope: !4355)
!4535 = !DILocation(line: 252, column: 1, scope: !4354)
!4536 = !DILocation(line: 253, column: 35, scope: !4354)
!4537 = !DILocation(line: 253, column: 3, scope: !4354)
!4538 = !DILocation(line: 254, column: 2, scope: !4354)
!4539 = !DILocation(line: 255, column: 9, scope: !4337)
!4540 = !DILocation(line: 255, column: 2, scope: !4337)
!4541 = !DILocation(line: 256, column: 1, scope: !4337)
!4542 = !DISubprogram(name: "crypto_check_attr_type", scope: !564, file: !564, line: 166, type: !4543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!163, !4142, !359, !2168}
!4545 = distinct !DISubprogram(name: "kzalloc", scope: !93, file: !93, line: 719, type: !4546, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!103, !257, !654}
!4548 = !{!4549, !4550}
!4549 = !DILocalVariable(name: "size", arg: 1, scope: !4545, file: !93, line: 719, type: !257)
!4550 = !DILocalVariable(name: "flags", arg: 2, scope: !4545, file: !93, line: 719, type: !654)
!4551 = !DILocation(line: 719, column: 52, scope: !4545)
!4552 = !DILocation(line: 719, column: 64, scope: !4545)
!4553 = !DILocation(line: 721, column: 17, scope: !4545)
!4554 = !DILocation(line: 721, column: 23, scope: !4545)
!4555 = !DILocation(line: 721, column: 29, scope: !4545)
!4556 = !DILocation(line: 721, column: 9, scope: !4545)
!4557 = !DILocation(line: 721, column: 2, scope: !4545)
!4558 = distinct !DISubprogram(name: "shash_instance_ctx", scope: !4264, file: !4264, line: 261, type: !4559, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4561)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!103, !4262}
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "inst", arg: 1, scope: !4558, file: !4264, line: 261, type: !4262)
!4563 = !DILocation(line: 261, column: 63, scope: !4558)
!4564 = !DILocation(line: 263, column: 51, scope: !4558)
!4565 = !DILocation(line: 263, column: 29, scope: !4558)
!4566 = !DILocation(line: 263, column: 9, scope: !4558)
!4567 = !DILocation(line: 263, column: 2, scope: !4558)
!4568 = !DISubprogram(name: "crypto_grab_shash", scope: !4264, file: !4264, line: 117, type: !4569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!163, !4343, !4127, !128, !359, !359}
!4571 = distinct !DISubprogram(name: "shash_crypto_instance", scope: !4264, file: !4264, line: 243, type: !4572, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!4127, !4262}
!4574 = !{!4575}
!4575 = !DILocalVariable(name: "inst", arg: 1, scope: !4571, file: !4264, line: 244, type: !4262)
!4576 = !DILocation(line: 244, column: 25, scope: !4571)
!4577 = !DILocation(line: 246, column: 10, scope: !4571)
!4578 = !DILocation(line: 246, column: 16, scope: !4571)
!4579 = !DILocation(line: 246, column: 18, scope: !4571)
!4580 = !DILocation(line: 246, column: 2, scope: !4571)
!4581 = !DISubprogram(name: "crypto_attr_alg_name", scope: !564, file: !564, line: 167, type: !4582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!128, !4143}
!4584 = distinct !DISubprogram(name: "crypto_spawn_shash_alg", scope: !4264, file: !4264, line: 126, type: !4585, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4587)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!4051, !4343}
!4587 = !{!4588}
!4588 = !DILocalVariable(name: "spawn", arg: 1, scope: !4584, file: !4264, line: 127, type: !4343)
!4589 = !DILocation(line: 127, column: 29, scope: !4584)
!4590 = !DILocation(line: 129, column: 28, scope: !4584)
!4591 = !DILocation(line: 129, column: 35, scope: !4584)
!4592 = !DILocation(line: 129, column: 40, scope: !4584)
!4593 = !DILocation(line: 129, column: 9, scope: !4584)
!4594 = !DILocation(line: 129, column: 2, scope: !4584)
!4595 = distinct !DISubprogram(name: "crypto_shash_alg_needs_key", scope: !4264, file: !4264, line: 86, type: !4596, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!1410, !4051}
!4598 = !{!4599}
!4599 = !DILocalVariable(name: "alg", arg: 1, scope: !4595, file: !4264, line: 86, type: !4051)
!4600 = !DILocation(line: 86, column: 65, scope: !4595)
!4601 = !DILocation(line: 88, column: 37, scope: !4595)
!4602 = !DILocation(line: 88, column: 9, scope: !4595)
!4603 = !DILocation(line: 88, column: 42, scope: !4595)
!4604 = !DILocation(line: 89, column: 5, scope: !4595)
!4605 = !DILocation(line: 89, column: 10, scope: !4595)
!4606 = !DILocation(line: 89, column: 15, scope: !4595)
!4607 = !DILocation(line: 89, column: 25, scope: !4595)
!4608 = !DILocation(line: 89, column: 3, scope: !4595)
!4609 = !DILocation(line: 0, scope: !4595)
!4610 = !DILocation(line: 88, column: 2, scope: !4595)
!4611 = !DISubprogram(name: "crypto_inst_setname", scope: !564, file: !564, line: 168, type: !4612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!163, !4127, !128, !4080}
!4614 = distinct !DISubprogram(name: "crypto_tfm_ctx_alignment", scope: !4069, file: !4069, line: 490, type: !4615, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4617)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!7}
!4617 = !{!4618}
!4618 = !DILocalVariable(name: "tfm", scope: !4614, file: !4069, line: 492, type: !4078)
!4619 = !DILocation(line: 492, column: 2, scope: !4614)
!4620 = !DILocation(line: 492, column: 21, scope: !4614)
!4621 = !DILocation(line: 494, column: 1, scope: !4614)
!4622 = !DILocation(line: 493, column: 2, scope: !4614)
!4623 = distinct !DISubprogram(name: "hmac_init", scope: !3, file: !3, line: 104, type: !4057, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4624 = !{!4625}
!4625 = !DILocalVariable(name: "pdesc", arg: 1, scope: !4623, file: !3, line: 104, type: !4059)
!4626 = !DILocation(line: 104, column: 41, scope: !4623)
!4627 = !DILocation(line: 106, column: 21, scope: !4623)
!4628 = !DILocation(line: 106, column: 53, scope: !4623)
!4629 = !DILocation(line: 106, column: 60, scope: !4623)
!4630 = !DILocation(line: 106, column: 28, scope: !4623)
!4631 = !DILocation(line: 106, column: 9, scope: !4623)
!4632 = !DILocation(line: 106, column: 2, scope: !4623)
!4633 = distinct !DISubprogram(name: "hmac_update", scope: !3, file: !3, line: 109, type: !4211, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4634)
!4634 = !{!4635, !4636, !4637, !4638}
!4635 = !DILocalVariable(name: "pdesc", arg: 1, scope: !4633, file: !3, line: 109, type: !4059)
!4636 = !DILocalVariable(name: "data", arg: 2, scope: !4633, file: !3, line: 110, type: !4184)
!4637 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4633, file: !3, line: 110, type: !7)
!4638 = !DILocalVariable(name: "desc", scope: !4633, file: !3, line: 112, type: !4059)
!4639 = !DILocation(line: 109, column: 43, scope: !4633)
!4640 = !DILocation(line: 110, column: 20, scope: !4633)
!4641 = !DILocation(line: 110, column: 39, scope: !4633)
!4642 = !DILocation(line: 112, column: 2, scope: !4633)
!4643 = !DILocation(line: 112, column: 21, scope: !4633)
!4644 = !DILocation(line: 112, column: 43, scope: !4633)
!4645 = !DILocation(line: 112, column: 28, scope: !4633)
!4646 = !DILocation(line: 114, column: 29, scope: !4633)
!4647 = !DILocation(line: 114, column: 35, scope: !4633)
!4648 = !DILocation(line: 114, column: 41, scope: !4633)
!4649 = !DILocation(line: 114, column: 9, scope: !4633)
!4650 = !DILocation(line: 115, column: 1, scope: !4633)
!4651 = !DILocation(line: 114, column: 2, scope: !4633)
!4652 = distinct !DISubprogram(name: "hmac_final", scope: !3, file: !3, line: 117, type: !4215, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4653)
!4653 = !{!4654, !4655, !4656, !4657, !4658, !4659, !4660}
!4654 = !DILocalVariable(name: "pdesc", arg: 1, scope: !4652, file: !3, line: 117, type: !4059)
!4655 = !DILocalVariable(name: "out", arg: 2, scope: !4652, file: !3, line: 117, type: !4190)
!4656 = !DILocalVariable(name: "parent", scope: !4652, file: !3, line: 119, type: !4063)
!4657 = !DILocalVariable(name: "ds", scope: !4652, file: !3, line: 120, type: !163)
!4658 = !DILocalVariable(name: "ss", scope: !4652, file: !3, line: 121, type: !163)
!4659 = !DILocalVariable(name: "opad", scope: !4652, file: !3, line: 122, type: !210)
!4660 = !DILocalVariable(name: "desc", scope: !4652, file: !3, line: 123, type: !4059)
!4661 = !DILocation(line: 117, column: 42, scope: !4652)
!4662 = !DILocation(line: 117, column: 53, scope: !4652)
!4663 = !DILocation(line: 119, column: 2, scope: !4652)
!4664 = !DILocation(line: 119, column: 23, scope: !4652)
!4665 = !DILocation(line: 119, column: 32, scope: !4652)
!4666 = !DILocation(line: 119, column: 39, scope: !4652)
!4667 = !DILocation(line: 120, column: 2, scope: !4652)
!4668 = !DILocation(line: 120, column: 6, scope: !4652)
!4669 = !DILocation(line: 120, column: 35, scope: !4652)
!4670 = !DILocation(line: 120, column: 11, scope: !4652)
!4671 = !DILocation(line: 121, column: 2, scope: !4652)
!4672 = !DILocation(line: 121, column: 6, scope: !4652)
!4673 = !DILocation(line: 121, column: 34, scope: !4652)
!4674 = !DILocation(line: 121, column: 11, scope: !4652)
!4675 = !DILocation(line: 122, column: 2, scope: !4652)
!4676 = !DILocation(line: 122, column: 8, scope: !4652)
!4677 = !DILocation(line: 122, column: 40, scope: !4652)
!4678 = !DILocation(line: 122, column: 15, scope: !4652)
!4679 = !DILocation(line: 122, column: 50, scope: !4652)
!4680 = !DILocation(line: 122, column: 48, scope: !4652)
!4681 = !DILocation(line: 123, column: 2, scope: !4652)
!4682 = !DILocation(line: 123, column: 21, scope: !4652)
!4683 = !DILocation(line: 123, column: 43, scope: !4652)
!4684 = !DILocation(line: 123, column: 28, scope: !4652)
!4685 = !DILocation(line: 125, column: 28, scope: !4652)
!4686 = !DILocation(line: 125, column: 34, scope: !4652)
!4687 = !DILocation(line: 125, column: 9, scope: !4652)
!4688 = !DILocation(line: 126, column: 29, scope: !4652)
!4689 = !DILocation(line: 126, column: 35, scope: !4652)
!4690 = !DILocation(line: 126, column: 9, scope: !4652)
!4691 = !DILocation(line: 127, column: 28, scope: !4652)
!4692 = !DILocation(line: 127, column: 34, scope: !4652)
!4693 = !DILocation(line: 127, column: 39, scope: !4652)
!4694 = !DILocation(line: 127, column: 43, scope: !4652)
!4695 = !DILocation(line: 127, column: 9, scope: !4652)
!4696 = !DILocation(line: 128, column: 1, scope: !4652)
!4697 = !DILocation(line: 125, column: 2, scope: !4652)
!4698 = distinct !DISubprogram(name: "hmac_finup", scope: !3, file: !3, line: 130, type: !4219, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4699)
!4699 = !{!4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708}
!4700 = !DILocalVariable(name: "pdesc", arg: 1, scope: !4698, file: !3, line: 130, type: !4059)
!4701 = !DILocalVariable(name: "data", arg: 2, scope: !4698, file: !3, line: 130, type: !4184)
!4702 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4698, file: !3, line: 131, type: !7)
!4703 = !DILocalVariable(name: "out", arg: 4, scope: !4698, file: !3, line: 131, type: !4190)
!4704 = !DILocalVariable(name: "parent", scope: !4698, file: !3, line: 134, type: !4063)
!4705 = !DILocalVariable(name: "ds", scope: !4698, file: !3, line: 135, type: !163)
!4706 = !DILocalVariable(name: "ss", scope: !4698, file: !3, line: 136, type: !163)
!4707 = !DILocalVariable(name: "opad", scope: !4698, file: !3, line: 137, type: !210)
!4708 = !DILocalVariable(name: "desc", scope: !4698, file: !3, line: 138, type: !4059)
!4709 = !DILocation(line: 130, column: 42, scope: !4698)
!4710 = !DILocation(line: 130, column: 59, scope: !4698)
!4711 = !DILocation(line: 131, column: 22, scope: !4698)
!4712 = !DILocation(line: 131, column: 34, scope: !4698)
!4713 = !DILocation(line: 134, column: 2, scope: !4698)
!4714 = !DILocation(line: 134, column: 23, scope: !4698)
!4715 = !DILocation(line: 134, column: 32, scope: !4698)
!4716 = !DILocation(line: 134, column: 39, scope: !4698)
!4717 = !DILocation(line: 135, column: 2, scope: !4698)
!4718 = !DILocation(line: 135, column: 6, scope: !4698)
!4719 = !DILocation(line: 135, column: 35, scope: !4698)
!4720 = !DILocation(line: 135, column: 11, scope: !4698)
!4721 = !DILocation(line: 136, column: 2, scope: !4698)
!4722 = !DILocation(line: 136, column: 6, scope: !4698)
!4723 = !DILocation(line: 136, column: 34, scope: !4698)
!4724 = !DILocation(line: 136, column: 11, scope: !4698)
!4725 = !DILocation(line: 137, column: 2, scope: !4698)
!4726 = !DILocation(line: 137, column: 8, scope: !4698)
!4727 = !DILocation(line: 137, column: 40, scope: !4698)
!4728 = !DILocation(line: 137, column: 15, scope: !4698)
!4729 = !DILocation(line: 137, column: 50, scope: !4698)
!4730 = !DILocation(line: 137, column: 48, scope: !4698)
!4731 = !DILocation(line: 138, column: 2, scope: !4698)
!4732 = !DILocation(line: 138, column: 21, scope: !4698)
!4733 = !DILocation(line: 138, column: 43, scope: !4698)
!4734 = !DILocation(line: 138, column: 28, scope: !4698)
!4735 = !DILocation(line: 140, column: 28, scope: !4698)
!4736 = !DILocation(line: 140, column: 34, scope: !4698)
!4737 = !DILocation(line: 140, column: 40, scope: !4698)
!4738 = !DILocation(line: 140, column: 48, scope: !4698)
!4739 = !DILocation(line: 140, column: 9, scope: !4698)
!4740 = !DILocation(line: 141, column: 29, scope: !4698)
!4741 = !DILocation(line: 141, column: 35, scope: !4698)
!4742 = !DILocation(line: 141, column: 9, scope: !4698)
!4743 = !DILocation(line: 142, column: 28, scope: !4698)
!4744 = !DILocation(line: 142, column: 34, scope: !4698)
!4745 = !DILocation(line: 142, column: 39, scope: !4698)
!4746 = !DILocation(line: 142, column: 43, scope: !4698)
!4747 = !DILocation(line: 142, column: 9, scope: !4698)
!4748 = !DILocation(line: 143, column: 1, scope: !4698)
!4749 = !DILocation(line: 140, column: 2, scope: !4698)
!4750 = distinct !DISubprogram(name: "hmac_export", scope: !3, file: !3, line: 87, type: !4224, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4751)
!4751 = !{!4752, !4753, !4754}
!4752 = !DILocalVariable(name: "pdesc", arg: 1, scope: !4750, file: !3, line: 87, type: !4059)
!4753 = !DILocalVariable(name: "out", arg: 2, scope: !4750, file: !3, line: 87, type: !103)
!4754 = !DILocalVariable(name: "desc", scope: !4750, file: !3, line: 89, type: !4059)
!4755 = !DILocation(line: 87, column: 43, scope: !4750)
!4756 = !DILocation(line: 87, column: 56, scope: !4750)
!4757 = !DILocation(line: 89, column: 2, scope: !4750)
!4758 = !DILocation(line: 89, column: 21, scope: !4750)
!4759 = !DILocation(line: 89, column: 43, scope: !4750)
!4760 = !DILocation(line: 89, column: 28, scope: !4750)
!4761 = !DILocation(line: 91, column: 29, scope: !4750)
!4762 = !DILocation(line: 91, column: 35, scope: !4750)
!4763 = !DILocation(line: 91, column: 9, scope: !4750)
!4764 = !DILocation(line: 92, column: 1, scope: !4750)
!4765 = !DILocation(line: 91, column: 2, scope: !4750)
!4766 = distinct !DISubprogram(name: "hmac_import", scope: !3, file: !3, line: 94, type: !4228, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4767)
!4767 = !{!4768, !4769, !4770, !4771}
!4768 = !DILocalVariable(name: "pdesc", arg: 1, scope: !4766, file: !3, line: 94, type: !4059)
!4769 = !DILocalVariable(name: "in", arg: 2, scope: !4766, file: !3, line: 94, type: !2078)
!4770 = !DILocalVariable(name: "desc", scope: !4766, file: !3, line: 96, type: !4059)
!4771 = !DILocalVariable(name: "ctx", scope: !4766, file: !3, line: 97, type: !4772)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx", file: !3, line: 25, size: 64, elements: !4774)
!4774 = !{!4775}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4773, file: !3, line: 26, baseType: !4063, size: 64)
!4776 = !DILocation(line: 94, column: 43, scope: !4766)
!4777 = !DILocation(line: 94, column: 62, scope: !4766)
!4778 = !DILocation(line: 96, column: 2, scope: !4766)
!4779 = !DILocation(line: 96, column: 21, scope: !4766)
!4780 = !DILocation(line: 96, column: 43, scope: !4766)
!4781 = !DILocation(line: 96, column: 28, scope: !4766)
!4782 = !DILocation(line: 97, column: 2, scope: !4766)
!4783 = !DILocation(line: 97, column: 19, scope: !4766)
!4784 = !DILocation(line: 97, column: 34, scope: !4766)
!4785 = !DILocation(line: 97, column: 41, scope: !4766)
!4786 = !DILocation(line: 97, column: 25, scope: !4766)
!4787 = !DILocation(line: 99, column: 14, scope: !4766)
!4788 = !DILocation(line: 99, column: 19, scope: !4766)
!4789 = !DILocation(line: 99, column: 2, scope: !4766)
!4790 = !DILocation(line: 99, column: 8, scope: !4766)
!4791 = !DILocation(line: 99, column: 12, scope: !4766)
!4792 = !DILocation(line: 101, column: 29, scope: !4766)
!4793 = !DILocation(line: 101, column: 35, scope: !4766)
!4794 = !DILocation(line: 101, column: 9, scope: !4766)
!4795 = !DILocation(line: 102, column: 1, scope: !4766)
!4796 = !DILocation(line: 101, column: 2, scope: !4766)
!4797 = distinct !DISubprogram(name: "hmac_setkey", scope: !3, file: !3, line: 41, type: !4232, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4813, !4814, !4815}
!4799 = !DILocalVariable(name: "parent", arg: 1, scope: !4797, file: !3, line: 41, type: !4063)
!4800 = !DILocalVariable(name: "inkey", arg: 2, scope: !4797, file: !3, line: 42, type: !4184)
!4801 = !DILocalVariable(name: "keylen", arg: 3, scope: !4797, file: !3, line: 42, type: !7)
!4802 = !DILocalVariable(name: "bs", scope: !4797, file: !3, line: 44, type: !163)
!4803 = !DILocalVariable(name: "ds", scope: !4797, file: !3, line: 45, type: !163)
!4804 = !DILocalVariable(name: "ss", scope: !4797, file: !3, line: 46, type: !163)
!4805 = !DILocalVariable(name: "ipad", scope: !4797, file: !3, line: 47, type: !210)
!4806 = !DILocalVariable(name: "opad", scope: !4797, file: !3, line: 48, type: !210)
!4807 = !DILocalVariable(name: "ctx", scope: !4797, file: !3, line: 49, type: !4772)
!4808 = !DILocalVariable(name: "hash", scope: !4797, file: !3, line: 51, type: !4063)
!4809 = !DILocalVariable(name: "__shash_desc", scope: !4797, file: !3, line: 52, type: !4810, align: 64)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3008, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 376)
!4813 = !DILocalVariable(name: "shash", scope: !4797, file: !3, line: 52, type: !4059)
!4814 = !DILocalVariable(name: "i", scope: !4797, file: !3, line: 53, type: !7)
!4815 = !DILocalVariable(name: "err", scope: !4816, file: !3, line: 61, type: !163)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 60, column: 19)
!4817 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 60, column: 6)
!4818 = !DILocation(line: 41, column: 45, scope: !4797)
!4819 = !DILocation(line: 42, column: 20, scope: !4797)
!4820 = !DILocation(line: 42, column: 40, scope: !4797)
!4821 = !DILocation(line: 44, column: 2, scope: !4797)
!4822 = !DILocation(line: 44, column: 6, scope: !4797)
!4823 = !DILocation(line: 44, column: 34, scope: !4797)
!4824 = !DILocation(line: 44, column: 11, scope: !4797)
!4825 = !DILocation(line: 45, column: 2, scope: !4797)
!4826 = !DILocation(line: 45, column: 6, scope: !4797)
!4827 = !DILocation(line: 45, column: 35, scope: !4797)
!4828 = !DILocation(line: 45, column: 11, scope: !4797)
!4829 = !DILocation(line: 46, column: 2, scope: !4797)
!4830 = !DILocation(line: 46, column: 6, scope: !4797)
!4831 = !DILocation(line: 46, column: 34, scope: !4797)
!4832 = !DILocation(line: 46, column: 11, scope: !4797)
!4833 = !DILocation(line: 47, column: 2, scope: !4797)
!4834 = !DILocation(line: 47, column: 8, scope: !4797)
!4835 = !DILocation(line: 47, column: 40, scope: !4797)
!4836 = !DILocation(line: 47, column: 15, scope: !4797)
!4837 = !DILocation(line: 48, column: 2, scope: !4797)
!4838 = !DILocation(line: 48, column: 8, scope: !4797)
!4839 = !DILocation(line: 48, column: 15, scope: !4797)
!4840 = !DILocation(line: 48, column: 22, scope: !4797)
!4841 = !DILocation(line: 48, column: 20, scope: !4797)
!4842 = !DILocation(line: 49, column: 2, scope: !4797)
!4843 = !DILocation(line: 49, column: 19, scope: !4797)
!4844 = !DILocation(line: 49, column: 35, scope: !4797)
!4845 = !DILocation(line: 49, column: 42, scope: !4797)
!4846 = !DILocation(line: 49, column: 40, scope: !4797)
!4847 = !DILocation(line: 50, column: 7, scope: !4797)
!4848 = !DILocation(line: 49, column: 25, scope: !4797)
!4849 = !DILocation(line: 51, column: 2, scope: !4797)
!4850 = !DILocation(line: 51, column: 23, scope: !4797)
!4851 = !DILocation(line: 51, column: 30, scope: !4797)
!4852 = !DILocation(line: 51, column: 35, scope: !4797)
!4853 = !DILocation(line: 52, column: 2, scope: !4797)
!4854 = !DILocation(line: 53, column: 2, scope: !4797)
!4855 = !DILocation(line: 53, column: 15, scope: !4797)
!4856 = !DILocation(line: 58, column: 15, scope: !4797)
!4857 = !DILocation(line: 58, column: 2, scope: !4797)
!4858 = !DILocation(line: 58, column: 9, scope: !4797)
!4859 = !DILocation(line: 58, column: 13, scope: !4797)
!4860 = !DILocation(line: 60, column: 6, scope: !4817)
!4861 = !DILocation(line: 60, column: 15, scope: !4817)
!4862 = !DILocation(line: 60, column: 13, scope: !4817)
!4863 = !DILocation(line: 60, column: 6, scope: !4797)
!4864 = !DILocation(line: 61, column: 3, scope: !4816)
!4865 = !DILocation(line: 61, column: 7, scope: !4816)
!4866 = !DILocation(line: 63, column: 29, scope: !4816)
!4867 = !DILocation(line: 63, column: 36, scope: !4816)
!4868 = !DILocation(line: 63, column: 43, scope: !4816)
!4869 = !DILocation(line: 63, column: 51, scope: !4816)
!4870 = !DILocation(line: 63, column: 9, scope: !4816)
!4871 = !DILocation(line: 63, column: 7, scope: !4816)
!4872 = !DILocation(line: 64, column: 7, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 64, column: 7)
!4874 = !DILocation(line: 64, column: 7, scope: !4816)
!4875 = !DILocation(line: 65, column: 11, scope: !4873)
!4876 = !DILocation(line: 65, column: 4, scope: !4873)
!4877 = !DILocation(line: 67, column: 12, scope: !4816)
!4878 = !DILocation(line: 67, column: 10, scope: !4816)
!4879 = !DILocation(line: 68, column: 2, scope: !4817)
!4880 = !DILocation(line: 68, column: 2, scope: !4816)
!4881 = !DILocation(line: 69, column: 10, scope: !4817)
!4882 = !DILocation(line: 69, column: 16, scope: !4817)
!4883 = !DILocation(line: 69, column: 23, scope: !4817)
!4884 = !DILocation(line: 69, column: 3, scope: !4817)
!4885 = !DILocation(line: 71, column: 9, scope: !4797)
!4886 = !DILocation(line: 71, column: 16, scope: !4797)
!4887 = !DILocation(line: 71, column: 14, scope: !4797)
!4888 = !DILocation(line: 71, column: 27, scope: !4797)
!4889 = !DILocation(line: 71, column: 32, scope: !4797)
!4890 = !DILocation(line: 71, column: 30, scope: !4797)
!4891 = !DILocation(line: 71, column: 2, scope: !4797)
!4892 = !DILocation(line: 72, column: 9, scope: !4797)
!4893 = !DILocation(line: 72, column: 15, scope: !4797)
!4894 = !DILocation(line: 72, column: 21, scope: !4797)
!4895 = !DILocation(line: 72, column: 2, scope: !4797)
!4896 = !DILocation(line: 74, column: 9, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 74, column: 2)
!4898 = !DILocation(line: 74, column: 7, scope: !4897)
!4899 = !DILocation(line: 74, column: 14, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 74, column: 2)
!4901 = !DILocation(line: 74, column: 18, scope: !4900)
!4902 = !DILocation(line: 74, column: 16, scope: !4900)
!4903 = !DILocation(line: 74, column: 2, scope: !4897)
!4904 = !DILocation(line: 75, column: 3, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 74, column: 27)
!4906 = !DILocation(line: 75, column: 8, scope: !4905)
!4907 = !DILocation(line: 75, column: 11, scope: !4905)
!4908 = !DILocation(line: 76, column: 3, scope: !4905)
!4909 = !DILocation(line: 76, column: 8, scope: !4905)
!4910 = !DILocation(line: 76, column: 11, scope: !4905)
!4911 = !DILocation(line: 77, column: 2, scope: !4905)
!4912 = !DILocation(line: 74, column: 23, scope: !4900)
!4913 = !DILocation(line: 74, column: 2, scope: !4900)
!4914 = distinct !{!4914, !4903, !4915, !4916, !4917}
!4915 = !DILocation(line: 77, column: 2, scope: !4897)
!4916 = !{!"llvm.loop.mustprogress"}
!4917 = !{!"llvm.loop.unroll.disable"}
!4918 = !DILocation(line: 79, column: 27, scope: !4797)
!4919 = !DILocation(line: 79, column: 9, scope: !4797)
!4920 = !DILocation(line: 80, column: 29, scope: !4797)
!4921 = !DILocation(line: 80, column: 36, scope: !4797)
!4922 = !DILocation(line: 80, column: 42, scope: !4797)
!4923 = !DILocation(line: 80, column: 9, scope: !4797)
!4924 = !DILocation(line: 81, column: 29, scope: !4797)
!4925 = !DILocation(line: 81, column: 36, scope: !4797)
!4926 = !DILocation(line: 81, column: 9, scope: !4797)
!4927 = !DILocation(line: 82, column: 27, scope: !4797)
!4928 = !DILocation(line: 82, column: 9, scope: !4797)
!4929 = !DILocation(line: 83, column: 29, scope: !4797)
!4930 = !DILocation(line: 83, column: 36, scope: !4797)
!4931 = !DILocation(line: 83, column: 42, scope: !4797)
!4932 = !DILocation(line: 83, column: 9, scope: !4797)
!4933 = !DILocation(line: 84, column: 29, scope: !4797)
!4934 = !DILocation(line: 84, column: 36, scope: !4797)
!4935 = !DILocation(line: 84, column: 9, scope: !4797)
!4936 = !DILocation(line: 79, column: 2, scope: !4797)
!4937 = !DILocation(line: 85, column: 1, scope: !4797)
!4938 = distinct !DISubprogram(name: "hmac_init_tfm", scope: !3, file: !3, line: 145, type: !4236, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944}
!4940 = !DILocalVariable(name: "parent", arg: 1, scope: !4938, file: !3, line: 145, type: !4063)
!4941 = !DILocalVariable(name: "hash", scope: !4938, file: !3, line: 147, type: !4063)
!4942 = !DILocalVariable(name: "inst", scope: !4938, file: !3, line: 148, type: !4262)
!4943 = !DILocalVariable(name: "spawn", scope: !4938, file: !3, line: 149, type: !4343)
!4944 = !DILocalVariable(name: "ctx", scope: !4938, file: !3, line: 150, type: !4772)
!4945 = !DILocation(line: 145, column: 47, scope: !4938)
!4946 = !DILocation(line: 147, column: 2, scope: !4938)
!4947 = !DILocation(line: 147, column: 23, scope: !4938)
!4948 = !DILocation(line: 148, column: 2, scope: !4938)
!4949 = !DILocation(line: 148, column: 25, scope: !4938)
!4950 = !DILocation(line: 148, column: 51, scope: !4938)
!4951 = !DILocation(line: 148, column: 32, scope: !4938)
!4952 = !DILocation(line: 149, column: 2, scope: !4938)
!4953 = !DILocation(line: 149, column: 29, scope: !4938)
!4954 = !DILocation(line: 149, column: 56, scope: !4938)
!4955 = !DILocation(line: 149, column: 37, scope: !4938)
!4956 = !DILocation(line: 150, column: 2, scope: !4938)
!4957 = !DILocation(line: 150, column: 19, scope: !4938)
!4958 = !DILocation(line: 150, column: 34, scope: !4938)
!4959 = !DILocation(line: 150, column: 25, scope: !4938)
!4960 = !DILocation(line: 152, column: 28, scope: !4938)
!4961 = !DILocation(line: 152, column: 9, scope: !4938)
!4962 = !DILocation(line: 152, column: 7, scope: !4938)
!4963 = !DILocation(line: 153, column: 13, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 153, column: 6)
!4965 = !DILocation(line: 153, column: 6, scope: !4964)
!4966 = !DILocation(line: 153, column: 6, scope: !4938)
!4967 = !DILocation(line: 154, column: 18, scope: !4964)
!4968 = !DILocation(line: 154, column: 10, scope: !4964)
!4969 = !DILocation(line: 154, column: 3, scope: !4964)
!4970 = !DILocation(line: 157, column: 29, scope: !4938)
!4971 = !DILocation(line: 157, column: 7, scope: !4938)
!4972 = !DILocation(line: 156, column: 47, scope: !4938)
!4973 = !DILocation(line: 156, column: 21, scope: !4938)
!4974 = !DILocation(line: 156, column: 2, scope: !4938)
!4975 = !DILocation(line: 156, column: 10, scope: !4938)
!4976 = !DILocation(line: 156, column: 19, scope: !4938)
!4977 = !DILocation(line: 159, column: 14, scope: !4938)
!4978 = !DILocation(line: 159, column: 2, scope: !4938)
!4979 = !DILocation(line: 159, column: 7, scope: !4938)
!4980 = !DILocation(line: 159, column: 12, scope: !4938)
!4981 = !DILocation(line: 160, column: 2, scope: !4938)
!4982 = !DILocation(line: 161, column: 1, scope: !4938)
!4983 = distinct !DISubprogram(name: "hmac_clone_tfm", scope: !3, file: !3, line: 163, type: !4244, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4984)
!4984 = !{!4985, !4986, !4987, !4988, !4989}
!4985 = !DILocalVariable(name: "dst", arg: 1, scope: !4983, file: !3, line: 163, type: !4063)
!4986 = !DILocalVariable(name: "src", arg: 2, scope: !4983, file: !3, line: 163, type: !4063)
!4987 = !DILocalVariable(name: "sctx", scope: !4983, file: !3, line: 165, type: !4772)
!4988 = !DILocalVariable(name: "dctx", scope: !4983, file: !3, line: 166, type: !4772)
!4989 = !DILocalVariable(name: "hash", scope: !4983, file: !3, line: 167, type: !4063)
!4990 = !DILocation(line: 163, column: 48, scope: !4983)
!4991 = !DILocation(line: 163, column: 74, scope: !4983)
!4992 = !DILocation(line: 165, column: 2, scope: !4983)
!4993 = !DILocation(line: 165, column: 19, scope: !4983)
!4994 = !DILocation(line: 165, column: 35, scope: !4983)
!4995 = !DILocation(line: 165, column: 26, scope: !4983)
!4996 = !DILocation(line: 166, column: 2, scope: !4983)
!4997 = !DILocation(line: 166, column: 19, scope: !4983)
!4998 = !DILocation(line: 166, column: 35, scope: !4983)
!4999 = !DILocation(line: 166, column: 26, scope: !4983)
!5000 = !DILocation(line: 167, column: 2, scope: !4983)
!5001 = !DILocation(line: 167, column: 23, scope: !4983)
!5002 = !DILocation(line: 169, column: 28, scope: !4983)
!5003 = !DILocation(line: 169, column: 34, scope: !4983)
!5004 = !DILocation(line: 169, column: 9, scope: !4983)
!5005 = !DILocation(line: 169, column: 7, scope: !4983)
!5006 = !DILocation(line: 170, column: 13, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 170, column: 6)
!5008 = !DILocation(line: 170, column: 6, scope: !5007)
!5009 = !DILocation(line: 170, column: 6, scope: !4983)
!5010 = !DILocation(line: 171, column: 18, scope: !5007)
!5011 = !DILocation(line: 171, column: 10, scope: !5007)
!5012 = !DILocation(line: 171, column: 3, scope: !5007)
!5013 = !DILocation(line: 173, column: 15, scope: !4983)
!5014 = !DILocation(line: 173, column: 2, scope: !4983)
!5015 = !DILocation(line: 173, column: 8, scope: !4983)
!5016 = !DILocation(line: 173, column: 13, scope: !4983)
!5017 = !DILocation(line: 174, column: 2, scope: !4983)
!5018 = !DILocation(line: 175, column: 1, scope: !4983)
!5019 = distinct !DISubprogram(name: "hmac_exit_tfm", scope: !3, file: !3, line: 177, type: !4240, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5020)
!5020 = !{!5021, !5022}
!5021 = !DILocalVariable(name: "parent", arg: 1, scope: !5019, file: !3, line: 177, type: !4063)
!5022 = !DILocalVariable(name: "ctx", scope: !5019, file: !3, line: 179, type: !4772)
!5023 = !DILocation(line: 177, column: 48, scope: !5019)
!5024 = !DILocation(line: 179, column: 2, scope: !5019)
!5025 = !DILocation(line: 179, column: 19, scope: !5019)
!5026 = !DILocation(line: 179, column: 34, scope: !5019)
!5027 = !DILocation(line: 179, column: 25, scope: !5019)
!5028 = !DILocation(line: 181, column: 20, scope: !5019)
!5029 = !DILocation(line: 181, column: 25, scope: !5019)
!5030 = !DILocation(line: 181, column: 2, scope: !5019)
!5031 = !DILocation(line: 182, column: 1, scope: !5019)
!5032 = !DISubprogram(name: "shash_free_singlespawn_instance", scope: !4264, file: !4264, line: 115, type: !4268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5033 = !DISubprogram(name: "shash_register_instance", scope: !4264, file: !4264, line: 113, type: !5034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!163, !4132, !4262}
!5036 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !4546, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5037)
!5037 = !{!5038, !5039, !5040}
!5038 = !DILocalVariable(name: "size", arg: 1, scope: !5036, file: !93, line: 591, type: !257)
!5039 = !DILocalVariable(name: "flags", arg: 2, scope: !5036, file: !93, line: 591, type: !654)
!5040 = !DILocalVariable(name: "index", scope: !5041, file: !93, line: 594, type: !7)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !93, line: 593, column: 42)
!5042 = distinct !DILexicalBlock(scope: !5036, file: !93, line: 593, column: 6)
!5043 = !DILocation(line: 591, column: 61, scope: !5036)
!5044 = !DILocation(line: 591, column: 73, scope: !5036)
!5045 = !DILocation(line: 593, column: 27, scope: !5042)
!5046 = !DILocation(line: 593, column: 6, scope: !5042)
!5047 = !DILocation(line: 593, column: 33, scope: !5042)
!5048 = !DILocation(line: 593, column: 36, scope: !5042)
!5049 = !DILocation(line: 593, column: 6, scope: !5036)
!5050 = !DILocation(line: 594, column: 3, scope: !5041)
!5051 = !DILocation(line: 594, column: 16, scope: !5041)
!5052 = !DILocation(line: 596, column: 7, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5041, file: !93, line: 596, column: 7)
!5054 = !DILocation(line: 596, column: 12, scope: !5053)
!5055 = !DILocation(line: 596, column: 7, scope: !5041)
!5056 = !DILocation(line: 597, column: 25, scope: !5053)
!5057 = !DILocation(line: 597, column: 31, scope: !5053)
!5058 = !DILocation(line: 597, column: 11, scope: !5053)
!5059 = !DILocation(line: 597, column: 4, scope: !5053)
!5060 = !DILocation(line: 599, column: 11, scope: !5041)
!5061 = !DILocation(line: 599, column: 9, scope: !5041)
!5062 = !DILocation(line: 601, column: 33, scope: !5041)
!5063 = !DILocation(line: 601, column: 40, scope: !5041)
!5064 = !DILocation(line: 601, column: 20, scope: !5041)
!5065 = !DILocation(line: 601, column: 5, scope: !5041)
!5066 = !DILocation(line: 601, column: 51, scope: !5041)
!5067 = !DILocation(line: 602, column: 5, scope: !5041)
!5068 = !DILocation(line: 602, column: 12, scope: !5041)
!5069 = !DILocation(line: 600, column: 10, scope: !5041)
!5070 = !DILocation(line: 600, column: 3, scope: !5041)
!5071 = !DILocation(line: 603, column: 2, scope: !5042)
!5072 = !DILocation(line: 604, column: 19, scope: !5036)
!5073 = !DILocation(line: 604, column: 25, scope: !5036)
!5074 = !DILocation(line: 604, column: 9, scope: !5036)
!5075 = !DILocation(line: 604, column: 2, scope: !5036)
!5076 = !DILocation(line: 605, column: 1, scope: !5036)
!5077 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !4546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5078 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !5079, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5081)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!7, !257, !1410}
!5081 = !{!5082, !5083}
!5082 = !DILocalVariable(name: "size", arg: 1, scope: !5078, file: !93, line: 444, type: !257)
!5083 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5078, file: !93, line: 445, type: !1410)
!5084 = !DILocation(line: 444, column: 60, scope: !5078)
!5085 = !DILocation(line: 445, column: 16, scope: !5078)
!5086 = !DILocation(line: 447, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 447, column: 6)
!5088 = !DILocation(line: 447, column: 6, scope: !5078)
!5089 = !DILocation(line: 448, column: 3, scope: !5087)
!5090 = !DILocation(line: 450, column: 6, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 450, column: 6)
!5092 = !DILocation(line: 450, column: 11, scope: !5091)
!5093 = !DILocation(line: 450, column: 6, scope: !5078)
!5094 = !DILocation(line: 451, column: 3, scope: !5091)
!5095 = !DILocation(line: 453, column: 32, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 453, column: 6)
!5097 = !DILocation(line: 453, column: 37, scope: !5096)
!5098 = !DILocation(line: 453, column: 42, scope: !5096)
!5099 = !DILocation(line: 453, column: 45, scope: !5096)
!5100 = !DILocation(line: 453, column: 50, scope: !5096)
!5101 = !DILocation(line: 453, column: 6, scope: !5078)
!5102 = !DILocation(line: 454, column: 3, scope: !5096)
!5103 = !DILocation(line: 455, column: 32, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 455, column: 6)
!5105 = !DILocation(line: 455, column: 37, scope: !5104)
!5106 = !DILocation(line: 455, column: 43, scope: !5104)
!5107 = !DILocation(line: 455, column: 46, scope: !5104)
!5108 = !DILocation(line: 455, column: 51, scope: !5104)
!5109 = !DILocation(line: 455, column: 6, scope: !5078)
!5110 = !DILocation(line: 456, column: 3, scope: !5104)
!5111 = !DILocation(line: 457, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 457, column: 6)
!5113 = !DILocation(line: 457, column: 11, scope: !5112)
!5114 = !DILocation(line: 457, column: 6, scope: !5078)
!5115 = !DILocation(line: 457, column: 26, scope: !5112)
!5116 = !DILocation(line: 458, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 458, column: 6)
!5118 = !DILocation(line: 458, column: 11, scope: !5117)
!5119 = !DILocation(line: 458, column: 6, scope: !5078)
!5120 = !DILocation(line: 458, column: 26, scope: !5117)
!5121 = !DILocation(line: 459, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 459, column: 6)
!5123 = !DILocation(line: 459, column: 11, scope: !5122)
!5124 = !DILocation(line: 459, column: 6, scope: !5078)
!5125 = !DILocation(line: 459, column: 26, scope: !5122)
!5126 = !DILocation(line: 460, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 460, column: 6)
!5128 = !DILocation(line: 460, column: 11, scope: !5127)
!5129 = !DILocation(line: 460, column: 6, scope: !5078)
!5130 = !DILocation(line: 460, column: 26, scope: !5127)
!5131 = !DILocation(line: 461, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 461, column: 6)
!5133 = !DILocation(line: 461, column: 11, scope: !5132)
!5134 = !DILocation(line: 461, column: 6, scope: !5078)
!5135 = !DILocation(line: 461, column: 26, scope: !5132)
!5136 = !DILocation(line: 462, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 462, column: 6)
!5138 = !DILocation(line: 462, column: 11, scope: !5137)
!5139 = !DILocation(line: 462, column: 6, scope: !5078)
!5140 = !DILocation(line: 462, column: 26, scope: !5137)
!5141 = !DILocation(line: 463, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 463, column: 6)
!5143 = !DILocation(line: 463, column: 11, scope: !5142)
!5144 = !DILocation(line: 463, column: 6, scope: !5078)
!5145 = !DILocation(line: 463, column: 26, scope: !5142)
!5146 = !DILocation(line: 464, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 464, column: 6)
!5148 = !DILocation(line: 464, column: 11, scope: !5147)
!5149 = !DILocation(line: 464, column: 6, scope: !5078)
!5150 = !DILocation(line: 464, column: 26, scope: !5147)
!5151 = !DILocation(line: 465, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 465, column: 6)
!5153 = !DILocation(line: 465, column: 11, scope: !5152)
!5154 = !DILocation(line: 465, column: 6, scope: !5078)
!5155 = !DILocation(line: 465, column: 26, scope: !5152)
!5156 = !DILocation(line: 466, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 466, column: 6)
!5158 = !DILocation(line: 466, column: 11, scope: !5157)
!5159 = !DILocation(line: 466, column: 6, scope: !5078)
!5160 = !DILocation(line: 466, column: 26, scope: !5157)
!5161 = !DILocation(line: 467, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 467, column: 6)
!5163 = !DILocation(line: 467, column: 11, scope: !5162)
!5164 = !DILocation(line: 467, column: 6, scope: !5078)
!5165 = !DILocation(line: 467, column: 26, scope: !5162)
!5166 = !DILocation(line: 468, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 468, column: 6)
!5168 = !DILocation(line: 468, column: 11, scope: !5167)
!5169 = !DILocation(line: 468, column: 6, scope: !5078)
!5170 = !DILocation(line: 468, column: 26, scope: !5167)
!5171 = !DILocation(line: 469, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 469, column: 6)
!5173 = !DILocation(line: 469, column: 11, scope: !5172)
!5174 = !DILocation(line: 469, column: 6, scope: !5078)
!5175 = !DILocation(line: 469, column: 26, scope: !5172)
!5176 = !DILocation(line: 470, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 470, column: 6)
!5178 = !DILocation(line: 470, column: 11, scope: !5177)
!5179 = !DILocation(line: 470, column: 6, scope: !5078)
!5180 = !DILocation(line: 470, column: 26, scope: !5177)
!5181 = !DILocation(line: 471, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 471, column: 6)
!5183 = !DILocation(line: 471, column: 11, scope: !5182)
!5184 = !DILocation(line: 471, column: 6, scope: !5078)
!5185 = !DILocation(line: 471, column: 26, scope: !5182)
!5186 = !DILocation(line: 472, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 472, column: 6)
!5188 = !DILocation(line: 472, column: 11, scope: !5187)
!5189 = !DILocation(line: 472, column: 6, scope: !5078)
!5190 = !DILocation(line: 472, column: 26, scope: !5187)
!5191 = !DILocation(line: 473, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 473, column: 6)
!5193 = !DILocation(line: 473, column: 11, scope: !5192)
!5194 = !DILocation(line: 473, column: 6, scope: !5078)
!5195 = !DILocation(line: 473, column: 26, scope: !5192)
!5196 = !DILocation(line: 474, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 474, column: 6)
!5198 = !DILocation(line: 474, column: 11, scope: !5197)
!5199 = !DILocation(line: 474, column: 6, scope: !5078)
!5200 = !DILocation(line: 474, column: 27, scope: !5197)
!5201 = !DILocation(line: 475, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 475, column: 6)
!5203 = !DILocation(line: 475, column: 11, scope: !5202)
!5204 = !DILocation(line: 475, column: 6, scope: !5078)
!5205 = !DILocation(line: 475, column: 32, scope: !5202)
!5206 = !DILocation(line: 477, column: 50, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5078, file: !93, line: 477, column: 6)
!5208 = !{i8 0, i8 2}
!5209 = !DILocation(line: 477, column: 6, scope: !5078)
!5210 = !DILocation(line: 478, column: 3, scope: !5207)
!5211 = !DILocation(line: 478, column: 3, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !93, line: 478, column: 3)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !93, line: 478, column: 3)
!5214 = !{i32 -2143502756}
!5215 = !DILocation(line: 478, column: 3, scope: !5213)
!5216 = !DILocation(line: 480, column: 3, scope: !5207)
!5217 = !DILocation(line: 480, column: 3, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5207, file: !93, line: 480, column: 3)
!5219 = !DILocation(line: 480, column: 3, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5218, file: !93, line: 480, column: 3)
!5221 = !DILocation(line: 480, column: 3, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5218, file: !93, line: 480, column: 3)
!5223 = !{i64 2151464743, i64 2151464772, i64 2151464818, i64 2151464876, i64 2151464930, i64 2151464984, i64 2151465039, i64 2151465070}
!5224 = !DILocation(line: 483, column: 2, scope: !5078)
!5225 = !DILocation(line: 484, column: 1, scope: !5078)
!5226 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !5227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!103, !5229, !654, !257}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5231, line: 11, flags: DIFlagFwdDecl)
!5231 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5232 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !5233, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5235)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!92, !654, !260}
!5235 = !{!5236, !5237}
!5236 = !DILocalVariable(name: "flags", arg: 1, scope: !5232, file: !93, line: 401, type: !654)
!5237 = !DILocalVariable(name: "caller", arg: 2, scope: !5232, file: !93, line: 401, type: !260)
!5238 = !DILocation(line: 401, column: 67, scope: !5232)
!5239 = !DILocation(line: 401, column: 88, scope: !5232)
!5240 = !DILocation(line: 407, column: 6, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5232, file: !93, line: 407, column: 6)
!5242 = !DILocation(line: 407, column: 6, scope: !5232)
!5243 = !DILocation(line: 413, column: 3, scope: !5241)
!5244 = !DILocation(line: 423, column: 38, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5232, file: !93, line: 423, column: 6)
!5246 = !DILocation(line: 423, column: 44, scope: !5245)
!5247 = !DILocation(line: 423, column: 6, scope: !5232)
!5248 = !DILocation(line: 424, column: 3, scope: !5245)
!5249 = !DILocation(line: 426, column: 3, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5232, file: !93, line: 425, column: 6)
!5251 = !DILocation(line: 429, column: 1, scope: !5232)
!5252 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !4546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5253 = !DISubprogram(name: "__compiletime_assert_117", scope: !93, file: !93, line: 478, type: !2465, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5254 = distinct !DISubprogram(name: "crypto_instance_ctx", scope: !564, file: !564, line: 224, type: !5255, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!103, !4127}
!5257 = !{!5258}
!5258 = !DILocalVariable(name: "inst", arg: 1, scope: !5254, file: !564, line: 224, type: !4127)
!5259 = !DILocation(line: 224, column: 65, scope: !5254)
!5260 = !DILocation(line: 226, column: 9, scope: !5254)
!5261 = !DILocation(line: 226, column: 15, scope: !5254)
!5262 = !DILocation(line: 226, column: 2, scope: !5254)
!5263 = distinct !DISubprogram(name: "__crypto_shash_alg", scope: !4053, file: !4053, line: 821, type: !5264, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5266)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!4051, !4080}
!5266 = !{!5267, !5268}
!5267 = !DILocalVariable(name: "alg", arg: 1, scope: !5263, file: !4053, line: 821, type: !4080)
!5268 = !DILocalVariable(name: "__mptr", scope: !5269, file: !4053, line: 823, type: !103)
!5269 = distinct !DILexicalBlock(scope: !5263, file: !4053, line: 823, column: 9)
!5270 = !DILocation(line: 821, column: 71, scope: !5263)
!5271 = !DILocation(line: 823, column: 9, scope: !5269)
!5272 = !DILocation(line: 823, column: 9, scope: !5263)
!5273 = !DILocation(line: 823, column: 2, scope: !5263)
!5274 = distinct !DISubprogram(name: "crypto_shash_alg_has_setkey", scope: !4264, file: !4264, line: 81, type: !4596, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5275 = !{!5276}
!5276 = !DILocalVariable(name: "alg", arg: 1, scope: !5274, file: !4264, line: 81, type: !4051)
!5277 = !DILocation(line: 81, column: 66, scope: !5274)
!5278 = !DILocation(line: 83, column: 9, scope: !5274)
!5279 = !DILocation(line: 83, column: 14, scope: !5274)
!5280 = !DILocation(line: 83, column: 21, scope: !5274)
!5281 = !DILocation(line: 83, column: 2, scope: !5274)
!5282 = distinct !DISubprogram(name: "crypto_shash_ctx_aligned", scope: !4264, file: !4264, line: 272, type: !5283, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!103, !4063}
!5285 = !{!5286}
!5286 = !DILocalVariable(name: "tfm", arg: 1, scope: !5282, file: !4264, line: 272, type: !4063)
!5287 = !DILocation(line: 272, column: 67, scope: !5282)
!5288 = !DILocation(line: 274, column: 33, scope: !5282)
!5289 = !DILocation(line: 274, column: 38, scope: !5282)
!5290 = !DILocation(line: 274, column: 9, scope: !5282)
!5291 = !DILocation(line: 274, column: 2, scope: !5282)
!5292 = distinct !DISubprogram(name: "crypto_tfm_ctx_aligned", scope: !564, file: !564, line: 198, type: !5293, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5295)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!103, !4078}
!5295 = !{!5296}
!5296 = !DILocalVariable(name: "tfm", arg: 1, scope: !5292, file: !564, line: 198, type: !4078)
!5297 = !DILocation(line: 198, column: 63, scope: !5292)
!5298 = !DILocation(line: 200, column: 30, scope: !5292)
!5299 = !DILocation(line: 200, column: 60, scope: !5292)
!5300 = !DILocation(line: 200, column: 35, scope: !5292)
!5301 = !DILocation(line: 200, column: 65, scope: !5292)
!5302 = !DILocation(line: 200, column: 9, scope: !5292)
!5303 = !DILocation(line: 200, column: 2, scope: !5292)
!5304 = distinct !DISubprogram(name: "crypto_tfm_ctx_align", scope: !564, file: !564, line: 189, type: !5305, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5307)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!103, !4078, !7}
!5307 = !{!5308, !5309}
!5308 = !DILocalVariable(name: "tfm", arg: 1, scope: !5304, file: !564, line: 189, type: !4078)
!5309 = !DILocalVariable(name: "align", arg: 2, scope: !5304, file: !564, line: 190, type: !7)
!5310 = !DILocation(line: 189, column: 61, scope: !5304)
!5311 = !DILocation(line: 190, column: 20, scope: !5304)
!5312 = !DILocation(line: 192, column: 6, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5304, file: !564, line: 192, column: 6)
!5314 = !DILocation(line: 192, column: 15, scope: !5313)
!5315 = !DILocation(line: 192, column: 12, scope: !5313)
!5316 = !DILocation(line: 192, column: 6, scope: !5304)
!5317 = !DILocation(line: 193, column: 9, scope: !5313)
!5318 = !DILocation(line: 193, column: 3, scope: !5313)
!5319 = !DILocation(line: 195, column: 9, scope: !5304)
!5320 = !DILocation(line: 195, column: 2, scope: !5304)
!5321 = distinct !DISubprogram(name: "crypto_tfm_alg_alignmask", scope: !4069, file: !4069, line: 470, type: !5322, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5324)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!7, !4078}
!5324 = !{!5325}
!5325 = !DILocalVariable(name: "tfm", arg: 1, scope: !5321, file: !4069, line: 470, type: !4078)
!5326 = !DILocation(line: 470, column: 72, scope: !5321)
!5327 = !DILocation(line: 472, column: 9, scope: !5321)
!5328 = !DILocation(line: 472, column: 14, scope: !5321)
!5329 = !DILocation(line: 472, column: 25, scope: !5321)
!5330 = !DILocation(line: 472, column: 2, scope: !5321)
!5331 = distinct !DISubprogram(name: "crypto_tfm_ctx", scope: !564, file: !564, line: 184, type: !5293, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5332)
!5332 = !{!5333}
!5333 = !DILocalVariable(name: "tfm", arg: 1, scope: !5331, file: !564, line: 184, type: !4078)
!5334 = !DILocation(line: 184, column: 55, scope: !5331)
!5335 = !DILocation(line: 186, column: 9, scope: !5331)
!5336 = !DILocation(line: 186, column: 14, scope: !5331)
!5337 = !DILocation(line: 186, column: 2, scope: !5331)
!5338 = distinct !DISubprogram(name: "shash_desc_ctx", scope: !4053, file: !4053, line: 885, type: !5339, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!103, !4059}
!5341 = !{!5342}
!5342 = !DILocalVariable(name: "desc", arg: 1, scope: !5338, file: !4053, line: 885, type: !4059)
!5343 = !DILocation(line: 885, column: 55, scope: !5338)
!5344 = !DILocation(line: 887, column: 9, scope: !5338)
!5345 = !DILocation(line: 887, column: 15, scope: !5338)
!5346 = !DILocation(line: 887, column: 2, scope: !5338)
!5347 = !DISubprogram(name: "crypto_shash_update", scope: !4053, file: !4053, line: 1016, type: !4211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5348 = distinct !DISubprogram(name: "crypto_shash_digestsize", scope: !4053, file: !4053, line: 840, type: !5349, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5351)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!7, !4063}
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "tfm", arg: 1, scope: !5348, file: !4053, line: 840, type: !4063)
!5353 = !DILocation(line: 840, column: 73, scope: !5348)
!5354 = !DILocation(line: 842, column: 26, scope: !5348)
!5355 = !DILocation(line: 842, column: 9, scope: !5348)
!5356 = !DILocation(line: 842, column: 32, scope: !5348)
!5357 = !DILocation(line: 842, column: 2, scope: !5348)
!5358 = distinct !DISubprogram(name: "crypto_shash_statesize", scope: !4053, file: !4053, line: 845, type: !5349, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5359)
!5359 = !{!5360}
!5360 = !DILocalVariable(name: "tfm", arg: 1, scope: !5358, file: !4053, line: 845, type: !4063)
!5361 = !DILocation(line: 845, column: 72, scope: !5358)
!5362 = !DILocation(line: 847, column: 26, scope: !5358)
!5363 = !DILocation(line: 847, column: 9, scope: !5358)
!5364 = !DILocation(line: 847, column: 32, scope: !5358)
!5365 = !DILocation(line: 847, column: 2, scope: !5358)
!5366 = !DISubprogram(name: "crypto_shash_final", scope: !4053, file: !4053, line: 1033, type: !4215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5367 = distinct !DISubprogram(name: "crypto_shash_import", scope: !4053, file: !4053, line: 972, type: !4228, scopeLine: 973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5368)
!5368 = !{!5369, !5370, !5371}
!5369 = !DILocalVariable(name: "desc", arg: 1, scope: !5367, file: !4053, line: 972, type: !4059)
!5370 = !DILocalVariable(name: "in", arg: 2, scope: !5367, file: !4053, line: 972, type: !2078)
!5371 = !DILocalVariable(name: "tfm", scope: !5367, file: !4053, line: 974, type: !4063)
!5372 = !DILocation(line: 972, column: 58, scope: !5367)
!5373 = !DILocation(line: 972, column: 76, scope: !5367)
!5374 = !DILocation(line: 974, column: 2, scope: !5367)
!5375 = !DILocation(line: 974, column: 23, scope: !5367)
!5376 = !DILocation(line: 974, column: 29, scope: !5367)
!5377 = !DILocation(line: 974, column: 35, scope: !5367)
!5378 = !DILocation(line: 976, column: 29, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5367, file: !4053, line: 976, column: 6)
!5380 = !DILocation(line: 976, column: 6, scope: !5379)
!5381 = !DILocation(line: 976, column: 34, scope: !5379)
!5382 = !DILocation(line: 976, column: 6, scope: !5367)
!5383 = !DILocation(line: 977, column: 3, scope: !5379)
!5384 = !DILocation(line: 979, column: 26, scope: !5367)
!5385 = !DILocation(line: 979, column: 9, scope: !5367)
!5386 = !DILocation(line: 979, column: 32, scope: !5367)
!5387 = !DILocation(line: 979, column: 39, scope: !5367)
!5388 = !DILocation(line: 979, column: 45, scope: !5367)
!5389 = !DILocation(line: 979, column: 2, scope: !5367)
!5390 = !DILocation(line: 980, column: 1, scope: !5367)
!5391 = !DISubprogram(name: "crypto_shash_finup", scope: !4053, file: !4053, line: 1050, type: !4219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5392 = distinct !DISubprogram(name: "crypto_shash_alg", scope: !4053, file: !4053, line: 826, type: !5393, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!4051, !4063}
!5395 = !{!5396}
!5396 = !DILocalVariable(name: "tfm", arg: 1, scope: !5392, file: !4053, line: 826, type: !4063)
!5397 = !DILocation(line: 826, column: 71, scope: !5392)
!5398 = !DILocation(line: 828, column: 45, scope: !5392)
!5399 = !DILocation(line: 828, column: 28, scope: !5392)
!5400 = !DILocation(line: 828, column: 51, scope: !5392)
!5401 = !DILocation(line: 828, column: 9, scope: !5392)
!5402 = !DILocation(line: 828, column: 2, scope: !5392)
!5403 = distinct !DISubprogram(name: "crypto_shash_tfm", scope: !4053, file: !4053, line: 775, type: !5404, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!4078, !4063}
!5406 = !{!5407}
!5407 = !DILocalVariable(name: "tfm", arg: 1, scope: !5403, file: !4053, line: 775, type: !4063)
!5408 = !DILocation(line: 775, column: 72, scope: !5403)
!5409 = !DILocation(line: 777, column: 10, scope: !5403)
!5410 = !DILocation(line: 777, column: 15, scope: !5403)
!5411 = !DILocation(line: 777, column: 2, scope: !5403)
!5412 = distinct !DISubprogram(name: "crypto_shash_get_flags", scope: !4053, file: !4053, line: 850, type: !5413, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5415)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!359, !4063}
!5415 = !{!5416}
!5416 = !DILocalVariable(name: "tfm", arg: 1, scope: !5412, file: !4053, line: 850, type: !4063)
!5417 = !DILocation(line: 850, column: 63, scope: !5412)
!5418 = !DILocation(line: 852, column: 47, scope: !5412)
!5419 = !DILocation(line: 852, column: 30, scope: !5412)
!5420 = !DILocation(line: 852, column: 9, scope: !5412)
!5421 = !DILocation(line: 852, column: 2, scope: !5412)
!5422 = distinct !DISubprogram(name: "crypto_tfm_get_flags", scope: !4069, file: !4069, line: 475, type: !5423, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!359, !4078}
!5425 = !{!5426}
!5426 = !DILocalVariable(name: "tfm", arg: 1, scope: !5422, file: !4069, line: 475, type: !4078)
!5427 = !DILocation(line: 475, column: 59, scope: !5422)
!5428 = !DILocation(line: 477, column: 9, scope: !5422)
!5429 = !DILocation(line: 477, column: 14, scope: !5422)
!5430 = !DILocation(line: 477, column: 2, scope: !5422)
!5431 = distinct !DISubprogram(name: "crypto_shash_export", scope: !4053, file: !4053, line: 955, type: !4224, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5432)
!5432 = !{!5433, !5434}
!5433 = !DILocalVariable(name: "desc", arg: 1, scope: !5431, file: !4053, line: 955, type: !4059)
!5434 = !DILocalVariable(name: "out", arg: 2, scope: !5431, file: !4053, line: 955, type: !103)
!5435 = !DILocation(line: 955, column: 58, scope: !5431)
!5436 = !DILocation(line: 955, column: 70, scope: !5431)
!5437 = !DILocation(line: 957, column: 26, scope: !5431)
!5438 = !DILocation(line: 957, column: 32, scope: !5431)
!5439 = !DILocation(line: 957, column: 9, scope: !5431)
!5440 = !DILocation(line: 957, column: 38, scope: !5431)
!5441 = !DILocation(line: 957, column: 45, scope: !5431)
!5442 = !DILocation(line: 957, column: 51, scope: !5431)
!5443 = !DILocation(line: 957, column: 2, scope: !5431)
!5444 = distinct !DISubprogram(name: "hmac_ctx", scope: !3, file: !3, line: 34, type: !5445, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!4772, !4063}
!5447 = !{!5448}
!5448 = !DILocalVariable(name: "tfm", arg: 1, scope: !5444, file: !3, line: 34, type: !4063)
!5449 = !DILocation(line: 34, column: 62, scope: !5444)
!5450 = !DILocation(line: 36, column: 44, scope: !5444)
!5451 = !DILocation(line: 36, column: 19, scope: !5444)
!5452 = !DILocation(line: 37, column: 28, scope: !5444)
!5453 = !DILocation(line: 37, column: 5, scope: !5444)
!5454 = !DILocation(line: 37, column: 33, scope: !5444)
!5455 = !DILocation(line: 36, column: 49, scope: !5444)
!5456 = !DILocation(line: 38, column: 5, scope: !5444)
!5457 = !DILocation(line: 36, column: 9, scope: !5444)
!5458 = !DILocation(line: 36, column: 2, scope: !5444)
!5459 = distinct !DISubprogram(name: "align_ptr", scope: !3, file: !3, line: 29, type: !5460, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5462)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!103, !103, !7}
!5462 = !{!5463, !5464}
!5463 = !DILocalVariable(name: "p", arg: 1, scope: !5459, file: !3, line: 29, type: !103)
!5464 = !DILocalVariable(name: "align", arg: 2, scope: !5459, file: !3, line: 29, type: !7)
!5465 = !DILocation(line: 29, column: 37, scope: !5459)
!5466 = !DILocation(line: 29, column: 53, scope: !5459)
!5467 = !DILocation(line: 31, column: 17, scope: !5459)
!5468 = !DILocation(line: 31, column: 9, scope: !5459)
!5469 = !DILocation(line: 31, column: 2, scope: !5459)
!5470 = distinct !DISubprogram(name: "crypto_shash_blocksize", scope: !4053, file: !4053, line: 816, type: !5349, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5471)
!5471 = !{!5472}
!5472 = !DILocalVariable(name: "tfm", arg: 1, scope: !5470, file: !4053, line: 816, type: !4063)
!5473 = !DILocation(line: 816, column: 72, scope: !5470)
!5474 = !DILocation(line: 818, column: 51, scope: !5470)
!5475 = !DILocation(line: 818, column: 34, scope: !5470)
!5476 = !DILocation(line: 818, column: 9, scope: !5470)
!5477 = !DILocation(line: 818, column: 2, scope: !5470)
!5478 = !DISubprogram(name: "crypto_shash_digest", scope: !4053, file: !4053, line: 921, type: !4219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5479 = distinct !DISubprogram(name: "crypto_shash_init", scope: !4053, file: !4053, line: 994, type: !4057, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5480)
!5480 = !{!5481, !5482}
!5481 = !DILocalVariable(name: "desc", arg: 1, scope: !5479, file: !4053, line: 994, type: !4059)
!5482 = !DILocalVariable(name: "tfm", scope: !5479, file: !4053, line: 996, type: !4063)
!5483 = !DILocation(line: 994, column: 56, scope: !5479)
!5484 = !DILocation(line: 996, column: 2, scope: !5479)
!5485 = !DILocation(line: 996, column: 23, scope: !5479)
!5486 = !DILocation(line: 996, column: 29, scope: !5479)
!5487 = !DILocation(line: 996, column: 35, scope: !5479)
!5488 = !DILocation(line: 998, column: 29, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5479, file: !4053, line: 998, column: 6)
!5490 = !DILocation(line: 998, column: 6, scope: !5489)
!5491 = !DILocation(line: 998, column: 34, scope: !5489)
!5492 = !DILocation(line: 998, column: 6, scope: !5479)
!5493 = !DILocation(line: 999, column: 3, scope: !5489)
!5494 = !DILocation(line: 1001, column: 26, scope: !5479)
!5495 = !DILocation(line: 1001, column: 9, scope: !5479)
!5496 = !DILocation(line: 1001, column: 32, scope: !5479)
!5497 = !DILocation(line: 1001, column: 37, scope: !5479)
!5498 = !DILocation(line: 1001, column: 2, scope: !5479)
!5499 = !DILocation(line: 1002, column: 1, scope: !5479)
!5500 = distinct !DISubprogram(name: "crypto_tfm_alg_blocksize", scope: !4069, file: !4069, line: 465, type: !5322, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5501)
!5501 = !{!5502}
!5502 = !DILocalVariable(name: "tfm", arg: 1, scope: !5500, file: !4069, line: 465, type: !4078)
!5503 = !DILocation(line: 465, column: 72, scope: !5500)
!5504 = !DILocation(line: 467, column: 9, scope: !5500)
!5505 = !DILocation(line: 467, column: 14, scope: !5500)
!5506 = !DILocation(line: 467, column: 25, scope: !5500)
!5507 = !DILocation(line: 467, column: 2, scope: !5500)
!5508 = distinct !DISubprogram(name: "shash_alg_instance", scope: !4264, file: !4264, line: 255, type: !5509, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5511)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!4262, !4063}
!5511 = !{!5512}
!5512 = !DILocalVariable(name: "shash", arg: 1, scope: !5508, file: !4264, line: 256, type: !4063)
!5513 = !DILocation(line: 256, column: 23, scope: !5508)
!5514 = !DILocation(line: 258, column: 49, scope: !5508)
!5515 = !DILocation(line: 258, column: 56, scope: !5508)
!5516 = !DILocation(line: 258, column: 24, scope: !5508)
!5517 = !DILocation(line: 258, column: 9, scope: !5508)
!5518 = !DILocation(line: 258, column: 2, scope: !5508)
!5519 = distinct !DISubprogram(name: "crypto_spawn_shash", scope: !4264, file: !4264, line: 266, type: !5520, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5522)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!4063, !4343}
!5522 = !{!5523}
!5523 = !DILocalVariable(name: "spawn", arg: 1, scope: !5519, file: !4264, line: 267, type: !4343)
!5524 = !DILocation(line: 267, column: 29, scope: !5519)
!5525 = !DILocation(line: 269, column: 28, scope: !5519)
!5526 = !DILocation(line: 269, column: 35, scope: !5519)
!5527 = !DILocation(line: 269, column: 9, scope: !5519)
!5528 = !DILocation(line: 269, column: 2, scope: !5519)
!5529 = distinct !DISubprogram(name: "IS_ERR", scope: !5530, file: !5530, line: 59, type: !5531, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5533)
!5530 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5531 = !DISubroutineType(types: !5532)
!5532 = !{!1410, !2078}
!5533 = !{!5534}
!5534 = !DILocalVariable(name: "ptr", arg: 1, scope: !5529, file: !5530, line: 59, type: !2078)
!5535 = !DILocation(line: 59, column: 60, scope: !5529)
!5536 = !DILocation(line: 61, column: 9, scope: !5529)
!5537 = !DILocation(line: 61, column: 2, scope: !5529)
!5538 = distinct !DISubprogram(name: "PTR_ERR", scope: !5530, file: !5530, line: 49, type: !5539, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5541)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!246, !2078}
!5541 = !{!5542}
!5542 = !DILocalVariable(name: "ptr", arg: 1, scope: !5538, file: !5530, line: 49, type: !2078)
!5543 = !DILocation(line: 49, column: 61, scope: !5538)
!5544 = !DILocation(line: 51, column: 16, scope: !5538)
!5545 = !DILocation(line: 51, column: 9, scope: !5538)
!5546 = !DILocation(line: 51, column: 2, scope: !5538)
!5547 = distinct !DISubprogram(name: "crypto_shash_descsize", scope: !4053, file: !4053, line: 880, type: !5349, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5548)
!5548 = !{!5549}
!5549 = !DILocalVariable(name: "tfm", arg: 1, scope: !5547, file: !4053, line: 880, type: !4063)
!5550 = !DILocation(line: 880, column: 71, scope: !5547)
!5551 = !DILocation(line: 882, column: 9, scope: !5547)
!5552 = !DILocation(line: 882, column: 14, scope: !5547)
!5553 = !DILocation(line: 882, column: 2, scope: !5547)
!5554 = distinct !DISubprogram(name: "shash_instance", scope: !4264, file: !4264, line: 249, type: !5555, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5557)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!4262, !4127}
!5557 = !{!5558, !5559}
!5558 = !DILocalVariable(name: "inst", arg: 1, scope: !5554, file: !4264, line: 250, type: !4127)
!5559 = !DILocalVariable(name: "__mptr", scope: !5560, file: !4264, line: 252, type: !103)
!5560 = distinct !DILexicalBlock(scope: !5554, file: !4264, line: 252, column: 9)
!5561 = !DILocation(line: 250, column: 26, scope: !5554)
!5562 = !DILocation(line: 252, column: 9, scope: !5560)
!5563 = !DILocation(line: 252, column: 9, scope: !5554)
!5564 = !DILocation(line: 252, column: 2, scope: !5554)
!5565 = distinct !DISubprogram(name: "crypto_tfm_alg_instance", scope: !564, file: !564, line: 218, type: !5566, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5568)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!4127, !4078}
!5568 = !{!5569, !5570}
!5569 = !DILocalVariable(name: "tfm", arg: 1, scope: !5565, file: !564, line: 219, type: !4078)
!5570 = !DILocalVariable(name: "__mptr", scope: !5571, file: !564, line: 221, type: !103)
!5571 = distinct !DILexicalBlock(scope: !5565, file: !564, line: 221, column: 9)
!5572 = !DILocation(line: 219, column: 21, scope: !5565)
!5573 = !DILocation(line: 221, column: 9, scope: !5571)
!5574 = !DILocation(line: 221, column: 9, scope: !5565)
!5575 = !DILocation(line: 221, column: 2, scope: !5565)
!5576 = !DISubprogram(name: "crypto_spawn_tfm2", scope: !564, file: !564, line: 163, type: !5577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!103, !4151}
!5579 = !DISubprogram(name: "crypto_clone_shash", scope: !4053, file: !4053, line: 771, type: !5580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!4063, !4063}
!5582 = distinct !DISubprogram(name: "crypto_free_shash", scope: !4053, file: !4053, line: 786, type: !4240, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5583)
!5583 = !{!5584}
!5584 = !DILocalVariable(name: "tfm", arg: 1, scope: !5582, file: !4053, line: 786, type: !4063)
!5585 = !DILocation(line: 786, column: 59, scope: !5582)
!5586 = !DILocation(line: 788, column: 21, scope: !5582)
!5587 = !DILocation(line: 788, column: 43, scope: !5582)
!5588 = !DILocation(line: 788, column: 26, scope: !5582)
!5589 = !DILocation(line: 788, column: 2, scope: !5582)
!5590 = !DILocation(line: 789, column: 1, scope: !5582)
!5591 = !DISubprogram(name: "crypto_destroy_tfm", scope: !4069, file: !4069, line: 445, type: !5592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !103, !4078}
!5594 = !DISubprogram(name: "crypto_register_template", scope: !564, file: !564, line: 148, type: !5595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!163, !4132}
