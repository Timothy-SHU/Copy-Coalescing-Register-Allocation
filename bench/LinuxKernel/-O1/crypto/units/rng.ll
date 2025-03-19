; ModuleID = 'crypto/rng.c'
source_filename = "crypto/rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_default_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_default_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_rng_reset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_rng_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alloc_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alloc_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_get_default_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_get_default_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_put_default_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_put_default_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_del_default_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_del_default_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_register_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_register_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_unregister_rng: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_unregister_rng ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_register_rngs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_register_rngs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_unregister_rngs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_unregister_rngs ; .previous"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rng_alg = type { ptr, ptr, ptr, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.36, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.36 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.crypto_rng = type { %struct.crypto_tfm }

@crypto_default_rng = hidden global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_crypto_default_rng338 = internal global ptr @crypto_default_rng, section ".discard.addressable", align 8, !dbg !4560
@__UNIQUE_ID___addressable_crypto_rng_reset339 = internal global ptr @crypto_rng_reset, section ".discard.addressable", align 8, !dbg !4562
@crypto_rng_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr @crypto_rng_init_tfm, ptr @crypto_rng_show, ptr null, ptr null, i32 12, i32 -16, i32 15, i32 0 }, align 8, !dbg !4601
@__UNIQUE_ID___addressable_crypto_alloc_rng340 = internal global ptr @crypto_alloc_rng, section ".discard.addressable", align 8, !dbg !4564
@crypto_default_rng_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_default_rng_lock, i64 16), ptr getelementptr (i8, ptr @crypto_default_rng_lock, i64 16) } }, align 8, !dbg !4611
@.str = private unnamed_addr constant [7 x i8] c"stdrng\00", align 1, !dbg !4566
@crypto_default_rng_refcnt = internal global i32 0, align 4, !dbg !4594
@__UNIQUE_ID___addressable_crypto_get_default_rng341 = internal global ptr @crypto_get_default_rng, section ".discard.addressable", align 8, !dbg !4569
@__UNIQUE_ID___addressable_crypto_put_default_rng342 = internal global ptr @crypto_put_default_rng, section ".discard.addressable", align 8, !dbg !4571
@__UNIQUE_ID___addressable_crypto_del_default_rng343 = internal global ptr @crypto_del_default_rng, section ".discard.addressable", align 8, !dbg !4573
@__UNIQUE_ID___addressable_crypto_register_rng344 = internal global ptr @crypto_register_rng, section ".discard.addressable", align 8, !dbg !4575
@__UNIQUE_ID___addressable_crypto_unregister_rng345 = internal global ptr @crypto_unregister_rng, section ".discard.addressable", align 8, !dbg !4577
@__UNIQUE_ID___addressable_crypto_register_rngs346 = internal global ptr @crypto_register_rngs, section ".discard.addressable", align 8, !dbg !4579
@__UNIQUE_ID___addressable_crypto_unregister_rngs347 = internal global ptr @crypto_unregister_rngs, section ".discard.addressable", align 8, !dbg !4581
@__UNIQUE_ID_file348 = internal constant [20 x i8] c"rng.file=crypto/rng\00", section ".modinfo", align 1, !dbg !4583
@__UNIQUE_ID_license349 = internal constant [16 x i8] c"rng.license=GPL\00", section ".modinfo", align 1, !dbg !4586
@__UNIQUE_ID_description350 = internal constant [40 x i8] c"rng.description=Random Number Generator\00", section ".modinfo", align 1, !dbg !4589
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4596
@.str.2 = private unnamed_addr constant [20 x i8] c"type         : rng\0A\00", align 1, !dbg !4603
@.str.3 = private unnamed_addr constant [19 x i8] c"seedsize     : %u\0A\00", align 1, !dbg !4606
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_crypto_default_rng338, ptr @__UNIQUE_ID___addressable_crypto_rng_reset339, ptr @__UNIQUE_ID___addressable_crypto_alloc_rng340, ptr @__UNIQUE_ID___addressable_crypto_get_default_rng341, ptr @__UNIQUE_ID___addressable_crypto_put_default_rng342, ptr @__UNIQUE_ID___addressable_crypto_del_default_rng343, ptr @__UNIQUE_ID___addressable_crypto_register_rng344, ptr @__UNIQUE_ID___addressable_crypto_unregister_rng345, ptr @__UNIQUE_ID___addressable_crypto_register_rngs346, ptr @__UNIQUE_ID___addressable_crypto_unregister_rngs347, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__UNIQUE_ID_description350], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_rng_reset(ptr noundef %tfm, ptr noundef %seed, i32 noundef %slen) #0 align 16 !dbg !4622 {
entry:
  %tfm.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  %alg = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4624, metadata !DIExpression()), !dbg !4632
  store ptr %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !4625, metadata !DIExpression()), !dbg !4633
  store i32 %slen, ptr %slen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slen.addr, metadata !4626, metadata !DIExpression()), !dbg !4634
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #12, !dbg !4635
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !4627, metadata !DIExpression()), !dbg !4636
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4637
  %call = call ptr @crypto_rng_alg(ptr noundef %0) #13, !dbg !4638
  store ptr %call, ptr %alg, align 8, !dbg !4636
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #12, !dbg !4639
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4628, metadata !DIExpression()), !dbg !4640
  store ptr null, ptr %buf, align 8, !dbg !4640
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4629, metadata !DIExpression()), !dbg !4642
  %1 = load ptr, ptr %seed.addr, align 8, !dbg !4643
  %tobool = icmp ne ptr %1, null, !dbg !4643
  br i1 %tobool, label %if.end10, label %land.lhs.true, !dbg !4645

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %slen.addr, align 4, !dbg !4646
  %tobool1 = icmp ne i32 %2, 0, !dbg !4646
  br i1 %tobool1, label %if.then, label %if.end10, !dbg !4647

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %slen.addr, align 4, !dbg !4648
  %conv = zext i32 %3 to i64, !dbg !4648
  %call2 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #14, !dbg !4650
  store ptr %call2, ptr %buf, align 8, !dbg !4651
  store i32 -12, ptr %err, align 4, !dbg !4652
  %4 = load ptr, ptr %buf, align 8, !dbg !4653
  %tobool3 = icmp ne ptr %4, null, !dbg !4653
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4655

if.then4:                                         ; preds = %if.then
  br label %out, !dbg !4656

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %buf, align 8, !dbg !4657
  %6 = load i32, ptr %slen.addr, align 4, !dbg !4658
  %conv5 = zext i32 %6 to i64, !dbg !4658
  %call6 = call i32 @get_random_bytes_wait(ptr noundef %5, i64 noundef %conv5) #13, !dbg !4659
  store i32 %call6, ptr %err, align 4, !dbg !4660
  %7 = load i32, ptr %err, align 4, !dbg !4661
  %tobool7 = icmp ne i32 %7, 0, !dbg !4661
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4663

if.then8:                                         ; preds = %if.end
  br label %free_buf, !dbg !4664

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %buf, align 8, !dbg !4665
  store ptr %8, ptr %seed.addr, align 8, !dbg !4666
  br label %if.end10, !dbg !4667

if.end10:                                         ; preds = %if.end9, %land.lhs.true, %entry
  %9 = load ptr, ptr %alg, align 8, !dbg !4668
  %seed11 = getelementptr inbounds %struct.rng_alg, ptr %9, i32 0, i32 1, !dbg !4669
  %10 = load ptr, ptr %seed11, align 8, !dbg !4669
  %11 = load ptr, ptr %tfm.addr, align 8, !dbg !4670
  %12 = load ptr, ptr %seed.addr, align 8, !dbg !4671
  %13 = load i32, ptr %slen.addr, align 4, !dbg !4672
  %call12 = call i32 %10(ptr noundef %11, ptr noundef %12, i32 noundef %13) #13, !dbg !4668
  store i32 %call12, ptr %err, align 4, !dbg !4673
  br label %free_buf, !dbg !4674

free_buf:                                         ; preds = %if.end10, %if.then8
  call void @llvm.dbg.label(metadata !4630), !dbg !4675
  %14 = load ptr, ptr %buf, align 8, !dbg !4676
  call void @kfree_sensitive(ptr noundef %14) #13, !dbg !4677
  br label %out, !dbg !4677

out:                                              ; preds = %free_buf, %if.then4
  call void @llvm.dbg.label(metadata !4631), !dbg !4678
  %15 = load ptr, ptr %alg, align 8, !dbg !4679
  %16 = load i32, ptr %err, align 4, !dbg !4680
  %call13 = call i32 @crypto_rng_errstat(ptr noundef %15, i32 noundef %16) #13, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !4682
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #12, !dbg !4682
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #12, !dbg !4682
  ret i32 %call13, !dbg !4683
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_rng_alg(ptr noundef %tfm) #3 align 16 !dbg !4684 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4688, metadata !DIExpression()), !dbg !4689
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4690
  %call = call ptr @crypto_rng_tfm(ptr noundef %0) #13, !dbg !4691
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !4692
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !4692
  %call1 = call ptr @__crypto_rng_alg(ptr noundef %1) #13, !dbg !4693
  ret ptr %call1, !dbg !4694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4695 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4699, metadata !DIExpression()), !dbg !4704
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4700, metadata !DIExpression()), !dbg !4705
  %0 = load i64, ptr %size.addr, align 8, !dbg !4706
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4707
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4708

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4709
  %tobool = icmp ne i64 %2, 0, !dbg !4709
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4710

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4701, metadata !DIExpression()), !dbg !4712
  %3 = load i64, ptr %size.addr, align 8, !dbg !4713
  %cmp = icmp ugt i64 %3, 8192, !dbg !4715
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4716

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4717
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4718
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !4719
  store ptr %call, ptr %retval, align 8, !dbg !4720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4720

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4721
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !4721
  store i32 %call2, ptr %index, align 4, !dbg !4722
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4723
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4724
  %9 = ptrtoint ptr %8 to i64, !dbg !4724
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !4725
  %idxprom = zext i32 %call3 to i64, !dbg !4726
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4726
  %10 = load i32, ptr %index, align 4, !dbg !4727
  %idxprom4 = zext i32 %10 to i64, !dbg !4726
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4726
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4726
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4728
  %13 = load i64, ptr %size.addr, align 8, !dbg !4729
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #15, !dbg !4730
  store ptr %call6, ptr %retval, align 8, !dbg !4731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4731

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !4732
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4733
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4734
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !4735
  store ptr %call8, ptr %retval, align 8, !dbg !4736
  br label %return, !dbg !4736

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4737
  ret ptr %16, !dbg !4737
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_random_bytes_wait(ptr noundef %buf, i64 noundef %nbytes) #3 align 16 !dbg !4738 {
entry:
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4743, metadata !DIExpression()), !dbg !4746
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !4744, metadata !DIExpression()), !dbg !4747
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !4748
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4745, metadata !DIExpression()), !dbg !4749
  %call = call i32 @wait_for_random_bytes() #13, !dbg !4750
  store i32 %call, ptr %ret, align 4, !dbg !4749
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4751
  %1 = load i64, ptr %nbytes.addr, align 8, !dbg !4752
  call void @get_random_bytes(ptr noundef %0, i64 noundef %1) #13, !dbg !4753
  %2 = load i32, ptr %ret, align 4, !dbg !4754
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !4755
  ret i32 %2, !dbg !4756
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4757 dso_local void @kfree_sensitive(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_rng_errstat(ptr noundef %alg, i32 noundef %err) #3 align 16 !dbg !4760 {
entry:
  %alg.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4764, metadata !DIExpression()), !dbg !4766
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !4765, metadata !DIExpression()), !dbg !4767
  %0 = load i32, ptr %err.addr, align 4, !dbg !4768
  ret i32 %0, !dbg !4770
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_alloc_rng(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !4771 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !4775, metadata !DIExpression()), !dbg !4778
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4776, metadata !DIExpression()), !dbg !4779
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4777, metadata !DIExpression()), !dbg !4780
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !4781
  %1 = load i32, ptr %type.addr, align 4, !dbg !4782
  %2 = load i32, ptr %mask.addr, align 4, !dbg !4783
  %call = call ptr @crypto_alloc_tfm(ptr noundef %0, ptr noundef @crypto_rng_type, i32 noundef %1, i32 noundef %2) #13, !dbg !4784
  ret ptr %call, !dbg !4785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_alloc_tfm(ptr noundef %alg_name, ptr noundef %frontend, i32 noundef %type, i32 noundef %mask) #3 align 16 !dbg !4786 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !4791, metadata !DIExpression()), !dbg !4795
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !4792, metadata !DIExpression()), !dbg !4796
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4793, metadata !DIExpression()), !dbg !4797
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4794, metadata !DIExpression()), !dbg !4798
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !4799
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !4800
  %2 = load i32, ptr %type.addr, align 4, !dbg !4801
  %3 = load i32, ptr %mask.addr, align 4, !dbg !4802
  %call = call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef -1) #13, !dbg !4803
  ret ptr %call, !dbg !4804
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_get_default_rng() #0 align 16 !dbg !4805 {
entry:
  %rng = alloca ptr, align 8
  %err = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #12, !dbg !4810
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4808, metadata !DIExpression()), !dbg !4813
  call void @mutex_lock(ptr noundef @crypto_default_rng_lock) #13, !dbg !4814
  %0 = load ptr, ptr @crypto_default_rng, align 8, !dbg !4815
  %tobool = icmp ne ptr %0, null, !dbg !4815
  br i1 %tobool, label %if.end9, label %if.then, !dbg !4817

if.then:                                          ; preds = %entry
  %call = call ptr @crypto_alloc_rng(ptr noundef @.str, i32 noundef 0, i32 noundef 0) #13, !dbg !4818
  store ptr %call, ptr %rng, align 8, !dbg !4820
  %1 = load ptr, ptr %rng, align 8, !dbg !4821
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #13, !dbg !4822
  %conv = trunc i64 %call1 to i32, !dbg !4822
  store i32 %conv, ptr %err, align 4, !dbg !4823
  %2 = load ptr, ptr %rng, align 8, !dbg !4824
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %2) #13, !dbg !4826
  br i1 %call2, label %if.then3, label %if.end, !dbg !4827

if.then3:                                         ; preds = %if.then
  br label %unlock, !dbg !4828

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %rng, align 8, !dbg !4829
  %4 = load ptr, ptr %rng, align 8, !dbg !4830
  %call4 = call i32 @crypto_rng_seedsize(ptr noundef %4) #13, !dbg !4831
  %call5 = call i32 @crypto_rng_reset(ptr noundef %3, ptr noundef null, i32 noundef %call4) #13, !dbg !4832
  store i32 %call5, ptr %err, align 4, !dbg !4833
  %5 = load i32, ptr %err, align 4, !dbg !4834
  %tobool6 = icmp ne i32 %5, 0, !dbg !4834
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4836

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %rng, align 8, !dbg !4837
  call void @crypto_free_rng(ptr noundef %6) #13, !dbg !4839
  br label %unlock, !dbg !4840

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %rng, align 8, !dbg !4841
  store ptr %7, ptr @crypto_default_rng, align 8, !dbg !4842
  br label %if.end9, !dbg !4843

if.end9:                                          ; preds = %if.end8, %entry
  %8 = load i32, ptr @crypto_default_rng_refcnt, align 4, !dbg !4844
  %inc = add i32 %8, 1, !dbg !4844
  store i32 %inc, ptr @crypto_default_rng_refcnt, align 4, !dbg !4844
  store i32 0, ptr %err, align 4, !dbg !4845
  br label %unlock, !dbg !4846

unlock:                                           ; preds = %if.end9, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !4809), !dbg !4847
  call void @mutex_unlock(ptr noundef @crypto_default_rng_lock) #13, !dbg !4848
  %9 = load i32, ptr %err, align 4, !dbg !4849
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !4850
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #12, !dbg !4850
  ret i32 %9, !dbg !4851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4852 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4856 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4863
  %1 = ptrtoint ptr %0 to i64, !dbg !4864
  ret i64 %1, !dbg !4865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4866 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4872
  %1 = ptrtoint ptr %0 to i64, !dbg !4872
  %2 = inttoptr i64 %1 to ptr, !dbg !4872
  %3 = ptrtoint ptr %2 to i64, !dbg !4872
  %cmp = icmp uge i64 %3, -4095, !dbg !4872
  %lnot = xor i1 %cmp, true, !dbg !4872
  %lnot1 = xor i1 %lnot, true, !dbg !4872
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4872
  %conv = sext i32 %lnot.ext to i64, !dbg !4872
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4872
  %tobool = icmp ne i64 %expval, 0, !dbg !4872
  ret i1 %tobool, !dbg !4873
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_rng_seedsize(ptr noundef %tfm) #3 align 16 !dbg !4874 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4880
  %call = call ptr @crypto_rng_alg(ptr noundef %0) #13, !dbg !4881
  %seedsize = getelementptr inbounds %struct.rng_alg, ptr %call, i32 0, i32 3, !dbg !4882
  %1 = load i32, ptr %seedsize, align 8, !dbg !4882
  ret i32 %1, !dbg !4883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_rng(ptr noundef %tfm) #3 align 16 !dbg !4884 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4890
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !4891
  %call = call ptr @crypto_rng_tfm(ptr noundef %1) #13, !dbg !4892
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #13, !dbg !4893
  ret void, !dbg !4894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4895 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_put_default_rng() #0 align 16 !dbg !4896 {
entry:
  call void @mutex_lock(ptr noundef @crypto_default_rng_lock) #13, !dbg !4897
  %0 = load i32, ptr @crypto_default_rng_refcnt, align 4, !dbg !4898
  %dec = add i32 %0, -1, !dbg !4898
  store i32 %dec, ptr @crypto_default_rng_refcnt, align 4, !dbg !4898
  call void @mutex_unlock(ptr noundef @crypto_default_rng_lock) #13, !dbg !4899
  ret void, !dbg !4900
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_del_default_rng() #0 align 16 !dbg !4901 {
entry:
  %err = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4903, metadata !DIExpression()), !dbg !4906
  store i32 -16, ptr %err, align 4, !dbg !4906
  call void @mutex_lock(ptr noundef @crypto_default_rng_lock) #13, !dbg !4907
  %0 = load i32, ptr @crypto_default_rng_refcnt, align 4, !dbg !4908
  %tobool = icmp ne i32 %0, 0, !dbg !4908
  br i1 %tobool, label %if.then, label %if.end, !dbg !4910

if.then:                                          ; preds = %entry
  br label %out, !dbg !4911

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @crypto_default_rng, align 8, !dbg !4912
  call void @crypto_free_rng(ptr noundef %1) #13, !dbg !4913
  store ptr null, ptr @crypto_default_rng, align 8, !dbg !4914
  store i32 0, ptr %err, align 4, !dbg !4915
  br label %out, !dbg !4916

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !4904), !dbg !4917
  call void @mutex_unlock(ptr noundef @crypto_default_rng_lock) #13, !dbg !4918
  %2 = load i32, ptr %err, align 4, !dbg !4919
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !4920
  ret i32 %2, !dbg !4921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_register_rng(ptr noundef %alg) #0 align 16 !dbg !4922 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %istat = alloca ptr, align 8
  %base = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4926, metadata !DIExpression()), !dbg !4936
  call void @llvm.lifetime.start.p0(i64 8, ptr %istat) #12, !dbg !4937
  call void @llvm.dbg.declare(metadata ptr %istat, metadata !4927, metadata !DIExpression()), !dbg !4938
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4939
  %call = call ptr @rng_get_stat(ptr noundef %0) #13, !dbg !4940
  store ptr %call, ptr %istat, align 8, !dbg !4938
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !4941
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4935, metadata !DIExpression()), !dbg !4942
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !4943
  %base1 = getelementptr inbounds %struct.rng_alg, ptr %1, i32 0, i32 4, !dbg !4944
  store ptr %base1, ptr %base, align 8, !dbg !4942
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !4945
  %seedsize = getelementptr inbounds %struct.rng_alg, ptr %2, i32 0, i32 3, !dbg !4947
  %3 = load i32, ptr %seedsize, align 8, !dbg !4947
  %conv = zext i32 %3 to i64, !dbg !4945
  %cmp = icmp ugt i64 %conv, 512, !dbg !4948
  br i1 %cmp, label %if.then, label %if.end, !dbg !4949

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4950

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %base, align 8, !dbg !4951
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 10, !dbg !4952
  store ptr @crypto_rng_type, ptr %cra_type, align 8, !dbg !4953
  %5 = load ptr, ptr %base, align 8, !dbg !4954
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 2, !dbg !4955
  %6 = load i32, ptr %cra_flags, align 8, !dbg !4956
  %and = and i32 %6, -16, !dbg !4956
  store i32 %and, ptr %cra_flags, align 8, !dbg !4956
  %7 = load ptr, ptr %base, align 8, !dbg !4957
  %cra_flags3 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 2, !dbg !4958
  %8 = load i32, ptr %cra_flags3, align 8, !dbg !4959
  %or = or i32 %8, 12, !dbg !4959
  store i32 %or, ptr %cra_flags3, align 8, !dbg !4959
  %9 = load ptr, ptr %base, align 8, !dbg !4960
  %call4 = call i32 @crypto_register_alg(ptr noundef %9) #13, !dbg !4961
  store i32 %call4, ptr %retval, align 4, !dbg !4962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4962

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !4963
  call void @llvm.lifetime.end.p0(i64 8, ptr %istat) #12, !dbg !4963
  %10 = load i32, ptr %retval, align 4, !dbg !4963
  ret i32 %10, !dbg !4963
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rng_get_stat(ptr noundef %alg) #3 align 16 !dbg !4964 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  ret ptr null, !dbg !4970
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4971 dso_local i32 @crypto_register_alg(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_unregister_rng(ptr noundef %alg) #0 align 16 !dbg !4974 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4980
  %base = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 4, !dbg !4981
  call void @crypto_unregister_alg(ptr noundef %base) #13, !dbg !4982
  ret void, !dbg !4983
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4984 dso_local void @crypto_unregister_alg(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_register_rngs(ptr noundef %algs, i32 noundef %count) #0 align 16 !dbg !4985 {
entry:
  %retval = alloca i32, align 4
  %algs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algs.addr, metadata !4987, metadata !DIExpression()), !dbg !4992
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4988, metadata !DIExpression()), !dbg !4993
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4989, metadata !DIExpression()), !dbg !4995
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4990, metadata !DIExpression()), !dbg !4996
  store i32 0, ptr %i, align 4, !dbg !4997
  br label %for.cond, !dbg !4999

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5000
  %1 = load i32, ptr %count.addr, align 4, !dbg !5002
  %cmp = icmp slt i32 %0, %1, !dbg !5003
  br i1 %cmp, label %for.body, label %for.end, !dbg !5004

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algs.addr, align 8, !dbg !5005
  %3 = load i32, ptr %i, align 4, !dbg !5007
  %idx.ext = sext i32 %3 to i64, !dbg !5008
  %add.ptr = getelementptr %struct.rng_alg, ptr %2, i64 %idx.ext, !dbg !5008
  %call = call i32 @crypto_register_rng(ptr noundef %add.ptr) #13, !dbg !5009
  store i32 %call, ptr %ret, align 4, !dbg !5010
  %4 = load i32, ptr %ret, align 4, !dbg !5011
  %tobool = icmp ne i32 %4, 0, !dbg !5011
  br i1 %tobool, label %if.then, label %if.end, !dbg !5013

if.then:                                          ; preds = %for.body
  br label %err, !dbg !5014

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5015

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !5016
  %inc = add i32 %5, 1, !dbg !5016
  store i32 %inc, ptr %i, align 4, !dbg !5016
  br label %for.cond, !dbg !5017, !llvm.loop !5018

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5022

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !4991), !dbg !5023
  %6 = load i32, ptr %i, align 4, !dbg !5024
  %dec = add i32 %6, -1, !dbg !5024
  store i32 %dec, ptr %i, align 4, !dbg !5024
  br label %for.cond1, !dbg !5024

for.cond1:                                        ; preds = %for.inc6, %err
  %7 = load i32, ptr %i, align 4, !dbg !5026
  %cmp2 = icmp sge i32 %7, 0, !dbg !5028
  br i1 %cmp2, label %for.body3, label %for.end8, !dbg !5029

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %algs.addr, align 8, !dbg !5030
  %9 = load i32, ptr %i, align 4, !dbg !5031
  %idx.ext4 = sext i32 %9 to i64, !dbg !5032
  %add.ptr5 = getelementptr %struct.rng_alg, ptr %8, i64 %idx.ext4, !dbg !5032
  call void @crypto_unregister_rng(ptr noundef %add.ptr5) #13, !dbg !5033
  br label %for.inc6, !dbg !5033

for.inc6:                                         ; preds = %for.body3
  %10 = load i32, ptr %i, align 4, !dbg !5034
  %dec7 = add i32 %10, -1, !dbg !5034
  store i32 %dec7, ptr %i, align 4, !dbg !5034
  br label %for.cond1, !dbg !5035, !llvm.loop !5036

for.end8:                                         ; preds = %for.cond1
  %11 = load i32, ptr %ret, align 4, !dbg !5038
  store i32 %11, ptr %retval, align 4, !dbg !5039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5039

cleanup:                                          ; preds = %for.end8, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !5040
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5040
  %12 = load i32, ptr %retval, align 4, !dbg !5040
  ret i32 %12, !dbg !5040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_unregister_rngs(ptr noundef %algs, i32 noundef %count) #0 align 16 !dbg !5041 {
entry:
  %algs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algs.addr, metadata !5045, metadata !DIExpression()), !dbg !5048
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5046, metadata !DIExpression()), !dbg !5049
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5047, metadata !DIExpression()), !dbg !5051
  %0 = load i32, ptr %count.addr, align 4, !dbg !5052
  %sub = sub i32 %0, 1, !dbg !5054
  store i32 %sub, ptr %i, align 4, !dbg !5055
  br label %for.cond, !dbg !5056

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5057
  %cmp = icmp sge i32 %1, 0, !dbg !5059
  br i1 %cmp, label %for.body, label %for.end, !dbg !5060

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algs.addr, align 8, !dbg !5061
  %3 = load i32, ptr %i, align 4, !dbg !5062
  %idx.ext = sext i32 %3 to i64, !dbg !5063
  %add.ptr = getelementptr %struct.rng_alg, ptr %2, i64 %idx.ext, !dbg !5063
  call void @crypto_unregister_rng(ptr noundef %add.ptr) #13, !dbg !5064
  br label %for.inc, !dbg !5064

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !5065
  %dec = add i32 %4, -1, !dbg !5065
  store i32 %dec, ptr %i, align 4, !dbg !5065
  br label %for.cond, !dbg !5066, !llvm.loop !5067

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5069
  ret void, !dbg !5069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_rng_alg(ptr noundef %alg) #3 align 16 !dbg !5070 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5074, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5078
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5075, metadata !DIExpression()), !dbg !5078
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5078
  store ptr %0, ptr %__mptr, align 8, !dbg !5078
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5078
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !5078
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5079
  %2 = load ptr, ptr %tmp, align 8, !dbg !5078
  ret ptr %2, !dbg !5080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_rng_tfm(ptr noundef %tfm) #3 align 16 !dbg !5081 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5087
  %base = getelementptr inbounds %struct.crypto_rng, ptr %0, i32 0, i32 0, !dbg !5088
  ret ptr %base, !dbg !5089
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5090 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5091 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5095, metadata !DIExpression()), !dbg !5097
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5096, metadata !DIExpression()), !dbg !5098
  %0 = load i64, ptr %size.addr, align 8, !dbg !5099
  %tobool = icmp ne i64 %0, 0, !dbg !5099
  br i1 %tobool, label %if.end, label %if.then, !dbg !5101

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5103
  %cmp = icmp ule i64 %1, 8, !dbg !5105
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5106

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5107
  br label %return, !dbg !5107

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5108
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5110
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5111

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5112
  %cmp4 = icmp ule i64 %3, 96, !dbg !5113
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5114

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5118
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5119

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5120
  %cmp9 = icmp ule i64 %5, 192, !dbg !5121
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5122

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5124
  %cmp12 = icmp ule i64 %6, 8, !dbg !5126
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5127

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5129
  %cmp15 = icmp ule i64 %7, 16, !dbg !5131
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5132

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5134
  %cmp18 = icmp ule i64 %8, 32, !dbg !5136
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5137

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5138
  br label %return, !dbg !5138

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5139
  %cmp21 = icmp ule i64 %9, 64, !dbg !5141
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5142

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5143
  br label %return, !dbg !5143

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5144
  %cmp24 = icmp ule i64 %10, 128, !dbg !5146
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5147

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5149
  %cmp27 = icmp ule i64 %11, 256, !dbg !5151
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5152

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5153
  br label %return, !dbg !5153

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5154
  %cmp30 = icmp ule i64 %12, 512, !dbg !5156
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5157

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5158
  br label %return, !dbg !5158

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5159
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5161
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5162

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5163
  br label %return, !dbg !5163

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5164
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5166
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5167

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5169
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5171
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5172

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5174
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5176
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5177

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5178
  br label %return, !dbg !5178

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5179
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5181
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5182

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5183
  br label %return, !dbg !5183

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5184
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5186
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5187

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5188
  br label %return, !dbg !5188

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5189
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5191
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5192

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5193
  br label %return, !dbg !5193

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5194
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5196
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5197

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5198
  br label %return, !dbg !5198

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5199
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5201
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5202

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5204
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5206
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5207

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5208
  br label %return, !dbg !5208

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5209
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5211
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5212

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5213
  br label %return, !dbg !5213

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5214
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5216
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5217

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5219, !range !5221, !noundef !1219
  %tobool69 = trunc i8 %25 to i1, !dbg !5219
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5222

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5223

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #16, !dbg !5224, !srcloc !5227
  unreachable, !dbg !5224

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5228

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5229

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5230

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5232

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5230

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #12, !dbg !5234, !srcloc !5236
  br label %do.end75, !dbg !5234

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5230

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5237
  br label %return, !dbg !5237

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5238
  ret i32 %26, !dbg !5238
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5239 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5245 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5249, metadata !DIExpression()), !dbg !5251
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5250, metadata !DIExpression()), !dbg !5252
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5253
  %and = and i32 %0, 17, !dbg !5253
  %cmp = icmp eq i32 %and, 0, !dbg !5253
  %lnot = xor i1 %cmp, true, !dbg !5253
  %lnot1 = xor i1 %lnot, true, !dbg !5253
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5253
  %conv = sext i32 %lnot.ext to i64, !dbg !5253
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5253
  %tobool = icmp ne i64 %expval, 0, !dbg !5253
  br i1 %tobool, label %if.then, label %if.end, !dbg !5255

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5256
  br label %return, !dbg !5256

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5257
  %and2 = and i32 %1, 1, !dbg !5259
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5259
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5260

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5261
  br label %return, !dbg !5261

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5262
  br label %return, !dbg !5262

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5264
  ret i32 %2, !dbg !5264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5265 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5266 dso_local void @__compiletime_assert_117() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5267 dso_local i32 @wait_for_random_bytes() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5268 dso_local void @get_random_bytes(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5271 dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_rng_init_tfm(ptr noundef %tfm) #0 align 16 !dbg !5274 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  ret i32 0, !dbg !5278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_rng_show(ptr noundef %m, ptr noundef %alg) #0 align 16 !dbg !5279 {
entry:
  %m.addr = alloca ptr, align 8
  %alg.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5281, metadata !DIExpression()), !dbg !5283
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5282, metadata !DIExpression()), !dbg !5284
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5285
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.2) #13, !dbg !5286
  %1 = load ptr, ptr %m.addr, align 8, !dbg !5287
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !5288
  %call = call i32 @seedsize(ptr noundef %2) #13, !dbg !5289
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.3, i32 noundef %call) #13, !dbg !5290
  ret void, !dbg !5291
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5292 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seedsize(ptr noundef %alg) #0 align 16 !dbg !5295 {
entry:
  %alg.addr = alloca ptr, align 8
  %ralg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5297, metadata !DIExpression()), !dbg !5301
  call void @llvm.lifetime.start.p0(i64 8, ptr %ralg) #12, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %ralg, metadata !5298, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5299, metadata !DIExpression()), !dbg !5304
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5304
  store ptr %0, ptr %__mptr, align 8, !dbg !5304
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5304
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !5304
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5305
  %2 = load ptr, ptr %tmp, align 8, !dbg !5304
  store ptr %2, ptr %ralg, align 8, !dbg !5303
  %3 = load ptr, ptr %ralg, align 8, !dbg !5306
  %seedsize = getelementptr inbounds %struct.rng_alg, ptr %3, i32 0, i32 3, !dbg !5307
  %4 = load i32, ptr %seedsize, align 8, !dbg !5307
  call void @llvm.lifetime.end.p0(i64 8, ptr %ralg) #12, !dbg !5308
  ret i32 %4, !dbg !5309
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5310 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { noredzone allocsize(2) }
attributes #16 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620}
!llvm.ident = !{!4621}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crypto_default_rng", scope: !2, file: !3, line: 27, type: !115, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.rng.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/rng\22 -D KBUILD_BASENAME=\22rng\22 -D KBUILD_MODNAME=\22rng\22 -D __KBUILD_MODNAME=kmod_rng -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/rng.ll crypto/rng.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !4559, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/rng.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "750927fa0c4b013b23f9e2d15366146b")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87, !92}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!102 = !{!103, !104, !106, !199, !792}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 154, baseType: !7)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rng_alg", file: !108, line: 58, size: 3328, elements: !109)
!108 = !DIFile(filename: "./include/crypto/rng.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8b1199181bccfbde4a70430b217a12d5")
!109 = !{!110, !4549, !4553, !4557, !4558}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !107, file: !108, line: 59, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !115, !4525, !7, !4531, !7}
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_rng", file: !108, line: 75, size: 256, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !116, file: !108, line: 76, baseType: !119, size: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !120, line: 422, size: 256, elements: !121)
!120 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!121 = !{!122, !132, !137, !138, !143, !4548}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !119, file: !120, line: 423, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !124, line: 113, baseType: !125)
!124 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !124, line: 111, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !125, file: !124, line: 112, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 174, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 172, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !129, file: !105, line: 173, baseType: !114, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !119, file: !120, line: 425, baseType: !133, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !120, line: 427, baseType: !114, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !119, file: !120, line: 429, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !119, file: !120, line: 431, baseType: !144, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !120, line: 343, size: 3072, align: 64, elements: !146)
!146 = !{!147, !153, !154, !155, !156, !157, !158, !159, !160, !165, !166, !4513, !4541, !4542, !4543, !4547}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !145, file: !120, line: 344, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 190, size: 128, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !105, line: 191, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !105, line: 191, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !145, file: !120, line: 345, baseType: !148, size: 128, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !145, file: !120, line: 347, baseType: !133, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !145, file: !120, line: 348, baseType: !7, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !145, file: !120, line: 349, baseType: !7, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !145, file: !120, line: 350, baseType: !7, size: 32, offset: 352)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !145, file: !120, line: 352, baseType: !114, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !145, file: !120, line: 353, baseType: !123, size: 32, offset: 416)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !145, file: !120, line: 355, baseType: !161, size: 1024, offset: 448)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !163)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !{!164}
!164 = !DISubrange(count: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !145, file: !120, line: 356, baseType: !161, size: 1024, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !145, file: !120, line: 358, baseType: !167, size: 64, offset: 2496)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !170, line: 57, size: 512, elements: !171)
!170 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!171 = !{!172, !176, !180, !184, !4225, !4464, !4509, !4510, !4511, !4512}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !169, file: !170, line: 58, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!7, !144, !133, !133}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !169, file: !170, line: 59, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!7, !144}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !169, file: !170, line: 60, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!114, !142}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !169, file: !170, line: 61, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188, !144}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !190, line: 17, size: 960, elements: !191)
!190 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!191 = !{!192, !194, !200, !201, !202, !203, !207, !208, !257, !279, !280, !4224}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !189, file: !190, line: 18, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !190, line: 19, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 61, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !197, line: 72, baseType: !198)
!197 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !197, line: 16, baseType: !199)
!199 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !189, file: !190, line: 20, baseType: !195, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !189, file: !190, line: 21, baseType: !195, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !189, file: !190, line: 22, baseType: !195, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !189, file: !190, line: 23, baseType: !204, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !105, line: 52, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !197, line: 88, baseType: !206)
!206 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !189, file: !190, line: 24, baseType: !204, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !189, file: !190, line: 25, baseType: !209, size: 256, offset: 448)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !210, line: 66, size: 256, elements: !211)
!210 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!211 = !{!212, !221, !251, !256}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !209, file: !210, line: 67, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !214, line: 13, baseType: !215)
!214 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !105, line: 181, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 179, size: 64, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !216, file: !105, line: 180, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !134, line: 22, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !136, line: 30, baseType: !206)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !209, file: !210, line: 68, baseType: !222, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 23, baseType: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 14, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !223, line: 15, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !228, line: 44, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 15, size: 32, elements: !233)
!233 = !{!234, !235, !243}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !232, file: !228, line: 16, baseType: !128, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 24, baseType: !236, size: 16)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 24, size: 16, elements: !237)
!237 = !{!238, !242}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !236, file: !228, line: 25, baseType: !239, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !241)
!241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !236, file: !228, line: 26, baseType: !239, size: 8, offset: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 28, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 28, size: 32, elements: !245)
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !244, file: !228, line: 29, baseType: !247, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !249)
!249 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !244, file: !228, line: 30, baseType: !247, size: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !209, file: !210, line: 70, baseType: !252, size: 32, offset: 96)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !253, line: 15, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !252, file: !253, line: 20, baseType: !128, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !209, file: !210, line: 72, baseType: !148, size: 128, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !189, file: !190, line: 26, baseType: !258, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !190, line: 32, size: 256, elements: !261)
!261 = !{!262, !267, !271, !275}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !260, file: !190, line: 33, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!103, !188, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !260, file: !190, line: 34, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !188, !103}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !190, line: 35, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!103, !188, !103, !266}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !260, file: !190, line: 36, baseType: !276, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!114, !188, !103}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !189, file: !190, line: 27, baseType: !114, size: 32, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !189, file: !190, line: 28, baseType: !281, size: 64, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !284)
!284 = !{!285, !304, !313, !315, !316, !317, !318, !319, !395, !618, !627, !4214, !4215, !4216, !4217, !4218, !4219, !4221, !4222, !4223}
!285 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !59, line: 995, baseType: !286, size: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !59, line: 995, size: 128, elements: !287)
!287 = !{!288, !294, !303}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !286, file: !59, line: 996, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !290, line: 60, size: 64, elements: !291)
!290 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !290, line: 61, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !286, file: !59, line: 997, baseType: !295, size: 128, align: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !105, line: 232, size: 128, align: 64, elements: !296)
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !105, line: 233, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !295, file: !105, line: 234, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !298}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !286, file: !59, line: 998, baseType: !7, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !283, file: !59, line: 1005, baseType: !305, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !306, line: 29, baseType: !307)
!306 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !306, line: 17, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !306, line: 18, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !306, line: 18, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !310, file: !306, line: 19, baseType: !224, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !283, file: !59, line: 1006, baseType: !314, size: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !105, line: 156, baseType: !7)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !283, file: !59, line: 1007, baseType: !213, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !283, file: !59, line: 1008, baseType: !209, size: 256, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !283, file: !59, line: 1009, baseType: !204, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !283, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !283, file: !59, line: 1011, baseType: !320, size: 256, offset: 640)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !321)
!321 = !{!322, !345, !384, !385, !393, !394}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !320, file: !59, line: 949, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !324, line: 34, baseType: !325)
!324 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 25, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !325, file: !324, line: 26, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !329, line: 27, baseType: !330)
!329 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !329, line: 13, size: 64, elements: !331)
!331 = !{!332, !344}
!332 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !329, line: 14, baseType: !333, size: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !329, line: 14, size: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !333, file: !329, line: 15, baseType: !128, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !329, line: 16, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !329, line: 16, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !337, file: !329, line: 18, baseType: !239, size: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !337, file: !329, line: 19, baseType: !341, size: 24, offset: 8)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 24, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 3)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !330, file: !329, line: 26, baseType: !227, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !320, file: !59, line: 950, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !348)
!348 = !{!349, !350, !351, !352, !365, !366, !373, !374}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !347, file: !6, line: 61, baseType: !123, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !347, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !6, line: 63, baseType: !305, size: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !347, file: !6, line: 65, baseType: !353, size: 256, offset: 128)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 256, elements: !363)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !105, line: 194, size: 64, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !354, file: !105, line: 195, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !105, line: 198, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !105, line: 199, baseType: !357, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !358, file: !105, line: 199, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!363 = !{!364}
!364 = !DISubrange(count: 4)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !347, file: !6, line: 66, baseType: !354, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !347, file: !6, line: 68, baseType: !367, size: 192, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !368, line: 41, baseType: !369)
!368 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !368, line: 37, size: 192, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !369, file: !368, line: 38, baseType: !305, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !369, file: !368, line: 39, baseType: !148, size: 128, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !347, file: !6, line: 69, baseType: !295, size: 128, align: 64, offset: 640)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !347, file: !6, line: 70, baseType: !375, offset: 768)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, elements: !382)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !376, file: !6, line: 55, baseType: !114, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !376, file: !6, line: 56, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!382 = !{!383}
!383 = !DISubrange(count: -1)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !320, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !320, file: !59, line: 952, baseType: !386, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !387, line: 23, baseType: !388)
!387 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 21, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !388, file: !387, line: 22, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !105, line: 37, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !197, line: 49, baseType: !7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !320, file: !59, line: 952, baseType: !386, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !320, file: !59, line: 953, baseType: !114, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !283, file: !59, line: 1012, baseType: !396, size: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !399, line: 110, size: 1472, elements: !400)
!399 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!400 = !{!401, !402, !403, !410, !411, !412, !413, !414, !415, !416, !417, !426, !427, !428, !429, !430, !431, !563, !564, !565, !566, !567, !598, !601, !605, !613}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !398, file: !399, line: 111, baseType: !213, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !398, file: !399, line: 112, baseType: !386, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !398, file: !399, line: 113, baseType: !404, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !387, line: 28, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 26, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !387, line: 27, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !105, line: 38, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !197, line: 50, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !398, file: !399, line: 114, baseType: !386, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !398, file: !399, line: 115, baseType: !404, size: 32, offset: 160)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !398, file: !399, line: 116, baseType: !386, size: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !398, file: !399, line: 117, baseType: !404, size: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !398, file: !399, line: 118, baseType: !386, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !398, file: !399, line: 119, baseType: !404, size: 32, offset: 288)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !398, file: !399, line: 120, baseType: !7, size: 32, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !398, file: !399, line: 121, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !419, line: 24, baseType: !420)
!419 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 24, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !419, line: 24, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !425)
!425 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !398, file: !399, line: 122, baseType: !418, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !398, file: !399, line: 123, baseType: !418, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !398, file: !399, line: 124, baseType: !418, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !398, file: !399, line: 125, baseType: !418, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !398, file: !399, line: 127, baseType: !241, size: 8, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !398, file: !399, line: 129, baseType: !432, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !434, line: 195, size: 1728, elements: !435)
!434 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!435 = !{!436, !437, !442, !454, !463, !466, !467, !474, !475, !476, !477, !480, !481, !482, !484, !485, !527, !548}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !433, file: !434, line: 196, baseType: !123, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !433, file: !434, line: 197, baseType: !438, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !434, line: 28, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !105, line: 104, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !114)
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 198, baseType: !443, size: 192, offset: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 198, size: 192, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !443, file: !434, line: 199, baseType: !148, size: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !443, file: !434, line: 200, baseType: !447, size: 192, align: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !448, line: 5, size: 192, align: 64, elements: !449)
!448 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!449 = !{!450, !451, !453}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !447, file: !448, line: 6, baseType: !199, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !447, file: !448, line: 7, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !447, file: !448, line: 8, baseType: !452, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !433, file: !434, line: 205, baseType: !455, size: 320, offset: 256)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !456, line: 48, size: 320, elements: !457)
!456 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!457 = !{!458, !459, !460, !461, !462}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !456, line: 49, baseType: !213, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !455, file: !456, line: 55, baseType: !213, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !455, file: !456, line: 57, baseType: !252, size: 32, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !455, file: !456, line: 59, baseType: !222, size: 32, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !455, file: !456, line: 60, baseType: !148, size: 128, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !433, file: !434, line: 206, baseType: !464, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !434, line: 206, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !433, file: !434, line: 207, baseType: !103, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 208, baseType: !468, size: 64, offset: 704)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 208, size: 64, elements: !469)
!469 = !{!470, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !468, file: !434, line: 209, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !472, line: 8, baseType: !220)
!472 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !468, file: !434, line: 210, baseType: !471, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !433, file: !434, line: 212, baseType: !471, size: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !433, file: !434, line: 213, baseType: !386, size: 32, offset: 832)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !433, file: !434, line: 214, baseType: !404, size: 32, offset: 864)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !433, file: !434, line: 215, baseType: !478, size: 32, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !434, line: 31, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 110, baseType: !133)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !433, file: !434, line: 216, baseType: !249, size: 16, offset: 928)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !433, file: !434, line: 217, baseType: !249, size: 16, offset: 944)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !433, file: !434, line: 221, baseType: !483, size: 16, offset: 960)
!483 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !434, line: 228, baseType: !199, size: 64, offset: 1024)
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 245, baseType: !486, size: 320, offset: 1088)
!486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 245, size: 320, elements: !487)
!487 = !{!488, !519}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !486, file: !434, line: 246, baseType: !489, size: 320)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !434, line: 114, size: 320, elements: !490)
!490 = !{!491, !492, !504, !507, !516}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !489, file: !434, line: 116, baseType: !199, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !434, line: 117, baseType: !493, size: 64, offset: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !434, line: 117, size: 64, elements: !494)
!494 = !{!495, !503}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !434, line: 118, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !434, line: 118, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !496, file: !434, line: 120, baseType: !247, size: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !496, file: !434, line: 121, baseType: !500, size: 48, offset: 16)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 48, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 6)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !493, file: !434, line: 127, baseType: !199, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !434, line: 129, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !434, line: 102, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !489, file: !434, line: 130, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !434, line: 108, size: 192, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !509, file: !434, line: 109, baseType: !295, size: 128, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !509, file: !434, line: 110, baseType: !123, size: 32, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !509, file: !434, line: 111, baseType: !514, size: 8, offset: 160)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 35, baseType: !515)
!515 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !489, file: !434, line: 131, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !434, line: 247, baseType: !520, size: 320)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !486, file: !434, line: 247, size: 320, elements: !521)
!521 = !{!522, !523, !524, !525, !526}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !520, file: !434, line: 248, baseType: !199, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !520, file: !434, line: 249, baseType: !199, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !520, file: !434, line: 250, baseType: !505, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !520, file: !434, line: 251, baseType: !508, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !520, file: !434, line: 252, baseType: !193, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 260, baseType: !528, size: 256, offset: 1408)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 260, size: 256, elements: !529)
!529 = !{!530, !536}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !528, file: !434, line: 261, baseType: !531, size: 256)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !434, line: 134, size: 256, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !531, file: !434, line: 135, baseType: !103, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !531, file: !434, line: 136, baseType: !535, size: 256)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !363)
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !434, line: 262, baseType: !537, size: 256)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !434, line: 262, size: 256, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !537, file: !434, line: 264, baseType: !148, size: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !537, file: !434, line: 265, baseType: !541, size: 128, offset: 128)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !542, line: 22, size: 128, elements: !543)
!542 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!543 = !{!544, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !541, file: !542, line: 23, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !542, line: 23, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !541, file: !542, line: 24, baseType: !199, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !433, file: !434, line: 280, baseType: !549, size: 64, offset: 1664)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !434, line: 176, size: 192, elements: !551)
!551 = !{!552, !561, !562}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !550, file: !434, line: 177, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !434, line: 171, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!114, !432, !557, !559, !432}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !550, file: !434, line: 178, baseType: !432, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !550, file: !434, line: 179, baseType: !505, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !398, file: !399, line: 130, baseType: !432, size: 64, offset: 832)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !398, file: !399, line: 131, baseType: !432, size: 64, offset: 896)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !398, file: !399, line: 132, baseType: !432, size: 64, offset: 960)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !398, file: !399, line: 135, baseType: !103, size: 64, offset: 1024)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !398, file: !399, line: 137, baseType: !568, size: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !570, line: 14, size: 1088, elements: !571)
!570 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!571 = !{!572, !573, !582, !583, !584, !585, !586, !587}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !569, file: !570, line: 15, baseType: !123, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !569, file: !570, line: 17, baseType: !574, size: 320, offset: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !575, line: 22, size: 320, elements: !576)
!575 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!576 = !{!577, !578, !579, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !575, line: 23, baseType: !222, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !574, file: !575, line: 24, baseType: !219, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !574, file: !575, line: 26, baseType: !148, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !574, file: !575, line: 28, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !569, file: !570, line: 19, baseType: !199, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !569, file: !570, line: 20, baseType: !213, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !569, file: !570, line: 23, baseType: !358, size: 128, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !569, file: !570, line: 24, baseType: !386, size: 32, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !569, file: !570, line: 29, baseType: !213, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !569, file: !570, line: 36, baseType: !588, size: 320, offset: 768)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !589, line: 15, size: 320, elements: !590)
!589 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !589, line: 16, baseType: !222, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !588, file: !589, line: 18, baseType: !114, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !588, file: !589, line: 19, baseType: !114, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !588, file: !589, line: 20, baseType: !114, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !588, file: !589, line: 21, baseType: !114, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !588, file: !589, line: 22, baseType: !199, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !589, line: 23, baseType: !199, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !398, file: !399, line: 138, baseType: !599, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !30, line: 901, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !398, file: !399, line: 139, baseType: !602, size: 64, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !604, line: 16, flags: DIFlagFwdDecl)
!604 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!605 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !398, file: !399, line: 140, baseType: !606, size: 64, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !399, line: 25, size: 64, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !607, file: !399, line: 26, baseType: !128, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !607, file: !399, line: 27, baseType: !114, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !607, file: !399, line: 28, baseType: !612, offset: 64)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, elements: !382)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !399, line: 142, baseType: !614, size: 128, offset: 1344)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !399, line: 142, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !614, file: !399, line: 143, baseType: !114, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !614, file: !399, line: 144, baseType: !295, size: 128, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !283, file: !59, line: 1013, baseType: !619, size: 256, offset: 960)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !619, file: !59, line: 971, baseType: !199, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !619, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !619, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !619, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !619, file: !59, line: 976, baseType: !204, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !283, file: !59, line: 1014, baseType: !628, size: 128, offset: 1216)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !629, line: 8, size: 128, elements: !630)
!629 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!630 = !{!631, !4213}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !628, file: !629, line: 9, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !634, line: 70, size: 256, elements: !635)
!634 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!635 = !{!636, !4210, !4211, !4212}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !633, file: !634, line: 71, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !639, line: 82, size: 1536, elements: !640)
!639 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!640 = !{!641, !642, !652, !660, !661, !676, !4177, !4179, !4192, !4193, !4194, !4195, !4196, !4202, !4203, !4204}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !638, file: !639, line: 84, baseType: !7, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !638, file: !639, line: 85, baseType: !643, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !644, line: 275, baseType: !645)
!644 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !644, line: 275, size: 32, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !645, file: !644, line: 275, baseType: !648, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !644, line: 69, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !644, line: 64, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !649, file: !644, line: 65, baseType: !7, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !638, file: !639, line: 86, baseType: !653, size: 128, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !654, line: 38, size: 128, elements: !655)
!654 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!655 = !{!656, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !654, line: 39, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !653, file: !654, line: 39, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !638, file: !639, line: 87, baseType: !637, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !638, file: !639, line: 88, baseType: !662, size: 128, offset: 256)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !639, line: 49, size: 128, elements: !663)
!663 = !{!664, !673}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !639, line: 50, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !639, line: 50, size: 64, elements: !666)
!666 = !{!667, !672}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !639, line: 51, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !639, line: 51, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !668, file: !639, line: 52, baseType: !133, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !668, file: !639, line: 52, baseType: !133, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !665, file: !639, line: 54, baseType: !423, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !639, line: 56, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !638, file: !639, line: 89, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !679)
!679 = !{!680, !682, !683, !684, !685, !686, !687, !690, !691, !886, !3993, !3994, !3995, !3996, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4159, !4162, !4163, !4164, !4173, !4174, !4175, !4176}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !678, file: !59, line: 642, baseType: !681, size: 16)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !105, line: 24, baseType: !249)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !678, file: !59, line: 643, baseType: !249, size: 16, offset: 16)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !678, file: !59, line: 644, baseType: !386, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !678, file: !59, line: 645, baseType: !148, size: 128, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !678, file: !59, line: 646, baseType: !404, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !678, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !678, file: !59, line: 650, baseType: !688, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !678, file: !59, line: 651, baseType: !688, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !678, file: !59, line: 654, baseType: !692, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !695)
!695 = !{!696, !700, !713, !719, !723, !727, !731, !735, !739, !743, !747, !748, !754, !758, !797, !828, !835, !841, !845, !849, !853, !857, !861, !867, !871}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !694, file: !59, line: 1967, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!637, !677, !637, !7}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !694, file: !59, line: 1968, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!517, !637, !677, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !706, line: 10, size: 128, elements: !707)
!706 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!707 = !{!708, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !705, file: !706, line: 11, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !103}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !705, file: !706, line: 12, baseType: !103, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !694, file: !59, line: 1969, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!114, !717, !677, !114}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !419, line: 42, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !694, file: !59, line: 1970, baseType: !720, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!688, !677, !114, !514}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !694, file: !59, line: 1972, baseType: !724, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!114, !637, !193, !114}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !694, file: !59, line: 1974, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!114, !717, !677, !637, !681, !514}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !694, file: !59, line: 1976, baseType: !732, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!114, !637, !677, !637}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !694, file: !59, line: 1977, baseType: !736, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!114, !677, !637}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !694, file: !59, line: 1978, baseType: !740, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!114, !717, !677, !637, !517}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !694, file: !59, line: 1980, baseType: !744, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!114, !717, !677, !637, !681}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !694, file: !59, line: 1982, baseType: !736, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !694, file: !59, line: 1983, baseType: !749, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!114, !717, !677, !637, !681, !752}
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !105, line: 21, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !105, line: 18, baseType: !133)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !694, file: !59, line: 1985, baseType: !755, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!114, !717, !677, !637, !677, !637, !7}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !694, file: !59, line: 1987, baseType: !759, size: 64, offset: 832)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!114, !717, !637, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !764)
!764 = !{!765, !766, !767, !777, !786, !787, !793, !794, !795}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !763, file: !59, line: 227, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !763, file: !59, line: 228, baseType: !681, size: 16, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !59, line: 241, baseType: !768, size: 32, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !59, line: 241, size: 32, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !768, file: !59, line: 242, baseType: !386, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !768, file: !59, line: 243, baseType: !772, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !773, line: 16, baseType: !774)
!773 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !773, line: 14, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !774, file: !773, line: 15, baseType: !391, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !59, line: 245, baseType: !778, size: 32, offset: 96)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !59, line: 245, size: 32, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !778, file: !59, line: 246, baseType: !404, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !778, file: !59, line: 247, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !773, line: 20, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !773, line: 18, size: 32, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !783, file: !773, line: 19, baseType: !408, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !763, file: !59, line: 249, baseType: !204, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !763, file: !59, line: 250, baseType: !788, size: 128, offset: 192)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !472, line: 13, size: 128, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !788, file: !472, line: 14, baseType: !471, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !788, file: !472, line: 15, baseType: !792, size: 64, offset: 64)
!792 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !763, file: !59, line: 251, baseType: !788, size: 128, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !763, file: !59, line: 252, baseType: !788, size: 128, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !763, file: !59, line: 259, baseType: !796, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !694, file: !59, line: 1988, baseType: !798, size: 64, offset: 896)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!114, !717, !801, !803, !133, !7}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !805, line: 22, size: 1280, elements: !806)
!805 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !804, file: !805, line: 23, baseType: !133, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !804, file: !805, line: 24, baseType: !681, size: 16, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !804, file: !805, line: 25, baseType: !7, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !804, file: !805, line: 26, baseType: !479, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !804, file: !805, line: 27, baseType: !423, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !804, file: !805, line: 28, baseType: !423, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !804, file: !805, line: 41, baseType: !423, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !804, file: !805, line: 42, baseType: !752, size: 32, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !804, file: !805, line: 43, baseType: !752, size: 32, offset: 352)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !804, file: !805, line: 44, baseType: !386, size: 32, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !804, file: !805, line: 45, baseType: !404, size: 32, offset: 416)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !804, file: !805, line: 46, baseType: !204, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !804, file: !805, line: 47, baseType: !788, size: 128, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !804, file: !805, line: 48, baseType: !788, size: 128, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !804, file: !805, line: 49, baseType: !788, size: 128, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !804, file: !805, line: 50, baseType: !788, size: 128, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !804, file: !805, line: 51, baseType: !423, size: 64, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !804, file: !805, line: 52, baseType: !423, size: 64, offset: 1088)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !804, file: !805, line: 53, baseType: !133, size: 32, offset: 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !804, file: !805, line: 54, baseType: !133, size: 32, offset: 1184)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !804, file: !805, line: 55, baseType: !423, size: 64, offset: 1216)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !694, file: !59, line: 1990, baseType: !829, size: 64, offset: 960)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !637, !193, !195}
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 66, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !197, line: 73, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !197, line: 15, baseType: !792)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !694, file: !59, line: 1991, baseType: !836, size: 64, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!114, !677, !839, !423, !423}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !694, file: !59, line: 1993, baseType: !842, size: 64, offset: 1088)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!114, !677, !114}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !694, file: !59, line: 1994, baseType: !846, size: 64, offset: 1152)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!114, !677, !637, !796, !7, !681}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !694, file: !59, line: 1997, baseType: !850, size: 64, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!114, !717, !677, !796, !681}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !694, file: !59, line: 1999, baseType: !854, size: 64, offset: 1280)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!688, !717, !637, !114}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !694, file: !59, line: 2001, baseType: !858, size: 64, offset: 1344)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!114, !717, !637, !688, !114}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !694, file: !59, line: 2003, baseType: !862, size: 64, offset: 1408)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!114, !717, !637, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !694, file: !59, line: 2005, baseType: !868, size: 64, offset: 1472)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!114, !637, !865}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !694, file: !59, line: 2006, baseType: !872, size: 64, offset: 1536)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!875, !677}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !877)
!877 = !{!878, !885}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !876, file: !59, line: 3193, baseType: !879, size: 128)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !880, line: 296, size: 128, elements: !881)
!880 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !879, file: !880, line: 297, baseType: !305, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !879, file: !880, line: 299, baseType: !104, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !879, file: !880, line: 300, baseType: !103, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !876, file: !59, line: 3194, baseType: !133, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !678, file: !59, line: 655, baseType: !887, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !2287, !2419, !2459, !2542, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2559, !2563, !2564, !2567, !2570, !2573, !2576, !2577, !2578, !2619, !3868, !3869, !3870, !3871, !3872, !3873, !3876, !3878, !3885, !3886, !3887, !3888, !3947, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !888, file: !59, line: 1191, baseType: !148, size: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !888, file: !59, line: 1192, baseType: !752, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !888, file: !59, line: 1193, baseType: !241, size: 8, offset: 160)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !888, file: !59, line: 1194, baseType: !199, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !888, file: !59, line: 1195, baseType: !204, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !888, file: !59, line: 1196, baseType: !896, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !898)
!898 = !{!899, !900, !901, !908, !912, !916, !920, !2275, !2276, !2277, !2279, !2280, !2281, !2283, !2284, !2285, !2286}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !897, file: !59, line: 2367, baseType: !517, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !897, file: !59, line: 2368, baseType: !114, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !897, file: !59, line: 2376, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!114, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !907, line: 32, flags: DIFlagFwdDecl)
!907 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !897, file: !59, line: 2377, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !897, file: !59, line: 2378, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!637, !896, !114, !517, !103}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !897, file: !59, line: 2380, baseType: !917, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !887}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !59, line: 2381, baseType: !921, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !923)
!923 = !{!924, !925, !926, !930, !1931, !1957, !1958, !1959, !1960, !1964, !1967, !1968, !1969, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2037, !2041, !2061, !2079, !2080, !2081, !2082, !2091, !2114, !2115, !2118, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2132, !2133, !2233, !2241, !2242, !2243, !2245, !2249, !2250, !2254, !2255, !2256, !2257, !2259, !2260, !2261, !2268, !2269, !2270, !2274}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !922, file: !15, line: 403, baseType: !14, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !922, file: !15, line: 406, baseType: !148, size: 128, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !922, file: !15, line: 409, baseType: !927, size: 448, offset: 192)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 448, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 56)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !922, file: !15, line: 417, baseType: !931, size: 768, offset: 640)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !932)
!932 = !{!933, !1924, !1925, !1926, !1929}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !931, file: !15, line: 46, baseType: !934, size: 512)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !935, line: 64, size: 512, elements: !936)
!935 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!936 = !{!937, !938, !939, !941, !985, !1819, !1914, !1919, !1920, !1921, !1922, !1923}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !934, file: !935, line: 65, baseType: !517, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !934, file: !935, line: 66, baseType: !148, size: 128, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !934, file: !935, line: 67, baseType: !940, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !934, file: !935, line: 68, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !935, line: 168, size: 768, elements: !944)
!944 = !{!945, !946, !947, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !943, file: !935, line: 169, baseType: !148, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !943, file: !935, line: 170, baseType: !305, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !943, file: !935, line: 171, baseType: !934, size: 512, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !943, file: !935, line: 172, baseType: !949, size: 64, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !935, line: 133, size: 192, elements: !952)
!952 = !{!953, !960, !965}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !951, file: !935, line: 134, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!114, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !951, file: !935, line: 135, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!517, !958}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !951, file: !935, line: 136, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!114, !958, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !935, line: 125, size: 20736, elements: !972)
!972 = !{!973, !975, !979, !980, !984}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !971, file: !935, line: 126, baseType: !974, size: 192)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !342)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !971, file: !935, line: 127, baseType: !976, size: 4096, offset: 192)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 4096, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !971, file: !935, line: 128, baseType: !114, size: 32, offset: 4288)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !971, file: !935, line: 129, baseType: !981, size: 16384, offset: 4320)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 16384, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 2048)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !971, file: !935, line: 130, baseType: !114, size: 32, offset: 20704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !934, file: !935, line: 69, baseType: !986, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !935, line: 116, size: 384, elements: !989)
!989 = !{!990, !994, !1013, !1781, !1809, !1813}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !988, file: !935, line: 117, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !940}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !988, file: !935, line: 118, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !998, line: 254, size: 128, elements: !999)
!998 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!999 = !{!1000, !1009}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !997, file: !998, line: 255, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!832, !940, !1004, !193}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !998, line: 30, size: 128, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1005, file: !998, line: 31, baseType: !517, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1005, file: !998, line: 32, baseType: !681, size: 16, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !997, file: !998, line: 256, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!832, !940, !1004, !517, !195}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !988, file: !935, line: 119, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !998, line: 84, size: 320, elements: !1018)
!1018 = !{!1019, !1020, !1024, !1777, !1779}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1017, file: !998, line: 85, baseType: !517, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1017, file: !998, line: 86, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!681, !940, !1004, !114}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1017, file: !998, line: 88, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!681, !940, !1028, !114}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !998, line: 175, size: 512, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1768, !1772, !1773}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1029, file: !998, line: 176, baseType: !1005, size: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1029, file: !998, line: 177, baseType: !195, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1029, file: !998, line: 178, baseType: !103, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1029, file: !998, line: 179, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1054, !1055, !1056, !1760, !1761, !1762, !1765, !1766, !1767}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1039, file: !59, line: 473, baseType: !677, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1039, file: !59, line: 474, baseType: !879, size: 128, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1039, file: !59, line: 475, baseType: !455, size: 320, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1039, file: !59, line: 476, baseType: !104, size: 32, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1039, file: !59, line: 477, baseType: !128, size: 32, offset: 544)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1039, file: !59, line: 482, baseType: !1047, size: 128, offset: 576)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !448, line: 26, size: 128, elements: !1048)
!1048 = !{!1049, !1053}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1047, file: !448, line: 27, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !448, line: 12, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1050, file: !448, line: 13, baseType: !452, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1047, file: !448, line: 28, baseType: !452, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1039, file: !59, line: 483, baseType: !199, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1039, file: !59, line: 484, baseType: !199, size: 64, offset: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1039, file: !59, line: 485, baseType: !1057, size: 64, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !1060)
!1060 = !{!1061, !1530, !1600, !1604, !1608, !1614, !1620, !1624, !1629, !1633, !1637, !1641, !1724, !1728, !1732, !1736, !1741, !1745, !1752, !1756}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1059, file: !59, line: 405, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!114, !1065, !1528}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1067)
!1067 = !{!1068, !1069, !1522, !1527}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !30, line: 75, baseType: !199, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !30, line: 83, baseType: !1070, size: 320, offset: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !30, line: 83, size: 320, elements: !1071)
!1071 = !{!1072, !1093, !1107, !1111, !1521}
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !30, line: 84, baseType: !1073, size: 320)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !30, line: 84, size: 320, elements: !1074)
!1074 = !{!1075, !1086, !1087, !1092}
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !30, line: 90, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !30, line: 90, size: 128, elements: !1077)
!1077 = !{!1078, !1079, !1084, !1085}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1076, file: !30, line: 91, baseType: !148, size: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !30, line: 94, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !30, line: 94, size: 128, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1080, file: !30, line: 96, baseType: !103, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1080, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1076, file: !30, line: 102, baseType: !148, size: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1076, file: !30, line: 103, baseType: !148, size: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1073, file: !30, line: 106, baseType: !1038, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !30, line: 107, baseType: !1088, size: 64, offset: 192)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !30, line: 107, size: 64, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1088, file: !30, line: 108, baseType: !199, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1088, file: !30, line: 109, baseType: !199, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1073, file: !30, line: 117, baseType: !199, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !30, line: 119, baseType: !1094, size: 320)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !30, line: 119, size: 320, elements: !1095)
!1095 = !{!1096, !1097, !1100, !1101, !1102}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1094, file: !30, line: 124, baseType: !199, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1094, file: !30, line: 125, baseType: !1098, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1094, file: !30, line: 126, baseType: !199, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1094, file: !30, line: 127, baseType: !199, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !30, line: 128, baseType: !1103, size: 64, offset: 256)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !30, line: 128, size: 64, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1103, file: !30, line: 133, baseType: !199, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1103, file: !30, line: 138, baseType: !213, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !30, line: 141, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !30, line: 141, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1108, file: !30, line: 142, baseType: !199, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !30, line: 144, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !30, line: 144, size: 128, elements: !1113)
!1113 = !{!1114, !1520}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1112, file: !30, line: 146, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1117)
!1117 = !{!1118, !1128, !1149, !1160, !1161, !1162, !1163, !1502, !1503, !1504}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1116, file: !22, line: 127, baseType: !1119, size: 384)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1120)
!1120 = !{!1121, !1122, !1124, !1125, !1126, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1119, file: !22, line: 22, baseType: !199, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1119, file: !22, line: 23, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1119, file: !22, line: 24, baseType: !1123, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1119, file: !22, line: 25, baseType: !199, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1119, file: !22, line: 26, baseType: !199, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1119, file: !22, line: 27, baseType: !199, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1116, file: !22, line: 128, baseType: !1129, size: 128, offset: 384)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1130, line: 105, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1129, file: !1130, line: 110, baseType: !199, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1129, file: !1130, line: 118, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1130, line: 95, size: 448, elements: !1136)
!1136 = !{!1137, !1138, !1144, !1145, !1146, !1147, !1148}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1135, file: !1130, line: 96, baseType: !213, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1135, file: !1130, line: 97, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1130, line: 60, baseType: !1141)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1135, file: !1130, line: 98, baseType: !1139, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1135, file: !1130, line: 99, baseType: !514, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1135, file: !1130, line: 100, baseType: !514, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1135, file: !1130, line: 101, baseType: !295, size: 128, align: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1135, file: !1130, line: 102, baseType: !1143, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1116, file: !22, line: 129, baseType: !1150, size: 256, offset: 512)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1151, line: 26, size: 256, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1150, file: !1151, line: 27, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1150, file: !1151, line: 28, baseType: !1155, size: 192, offset: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1156, line: 43, size: 192, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1155, file: !1156, line: 44, baseType: !222, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1155, file: !1156, line: 45, baseType: !148, size: 128, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1116, file: !22, line: 132, baseType: !199, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1116, file: !22, line: 133, baseType: !1164, size: 64, offset: 896)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1167)
!1167 = !{!1168, !1172, !1498}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1166, file: !22, line: 83, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1065}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1166, file: !22, line: 89, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1179, line: 512, size: 896, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1180 = !{!1181, !1465, !1466, !1473, !1480, !1490, !1491, !1492, !1494, !1496}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1179, line: 513, baseType: !1182, size: 320)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1179, line: 513, size: 320, elements: !1183)
!1183 = !{!1184, !1461, !1462, !1463, !1464}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1182, file: !1179, line: 514, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1187)
!1187 = !{!1188, !1197, !1366, !1372, !1379, !1380, !1385, !1386, !1391, !1392, !1395, !1454, !1455, !1456, !1457, !1458, !1459}
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !30, line: 628, baseType: !1189, size: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !30, line: 628, size: 128, elements: !1190)
!1190 = !{!1191, !1196}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !30, line: 629, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !30, line: 629, size: 128, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1192, file: !30, line: 631, baseType: !199, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1192, file: !30, line: 632, baseType: !199, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1189, file: !30, line: 635, baseType: !295, size: 128, align: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1186, file: !30, line: 639, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1200)
!1200 = !{!1201, !1364}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !30, line: 734, baseType: !1202, size: 10240)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !30, line: 734, size: 10240, elements: !1203)
!1203 = !{!1204, !1208, !1222, !1226, !1227, !1228, !1229, !1230, !1231, !1240, !1241, !1242, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1281, !1283, !1286, !1333, !1334, !1335, !1338, !1339, !1340, !1343, !1344, !1345, !1351, !1352}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !30, line: 739, baseType: !1205, size: 512, align: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !30, line: 739, size: 512, align: 512, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1205, file: !30, line: 747, baseType: !128, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1202, file: !30, line: 750, baseType: !1209, size: 128, offset: 512)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1210, line: 218, size: 128, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1211 = !{!1212, !1220, !1221}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1210, line: 219, baseType: !1213, size: 32)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 219, size: 32, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1213, file: !1210, line: 220, baseType: !305, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1213, file: !1210, line: 221, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1210, line: 197, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 197, elements: !1219)
!1219 = !{}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1209, file: !1210, line: 223, baseType: !7, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1209, file: !1210, line: 224, baseType: !103, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1202, file: !30, line: 752, baseType: !1223, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!199, !796, !199, !199, !199, !199}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1202, file: !30, line: 756, baseType: !199, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1202, file: !30, line: 757, baseType: !199, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1202, file: !30, line: 760, baseType: !199, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1202, file: !30, line: 761, baseType: !199, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1202, file: !30, line: 763, baseType: !199, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1202, file: !30, line: 764, baseType: !1232, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1234, line: 299, baseType: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1234, line: 299, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1235, file: !1234, line: 299, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1239, line: 18, baseType: !199)
!1239 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1202, file: !30, line: 773, baseType: !128, size: 32, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1202, file: !30, line: 785, baseType: !128, size: 32, offset: 1120)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1202, file: !30, line: 795, baseType: !1243, size: 64, offset: 1152)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1244, file: !30, line: 727, baseType: !423, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1244, file: !30, line: 728, baseType: !114, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1202, file: !30, line: 801, baseType: !199, size: 64, offset: 1216)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1202, file: !30, line: 804, baseType: !213, size: 64, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1202, file: !30, line: 806, baseType: !114, size: 32, offset: 1344)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1202, file: !30, line: 808, baseType: !305, size: 32, offset: 1376)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1202, file: !30, line: 823, baseType: !455, size: 320, offset: 1408)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1202, file: !30, line: 825, baseType: !148, size: 128, offset: 1728)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1202, file: !30, line: 845, baseType: !114, size: 32, offset: 1856)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1202, file: !30, line: 849, baseType: !199, size: 64, offset: 1920)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1202, file: !30, line: 850, baseType: !199, size: 64, offset: 1984)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1202, file: !30, line: 852, baseType: !199, size: 64, offset: 2048)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1202, file: !30, line: 853, baseType: !199, size: 64, offset: 2112)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1202, file: !30, line: 854, baseType: !215, size: 64, offset: 2176)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1202, file: !30, line: 855, baseType: !199, size: 64, offset: 2240)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1202, file: !30, line: 856, baseType: !199, size: 64, offset: 2304)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1202, file: !30, line: 857, baseType: !199, size: 64, offset: 2368)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1202, file: !30, line: 858, baseType: !199, size: 64, offset: 2432)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1202, file: !30, line: 865, baseType: !648, size: 32, offset: 2496)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1202, file: !30, line: 867, baseType: !305, size: 32, offset: 2528)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1202, file: !30, line: 869, baseType: !199, size: 64, offset: 2560)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1202, file: !30, line: 869, baseType: !199, size: 64, offset: 2624)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1202, file: !30, line: 869, baseType: !199, size: 64, offset: 2688)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1202, file: !30, line: 869, baseType: !199, size: 64, offset: 2752)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1202, file: !30, line: 870, baseType: !199, size: 64, offset: 2816)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1202, file: !30, line: 870, baseType: !199, size: 64, offset: 2880)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1202, file: !30, line: 870, baseType: !199, size: 64, offset: 2944)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1202, file: !30, line: 871, baseType: !199, size: 64, offset: 3008)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1202, file: !30, line: 871, baseType: !199, size: 64, offset: 3072)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1202, file: !30, line: 871, baseType: !199, size: 64, offset: 3136)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1202, file: !30, line: 871, baseType: !199, size: 64, offset: 3200)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1202, file: !30, line: 873, baseType: !1278, size: 3328, offset: 3264)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 3328, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 52)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1202, file: !30, line: 875, baseType: !1282, size: 1280, offset: 6592)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 1280, elements: !363)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1202, file: !30, line: 877, baseType: !1284, size: 64, offset: 7872)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1202, file: !30, line: 880, baseType: !1287, size: 1088, offset: 7936)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1288, line: 72, baseType: !1289)
!1288 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 23, size: 1088, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1298, !1299, !1300, !1301, !1328, !1329, !1330}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1289, file: !1288, line: 28, baseType: !423, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1289, file: !1288, line: 38, baseType: !215, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1289, file: !1288, line: 40, baseType: !199, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1289, file: !1288, line: 43, baseType: !455, size: 320, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1289, file: !1288, line: 44, baseType: !1296, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1288, line: 44, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !1288, line: 48, baseType: !199, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1289, file: !1288, line: 59, baseType: !209, size: 256, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1289, file: !1288, line: 60, baseType: !103, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1289, file: !1288, line: 61, baseType: !1302, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1305, line: 13, size: 1216, elements: !1306)
!1305 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1304, file: !1305, line: 14, baseType: !103, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1304, file: !1305, line: 15, baseType: !199, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1304, file: !1305, line: 17, baseType: !199, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1304, file: !1305, line: 17, baseType: !199, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1304, file: !1305, line: 18, baseType: !199, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1304, file: !1305, line: 18, baseType: !199, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1304, file: !1305, line: 19, baseType: !1314, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1304, file: !1305, line: 21, baseType: !792, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1304, file: !1305, line: 23, baseType: !792, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1304, file: !1305, line: 24, baseType: !792, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1304, file: !1305, line: 25, baseType: !792, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1304, file: !1305, line: 26, baseType: !792, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1304, file: !1305, line: 27, baseType: !792, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1304, file: !1305, line: 28, baseType: !792, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1304, file: !1305, line: 29, baseType: !792, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1304, file: !1305, line: 30, baseType: !792, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1304, file: !1305, line: 31, baseType: !792, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1304, file: !1305, line: 32, baseType: !792, size: 64, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1304, file: !1305, line: 33, baseType: !792, size: 64, offset: 1152)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1289, file: !1288, line: 63, baseType: !128, size: 32, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1289, file: !1288, line: 69, baseType: !247, size: 16, offset: 1056)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1289, file: !1288, line: 70, baseType: !1331, size: 16, offset: 1072)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !483)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !30, line: 882, baseType: !199, size: 64, offset: 9024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1202, file: !30, line: 885, baseType: !305, size: 32, offset: 9088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1202, file: !30, line: 886, baseType: !1336, size: 64, offset: 9152)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1202, file: !30, line: 901, baseType: !599, size: 64, offset: 9216)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1202, file: !30, line: 904, baseType: !796, size: 64, offset: 9280)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1202, file: !30, line: 906, baseType: !1341, size: 64, offset: 9344)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1202, file: !30, line: 930, baseType: !128, size: 32, offset: 9408)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1202, file: !30, line: 933, baseType: !128, size: 32, offset: 9440)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1202, file: !30, line: 935, baseType: !1346, size: 64, offset: 9472)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1346, file: !81, line: 104, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1202, file: !30, line: 940, baseType: !213, size: 64, offset: 9536)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1202, file: !30, line: 942, baseType: !1353, size: 256, offset: 9600)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1354, line: 98, size: 256, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1353, file: !1354, line: 99, baseType: !213, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1353, file: !1354, line: 100, baseType: !148, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1353, file: !1354, line: 101, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1354, line: 21, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1363}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1199, file: !30, line: 986, baseType: !1365, offset: 10240)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !382)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1186, file: !30, line: 640, baseType: !1367, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1234, line: 297, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1234, line: 297, size: 64, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1368, file: !1234, line: 297, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1239, line: 19, baseType: !199)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !30, line: 646, baseType: !1373, size: 64, offset: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !30, line: 646, size: 64, elements: !1374)
!1374 = !{!1375, !1378}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1373, file: !30, line: 647, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !199)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1373, file: !30, line: 648, baseType: !1377, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1186, file: !30, line: 666, baseType: !114, size: 32, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1186, file: !30, line: 667, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !30, line: 580, baseType: !455, size: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1186, file: !30, line: 670, baseType: !514, size: 8, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1186, file: !30, line: 681, baseType: !1387, size: 256, offset: 512)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !30, line: 678, size: 256, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1387, file: !30, line: 679, baseType: !447, size: 192, align: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1387, file: !30, line: 680, baseType: !199, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1186, file: !30, line: 689, baseType: !148, size: 128, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1186, file: !30, line: 691, baseType: !1393, size: 64, offset: 896)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1186, file: !30, line: 694, baseType: !1396, size: 64, offset: 960)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1179, line: 563, size: 1024, elements: !1399)
!1399 = !{!1400, !1404, !1405, !1409, !1413, !1417, !1418, !1422, !1426, !1430, !1431, !1432, !1436, !1440, !1446, !1450}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1398, file: !1179, line: 564, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !1185}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1398, file: !1179, line: 569, baseType: !1401, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1398, file: !1179, line: 571, baseType: !1406, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!114, !1185, !199}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1398, file: !1179, line: 572, baseType: !1410, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!114, !1185}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1398, file: !1179, line: 578, baseType: !1414, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!114, !1185, !199, !199, !199}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1398, file: !1179, line: 580, baseType: !1173, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1398, file: !1179, line: 581, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1176, !1177, !7}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1398, file: !1179, line: 582, baseType: !1423, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1176, !1177, !199, !199}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1398, file: !1179, line: 584, baseType: !1427, size: 64, offset: 512)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!199, !1185}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1398, file: !1179, line: 588, baseType: !1173, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1398, file: !1179, line: 591, baseType: !1173, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1398, file: !1179, line: 597, baseType: !1433, size: 64, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!114, !1185, !199, !103, !114, !114}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1398, file: !1179, line: 603, baseType: !1437, size: 64, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!517, !1185}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1398, file: !1179, line: 613, baseType: !1441, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!114, !1185, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1398, file: !1179, line: 625, baseType: !1447, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1444, !1185, !199}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1398, file: !1179, line: 633, baseType: !1451, size: 64, offset: 960)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1065, !1185, !199}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1186, file: !30, line: 697, baseType: !199, size: 64, offset: 1024)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1186, file: !30, line: 699, baseType: !796, size: 64, offset: 1088)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1186, file: !30, line: 700, baseType: !103, size: 64, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1186, file: !30, line: 711, baseType: !213, size: 64, offset: 1216)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1186, file: !30, line: 717, baseType: !1444, size: 64, offset: 1280)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1186, file: !30, line: 722, baseType: !1460, offset: 1344)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !1219)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1182, file: !1179, line: 515, baseType: !104, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1182, file: !1179, line: 516, baseType: !199, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1182, file: !1179, line: 517, baseType: !199, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1182, file: !1179, line: 518, baseType: !199, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !1179, line: 520, baseType: !29, size: 32, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1178, file: !1179, line: 522, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1239, line: 22, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 22, size: 64, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1469, file: !1239, line: 22, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1239, line: 15, baseType: !199)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1178, file: !1179, line: 524, baseType: !1474, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1234, line: 372, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1234, line: 372, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1476, file: !1234, line: 372, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1239, line: 16, baseType: !199)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1179, line: 527, baseType: !1481, size: 64, offset: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1179, line: 527, size: 64, elements: !1482)
!1482 = !{!1483, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1481, file: !1179, line: 528, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1239, line: 21, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 21, size: 64, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1485, file: !1239, line: 21, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1239, line: 14, baseType: !199)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1481, file: !1179, line: 529, baseType: !1468, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1178, file: !1179, line: 534, baseType: !1065, size: 64, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1178, file: !1179, line: 535, baseType: !1065, size: 64, offset: 640)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1178, file: !1179, line: 541, baseType: !1493, size: 64, offset: 704)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1178, file: !1179, line: 545, baseType: !1495, size: 64, offset: 768)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1178, file: !1179, line: 549, baseType: !1497, size: 64, offset: 832)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1234, line: 520, baseType: !1065)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1166, file: !22, line: 100, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!114, !1115, !199, !199, !114}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1116, file: !22, line: 134, baseType: !103, size: 64, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1116, file: !22, line: 135, baseType: !114, size: 32, offset: 1024)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !22, line: 136, baseType: !1505, size: 128, offset: 1088)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !22, line: 136, size: 128, elements: !1506)
!1506 = !{!1507, !1513}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1505, file: !22, line: 137, baseType: !1508, size: 128)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1509, line: 6, size: 128, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1508, file: !1509, line: 7, baseType: !423, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1508, file: !1509, line: 8, baseType: !423, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !22, line: 138, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1505, file: !22, line: 138, elements: !1515)
!1515 = !{!1516, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1514, file: !22, line: 138, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !22, line: 138, elements: !1219)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1514, file: !22, line: 138, baseType: !1519)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1508, elements: !382)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1112, file: !30, line: 147, baseType: !103, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1070, file: !30, line: 161, baseType: !295, size: 128, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !30, line: 164, baseType: !1523, size: 32, offset: 384)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !30, line: 164, size: 32, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1523, file: !30, line: 169, baseType: !128, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1523, file: !30, line: 177, baseType: !7, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1066, file: !30, line: 181, baseType: !128, size: 32, offset: 416)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1059, file: !59, line: 406, baseType: !1531, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!114, !796, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1536)
!1536 = !{!1537, !1567, !1581}
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !30, line: 295, baseType: !1538, size: 512)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !30, line: 295, size: 512, elements: !1539)
!1539 = !{!1540, !1566}
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !30, line: 296, baseType: !1541, size: 448)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !30, line: 296, size: 448, elements: !1542)
!1542 = !{!1543, !1544, !1553, !1554, !1555, !1564, !1565}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1541, file: !30, line: 298, baseType: !199, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !30, line: 299, baseType: !1545, size: 128, offset: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !30, line: 299, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1545, file: !30, line: 300, baseType: !148, size: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !30, line: 302, baseType: !1549, size: 128)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !30, line: 302, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1549, file: !30, line: 303, baseType: !103, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1549, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1541, file: !30, line: 310, baseType: !1038, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1541, file: !30, line: 311, baseType: !199, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !30, line: 312, baseType: !1556, size: 64, offset: 320)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !30, line: 312, size: 64, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1556, file: !30, line: 313, baseType: !103, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1556, file: !30, line: 314, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1561, file: !30, line: 256, baseType: !199, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1541, file: !30, line: 316, baseType: !128, size: 32, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1541, file: !30, line: 317, baseType: !128, size: 32, offset: 416)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1538, file: !30, line: 323, baseType: !1066, size: 512, align: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !30, line: 325, baseType: !1568, size: 512, offset: 512)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !30, line: 325, size: 512, elements: !1569)
!1569 = !{!1570, !1580}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !30, line: 326, baseType: !1571, size: 320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !30, line: 326, size: 320, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1571, file: !30, line: 327, baseType: !199, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1571, file: !30, line: 328, baseType: !199, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1571, file: !30, line: 329, baseType: !199, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1571, file: !30, line: 331, baseType: !128, size: 32, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1571, file: !30, line: 332, baseType: !128, size: 32, offset: 224)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1571, file: !30, line: 333, baseType: !128, size: 32, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1571, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1568, file: !30, line: 339, baseType: !1066, size: 512, align: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !30, line: 341, baseType: !1582, size: 512, offset: 1024)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !30, line: 341, size: 512, elements: !1583)
!1583 = !{!1584, !1593, !1599}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !30, line: 342, baseType: !1585, size: 384)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !30, line: 342, size: 384, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1585, file: !30, line: 343, baseType: !199, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1585, file: !30, line: 344, baseType: !199, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1585, file: !30, line: 346, baseType: !103, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1585, file: !30, line: 347, baseType: !103, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1585, file: !30, line: 348, baseType: !103, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1585, file: !30, line: 349, baseType: !103, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !30, line: 352, baseType: !1594, size: 256)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !30, line: 352, size: 256, elements: !1595)
!1595 = !{!1596, !1597, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1594, file: !30, line: 353, baseType: !199, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1594, file: !30, line: 354, baseType: !199, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1594, file: !30, line: 356, baseType: !148, size: 128, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1582, file: !30, line: 359, baseType: !1066, size: 512, align: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1059, file: !59, line: 409, baseType: !1601, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!114, !1038, !1528}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1059, file: !59, line: 412, baseType: !1605, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!514, !1038, !1534}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1059, file: !59, line: 414, baseType: !1609, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1059, file: !59, line: 416, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!114, !796, !1038, !204, !7, !1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1059, file: !59, line: 419, baseType: !1621, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!114, !796, !1038, !204, !7, !7, !1065, !103}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1059, file: !59, line: 424, baseType: !1625, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!1628, !1038, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !105, line: 131, baseType: !423)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1059, file: !59, line: 425, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1534, !195, !195}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1059, file: !59, line: 426, baseType: !1634, size: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!514, !1534, !104}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1059, file: !59, line: 427, baseType: !1638, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !1534}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1059, file: !59, line: 428, baseType: !1642, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!832, !1645, !1667}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1654, !1655, !1656, !1657}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1646, file: !59, line: 374, baseType: !796, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1646, file: !59, line: 375, baseType: !204, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1646, file: !59, line: 376, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1645, !792}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1646, file: !59, line: 377, baseType: !103, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1646, file: !59, line: 378, baseType: !114, size: 32, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1646, file: !59, line: 379, baseType: !247, size: 16, offset: 288)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !59, line: 380, baseType: !1658, size: 64, offset: 320)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !59, line: 380, size: 64, elements: !1659)
!1659 = !{!1660, !1663}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1658, file: !59, line: 386, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1658, file: !59, line: 395, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!832, !103}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1669, line: 41, size: 320, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1681, !1719}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1668, file: !1669, line: 42, baseType: !239, size: 8)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1668, file: !1669, line: 43, baseType: !514, size: 8, offset: 8)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1668, file: !1669, line: 44, baseType: !514, size: 8, offset: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1668, file: !1669, line: 45, baseType: !514, size: 8, offset: 24)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1668, file: !1669, line: 46, baseType: !514, size: 8, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1669, line: 47, baseType: !1677, size: 64, offset: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !1669, line: 47, size: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1677, file: !1669, line: 48, baseType: !195, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1677, file: !1669, line: 49, baseType: !114, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1669, line: 61, baseType: !1682, size: 128, offset: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !1669, line: 61, size: 128, elements: !1683)
!1683 = !{!1684, !1690}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1682, file: !1669, line: 67, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1686, line: 17, size: 128, elements: !1687)
!1686 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1685, file: !1686, line: 19, baseType: !103, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1685, file: !1686, line: 20, baseType: !196, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1669, line: 68, baseType: !1691, size: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1669, line: 68, size: 128, elements: !1692)
!1692 = !{!1693, !1718}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1669, line: 69, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1669, line: 69, size: 64, elements: !1695)
!1695 = !{!1696, !1699, !1706, !1715, !1717}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1694, file: !1669, line: 71, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1694, file: !1669, line: 72, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1669, line: 17, size: 128, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1702, file: !1669, line: 18, baseType: !103, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1702, file: !1669, line: 19, baseType: !195, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1694, file: !1669, line: 73, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1710, line: 31, size: 128, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1709, file: !1710, line: 32, baseType: !1065, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1709, file: !1710, line: 33, baseType: !7, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1709, file: !1710, line: 34, baseType: !7, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1694, file: !1669, line: 74, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1694, file: !1669, line: 75, baseType: !103, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1691, file: !1669, line: 77, baseType: !195, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1669, line: 80, baseType: !1720, size: 64, offset: 256)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !1669, line: 80, size: 64, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1720, file: !1669, line: 81, baseType: !199, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1720, file: !1669, line: 82, baseType: !204, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1059, file: !59, line: 433, baseType: !1725, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!114, !1038, !1534, !1534, !45}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1059, file: !59, line: 435, baseType: !1729, size: 64, offset: 832)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!114, !1534}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1059, file: !59, line: 436, baseType: !1733, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!514, !1534, !195, !195}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1059, file: !59, line: 438, baseType: !1737, size: 64, offset: 960)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1534, !1740, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1059, file: !59, line: 439, baseType: !1742, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!114, !1038, !1065}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1059, file: !59, line: 442, baseType: !1746, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!114, !1749, !796, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1059, file: !59, line: 444, baseType: !1753, size: 64, offset: 1152)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !796}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1059, file: !59, line: 445, baseType: !1757, size: 64, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!114, !1645, !1667}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1039, file: !59, line: 486, baseType: !199, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1039, file: !59, line: 487, baseType: !455, size: 320, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1039, file: !59, line: 488, baseType: !1763, size: 32, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1764, line: 8, baseType: !133)
!1764 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1039, file: !59, line: 489, baseType: !305, size: 32, offset: 1312)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1039, file: !59, line: 490, baseType: !148, size: 128, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1039, file: !59, line: 491, baseType: !103, size: 64, offset: 1472)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1029, file: !998, line: 180, baseType: !1769, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!832, !796, !940, !1028, !193, !204, !195}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1029, file: !998, line: 182, baseType: !1769, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1029, file: !998, line: 184, baseType: !1774, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!114, !796, !940, !1028, !1185}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1017, file: !998, line: 90, baseType: !1778, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1017, file: !998, line: 91, baseType: !1780, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !988, file: !935, line: 120, baseType: !1782, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1785, !958}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1788)
!1788 = !{!1789, !1790, !1794, !1798, !1804, !1808}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !53, line: 40, baseType: !52, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1787, file: !53, line: 41, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!514}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1787, file: !53, line: 42, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!103}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1787, file: !53, line: 43, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!1314, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1787, file: !53, line: 44, baseType: !1805, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!1314}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1787, file: !53, line: 45, baseType: !709, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !988, file: !935, line: 121, baseType: !1810, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1314, !958}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !988, file: !935, line: 122, baseType: !1814, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !958, !1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !934, file: !935, line: 70, baseType: !1820, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !907, line: 190, size: 1152, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1906, !1907, !1908, !1909, !1910, !1913}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1821, file: !907, line: 191, baseType: !128, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1821, file: !907, line: 192, baseType: !128, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1821, file: !907, line: 202, baseType: !1820, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1821, file: !907, line: 203, baseType: !517, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1821, file: !907, line: 205, baseType: !447, size: 192, align: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1821, file: !907, line: 207, baseType: !1314, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1821, file: !907, line: 208, baseType: !7, size: 32, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !907, line: 209, baseType: !1831, size: 256, offset: 512)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !907, line: 209, size: 256, elements: !1832)
!1832 = !{!1833, !1842, !1846}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1831, file: !907, line: 210, baseType: !1834, size: 256)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !907, line: 153, size: 256, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1841}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1834, file: !907, line: 154, baseType: !199, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1834, file: !907, line: 156, baseType: !1050, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1834, file: !907, line: 162, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !907, line: 162, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1834, file: !907, line: 167, baseType: !199, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1831, file: !907, line: 211, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !907, line: 170, size: 64, elements: !1844)
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1843, file: !907, line: 171, baseType: !1820, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1831, file: !907, line: 212, baseType: !1847, size: 256)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !907, line: 174, size: 256, elements: !1848)
!1848 = !{!1849, !1901, !1904, !1905}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1847, file: !907, line: 175, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !907, line: 271, size: 768, elements: !1853)
!1853 = !{!1854, !1874, !1878, !1879, !1880, !1881, !1882, !1886, !1887, !1888, !1889, !1897}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1852, file: !907, line: 276, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!114, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !907, line: 251, size: 1216, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1859, file: !907, line: 253, baseType: !1820, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1859, file: !907, line: 254, baseType: !796, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1859, file: !907, line: 255, baseType: !188, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1859, file: !907, line: 256, baseType: !103, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1859, file: !907, line: 259, baseType: !209, size: 256, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1859, file: !907, line: 260, baseType: !209, size: 256, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1859, file: !907, line: 261, baseType: !114, size: 32, offset: 768)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1859, file: !907, line: 262, baseType: !148, size: 128, offset: 832)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1859, file: !907, line: 263, baseType: !193, size: 64, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1859, file: !907, line: 265, baseType: !195, size: 64, offset: 1024)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1859, file: !907, line: 266, baseType: !514, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1859, file: !907, line: 267, baseType: !514, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1859, file: !907, line: 268, baseType: !1396, size: 64, offset: 1152)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1852, file: !907, line: 277, baseType: !1875, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1858}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1852, file: !907, line: 290, baseType: !276, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1852, file: !907, line: 292, baseType: !263, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1852, file: !907, line: 293, baseType: !272, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1852, file: !907, line: 294, baseType: !268, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1852, file: !907, line: 296, baseType: !1883, size: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!832, !1858, !193, !195, !204}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1852, file: !907, line: 306, baseType: !195, size: 64, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1852, file: !907, line: 313, baseType: !514, size: 8, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1852, file: !907, line: 314, baseType: !1883, size: 64, offset: 576)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1852, file: !907, line: 317, baseType: !1890, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1893, !1858, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1894, line: 59, baseType: !7)
!1894 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !907, line: 31, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1852, file: !907, line: 320, baseType: !1898, size: 64, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!114, !1858, !1185}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1847, file: !907, line: 176, baseType: !1902, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !907, line: 35, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1847, file: !907, line: 177, baseType: !204, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1847, file: !907, line: 178, baseType: !1820, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1821, file: !907, line: 215, baseType: !103, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1821, file: !907, line: 221, baseType: !423, size: 64, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1821, file: !907, line: 223, baseType: !249, size: 16, offset: 896)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1821, file: !907, line: 224, baseType: !681, size: 16, offset: 912)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1821, file: !907, line: 225, baseType: !1911, size: 64, offset: 960)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !907, line: 36, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1821, file: !907, line: 227, baseType: !295, size: 128, align: 64, offset: 1024)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !934, file: !935, line: 71, baseType: !1915, size: 32, offset: 448)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1916, line: 19, size: 32, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1917 = !{!1918}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1915, file: !1916, line: 20, baseType: !123, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !934, file: !935, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !934, file: !935, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !934, file: !935, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !934, file: !935, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !934, file: !935, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !931, file: !15, line: 47, baseType: !921, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !931, file: !15, line: 48, baseType: !940, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !931, file: !15, line: 49, baseType: !1927, size: 64, offset: 640)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !931, file: !15, line: 50, baseType: !1930, size: 64, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !922, file: !15, line: 418, baseType: !1932, size: 64, offset: 1408)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1934)
!1934 = !{!1935, !1936, !1941, !1945, !1949, !1953}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1933, file: !15, line: 54, baseType: !1005, size: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1933, file: !15, line: 55, baseType: !1937, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!832, !1932, !1940, !193}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1933, file: !15, line: 57, baseType: !1942, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!832, !1932, !1940, !517, !195}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1933, file: !15, line: 59, baseType: !1946, size: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !921, !517}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1933, file: !15, line: 60, baseType: !1950, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!114, !921}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1933, file: !15, line: 61, baseType: !1954, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !921}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !922, file: !15, line: 419, baseType: !517, size: 64, offset: 1472)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !922, file: !15, line: 420, baseType: !517, size: 64, offset: 1536)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !922, file: !15, line: 421, baseType: !940, size: 64, offset: 1600)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !922, file: !15, line: 424, baseType: !1961, size: 64, offset: 1664)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1963)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !922, file: !15, line: 425, baseType: !1965, size: 64, offset: 1728)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !922, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !922, file: !15, line: 435, baseType: !209, size: 256, offset: 1856)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !922, file: !15, line: 437, baseType: !1970, size: 64, offset: 2112)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1972, line: 69, size: 320, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1973 = !{!1974, !1975, !1976, !1993, !1995, !1999, !2000}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1971, file: !1972, line: 70, baseType: !517, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1971, file: !1972, line: 71, baseType: !921, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1971, file: !1972, line: 72, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1972, line: 47, size: 256, elements: !1980)
!1980 = !{!1981, !1982, !1988, !1992}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1979, file: !1972, line: 49, baseType: !7, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1979, file: !1972, line: 51, baseType: !1983, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!114, !517, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1979, file: !1972, line: 53, baseType: !1989, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!114, !193, !1986}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1979, file: !1972, line: 55, baseType: !709, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1971, file: !1972, line: 73, baseType: !1994, size: 16, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1971, file: !1972, line: 74, baseType: !1996, size: 8, offset: 208)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !134, line: 16, baseType: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !136, line: 20, baseType: !1998)
!1998 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1971, file: !1972, line: 75, baseType: !239, size: 8, offset: 216)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1972, line: 76, baseType: !2001, size: 64, offset: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !1972, line: 76, size: 64, elements: !2002)
!2002 = !{!2003, !2004, !2011}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2001, file: !1972, line: 77, baseType: !103, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2001, file: !1972, line: 78, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1972, line: 86, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2007, file: !1972, line: 87, baseType: !7, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2007, file: !1972, line: 88, baseType: !193, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2001, file: !1972, line: 79, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1972, line: 92, size: 256, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2020, !2021}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2014, file: !1972, line: 94, baseType: !7, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2014, file: !1972, line: 95, baseType: !7, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2014, file: !1972, line: 96, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2014, file: !1972, line: 97, baseType: !1977, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2014, file: !1972, line: 98, baseType: !103, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !922, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !922, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !922, file: !15, line: 442, baseType: !1961, size: 64, offset: 2240)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !922, file: !15, line: 443, baseType: !1965, size: 64, offset: 2304)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !922, file: !15, line: 444, baseType: !514, size: 8, offset: 2368)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !922, file: !15, line: 451, baseType: !514, size: 8, offset: 2376)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !922, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !922, file: !15, line: 455, baseType: !2030, size: 64, offset: 2432)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2032, line: 23, size: 96, elements: !2033)
!2032 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2031, file: !2032, line: 24, baseType: !114, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2031, file: !2032, line: 24, baseType: !114, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2031, file: !2032, line: 24, baseType: !114, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !922, file: !15, line: 458, baseType: !2038, size: 64, offset: 2496)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!114}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !922, file: !15, line: 460, baseType: !2042, size: 4032, align: 512, offset: 2560)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 4032, elements: !2059)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2044)
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2043, file: !15, line: 363, baseType: !103, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2043, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2043, file: !15, line: 367, baseType: !2048, size: 448, offset: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2048, file: !15, line: 320, baseType: !921, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2048, file: !15, line: 321, baseType: !2052, size: 384, offset: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2053, line: 40, size: 384, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2052, file: !2053, line: 41, baseType: !2056, size: 384, align: 64)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 384, align: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 2)
!2059 = !{!2060}
!2060 = !DISubrange(count: 7)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !922, file: !15, line: 463, baseType: !2062, size: 192, offset: 6592)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2063, line: 8, size: 192, elements: !2064)
!2063 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2064 = !{!2065, !2066, !2068}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2062, file: !2063, line: 10, baseType: !7, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2062, file: !2063, line: 11, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2062, file: !2063, line: 12, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2071, line: 59, size: 48, elements: !2072)
!2071 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2070, file: !2071, line: 60, baseType: !1331, size: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2070, file: !2071, line: 61, baseType: !1331, size: 16, offset: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2070, file: !2071, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2070, file: !2071, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2070, file: !2071, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2070, file: !2071, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !922, file: !15, line: 465, baseType: !199, size: 64, offset: 6784)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !922, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !922, file: !15, line: 470, baseType: !148, size: 128, offset: 6912)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !922, file: !15, line: 471, baseType: !2083, size: 64, offset: 7040)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2085, line: 33, size: 96, elements: !2086)
!2085 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2086 = !{!2087, !2088, !2089, !2090}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2084, file: !2085, line: 37, baseType: !114, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2084, file: !2085, line: 43, baseType: !114, size: 32, offset: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2084, file: !2085, line: 45, baseType: !249, size: 16, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !2085, line: 47, baseType: !249, size: 16, offset: 80)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !922, file: !15, line: 476, baseType: !2092, size: 64, offset: 7104)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2094)
!2094 = !{!2095, !2111, !2112, !2113}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2093, file: !15, line: 379, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2098, line: 204, baseType: !2099)
!2098 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2098, line: 197, size: 192, elements: !2100)
!2100 = !{!2101, !2103, !2104, !2105, !2107, !2109}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2099, file: !2098, line: 198, baseType: !2102, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2098, line: 21, baseType: !135)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2099, file: !2098, line: 199, baseType: !241, size: 8, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2099, file: !2098, line: 200, baseType: !241, size: 8, offset: 40)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2099, file: !2098, line: 201, baseType: !2106, size: 16, offset: 48)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2098, line: 17, baseType: !248)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2099, file: !2098, line: 202, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2098, line: 16, baseType: !424)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2099, file: !2098, line: 203, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2098, line: 22, baseType: !424)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2093, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2093, file: !15, line: 381, baseType: !193, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2093, file: !15, line: 382, baseType: !193, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !922, file: !15, line: 477, baseType: !2093, size: 256, offset: 7168)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !922, file: !15, line: 480, baseType: !2116, size: 64, offset: 7424)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !922, file: !15, line: 483, baseType: !2119, size: 64, offset: 7488)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !922, file: !15, line: 488, baseType: !193, size: 64, offset: 7552)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !922, file: !15, line: 492, baseType: !103, size: 64, offset: 7616)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !922, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !922, file: !15, line: 495, baseType: !103, size: 64, offset: 7744)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !922, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !922, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !922, file: !15, line: 500, baseType: !2128, size: 64, offset: 7872)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2130, line: 45, baseType: !2131)
!2130 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !922, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !922, file: !15, line: 504, baseType: !2134, size: 64, offset: 8000)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2137, line: 96, size: 192, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2138 = !{!2139, !2140, !2194, !2197}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2136, file: !2137, line: 97, baseType: !7, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2136, file: !2137, line: 98, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2137, line: 24, size: 3072, elements: !2143)
!2143 = !{!2144, !2146, !2147, !2148, !2149, !2163, !2164, !2165, !2166, !2178, !2179, !2180, !2191, !2192, !2193}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2142, file: !2137, line: 26, baseType: !2145, size: 128)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !2057)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2142, file: !2137, line: 27, baseType: !2145, size: 128, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2142, file: !2137, line: 28, baseType: !114, size: 32, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2142, file: !2137, line: 31, baseType: !305, size: 32, align: 512, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2142, file: !2137, line: 32, baseType: !2150, size: 960, offset: 576)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2151, line: 206, size: 960, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2152 = !{!2153, !2154, !2157, !2159, !2160, !2162}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2150, file: !2151, line: 207, baseType: !298, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2150, file: !2151, line: 208, baseType: !2155, size: 256, offset: 64)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2156, size: 256, elements: !363)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2150, file: !2151, line: 209, baseType: !2158, size: 256, offset: 320)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !363)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2150, file: !2151, line: 213, baseType: !792, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2150, file: !2151, line: 215, baseType: !2161, size: 256, offset: 640)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 256, elements: !363)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2151, line: 216, baseType: !239, size: 8, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2142, file: !2137, line: 33, baseType: !199, size: 64, offset: 1536)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2142, file: !2137, line: 34, baseType: !199, size: 64, offset: 1600)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2142, file: !2137, line: 35, baseType: !514, size: 8, offset: 1664)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2142, file: !2137, line: 36, baseType: !2167, size: 320, offset: 1728)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2168, line: 11, size: 320, elements: !2169)
!2168 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2169 = !{!2170, !2171, !2172, !2177}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2167, file: !2168, line: 16, baseType: !358, size: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2167, file: !2168, line: 17, baseType: !199, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2167, file: !2168, line: 18, baseType: !2173, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2167, file: !2168, line: 19, baseType: !133, size: 32, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2142, file: !2137, line: 37, baseType: !1353, size: 256, offset: 2048)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2142, file: !2137, line: 38, baseType: !295, size: 128, align: 64, offset: 2304)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2142, file: !2137, line: 39, baseType: !2181, size: 64, offset: 2432)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2137, line: 49, size: 768, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2182, file: !2137, line: 50, baseType: !305, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2182, file: !2137, line: 51, baseType: !2158, size: 256, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2182, file: !2137, line: 53, baseType: !2158, size: 256, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2182, file: !2137, line: 54, baseType: !199, size: 64, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2182, file: !2137, line: 55, baseType: !2181, size: 64, offset: 640)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2182, file: !2137, line: 56, baseType: !114, size: 32, offset: 704)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2182, file: !2137, line: 57, baseType: !114, size: 32, offset: 736)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2142, file: !2137, line: 40, baseType: !199, size: 64, offset: 2496)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2142, file: !2137, line: 42, baseType: !114, size: 32, offset: 2560)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2142, file: !2137, line: 43, baseType: !2135, size: 64, offset: 2624)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2136, file: !2137, line: 99, baseType: !2195, offset: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2196, line: 211, elements: !1219)
!2196 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2136, file: !2137, line: 100, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2137, line: 63, size: 3008, elements: !2200)
!2200 = !{!2201, !2202, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2232}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2199, file: !2137, line: 64, baseType: !2181, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2199, file: !2137, line: 65, baseType: !2203, size: 192, offset: 64)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 192, elements: !342)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2199, file: !2137, line: 67, baseType: !114, size: 32, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2199, file: !2137, line: 68, baseType: !209, size: 256, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2199, file: !2137, line: 69, baseType: !305, size: 32, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2199, file: !2137, line: 70, baseType: !209, size: 256, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2199, file: !2137, line: 71, baseType: !199, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2199, file: !2137, line: 72, baseType: !199, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2199, file: !2137, line: 73, baseType: !199, size: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2199, file: !2137, line: 74, baseType: !199, size: 64, offset: 1088)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2199, file: !2137, line: 75, baseType: !199, size: 64, offset: 1152)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2199, file: !2137, line: 76, baseType: !199, size: 64, offset: 1216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2199, file: !2137, line: 77, baseType: !199, size: 64, offset: 1280)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2199, file: !2137, line: 78, baseType: !199, size: 64, offset: 1344)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2199, file: !2137, line: 79, baseType: !514, size: 8, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2199, file: !2137, line: 80, baseType: !199, size: 64, offset: 1472)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2199, file: !2137, line: 81, baseType: !209, size: 256, offset: 1536)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2199, file: !2137, line: 82, baseType: !1150, size: 256, offset: 1792)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2199, file: !2137, line: 84, baseType: !128, size: 32, offset: 2048)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2199, file: !2137, line: 87, baseType: !199, size: 64, offset: 2112)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2199, file: !2137, line: 88, baseType: !199, size: 64, offset: 2176)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2199, file: !2137, line: 89, baseType: !2224, size: 704, offset: 2240)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1354, line: 111, size: 704, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2231}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2224, file: !1354, line: 112, baseType: !1353, size: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2224, file: !1354, line: 113, baseType: !2167, size: 320, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2224, file: !1354, line: 116, baseType: !2229, size: 64, offset: 576)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1354, line: 18, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2224, file: !1354, line: 117, baseType: !114, size: 32, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2199, file: !2137, line: 90, baseType: !2135, size: 64, offset: 2944)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !922, file: !15, line: 515, baseType: !2234, size: 64, offset: 8064)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2236, line: 117, size: 128, elements: !2237)
!2236 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2237 = !{!2238, !2239, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2235, file: !2236, line: 118, baseType: !440, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2235, file: !2236, line: 119, baseType: !440, size: 32, offset: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2235, file: !2236, line: 120, baseType: !792, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !922, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !922, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !922, file: !15, line: 520, baseType: !2244, size: 64, offset: 8192)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !922, file: !15, line: 523, baseType: !2246, size: 64, offset: 8256)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !922, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !922, file: !15, line: 525, baseType: !2251, size: 64, offset: 8384)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !922, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !922, file: !15, line: 533, baseType: !103, size: 64, offset: 8512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !922, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !922, file: !15, line: 535, baseType: !2258, size: 64, offset: 8640)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !922, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !922, file: !15, line: 539, baseType: !114, size: 32, offset: 8736)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !922, file: !15, line: 540, baseType: !2262, size: 64, offset: 8768)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2264, line: 32, size: 64, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2263, file: !2264, line: 33, baseType: !440, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2263, file: !2264, line: 34, baseType: !440, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !922, file: !15, line: 563, baseType: !148, size: 128, offset: 8832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !922, file: !15, line: 565, baseType: !148, size: 128, offset: 8960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !922, file: !15, line: 568, baseType: !2271, size: 64, offset: 9088)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !922, file: !15, line: 570, baseType: !128, size: 32, offset: 9152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !59, line: 2382, baseType: !896, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !897, file: !59, line: 2383, baseType: !354, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !897, file: !59, line: 2385, baseType: !2278, offset: 576)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2196, line: 206, elements: !1219)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !897, file: !59, line: 2386, baseType: !2278, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !897, file: !59, line: 2387, baseType: !2278, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !897, file: !59, line: 2388, baseType: !2282, offset: 576)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2278, elements: !342)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !897, file: !59, line: 2390, baseType: !2278, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !897, file: !59, line: 2391, baseType: !2278, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !897, file: !59, line: 2392, baseType: !2278, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !897, file: !59, line: 2393, baseType: !2278, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !888, file: !59, line: 1197, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2291)
!2291 = !{!2292, !2296, !2300, !2301, !2305, !2309, !2313, !2314, !2315, !2319, !2323, !2327, !2328, !2329, !2335, !2339, !2340, !2344, !2345, !2346, !2347, !2351, !2355, !2402, !2417, !2418}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2290, file: !59, line: 2058, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!677, !887}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2290, file: !59, line: 2059, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !677}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2290, file: !59, line: 2060, baseType: !2297, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2290, file: !59, line: 2062, baseType: !2302, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !677, !114}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2290, file: !59, line: 2063, baseType: !2306, size: 64, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!114, !677, !1528}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2290, file: !59, line: 2064, baseType: !2310, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!114, !677}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2290, file: !59, line: 2065, baseType: !2297, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2290, file: !59, line: 2066, baseType: !917, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2290, file: !59, line: 2067, baseType: !2316, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!114, !887, !114}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2290, file: !59, line: 2068, baseType: !2320, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!114, !887, !58}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2290, file: !59, line: 2069, baseType: !2324, size: 64, offset: 640)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!114, !887}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2290, file: !59, line: 2070, baseType: !2320, size: 64, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2290, file: !59, line: 2071, baseType: !2324, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2290, file: !59, line: 2072, baseType: !2330, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!114, !637, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2290, file: !59, line: 2073, baseType: !2336, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!114, !887, !2067, !193}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2290, file: !59, line: 2074, baseType: !917, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2290, file: !59, line: 2076, baseType: !2341, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!114, !188, !637}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2290, file: !59, line: 2077, baseType: !2341, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2290, file: !59, line: 2078, baseType: !2341, size: 64, offset: 1152)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2290, file: !59, line: 2079, baseType: !2341, size: 64, offset: 1216)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2290, file: !59, line: 2081, baseType: !2348, size: 64, offset: 1280)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!832, !887, !114, !193, !195, !204}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2290, file: !59, line: 2082, baseType: !2352, size: 64, offset: 1344)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!832, !887, !114, !517, !195, !204}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2290, file: !59, line: 2083, baseType: !2356, size: 64, offset: 1408)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2359, !677}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2387, !2388, !2389}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2361, file: !64, line: 297, baseType: !358, size: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2361, file: !64, line: 298, baseType: !148, size: 128, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2361, file: !64, line: 299, baseType: !148, size: 128, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2361, file: !64, line: 300, baseType: !148, size: 128, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2361, file: !64, line: 301, baseType: !209, size: 256, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2361, file: !64, line: 302, baseType: !305, size: 32, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2361, file: !64, line: 303, baseType: !128, size: 32, offset: 800)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2361, file: !64, line: 304, baseType: !887, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2361, file: !64, line: 305, baseType: !2372, size: 64, offset: 896)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2373)
!2373 = !{!2374, !2386}
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !64, line: 69, baseType: !2375, size: 32)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2372, file: !64, line: 69, size: 32, elements: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2375, file: !64, line: 70, baseType: !386, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2375, file: !64, line: 71, baseType: !404, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2375, file: !64, line: 72, baseType: !2380, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2381, line: 24, baseType: !2382)
!2381 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2381, line: 22, size: 32, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2382, file: !2381, line: 23, baseType: !2385, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2381, line: 20, baseType: !392)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2372, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2361, file: !64, line: 306, baseType: !204, size: 64, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2361, file: !64, line: 307, baseType: !199, size: 64, offset: 1024)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2361, file: !64, line: 308, baseType: !2390, size: 576, offset: 1088)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2391)
!2391 = !{!2392, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2390, file: !64, line: 206, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !206)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2390, file: !64, line: 207, baseType: !2393, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2390, file: !64, line: 208, baseType: !2393, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2390, file: !64, line: 209, baseType: !2393, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2390, file: !64, line: 210, baseType: !2393, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2390, file: !64, line: 211, baseType: !2393, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2390, file: !64, line: 212, baseType: !2393, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2390, file: !64, line: 213, baseType: !471, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2390, file: !64, line: 214, baseType: !471, size: 64, offset: 512)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2290, file: !59, line: 2085, baseType: !2403, size: 64, offset: 1472)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!792, !887, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2408, line: 15, size: 256, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2409 = !{!2410, !2411, !2412, !2413, !2414}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2407, file: !2408, line: 16, baseType: !104, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2407, file: !2408, line: 19, baseType: !114, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2407, file: !2408, line: 26, baseType: !199, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2407, file: !2408, line: 33, baseType: !199, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2407, file: !2408, line: 36, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2290, file: !59, line: 2087, baseType: !2403, size: 64, offset: 1536)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2290, file: !59, line: 2089, baseType: !917, size: 64, offset: 1600)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !888, file: !59, line: 1198, baseType: !2420, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2423)
!2423 = !{!2424, !2428, !2432, !2436, !2437, !2438, !2439, !2440, !2445, !2450, !2454}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2422, file: !64, line: 325, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!114, !2360}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2422, file: !64, line: 326, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!2360, !887, !114}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2422, file: !64, line: 327, baseType: !2433, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2360}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2422, file: !64, line: 328, baseType: !2425, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2422, file: !64, line: 329, baseType: !2425, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2422, file: !64, line: 330, baseType: !2425, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2422, file: !64, line: 331, baseType: !2316, size: 64, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2422, file: !64, line: 334, baseType: !2441, size: 64, offset: 448)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2444, !677}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2422, file: !64, line: 335, baseType: !2446, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!114, !677, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2422, file: !64, line: 337, baseType: !2451, size: 64, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!114, !677, !2444}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2422, file: !64, line: 339, baseType: !2455, size: 64, offset: 640)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!114, !887, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !888, file: !59, line: 1199, baseType: !2460, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2463)
!2463 = !{!2464, !2468, !2469, !2473, !2474, !2475, !2490, !2513, !2517, !2518, !2541}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2462, file: !64, line: 431, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!114, !887, !114, !114, !801}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2462, file: !64, line: 432, baseType: !2316, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2462, file: !64, line: 433, baseType: !2470, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!114, !887, !7}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2462, file: !64, line: 434, baseType: !2470, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2462, file: !64, line: 435, baseType: !2316, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2462, file: !64, line: 436, baseType: !2476, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!114, !887, !114, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2480, file: !64, line: 418, baseType: !114, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2480, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2480, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2480, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2480, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2480, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2480, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2480, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2462, file: !64, line: 437, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!114, !887, !2372, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2495, file: !64, line: 346, baseType: !114, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2495, file: !64, line: 347, baseType: !423, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2495, file: !64, line: 348, baseType: !423, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2495, file: !64, line: 349, baseType: !423, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2495, file: !64, line: 350, baseType: !423, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2495, file: !64, line: 351, baseType: !423, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2495, file: !64, line: 352, baseType: !423, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2495, file: !64, line: 353, baseType: !219, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2495, file: !64, line: 355, baseType: !219, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2495, file: !64, line: 356, baseType: !114, size: 32, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2495, file: !64, line: 357, baseType: !114, size: 32, offset: 608)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2495, file: !64, line: 358, baseType: !423, size: 64, offset: 640)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2495, file: !64, line: 359, baseType: !423, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2495, file: !64, line: 360, baseType: !423, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2495, file: !64, line: 361, baseType: !219, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2495, file: !64, line: 362, baseType: !114, size: 32, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2462, file: !64, line: 438, baseType: !2514, size: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!114, !887, !2458, !2494}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2462, file: !64, line: 440, baseType: !2491, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2462, file: !64, line: 441, baseType: !2519, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!114, !887, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2523, file: !64, line: 412, baseType: !7, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2523, file: !64, line: 413, baseType: !2527, size: 1344, offset: 64)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2528, size: 1344, elements: !342)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2540}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2528, file: !64, line: 398, baseType: !7, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2528, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2528, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2528, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2528, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2528, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2528, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2528, file: !64, line: 406, baseType: !425, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2528, file: !64, line: 407, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !105, line: 132, baseType: !423)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2528, file: !64, line: 408, baseType: !2539, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2462, file: !64, line: 442, baseType: !2470, size: 64, offset: 640)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !888, file: !59, line: 1200, baseType: !2543, size: 64, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !888, file: !59, line: 1201, baseType: !199, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !888, file: !59, line: 1202, baseType: !199, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !888, file: !59, line: 1203, baseType: !199, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !888, file: !59, line: 1204, baseType: !637, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !888, file: !59, line: 1205, baseType: !455, size: 320, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !888, file: !59, line: 1206, baseType: !114, size: 32, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !888, file: !59, line: 1207, baseType: !128, size: 32, offset: 1248)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !888, file: !59, line: 1209, baseType: !103, size: 64, offset: 1280)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !888, file: !59, line: 1211, baseType: !2555, size: 64, offset: 1344)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !888, file: !59, line: 1223, baseType: !2560, size: 64, offset: 1408)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !654, line: 34, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2560, file: !654, line: 35, baseType: !657, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !888, file: !59, line: 1224, baseType: !148, size: 128, offset: 1472)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !888, file: !59, line: 1225, baseType: !2565, size: 64, offset: 1600)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !888, file: !59, line: 1226, baseType: !2568, size: 64, offset: 1664)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !888, file: !59, line: 1227, baseType: !2571, size: 64, offset: 1728)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !888, file: !59, line: 1228, baseType: !2574, size: 64, offset: 1792)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !888, file: !59, line: 1229, baseType: !358, size: 128, offset: 1856)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !888, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !888, file: !59, line: 1231, baseType: !2579, size: 2496, offset: 2048)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2585, !2617}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !64, line: 522, baseType: !7, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2579, file: !64, line: 523, baseType: !455, size: 320, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2579, file: !64, line: 524, baseType: !2584, size: 192, offset: 384)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 192, elements: !342)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2579, file: !64, line: 525, baseType: !2586, size: 1728, offset: 576)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 1728, elements: !342)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2588)
!2588 = !{!2589, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2587, file: !64, line: 223, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2607, !2608}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2591, file: !64, line: 446, baseType: !114, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2591, file: !64, line: 447, baseType: !2595, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2597, file: !64, line: 313, baseType: !2316, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2597, file: !64, line: 314, baseType: !2316, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2597, file: !64, line: 315, baseType: !2316, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2597, file: !64, line: 316, baseType: !2316, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2597, file: !64, line: 317, baseType: !2425, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2597, file: !64, line: 318, baseType: !2425, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2597, file: !64, line: 319, baseType: !2425, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2597, file: !64, line: 320, baseType: !2455, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2591, file: !64, line: 448, baseType: !921, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2591, file: !64, line: 449, baseType: !2590, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2587, file: !64, line: 224, baseType: !114, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2587, file: !64, line: 226, baseType: !148, size: 128, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2587, file: !64, line: 227, baseType: !199, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2587, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2587, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2587, file: !64, line: 230, baseType: !2393, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2587, file: !64, line: 231, baseType: !2393, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2587, file: !64, line: 232, baseType: !103, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2579, file: !64, line: 526, baseType: !2618, size: 192, offset: 2304)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 192, elements: !342)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !888, file: !59, line: 1233, baseType: !2620, size: 2368, offset: 4544)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2621)
!2621 = !{!2622, !2623, !2624}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2620, file: !59, line: 1185, baseType: !249, size: 16)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2620, file: !59, line: 1186, baseType: !249, size: 16, offset: 16)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2620, file: !59, line: 1187, baseType: !2625, size: 2304, offset: 64)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 2304, elements: !342)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2627, line: 12, size: 768, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2628 = !{!2629, !2637, !2638, !3866, !3867}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2626, file: !2627, line: 13, baseType: !2630, size: 384)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2631, line: 17, size: 384, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2632 = !{!2633, !2634, !2635, !2636}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2630, file: !2631, line: 18, baseType: !114, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2630, file: !2631, line: 19, baseType: !114, size: 32, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2630, file: !2631, line: 20, baseType: !367, size: 192, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2630, file: !2631, line: 22, baseType: !295, size: 128, align: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2626, file: !2627, line: 14, baseType: !2019, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2626, file: !2627, line: 15, baseType: !2639, size: 64, offset: 448)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2640, line: 16, size: 64, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2639, file: !2640, line: 17, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2645, line: 746, size: 58368, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2646 = !{!2647, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2727, !2738, !2826, !2830, !2833, !2864, !2865, !2866, !2867, !2878, !2880, !2881, !2882, !2883, !2884, !2885, !2896, !2897, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2914, !2915, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !3003, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3051, !3057, !3058, !3059, !3060, !3061, !3065, !3068, !3075, !3080, !3083, !3086, !3089, !3115, !3253, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3291, !3292, !3293, !3302, !3310, !3311, !3312, !3313, !3314, !3319, !3320, !3321, !3324, !3325, !3328, !3331, !3334, !3342, !3345, !3346, !3432, !3433, !3434, !3435, !3436, !3442, !3443, !3444, !3445, !3448, !3449, !3452, !3466, !3467, !3470, !3471, !3472, !3475, !3476, !3477, !3478, !3479, !3480, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3512, !3515, !3521, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3533, !3605, !3607, !3608, !3609, !3610, !3611, !3612, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3641, !3642, !3643}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2644, file: !2645, line: 752, baseType: !2648, size: 192)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2649, line: 56, size: 192, elements: !2650)
!2649 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2650 = !{!2651, !2652, !2653, !2654}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2648, file: !2649, line: 57, baseType: !199, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2648, file: !2649, line: 58, baseType: !199, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2648, file: !2649, line: 59, baseType: !133, size: 32, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2648, file: !2649, line: 61, baseType: !133, size: 32, offset: 160)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2644, file: !2645, line: 754, baseType: !7, size: 32, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2644, file: !2645, line: 767, baseType: !103, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2644, file: !2645, line: 768, baseType: !123, size: 32, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !2645, line: 770, baseType: !7, size: 32, offset: 352)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2644, file: !2645, line: 771, baseType: !7, size: 32, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2644, file: !2645, line: 774, baseType: !114, size: 32, offset: 416)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2644, file: !2645, line: 775, baseType: !2662, size: 128, offset: 448)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2663, line: 58, size: 128, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2664 = !{!2665, !2666, !2671, !2672}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2662, file: !2663, line: 59, baseType: !289, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !2662, file: !2663, line: 60, baseType: !2667, size: 32, offset: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2662, file: !2663, line: 60, size: 32, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2667, file: !2663, line: 61, baseType: !7, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2667, file: !2663, line: 62, baseType: !128, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2662, file: !2663, line: 65, baseType: !247, size: 16, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2662, file: !2663, line: 65, baseType: !247, size: 16, offset: 112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2644, file: !2645, line: 776, baseType: !7, size: 32, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2644, file: !2645, line: 777, baseType: !199, size: 64, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2644, file: !2645, line: 778, baseType: !2643, size: 64, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2644, file: !2645, line: 787, baseType: !114, size: 32, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2644, file: !2645, line: 788, baseType: !114, size: 32, offset: 800)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2644, file: !2645, line: 790, baseType: !114, size: 32, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2644, file: !2645, line: 792, baseType: !114, size: 32, offset: 864)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2644, file: !2645, line: 793, baseType: !114, size: 32, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2644, file: !2645, line: 794, baseType: !114, size: 32, offset: 928)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2644, file: !2645, line: 795, baseType: !7, size: 32, offset: 960)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2644, file: !2645, line: 797, baseType: !2684, size: 2048, offset: 1024)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2645, line: 551, size: 2048, elements: !2685)
!2685 = !{!2686, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2706, !2709, !2710, !2711}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2684, file: !2645, line: 553, baseType: !2687, size: 128)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2645, line: 411, size: 128, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2687, file: !2645, line: 412, baseType: !199, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2687, file: !2645, line: 413, baseType: !133, size: 32, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2684, file: !2645, line: 554, baseType: !447, size: 192, align: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2684, file: !2645, line: 555, baseType: !423, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2684, file: !2645, line: 556, baseType: !423, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2684, file: !2645, line: 558, baseType: !148, size: 128, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2684, file: !2645, line: 559, baseType: !7, size: 32, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2684, file: !2645, line: 561, baseType: !423, size: 64, offset: 640)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2684, file: !2645, line: 562, baseType: !423, size: 64, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2684, file: !2645, line: 563, baseType: !423, size: 64, offset: 768)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2684, file: !2645, line: 564, baseType: !423, size: 64, offset: 832)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2684, file: !2645, line: 565, baseType: !219, size: 64, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2684, file: !2645, line: 566, baseType: !423, size: 64, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2684, file: !2645, line: 568, baseType: !423, size: 64, offset: 1024)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2684, file: !2645, line: 571, baseType: !114, size: 32, offset: 1088)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2684, file: !2645, line: 572, baseType: !2705, size: 64, offset: 1152)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2684, file: !2645, line: 574, baseType: !2707, size: 64, offset: 1216)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2645, line: 49, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2684, file: !2645, line: 576, baseType: !2707, size: 64, offset: 1280)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2684, file: !2645, line: 578, baseType: !199, size: 64, offset: 1344)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2684, file: !2645, line: 588, baseType: !2712, size: 512, align: 512, offset: 1536)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2645, line: 497, size: 512, align: 512, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2712, file: !2645, line: 498, baseType: !423, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2712, file: !2645, line: 499, baseType: !423, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2712, file: !2645, line: 500, baseType: !423, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2712, file: !2645, line: 501, baseType: !133, size: 32, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2712, file: !2645, line: 502, baseType: !133, size: 32, offset: 224)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2712, file: !2645, line: 503, baseType: !199, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2712, file: !2645, line: 504, baseType: !199, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2712, file: !2645, line: 505, baseType: !199, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2712, file: !2645, line: 506, baseType: !2723, size: 64, align: 64, offset: 448)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2645, line: 445, size: 64, align: 64, elements: !2724)
!2724 = !{!2725, !2726}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2723, file: !2645, line: 446, baseType: !7, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2723, file: !2645, line: 447, baseType: !7, size: 32, offset: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2644, file: !2645, line: 798, baseType: !2728, size: 384, offset: 3072)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2645, line: 592, size: 384, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2728, file: !2645, line: 593, baseType: !148, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2728, file: !2645, line: 594, baseType: !199, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2728, file: !2645, line: 595, baseType: !199, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2728, file: !2645, line: 596, baseType: !7, size: 32, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2728, file: !2645, line: 597, baseType: !249, size: 16, offset: 288)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2728, file: !2645, line: 598, baseType: !249, size: 16, offset: 304)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2728, file: !2645, line: 600, baseType: !2737, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2644, file: !2645, line: 799, baseType: !2739, size: 1792, offset: 3456)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2645, line: 610, size: 1792, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2823, !2824}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2739, file: !2645, line: 611, baseType: !447, size: 192, align: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2739, file: !2645, line: 618, baseType: !423, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2739, file: !2645, line: 619, baseType: !423, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2739, file: !2645, line: 620, baseType: !423, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2739, file: !2645, line: 621, baseType: !423, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2739, file: !2645, line: 622, baseType: !423, size: 64, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2739, file: !2645, line: 629, baseType: !219, size: 64, offset: 512)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2739, file: !2645, line: 630, baseType: !423, size: 64, offset: 576)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2739, file: !2645, line: 631, baseType: !7, size: 32, offset: 640)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2739, file: !2645, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2739, file: !2645, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2739, file: !2645, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2739, file: !2645, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2739, file: !2645, line: 662, baseType: !2755, size: 512, offset: 704)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !2756)
!2756 = !{!2757, !2765, !2766, !2771, !2819, !2820, !2821, !2822}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2755, file: !70, line: 119, baseType: !2758, size: 256)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2759, line: 9, size: 256, elements: !2760)
!2759 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2758, file: !2759, line: 10, baseType: !447, size: 192, align: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2758, file: !2759, line: 11, baseType: !2763, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2764, line: 29, baseType: !219)
!2764 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2755, file: !70, line: 120, baseType: !2763, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2755, file: !70, line: 121, baseType: !2767, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!69, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2755, file: !70, line: 122, baseType: !2772, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !2774)
!2774 = !{!2775, !2800, !2801, !2804, !2809, !2810, !2814, !2818}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2773, file: !70, line: 160, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2777, file: !70, line: 216, baseType: !222, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2777, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2777, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2777, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2777, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2777, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2777, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2777, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2777, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2777, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2777, file: !70, line: 227, baseType: !249, size: 16, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2777, file: !70, line: 228, baseType: !249, size: 16, offset: 208)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2777, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2777, file: !70, line: 235, baseType: !2763, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2777, file: !70, line: 236, baseType: !2770, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2777, file: !70, line: 237, baseType: !2763, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2777, file: !70, line: 238, baseType: !2770, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2777, file: !70, line: 239, baseType: !2797, size: 4096, align: 512, offset: 512)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2773, size: 4096, align: 512, elements: !2798)
!2798 = !{!2799}
!2799 = !DISubrange(count: 8)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2773, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2773, file: !70, line: 162, baseType: !2802, size: 32, offset: 96)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !105, line: 32, baseType: !2803)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !197, line: 96, baseType: !114)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2773, file: !70, line: 163, baseType: !2805, size: 32, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !644, line: 274, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !644, line: 274, size: 32, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2806, file: !644, line: 274, baseType: !648, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2773, file: !70, line: 164, baseType: !2770, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2773, file: !70, line: 165, baseType: !2811, size: 128, offset: 256)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2759, line: 14, size: 128, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2811, file: !2759, line: 15, baseType: !1047, size: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2773, file: !70, line: 166, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!2763}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2773, file: !70, line: 167, baseType: !2763, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2755, file: !70, line: 123, baseType: !239, size: 8, offset: 448)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2755, file: !70, line: 124, baseType: !239, size: 8, offset: 456)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2755, file: !70, line: 125, baseType: !239, size: 8, offset: 464)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2755, file: !70, line: 126, baseType: !239, size: 8, offset: 472)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2739, file: !2645, line: 671, baseType: !2755, size: 512, offset: 1216)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2739, file: !2645, line: 679, baseType: !2825, size: 64, offset: 1728)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2644, file: !2645, line: 800, baseType: !2827, size: 64, offset: 5248)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2829)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2645, line: 800, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2644, file: !2645, line: 809, baseType: !2831, size: 64, offset: 5312)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2645, line: 70, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2644, file: !2645, line: 825, baseType: !2834, size: 2048, align: 512, offset: 5632)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2645, line: 509, size: 2048, align: 512, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2834, file: !2645, line: 511, baseType: !423, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2834, file: !2645, line: 512, baseType: !423, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2834, file: !2645, line: 513, baseType: !423, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2834, file: !2645, line: 514, baseType: !423, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2834, file: !2645, line: 515, baseType: !423, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2834, file: !2645, line: 516, baseType: !423, size: 64, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2834, file: !2645, line: 518, baseType: !423, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2834, file: !2645, line: 519, baseType: !423, size: 64, offset: 448)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2834, file: !2645, line: 520, baseType: !219, size: 64, offset: 512)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2834, file: !2645, line: 522, baseType: !423, size: 64, offset: 576)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2834, file: !2645, line: 523, baseType: !423, size: 64, offset: 640)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2834, file: !2645, line: 524, baseType: !219, size: 64, offset: 704)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2834, file: !2645, line: 526, baseType: !219, size: 64, offset: 768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2834, file: !2645, line: 527, baseType: !423, size: 64, offset: 832)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2834, file: !2645, line: 529, baseType: !423, size: 64, offset: 896)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2834, file: !2645, line: 530, baseType: !423, size: 64, offset: 960)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2834, file: !2645, line: 531, baseType: !423, size: 64, offset: 1024)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2834, file: !2645, line: 532, baseType: !423, size: 64, offset: 1088)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2834, file: !2645, line: 533, baseType: !423, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2834, file: !2645, line: 535, baseType: !423, size: 64, offset: 1216)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2834, file: !2645, line: 536, baseType: !423, size: 64, offset: 1280)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2834, file: !2645, line: 537, baseType: !423, size: 64, offset: 1344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2834, file: !2645, line: 538, baseType: !423, size: 64, offset: 1408)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2834, file: !2645, line: 539, baseType: !423, size: 64, offset: 1472)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2834, file: !2645, line: 540, baseType: !423, size: 64, offset: 1536)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2834, file: !2645, line: 541, baseType: !423, size: 64, offset: 1600)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2834, file: !2645, line: 542, baseType: !423, size: 64, offset: 1664)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2834, file: !2645, line: 543, baseType: !423, size: 64, offset: 1728)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2644, file: !2645, line: 833, baseType: !7, size: 32, offset: 7680)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2644, file: !2645, line: 836, baseType: !7, size: 32, offset: 7712)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2644, file: !2645, line: 837, baseType: !114, size: 32, offset: 7744)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2644, file: !2645, line: 838, baseType: !2868, size: 64, offset: 7808)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2871, line: 19, baseType: !2872)
!2871 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2871, line: 19, size: 64, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2872, file: !2871, line: 19, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !2876)
!2876 = !{!2877}
!2877 = !DISubrange(count: 1)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2644, file: !2645, line: 839, baseType: !2879, size: 64, offset: 7872)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2644, file: !2645, line: 840, baseType: !2870, size: 64, offset: 7936)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2644, file: !2645, line: 841, baseType: !103, size: 64, offset: 8000)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2644, file: !2645, line: 843, baseType: !249, size: 16, offset: 8064)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2644, file: !2645, line: 845, baseType: !249, size: 16, offset: 8080)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2644, file: !2645, line: 848, baseType: !114, size: 32, offset: 8096)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2644, file: !2645, line: 849, baseType: !2886, size: 32, offset: 8128)
!2886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2645, line: 718, size: 32, elements: !2887)
!2887 = !{!2888, !2895}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2886, file: !2645, line: 724, baseType: !2889, size: 32)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2886, file: !2645, line: 719, size: 32, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2889, file: !2645, line: 720, baseType: !239, size: 8)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2889, file: !2645, line: 721, baseType: !239, size: 8, offset: 8)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2889, file: !2645, line: 722, baseType: !239, size: 8, offset: 16)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2889, file: !2645, line: 723, baseType: !239, size: 8, offset: 24)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2886, file: !2645, line: 725, baseType: !133, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2644, file: !2645, line: 850, baseType: !148, size: 128, offset: 8192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2644, file: !2645, line: 851, baseType: !2898, size: 64, offset: 8320)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2645, line: 60, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2644, file: !2645, line: 855, baseType: !199, size: 64, offset: 8384)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2644, file: !2645, line: 856, baseType: !239, size: 8, offset: 8448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2644, file: !2645, line: 857, baseType: !239, size: 8, offset: 8456)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2644, file: !2645, line: 858, baseType: !114, size: 32, offset: 8480)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2644, file: !2645, line: 859, baseType: !148, size: 128, offset: 8512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2644, file: !2645, line: 860, baseType: !114, size: 32, offset: 8640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2644, file: !2645, line: 861, baseType: !148, size: 128, offset: 8704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2644, file: !2645, line: 873, baseType: !2908, size: 256, offset: 8832)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2645, line: 376, size: 256, elements: !2909)
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2908, file: !2645, line: 381, baseType: !199, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2908, file: !2645, line: 384, baseType: !425, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2908, file: !2645, line: 389, baseType: !425, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2908, file: !2645, line: 392, baseType: !425, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2644, file: !2645, line: 875, baseType: !148, size: 128, offset: 9088)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2644, file: !2645, line: 877, baseType: !2916, size: 320, offset: 9216)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2917, line: 86, size: 320, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2916, file: !2917, line: 87, baseType: !114, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2916, file: !2917, line: 88, baseType: !148, size: 128, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2916, file: !2917, line: 89, baseType: !148, size: 128, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2644, file: !2645, line: 878, baseType: !447, size: 192, align: 64, offset: 9536)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2644, file: !2645, line: 881, baseType: !1198, size: 64, offset: 9728)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2644, file: !2645, line: 882, baseType: !1198, size: 64, offset: 9792)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2644, file: !2645, line: 884, baseType: !114, size: 32, offset: 9856)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2644, file: !2645, line: 885, baseType: !114, size: 32, offset: 9888)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2644, file: !2645, line: 886, baseType: !114, size: 32, offset: 9920)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2644, file: !2645, line: 888, baseType: !114, size: 32, offset: 9952)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2644, file: !2645, line: 890, baseType: !199, size: 64, offset: 9984)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2644, file: !2645, line: 893, baseType: !7, size: 32, offset: 10048)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2644, file: !2645, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2644, file: !2645, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2644, file: !2645, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2644, file: !2645, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2644, file: !2645, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2644, file: !2645, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2644, file: !2645, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2644, file: !2645, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2644, file: !2645, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2644, file: !2645, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2644, file: !2645, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2644, file: !2645, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2644, file: !2645, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2644, file: !2645, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2644, file: !2645, line: 969, baseType: !199, size: 64, offset: 10176)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2644, file: !2645, line: 971, baseType: !2947, size: 448, offset: 10240)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2948)
!2948 = !{!2949, !2950, !2955}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2947, file: !75, line: 26, baseType: !199, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2947, file: !75, line: 27, baseType: !2951, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!792, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !75, line: 28, baseType: !2956, size: 320, offset: 128)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2947, file: !75, line: 28, size: 320, elements: !2957)
!2957 = !{!2958, !2968, !2993}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2956, file: !75, line: 37, baseType: !2959, size: 320)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !75, line: 30, size: 320, elements: !2960)
!2960 = !{!2961, !2963, !2964, !2965, !2966, !2967}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2959, file: !75, line: 31, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2959, file: !75, line: 32, baseType: !133, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2959, file: !75, line: 33, baseType: !133, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2959, file: !75, line: 34, baseType: !133, size: 32, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2959, file: !75, line: 35, baseType: !423, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2959, file: !75, line: 36, baseType: !2962, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2956, file: !75, line: 47, baseType: !2969, size: 192)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !75, line: 39, size: 192, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2992}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2969, file: !75, line: 40, baseType: !2802, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2969, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !2969, file: !75, line: 42, baseType: !2974, size: 64, offset: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2969, file: !75, line: 42, size: 64, elements: !2975)
!2975 = !{!2976, !2984}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2974, file: !75, line: 43, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2979, line: 7, size: 128, elements: !2980)
!2979 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2980 = !{!2981, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2978, file: !2979, line: 8, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !197, line: 93, baseType: !206)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2978, file: !2979, line: 9, baseType: !206, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2974, file: !75, line: 44, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2987, line: 7, size: 64, elements: !2988)
!2987 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2988 = !{!2989, !2991}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2986, file: !2987, line: 8, baseType: !2990, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2987, line: 5, baseType: !440)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2986, file: !2987, line: 9, baseType: !440, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2969, file: !75, line: 46, baseType: !423, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2956, file: !75, line: 55, baseType: !2994, size: 256)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !75, line: 49, size: 256, elements: !2995)
!2995 = !{!2996, !2999, !3000, !3001, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2994, file: !75, line: 50, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2994, file: !75, line: 51, baseType: !114, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2994, file: !75, line: 52, baseType: !114, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2994, file: !75, line: 53, baseType: !199, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2994, file: !75, line: 54, baseType: !199, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2644, file: !2645, line: 973, baseType: !3004, size: 32, offset: 10688)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !105, line: 27, baseType: !3005)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !197, line: 28, baseType: !114)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2644, file: !2645, line: 974, baseType: !3004, size: 32, offset: 10720)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2644, file: !2645, line: 978, baseType: !199, size: 64, offset: 10752)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2644, file: !2645, line: 987, baseType: !2643, size: 64, offset: 10816)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2644, file: !2645, line: 990, baseType: !2643, size: 64, offset: 10880)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2644, file: !2645, line: 995, baseType: !148, size: 128, offset: 10944)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2644, file: !2645, line: 996, baseType: !148, size: 128, offset: 11072)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2644, file: !2645, line: 997, baseType: !2643, size: 64, offset: 11200)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2644, file: !2645, line: 1005, baseType: !148, size: 128, offset: 11264)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2644, file: !2645, line: 1006, baseType: !148, size: 128, offset: 11392)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2644, file: !2645, line: 1009, baseType: !346, size: 64, offset: 11520)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2644, file: !2645, line: 1010, baseType: !3017, size: 512, offset: 11584)
!3017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 512, elements: !363)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2644, file: !2645, line: 1011, baseType: !148, size: 128, offset: 12096)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2644, file: !2645, line: 1012, baseType: !148, size: 128, offset: 12224)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2644, file: !2645, line: 1014, baseType: !1930, size: 64, offset: 12352)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2644, file: !2645, line: 1017, baseType: !2067, size: 64, offset: 12416)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2644, file: !2645, line: 1020, baseType: !2067, size: 64, offset: 12480)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2644, file: !2645, line: 1023, baseType: !103, size: 64, offset: 12544)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2644, file: !2645, line: 1025, baseType: !423, size: 64, offset: 12608)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2644, file: !2645, line: 1026, baseType: !423, size: 64, offset: 12672)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2644, file: !2645, line: 1031, baseType: !423, size: 64, offset: 12736)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2644, file: !2645, line: 1032, baseType: !3028, size: 192, offset: 12800)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2645, line: 324, size: 192, elements: !3029)
!3029 = !{!3030, !3031, !3032}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3028, file: !2645, line: 326, baseType: !423, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3028, file: !2645, line: 327, baseType: !423, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3028, file: !2645, line: 328, baseType: !222, size: 32, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2644, file: !2645, line: 1041, baseType: !199, size: 64, offset: 12992)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2644, file: !2645, line: 1042, baseType: !199, size: 64, offset: 13056)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2644, file: !2645, line: 1045, baseType: !423, size: 64, offset: 13120)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2644, file: !2645, line: 1048, baseType: !423, size: 64, offset: 13184)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2644, file: !2645, line: 1051, baseType: !199, size: 64, offset: 13248)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2644, file: !2645, line: 1052, baseType: !199, size: 64, offset: 13312)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2644, file: !2645, line: 1055, baseType: !3040, size: 640, offset: 13376)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3041, line: 132, size: 640, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3042 = !{!3043, !3049, !3050}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3040, file: !3041, line: 133, baseType: !3044, size: 576)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3045, size: 576, elements: !342)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3041, line: 117, size: 192, elements: !3046)
!3046 = !{!3047, !3048}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3045, file: !3041, line: 118, baseType: !423, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3045, file: !3041, line: 119, baseType: !2811, size: 128, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3040, file: !3041, line: 134, baseType: !7, size: 32, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3040, file: !3041, line: 135, baseType: !7, size: 32, offset: 608)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2644, file: !2645, line: 1058, baseType: !3052, size: 448, offset: 14016)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3041, line: 144, size: 448, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3052, file: !3041, line: 145, baseType: !295, size: 128, align: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3052, file: !3041, line: 146, baseType: !209, size: 256, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3052, file: !3041, line: 147, baseType: !7, size: 32, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2644, file: !2645, line: 1064, baseType: !396, size: 64, offset: 14464)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2644, file: !2645, line: 1067, baseType: !396, size: 64, offset: 14528)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2644, file: !2645, line: 1070, baseType: !396, size: 64, offset: 14592)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2644, file: !2645, line: 1074, baseType: !432, size: 64, offset: 14656)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2644, file: !2645, line: 1084, baseType: !3062, size: 128, offset: 14720)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !3063)
!3063 = !{!3064}
!3064 = !DISubrange(count: 16)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2644, file: !2645, line: 1086, baseType: !3066, size: 64, offset: 14848)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2645, line: 55, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2644, file: !2645, line: 1089, baseType: !3069, size: 64, offset: 14912)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3070, line: 12, size: 64, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3071 = !{!3072}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3069, file: !3070, line: 13, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3070, line: 8, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2644, file: !2645, line: 1090, baseType: !3076, size: 128, offset: 14976)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3077, line: 13, size: 128, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3076, file: !3077, line: 14, baseType: !148, size: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2644, file: !2645, line: 1097, baseType: !3081, size: 64, offset: 15104)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2645, line: 50, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2644, file: !2645, line: 1100, baseType: !3084, size: 64, offset: 15168)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2645, line: 1100, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2644, file: !2645, line: 1103, baseType: !3087, size: 64, offset: 15232)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2645, line: 53, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2644, file: !2645, line: 1107, baseType: !3090, size: 64, offset: 15296)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3092, line: 31, size: 576, elements: !3093)
!3092 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3093 = !{!3094, !3095, !3098, !3101, !3104, !3105, !3108, !3111, !3112}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3091, file: !3092, line: 32, baseType: !123, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3091, file: !3092, line: 33, baseType: !3096, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3092, line: 9, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3091, file: !3092, line: 34, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3092, line: 10, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3091, file: !3092, line: 35, baseType: !3102, size: 64, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3092, line: 8, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3091, file: !3092, line: 36, baseType: !380, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3091, file: !3092, line: 37, baseType: !3106, size: 64, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !434, line: 34, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3091, file: !3092, line: 38, baseType: !3109, size: 64, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3092, line: 38, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3091, file: !3092, line: 39, baseType: !3109, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3091, file: !3092, line: 40, baseType: !3113, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3092, line: 12, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2644, file: !2645, line: 1110, baseType: !3116, size: 64, offset: 15360)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3118, line: 93, size: 8768, elements: !3119)
!3118 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3167, !3176, !3177, !3179, !3180, !3181, !3184, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3222, !3223, !3230, !3240, !3243, !3244, !3247, !3248, !3249, !3250, !3251, !3252}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3117, file: !3118, line: 94, baseType: !123, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3117, file: !3118, line: 95, baseType: !128, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3117, file: !3118, line: 96, baseType: !114, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3117, file: !3118, line: 97, baseType: !114, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3117, file: !3118, line: 98, baseType: !148, size: 128, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3117, file: !3118, line: 100, baseType: !367, size: 192, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3117, file: !3118, line: 103, baseType: !2643, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3117, file: !3118, line: 106, baseType: !3128, size: 192, offset: 512)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !604, line: 32, size: 192, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3128, file: !604, line: 33, baseType: !148, size: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3128, file: !604, line: 34, baseType: !3132, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3133, line: 25, baseType: !3134)
!3133 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3133, line: 23, size: 64, elements: !3135)
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3134, file: !3133, line: 24, baseType: !2875, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3117, file: !3118, line: 109, baseType: !354, size: 64, offset: 704)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3117, file: !3118, line: 112, baseType: !114, size: 32, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3117, file: !3118, line: 114, baseType: !114, size: 32, offset: 800)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3117, file: !3118, line: 115, baseType: !2643, size: 64, offset: 832)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3117, file: !3118, line: 118, baseType: !114, size: 32, offset: 896)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3117, file: !3118, line: 119, baseType: !7, size: 32, offset: 928)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3117, file: !3118, line: 121, baseType: !3144, size: 64, offset: 960)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3118, line: 80, size: 448, elements: !3146)
!3146 = !{!3147, !3148, !3154}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3145, file: !3118, line: 81, baseType: !128, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3145, file: !3118, line: 82, baseType: !3149, size: 128, offset: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3118, line: 75, size: 128, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3149, file: !3118, line: 76, baseType: !2643, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3149, file: !3118, line: 77, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3145, file: !3118, line: 83, baseType: !1150, size: 256, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3117, file: !3118, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3117, file: !3118, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3117, file: !3118, line: 138, baseType: !7, size: 32, offset: 1056)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3117, file: !3118, line: 139, baseType: !148, size: 128, offset: 1088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3117, file: !3118, line: 142, baseType: !2755, size: 512, offset: 1216)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3117, file: !3118, line: 143, baseType: !2763, size: 64, offset: 1728)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3117, file: !3118, line: 150, baseType: !3162, size: 256, offset: 1792)
!3162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3163, size: 256, elements: !2057)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3118, line: 38, size: 128, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3163, file: !3118, line: 39, baseType: !423, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3163, file: !3118, line: 40, baseType: !423, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3117, file: !3118, line: 156, baseType: !3168, size: 192, offset: 2048)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3118, line: 66, size: 192, elements: !3169)
!3169 = !{!3170}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3168, file: !3118, line: 67, baseType: !3171, size: 192)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3118, line: 47, size: 192, elements: !3172)
!3172 = !{!3173, !3174, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3171, file: !3118, line: 48, baseType: !215, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3171, file: !3118, line: 49, baseType: !215, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3171, file: !3118, line: 50, baseType: !215, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3117, file: !3118, line: 160, baseType: !3040, size: 640, offset: 2240)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3117, file: !3118, line: 163, baseType: !3178, size: 256, offset: 2880)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !363)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3117, file: !3118, line: 169, baseType: !346, size: 64, offset: 3136)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3117, file: !3118, line: 172, baseType: !114, size: 32, offset: 3200)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3117, file: !3118, line: 174, baseType: !3182, size: 64, offset: 3264)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3118, line: 174, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3117, file: !3118, line: 185, baseType: !3185, size: 64, offset: 3328)
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !644, line: 860, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 853, size: 64, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3186, file: !644, line: 858, baseType: !643, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3186, file: !644, line: 859, baseType: !305, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3117, file: !3118, line: 186, baseType: !423, size: 64, offset: 3392)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3117, file: !3118, line: 186, baseType: !423, size: 64, offset: 3456)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3117, file: !3118, line: 186, baseType: !423, size: 64, offset: 3520)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3117, file: !3118, line: 186, baseType: !423, size: 64, offset: 3584)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3117, file: !3118, line: 187, baseType: !423, size: 64, offset: 3648)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3117, file: !3118, line: 188, baseType: !423, size: 64, offset: 3712)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3117, file: !3118, line: 189, baseType: !3028, size: 192, offset: 3776)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3117, file: !3118, line: 190, baseType: !199, size: 64, offset: 3968)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3117, file: !3118, line: 190, baseType: !199, size: 64, offset: 4032)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3117, file: !3118, line: 190, baseType: !199, size: 64, offset: 4096)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3117, file: !3118, line: 190, baseType: !199, size: 64, offset: 4160)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3117, file: !3118, line: 191, baseType: !199, size: 64, offset: 4224)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3117, file: !3118, line: 191, baseType: !199, size: 64, offset: 4288)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3117, file: !3118, line: 191, baseType: !199, size: 64, offset: 4352)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3117, file: !3118, line: 191, baseType: !199, size: 64, offset: 4416)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3117, file: !3118, line: 192, baseType: !199, size: 64, offset: 4480)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3117, file: !3118, line: 192, baseType: !199, size: 64, offset: 4544)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3117, file: !3118, line: 192, baseType: !199, size: 64, offset: 4608)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3117, file: !3118, line: 192, baseType: !199, size: 64, offset: 4672)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3117, file: !3118, line: 193, baseType: !199, size: 64, offset: 4736)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3117, file: !3118, line: 193, baseType: !199, size: 64, offset: 4800)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3117, file: !3118, line: 194, baseType: !3212, size: 448, offset: 4864)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3213, line: 12, size: 448, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3212, file: !3213, line: 15, baseType: !423, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3212, file: !3213, line: 17, baseType: !423, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3212, file: !3213, line: 19, baseType: !423, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3212, file: !3213, line: 21, baseType: !423, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3212, file: !3213, line: 29, baseType: !423, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3212, file: !3213, line: 35, baseType: !423, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3212, file: !3213, line: 44, baseType: !423, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3117, file: !3118, line: 202, baseType: !425, size: 64, offset: 5312)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3117, file: !3118, line: 213, baseType: !3224, size: 2048, offset: 5376)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 2048, elements: !3063)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3226, line: 43, size: 128, elements: !3227)
!3226 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3225, file: !3226, line: 44, baseType: !198, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3225, file: !3226, line: 45, baseType: !198, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3117, file: !3118, line: 216, baseType: !3231, size: 448, offset: 7424)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3118, line: 30, size: 448, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3231, file: !3118, line: 31, baseType: !114, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3231, file: !3118, line: 32, baseType: !792, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3231, file: !3118, line: 33, baseType: !199, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3231, file: !3118, line: 34, baseType: !423, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3231, file: !3118, line: 34, baseType: !423, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3231, file: !3118, line: 35, baseType: !199, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3231, file: !3118, line: 35, baseType: !199, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3117, file: !3118, line: 219, baseType: !3241, size: 64, offset: 7872)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3118, line: 219, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3117, file: !3118, line: 222, baseType: !7, size: 32, offset: 7936)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3117, file: !3118, line: 223, baseType: !3245, size: 64, offset: 8000)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3118, line: 223, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3117, file: !3118, line: 230, baseType: !514, size: 8, offset: 8064)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3117, file: !3118, line: 231, baseType: !483, size: 16, offset: 8080)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3117, file: !3118, line: 232, baseType: !483, size: 16, offset: 8096)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3117, file: !3118, line: 234, baseType: !1198, size: 64, offset: 8128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3117, file: !3118, line: 237, baseType: !209, size: 256, offset: 8192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3117, file: !3118, line: 243, baseType: !455, size: 320, offset: 8448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2644, file: !2645, line: 1111, baseType: !3254, size: 64, offset: 15424)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3118, line: 20, size: 16640, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3255, file: !3118, line: 21, baseType: !305, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3255, file: !3118, line: 22, baseType: !123, size: 32, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3255, file: !3118, line: 23, baseType: !367, size: 192, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3255, file: !3118, line: 24, baseType: !3261, size: 16384, offset: 256)
!3261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3262, size: 16384, elements: !977)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !604, line: 51, size: 256, elements: !3263)
!3263 = !{!3264}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3262, file: !604, line: 52, baseType: !3265, size: 256)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !604, line: 37, size: 256, elements: !3266)
!3266 = !{!3267, !3274, !3275, !3279}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3265, file: !604, line: 39, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3269, line: 83, baseType: !3270)
!3269 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3269, line: 82, baseType: !3272)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !114}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3265, file: !604, line: 40, baseType: !199, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3265, file: !604, line: 46, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3269, line: 86, baseType: !3277)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3269, line: 85, baseType: !2272)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3265, file: !604, line: 48, baseType: !3132, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2644, file: !2645, line: 1112, baseType: !3132, size: 64, offset: 15488)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2644, file: !2645, line: 1113, baseType: !3132, size: 64, offset: 15552)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2644, file: !2645, line: 1115, baseType: !3132, size: 64, offset: 15616)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2644, file: !2645, line: 1116, baseType: !3128, size: 192, offset: 15680)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2644, file: !2645, line: 1117, baseType: !199, size: 64, offset: 15872)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2644, file: !2645, line: 1118, baseType: !195, size: 64, offset: 15936)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2644, file: !2645, line: 1119, baseType: !7, size: 32, offset: 16000)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2644, file: !2645, line: 1121, baseType: !298, size: 64, offset: 16064)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2644, file: !2645, line: 1125, baseType: !3289, size: 64, offset: 16128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2645, line: 43, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2644, file: !2645, line: 1127, baseType: !386, size: 32, offset: 16192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2644, file: !2645, line: 1128, baseType: !7, size: 32, offset: 16224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2644, file: !2645, line: 1130, baseType: !3294, size: 128, offset: 16256)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3295, line: 37, size: 128, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3294, file: !3295, line: 38, baseType: !114, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3294, file: !3295, line: 39, baseType: !128, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3294, file: !3295, line: 40, baseType: !3300, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3295, line: 24, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2644, file: !2645, line: 1131, baseType: !3303, size: 256, offset: 16384)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3304, line: 12, size: 256, elements: !3305)
!3304 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3305 = !{!3306, !3307, !3308, !3309}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3303, file: !3304, line: 13, baseType: !193, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3303, file: !3304, line: 14, baseType: !199, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3303, file: !3304, line: 15, baseType: !199, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3303, file: !3304, line: 16, baseType: !514, size: 8, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2644, file: !2645, line: 1134, baseType: !423, size: 64, offset: 16640)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2644, file: !2645, line: 1135, baseType: !423, size: 64, offset: 16704)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2644, file: !2645, line: 1138, baseType: !305, size: 32, offset: 16768)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2644, file: !2645, line: 1141, baseType: !222, size: 32, offset: 16800)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2644, file: !2645, line: 1143, baseType: !3315, size: 64, offset: 16832)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2645, line: 735, size: 64, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3315, file: !2645, line: 736, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2644, file: !2645, line: 1147, baseType: !1047, size: 128, offset: 16896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2644, file: !2645, line: 1149, baseType: !2643, size: 64, offset: 17024)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2644, file: !2645, line: 1151, baseType: !3322, size: 64, offset: 17088)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2645, line: 1151, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2644, file: !2645, line: 1188, baseType: !103, size: 64, offset: 17152)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2644, file: !2645, line: 1191, baseType: !3326, size: 64, offset: 17216)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2645, line: 44, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2644, file: !2645, line: 1194, baseType: !3329, size: 64, offset: 17280)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2645, line: 45, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2644, file: !2645, line: 1197, baseType: !3332, size: 64, offset: 17344)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2645, line: 61, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2644, file: !2645, line: 1199, baseType: !3335, size: 64, offset: 17408)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3337, line: 99, size: 128, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3338 = !{!3339, !3340, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3336, file: !3337, line: 100, baseType: !213, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3336, file: !3337, line: 101, baseType: !128, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3336, file: !3337, line: 103, baseType: !249, size: 16, offset: 96)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2644, file: !2645, line: 1202, baseType: !3343, size: 64, offset: 17472)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2645, line: 48, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2644, file: !2645, line: 1205, baseType: !199, size: 64, offset: 17536)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2644, file: !2645, line: 1206, baseType: !3347, size: 64, offset: 17600)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !604, line: 14, baseType: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !604, line: 12, size: 384, elements: !3350)
!3350 = !{!3351}
!3351 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !604, line: 13, baseType: !3352, size: 384)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3349, file: !604, line: 13, size: 384, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3352, file: !604, line: 13, baseType: !114, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3352, file: !604, line: 13, baseType: !114, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3352, file: !604, line: 13, baseType: !114, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3352, file: !604, line: 13, baseType: !3358, size: 256, offset: 128)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3359, line: 37, size: 256, elements: !3360)
!3359 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3360 = !{!3361, !3366, !3379, !3385, !3394, !3421, !3426}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3358, file: !3359, line: 42, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 39, size: 64, elements: !3363)
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3362, file: !3359, line: 40, baseType: !3005, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3362, file: !3359, line: 41, baseType: !392, size: 32, offset: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3358, file: !3359, line: 50, baseType: !3367, size: 192)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 45, size: 192, elements: !3368)
!3368 = !{!3369, !3371, !3372, !3378}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3367, file: !3359, line: 46, baseType: !3370, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !197, line: 95, baseType: !114)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3367, file: !3359, line: 47, baseType: !114, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3367, file: !3359, line: 48, baseType: !3373, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3359, line: 11, baseType: !3374)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3359, line: 8, size: 64, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3374, file: !3359, line: 9, baseType: !114, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3374, file: !3359, line: 10, baseType: !103, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3367, file: !3359, line: 49, baseType: !114, size: 32, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3358, file: !3359, line: 57, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 53, size: 128, elements: !3381)
!3381 = !{!3382, !3383, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3380, file: !3359, line: 54, baseType: !3005, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3380, file: !3359, line: 55, baseType: !392, size: 32, offset: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3380, file: !3359, line: 56, baseType: !3373, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3358, file: !3359, line: 66, baseType: !3386, size: 256)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 60, size: 256, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3393}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3386, file: !3359, line: 61, baseType: !3005, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3386, file: !3359, line: 62, baseType: !392, size: 32, offset: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3386, file: !3359, line: 63, baseType: !114, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3386, file: !3359, line: 64, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !197, line: 94, baseType: !834)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3386, file: !3359, line: 65, baseType: !3392, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3358, file: !3359, line: 105, baseType: !3395, size: 256)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 69, size: 256, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3395, file: !3359, line: 70, baseType: !103, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !3359, line: 79, baseType: !3399, size: 192, offset: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3395, file: !3359, line: 79, size: 192, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3410, !3415}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3399, file: !3359, line: 81, baseType: !114, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3399, file: !3359, line: 86, baseType: !483, size: 16)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3399, file: !3359, line: 92, baseType: !3404, size: 192)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !3359, line: 88, size: 192, elements: !3405)
!3405 = !{!3406, !3408, !3409}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3404, file: !3359, line: 89, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !2798)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3404, file: !3359, line: 90, baseType: !103, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3404, file: !3359, line: 91, baseType: !103, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3399, file: !3359, line: 97, baseType: !3411, size: 96)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !3359, line: 94, size: 96, elements: !3412)
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3411, file: !3359, line: 95, baseType: !3407, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3411, file: !3359, line: 96, baseType: !135, size: 32, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3399, file: !3359, line: 103, baseType: !3416, size: 128)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !3359, line: 99, size: 128, elements: !3417)
!3417 = !{!3418, !3419, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3416, file: !3359, line: 100, baseType: !199, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3416, file: !3359, line: 101, baseType: !135, size: 32, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3416, file: !3359, line: 102, baseType: !135, size: 32, offset: 96)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3358, file: !3359, line: 111, baseType: !3422, size: 128)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 108, size: 128, elements: !3423)
!3423 = !{!3424, !3425}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3422, file: !3359, line: 109, baseType: !792, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3422, file: !3359, line: 110, baseType: !114, size: 32, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3358, file: !3359, line: 118, baseType: !3427, size: 128)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !3359, line: 114, size: 128, elements: !3428)
!3428 = !{!3429, !3430, !3431}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3427, file: !3359, line: 115, baseType: !103, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3427, file: !3359, line: 116, baseType: !114, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3427, file: !3359, line: 117, baseType: !7, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2644, file: !2645, line: 1208, baseType: !3212, size: 448, offset: 17664)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2644, file: !2645, line: 1215, baseType: !423, size: 64, offset: 18112)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2644, file: !2645, line: 1217, baseType: !423, size: 64, offset: 18176)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2644, file: !2645, line: 1219, baseType: !423, size: 64, offset: 18240)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2644, file: !2645, line: 1223, baseType: !3437, size: 64, offset: 18304)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3438, line: 99, baseType: !3439)
!3438 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3438, line: 99, size: 64, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3439, file: !3438, line: 99, baseType: !2875, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2644, file: !2645, line: 1225, baseType: !643, size: 32, offset: 18368)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2644, file: !2645, line: 1226, baseType: !114, size: 32, offset: 18400)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2644, file: !2645, line: 1227, baseType: !114, size: 32, offset: 18432)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2644, file: !2645, line: 1231, baseType: !3446, size: 64, offset: 18496)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2645, line: 1231, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2644, file: !2645, line: 1233, baseType: !148, size: 128, offset: 18560)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2644, file: !2645, line: 1240, baseType: !3450, size: 64, offset: 18688)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2645, line: 62, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2644, file: !2645, line: 1242, baseType: !3453, size: 64, offset: 18752)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3455, line: 392, size: 96, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3456 = !{!3457, !3463, !3465}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3454, file: !3455, line: 393, baseType: !3458, size: 32)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3455, line: 388, size: 32, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3458, file: !3455, line: 389, baseType: !3461, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3462, line: 46, baseType: !133)
!3462 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3454, file: !3455, line: 394, baseType: !3464, size: 32, offset: 32)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3462, line: 42, baseType: !440)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3454, file: !3455, line: 395, baseType: !3461, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2644, file: !2645, line: 1244, baseType: !148, size: 128, offset: 18816)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2644, file: !2645, line: 1245, baseType: !3468, size: 64, offset: 18944)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2645, line: 51, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2644, file: !2645, line: 1246, baseType: !209, size: 256, offset: 19008)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2644, file: !2645, line: 1247, baseType: !7, size: 32, offset: 19264)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2644, file: !2645, line: 1250, baseType: !3473, size: 64, offset: 19328)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2645, line: 57, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2644, file: !2645, line: 1251, baseType: !209, size: 256, offset: 19392)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2644, file: !2645, line: 1252, baseType: !148, size: 128, offset: 19648)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2644, file: !2645, line: 1259, baseType: !1444, size: 64, offset: 19776)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2644, file: !2645, line: 1260, baseType: !483, size: 16, offset: 19840)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2644, file: !2645, line: 1261, baseType: !483, size: 16, offset: 19856)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2644, file: !2645, line: 1314, baseType: !3481, size: 64, offset: 19904)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3483, line: 62, size: 256, align: 256, elements: !3484)
!3483 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3482, file: !3483, line: 75, baseType: !135, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3482, file: !3483, line: 90, baseType: !135, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3482, file: !3483, line: 112, baseType: !424, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3482, file: !3483, line: 132, baseType: !135, size: 32, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3482, file: !3483, line: 140, baseType: !135, size: 32, offset: 160)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3482, file: !3483, line: 149, baseType: !135, size: 32, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3482, file: !3483, line: 154, baseType: !3492, offset: 224)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, elements: !382)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2644, file: !2645, line: 1315, baseType: !133, size: 32, offset: 19968)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2644, file: !2645, line: 1316, baseType: !133, size: 32, offset: 20000)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2644, file: !2645, line: 1321, baseType: !199, size: 64, offset: 20032)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2644, file: !2645, line: 1325, baseType: !114, size: 32, offset: 20096)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2644, file: !2645, line: 1326, baseType: !114, size: 32, offset: 20128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2644, file: !2645, line: 1327, baseType: !114, size: 32, offset: 20160)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2644, file: !2645, line: 1328, baseType: !114, size: 32, offset: 20192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2644, file: !2645, line: 1329, baseType: !295, size: 128, align: 64, offset: 20224)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2644, file: !2645, line: 1332, baseType: !3502, size: 128, offset: 20352)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3503, line: 51, size: 128, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3504 = !{!3505, !3510, !3511}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3502, file: !3503, line: 60, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3507, line: 7, size: 64, elements: !3508)
!3507 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3506, file: !3507, line: 12, baseType: !2872, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3502, file: !3503, line: 63, baseType: !514, size: 8, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3502, file: !3503, line: 70, baseType: !514, size: 8, offset: 72)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2644, file: !2645, line: 1335, baseType: !3513, size: 64, offset: 20480)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2645, line: 59, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2644, file: !2645, line: 1337, baseType: !3516, size: 128, offset: 20544)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3503, line: 39, size: 128, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3516, file: !3503, line: 40, baseType: !1065, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3516, file: !3503, line: 42, baseType: !135, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3516, file: !3503, line: 43, baseType: !135, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2644, file: !2645, line: 1340, baseType: !3522, size: 64, offset: 20672)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2645, line: 69, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2644, file: !2645, line: 1351, baseType: !114, size: 32, offset: 20736)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2644, file: !2645, line: 1352, baseType: !114, size: 32, offset: 20768)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2644, file: !2645, line: 1354, baseType: !199, size: 64, offset: 20800)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2644, file: !2645, line: 1364, baseType: !423, size: 64, offset: 20864)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2644, file: !2645, line: 1365, baseType: !423, size: 64, offset: 20928)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2644, file: !2645, line: 1412, baseType: !199, size: 64, offset: 20992)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2644, file: !2645, line: 1453, baseType: !3531, size: 64, offset: 21056)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2645, line: 1453, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2644, file: !2645, line: 1457, baseType: !3534, size: 64, offset: 21120)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3536)
!3536 = !{!3537, !3538, !3557, !3560, !3561, !3594, !3604}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3535, file: !81, line: 62, baseType: !80, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, scope: !3535, file: !81, line: 64, baseType: !3539, size: 192, offset: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3535, file: !81, line: 64, size: 192, elements: !3540)
!3540 = !{!3541, !3552}
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !3539, file: !81, line: 65, baseType: !3542, size: 192)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3539, file: !81, line: 65, size: 192, elements: !3543)
!3543 = !{!3544, !3551}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3542, file: !81, line: 66, baseType: !3545, size: 128)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3546, line: 50, size: 128, elements: !3547)
!3546 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3547 = !{!3548, !3549, !3550}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3545, file: !3546, line: 52, baseType: !199, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3545, file: !3546, line: 54, baseType: !7, size: 32, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3545, file: !3546, line: 55, baseType: !7, size: 32, offset: 96)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3542, file: !81, line: 67, baseType: !199, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3539, file: !81, line: 70, baseType: !3553, size: 192)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3539, file: !81, line: 70, size: 192, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3553, file: !81, line: 71, baseType: !295, size: 128, align: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3553, file: !81, line: 72, baseType: !199, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3535, file: !81, line: 76, baseType: !3558, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3535, file: !81, line: 77, baseType: !199, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3535, file: !81, line: 79, baseType: !3562, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3546, line: 25, size: 256, elements: !3564)
!3564 = !{!3565, !3571, !3575}
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3563, file: !3546, line: 26, baseType: !3566, size: 128)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3563, file: !3546, line: 26, size: 128, elements: !3567)
!3567 = !{!3568, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3566, file: !3546, line: 27, baseType: !3569, size: 128)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !3063)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3566, file: !3546, line: 28, baseType: !3569, size: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3563, file: !3546, line: 31, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3574)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3546, line: 23, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3563, file: !3546, line: 33, baseType: !3576, size: 64, offset: 192)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3563, file: !3546, line: 33, size: 64, elements: !3577)
!3577 = !{!3578, !3584, !3589}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3576, file: !3546, line: 38, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3546, line: 34, size: 64, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3579, file: !3546, line: 35, baseType: !440, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3579, file: !3546, line: 36, baseType: !239, size: 8, offset: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3579, file: !3546, line: 37, baseType: !239, size: 8, offset: 40)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3576, file: !3546, line: 42, baseType: !3585, size: 16)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3546, line: 39, size: 16, elements: !3586)
!3586 = !{!3587, !3588}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3585, file: !3546, line: 40, baseType: !239, size: 8)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3585, file: !3546, line: 41, baseType: !239, size: 8, offset: 8)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3576, file: !3546, line: 46, baseType: !3590, size: 16)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3546, line: 43, size: 16, elements: !3591)
!3591 = !{!3592, !3593}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3590, file: !3546, line: 44, baseType: !239, size: 8)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3590, file: !3546, line: 45, baseType: !239, size: 8, offset: 8)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3535, file: !81, line: 81, baseType: !3595, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3596, file: !81, line: 86, baseType: !3558, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3596, file: !81, line: 87, baseType: !199, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3596, file: !81, line: 88, baseType: !199, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3596, file: !81, line: 89, baseType: !199, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3596, file: !81, line: 90, baseType: !514, size: 8, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3596, file: !81, line: 92, baseType: !3595, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3535, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2644, file: !2645, line: 1463, baseType: !3606, offset: 21184)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2645, line: 739, elements: !1219)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2644, file: !2645, line: 1470, baseType: !295, size: 128, align: 64, offset: 21184)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2644, file: !2645, line: 1471, baseType: !123, size: 32, offset: 21312)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2644, file: !2645, line: 1472, baseType: !114, size: 32, offset: 21344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2644, file: !2645, line: 1474, baseType: !2643, size: 64, offset: 21376)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2644, file: !2645, line: 1475, baseType: !2167, size: 320, offset: 21440)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2644, file: !2645, line: 1478, baseType: !3613, size: 64, offset: 21760)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3615, line: 49, size: 512, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3626}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3614, file: !3615, line: 50, baseType: !3613, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3614, file: !3615, line: 51, baseType: !103, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3614, file: !3615, line: 52, baseType: !199, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3614, file: !3615, line: 53, baseType: !199, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3614, file: !3615, line: 54, baseType: !1618, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3614, file: !3615, line: 56, baseType: !7, size: 32, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3614, file: !3615, line: 58, baseType: !7, size: 32, offset: 352)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3614, file: !3615, line: 59, baseType: !3625, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !105, line: 159, baseType: !423)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3614, file: !3615, line: 60, baseType: !1314, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2644, file: !2645, line: 1482, baseType: !123, size: 32, offset: 21824)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2644, file: !2645, line: 1489, baseType: !103, size: 64, offset: 21888)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2644, file: !2645, line: 1504, baseType: !103, size: 64, offset: 21952)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2644, file: !2645, line: 1505, baseType: !424, size: 64, offset: 22016)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2644, file: !2645, line: 1506, baseType: !423, size: 64, offset: 22080)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2644, file: !2645, line: 1507, baseType: !424, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2644, file: !2645, line: 1508, baseType: !424, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2644, file: !2645, line: 1509, baseType: !424, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2644, file: !2645, line: 1510, baseType: !295, size: 128, align: 64, offset: 22208)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2644, file: !2645, line: 1511, baseType: !114, size: 32, offset: 22336)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2644, file: !2645, line: 1515, baseType: !3638, size: 64, offset: 22400)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !290, line: 56, size: 64, elements: !3639)
!3639 = !{!3640}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3638, file: !290, line: 57, baseType: !293, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2644, file: !2645, line: 1518, baseType: !3638, size: 64, offset: 22464)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2644, file: !2645, line: 1528, baseType: !295, size: 128, align: 64, offset: 22528)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2644, file: !2645, line: 1552, baseType: !3644, size: 35328, offset: 23040)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3645, line: 430, size: 35328, elements: !3646)
!3645 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3646 = !{!3647, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3676, !3677, !3678, !3679, !3680, !3681, !3684, !3685, !3686, !3687}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3644, file: !3645, line: 432, baseType: !3648, size: 192)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3649, size: 192, elements: !342)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3650, line: 16, size: 64, elements: !3651)
!3650 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3649, file: !3650, line: 17, baseType: !247, size: 16)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3649, file: !3650, line: 18, baseType: !247, size: 16, offset: 16)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3649, file: !3650, line: 19, baseType: !247, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3649, file: !3650, line: 19, baseType: !247, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3649, file: !3650, line: 19, baseType: !247, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3649, file: !3650, line: 19, baseType: !247, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3649, file: !3650, line: 19, baseType: !247, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3649, file: !3650, line: 20, baseType: !247, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3649, file: !3650, line: 20, baseType: !247, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3649, file: !3650, line: 20, baseType: !247, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3649, file: !3650, line: 20, baseType: !247, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3649, file: !3650, line: 20, baseType: !247, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3649, file: !3650, line: 20, baseType: !247, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3644, file: !3645, line: 436, baseType: !199, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3644, file: !3645, line: 440, baseType: !249, size: 16, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3644, file: !3645, line: 441, baseType: !249, size: 16, offset: 272)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3644, file: !3645, line: 442, baseType: !249, size: 16, offset: 288)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3644, file: !3645, line: 443, baseType: !249, size: 16, offset: 304)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3644, file: !3645, line: 447, baseType: !199, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3644, file: !3645, line: 448, baseType: !199, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3644, file: !3645, line: 459, baseType: !3673, size: 256, offset: 448)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3674, size: 256, elements: !363)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3645, line: 428, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3644, file: !3645, line: 461, baseType: !199, size: 64, offset: 704)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3644, file: !3645, line: 463, baseType: !199, size: 64, offset: 768)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3644, file: !3645, line: 465, baseType: !199, size: 64, offset: 832)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3644, file: !3645, line: 466, baseType: !199, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3644, file: !3645, line: 467, baseType: !199, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3644, file: !3645, line: 473, baseType: !3682, size: 64, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3645, line: 10, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3644, file: !3645, line: 480, baseType: !199, size: 64, offset: 1088)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3644, file: !3645, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3644, file: !3645, line: 491, baseType: !133, size: 32, offset: 1184)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3644, file: !3645, line: 501, baseType: !3688, size: 33792, offset: 1536)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3689, line: 448, size: 33792, elements: !3690)
!3689 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3690 = !{!3691, !3692, !3693, !3857, !3858, !3864, !3865}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3688, file: !3689, line: 461, baseType: !7, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3688, file: !3689, line: 468, baseType: !199, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3688, file: !3689, line: 476, baseType: !3694, size: 64, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3689, line: 356, size: 33280, align: 512, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3695, file: !3689, line: 358, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3695, file: !3689, line: 361, baseType: !7, size: 32, offset: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3695, file: !3689, line: 364, baseType: !423, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3695, file: !3689, line: 367, baseType: !423, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3695, file: !3689, line: 370, baseType: !423, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3695, file: !3689, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3695, file: !3689, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3695, file: !3689, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3695, file: !3689, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3695, file: !3689, line: 397, baseType: !3707, size: 32768, offset: 512)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3689, line: 348, size: 32768, elements: !3708)
!3708 = !{!3709, !3724, !3763, !3840, !3853}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3707, file: !3689, line: 349, baseType: !3710, size: 896)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3689, line: 12, size: 896, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3723}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3710, file: !3689, line: 13, baseType: !133, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3710, file: !3689, line: 14, baseType: !133, size: 32, offset: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3710, file: !3689, line: 15, baseType: !133, size: 32, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3710, file: !3689, line: 16, baseType: !133, size: 32, offset: 96)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3710, file: !3689, line: 17, baseType: !133, size: 32, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3710, file: !3689, line: 18, baseType: !133, size: 32, offset: 160)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3710, file: !3689, line: 19, baseType: !133, size: 32, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3710, file: !3689, line: 22, baseType: !3720, size: 640, offset: 224)
!3720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 640, elements: !3721)
!3721 = !{!3722}
!3722 = !DISubrange(count: 20)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3710, file: !3689, line: 25, baseType: !133, size: 32, offset: 864)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3707, file: !3689, line: 350, baseType: !3725, size: 4096, align: 128)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3689, line: 34, size: 4096, align: 128, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3746, !3747, !3748, !3752, !3754, !3758}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3725, file: !3689, line: 35, baseType: !247, size: 16)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3725, file: !3689, line: 36, baseType: !247, size: 16, offset: 16)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3725, file: !3689, line: 37, baseType: !247, size: 16, offset: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3725, file: !3689, line: 38, baseType: !247, size: 16, offset: 48)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !3689, line: 39, baseType: !3732, size: 128, offset: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !3689, line: 39, size: 128, elements: !3733)
!3733 = !{!3734, !3739}
!3734 = !DIDerivedType(tag: DW_TAG_member, scope: !3732, file: !3689, line: 40, baseType: !3735, size: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3732, file: !3689, line: 40, size: 128, elements: !3736)
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3735, file: !3689, line: 41, baseType: !423, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3735, file: !3689, line: 42, baseType: !423, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3732, file: !3689, line: 44, baseType: !3740, size: 128)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3732, file: !3689, line: 44, size: 128, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3740, file: !3689, line: 45, baseType: !133, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3740, file: !3689, line: 46, baseType: !133, size: 32, offset: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3740, file: !3689, line: 47, baseType: !133, size: 32, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3740, file: !3689, line: 48, baseType: !133, size: 32, offset: 96)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3725, file: !3689, line: 51, baseType: !133, size: 32, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3725, file: !3689, line: 52, baseType: !133, size: 32, offset: 224)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3725, file: !3689, line: 55, baseType: !3749, size: 1024, offset: 256)
!3749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !3750)
!3750 = !{!3751}
!3751 = !DISubrange(count: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3725, file: !3689, line: 58, baseType: !3753, size: 2048, offset: 1280)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2048, elements: !977)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3725, file: !3689, line: 60, baseType: !3755, size: 384, offset: 3328)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, elements: !3756)
!3756 = !{!3757}
!3757 = !DISubrange(count: 12)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !3689, line: 62, baseType: !3759, size: 384, offset: 3712)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !3689, line: 62, size: 384, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3759, file: !3689, line: 63, baseType: !3755, size: 384)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3759, file: !3689, line: 64, baseType: !3755, size: 384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3707, file: !3689, line: 351, baseType: !3764, size: 1088)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3689, line: 79, size: 1088, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3839}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3764, file: !3689, line: 80, baseType: !133, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3764, file: !3689, line: 81, baseType: !133, size: 32, offset: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3764, file: !3689, line: 82, baseType: !133, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3764, file: !3689, line: 83, baseType: !133, size: 32, offset: 96)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3764, file: !3689, line: 84, baseType: !133, size: 32, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3764, file: !3689, line: 85, baseType: !133, size: 32, offset: 160)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3764, file: !3689, line: 86, baseType: !133, size: 32, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3764, file: !3689, line: 88, baseType: !3720, size: 640, offset: 224)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3764, file: !3689, line: 89, baseType: !239, size: 8, offset: 864)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3764, file: !3689, line: 90, baseType: !239, size: 8, offset: 872)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3764, file: !3689, line: 91, baseType: !239, size: 8, offset: 880)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3764, file: !3689, line: 92, baseType: !239, size: 8, offset: 888)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3764, file: !3689, line: 93, baseType: !239, size: 8, offset: 896)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3764, file: !3689, line: 94, baseType: !239, size: 8, offset: 904)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3764, file: !3689, line: 95, baseType: !3781, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3783, line: 11, size: 128, elements: !3784)
!3783 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3784 = !{!3785, !3786}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3782, file: !3783, line: 12, baseType: !792, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3782, file: !3783, line: 13, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3789, line: 103, size: 1344, elements: !3790)
!3789 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3790 = !{!3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3819, !3820, !3821}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3788, file: !3789, line: 109, baseType: !199, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3788, file: !3789, line: 110, baseType: !199, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3788, file: !3789, line: 111, baseType: !199, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3788, file: !3789, line: 112, baseType: !199, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3788, file: !3789, line: 113, baseType: !199, size: 64, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3788, file: !3789, line: 114, baseType: !199, size: 64, offset: 320)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3788, file: !3789, line: 117, baseType: !199, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3788, file: !3789, line: 118, baseType: !199, size: 64, offset: 448)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3788, file: !3789, line: 119, baseType: !199, size: 64, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3788, file: !3789, line: 120, baseType: !199, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3788, file: !3789, line: 121, baseType: !199, size: 64, offset: 640)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3788, file: !3789, line: 122, baseType: !199, size: 64, offset: 704)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3788, file: !3789, line: 123, baseType: !199, size: 64, offset: 768)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3788, file: !3789, line: 124, baseType: !199, size: 64, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3788, file: !3789, line: 125, baseType: !199, size: 64, offset: 896)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3788, file: !3789, line: 139, baseType: !199, size: 64, offset: 960)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3788, file: !3789, line: 142, baseType: !199, size: 64, offset: 1024)
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !3788, file: !3789, line: 144, baseType: !3809, size: 64, offset: 1088)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3788, file: !3789, line: 144, size: 64, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3809, file: !3789, line: 146, baseType: !247, size: 16)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3809, file: !3789, line: 148, baseType: !423, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3809, file: !3789, line: 150, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3789, line: 59, size: 64, elements: !3815)
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3814, file: !3789, line: 61, baseType: !423, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3814, file: !3789, line: 63, baseType: !423, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3814, file: !3789, line: 65, baseType: !423, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3788, file: !3789, line: 153, baseType: !199, size: 64, offset: 1152)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3788, file: !3789, line: 154, baseType: !199, size: 64, offset: 1216)
!3821 = !DIDerivedType(tag: DW_TAG_member, scope: !3788, file: !3789, line: 156, baseType: !3822, size: 64, offset: 1280)
!3822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3788, file: !3789, line: 156, size: 64, elements: !3823)
!3823 = !{!3824, !3825, !3826}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3822, file: !3789, line: 158, baseType: !247, size: 16)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3822, file: !3789, line: 160, baseType: !423, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3822, file: !3789, line: 162, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3789, line: 69, size: 64, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3827, file: !3789, line: 71, baseType: !423, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3827, file: !3789, line: 73, baseType: !423, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3827, file: !3789, line: 75, baseType: !423, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3827, file: !3789, line: 77, baseType: !423, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3827, file: !3789, line: 80, baseType: !423, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3827, file: !3789, line: 83, baseType: !423, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3827, file: !3789, line: 86, baseType: !423, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3827, file: !3789, line: 88, baseType: !423, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3827, file: !3789, line: 93, baseType: !423, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3827, file: !3789, line: 100, baseType: !423, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3764, file: !3689, line: 96, baseType: !133, size: 32, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3707, file: !3689, line: 352, baseType: !3841, size: 4608, align: 512)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3689, line: 333, size: 4608, align: 512, elements: !3842)
!3842 = !{!3843, !3844, !3851}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3841, file: !3689, line: 334, baseType: !3725, size: 4096, align: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3841, file: !3689, line: 335, baseType: !3845, size: 512, offset: 4096)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3689, line: 312, size: 512, elements: !3846)
!3846 = !{!3847, !3848, !3849}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3845, file: !3689, line: 313, baseType: !423, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3845, file: !3689, line: 314, baseType: !423, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3845, file: !3689, line: 315, baseType: !3850, size: 384, offset: 128)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !501)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3841, file: !3689, line: 336, baseType: !3852, offset: 4608)
!3852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !382)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3707, file: !3689, line: 353, baseType: !3854, size: 32768)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 32768, elements: !3855)
!3855 = !{!3856}
!3856 = !DISubrange(count: 4096)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3688, file: !3689, line: 484, baseType: !3694, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3688, file: !3689, line: 491, baseType: !3859, size: 128, offset: 256)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3689, line: 404, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3859, file: !3689, line: 424, baseType: !423, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3859, file: !3689, line: 432, baseType: !7, size: 32, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3859, file: !3689, line: 440, baseType: !7, size: 32, offset: 96)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3688, file: !3689, line: 498, baseType: !3859, size: 128, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3688, file: !3689, line: 508, baseType: !3695, size: 33280, align: 512, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2626, file: !2627, line: 16, baseType: !367, size: 192, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2626, file: !2627, line: 17, baseType: !128, size: 32, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !888, file: !59, line: 1240, baseType: !103, size: 64, offset: 6912)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !888, file: !59, line: 1243, baseType: !133, size: 32, offset: 6976)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !888, file: !59, line: 1245, baseType: !471, size: 64, offset: 7040)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !888, file: !59, line: 1246, baseType: !471, size: 64, offset: 7104)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !888, file: !59, line: 1248, baseType: !135, size: 32, offset: 7168)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !888, file: !59, line: 1249, baseType: !3874, size: 64, offset: 7232)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !888, file: !59, line: 1252, baseType: !3877, size: 256, offset: 7296)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !3750)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !888, file: !59, line: 1253, baseType: !3879, size: 128, offset: 7552)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3880, line: 21, baseType: !3881)
!3880 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3880, line: 19, size: 128, elements: !3882)
!3882 = !{!3883}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3881, file: !3880, line: 20, baseType: !3884, size: 128)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 128, elements: !3063)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !888, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !888, file: !59, line: 1261, baseType: !209, size: 256, offset: 7744)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !888, file: !59, line: 1267, baseType: !517, size: 64, offset: 8000)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !888, file: !59, line: 1269, baseType: !3889, size: 64, offset: 8064)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3891)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !639, line: 128, size: 1024, align: 512, elements: !3892)
!3892 = !{!3893, !3897, !3898, !3905, !3911, !3915, !3919, !3923, !3924, !3928, !3932, !3937, !3941}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3891, file: !639, line: 129, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!114, !637, !7}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3891, file: !639, line: 130, baseType: !3894, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3891, file: !639, line: 131, baseType: !3899, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!114, !3902, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3891, file: !639, line: 132, baseType: !3906, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!114, !3902, !7, !517, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3891, file: !639, line: 134, baseType: !3912, size: 64, offset: 256)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!114, !3902}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3891, file: !639, line: 135, baseType: !3916, size: 64, offset: 320)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!114, !637}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3891, file: !639, line: 136, baseType: !3920, size: 64, offset: 384)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !637}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3891, file: !639, line: 137, baseType: !3920, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3891, file: !639, line: 138, baseType: !3925, size: 64, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !637, !677}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3891, file: !639, line: 139, baseType: !3929, size: 64, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!193, !637, !193, !114}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3891, file: !639, line: 140, baseType: !3933, size: 64, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!632, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3891, file: !639, line: 141, baseType: !3938, size: 64, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!114, !801, !514}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3891, file: !639, line: 142, baseType: !3942, size: 64, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!637, !637, !3945}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !888, file: !59, line: 1271, baseType: !3948, size: 448, offset: 8128)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2408, line: 63, size: 448, elements: !3949)
!3949 = !{!3950, !3955, !3956, !3957, !3958, !3959, !3960}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3948, file: !2408, line: 64, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!199, !3954, !2406}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3948, file: !2408, line: 66, baseType: !3951, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3948, file: !2408, line: 69, baseType: !792, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3948, file: !2408, line: 70, baseType: !114, size: 32, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3948, file: !2408, line: 71, baseType: !7, size: 32, offset: 224)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3948, file: !2408, line: 74, baseType: !148, size: 128, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3948, file: !2408, line: 85, baseType: !3961, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !888, file: !59, line: 1274, baseType: !213, size: 64, offset: 8576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !888, file: !59, line: 1280, baseType: !213, size: 64, offset: 8640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !888, file: !59, line: 1283, baseType: !114, size: 32, offset: 8704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !888, file: !59, line: 1286, baseType: !1763, size: 32, offset: 8736)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !888, file: !59, line: 1289, baseType: !2229, size: 64, offset: 8768)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !888, file: !59, line: 1290, baseType: !354, size: 64, offset: 8832)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !888, file: !59, line: 1297, baseType: !599, size: 64, offset: 8896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !888, file: !59, line: 1304, baseType: !3970, size: 64, offset: 8960)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3971, line: 49, size: 64, elements: !3972)
!3971 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3972 = !{!3973}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3970, file: !3971, line: 50, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3971, line: 41, size: 512, align: 512, elements: !3976)
!3976 = !{!3977, !3978, !3983}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3975, file: !3971, line: 43, baseType: !305, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3975, file: !3971, line: 45, baseType: !3979, size: 192, offset: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3971, line: 29, size: 192, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3979, file: !3971, line: 30, baseType: !148, size: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3979, file: !3971, line: 32, baseType: !792, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3975, file: !3971, line: 46, baseType: !792, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !888, file: !59, line: 1305, baseType: !3970, size: 64, offset: 9024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !888, file: !59, line: 1306, baseType: !295, size: 128, align: 64, offset: 9088)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !888, file: !59, line: 1307, baseType: !1353, size: 256, offset: 9216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !888, file: !59, line: 1309, baseType: !209, size: 256, offset: 9472)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !888, file: !59, line: 1314, baseType: !114, size: 32, offset: 9728)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !888, file: !59, line: 1317, baseType: !305, size: 32, align: 512, offset: 10240)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !888, file: !59, line: 1318, baseType: !148, size: 128, offset: 10304)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !888, file: !59, line: 1320, baseType: !305, size: 32, offset: 10432)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !888, file: !59, line: 1321, baseType: !148, size: 128, offset: 10496)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !678, file: !59, line: 656, baseType: !1038, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !678, file: !59, line: 659, baseType: !103, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !678, file: !59, line: 663, baseType: !199, size: 64, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !59, line: 671, baseType: !3997, size: 32, offset: 704)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !59, line: 671, size: 32, elements: !3998)
!3998 = !{!3999, !4001}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3997, file: !59, line: 672, baseType: !4000, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3997, file: !59, line: 673, baseType: !7, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !678, file: !59, line: 675, baseType: !752, size: 32, offset: 736)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !678, file: !59, line: 676, baseType: !204, size: 64, offset: 768)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !678, file: !59, line: 677, baseType: !788, size: 128, offset: 832)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !678, file: !59, line: 678, baseType: !788, size: 128, offset: 960)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !678, file: !59, line: 679, baseType: !788, size: 128, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !678, file: !59, line: 680, baseType: !305, size: 32, offset: 1216)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !678, file: !59, line: 681, baseType: !249, size: 16, offset: 1248)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !678, file: !59, line: 682, baseType: !239, size: 8, offset: 1264)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !678, file: !59, line: 683, baseType: !239, size: 8, offset: 1272)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !678, file: !59, line: 684, baseType: !2539, size: 64, offset: 1280)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !678, file: !59, line: 691, baseType: !199, size: 64, offset: 1344)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !678, file: !59, line: 692, baseType: !455, size: 320, offset: 1408)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !678, file: !59, line: 694, baseType: !199, size: 64, offset: 1728)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !678, file: !59, line: 695, baseType: !199, size: 64, offset: 1792)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !678, file: !59, line: 697, baseType: !358, size: 128, offset: 1856)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !678, file: !59, line: 698, baseType: !148, size: 128, offset: 1984)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !678, file: !59, line: 707, baseType: !148, size: 128, offset: 2112)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !678, file: !59, line: 708, baseType: !148, size: 128, offset: 2240)
!4020 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !59, line: 709, baseType: !4021, size: 128, offset: 2368)
!4021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !59, line: 709, size: 128, elements: !4022)
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4021, file: !59, line: 710, baseType: !354, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4021, file: !59, line: 711, baseType: !295, size: 128, align: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !678, file: !59, line: 713, baseType: !215, size: 64, offset: 2496)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !678, file: !59, line: 714, baseType: !215, size: 64, offset: 2560)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !678, file: !59, line: 715, baseType: !128, size: 32, offset: 2624)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !678, file: !59, line: 716, baseType: !128, size: 32, offset: 2656)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !678, file: !59, line: 717, baseType: !128, size: 32, offset: 2688)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !678, file: !59, line: 719, baseType: !128, size: 32, offset: 2720)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !59, line: 721, baseType: !4032, size: 64, offset: 2752)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !59, line: 721, size: 64, elements: !4033)
!4033 = !{!4034, !4158}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4032, file: !59, line: 722, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !4038)
!4038 = !{!4039, !4040, !4044, !4048, !4052, !4053, !4054, !4060, !4073, !4077, !4081, !4082, !4086, !4087, !4091, !4096, !4097, !4101, !4105, !4111, !4112, !4116, !4117, !4121, !4125, !4126, !4131, !4135, !4139, !4143, !4147, !4148, !4154}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4037, file: !59, line: 1915, baseType: !921, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4037, file: !59, line: 1916, baseType: !4041, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!204, !796, !204, !114}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4037, file: !59, line: 1917, baseType: !4045, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!832, !796, !193, !195, !266}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4037, file: !59, line: 1918, baseType: !4049, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!832, !796, !517, !195, !266}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4037, file: !59, line: 1919, baseType: !1642, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4037, file: !59, line: 1920, baseType: !1642, size: 64, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4037, file: !59, line: 1921, baseType: !4055, size: 64, offset: 384)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!114, !1645, !4058, !7}
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4037, file: !59, line: 1923, baseType: !4061, size: 64, offset: 448)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!114, !796, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !4066)
!4066 = !{!4067, !4072}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4065, file: !59, line: 1859, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !4069)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!514, !4064, !517, !114, !204, !423, !7}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4065, file: !59, line: 1860, baseType: !204, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4037, file: !59, line: 1924, baseType: !4074, size: 64, offset: 512)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!1893, !796, !1895}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4037, file: !59, line: 1925, baseType: !4078, size: 64, offset: 576)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!792, !796, !7, !199}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4037, file: !59, line: 1926, baseType: !4078, size: 64, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4037, file: !59, line: 1927, baseType: !4083, size: 64, offset: 704)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!114, !796, !1185}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4037, file: !59, line: 1928, baseType: !199, size: 64, offset: 768)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4037, file: !59, line: 1929, baseType: !4088, size: 64, offset: 832)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!114, !677, !796}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4037, file: !59, line: 1930, baseType: !4092, size: 64, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!114, !796, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !103)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4037, file: !59, line: 1931, baseType: !4088, size: 64, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4037, file: !59, line: 1932, baseType: !4098, size: 64, offset: 1024)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!114, !796, !204, !204, !114}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4037, file: !59, line: 1933, baseType: !4102, size: 64, offset: 1088)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!114, !114, !796, !114}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4037, file: !59, line: 1934, baseType: !4106, size: 64, offset: 1152)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!114, !796, !114, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4037, file: !59, line: 1935, baseType: !1223, size: 64, offset: 1216)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4037, file: !59, line: 1936, baseType: !4113, size: 64, offset: 1280)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!114, !114}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4037, file: !59, line: 1937, baseType: !4106, size: 64, offset: 1344)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4037, file: !59, line: 1938, baseType: !4118, size: 64, offset: 1408)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!832, !3513, !796, !266, !195, !7}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4037, file: !59, line: 1939, baseType: !4122, size: 64, offset: 1472)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!832, !796, !266, !3513, !195, !7}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4037, file: !59, line: 1940, baseType: !1753, size: 64, offset: 1536)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4037, file: !59, line: 1941, baseType: !4127, size: 64, offset: 1600)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!114, !796, !114, !4130, !1619}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4037, file: !59, line: 1942, baseType: !4132, size: 64, offset: 1664)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!792, !796, !114, !204, !204}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4037, file: !59, line: 1944, baseType: !4136, size: 64, offset: 1728)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !188, !796}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4037, file: !59, line: 1948, baseType: !4140, size: 64, offset: 1792)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!832, !796, !204, !796, !204, !195, !7}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4037, file: !59, line: 1950, baseType: !4144, size: 64, offset: 1856)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!204, !796, !204, !796, !204, !204, !7}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4037, file: !59, line: 1953, baseType: !4098, size: 64, offset: 1920)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4037, file: !59, line: 1954, baseType: !4149, size: 64, offset: 1984)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!114, !4152, !7}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4037, file: !59, line: 1955, baseType: !4155, size: 64, offset: 2048)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!114, !4152, !4058, !7}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4032, file: !59, line: 723, baseType: !2297, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !678, file: !59, line: 725, baseType: !4160, size: 64, offset: 2816)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !678, file: !59, line: 726, baseType: !1039, size: 1536, align: 64, offset: 2880)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !678, file: !59, line: 727, baseType: !148, size: 128, offset: 4416)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !59, line: 728, baseType: !4165, size: 64, offset: 4544)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !59, line: 728, size: 64, elements: !4166)
!4166 = !{!4167, !4168, !4171, !4172}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4165, file: !59, line: 729, baseType: !3513, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4165, file: !59, line: 730, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4165, file: !59, line: 731, baseType: !193, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4165, file: !59, line: 732, baseType: !7, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !678, file: !59, line: 735, baseType: !135, size: 32, offset: 4608)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !678, file: !59, line: 738, baseType: !135, size: 32, offset: 4640)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !678, file: !59, line: 739, baseType: !3874, size: 64, offset: 4672)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !678, file: !59, line: 750, baseType: !103, size: 64, offset: 4736)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !638, file: !639, line: 91, baseType: !4178, size: 256, offset: 448)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !3750)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !638, file: !639, line: 94, baseType: !4180, size: 64, offset: 704)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4181, line: 25, size: 64, elements: !4182)
!4181 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4182 = !{!4183}
!4183 = !DIDerivedType(tag: DW_TAG_member, scope: !4180, file: !4181, line: 26, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4180, file: !4181, line: 26, size: 64, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4184, file: !4181, line: 28, baseType: !424, size: 64, align: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, scope: !4184, file: !4181, line: 30, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4184, file: !4181, line: 30, size: 64, elements: !4189)
!4189 = !{!4190, !4191}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4188, file: !4181, line: 31, baseType: !305, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4188, file: !4181, line: 32, baseType: !114, size: 32, offset: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !638, file: !639, line: 95, baseType: !3889, size: 64, offset: 768)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !638, file: !639, line: 96, baseType: !887, size: 64, offset: 832)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !638, file: !639, line: 97, baseType: !199, size: 64, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !638, file: !639, line: 98, baseType: !103, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !639, line: 100, baseType: !4197, size: 128, offset: 1024)
!4197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !639, line: 100, size: 128, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4197, file: !639, line: 101, baseType: !148, size: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4197, file: !639, line: 102, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !638, file: !639, line: 104, baseType: !148, size: 128, offset: 1152)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !638, file: !639, line: 105, baseType: !148, size: 128, offset: 1280)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !638, file: !639, line: 113, baseType: !4205, size: 128, offset: 1408)
!4205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !639, line: 109, size: 128, elements: !4206)
!4206 = !{!4207, !4208, !4209}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4205, file: !639, line: 110, baseType: !358, size: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4205, file: !639, line: 111, baseType: !653, size: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4205, file: !639, line: 112, baseType: !295, size: 128, align: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !633, file: !634, line: 72, baseType: !887, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !633, file: !634, line: 73, baseType: !114, size: 32, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !633, file: !634, line: 74, baseType: !717, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !628, file: !629, line: 10, baseType: !637, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !283, file: !59, line: 1015, baseType: !677, size: 64, offset: 1344)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !283, file: !59, line: 1016, baseType: !4035, size: 64, offset: 1408)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !283, file: !59, line: 1018, baseType: !423, size: 64, offset: 1472)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !283, file: !59, line: 1020, baseType: !103, size: 64, offset: 1536)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !283, file: !59, line: 1023, baseType: !103, size: 64, offset: 1600)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !283, file: !59, line: 1027, baseType: !4220, size: 64, offset: 1664)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !283, file: !59, line: 1029, baseType: !1038, size: 64, offset: 1728)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !283, file: !59, line: 1030, baseType: !1763, size: 32, offset: 1792)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !283, file: !59, line: 1031, baseType: !1763, size: 32, offset: 1824)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !189, file: !190, line: 29, baseType: !103, size: 64, offset: 896)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !169, file: !170, line: 62, baseType: !4226, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!114, !4229, !144}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !4231, line: 840, size: 1792, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!4232 = !{!4233, !4252, !4253, !4258, !4262, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4447, !4449, !4450, !4452, !4453, !4454, !4455}
!4233 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4231, line: 841, baseType: !4234, size: 192)
!4234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4231, line: 841, size: 192, elements: !4235)
!4235 = !{!4236, !4249, !4250, !4251}
!4236 = !DIDerivedType(tag: DW_TAG_member, scope: !4234, file: !4231, line: 842, baseType: !4237, size: 192)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4234, file: !4231, line: 842, size: 192, elements: !4238)
!4238 = !{!4239, !4240, !4241}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4237, file: !4231, line: 844, baseType: !4229, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4237, file: !4231, line: 845, baseType: !4229, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4237, file: !4231, line: 847, baseType: !4242, size: 64, offset: 128)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4237, file: !4231, line: 847, size: 64, elements: !4243)
!4243 = !{!4244, !4248}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4242, file: !4231, line: 848, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !4247, line: 8, flags: DIFlagFwdDecl)
!4247 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !4242, file: !4231, line: 853, baseType: !199, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !4234, file: !4231, line: 856, baseType: !447, size: 192, align: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4234, file: !4231, line: 857, baseType: !148, size: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !4234, file: !4231, line: 858, baseType: !289, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !4230, file: !4231, line: 861, baseType: !1802, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4231, line: 863, baseType: !4254, size: 64, offset: 256)
!4254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4231, line: 863, size: 64, elements: !4255)
!4255 = !{!4256, !4257}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !4254, file: !4231, line: 864, baseType: !2763, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !4254, file: !4231, line: 865, baseType: !423, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !4230, file: !4231, line: 873, baseType: !4259, size: 384, align: 64, offset: 320)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !4260)
!4260 = !{!4261}
!4261 = !DISubrange(count: 48)
!4262 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4231, line: 875, baseType: !4263, size: 128, offset: 704)
!4263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4231, line: 875, size: 128, elements: !4264)
!4264 = !{!4265, !4273}
!4265 = !DIDerivedType(tag: DW_TAG_member, scope: !4263, file: !4231, line: 876, baseType: !4266, size: 128)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4263, file: !4231, line: 876, size: 128, elements: !4267)
!4267 = !{!4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !4266, file: !4231, line: 877, baseType: !199, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !4266, file: !4231, line: 878, baseType: !4270, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4229}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !4263, file: !4231, line: 880, baseType: !148, size: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !4230, file: !4231, line: 887, baseType: !199, size: 64, offset: 832)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4230, file: !4231, line: 889, baseType: !7, size: 32, offset: 896)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !4230, file: !4231, line: 890, baseType: !7, size: 32, offset: 928)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !4230, file: !4231, line: 891, baseType: !248, size: 16, offset: 960)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !4230, file: !4231, line: 892, baseType: !248, size: 16, offset: 976)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !4230, file: !4231, line: 897, baseType: !248, size: 16, offset: 992)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !4230, file: !4231, line: 908, baseType: !4281, offset: 1008)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, elements: !4282)
!4282 = !{!4283}
!4283 = !DISubrange(count: 0)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !4230, file: !4231, line: 910, baseType: !240, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !4230, file: !4231, line: 911, baseType: !240, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !4230, file: !4231, line: 912, baseType: !240, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !4230, file: !4231, line: 913, baseType: !240, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !4230, file: !4231, line: 914, baseType: !240, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !4230, file: !4231, line: 915, baseType: !240, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !4230, file: !4231, line: 916, baseType: !240, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !4230, file: !4231, line: 918, baseType: !240, size: 8, offset: 1016)
!4292 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4231, line: 924, baseType: !4293, size: 448, offset: 1024)
!4293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4231, line: 924, size: 448, elements: !4294)
!4294 = !{!4295, !4372}
!4295 = !DIDerivedType(tag: DW_TAG_member, scope: !4293, file: !4231, line: 924, baseType: !4296, size: 448)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4293, file: !4231, line: 924, size: 448, elements: !4297)
!4297 = !{!4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4336, !4337, !4338, !4339, !4349, !4354, !4355, !4360, !4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4296, file: !4231, line: 924, baseType: !4281)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4296, file: !4231, line: 924, baseType: !240, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4296, file: !4231, line: 924, baseType: !240, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4296, file: !4231, line: 924, baseType: !4281, offset: 8)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4296, file: !4231, line: 924, baseType: !240, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4296, file: !4231, line: 924, baseType: !240, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4296, file: !4231, line: 924, baseType: !240, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4296, file: !4231, line: 924, baseType: !247, size: 16, offset: 48)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4231, line: 924, baseType: !4327, size: 32, offset: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4231, line: 924, size: 32, elements: !4328)
!4328 = !{!4329, !4331}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4327, file: !4231, line: 924, baseType: !4330, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !1894, line: 44, baseType: !135)
!4331 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !4231, line: 924, baseType: !4332, size: 32)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4231, line: 924, size: 32, elements: !4333)
!4333 = !{!4334, !4335}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4332, file: !4231, line: 924, baseType: !248, size: 16)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4332, file: !4231, line: 924, baseType: !248, size: 16, offset: 16)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4296, file: !4231, line: 924, baseType: !135, size: 32, offset: 96)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4296, file: !4231, line: 924, baseType: !114, size: 32, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4296, file: !4231, line: 924, baseType: !135, size: 32, offset: 160)
!4339 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4231, line: 924, baseType: !4340, size: 32, offset: 192)
!4340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4231, line: 924, size: 32, elements: !4341)
!4341 = !{!4342, !4343}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4340, file: !4231, line: 924, baseType: !133, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, scope: !4340, file: !4231, line: 924, baseType: !4344, size: 32)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4340, file: !4231, line: 924, size: 32, elements: !4345)
!4345 = !{!4346, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4344, file: !4231, line: 924, baseType: !4347, size: 16)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !1894, line: 37, baseType: !248)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4344, file: !4231, line: 924, baseType: !248, size: 16, offset: 16)
!4349 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4231, line: 924, baseType: !4350, size: 32, offset: 224)
!4350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4231, line: 924, size: 32, elements: !4351)
!4351 = !{!4352, !4353}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4350, file: !4231, line: 924, baseType: !7, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4350, file: !4231, line: 924, baseType: !7, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4296, file: !4231, line: 924, baseType: !135, size: 32, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4231, line: 924, baseType: !4356, size: 32, offset: 288)
!4356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4231, line: 924, size: 32, elements: !4357)
!4357 = !{!4358, !4359}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4356, file: !4231, line: 924, baseType: !135, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4356, file: !4231, line: 924, baseType: !135, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4231, line: 924, baseType: !4361, size: 16, offset: 320)
!4361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4231, line: 924, size: 16, elements: !4362)
!4362 = !{!4363, !4364}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4361, file: !4231, line: 924, baseType: !4347, size: 16)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4361, file: !4231, line: 924, baseType: !240, size: 8)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 336)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 352)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 368)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4296, file: !4231, line: 924, baseType: !4347, size: 16, offset: 384)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 400)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 416)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4296, file: !4231, line: 924, baseType: !248, size: 16, offset: 432)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !4293, file: !4231, line: 924, baseType: !4373, size: 448)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4293, file: !4231, line: 924, size: 448, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4412, !4413, !4414, !4415, !4424, !4429, !4430, !4435, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4373, file: !4231, line: 924, baseType: !4281)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4373, file: !4231, line: 924, baseType: !240, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4373, file: !4231, line: 924, baseType: !240, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4373, file: !4231, line: 924, baseType: !4281, offset: 8)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4373, file: !4231, line: 924, baseType: !240, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4373, file: !4231, line: 924, baseType: !240, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4373, file: !4231, line: 924, baseType: !240, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4373, file: !4231, line: 924, baseType: !247, size: 16, offset: 48)
!4403 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4231, line: 924, baseType: !4404, size: 32, offset: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !4231, line: 924, size: 32, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4404, file: !4231, line: 924, baseType: !4330, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, scope: !4404, file: !4231, line: 924, baseType: !4408, size: 32)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4404, file: !4231, line: 924, size: 32, elements: !4409)
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4408, file: !4231, line: 924, baseType: !248, size: 16)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4408, file: !4231, line: 924, baseType: !248, size: 16, offset: 16)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4373, file: !4231, line: 924, baseType: !135, size: 32, offset: 96)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4373, file: !4231, line: 924, baseType: !114, size: 32, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4373, file: !4231, line: 924, baseType: !135, size: 32, offset: 160)
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4231, line: 924, baseType: !4416, size: 32, offset: 192)
!4416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !4231, line: 924, size: 32, elements: !4417)
!4417 = !{!4418, !4419}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4416, file: !4231, line: 924, baseType: !133, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, scope: !4416, file: !4231, line: 924, baseType: !4420, size: 32)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4416, file: !4231, line: 924, size: 32, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4420, file: !4231, line: 924, baseType: !4347, size: 16)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4420, file: !4231, line: 924, baseType: !248, size: 16, offset: 16)
!4424 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4231, line: 924, baseType: !4425, size: 32, offset: 224)
!4425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !4231, line: 924, size: 32, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4425, file: !4231, line: 924, baseType: !7, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4425, file: !4231, line: 924, baseType: !7, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4373, file: !4231, line: 924, baseType: !135, size: 32, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4231, line: 924, baseType: !4431, size: 32, offset: 288)
!4431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !4231, line: 924, size: 32, elements: !4432)
!4432 = !{!4433, !4434}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4431, file: !4231, line: 924, baseType: !135, size: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4431, file: !4231, line: 924, baseType: !135, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4231, line: 924, baseType: !4436, size: 16, offset: 320)
!4436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !4231, line: 924, size: 16, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4436, file: !4231, line: 924, baseType: !4347, size: 16)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4436, file: !4231, line: 924, baseType: !240, size: 8)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 336)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 352)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 368)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4373, file: !4231, line: 924, baseType: !4347, size: 16, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 400)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 416)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4373, file: !4231, line: 924, baseType: !248, size: 16, offset: 432)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4230, file: !4231, line: 1047, baseType: !4448, size: 32, offset: 1472)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !4231, line: 683, baseType: !7)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4230, file: !4231, line: 1048, baseType: !4448, size: 32, offset: 1504)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4230, file: !4231, line: 1049, baseType: !4451, size: 64, offset: 1536)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4230, file: !4231, line: 1050, baseType: !4451, size: 64, offset: 1600)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !4230, file: !4231, line: 1051, baseType: !7, size: 32, offset: 1664)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4230, file: !4231, line: 1052, baseType: !123, size: 32, offset: 1696)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !4230, file: !4231, line: 1056, baseType: !4456, size: 64, offset: 1728)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !4231, line: 4679, size: 64, elements: !4458)
!4458 = !{!4459, !4460, !4462, !4463}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4457, file: !4231, line: 4680, baseType: !123, size: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4457, file: !4231, line: 4681, baseType: !4461, size: 8, offset: 32)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 8, elements: !2876)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !4457, file: !4231, line: 4682, baseType: !239, size: 8, offset: 40)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4457, file: !4231, line: 4683, baseType: !3492, align: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !169, file: !170, line: 63, baseType: !4465, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4468}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !170, line: 74, size: 3520, elements: !4470)
!4470 = !{!4471, !4472, !4487, !4506, !4507}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4469, file: !170, line: 75, baseType: !145, size: 3072, align: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !4469, file: !170, line: 77, baseType: !4473, size: 64, offset: 3072)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !170, line: 91, size: 1344, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4479, !4486}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4474, file: !170, line: 92, baseType: !148, size: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !4474, file: !170, line: 93, baseType: !354, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4474, file: !170, line: 94, baseType: !921, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4474, file: !170, line: 96, baseType: !4480, size: 64, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!114, !4473, !4483}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !170, line: 52, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4474, file: !170, line: 98, baseType: !161, size: 1024, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, scope: !4469, file: !170, line: 79, baseType: !4488, size: 128, offset: 3136)
!4488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4469, file: !170, line: 79, size: 128, elements: !4489)
!4489 = !{!4490, !4491}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4488, file: !170, line: 81, baseType: !358, size: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !4488, file: !170, line: 83, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !170, line: 101, size: 384, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4502, !4503, !4504, !4505}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4493, file: !170, line: 102, baseType: !148, size: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4493, file: !170, line: 103, baseType: !144, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, scope: !4493, file: !170, line: 104, baseType: !4498, size: 64, offset: 192)
!4498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4493, file: !170, line: 104, size: 64, elements: !4499)
!4499 = !{!4500, !4501}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !4498, file: !170, line: 106, baseType: !4468, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4498, file: !170, line: 108, baseType: !4492, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4493, file: !170, line: 110, baseType: !167, size: 64, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4493, file: !170, line: 111, baseType: !133, size: 32, offset: 320)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4493, file: !170, line: 112, baseType: !514, size: 8, offset: 352)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4493, file: !170, line: 113, baseType: !514, size: 8, offset: 360)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !4469, file: !170, line: 86, baseType: !1353, size: 256, offset: 3264)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4469, file: !170, line: 88, baseType: !4508, align: 64, offset: 3520)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !382)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !170, line: 68, baseType: !7, size: 32, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !169, file: !170, line: 69, baseType: !7, size: 32, offset: 416)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !169, file: !170, line: 70, baseType: !7, size: 32, offset: 448)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !169, file: !170, line: 71, baseType: !7, size: 32, offset: 480)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !145, file: !120, line: 363, baseType: !4514, size: 256, offset: 2560)
!4514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !120, line: 360, size: 256, elements: !4515)
!4515 = !{!4516, !4533}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !4514, file: !120, line: 361, baseType: !4517, size: 256)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !120, line: 235, size: 256, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4527, !4532}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !4517, file: !120, line: 236, baseType: !7, size: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !4517, file: !120, line: 237, baseType: !7, size: 32, offset: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !4517, file: !120, line: 238, baseType: !4522, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!114, !142, !4525, !7}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !4517, file: !120, line: 240, baseType: !4528, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !142, !4531, !4525}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !4517, file: !120, line: 241, baseType: !4528, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !4514, file: !120, line: 362, baseType: !4534, size: 128)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !120, line: 255, size: 128, elements: !4535)
!4535 = !{!4536, !4540}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !4534, file: !120, line: 256, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!114, !142, !4525, !7, !4531, !2019}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !4534, file: !120, line: 258, baseType: !4537, size: 64, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !145, file: !120, line: 365, baseType: !181, size: 64, offset: 2816)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !145, file: !120, line: 366, baseType: !139, size: 64, offset: 2880)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !145, file: !120, line: 367, baseType: !4544, size: 64, offset: 2944)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !144}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !145, file: !120, line: 369, baseType: !921, size: 64, offset: 3008)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !119, file: !120, line: 433, baseType: !4508, align: 64, offset: 256)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !107, file: !108, line: 62, baseType: !4550, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!114, !115, !4525, !7}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "set_ent", scope: !107, file: !108, line: 63, baseType: !4554, size: 64, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{null, !115, !4525, !7}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "seedsize", scope: !107, file: !108, line: 70, baseType: !7, size: 32, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !107, file: !108, line: 72, baseType: !145, size: 3072, align: 64, offset: 256)
!4559 = !{!4560, !4562, !4564, !4566, !4569, !4571, !4573, !4575, !4577, !4579, !4581, !4583, !4586, !4589, !0, !4594, !4596, !4601, !4603, !4606, !4611}
!4560 = !DIGlobalVariableExpression(var: !4561, expr: !DIExpression())
!4561 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_default_rng338", scope: !2, file: !3, line: 28, type: !103, isLocal: true, isDefinition: true)
!4562 = !DIGlobalVariableExpression(var: !4563, expr: !DIExpression())
!4563 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_rng_reset339", scope: !2, file: !3, line: 58, type: !103, isLocal: true, isDefinition: true)
!4564 = !DIGlobalVariableExpression(var: !4565, expr: !DIExpression())
!4565 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alloc_rng340", scope: !2, file: !3, line: 137, type: !103, isLocal: true, isDefinition: true)
!4566 = !DIGlobalVariableExpression(var: !4567, expr: !DIExpression())
!4567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !4568, isLocal: true, isDefinition: true)
!4568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 56, elements: !2059)
!4569 = !DIGlobalVariableExpression(var: !4570, expr: !DIExpression())
!4570 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_get_default_rng341", scope: !2, file: !3, line: 168, type: !103, isLocal: true, isDefinition: true)
!4571 = !DIGlobalVariableExpression(var: !4572, expr: !DIExpression())
!4572 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_put_default_rng342", scope: !2, file: !3, line: 176, type: !103, isLocal: true, isDefinition: true)
!4573 = !DIGlobalVariableExpression(var: !4574, expr: !DIExpression())
!4574 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_del_default_rng343", scope: !2, file: !3, line: 197, type: !103, isLocal: true, isDefinition: true)
!4575 = !DIGlobalVariableExpression(var: !4576, expr: !DIExpression())
!4576 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_register_rng344", scope: !2, file: !3, line: 217, type: !103, isLocal: true, isDefinition: true)
!4577 = !DIGlobalVariableExpression(var: !4578, expr: !DIExpression())
!4578 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_unregister_rng345", scope: !2, file: !3, line: 223, type: !103, isLocal: true, isDefinition: true)
!4579 = !DIGlobalVariableExpression(var: !4580, expr: !DIExpression())
!4580 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_register_rngs346", scope: !2, file: !3, line: 243, type: !103, isLocal: true, isDefinition: true)
!4581 = !DIGlobalVariableExpression(var: !4582, expr: !DIExpression())
!4582 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_unregister_rngs347", scope: !2, file: !3, line: 252, type: !103, isLocal: true, isDefinition: true)
!4583 = !DIGlobalVariableExpression(var: !4584, expr: !DIExpression())
!4584 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file348", scope: !2, file: !3, line: 254, type: !4585, isLocal: true, isDefinition: true, align: 8)
!4585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 160, elements: !3721)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license349", scope: !2, file: !3, line: 254, type: !4588, isLocal: true, isDefinition: true, align: 8)
!4588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 128, elements: !3063)
!4589 = !DIGlobalVariableExpression(var: !4590, expr: !DIExpression())
!4590 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description350", scope: !2, file: !3, line: 255, type: !4591, isLocal: true, isDefinition: true, align: 8)
!4591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 320, elements: !4592)
!4592 = !{!4593}
!4593 = !DISubrange(count: 40)
!4594 = !DIGlobalVariableExpression(var: !4595, expr: !DIExpression())
!4595 = distinct !DIGlobalVariable(name: "crypto_default_rng_refcnt", scope: !2, file: !3, line: 29, type: !114, isLocal: true, isDefinition: true)
!4596 = !DIGlobalVariableExpression(var: !4597, expr: !DIExpression())
!4597 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4598, isLocal: true, isDefinition: true)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 168, elements: !4599)
!4599 = !{!4600}
!4600 = !DISubrange(count: 21)
!4601 = !DIGlobalVariableExpression(var: !4602, expr: !DIExpression())
!4602 = distinct !DIGlobalVariable(name: "crypto_rng_type", scope: !2, file: !3, line: 115, type: !168, isLocal: true, isDefinition: true)
!4603 = !DIGlobalVariableExpression(var: !4604, expr: !DIExpression())
!4604 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4605, isLocal: true, isDefinition: true)
!4605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 160, elements: !3721)
!4606 = !DIGlobalVariableExpression(var: !4607, expr: !DIExpression())
!4607 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !4608, isLocal: true, isDefinition: true)
!4608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 152, elements: !4609)
!4609 = !{!4610}
!4610 = !DISubrange(count: 19)
!4611 = !DIGlobalVariableExpression(var: !4612, expr: !DIExpression())
!4612 = distinct !DIGlobalVariable(name: "crypto_default_rng_lock", scope: !2, file: !3, line: 26, type: !209, isLocal: true, isDefinition: true)
!4613 = !{i32 7, !"Dwarf Version", i32 5}
!4614 = !{i32 2, !"Debug Info Version", i32 3}
!4615 = !{i32 1, !"wchar_size", i32 2}
!4616 = !{i32 8, !"cf-protection-branch", i32 1}
!4617 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4618 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4619 = !{i32 1, !"Code Model", i32 2}
!4620 = !{i32 1, !"override-stack-alignment", i32 8}
!4621 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4622 = distinct !DISubprogram(name: "crypto_rng_reset", scope: !3, file: !3, line: 31, type: !4551, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4623)
!4623 = !{!4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!4624 = !DILocalVariable(name: "tfm", arg: 1, scope: !4622, file: !3, line: 31, type: !115)
!4625 = !DILocalVariable(name: "seed", arg: 2, scope: !4622, file: !3, line: 31, type: !4525)
!4626 = !DILocalVariable(name: "slen", arg: 3, scope: !4622, file: !3, line: 31, type: !7)
!4627 = !DILocalVariable(name: "alg", scope: !4622, file: !3, line: 33, type: !106)
!4628 = !DILocalVariable(name: "buf", scope: !4622, file: !3, line: 34, type: !4531)
!4629 = !DILocalVariable(name: "err", scope: !4622, file: !3, line: 35, type: !114)
!4630 = !DILabel(scope: !4622, name: "free_buf", file: !3, line: 53)
!4631 = !DILabel(scope: !4622, name: "out", file: !3, line: 55)
!4632 = !DILocation(line: 31, column: 41, scope: !4622)
!4633 = !DILocation(line: 31, column: 56, scope: !4622)
!4634 = !DILocation(line: 31, column: 75, scope: !4622)
!4635 = !DILocation(line: 33, column: 2, scope: !4622)
!4636 = !DILocation(line: 33, column: 18, scope: !4622)
!4637 = !DILocation(line: 33, column: 39, scope: !4622)
!4638 = !DILocation(line: 33, column: 24, scope: !4622)
!4639 = !DILocation(line: 34, column: 2, scope: !4622)
!4640 = !DILocation(line: 34, column: 6, scope: !4622)
!4641 = !DILocation(line: 35, column: 2, scope: !4622)
!4642 = !DILocation(line: 35, column: 6, scope: !4622)
!4643 = !DILocation(line: 40, column: 7, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 40, column: 6)
!4645 = !DILocation(line: 40, column: 12, scope: !4644)
!4646 = !DILocation(line: 40, column: 15, scope: !4644)
!4647 = !DILocation(line: 40, column: 6, scope: !4622)
!4648 = !DILocation(line: 41, column: 17, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 40, column: 21)
!4650 = !DILocation(line: 41, column: 9, scope: !4649)
!4651 = !DILocation(line: 41, column: 7, scope: !4649)
!4652 = !DILocation(line: 42, column: 7, scope: !4649)
!4653 = !DILocation(line: 43, column: 8, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 43, column: 7)
!4655 = !DILocation(line: 43, column: 7, scope: !4649)
!4656 = !DILocation(line: 44, column: 4, scope: !4654)
!4657 = !DILocation(line: 46, column: 31, scope: !4649)
!4658 = !DILocation(line: 46, column: 36, scope: !4649)
!4659 = !DILocation(line: 46, column: 9, scope: !4649)
!4660 = !DILocation(line: 46, column: 7, scope: !4649)
!4661 = !DILocation(line: 47, column: 7, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 47, column: 7)
!4663 = !DILocation(line: 47, column: 7, scope: !4649)
!4664 = !DILocation(line: 48, column: 4, scope: !4662)
!4665 = !DILocation(line: 49, column: 10, scope: !4649)
!4666 = !DILocation(line: 49, column: 8, scope: !4649)
!4667 = !DILocation(line: 50, column: 2, scope: !4649)
!4668 = !DILocation(line: 52, column: 8, scope: !4622)
!4669 = !DILocation(line: 52, column: 13, scope: !4622)
!4670 = !DILocation(line: 52, column: 18, scope: !4622)
!4671 = !DILocation(line: 52, column: 23, scope: !4622)
!4672 = !DILocation(line: 52, column: 29, scope: !4622)
!4673 = !DILocation(line: 52, column: 6, scope: !4622)
!4674 = !DILocation(line: 52, column: 2, scope: !4622)
!4675 = !DILocation(line: 53, column: 1, scope: !4622)
!4676 = !DILocation(line: 54, column: 18, scope: !4622)
!4677 = !DILocation(line: 54, column: 2, scope: !4622)
!4678 = !DILocation(line: 55, column: 1, scope: !4622)
!4679 = !DILocation(line: 56, column: 28, scope: !4622)
!4680 = !DILocation(line: 56, column: 33, scope: !4622)
!4681 = !DILocation(line: 56, column: 9, scope: !4622)
!4682 = !DILocation(line: 57, column: 1, scope: !4622)
!4683 = !DILocation(line: 56, column: 2, scope: !4622)
!4684 = distinct !DISubprogram(name: "crypto_rng_alg", scope: !108, file: !108, line: 131, type: !4685, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4687)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!106, !115}
!4687 = !{!4688}
!4688 = !DILocalVariable(name: "tfm", arg: 1, scope: !4684, file: !108, line: 131, type: !115)
!4689 = !DILocation(line: 131, column: 65, scope: !4684)
!4690 = !DILocation(line: 133, column: 41, scope: !4684)
!4691 = !DILocation(line: 133, column: 26, scope: !4684)
!4692 = !DILocation(line: 133, column: 47, scope: !4684)
!4693 = !DILocation(line: 133, column: 9, scope: !4684)
!4694 = !DILocation(line: 133, column: 2, scope: !4684)
!4695 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !4696, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4698)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!103, !195, !104}
!4698 = !{!4699, !4700, !4701}
!4699 = !DILocalVariable(name: "size", arg: 1, scope: !4695, file: !93, line: 591, type: !195)
!4700 = !DILocalVariable(name: "flags", arg: 2, scope: !4695, file: !93, line: 591, type: !104)
!4701 = !DILocalVariable(name: "index", scope: !4702, file: !93, line: 594, type: !7)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !93, line: 593, column: 42)
!4703 = distinct !DILexicalBlock(scope: !4695, file: !93, line: 593, column: 6)
!4704 = !DILocation(line: 591, column: 61, scope: !4695)
!4705 = !DILocation(line: 591, column: 73, scope: !4695)
!4706 = !DILocation(line: 593, column: 27, scope: !4703)
!4707 = !DILocation(line: 593, column: 6, scope: !4703)
!4708 = !DILocation(line: 593, column: 33, scope: !4703)
!4709 = !DILocation(line: 593, column: 36, scope: !4703)
!4710 = !DILocation(line: 593, column: 6, scope: !4695)
!4711 = !DILocation(line: 594, column: 3, scope: !4702)
!4712 = !DILocation(line: 594, column: 16, scope: !4702)
!4713 = !DILocation(line: 596, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4702, file: !93, line: 596, column: 7)
!4715 = !DILocation(line: 596, column: 12, scope: !4714)
!4716 = !DILocation(line: 596, column: 7, scope: !4702)
!4717 = !DILocation(line: 597, column: 25, scope: !4714)
!4718 = !DILocation(line: 597, column: 31, scope: !4714)
!4719 = !DILocation(line: 597, column: 11, scope: !4714)
!4720 = !DILocation(line: 597, column: 4, scope: !4714)
!4721 = !DILocation(line: 599, column: 11, scope: !4702)
!4722 = !DILocation(line: 599, column: 9, scope: !4702)
!4723 = !DILocation(line: 601, column: 33, scope: !4702)
!4724 = !DILocation(line: 601, column: 40, scope: !4702)
!4725 = !DILocation(line: 601, column: 20, scope: !4702)
!4726 = !DILocation(line: 601, column: 5, scope: !4702)
!4727 = !DILocation(line: 601, column: 51, scope: !4702)
!4728 = !DILocation(line: 602, column: 5, scope: !4702)
!4729 = !DILocation(line: 602, column: 12, scope: !4702)
!4730 = !DILocation(line: 600, column: 10, scope: !4702)
!4731 = !DILocation(line: 600, column: 3, scope: !4702)
!4732 = !DILocation(line: 603, column: 2, scope: !4703)
!4733 = !DILocation(line: 604, column: 19, scope: !4695)
!4734 = !DILocation(line: 604, column: 25, scope: !4695)
!4735 = !DILocation(line: 604, column: 9, scope: !4695)
!4736 = !DILocation(line: 604, column: 2, scope: !4695)
!4737 = !DILocation(line: 605, column: 1, scope: !4695)
!4738 = distinct !DISubprogram(name: "get_random_bytes_wait", scope: !4739, file: !4739, line: 126, type: !4740, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4742)
!4739 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!114, !103, !195}
!4742 = !{!4743, !4744, !4745}
!4743 = !DILocalVariable(name: "buf", arg: 1, scope: !4738, file: !4739, line: 126, type: !103)
!4744 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4738, file: !4739, line: 126, type: !195)
!4745 = !DILocalVariable(name: "ret", scope: !4738, file: !4739, line: 128, type: !114)
!4746 = !DILocation(line: 126, column: 47, scope: !4738)
!4747 = !DILocation(line: 126, column: 59, scope: !4738)
!4748 = !DILocation(line: 128, column: 2, scope: !4738)
!4749 = !DILocation(line: 128, column: 6, scope: !4738)
!4750 = !DILocation(line: 128, column: 12, scope: !4738)
!4751 = !DILocation(line: 129, column: 19, scope: !4738)
!4752 = !DILocation(line: 129, column: 24, scope: !4738)
!4753 = !DILocation(line: 129, column: 2, scope: !4738)
!4754 = !DILocation(line: 130, column: 9, scope: !4738)
!4755 = !DILocation(line: 131, column: 1, scope: !4738)
!4756 = !DILocation(line: 130, column: 2, scope: !4738)
!4757 = !DISubprogram(name: "kfree_sensitive", scope: !93, file: !93, line: 228, type: !4758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !1314}
!4760 = distinct !DISubprogram(name: "crypto_rng_errstat", scope: !108, file: !108, line: 156, type: !4761, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4763)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!114, !106, !114}
!4763 = !{!4764, !4765}
!4764 = !DILocalVariable(name: "alg", arg: 1, scope: !4760, file: !108, line: 156, type: !106)
!4765 = !DILocalVariable(name: "err", arg: 2, scope: !4760, file: !108, line: 156, type: !114)
!4766 = !DILocation(line: 156, column: 54, scope: !4760)
!4767 = !DILocation(line: 156, column: 63, scope: !4760)
!4768 = !DILocation(line: 159, column: 10, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4760, file: !108, line: 158, column: 6)
!4770 = !DILocation(line: 159, column: 3, scope: !4769)
!4771 = distinct !DISubprogram(name: "crypto_alloc_rng", scope: !3, file: !3, line: 133, type: !4772, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4774)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!115, !517, !133, !133}
!4774 = !{!4775, !4776, !4777}
!4775 = !DILocalVariable(name: "alg_name", arg: 1, scope: !4771, file: !3, line: 133, type: !517)
!4776 = !DILocalVariable(name: "type", arg: 2, scope: !4771, file: !3, line: 133, type: !133)
!4777 = !DILocalVariable(name: "mask", arg: 3, scope: !4771, file: !3, line: 133, type: !133)
!4778 = !DILocation(line: 133, column: 49, scope: !4771)
!4779 = !DILocation(line: 133, column: 63, scope: !4771)
!4780 = !DILocation(line: 133, column: 73, scope: !4771)
!4781 = !DILocation(line: 135, column: 26, scope: !4771)
!4782 = !DILocation(line: 135, column: 54, scope: !4771)
!4783 = !DILocation(line: 135, column: 60, scope: !4771)
!4784 = !DILocation(line: 135, column: 9, scope: !4771)
!4785 = !DILocation(line: 135, column: 2, scope: !4771)
!4786 = distinct !DISubprogram(name: "crypto_alloc_tfm", scope: !4787, file: !4787, line: 148, type: !4788, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4790)
!4787 = !DIFile(filename: "crypto/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "30af55952b42d6d15a944aa564f21699")
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!103, !517, !167, !133, !133}
!4790 = !{!4791, !4792, !4793, !4794}
!4791 = !DILocalVariable(name: "alg_name", arg: 1, scope: !4786, file: !4787, line: 148, type: !517)
!4792 = !DILocalVariable(name: "frontend", arg: 2, scope: !4786, file: !4787, line: 149, type: !167)
!4793 = !DILocalVariable(name: "type", arg: 3, scope: !4786, file: !4787, line: 149, type: !133)
!4794 = !DILocalVariable(name: "mask", arg: 4, scope: !4786, file: !4787, line: 149, type: !133)
!4795 = !DILocation(line: 148, column: 50, scope: !4786)
!4796 = !DILocation(line: 149, column: 36, scope: !4786)
!4797 = !DILocation(line: 149, column: 50, scope: !4786)
!4798 = !DILocation(line: 149, column: 60, scope: !4786)
!4799 = !DILocation(line: 151, column: 31, scope: !4786)
!4800 = !DILocation(line: 151, column: 41, scope: !4786)
!4801 = !DILocation(line: 151, column: 51, scope: !4786)
!4802 = !DILocation(line: 151, column: 57, scope: !4786)
!4803 = !DILocation(line: 151, column: 9, scope: !4786)
!4804 = !DILocation(line: 151, column: 2, scope: !4786)
!4805 = distinct !DISubprogram(name: "crypto_get_default_rng", scope: !3, file: !3, line: 139, type: !2039, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4806)
!4806 = !{!4807, !4808, !4809}
!4807 = !DILocalVariable(name: "rng", scope: !4805, file: !3, line: 141, type: !115)
!4808 = !DILocalVariable(name: "err", scope: !4805, file: !3, line: 142, type: !114)
!4809 = !DILabel(scope: !4805, name: "unlock", file: !3, line: 163)
!4810 = !DILocation(line: 141, column: 2, scope: !4805)
!4811 = !DILocation(line: 141, column: 21, scope: !4805)
!4812 = !DILocation(line: 142, column: 2, scope: !4805)
!4813 = !DILocation(line: 142, column: 6, scope: !4805)
!4814 = !DILocation(line: 144, column: 2, scope: !4805)
!4815 = !DILocation(line: 145, column: 7, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 145, column: 6)
!4817 = !DILocation(line: 145, column: 6, scope: !4805)
!4818 = !DILocation(line: 146, column: 9, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 145, column: 27)
!4820 = !DILocation(line: 146, column: 7, scope: !4819)
!4821 = !DILocation(line: 147, column: 17, scope: !4819)
!4822 = !DILocation(line: 147, column: 9, scope: !4819)
!4823 = !DILocation(line: 147, column: 7, scope: !4819)
!4824 = !DILocation(line: 148, column: 14, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 148, column: 7)
!4826 = !DILocation(line: 148, column: 7, scope: !4825)
!4827 = !DILocation(line: 148, column: 7, scope: !4819)
!4828 = !DILocation(line: 149, column: 4, scope: !4825)
!4829 = !DILocation(line: 151, column: 26, scope: !4819)
!4830 = !DILocation(line: 151, column: 57, scope: !4819)
!4831 = !DILocation(line: 151, column: 37, scope: !4819)
!4832 = !DILocation(line: 151, column: 9, scope: !4819)
!4833 = !DILocation(line: 151, column: 7, scope: !4819)
!4834 = !DILocation(line: 152, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 152, column: 7)
!4836 = !DILocation(line: 152, column: 7, scope: !4819)
!4837 = !DILocation(line: 153, column: 20, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 152, column: 12)
!4839 = !DILocation(line: 153, column: 4, scope: !4838)
!4840 = !DILocation(line: 154, column: 4, scope: !4838)
!4841 = !DILocation(line: 157, column: 24, scope: !4819)
!4842 = !DILocation(line: 157, column: 22, scope: !4819)
!4843 = !DILocation(line: 158, column: 2, scope: !4819)
!4844 = !DILocation(line: 160, column: 27, scope: !4805)
!4845 = !DILocation(line: 161, column: 6, scope: !4805)
!4846 = !DILocation(line: 161, column: 2, scope: !4805)
!4847 = !DILocation(line: 163, column: 1, scope: !4805)
!4848 = !DILocation(line: 164, column: 2, scope: !4805)
!4849 = !DILocation(line: 166, column: 9, scope: !4805)
!4850 = !DILocation(line: 167, column: 1, scope: !4805)
!4851 = !DILocation(line: 166, column: 2, scope: !4805)
!4852 = !DISubprogram(name: "mutex_lock", scope: !210, file: !210, line: 227, type: !4853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !4855}
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!4856 = distinct !DISubprogram(name: "PTR_ERR", scope: !4857, file: !4857, line: 49, type: !4858, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4860)
!4857 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!792, !1314}
!4860 = !{!4861}
!4861 = !DILocalVariable(name: "ptr", arg: 1, scope: !4856, file: !4857, line: 49, type: !1314)
!4862 = !DILocation(line: 49, column: 61, scope: !4856)
!4863 = !DILocation(line: 51, column: 16, scope: !4856)
!4864 = !DILocation(line: 51, column: 9, scope: !4856)
!4865 = !DILocation(line: 51, column: 2, scope: !4856)
!4866 = distinct !DISubprogram(name: "IS_ERR", scope: !4857, file: !4857, line: 59, type: !4867, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4869)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!514, !1314}
!4869 = !{!4870}
!4870 = !DILocalVariable(name: "ptr", arg: 1, scope: !4866, file: !4857, line: 59, type: !1314)
!4871 = !DILocation(line: 59, column: 60, scope: !4866)
!4872 = !DILocation(line: 61, column: 9, scope: !4866)
!4873 = !DILocation(line: 61, column: 2, scope: !4866)
!4874 = distinct !DISubprogram(name: "crypto_rng_seedsize", scope: !108, file: !108, line: 247, type: !4875, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4877)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!114, !115}
!4877 = !{!4878}
!4878 = !DILocalVariable(name: "tfm", arg: 1, scope: !4874, file: !108, line: 247, type: !115)
!4879 = !DILocation(line: 247, column: 58, scope: !4874)
!4880 = !DILocation(line: 249, column: 24, scope: !4874)
!4881 = !DILocation(line: 249, column: 9, scope: !4874)
!4882 = !DILocation(line: 249, column: 30, scope: !4874)
!4883 = !DILocation(line: 249, column: 2, scope: !4874)
!4884 = distinct !DISubprogram(name: "crypto_free_rng", scope: !108, file: !108, line: 142, type: !4885, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{null, !115}
!4887 = !{!4888}
!4888 = !DILocalVariable(name: "tfm", arg: 1, scope: !4884, file: !108, line: 142, type: !115)
!4889 = !DILocation(line: 142, column: 55, scope: !4884)
!4890 = !DILocation(line: 144, column: 21, scope: !4884)
!4891 = !DILocation(line: 144, column: 41, scope: !4884)
!4892 = !DILocation(line: 144, column: 26, scope: !4884)
!4893 = !DILocation(line: 144, column: 2, scope: !4884)
!4894 = !DILocation(line: 145, column: 1, scope: !4884)
!4895 = !DISubprogram(name: "mutex_unlock", scope: !210, file: !210, line: 246, type: !4853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4896 = distinct !DISubprogram(name: "crypto_put_default_rng", scope: !3, file: !3, line: 170, type: !2272, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4897 = !DILocation(line: 172, column: 2, scope: !4896)
!4898 = !DILocation(line: 173, column: 27, scope: !4896)
!4899 = !DILocation(line: 174, column: 2, scope: !4896)
!4900 = !DILocation(line: 175, column: 1, scope: !4896)
!4901 = distinct !DISubprogram(name: "crypto_del_default_rng", scope: !3, file: !3, line: 179, type: !2039, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4902 = !{!4903, !4904}
!4903 = !DILocalVariable(name: "err", scope: !4901, file: !3, line: 181, type: !114)
!4904 = !DILabel(scope: !4901, name: "out", file: !3, line: 192)
!4905 = !DILocation(line: 181, column: 2, scope: !4901)
!4906 = !DILocation(line: 181, column: 6, scope: !4901)
!4907 = !DILocation(line: 183, column: 2, scope: !4901)
!4908 = !DILocation(line: 184, column: 6, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 184, column: 6)
!4910 = !DILocation(line: 184, column: 6, scope: !4901)
!4911 = !DILocation(line: 185, column: 3, scope: !4909)
!4912 = !DILocation(line: 187, column: 18, scope: !4901)
!4913 = !DILocation(line: 187, column: 2, scope: !4901)
!4914 = !DILocation(line: 188, column: 21, scope: !4901)
!4915 = !DILocation(line: 190, column: 6, scope: !4901)
!4916 = !DILocation(line: 190, column: 2, scope: !4901)
!4917 = !DILocation(line: 192, column: 1, scope: !4901)
!4918 = !DILocation(line: 193, column: 2, scope: !4901)
!4919 = !DILocation(line: 195, column: 9, scope: !4901)
!4920 = !DILocation(line: 196, column: 1, scope: !4901)
!4921 = !DILocation(line: 195, column: 2, scope: !4901)
!4922 = distinct !DISubprogram(name: "crypto_register_rng", scope: !3, file: !3, line: 200, type: !4923, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4925)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!114, !106}
!4925 = !{!4926, !4927, !4935}
!4926 = !DILocalVariable(name: "alg", arg: 1, scope: !4922, file: !3, line: 200, type: !106)
!4927 = !DILocalVariable(name: "istat", scope: !4922, file: !3, line: 202, type: !4928)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_istat_rng", file: !108, line: 25, size: 256, elements: !4930)
!4930 = !{!4931, !4932, !4933, !4934}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "generate_cnt", scope: !4929, file: !108, line: 26, baseType: !215, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "generate_tlen", scope: !4929, file: !108, line: 27, baseType: !215, size: 64, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "seed_cnt", scope: !4929, file: !108, line: 28, baseType: !215, size: 64, offset: 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "err_cnt", scope: !4929, file: !108, line: 29, baseType: !215, size: 64, offset: 192)
!4935 = !DILocalVariable(name: "base", scope: !4922, file: !3, line: 203, type: !144)
!4936 = !DILocation(line: 200, column: 41, scope: !4922)
!4937 = !DILocation(line: 202, column: 2, scope: !4922)
!4938 = !DILocation(line: 202, column: 27, scope: !4922)
!4939 = !DILocation(line: 202, column: 48, scope: !4922)
!4940 = !DILocation(line: 202, column: 35, scope: !4922)
!4941 = !DILocation(line: 203, column: 2, scope: !4922)
!4942 = !DILocation(line: 203, column: 21, scope: !4922)
!4943 = !DILocation(line: 203, column: 29, scope: !4922)
!4944 = !DILocation(line: 203, column: 34, scope: !4922)
!4945 = !DILocation(line: 205, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 205, column: 6)
!4947 = !DILocation(line: 205, column: 11, scope: !4946)
!4948 = !DILocation(line: 205, column: 20, scope: !4946)
!4949 = !DILocation(line: 205, column: 6, scope: !4922)
!4950 = !DILocation(line: 206, column: 3, scope: !4946)
!4951 = !DILocation(line: 208, column: 2, scope: !4922)
!4952 = !DILocation(line: 208, column: 8, scope: !4922)
!4953 = !DILocation(line: 208, column: 17, scope: !4922)
!4954 = !DILocation(line: 209, column: 2, scope: !4922)
!4955 = !DILocation(line: 209, column: 8, scope: !4922)
!4956 = !DILocation(line: 209, column: 18, scope: !4922)
!4957 = !DILocation(line: 210, column: 2, scope: !4922)
!4958 = !DILocation(line: 210, column: 8, scope: !4922)
!4959 = !DILocation(line: 210, column: 18, scope: !4922)
!4960 = !DILocation(line: 215, column: 29, scope: !4922)
!4961 = !DILocation(line: 215, column: 9, scope: !4922)
!4962 = !DILocation(line: 215, column: 2, scope: !4922)
!4963 = !DILocation(line: 216, column: 1, scope: !4922)
!4964 = distinct !DISubprogram(name: "rng_get_stat", scope: !108, file: !108, line: 147, type: !4965, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4967)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!4928, !106}
!4967 = !{!4968}
!4968 = !DILocalVariable(name: "alg", arg: 1, scope: !4964, file: !108, line: 147, type: !106)
!4969 = !DILocation(line: 147, column: 69, scope: !4964)
!4970 = !DILocation(line: 152, column: 2, scope: !4964)
!4971 = !DISubprogram(name: "crypto_register_alg", scope: !170, file: !170, line: 141, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!114, !144}
!4974 = distinct !DISubprogram(name: "crypto_unregister_rng", scope: !3, file: !3, line: 219, type: !4975, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4977)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{null, !106}
!4977 = !{!4978}
!4978 = !DILocalVariable(name: "alg", arg: 1, scope: !4974, file: !3, line: 219, type: !106)
!4979 = !DILocation(line: 219, column: 44, scope: !4974)
!4980 = !DILocation(line: 221, column: 25, scope: !4974)
!4981 = !DILocation(line: 221, column: 30, scope: !4974)
!4982 = !DILocation(line: 221, column: 2, scope: !4974)
!4983 = !DILocation(line: 222, column: 1, scope: !4974)
!4984 = !DISubprogram(name: "crypto_unregister_alg", scope: !170, file: !170, line: 142, type: !4545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4985 = distinct !DISubprogram(name: "crypto_register_rngs", scope: !3, file: !3, line: 225, type: !4761, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4986 = !{!4987, !4988, !4989, !4990, !4991}
!4987 = !DILocalVariable(name: "algs", arg: 1, scope: !4985, file: !3, line: 225, type: !106)
!4988 = !DILocalVariable(name: "count", arg: 2, scope: !4985, file: !3, line: 225, type: !114)
!4989 = !DILocalVariable(name: "i", scope: !4985, file: !3, line: 227, type: !114)
!4990 = !DILocalVariable(name: "ret", scope: !4985, file: !3, line: 227, type: !114)
!4991 = !DILabel(scope: !4985, name: "err", file: !3, line: 237)
!4992 = !DILocation(line: 225, column: 42, scope: !4985)
!4993 = !DILocation(line: 225, column: 52, scope: !4985)
!4994 = !DILocation(line: 227, column: 2, scope: !4985)
!4995 = !DILocation(line: 227, column: 6, scope: !4985)
!4996 = !DILocation(line: 227, column: 9, scope: !4985)
!4997 = !DILocation(line: 229, column: 9, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 229, column: 2)
!4999 = !DILocation(line: 229, column: 7, scope: !4998)
!5000 = !DILocation(line: 229, column: 14, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 229, column: 2)
!5002 = !DILocation(line: 229, column: 18, scope: !5001)
!5003 = !DILocation(line: 229, column: 16, scope: !5001)
!5004 = !DILocation(line: 229, column: 2, scope: !4998)
!5005 = !DILocation(line: 230, column: 29, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 229, column: 30)
!5007 = !DILocation(line: 230, column: 36, scope: !5006)
!5008 = !DILocation(line: 230, column: 34, scope: !5006)
!5009 = !DILocation(line: 230, column: 9, scope: !5006)
!5010 = !DILocation(line: 230, column: 7, scope: !5006)
!5011 = !DILocation(line: 231, column: 7, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 231, column: 7)
!5013 = !DILocation(line: 231, column: 7, scope: !5006)
!5014 = !DILocation(line: 232, column: 4, scope: !5012)
!5015 = !DILocation(line: 233, column: 2, scope: !5006)
!5016 = !DILocation(line: 229, column: 26, scope: !5001)
!5017 = !DILocation(line: 229, column: 2, scope: !5001)
!5018 = distinct !{!5018, !5004, !5019, !5020, !5021}
!5019 = !DILocation(line: 233, column: 2, scope: !4998)
!5020 = !{!"llvm.loop.mustprogress"}
!5021 = !{!"llvm.loop.unroll.disable"}
!5022 = !DILocation(line: 235, column: 2, scope: !4985)
!5023 = !DILocation(line: 237, column: 1, scope: !4985)
!5024 = !DILocation(line: 238, column: 7, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 238, column: 2)
!5026 = !DILocation(line: 238, column: 12, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 238, column: 2)
!5028 = !DILocation(line: 238, column: 14, scope: !5027)
!5029 = !DILocation(line: 238, column: 2, scope: !5025)
!5030 = !DILocation(line: 239, column: 25, scope: !5027)
!5031 = !DILocation(line: 239, column: 32, scope: !5027)
!5032 = !DILocation(line: 239, column: 30, scope: !5027)
!5033 = !DILocation(line: 239, column: 3, scope: !5027)
!5034 = !DILocation(line: 238, column: 20, scope: !5027)
!5035 = !DILocation(line: 238, column: 2, scope: !5027)
!5036 = distinct !{!5036, !5029, !5037, !5020, !5021}
!5037 = !DILocation(line: 239, column: 33, scope: !5025)
!5038 = !DILocation(line: 241, column: 9, scope: !4985)
!5039 = !DILocation(line: 241, column: 2, scope: !4985)
!5040 = !DILocation(line: 242, column: 1, scope: !4985)
!5041 = distinct !DISubprogram(name: "crypto_unregister_rngs", scope: !3, file: !3, line: 245, type: !5042, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5044)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{null, !106, !114}
!5044 = !{!5045, !5046, !5047}
!5045 = !DILocalVariable(name: "algs", arg: 1, scope: !5041, file: !3, line: 245, type: !106)
!5046 = !DILocalVariable(name: "count", arg: 2, scope: !5041, file: !3, line: 245, type: !114)
!5047 = !DILocalVariable(name: "i", scope: !5041, file: !3, line: 247, type: !114)
!5048 = !DILocation(line: 245, column: 45, scope: !5041)
!5049 = !DILocation(line: 245, column: 55, scope: !5041)
!5050 = !DILocation(line: 247, column: 2, scope: !5041)
!5051 = !DILocation(line: 247, column: 6, scope: !5041)
!5052 = !DILocation(line: 249, column: 11, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 249, column: 2)
!5054 = !DILocation(line: 249, column: 17, scope: !5053)
!5055 = !DILocation(line: 249, column: 9, scope: !5053)
!5056 = !DILocation(line: 249, column: 7, scope: !5053)
!5057 = !DILocation(line: 249, column: 22, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 249, column: 2)
!5059 = !DILocation(line: 249, column: 24, scope: !5058)
!5060 = !DILocation(line: 249, column: 2, scope: !5053)
!5061 = !DILocation(line: 250, column: 25, scope: !5058)
!5062 = !DILocation(line: 250, column: 32, scope: !5058)
!5063 = !DILocation(line: 250, column: 30, scope: !5058)
!5064 = !DILocation(line: 250, column: 3, scope: !5058)
!5065 = !DILocation(line: 249, column: 30, scope: !5058)
!5066 = !DILocation(line: 249, column: 2, scope: !5058)
!5067 = distinct !{!5067, !5060, !5068, !5020, !5021}
!5068 = !DILocation(line: 250, column: 33, scope: !5053)
!5069 = !DILocation(line: 251, column: 1, scope: !5041)
!5070 = distinct !DISubprogram(name: "__crypto_rng_alg", scope: !108, file: !108, line: 118, type: !5071, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5073)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!106, !144}
!5073 = !{!5074, !5075}
!5074 = !DILocalVariable(name: "alg", arg: 1, scope: !5070, file: !108, line: 118, type: !144)
!5075 = !DILocalVariable(name: "__mptr", scope: !5076, file: !108, line: 120, type: !103)
!5076 = distinct !DILexicalBlock(scope: !5070, file: !108, line: 120, column: 9)
!5077 = !DILocation(line: 118, column: 67, scope: !5070)
!5078 = !DILocation(line: 120, column: 9, scope: !5076)
!5079 = !DILocation(line: 120, column: 9, scope: !5070)
!5080 = !DILocation(line: 120, column: 2, scope: !5070)
!5081 = distinct !DISubprogram(name: "crypto_rng_tfm", scope: !108, file: !108, line: 113, type: !5082, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5084)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!142, !115}
!5084 = !{!5085}
!5085 = !DILocalVariable(name: "tfm", arg: 1, scope: !5081, file: !108, line: 113, type: !115)
!5086 = !DILocation(line: 113, column: 68, scope: !5081)
!5087 = !DILocation(line: 115, column: 10, scope: !5081)
!5088 = !DILocation(line: 115, column: 15, scope: !5081)
!5089 = !DILocation(line: 115, column: 2, scope: !5081)
!5090 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !4696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5091 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !5092, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5094)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!7, !195, !514}
!5094 = !{!5095, !5096}
!5095 = !DILocalVariable(name: "size", arg: 1, scope: !5091, file: !93, line: 444, type: !195)
!5096 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5091, file: !93, line: 445, type: !514)
!5097 = !DILocation(line: 444, column: 60, scope: !5091)
!5098 = !DILocation(line: 445, column: 16, scope: !5091)
!5099 = !DILocation(line: 447, column: 7, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 447, column: 6)
!5101 = !DILocation(line: 447, column: 6, scope: !5091)
!5102 = !DILocation(line: 448, column: 3, scope: !5100)
!5103 = !DILocation(line: 450, column: 6, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 450, column: 6)
!5105 = !DILocation(line: 450, column: 11, scope: !5104)
!5106 = !DILocation(line: 450, column: 6, scope: !5091)
!5107 = !DILocation(line: 451, column: 3, scope: !5104)
!5108 = !DILocation(line: 453, column: 32, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 453, column: 6)
!5110 = !DILocation(line: 453, column: 37, scope: !5109)
!5111 = !DILocation(line: 453, column: 42, scope: !5109)
!5112 = !DILocation(line: 453, column: 45, scope: !5109)
!5113 = !DILocation(line: 453, column: 50, scope: !5109)
!5114 = !DILocation(line: 453, column: 6, scope: !5091)
!5115 = !DILocation(line: 454, column: 3, scope: !5109)
!5116 = !DILocation(line: 455, column: 32, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 455, column: 6)
!5118 = !DILocation(line: 455, column: 37, scope: !5117)
!5119 = !DILocation(line: 455, column: 43, scope: !5117)
!5120 = !DILocation(line: 455, column: 46, scope: !5117)
!5121 = !DILocation(line: 455, column: 51, scope: !5117)
!5122 = !DILocation(line: 455, column: 6, scope: !5091)
!5123 = !DILocation(line: 456, column: 3, scope: !5117)
!5124 = !DILocation(line: 457, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 457, column: 6)
!5126 = !DILocation(line: 457, column: 11, scope: !5125)
!5127 = !DILocation(line: 457, column: 6, scope: !5091)
!5128 = !DILocation(line: 457, column: 26, scope: !5125)
!5129 = !DILocation(line: 458, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 458, column: 6)
!5131 = !DILocation(line: 458, column: 11, scope: !5130)
!5132 = !DILocation(line: 458, column: 6, scope: !5091)
!5133 = !DILocation(line: 458, column: 26, scope: !5130)
!5134 = !DILocation(line: 459, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 459, column: 6)
!5136 = !DILocation(line: 459, column: 11, scope: !5135)
!5137 = !DILocation(line: 459, column: 6, scope: !5091)
!5138 = !DILocation(line: 459, column: 26, scope: !5135)
!5139 = !DILocation(line: 460, column: 6, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 460, column: 6)
!5141 = !DILocation(line: 460, column: 11, scope: !5140)
!5142 = !DILocation(line: 460, column: 6, scope: !5091)
!5143 = !DILocation(line: 460, column: 26, scope: !5140)
!5144 = !DILocation(line: 461, column: 6, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 461, column: 6)
!5146 = !DILocation(line: 461, column: 11, scope: !5145)
!5147 = !DILocation(line: 461, column: 6, scope: !5091)
!5148 = !DILocation(line: 461, column: 26, scope: !5145)
!5149 = !DILocation(line: 462, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 462, column: 6)
!5151 = !DILocation(line: 462, column: 11, scope: !5150)
!5152 = !DILocation(line: 462, column: 6, scope: !5091)
!5153 = !DILocation(line: 462, column: 26, scope: !5150)
!5154 = !DILocation(line: 463, column: 6, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 463, column: 6)
!5156 = !DILocation(line: 463, column: 11, scope: !5155)
!5157 = !DILocation(line: 463, column: 6, scope: !5091)
!5158 = !DILocation(line: 463, column: 26, scope: !5155)
!5159 = !DILocation(line: 464, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 464, column: 6)
!5161 = !DILocation(line: 464, column: 11, scope: !5160)
!5162 = !DILocation(line: 464, column: 6, scope: !5091)
!5163 = !DILocation(line: 464, column: 26, scope: !5160)
!5164 = !DILocation(line: 465, column: 6, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 465, column: 6)
!5166 = !DILocation(line: 465, column: 11, scope: !5165)
!5167 = !DILocation(line: 465, column: 6, scope: !5091)
!5168 = !DILocation(line: 465, column: 26, scope: !5165)
!5169 = !DILocation(line: 466, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 466, column: 6)
!5171 = !DILocation(line: 466, column: 11, scope: !5170)
!5172 = !DILocation(line: 466, column: 6, scope: !5091)
!5173 = !DILocation(line: 466, column: 26, scope: !5170)
!5174 = !DILocation(line: 467, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 467, column: 6)
!5176 = !DILocation(line: 467, column: 11, scope: !5175)
!5177 = !DILocation(line: 467, column: 6, scope: !5091)
!5178 = !DILocation(line: 467, column: 26, scope: !5175)
!5179 = !DILocation(line: 468, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 468, column: 6)
!5181 = !DILocation(line: 468, column: 11, scope: !5180)
!5182 = !DILocation(line: 468, column: 6, scope: !5091)
!5183 = !DILocation(line: 468, column: 26, scope: !5180)
!5184 = !DILocation(line: 469, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 469, column: 6)
!5186 = !DILocation(line: 469, column: 11, scope: !5185)
!5187 = !DILocation(line: 469, column: 6, scope: !5091)
!5188 = !DILocation(line: 469, column: 26, scope: !5185)
!5189 = !DILocation(line: 470, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 470, column: 6)
!5191 = !DILocation(line: 470, column: 11, scope: !5190)
!5192 = !DILocation(line: 470, column: 6, scope: !5091)
!5193 = !DILocation(line: 470, column: 26, scope: !5190)
!5194 = !DILocation(line: 471, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 471, column: 6)
!5196 = !DILocation(line: 471, column: 11, scope: !5195)
!5197 = !DILocation(line: 471, column: 6, scope: !5091)
!5198 = !DILocation(line: 471, column: 26, scope: !5195)
!5199 = !DILocation(line: 472, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 472, column: 6)
!5201 = !DILocation(line: 472, column: 11, scope: !5200)
!5202 = !DILocation(line: 472, column: 6, scope: !5091)
!5203 = !DILocation(line: 472, column: 26, scope: !5200)
!5204 = !DILocation(line: 473, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 473, column: 6)
!5206 = !DILocation(line: 473, column: 11, scope: !5205)
!5207 = !DILocation(line: 473, column: 6, scope: !5091)
!5208 = !DILocation(line: 473, column: 26, scope: !5205)
!5209 = !DILocation(line: 474, column: 6, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 474, column: 6)
!5211 = !DILocation(line: 474, column: 11, scope: !5210)
!5212 = !DILocation(line: 474, column: 6, scope: !5091)
!5213 = !DILocation(line: 474, column: 27, scope: !5210)
!5214 = !DILocation(line: 475, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 475, column: 6)
!5216 = !DILocation(line: 475, column: 11, scope: !5215)
!5217 = !DILocation(line: 475, column: 6, scope: !5091)
!5218 = !DILocation(line: 475, column: 32, scope: !5215)
!5219 = !DILocation(line: 477, column: 50, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5091, file: !93, line: 477, column: 6)
!5221 = !{i8 0, i8 2}
!5222 = !DILocation(line: 477, column: 6, scope: !5091)
!5223 = !DILocation(line: 478, column: 3, scope: !5220)
!5224 = !DILocation(line: 478, column: 3, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !93, line: 478, column: 3)
!5226 = distinct !DILexicalBlock(scope: !5220, file: !93, line: 478, column: 3)
!5227 = !{i32 -2143510344}
!5228 = !DILocation(line: 478, column: 3, scope: !5226)
!5229 = !DILocation(line: 480, column: 3, scope: !5220)
!5230 = !DILocation(line: 480, column: 3, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5220, file: !93, line: 480, column: 3)
!5232 = !DILocation(line: 480, column: 3, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5231, file: !93, line: 480, column: 3)
!5234 = !DILocation(line: 480, column: 3, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5231, file: !93, line: 480, column: 3)
!5236 = !{i64 2151457155, i64 2151457184, i64 2151457230, i64 2151457288, i64 2151457342, i64 2151457396, i64 2151457451, i64 2151457482}
!5237 = !DILocation(line: 483, column: 2, scope: !5091)
!5238 = !DILocation(line: 484, column: 1, scope: !5091)
!5239 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !5240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!103, !5242, !104, !195}
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5244, line: 11, flags: DIFlagFwdDecl)
!5244 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5245 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !5246, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!92, !104, !199}
!5248 = !{!5249, !5250}
!5249 = !DILocalVariable(name: "flags", arg: 1, scope: !5245, file: !93, line: 401, type: !104)
!5250 = !DILocalVariable(name: "caller", arg: 2, scope: !5245, file: !93, line: 401, type: !199)
!5251 = !DILocation(line: 401, column: 67, scope: !5245)
!5252 = !DILocation(line: 401, column: 88, scope: !5245)
!5253 = !DILocation(line: 407, column: 6, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5245, file: !93, line: 407, column: 6)
!5255 = !DILocation(line: 407, column: 6, scope: !5245)
!5256 = !DILocation(line: 413, column: 3, scope: !5254)
!5257 = !DILocation(line: 423, column: 38, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5245, file: !93, line: 423, column: 6)
!5259 = !DILocation(line: 423, column: 44, scope: !5258)
!5260 = !DILocation(line: 423, column: 6, scope: !5245)
!5261 = !DILocation(line: 424, column: 3, scope: !5258)
!5262 = !DILocation(line: 426, column: 3, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5245, file: !93, line: 425, column: 6)
!5264 = !DILocation(line: 429, column: 1, scope: !5245)
!5265 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !4696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5266 = !DISubprogram(name: "__compiletime_assert_117", scope: !93, file: !93, line: 478, type: !2272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5267 = !DISubprogram(name: "wait_for_random_bytes", scope: !4739, file: !4739, line: 121, type: !2039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5268 = !DISubprogram(name: "get_random_bytes", scope: !4739, file: !4739, line: 39, type: !5269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !103, !195}
!5271 = !DISubprogram(name: "crypto_alloc_tfm_node", scope: !4787, file: !4787, line: 144, type: !5272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!103, !517, !167, !133, !133, !114}
!5274 = distinct !DISubprogram(name: "crypto_rng_init_tfm", scope: !3, file: !3, line: 60, type: !182, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5275 = !{!5276}
!5276 = !DILocalVariable(name: "tfm", arg: 1, scope: !5274, file: !3, line: 60, type: !142)
!5277 = !DILocation(line: 60, column: 51, scope: !5274)
!5278 = !DILocation(line: 62, column: 2, scope: !5274)
!5279 = distinct !DISubprogram(name: "crypto_rng_show", scope: !3, file: !3, line: 88, type: !186, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5280)
!5280 = !{!5281, !5282}
!5281 = !DILocalVariable(name: "m", arg: 1, scope: !5279, file: !3, line: 88, type: !188)
!5282 = !DILocalVariable(name: "alg", arg: 2, scope: !5279, file: !3, line: 88, type: !144)
!5283 = !DILocation(line: 88, column: 46, scope: !5279)
!5284 = !DILocation(line: 88, column: 68, scope: !5279)
!5285 = !DILocation(line: 90, column: 13, scope: !5279)
!5286 = !DILocation(line: 90, column: 2, scope: !5279)
!5287 = !DILocation(line: 91, column: 13, scope: !5279)
!5288 = !DILocation(line: 91, column: 48, scope: !5279)
!5289 = !DILocation(line: 91, column: 39, scope: !5279)
!5290 = !DILocation(line: 91, column: 2, scope: !5279)
!5291 = !DILocation(line: 92, column: 1, scope: !5279)
!5292 = !DISubprogram(name: "seq_printf", scope: !190, file: !190, line: 119, type: !5293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !188, !517, null}
!5295 = distinct !DISubprogram(name: "seedsize", scope: !3, file: !3, line: 65, type: !178, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5296)
!5296 = !{!5297, !5298, !5299}
!5297 = !DILocalVariable(name: "alg", arg: 1, scope: !5295, file: !3, line: 65, type: !144)
!5298 = !DILocalVariable(name: "ralg", scope: !5295, file: !3, line: 67, type: !106)
!5299 = !DILocalVariable(name: "__mptr", scope: !5300, file: !3, line: 67, type: !103)
!5300 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 67, column: 25)
!5301 = !DILocation(line: 65, column: 49, scope: !5295)
!5302 = !DILocation(line: 67, column: 2, scope: !5295)
!5303 = !DILocation(line: 67, column: 18, scope: !5295)
!5304 = !DILocation(line: 67, column: 25, scope: !5300)
!5305 = !DILocation(line: 67, column: 25, scope: !5295)
!5306 = !DILocation(line: 69, column: 9, scope: !5295)
!5307 = !DILocation(line: 69, column: 15, scope: !5295)
!5308 = !DILocation(line: 70, column: 1, scope: !5295)
!5309 = !DILocation(line: 69, column: 2, scope: !5295)
!5310 = !DISubprogram(name: "crypto_destroy_tfm", scope: !120, file: !120, line: 445, type: !5311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !103, !142}
