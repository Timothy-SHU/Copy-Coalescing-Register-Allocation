; ModuleID = 'crypto/shash.c'
source_filename = "crypto/shash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_shash_no_setkey: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad shash_no_setkey ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shash_setkey: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shash_setkey ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shash_update: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shash_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shash_final: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shash_final ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shash_finup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shash_finup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shash_digest: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shash_digest ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shash_tfm_digest: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shash_tfm_digest ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_shash_ahash_update: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad shash_ahash_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_shash_ahash_finup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad shash_ahash_finup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_shash_ahash_digest: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad shash_ahash_digest ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_grab_shash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_grab_shash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alloc_shash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alloc_shash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_has_shash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_has_shash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_clone_shash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_clone_shash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_register_shash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_register_shash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_unregister_shash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_unregister_shash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_register_shashes: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_register_shashes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_unregister_shashes: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_unregister_shashes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_shash_register_instance: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad shash_register_instance ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_shash_free_singlespawn_instance: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad shash_free_singlespawn_instance ; .previous"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.38, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.38 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.crypto_hash_walk = type { ptr, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.crypto_tfm }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }
%struct.crypto_shash_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.39, ptr, i32, i8, i8 }
%union.anon.39 = type { ptr }
%struct.hash_alg_common = type { i32, i32, %struct.crypto_alg }
%struct.shash_instance = type { ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { [104 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.42, %struct.work_struct, [0 x ptr] }
%union.anon.42 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }

@__UNIQUE_ID___addressable_shash_no_setkey339 = internal global ptr @shash_no_setkey, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_crypto_shash_setkey340 = internal global ptr @crypto_shash_setkey, section ".discard.addressable", align 8, !dbg !4698
@__UNIQUE_ID___addressable_crypto_shash_update341 = internal global ptr @crypto_shash_update, section ".discard.addressable", align 8, !dbg !4700
@__UNIQUE_ID___addressable_crypto_shash_final342 = internal global ptr @crypto_shash_final, section ".discard.addressable", align 8, !dbg !4702
@__UNIQUE_ID___addressable_crypto_shash_finup343 = internal global ptr @crypto_shash_finup, section ".discard.addressable", align 8, !dbg !4704
@__UNIQUE_ID___addressable_crypto_shash_digest344 = internal global ptr @crypto_shash_digest, section ".discard.addressable", align 8, !dbg !4706
@__UNIQUE_ID___addressable_crypto_shash_tfm_digest345 = internal global ptr @crypto_shash_tfm_digest, section ".discard.addressable", align 8, !dbg !4708
@__UNIQUE_ID___addressable_shash_ahash_update346 = internal global ptr @shash_ahash_update, section ".discard.addressable", align 8, !dbg !4710
@__UNIQUE_ID___addressable_shash_ahash_finup347 = internal global ptr @shash_ahash_finup, section ".discard.addressable", align 8, !dbg !4712
@__UNIQUE_ID___addressable_shash_ahash_digest351 = internal global ptr @shash_ahash_digest, section ".discard.addressable", align 8, !dbg !4714
@crypto_shash_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr @crypto_shash_init_tfm, ptr @crypto_shash_show, ptr null, ptr @crypto_shash_free_instance, i32 14, i32 -16, i32 15, i32 8 }, align 8, !dbg !4761
@__UNIQUE_ID___addressable_crypto_grab_shash352 = internal global ptr @crypto_grab_shash, section ".discard.addressable", align 8, !dbg !4716
@__UNIQUE_ID___addressable_crypto_alloc_shash353 = internal global ptr @crypto_alloc_shash, section ".discard.addressable", align 8, !dbg !4718
@__UNIQUE_ID___addressable_crypto_has_shash354 = internal global ptr @crypto_has_shash, section ".discard.addressable", align 8, !dbg !4720
@__UNIQUE_ID___addressable_crypto_clone_shash355 = internal global ptr @crypto_clone_shash, section ".discard.addressable", align 8, !dbg !4722
@__UNIQUE_ID___addressable_crypto_register_shash356 = internal global ptr @crypto_register_shash, section ".discard.addressable", align 8, !dbg !4724
@__UNIQUE_ID___addressable_crypto_unregister_shash357 = internal global ptr @crypto_unregister_shash, section ".discard.addressable", align 8, !dbg !4726
@__UNIQUE_ID___addressable_crypto_register_shashes358 = internal global ptr @crypto_register_shashes, section ".discard.addressable", align 8, !dbg !4728
@__UNIQUE_ID___addressable_crypto_unregister_shashes359 = internal global ptr @crypto_unregister_shashes, section ".discard.addressable", align 8, !dbg !4730
@.str = private unnamed_addr constant [15 x i8] c"crypto/shash.c\00", align 1, !dbg !4732
@__UNIQUE_ID___addressable_shash_register_instance360 = internal global ptr @shash_register_instance, section ".discard.addressable", align 8, !dbg !4737
@__UNIQUE_ID___addressable_shash_free_singlespawn_instance361 = internal global ptr @shash_free_singlespawn_instance, section ".discard.addressable", align 8, !dbg !4739
@__UNIQUE_ID_file362 = internal constant [36 x i8] c"crypto_hash.file=crypto/crypto_hash\00", section ".modinfo", align 1, !dbg !4741
@__UNIQUE_ID_license363 = internal constant [24 x i8] c"crypto_hash.license=GPL\00", section ".modinfo", align 1, !dbg !4746
@__UNIQUE_ID_description364 = internal constant [60 x i8] c"crypto_hash.description=Synchronous cryptographic hash type\00", section ".modinfo", align 1, !dbg !4751
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4756
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"type         : shash\0A\00", align 1, !dbg !4763
@.str.3 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1, !dbg !4768
@.str.4 = private unnamed_addr constant [19 x i8] c"digestsize   : %u\0A\00", align 1, !dbg !4773
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID___addressable_shash_no_setkey339, ptr @__UNIQUE_ID___addressable_crypto_shash_setkey340, ptr @__UNIQUE_ID___addressable_crypto_shash_update341, ptr @__UNIQUE_ID___addressable_crypto_shash_final342, ptr @__UNIQUE_ID___addressable_crypto_shash_finup343, ptr @__UNIQUE_ID___addressable_crypto_shash_digest344, ptr @__UNIQUE_ID___addressable_crypto_shash_tfm_digest345, ptr @__UNIQUE_ID___addressable_shash_ahash_update346, ptr @__UNIQUE_ID___addressable_shash_ahash_finup347, ptr @__UNIQUE_ID___addressable_shash_ahash_digest351, ptr @__UNIQUE_ID___addressable_crypto_grab_shash352, ptr @__UNIQUE_ID___addressable_crypto_alloc_shash353, ptr @__UNIQUE_ID___addressable_crypto_has_shash354, ptr @__UNIQUE_ID___addressable_crypto_clone_shash355, ptr @__UNIQUE_ID___addressable_crypto_register_shash356, ptr @__UNIQUE_ID___addressable_crypto_unregister_shash357, ptr @__UNIQUE_ID___addressable_crypto_register_shashes358, ptr @__UNIQUE_ID___addressable_crypto_unregister_shashes359, ptr @__UNIQUE_ID___addressable_shash_register_instance360, ptr @__UNIQUE_ID___addressable_shash_free_singlespawn_instance361, ptr @__UNIQUE_ID_file362, ptr @__UNIQUE_ID_license363, ptr @__UNIQUE_ID_description364], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @shash_no_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !4784 {
entry:
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4786, metadata !DIExpression()), !dbg !4789
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4787, metadata !DIExpression()), !dbg !4790
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !4788, metadata !DIExpression()), !dbg !4791
  ret i32 -38, !dbg !4792
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_shash_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !4793 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4795, metadata !DIExpression()), !dbg !4801
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4796, metadata !DIExpression()), !dbg !4802
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !4797, metadata !DIExpression()), !dbg !4803
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !4798, metadata !DIExpression()), !dbg !4805
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4806
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #16, !dbg !4807
  store ptr %call, ptr %shash, align 8, !dbg !4805
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !4808
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !4799, metadata !DIExpression()), !dbg !4809
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !4810
  %call1 = call i32 @crypto_shash_alignmask(ptr noundef %1) #16, !dbg !4811
  %conv = zext i32 %call1 to i64, !dbg !4811
  store i64 %conv, ptr %alignmask, align 8, !dbg !4809
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4800, metadata !DIExpression()), !dbg !4813
  %2 = load ptr, ptr %key.addr, align 8, !dbg !4814
  %3 = ptrtoint ptr %2 to i64, !dbg !4816
  %4 = load i64, ptr %alignmask, align 8, !dbg !4817
  %and = and i64 %3, %4, !dbg !4818
  %tobool = icmp ne i64 %and, 0, !dbg !4818
  br i1 %tobool, label %if.then, label %if.else, !dbg !4819

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %tfm.addr, align 8, !dbg !4820
  %6 = load ptr, ptr %key.addr, align 8, !dbg !4821
  %7 = load i32, ptr %keylen.addr, align 4, !dbg !4822
  %call2 = call i32 @shash_setkey_unaligned(ptr noundef %5, ptr noundef %6, i32 noundef %7) #16, !dbg !4823
  store i32 %call2, ptr %err, align 4, !dbg !4824
  br label %if.end, !dbg !4825

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %shash, align 8, !dbg !4826
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %8, i32 0, i32 7, !dbg !4827
  %9 = load ptr, ptr %setkey, align 8, !dbg !4827
  %10 = load ptr, ptr %tfm.addr, align 8, !dbg !4828
  %11 = load ptr, ptr %key.addr, align 8, !dbg !4829
  %12 = load i32, ptr %keylen.addr, align 4, !dbg !4830
  %call3 = call i32 %9(ptr noundef %10, ptr noundef %11, i32 noundef %12) #16, !dbg !4826
  store i32 %call3, ptr %err, align 4, !dbg !4831
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %err, align 4, !dbg !4832
  %tobool4 = icmp ne i32 %13, 0, !dbg !4832
  %lnot = xor i1 %tobool4, true, !dbg !4832
  %lnot5 = xor i1 %lnot, true, !dbg !4832
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4832
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4832
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4832
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4832
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4834

if.then8:                                         ; preds = %if.end
  %14 = load ptr, ptr %tfm.addr, align 8, !dbg !4835
  %15 = load ptr, ptr %shash, align 8, !dbg !4837
  call void @shash_set_needkey(ptr noundef %14, ptr noundef %15) #16, !dbg !4838
  %16 = load i32, ptr %err, align 4, !dbg !4839
  store i32 %16, ptr %retval, align 4, !dbg !4840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4840

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %tfm.addr, align 8, !dbg !4841
  call void @crypto_shash_clear_flags(ptr noundef %17, i32 noundef 1) #16, !dbg !4842
  store i32 0, ptr %retval, align 4, !dbg !4843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4843

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4844
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !4844
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !4844
  %18 = load i32, ptr %retval, align 4, !dbg !4844
  ret i32 %18, !dbg !4844
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_alg(ptr noundef %tfm) #3 align 16 !dbg !4845 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4851
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !4852
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !4853
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !4853
  %call1 = call ptr @__crypto_shash_alg(ptr noundef %1) #16, !dbg !4854
  ret ptr %call1, !dbg !4855
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_alignmask(ptr noundef %tfm) #3 align 16 !dbg !4856 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4862
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !4863
  %call1 = call i32 @crypto_tfm_alg_alignmask(ptr noundef %call) #16, !dbg !4864
  ret i32 %call1, !dbg !4865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_setkey_unaligned(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !4866 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %absize = alloca i64, align 8
  %buffer = alloca ptr, align 8
  %alignbuffer = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4868, metadata !DIExpression()), !dbg !4877
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4869, metadata !DIExpression()), !dbg !4878
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !4870, metadata !DIExpression()), !dbg !4879
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !4880
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !4871, metadata !DIExpression()), !dbg !4881
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4882
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #16, !dbg !4883
  store ptr %call, ptr %shash, align 8, !dbg !4881
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !4884
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !4872, metadata !DIExpression()), !dbg !4885
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !4886
  %call1 = call i32 @crypto_shash_alignmask(ptr noundef %1) #16, !dbg !4887
  %conv = zext i32 %call1 to i64, !dbg !4887
  store i64 %conv, ptr %alignmask, align 8, !dbg !4885
  call void @llvm.lifetime.start.p0(i64 8, ptr %absize) #15, !dbg !4888
  call void @llvm.dbg.declare(metadata ptr %absize, metadata !4873, metadata !DIExpression()), !dbg !4889
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4874, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignbuffer) #15, !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %alignbuffer, metadata !4875, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4876, metadata !DIExpression()), !dbg !4894
  %2 = load i32, ptr %keylen.addr, align 4, !dbg !4895
  %conv2 = zext i32 %2 to i64, !dbg !4895
  %3 = load i64, ptr %alignmask, align 8, !dbg !4896
  %call3 = call i32 @crypto_tfm_ctx_alignment() #16, !dbg !4897
  %sub = sub i32 %call3, 1, !dbg !4898
  %not = xor i32 %sub, -1, !dbg !4899
  %conv4 = zext i32 %not to i64, !dbg !4899
  %and = and i64 %3, %conv4, !dbg !4900
  %add = add i64 %conv2, %and, !dbg !4901
  store i64 %add, ptr %absize, align 8, !dbg !4902
  %4 = load i64, ptr %absize, align 8, !dbg !4903
  %call5 = call noalias ptr @kmalloc(i64 noundef %4, i32 noundef 2080) #17, !dbg !4904
  store ptr %call5, ptr %buffer, align 8, !dbg !4905
  %5 = load ptr, ptr %buffer, align 8, !dbg !4906
  %tobool = icmp ne ptr %5, null, !dbg !4906
  br i1 %tobool, label %if.end, label %if.then, !dbg !4908

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4909

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buffer, align 8, !dbg !4910
  %7 = ptrtoint ptr %6 to i64, !dbg !4910
  %8 = load i64, ptr %alignmask, align 8, !dbg !4910
  %add6 = add i64 %8, 1, !dbg !4910
  %sub7 = sub i64 %add6, 1, !dbg !4910
  %add8 = add i64 %7, %sub7, !dbg !4910
  %9 = load i64, ptr %alignmask, align 8, !dbg !4910
  %add9 = add i64 %9, 1, !dbg !4910
  %sub10 = sub i64 %add9, 1, !dbg !4910
  %not11 = xor i64 %sub10, -1, !dbg !4910
  %and12 = and i64 %add8, %not11, !dbg !4910
  %10 = inttoptr i64 %and12 to ptr, !dbg !4911
  store ptr %10, ptr %alignbuffer, align 8, !dbg !4912
  %11 = load ptr, ptr %alignbuffer, align 8, !dbg !4913
  %12 = load ptr, ptr %key.addr, align 8, !dbg !4914
  %13 = load i32, ptr %keylen.addr, align 4, !dbg !4915
  %conv13 = zext i32 %13 to i64, !dbg !4915
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %conv13, i1 false), !dbg !4916
  %14 = load ptr, ptr %shash, align 8, !dbg !4917
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %14, i32 0, i32 7, !dbg !4918
  %15 = load ptr, ptr %setkey, align 8, !dbg !4918
  %16 = load ptr, ptr %tfm.addr, align 8, !dbg !4919
  %17 = load ptr, ptr %alignbuffer, align 8, !dbg !4920
  %18 = load i32, ptr %keylen.addr, align 4, !dbg !4921
  %call14 = call i32 %15(ptr noundef %16, ptr noundef %17, i32 noundef %18) #16, !dbg !4917
  store i32 %call14, ptr %err, align 4, !dbg !4922
  %19 = load ptr, ptr %buffer, align 8, !dbg !4923
  call void @kfree_sensitive(ptr noundef %19) #16, !dbg !4924
  %20 = load i32, ptr %err, align 4, !dbg !4925
  store i32 %20, ptr %retval, align 4, !dbg !4926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4926

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignbuffer) #15, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %absize) #15, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !4927
  %21 = load i32, ptr %retval, align 4, !dbg !4927
  ret i32 %21, !dbg !4927
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @shash_set_needkey(ptr noundef %tfm, ptr noundef %alg) #0 align 16 !dbg !4928 {
entry:
  %tfm.addr = alloca ptr, align 8
  %alg.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4932, metadata !DIExpression()), !dbg !4934
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4933, metadata !DIExpression()), !dbg !4935
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4936
  %call = call zeroext i1 @crypto_shash_alg_needs_key(ptr noundef %0) #16, !dbg !4938
  br i1 %call, label %if.then, label %if.end, !dbg !4939

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !4940
  call void @crypto_shash_set_flags(ptr noundef %1, i32 noundef 1) #16, !dbg !4941
  br label %if.end, !dbg !4941

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4942
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_shash_clear_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !4943 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !4947, metadata !DIExpression()), !dbg !4949
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4948, metadata !DIExpression()), !dbg !4950
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !4951
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !4952
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4953
  call void @crypto_tfm_clear_flags(ptr noundef %call, i32 noundef %1) #16, !dbg !4954
  ret void, !dbg !4955
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 16 !dbg !4956 {
entry:
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4958, metadata !DIExpression()), !dbg !4965
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4959, metadata !DIExpression()), !dbg !4966
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4960, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !4961, metadata !DIExpression()), !dbg !4969
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4970
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !4971
  %1 = load ptr, ptr %tfm1, align 8, !dbg !4971
  store ptr %1, ptr %tfm, align 8, !dbg !4969
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !4962, metadata !DIExpression()), !dbg !4973
  %2 = load ptr, ptr %tfm, align 8, !dbg !4974
  %call = call ptr @crypto_shash_alg(ptr noundef %2) #16, !dbg !4975
  store ptr %call, ptr %shash, align 8, !dbg !4973
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !4976
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !4963, metadata !DIExpression()), !dbg !4977
  %3 = load ptr, ptr %tfm, align 8, !dbg !4978
  %call2 = call i32 @crypto_shash_alignmask(ptr noundef %3) #16, !dbg !4979
  %conv = zext i32 %call2 to i64, !dbg !4979
  store i64 %conv, ptr %alignmask, align 8, !dbg !4977
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4980
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4964, metadata !DIExpression()), !dbg !4981
  %4 = load ptr, ptr %data.addr, align 8, !dbg !4982
  %5 = ptrtoint ptr %4 to i64, !dbg !4984
  %6 = load i64, ptr %alignmask, align 8, !dbg !4985
  %and = and i64 %5, %6, !dbg !4986
  %tobool = icmp ne i64 %and, 0, !dbg !4986
  br i1 %tobool, label %if.then, label %if.else, !dbg !4987

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !4988
  %8 = load ptr, ptr %data.addr, align 8, !dbg !4989
  %9 = load i32, ptr %len.addr, align 4, !dbg !4990
  %call3 = call i32 @shash_update_unaligned(ptr noundef %7, ptr noundef %8, i32 noundef %9) #16, !dbg !4991
  store i32 %call3, ptr %err, align 4, !dbg !4992
  br label %if.end, !dbg !4993

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %shash, align 8, !dbg !4994
  %update = getelementptr inbounds %struct.shash_alg, ptr %10, i32 0, i32 1, !dbg !4995
  %11 = load ptr, ptr %update, align 8, !dbg !4995
  %12 = load ptr, ptr %desc.addr, align 8, !dbg !4996
  %13 = load ptr, ptr %data.addr, align 8, !dbg !4997
  %14 = load i32, ptr %len.addr, align 4, !dbg !4998
  %call4 = call i32 %11(ptr noundef %12, ptr noundef %13, i32 noundef %14) #16, !dbg !4994
  store i32 %call4, ptr %err, align 4, !dbg !4999
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %shash, align 8, !dbg !5000
  %16 = load i32, ptr %err, align 4, !dbg !5001
  %call5 = call i32 @crypto_shash_errstat(ptr noundef %15, i32 noundef %16) #16, !dbg !5002
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5003
  ret i32 %call5, !dbg !5004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_update_unaligned(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 16 !dbg !5005 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %unaligned_len = alloca i32, align 4
  %ubuf = alloca [126 x i8], align 16
  %buf = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5007, metadata !DIExpression()), !dbg !5026
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5008, metadata !DIExpression()), !dbg !5027
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5009, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5010, metadata !DIExpression()), !dbg !5030
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5031
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5032
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5032
  store ptr %1, ptr %tfm, align 8, !dbg !5030
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !5011, metadata !DIExpression()), !dbg !5034
  %2 = load ptr, ptr %tfm, align 8, !dbg !5035
  %call = call ptr @crypto_shash_alg(ptr noundef %2) #16, !dbg !5036
  store ptr %call, ptr %shash, align 8, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5012, metadata !DIExpression()), !dbg !5038
  %3 = load ptr, ptr %tfm, align 8, !dbg !5039
  %call2 = call i32 @crypto_shash_alignmask(ptr noundef %3) #16, !dbg !5040
  %conv = zext i32 %call2 to i64, !dbg !5040
  store i64 %conv, ptr %alignmask, align 8, !dbg !5038
  call void @llvm.lifetime.start.p0(i64 4, ptr %unaligned_len) #15, !dbg !5041
  call void @llvm.dbg.declare(metadata ptr %unaligned_len, metadata !5013, metadata !DIExpression()), !dbg !5042
  %4 = load i64, ptr %alignmask, align 8, !dbg !5043
  %add = add i64 %4, 1, !dbg !5044
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5045
  %6 = ptrtoint ptr %5 to i64, !dbg !5046
  %7 = load i64, ptr %alignmask, align 8, !dbg !5047
  %and = and i64 %6, %7, !dbg !5048
  %sub = sub i64 %add, %and, !dbg !5049
  %conv3 = trunc i64 %sub to i32, !dbg !5043
  store i32 %conv3, ptr %unaligned_len, align 4, !dbg !5042
  call void @llvm.lifetime.start.p0(i64 126, ptr %ubuf) #15, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %ubuf, metadata !5014, metadata !DIExpression()), !dbg !5051
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5052
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5018, metadata !DIExpression()), !dbg !5053
  %arrayidx = getelementptr [126 x i8], ptr %ubuf, i64 0, i64 0, !dbg !5054
  %8 = ptrtoint ptr %arrayidx to i64, !dbg !5054
  %9 = load i64, ptr %alignmask, align 8, !dbg !5054
  %add4 = add i64 %9, 1, !dbg !5054
  %sub5 = sub i64 %add4, 1, !dbg !5054
  %add6 = add i64 %8, %sub5, !dbg !5054
  %10 = load i64, ptr %alignmask, align 8, !dbg !5054
  %add7 = add i64 %10, 1, !dbg !5054
  %sub8 = sub i64 %add7, 1, !dbg !5054
  %not = xor i64 %sub8, -1, !dbg !5054
  %and9 = and i64 %add6, %not, !dbg !5054
  %11 = inttoptr i64 %and9 to ptr, !dbg !5054
  store ptr %11, ptr %buf, align 8, !dbg !5053
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5019, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5020, metadata !DIExpression()), !dbg !5057
  %12 = load ptr, ptr %buf, align 8, !dbg !5057
  %13 = load i32, ptr %unaligned_len, align 4, !dbg !5057
  %idx.ext = zext i32 %13 to i64, !dbg !5057
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !5057
  %arraydecay = getelementptr inbounds [126 x i8], ptr %ubuf, i64 0, i64 0, !dbg !5057
  %add.ptr10 = getelementptr i8, ptr %arraydecay, i64 126, !dbg !5057
  %cmp = icmp ugt ptr %add.ptr, %add.ptr10, !dbg !5057
  %lnot = xor i1 %cmp, true, !dbg !5057
  %lnot12 = xor i1 %lnot, true, !dbg !5057
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5057
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5057
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5058
  %tobool = icmp ne i32 %14, 0, !dbg !5058
  %lnot13 = xor i1 %tobool, true, !dbg !5058
  %lnot15 = xor i1 %lnot13, true, !dbg !5058
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !5058
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !5058
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !5058
  %tobool18 = icmp ne i64 %expval, 0, !dbg !5058
  br i1 %tobool18, label %if.then, label %if.end, !dbg !5057

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5058

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5059
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5023, metadata !DIExpression()), !dbg !5059
  store i32 2305, ptr %__flags, align 4, !dbg !5059
  br label %do.body19, !dbg !5059

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !5060

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !5060

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !5059

do.body20:                                        ; preds = %do.end
  %15 = load i32, ptr %__flags, align 4, !dbg !5062
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 106, i32 %15, i64 12) #15, !dbg !5062, !srcloc !5064
  br label %do.cond21, !dbg !5062

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5062

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !5059

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !5065

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5065

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5058
  br label %do.cond26, !dbg !5059

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5059

do.end27:                                         ; preds = %do.cond26
  br label %if.end, !dbg !5059

if.end:                                           ; preds = %do.end27, %entry
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !5057
  %tobool28 = icmp ne i32 %16, 0, !dbg !5057
  %lnot29 = xor i1 %tobool28, true, !dbg !5057
  %lnot31 = xor i1 %lnot29, true, !dbg !5057
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !5057
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !5057
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !5057
  store i64 %expval34, ptr %tmp, align 8, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5067
  %17 = load i64, ptr %tmp, align 8, !dbg !5057
  %tobool35 = icmp ne i64 %17, 0, !dbg !5067
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5068

if.then36:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5069

if.end37:                                         ; preds = %if.end
  %18 = load i32, ptr %unaligned_len, align 4, !dbg !5070
  %19 = load i32, ptr %len.addr, align 4, !dbg !5072
  %cmp38 = icmp ugt i32 %18, %19, !dbg !5073
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5074

if.then40:                                        ; preds = %if.end37
  %20 = load i32, ptr %len.addr, align 4, !dbg !5075
  store i32 %20, ptr %unaligned_len, align 4, !dbg !5076
  br label %if.end41, !dbg !5077

if.end41:                                         ; preds = %if.then40, %if.end37
  %21 = load ptr, ptr %buf, align 8, !dbg !5078
  %22 = load ptr, ptr %data.addr, align 8, !dbg !5079
  %23 = load i32, ptr %unaligned_len, align 4, !dbg !5080
  %conv42 = zext i32 %23 to i64, !dbg !5080
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %conv42, i1 false), !dbg !5081
  %24 = load ptr, ptr %shash, align 8, !dbg !5082
  %update = getelementptr inbounds %struct.shash_alg, ptr %24, i32 0, i32 1, !dbg !5083
  %25 = load ptr, ptr %update, align 8, !dbg !5083
  %26 = load ptr, ptr %desc.addr, align 8, !dbg !5084
  %27 = load ptr, ptr %buf, align 8, !dbg !5085
  %28 = load i32, ptr %unaligned_len, align 4, !dbg !5086
  %call43 = call i32 %25(ptr noundef %26, ptr noundef %27, i32 noundef %28) #16, !dbg !5082
  store i32 %call43, ptr %err, align 4, !dbg !5087
  %29 = load ptr, ptr %buf, align 8, !dbg !5088
  %30 = load i32, ptr %unaligned_len, align 4, !dbg !5089
  %conv44 = zext i32 %30 to i64, !dbg !5089
  call void @llvm.memset.p0.i64(ptr align 1 %29, i8 0, i64 %conv44, i1 false), !dbg !5090
  %31 = load i32, ptr %err, align 4, !dbg !5091
  %tobool45 = icmp ne i32 %31, 0, !dbg !5091
  br i1 %tobool45, label %cond.true, label %cond.false, !dbg !5091

cond.true:                                        ; preds = %if.end41
  br label %cond.end, !dbg !5091

cond.false:                                       ; preds = %if.end41
  %32 = load ptr, ptr %shash, align 8, !dbg !5092
  %update46 = getelementptr inbounds %struct.shash_alg, ptr %32, i32 0, i32 1, !dbg !5093
  %33 = load ptr, ptr %update46, align 8, !dbg !5093
  %34 = load ptr, ptr %desc.addr, align 8, !dbg !5094
  %35 = load ptr, ptr %data.addr, align 8, !dbg !5095
  %36 = load i32, ptr %unaligned_len, align 4, !dbg !5096
  %idx.ext47 = zext i32 %36 to i64, !dbg !5097
  %add.ptr48 = getelementptr i8, ptr %35, i64 %idx.ext47, !dbg !5097
  %37 = load i32, ptr %len.addr, align 4, !dbg !5098
  %38 = load i32, ptr %unaligned_len, align 4, !dbg !5099
  %sub49 = sub i32 %37, %38, !dbg !5100
  %call50 = call i32 %33(ptr noundef %34, ptr noundef %add.ptr48, i32 noundef %sub49) #16, !dbg !5092
  br label %cond.end, !dbg !5091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %call50, %cond.false ], !dbg !5091
  store i32 %cond, ptr %retval, align 4, !dbg !5101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5101

cleanup:                                          ; preds = %cond.end, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 126, ptr %ubuf) #15, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 4, ptr %unaligned_len) #15, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5102
  %39 = load i32, ptr %retval, align 4, !dbg !5102
  ret i32 %39, !dbg !5102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_errstat(ptr noundef %alg, i32 noundef %err) #3 align 16 !dbg !5103 {
entry:
  %alg.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5107, metadata !DIExpression()), !dbg !5109
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5108, metadata !DIExpression()), !dbg !5110
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5111
  %1 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 12, !dbg !5112
  %2 = load i32, ptr %err.addr, align 4, !dbg !5113
  %call = call i32 @crypto_hash_errstat(ptr noundef %1, i32 noundef %2) #16, !dbg !5114
  ret i32 %call, !dbg !5115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_shash_final(ptr noundef %desc, ptr noundef %out) #0 align 16 !dbg !5116 {
entry:
  %desc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5118, metadata !DIExpression()), !dbg !5124
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5119, metadata !DIExpression()), !dbg !5125
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5120, metadata !DIExpression()), !dbg !5127
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5128
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5129
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5129
  store ptr %1, ptr %tfm, align 8, !dbg !5127
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !5121, metadata !DIExpression()), !dbg !5131
  %2 = load ptr, ptr %tfm, align 8, !dbg !5132
  %call = call ptr @crypto_shash_alg(ptr noundef %2) #16, !dbg !5133
  store ptr %call, ptr %shash, align 8, !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5122, metadata !DIExpression()), !dbg !5135
  %3 = load ptr, ptr %tfm, align 8, !dbg !5136
  %call2 = call i32 @crypto_shash_alignmask(ptr noundef %3) #16, !dbg !5137
  %conv = zext i32 %call2 to i64, !dbg !5137
  store i64 %conv, ptr %alignmask, align 8, !dbg !5135
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5123, metadata !DIExpression()), !dbg !5139
  %4 = load ptr, ptr %out.addr, align 8, !dbg !5140
  %5 = ptrtoint ptr %4 to i64, !dbg !5142
  %6 = load i64, ptr %alignmask, align 8, !dbg !5143
  %and = and i64 %5, %6, !dbg !5144
  %tobool = icmp ne i64 %and, 0, !dbg !5144
  br i1 %tobool, label %if.then, label %if.else, !dbg !5145

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !5146
  %8 = load ptr, ptr %out.addr, align 8, !dbg !5147
  %call3 = call i32 @shash_final_unaligned(ptr noundef %7, ptr noundef %8) #16, !dbg !5148
  store i32 %call3, ptr %err, align 4, !dbg !5149
  br label %if.end, !dbg !5150

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %shash, align 8, !dbg !5151
  %final = getelementptr inbounds %struct.shash_alg, ptr %9, i32 0, i32 2, !dbg !5152
  %10 = load ptr, ptr %final, align 8, !dbg !5152
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !5153
  %12 = load ptr, ptr %out.addr, align 8, !dbg !5154
  %call4 = call i32 %10(ptr noundef %11, ptr noundef %12) #16, !dbg !5151
  store i32 %call4, ptr %err, align 4, !dbg !5155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %shash, align 8, !dbg !5156
  %14 = load i32, ptr %err, align 4, !dbg !5157
  %call5 = call i32 @crypto_shash_errstat(ptr noundef %13, i32 noundef %14) #16, !dbg !5158
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5159
  ret i32 %call5, !dbg !5160
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_final_unaligned(ptr noundef %desc, ptr noundef %out) #0 align 16 !dbg !5161 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %shash = alloca ptr, align 8
  %ds = alloca i32, align 4
  %ubuf = alloca [127 x i8], align 16
  %buf = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5163, metadata !DIExpression()), !dbg !5182
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5164, metadata !DIExpression()), !dbg !5183
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5165, metadata !DIExpression()), !dbg !5185
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5186
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5187
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5187
  store ptr %1, ptr %tfm, align 8, !dbg !5185
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5166, metadata !DIExpression()), !dbg !5189
  %2 = load ptr, ptr %tfm, align 8, !dbg !5190
  %call = call i32 @crypto_shash_alignmask(ptr noundef %2) #16, !dbg !5191
  %conv = zext i32 %call to i64, !dbg !5191
  store i64 %conv, ptr %alignmask, align 8, !dbg !5189
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !5167, metadata !DIExpression()), !dbg !5193
  %3 = load ptr, ptr %tfm, align 8, !dbg !5194
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #16, !dbg !5195
  store ptr %call2, ptr %shash, align 8, !dbg !5193
  call void @llvm.lifetime.start.p0(i64 4, ptr %ds) #15, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !5168, metadata !DIExpression()), !dbg !5197
  %4 = load ptr, ptr %tfm, align 8, !dbg !5198
  %call3 = call i32 @crypto_shash_digestsize(ptr noundef %4) #16, !dbg !5199
  store i32 %call3, ptr %ds, align 4, !dbg !5197
  call void @llvm.lifetime.start.p0(i64 127, ptr %ubuf) #15, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %ubuf, metadata !5169, metadata !DIExpression()), !dbg !5201
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5173, metadata !DIExpression()), !dbg !5203
  %arrayidx = getelementptr [127 x i8], ptr %ubuf, i64 0, i64 0, !dbg !5204
  %5 = ptrtoint ptr %arrayidx to i64, !dbg !5204
  %6 = load i64, ptr %alignmask, align 8, !dbg !5204
  %add = add i64 %6, 1, !dbg !5204
  %sub = sub i64 %add, 1, !dbg !5204
  %add4 = add i64 %5, %sub, !dbg !5204
  %7 = load i64, ptr %alignmask, align 8, !dbg !5204
  %add5 = add i64 %7, 1, !dbg !5204
  %sub6 = sub i64 %add5, 1, !dbg !5204
  %not = xor i64 %sub6, -1, !dbg !5204
  %and = and i64 %add4, %not, !dbg !5204
  %8 = inttoptr i64 %and to ptr, !dbg !5204
  store ptr %8, ptr %buf, align 8, !dbg !5203
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5174, metadata !DIExpression()), !dbg !5206
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5175, metadata !DIExpression()), !dbg !5207
  %9 = load ptr, ptr %buf, align 8, !dbg !5207
  %10 = load i32, ptr %ds, align 4, !dbg !5207
  %idx.ext = zext i32 %10 to i64, !dbg !5207
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !5207
  %arraydecay = getelementptr inbounds [127 x i8], ptr %ubuf, i64 0, i64 0, !dbg !5207
  %add.ptr7 = getelementptr i8, ptr %arraydecay, i64 127, !dbg !5207
  %cmp = icmp ugt ptr %add.ptr, %add.ptr7, !dbg !5207
  %lnot = xor i1 %cmp, true, !dbg !5207
  %lnot9 = xor i1 %lnot, true, !dbg !5207
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5207
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5207
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5208
  %tobool = icmp ne i32 %11, 0, !dbg !5208
  %lnot10 = xor i1 %tobool, true, !dbg !5208
  %lnot12 = xor i1 %lnot10, true, !dbg !5208
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5208
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !5208
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !5208
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5208
  br i1 %tobool15, label %if.then, label %if.end, !dbg !5207

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5208

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5178, metadata !DIExpression()), !dbg !5209
  store i32 2305, ptr %__flags, align 4, !dbg !5209
  br label %do.body16, !dbg !5209

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !5210

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !5210

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !5209

do.body17:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !5212
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 154, i32 %12, i64 12) #15, !dbg !5212, !srcloc !5214
  br label %do.cond18, !dbg !5212

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5212

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5209

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5215

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5215

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5208
  br label %do.cond23, !dbg !5209

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5209

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !5209

if.end:                                           ; preds = %do.end24, %entry
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5207
  %tobool25 = icmp ne i32 %13, 0, !dbg !5207
  %lnot26 = xor i1 %tobool25, true, !dbg !5207
  %lnot28 = xor i1 %lnot26, true, !dbg !5207
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5207
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5207
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !5207
  store i64 %expval31, ptr %tmp, align 8, !dbg !5208
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5217
  %14 = load i64, ptr %tmp, align 8, !dbg !5207
  %tobool32 = icmp ne i64 %14, 0, !dbg !5217
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5218

if.then33:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5219

if.end34:                                         ; preds = %if.end
  %15 = load ptr, ptr %shash, align 8, !dbg !5220
  %final = getelementptr inbounds %struct.shash_alg, ptr %15, i32 0, i32 2, !dbg !5221
  %16 = load ptr, ptr %final, align 8, !dbg !5221
  %17 = load ptr, ptr %desc.addr, align 8, !dbg !5222
  %18 = load ptr, ptr %buf, align 8, !dbg !5223
  %call35 = call i32 %16(ptr noundef %17, ptr noundef %18) #16, !dbg !5220
  store i32 %call35, ptr %err, align 4, !dbg !5224
  %19 = load i32, ptr %err, align 4, !dbg !5225
  %tobool36 = icmp ne i32 %19, 0, !dbg !5225
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5227

if.then37:                                        ; preds = %if.end34
  br label %out40, !dbg !5228

if.end38:                                         ; preds = %if.end34
  %20 = load ptr, ptr %out.addr, align 8, !dbg !5229
  %21 = load ptr, ptr %buf, align 8, !dbg !5230
  %22 = load i32, ptr %ds, align 4, !dbg !5231
  %conv39 = zext i32 %22 to i64, !dbg !5231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %conv39, i1 false), !dbg !5232
  br label %out40, !dbg !5232

out40:                                            ; preds = %if.end38, %if.then37
  call void @llvm.dbg.label(metadata !5181), !dbg !5233
  %23 = load ptr, ptr %buf, align 8, !dbg !5234
  %24 = load i32, ptr %ds, align 4, !dbg !5235
  %conv41 = zext i32 %24 to i64, !dbg !5235
  call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %conv41, i1 false), !dbg !5236
  %25 = load i32, ptr %err, align 4, !dbg !5237
  store i32 %25, ptr %retval, align 4, !dbg !5238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5238

cleanup:                                          ; preds = %out40, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 127, ptr %ubuf) #15, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 4, ptr %ds) #15, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5239
  %26 = load i32, ptr %retval, align 4, !dbg !5239
  ret i32 %26, !dbg !5239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_shash_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #0 align 16 !dbg !5240 {
entry:
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5242, metadata !DIExpression()), !dbg !5250
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5243, metadata !DIExpression()), !dbg !5251
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5244, metadata !DIExpression()), !dbg !5252
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5245, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5246, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5256
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5257
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5257
  store ptr %1, ptr %tfm, align 8, !dbg !5255
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !5247, metadata !DIExpression()), !dbg !5259
  %2 = load ptr, ptr %tfm, align 8, !dbg !5260
  %call = call ptr @crypto_shash_alg(ptr noundef %2) #16, !dbg !5261
  store ptr %call, ptr %shash, align 8, !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5248, metadata !DIExpression()), !dbg !5263
  %3 = load ptr, ptr %tfm, align 8, !dbg !5264
  %call2 = call i32 @crypto_shash_alignmask(ptr noundef %3) #16, !dbg !5265
  %conv = zext i32 %call2 to i64, !dbg !5265
  store i64 %conv, ptr %alignmask, align 8, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5249, metadata !DIExpression()), !dbg !5267
  %4 = load ptr, ptr %data.addr, align 8, !dbg !5268
  %5 = ptrtoint ptr %4 to i64, !dbg !5270
  %6 = load ptr, ptr %out.addr, align 8, !dbg !5271
  %7 = ptrtoint ptr %6 to i64, !dbg !5272
  %or = or i64 %5, %7, !dbg !5273
  %8 = load i64, ptr %alignmask, align 8, !dbg !5274
  %and = and i64 %or, %8, !dbg !5275
  %tobool = icmp ne i64 %and, 0, !dbg !5275
  br i1 %tobool, label %if.then, label %if.else, !dbg !5276

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !5277
  %10 = load ptr, ptr %data.addr, align 8, !dbg !5278
  %11 = load i32, ptr %len.addr, align 4, !dbg !5279
  %12 = load ptr, ptr %out.addr, align 8, !dbg !5280
  %call3 = call i32 @shash_finup_unaligned(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12) #16, !dbg !5281
  store i32 %call3, ptr %err, align 4, !dbg !5282
  br label %if.end, !dbg !5283

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %shash, align 8, !dbg !5284
  %finup = getelementptr inbounds %struct.shash_alg, ptr %13, i32 0, i32 3, !dbg !5285
  %14 = load ptr, ptr %finup, align 8, !dbg !5285
  %15 = load ptr, ptr %desc.addr, align 8, !dbg !5286
  %16 = load ptr, ptr %data.addr, align 8, !dbg !5287
  %17 = load i32, ptr %len.addr, align 4, !dbg !5288
  %18 = load ptr, ptr %out.addr, align 8, !dbg !5289
  %call4 = call i32 %14(ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18) #16, !dbg !5284
  store i32 %call4, ptr %err, align 4, !dbg !5290
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load ptr, ptr %shash, align 8, !dbg !5291
  %20 = load i32, ptr %err, align 4, !dbg !5292
  %call5 = call i32 @crypto_shash_errstat(ptr noundef %19, i32 noundef %20) #16, !dbg !5293
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5294
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !5294
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5294
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5294
  ret i32 %call5, !dbg !5295
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_finup_unaligned(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #0 align 16 !dbg !5296 {
entry:
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5298, metadata !DIExpression()), !dbg !5302
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5299, metadata !DIExpression()), !dbg !5303
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5300, metadata !DIExpression()), !dbg !5304
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5301, metadata !DIExpression()), !dbg !5305
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5306
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5307
  %2 = load i32, ptr %len.addr, align 4, !dbg !5308
  %call = call i32 @shash_update_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16, !dbg !5309
  %tobool = icmp ne i32 %call, 0, !dbg !5309
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5309

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5309

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !5310
  %4 = load ptr, ptr %out.addr, align 8, !dbg !5311
  %call1 = call i32 @shash_final_unaligned(ptr noundef %3, ptr noundef %4) #16, !dbg !5312
  br label %cond.end, !dbg !5309

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ], !dbg !5309
  ret i32 %cond, !dbg !5313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_shash_digest(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #0 align 16 !dbg !5314 {
entry:
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5316, metadata !DIExpression()), !dbg !5324
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5317, metadata !DIExpression()), !dbg !5325
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5318, metadata !DIExpression()), !dbg !5326
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5319, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5320, metadata !DIExpression()), !dbg !5329
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5330
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5331
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5331
  store ptr %1, ptr %tfm, align 8, !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !5321, metadata !DIExpression()), !dbg !5333
  %2 = load ptr, ptr %tfm, align 8, !dbg !5334
  %call = call ptr @crypto_shash_alg(ptr noundef %2) #16, !dbg !5335
  store ptr %call, ptr %shash, align 8, !dbg !5333
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #15, !dbg !5336
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5322, metadata !DIExpression()), !dbg !5337
  %3 = load ptr, ptr %tfm, align 8, !dbg !5338
  %call2 = call i32 @crypto_shash_alignmask(ptr noundef %3) #16, !dbg !5339
  %conv = zext i32 %call2 to i64, !dbg !5339
  store i64 %conv, ptr %alignmask, align 8, !dbg !5337
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5340
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5323, metadata !DIExpression()), !dbg !5341
  %4 = load ptr, ptr %tfm, align 8, !dbg !5342
  %call3 = call i32 @crypto_shash_get_flags(ptr noundef %4) #16, !dbg !5344
  %and = and i32 %call3, 1, !dbg !5345
  %tobool = icmp ne i32 %and, 0, !dbg !5345
  br i1 %tobool, label %if.then, label %if.else, !dbg !5346

if.then:                                          ; preds = %entry
  store i32 -126, ptr %err, align 4, !dbg !5347
  br label %if.end10, !dbg !5348

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5349
  %6 = ptrtoint ptr %5 to i64, !dbg !5351
  %7 = load ptr, ptr %out.addr, align 8, !dbg !5352
  %8 = ptrtoint ptr %7 to i64, !dbg !5353
  %or = or i64 %6, %8, !dbg !5354
  %9 = load i64, ptr %alignmask, align 8, !dbg !5355
  %and4 = and i64 %or, %9, !dbg !5356
  %tobool5 = icmp ne i64 %and4, 0, !dbg !5356
  br i1 %tobool5, label %if.then6, label %if.else8, !dbg !5357

if.then6:                                         ; preds = %if.else
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !5358
  %11 = load ptr, ptr %data.addr, align 8, !dbg !5359
  %12 = load i32, ptr %len.addr, align 4, !dbg !5360
  %13 = load ptr, ptr %out.addr, align 8, !dbg !5361
  %call7 = call i32 @shash_digest_unaligned(ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13) #16, !dbg !5362
  store i32 %call7, ptr %err, align 4, !dbg !5363
  br label %if.end, !dbg !5364

if.else8:                                         ; preds = %if.else
  %14 = load ptr, ptr %shash, align 8, !dbg !5365
  %digest = getelementptr inbounds %struct.shash_alg, ptr %14, i32 0, i32 4, !dbg !5366
  %15 = load ptr, ptr %digest, align 8, !dbg !5366
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !5367
  %17 = load ptr, ptr %data.addr, align 8, !dbg !5368
  %18 = load i32, ptr %len.addr, align 4, !dbg !5369
  %19 = load ptr, ptr %out.addr, align 8, !dbg !5370
  %call9 = call i32 %15(ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %19) #16, !dbg !5365
  store i32 %call9, ptr %err, align 4, !dbg !5371
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %20 = load ptr, ptr %shash, align 8, !dbg !5372
  %21 = load i32, ptr %err, align 4, !dbg !5373
  %call11 = call i32 @crypto_shash_errstat(ptr noundef %20, i32 noundef %21) #16, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #15, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5375
  ret i32 %call11, !dbg !5376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_get_flags(ptr noundef %tfm) #3 align 16 !dbg !5377 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5383
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !5384
  %call1 = call i32 @crypto_tfm_get_flags(ptr noundef %call) #16, !dbg !5385
  ret i32 %call1, !dbg !5386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_digest_unaligned(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #0 align 16 !dbg !5387 {
entry:
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5389, metadata !DIExpression()), !dbg !5393
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5390, metadata !DIExpression()), !dbg !5394
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5391, metadata !DIExpression()), !dbg !5395
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5392, metadata !DIExpression()), !dbg !5396
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5397
  %call = call i32 @crypto_shash_init(ptr noundef %0) #16, !dbg !5398
  %tobool = icmp ne i32 %call, 0, !dbg !5398
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5398

cond.true:                                        ; preds = %entry
  br label %cond.end6, !dbg !5398

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5399
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5400
  %3 = load i32, ptr %len.addr, align 4, !dbg !5401
  %call1 = call i32 @shash_update_unaligned(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16, !dbg !5402
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5402
  br i1 %tobool2, label %cond.true3, label %cond.false4, !dbg !5402

cond.true3:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5402

cond.false4:                                      ; preds = %cond.false
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !5403
  %5 = load ptr, ptr %out.addr, align 8, !dbg !5404
  %call5 = call i32 @shash_final_unaligned(ptr noundef %4, ptr noundef %5) #16, !dbg !5405
  br label %cond.end, !dbg !5402

cond.end:                                         ; preds = %cond.false4, %cond.true3
  %cond = phi i32 [ %call1, %cond.true3 ], [ %call5, %cond.false4 ], !dbg !5402
  br label %cond.end6, !dbg !5398

cond.end6:                                        ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %call, %cond.true ], [ %cond, %cond.end ], !dbg !5398
  ret i32 %cond7, !dbg !5406
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_shash_tfm_digest(ptr noundef %tfm, ptr noundef %data, i32 noundef %len, ptr noundef %out) #0 align 16 !dbg !5407 {
entry:
  %tfm.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %__desc_desc = alloca [376 x i8], align 8
  %desc = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5411, metadata !DIExpression()), !dbg !5421
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5412, metadata !DIExpression()), !dbg !5422
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5413, metadata !DIExpression()), !dbg !5423
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5414, metadata !DIExpression()), !dbg !5424
  call void @llvm.lifetime.start.p0(i64 376, ptr %__desc_desc) #15, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %__desc_desc, metadata !5415, metadata !DIExpression()), !dbg !5425
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5419, metadata !DIExpression()), !dbg !5425
  %arraydecay = getelementptr inbounds [376 x i8], ptr %__desc_desc, i64 0, i64 0, !dbg !5425
  store ptr %arraydecay, ptr %desc, align 8, !dbg !5425
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5426
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5420, metadata !DIExpression()), !dbg !5427
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5428
  %1 = load ptr, ptr %desc, align 8, !dbg !5429
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !5430
  store ptr %0, ptr %tfm1, align 8, !dbg !5431
  %2 = load ptr, ptr %desc, align 8, !dbg !5432
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5433
  %4 = load i32, ptr %len.addr, align 4, !dbg !5434
  %5 = load ptr, ptr %out.addr, align 8, !dbg !5435
  %call = call i32 @crypto_shash_digest(ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #16, !dbg !5436
  store i32 %call, ptr %err, align 4, !dbg !5437
  %6 = load ptr, ptr %desc, align 8, !dbg !5438
  call void @shash_desc_zero(ptr noundef %6) #16, !dbg !5439
  %7 = load i32, ptr %err, align 4, !dbg !5440
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5441
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !5441
  call void @llvm.lifetime.end.p0(i64 376, ptr %__desc_desc) #15, !dbg !5441
  ret i32 %7, !dbg !5442
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @shash_desc_zero(ptr noundef %desc) #3 align 16 !dbg !5443 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5449
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5450
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %1, i32 0, i32 0, !dbg !5451
  %2 = load ptr, ptr %tfm, align 8, !dbg !5451
  %call = call i32 @crypto_shash_descsize(ptr noundef %2) #16, !dbg !5452
  %conv = zext i32 %call to i64, !dbg !5452
  %add = add i64 8, %conv, !dbg !5453
  call void @memzero_explicit(ptr noundef %0, i64 noundef %add) #16, !dbg !5454
  ret void, !dbg !5455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @shash_ahash_update(ptr noundef %req, ptr noundef %desc) #0 align 16 !dbg !5456 {
entry:
  %req.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %walk = alloca %struct.crypto_hash_walk, align 8
  %nbytes = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5460, metadata !DIExpression()), !dbg !5474
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5461, metadata !DIExpression()), !dbg !5475
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #15, !dbg !5476
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5462, metadata !DIExpression()), !dbg !5477
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbytes) #15, !dbg !5478
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !5473, metadata !DIExpression()), !dbg !5479
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5480
  %call = call i32 @crypto_hash_walk_first(ptr noundef %0, ptr noundef %walk) #16, !dbg !5482
  store i32 %call, ptr %nbytes, align 4, !dbg !5483
  br label %for.cond, !dbg !5484

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %nbytes, align 4, !dbg !5485
  %cmp = icmp sgt i32 %1, 0, !dbg !5487
  br i1 %cmp, label %for.body, label %for.end, !dbg !5488

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5489
  %data = getelementptr inbounds %struct.crypto_hash_walk, ptr %walk, i32 0, i32 0, !dbg !5490
  %3 = load ptr, ptr %data, align 8, !dbg !5490
  %4 = load i32, ptr %nbytes, align 4, !dbg !5491
  %call1 = call i32 @crypto_shash_update(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !5492
  store i32 %call1, ptr %nbytes, align 4, !dbg !5493
  br label %for.inc, !dbg !5494

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %nbytes, align 4, !dbg !5495
  %call2 = call i32 @crypto_hash_walk_done(ptr noundef %walk, i32 noundef %5) #16, !dbg !5496
  store i32 %call2, ptr %nbytes, align 4, !dbg !5497
  br label %for.cond, !dbg !5498, !llvm.loop !5499

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %nbytes, align 4, !dbg !5503
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbytes) #15, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #15, !dbg !5504
  ret i32 %6, !dbg !5505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5506 dso_local i32 @crypto_hash_walk_first(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5510 dso_local i32 @crypto_hash_walk_done(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @shash_ahash_finup(ptr noundef %req, ptr noundef %desc) #0 align 16 !dbg !5513 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %walk = alloca %struct.crypto_hash_walk, align 8
  %nbytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5515, metadata !DIExpression()), !dbg !5519
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5516, metadata !DIExpression()), !dbg !5520
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #15, !dbg !5521
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5517, metadata !DIExpression()), !dbg !5522
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbytes) #15, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !5518, metadata !DIExpression()), !dbg !5524
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5525
  %call = call i32 @crypto_hash_walk_first(ptr noundef %0, ptr noundef %walk) #16, !dbg !5526
  store i32 %call, ptr %nbytes, align 4, !dbg !5527
  %1 = load i32, ptr %nbytes, align 4, !dbg !5528
  %tobool = icmp ne i32 %1, 0, !dbg !5528
  br i1 %tobool, label %if.end, label %if.then, !dbg !5530

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5531
  %3 = load ptr, ptr %req.addr, align 8, !dbg !5532
  %result = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 3, !dbg !5533
  %4 = load ptr, ptr %result, align 8, !dbg !5533
  %call1 = call i32 @crypto_shash_final(ptr noundef %2, ptr noundef %4) #16, !dbg !5534
  store i32 %call1, ptr %retval, align 4, !dbg !5535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5535

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5536

do.body:                                          ; preds = %do.cond, %if.end
  %call2 = call i32 @crypto_hash_walk_last(ptr noundef %walk) #16, !dbg !5537
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5537
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5537

cond.true:                                        ; preds = %do.body
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5539
  %data = getelementptr inbounds %struct.crypto_hash_walk, ptr %walk, i32 0, i32 0, !dbg !5540
  %6 = load ptr, ptr %data, align 8, !dbg !5540
  %7 = load i32, ptr %nbytes, align 4, !dbg !5541
  %8 = load ptr, ptr %req.addr, align 8, !dbg !5542
  %result4 = getelementptr inbounds %struct.ahash_request, ptr %8, i32 0, i32 3, !dbg !5543
  %9 = load ptr, ptr %result4, align 8, !dbg !5543
  %call5 = call i32 @crypto_shash_finup(ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %9) #16, !dbg !5544
  br label %cond.end, !dbg !5537

cond.false:                                       ; preds = %do.body
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !5545
  %data6 = getelementptr inbounds %struct.crypto_hash_walk, ptr %walk, i32 0, i32 0, !dbg !5546
  %11 = load ptr, ptr %data6, align 8, !dbg !5546
  %12 = load i32, ptr %nbytes, align 4, !dbg !5547
  %call7 = call i32 @crypto_shash_update(ptr noundef %10, ptr noundef %11, i32 noundef %12) #16, !dbg !5548
  br label %cond.end, !dbg !5537

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ %call7, %cond.false ], !dbg !5537
  store i32 %cond, ptr %nbytes, align 4, !dbg !5549
  %13 = load i32, ptr %nbytes, align 4, !dbg !5550
  %call8 = call i32 @crypto_hash_walk_done(ptr noundef %walk, i32 noundef %13) #16, !dbg !5551
  store i32 %call8, ptr %nbytes, align 4, !dbg !5552
  br label %do.cond, !dbg !5553

do.cond:                                          ; preds = %cond.end
  %14 = load i32, ptr %nbytes, align 4, !dbg !5554
  %cmp = icmp sgt i32 %14, 0, !dbg !5555
  br i1 %cmp, label %do.body, label %do.end, !dbg !5553, !llvm.loop !5556

do.end:                                           ; preds = %do.cond
  %15 = load i32, ptr %nbytes, align 4, !dbg !5558
  store i32 %15, ptr %retval, align 4, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbytes) #15, !dbg !5560
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #15, !dbg !5560
  %16 = load i32, ptr %retval, align 4, !dbg !5560
  ret i32 %16, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_hash_walk_last(ptr noundef %walk) #3 align 16 !dbg !5561 {
entry:
  %walk.addr = alloca ptr, align 8
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !5567
  %entrylen = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 4, !dbg !5568
  %1 = load i32, ptr %entrylen, align 8, !dbg !5568
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !5569
  %total = getelementptr inbounds %struct.crypto_hash_walk, ptr %2, i32 0, i32 5, !dbg !5570
  %3 = load i32, ptr %total, align 4, !dbg !5570
  %or = or i32 %1, %3, !dbg !5571
  %tobool = icmp ne i32 %or, 0, !dbg !5572
  %lnot = xor i1 %tobool, true, !dbg !5572
  %lnot.ext = zext i1 %lnot to i32, !dbg !5572
  ret i32 %lnot.ext, !dbg !5573
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @shash_ahash_digest(ptr noundef %req, ptr noundef %desc) #0 align 16 !dbg !5574 {
entry:
  %req.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %nbytes = alloca i32, align 4
  %sg = alloca ptr, align 8
  %offset = alloca i32, align 4
  %err = alloca i32, align 4
  %__UNIQUE_ID___x348 = alloca i32, align 4
  %__UNIQUE_ID___y349 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5576, metadata !DIExpression()), !dbg !5588
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5577, metadata !DIExpression()), !dbg !5589
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbytes) #15, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !5578, metadata !DIExpression()), !dbg !5591
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5592
  %nbytes1 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1, !dbg !5593
  %1 = load i32, ptr %nbytes1, align 8, !dbg !5593
  store i32 %1, ptr %nbytes, align 4, !dbg !5591
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #15, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !5579, metadata !DIExpression()), !dbg !5595
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #15, !dbg !5596
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5580, metadata !DIExpression()), !dbg !5597
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5598
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5581, metadata !DIExpression()), !dbg !5599
  %2 = load i32, ptr %nbytes, align 4, !dbg !5600
  %tobool = icmp ne i32 %2, 0, !dbg !5600
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5601

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %req.addr, align 8, !dbg !5602
  %src = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 2, !dbg !5603
  %4 = load ptr, ptr %src, align 8, !dbg !5603
  store ptr %4, ptr %sg, align 8, !dbg !5604
  %5 = load ptr, ptr %sg, align 8, !dbg !5605
  %offset2 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1, !dbg !5606
  %6 = load i32, ptr %offset2, align 8, !dbg !5606
  store i32 %6, ptr %offset, align 4, !dbg !5607
  %7 = load i32, ptr %nbytes, align 4, !dbg !5608
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x348) #15, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x348, metadata !5582, metadata !DIExpression()), !dbg !5609
  %8 = load ptr, ptr %sg, align 8, !dbg !5609
  %length = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 2, !dbg !5609
  %9 = load i32, ptr %length, align 4, !dbg !5609
  store i32 %9, ptr %__UNIQUE_ID___x348, align 4, !dbg !5609
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y349) #15, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y349, metadata !5585, metadata !DIExpression()), !dbg !5609
  %10 = load i32, ptr %offset, align 4, !dbg !5609
  %sub = sub i32 4096, %10, !dbg !5609
  store i32 %sub, ptr %__UNIQUE_ID___y349, align 4, !dbg !5609
  %11 = load i32, ptr %__UNIQUE_ID___x348, align 4, !dbg !5609
  %12 = load i32, ptr %__UNIQUE_ID___y349, align 4, !dbg !5609
  %cmp = icmp ult i32 %11, %12, !dbg !5609
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5609

cond.true:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr %__UNIQUE_ID___x348, align 4, !dbg !5609
  br label %cond.end, !dbg !5609

cond.false:                                       ; preds = %land.lhs.true
  %14 = load i32, ptr %__UNIQUE_ID___y349, align 4, !dbg !5609
  br label %cond.end, !dbg !5609

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !5609
  store i32 %cond, ptr %tmp, align 4, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y349) #15, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x348) #15, !dbg !5610
  %15 = load i32, ptr %tmp, align 4, !dbg !5609
  %cmp3 = icmp ule i32 %7, %15, !dbg !5611
  br i1 %cmp3, label %if.then, label %if.else, !dbg !5612

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !5613
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5586, metadata !DIExpression()), !dbg !5614
  %16 = load ptr, ptr %sg, align 8, !dbg !5615
  %call = call ptr @sg_page(ptr noundef %16) #16, !dbg !5616
  %call4 = call ptr @kmap_local_page(ptr noundef %call) #16, !dbg !5617
  store ptr %call4, ptr %data, align 8, !dbg !5618
  %17 = load ptr, ptr %desc.addr, align 8, !dbg !5619
  %18 = load ptr, ptr %data, align 8, !dbg !5620
  %19 = load i32, ptr %offset, align 4, !dbg !5621
  %idx.ext = zext i32 %19 to i64, !dbg !5622
  %add.ptr = getelementptr i8, ptr %18, i64 %idx.ext, !dbg !5622
  %20 = load i32, ptr %nbytes, align 4, !dbg !5623
  %21 = load ptr, ptr %req.addr, align 8, !dbg !5624
  %result = getelementptr inbounds %struct.ahash_request, ptr %21, i32 0, i32 3, !dbg !5625
  %22 = load ptr, ptr %result, align 8, !dbg !5625
  %call5 = call i32 @crypto_shash_digest(ptr noundef %17, ptr noundef %add.ptr, i32 noundef %20, ptr noundef %22) #16, !dbg !5626
  store i32 %call5, ptr %err, align 4, !dbg !5627
  br label %do.body, !dbg !5628

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !5629

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5631

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5631

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %data, align 8, !dbg !5629
  call void @__kunmap_local(ptr noundef %23) #16, !dbg !5629
  br label %do.cond7, !dbg !5629

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !5629

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !5633
  br label %if.end, !dbg !5634

if.else:                                          ; preds = %cond.end, %entry
  %24 = load ptr, ptr %desc.addr, align 8, !dbg !5635
  %call9 = call i32 @crypto_shash_init(ptr noundef %24) #16, !dbg !5636
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5636
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5636

cond.true11:                                      ; preds = %if.else
  br label %cond.end14, !dbg !5636

cond.false12:                                     ; preds = %if.else
  %25 = load ptr, ptr %req.addr, align 8, !dbg !5637
  %26 = load ptr, ptr %desc.addr, align 8, !dbg !5638
  %call13 = call i32 @shash_ahash_finup(ptr noundef %25, ptr noundef %26) #16, !dbg !5639
  br label %cond.end14, !dbg !5636

cond.end14:                                       ; preds = %cond.false12, %cond.true11
  %cond15 = phi i32 [ %call9, %cond.true11 ], [ %call13, %cond.false12 ], !dbg !5636
  store i32 %cond15, ptr %err, align 4, !dbg !5640
  br label %if.end

if.end:                                           ; preds = %cond.end14, %do.end8
  %27 = load i32, ptr %err, align 4, !dbg !5641
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5642
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #15, !dbg !5642
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #15, !dbg !5642
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbytes) #15, !dbg !5642
  ret i32 %27, !dbg !5643
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #3 align 16 !dbg !5644 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5651
  %call = call ptr @lowmem_page_address(ptr noundef %0) #16, !dbg !5651
  ret ptr %call, !dbg !5652
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_page(ptr noundef %sg) #3 align 16 !dbg !5653 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5659
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !5660
  %1 = load i64, ptr %page_link, align 8, !dbg !5660
  %and = and i64 %1, -4, !dbg !5661
  %2 = inttoptr i64 %and to ptr, !dbg !5662
  ret ptr %2, !dbg !5663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #3 align 16 !dbg !5664 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  ret void, !dbg !5670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_init(ptr noundef %desc) #3 align 16 !dbg !5671 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5673, metadata !DIExpression()), !dbg !5675
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5674, metadata !DIExpression()), !dbg !5677
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5678
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !5679
  %1 = load ptr, ptr %tfm1, align 8, !dbg !5679
  store ptr %1, ptr %tfm, align 8, !dbg !5677
  %2 = load ptr, ptr %tfm, align 8, !dbg !5680
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #16, !dbg !5682
  %and = and i32 %call, 1, !dbg !5683
  %tobool = icmp ne i32 %and, 0, !dbg !5683
  br i1 %tobool, label %if.then, label %if.end, !dbg !5684

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !5685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5685

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !5686
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #16, !dbg !5687
  %init = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 0, !dbg !5688
  %4 = load ptr, ptr %init, align 8, !dbg !5688
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5689
  %call3 = call i32 %4(ptr noundef %5) #16, !dbg !5687
  store i32 %call3, ptr %retval, align 4, !dbg !5690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5690

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !5691
  %6 = load i32, ptr %retval, align 4, !dbg !5691
  ret i32 %6, !dbg !5691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_init_shash_ops_async(ptr noundef %tfm) #0 align 16 !dbg !5692 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %calg = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %crt = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5694, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 8, ptr %calg) #15, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %calg, metadata !5695, metadata !DIExpression()), !dbg !5703
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5704
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5705
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5705
  store ptr %1, ptr %calg, align 8, !dbg !5703
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #15, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5696, metadata !DIExpression()), !dbg !5707
  %2 = load ptr, ptr %calg, align 8, !dbg !5708
  %call = call ptr @__crypto_shash_alg(ptr noundef %2) #16, !dbg !5709
  store ptr %call, ptr %alg, align 8, !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %crt) #15, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %crt, metadata !5697, metadata !DIExpression()), !dbg !5711
  %3 = load ptr, ptr %tfm.addr, align 8, !dbg !5712
  %call1 = call ptr @__crypto_ahash_cast(ptr noundef %3) #16, !dbg !5713
  store ptr %call1, ptr %crt, align 8, !dbg !5711
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5698, metadata !DIExpression()), !dbg !5715
  %4 = load ptr, ptr %tfm.addr, align 8, !dbg !5716
  %call2 = call ptr @crypto_tfm_ctx(ptr noundef %4) #16, !dbg !5717
  store ptr %call2, ptr %ctx, align 8, !dbg !5715
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !5700, metadata !DIExpression()), !dbg !5719
  %5 = load ptr, ptr %calg, align 8, !dbg !5720
  %call3 = call ptr @crypto_mod_get(ptr noundef %5) #16, !dbg !5722
  %tobool = icmp ne ptr %call3, null, !dbg !5722
  br i1 %tobool, label %if.end, label %if.then, !dbg !5723

if.then:                                          ; preds = %entry
  store i32 -11, ptr %retval, align 4, !dbg !5724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5724

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %calg, align 8, !dbg !5725
  %call4 = call ptr @crypto_create_tfm(ptr noundef %6, ptr noundef @crypto_shash_type) #16, !dbg !5726
  store ptr %call4, ptr %shash, align 8, !dbg !5727
  %7 = load ptr, ptr %shash, align 8, !dbg !5728
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %7) #16, !dbg !5730
  br i1 %call5, label %if.then6, label %if.end8, !dbg !5731

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %calg, align 8, !dbg !5732
  call void @crypto_mod_put(ptr noundef %8) #16, !dbg !5734
  %9 = load ptr, ptr %shash, align 8, !dbg !5735
  %call7 = call i64 @PTR_ERR(ptr noundef %9) #16, !dbg !5736
  %conv = trunc i64 %call7 to i32, !dbg !5736
  store i32 %conv, ptr %retval, align 4, !dbg !5737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %shash, align 8, !dbg !5738
  %11 = load ptr, ptr %ctx, align 8, !dbg !5739
  store ptr %10, ptr %11, align 8, !dbg !5740
  %12 = load ptr, ptr %tfm.addr, align 8, !dbg !5741
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %12, i32 0, i32 3, !dbg !5742
  store ptr @crypto_exit_shash_ops_async, ptr %exit, align 8, !dbg !5743
  %13 = load ptr, ptr %crt, align 8, !dbg !5744
  %init = getelementptr inbounds %struct.crypto_ahash, ptr %13, i32 0, i32 0, !dbg !5745
  store ptr @shash_async_init, ptr %init, align 8, !dbg !5746
  %14 = load ptr, ptr %crt, align 8, !dbg !5747
  %update = getelementptr inbounds %struct.crypto_ahash, ptr %14, i32 0, i32 1, !dbg !5748
  store ptr @shash_async_update, ptr %update, align 8, !dbg !5749
  %15 = load ptr, ptr %crt, align 8, !dbg !5750
  %final = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 2, !dbg !5751
  store ptr @shash_async_final, ptr %final, align 8, !dbg !5752
  %16 = load ptr, ptr %crt, align 8, !dbg !5753
  %finup = getelementptr inbounds %struct.crypto_ahash, ptr %16, i32 0, i32 3, !dbg !5754
  store ptr @shash_async_finup, ptr %finup, align 8, !dbg !5755
  %17 = load ptr, ptr %crt, align 8, !dbg !5756
  %digest = getelementptr inbounds %struct.crypto_ahash, ptr %17, i32 0, i32 4, !dbg !5757
  store ptr @shash_async_digest, ptr %digest, align 8, !dbg !5758
  %18 = load ptr, ptr %alg, align 8, !dbg !5759
  %call9 = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %18) #16, !dbg !5761
  br i1 %call9, label %if.then10, label %if.end11, !dbg !5762

if.then10:                                        ; preds = %if.end8
  %19 = load ptr, ptr %crt, align 8, !dbg !5763
  %setkey = getelementptr inbounds %struct.crypto_ahash, ptr %19, i32 0, i32 7, !dbg !5764
  store ptr @shash_async_setkey, ptr %setkey, align 8, !dbg !5765
  br label %if.end11, !dbg !5763

if.end11:                                         ; preds = %if.then10, %if.end8
  %20 = load ptr, ptr %crt, align 8, !dbg !5766
  %21 = load ptr, ptr %shash, align 8, !dbg !5767
  %call12 = call i32 @crypto_shash_get_flags(ptr noundef %21) #16, !dbg !5768
  %and = and i32 %call12, 1, !dbg !5769
  call void @crypto_ahash_set_flags(ptr noundef %20, i32 noundef %and) #16, !dbg !5770
  %22 = load ptr, ptr %crt, align 8, !dbg !5771
  %export = getelementptr inbounds %struct.crypto_ahash, ptr %22, i32 0, i32 5, !dbg !5772
  store ptr @shash_async_export, ptr %export, align 8, !dbg !5773
  %23 = load ptr, ptr %crt, align 8, !dbg !5774
  %import = getelementptr inbounds %struct.crypto_ahash, ptr %23, i32 0, i32 6, !dbg !5775
  store ptr @shash_async_import, ptr %import, align 8, !dbg !5776
  %24 = load ptr, ptr %shash, align 8, !dbg !5777
  %call13 = call i32 @crypto_shash_descsize(ptr noundef %24) #16, !dbg !5778
  %conv14 = zext i32 %call13 to i64, !dbg !5778
  %add = add i64 8, %conv14, !dbg !5779
  %conv15 = trunc i64 %add to i32, !dbg !5780
  %25 = load ptr, ptr %crt, align 8, !dbg !5781
  %reqsize = getelementptr inbounds %struct.crypto_ahash, ptr %25, i32 0, i32 9, !dbg !5782
  store i32 %conv15, ptr %reqsize, align 4, !dbg !5783
  store i32 0, ptr %retval, align 4, !dbg !5784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5784

cleanup:                                          ; preds = %if.end11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %crt) #15, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #15, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %calg) #15, !dbg !5785
  %26 = load i32, ptr %retval, align 4, !dbg !5785
  ret i32 %26, !dbg !5785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_alg(ptr noundef %alg) #3 align 16 !dbg !5786 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5790, metadata !DIExpression()), !dbg !5793
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5791, metadata !DIExpression()), !dbg !5794
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5794
  store ptr %0, ptr %__mptr, align 8, !dbg !5794
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5794
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !5794
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5795
  %2 = load ptr, ptr %tmp, align 8, !dbg !5794
  ret ptr %2, !dbg !5796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_ahash_cast(ptr noundef %tfm) #3 align 16 !dbg !5797 {
entry:
  %tfm.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5801, metadata !DIExpression()), !dbg !5804
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5802, metadata !DIExpression()), !dbg !5805
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5805
  store ptr %0, ptr %__mptr, align 8, !dbg !5805
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5805
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !5805
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5806
  %2 = load ptr, ptr %tmp, align 8, !dbg !5805
  ret ptr %2, !dbg !5807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_ctx(ptr noundef %tfm) #3 align 16 !dbg !5808 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5814
  %__crt_ctx = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5, !dbg !5815
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__crt_ctx, i64 0, i64 0, !dbg !5814
  ret ptr %arraydecay, !dbg !5816
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5817 dso_local ptr @crypto_mod_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_create_tfm(ptr noundef %alg, ptr noundef %frontend) #3 align 16 !dbg !5821 {
entry:
  %alg.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5825, metadata !DIExpression()), !dbg !5827
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5826, metadata !DIExpression()), !dbg !5828
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5829
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !5830
  %call = call ptr @crypto_create_tfm_node(ptr noundef %0, ptr noundef %1, i32 noundef -1) #16, !dbg !5831
  ret ptr %call, !dbg !5832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5833 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5838, metadata !DIExpression()), !dbg !5839
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5840
  %1 = ptrtoint ptr %0 to i64, !dbg !5840
  %2 = inttoptr i64 %1 to ptr, !dbg !5840
  %3 = ptrtoint ptr %2 to i64, !dbg !5840
  %cmp = icmp uge i64 %3, -4095, !dbg !5840
  %lnot = xor i1 %cmp, true, !dbg !5840
  %lnot1 = xor i1 %lnot, true, !dbg !5840
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5840
  %conv = sext i32 %lnot.ext to i64, !dbg !5840
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5840
  %tobool = icmp ne i64 %expval, 0, !dbg !5840
  ret i1 %tobool, !dbg !5841
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5842 dso_local void @crypto_mod_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5843 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5849
  %1 = ptrtoint ptr %0 to i64, !dbg !5850
  ret i64 %1, !dbg !5851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_exit_shash_ops_async(ptr noundef %tfm) #0 align 16 !dbg !5852 {
entry:
  %tfm.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5854, metadata !DIExpression()), !dbg !5856
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5855, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5859
  %call = call ptr @crypto_tfm_ctx(ptr noundef %0) #16, !dbg !5860
  store ptr %call, ptr %ctx, align 8, !dbg !5858
  %1 = load ptr, ptr %ctx, align 8, !dbg !5861
  %2 = load ptr, ptr %1, align 8, !dbg !5862
  call void @crypto_free_shash(ptr noundef %2) #16, !dbg !5863
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !5864
  ret void, !dbg !5864
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_init(ptr noundef %req) #0 align 16 !dbg !5865 {
entry:
  %req.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5867, metadata !DIExpression()), !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5868, metadata !DIExpression()), !dbg !5872
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5873
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #16, !dbg !5874
  %call1 = call ptr @crypto_ahash_ctx(ptr noundef %call) #16, !dbg !5875
  store ptr %call1, ptr %ctx, align 8, !dbg !5872
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5869, metadata !DIExpression()), !dbg !5877
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5878
  %call2 = call ptr @ahash_request_ctx(ptr noundef %1) #16, !dbg !5879
  store ptr %call2, ptr %desc, align 8, !dbg !5877
  %2 = load ptr, ptr %ctx, align 8, !dbg !5880
  %3 = load ptr, ptr %2, align 8, !dbg !5881
  %4 = load ptr, ptr %desc, align 8, !dbg !5882
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %4, i32 0, i32 0, !dbg !5883
  store ptr %3, ptr %tfm, align 8, !dbg !5884
  %5 = load ptr, ptr %desc, align 8, !dbg !5885
  %call3 = call i32 @crypto_shash_init(ptr noundef %5) #16, !dbg !5886
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !5887
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !5887
  ret i32 %call3, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_update(ptr noundef %req) #0 align 16 !dbg !5889 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5893
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5894
  %call = call ptr @ahash_request_ctx(ptr noundef %1) #16, !dbg !5895
  %call1 = call i32 @shash_ahash_update(ptr noundef %0, ptr noundef %call) #16, !dbg !5896
  ret i32 %call1, !dbg !5897
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_final(ptr noundef %req) #0 align 16 !dbg !5898 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5902
  %call = call ptr @ahash_request_ctx(ptr noundef %0) #16, !dbg !5903
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5904
  %result = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 3, !dbg !5905
  %2 = load ptr, ptr %result, align 8, !dbg !5905
  %call1 = call i32 @crypto_shash_final(ptr noundef %call, ptr noundef %2) #16, !dbg !5906
  ret i32 %call1, !dbg !5907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_finup(ptr noundef %req) #0 align 16 !dbg !5908 {
entry:
  %req.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5910, metadata !DIExpression()), !dbg !5913
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5911, metadata !DIExpression()), !dbg !5915
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5916
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #16, !dbg !5917
  %call1 = call ptr @crypto_ahash_ctx(ptr noundef %call) #16, !dbg !5918
  store ptr %call1, ptr %ctx, align 8, !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !5919
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5912, metadata !DIExpression()), !dbg !5920
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5921
  %call2 = call ptr @ahash_request_ctx(ptr noundef %1) #16, !dbg !5922
  store ptr %call2, ptr %desc, align 8, !dbg !5920
  %2 = load ptr, ptr %ctx, align 8, !dbg !5923
  %3 = load ptr, ptr %2, align 8, !dbg !5924
  %4 = load ptr, ptr %desc, align 8, !dbg !5925
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %4, i32 0, i32 0, !dbg !5926
  store ptr %3, ptr %tfm, align 8, !dbg !5927
  %5 = load ptr, ptr %req.addr, align 8, !dbg !5928
  %6 = load ptr, ptr %desc, align 8, !dbg !5929
  %call3 = call i32 @shash_ahash_finup(ptr noundef %5, ptr noundef %6) #16, !dbg !5930
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !5931
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !5931
  ret i32 %call3, !dbg !5932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_digest(ptr noundef %req) #0 align 16 !dbg !5933 {
entry:
  %req.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5935, metadata !DIExpression()), !dbg !5938
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5936, metadata !DIExpression()), !dbg !5940
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5941
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #16, !dbg !5942
  %call1 = call ptr @crypto_ahash_ctx(ptr noundef %call) #16, !dbg !5943
  store ptr %call1, ptr %ctx, align 8, !dbg !5940
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !5944
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5937, metadata !DIExpression()), !dbg !5945
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5946
  %call2 = call ptr @ahash_request_ctx(ptr noundef %1) #16, !dbg !5947
  store ptr %call2, ptr %desc, align 8, !dbg !5945
  %2 = load ptr, ptr %ctx, align 8, !dbg !5948
  %3 = load ptr, ptr %2, align 8, !dbg !5949
  %4 = load ptr, ptr %desc, align 8, !dbg !5950
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %4, i32 0, i32 0, !dbg !5951
  store ptr %3, ptr %tfm, align 8, !dbg !5952
  %5 = load ptr, ptr %req.addr, align 8, !dbg !5953
  %6 = load ptr, ptr %desc, align 8, !dbg !5954
  %call3 = call i32 @shash_ahash_digest(ptr noundef %5, ptr noundef %6) #16, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !5956
  ret i32 %call3, !dbg !5957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %alg) #3 align 16 !dbg !5958 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5964
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 7, !dbg !5965
  %1 = load ptr, ptr %setkey, align 8, !dbg !5965
  %cmp = icmp ne ptr %1, @shash_no_setkey, !dbg !5966
  ret i1 %cmp, !dbg !5967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !5968 {
entry:
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5971, metadata !DIExpression()), !dbg !5975
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !5972, metadata !DIExpression()), !dbg !5976
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5973, metadata !DIExpression()), !dbg !5978
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5979
  %call = call ptr @crypto_ahash_ctx(ptr noundef %0) #16, !dbg !5980
  store ptr %call, ptr %ctx, align 8, !dbg !5978
  %1 = load ptr, ptr %ctx, align 8, !dbg !5981
  %2 = load ptr, ptr %1, align 8, !dbg !5982
  %3 = load ptr, ptr %key.addr, align 8, !dbg !5983
  %4 = load i32, ptr %keylen.addr, align 4, !dbg !5984
  %call1 = call i32 @crypto_shash_setkey(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !5986
  ret i32 %call1, !dbg !5987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_set_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !5988 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5992, metadata !DIExpression()), !dbg !5994
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5993, metadata !DIExpression()), !dbg !5995
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5996
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #16, !dbg !5997
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5998
  call void @crypto_tfm_set_flags(ptr noundef %call, i32 noundef %1) #16, !dbg !5999
  ret void, !dbg !6000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_export(ptr noundef %req, ptr noundef %out) #0 align 16 !dbg !6001 {
entry:
  %req.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6003, metadata !DIExpression()), !dbg !6005
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !6004, metadata !DIExpression()), !dbg !6006
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6007
  %call = call ptr @ahash_request_ctx(ptr noundef %0) #16, !dbg !6008
  %1 = load ptr, ptr %out.addr, align 8, !dbg !6009
  %call1 = call i32 @crypto_shash_export(ptr noundef %call, ptr noundef %1) #16, !dbg !6010
  ret i32 %call1, !dbg !6011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_async_import(ptr noundef %req, ptr noundef %in) #0 align 16 !dbg !6012 {
entry:
  %req.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6014, metadata !DIExpression()), !dbg !6018
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !6015, metadata !DIExpression()), !dbg !6019
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !6020
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6016, metadata !DIExpression()), !dbg !6021
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6022
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #16, !dbg !6023
  %call1 = call ptr @crypto_ahash_ctx(ptr noundef %call) #16, !dbg !6024
  store ptr %call1, ptr %ctx, align 8, !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6017, metadata !DIExpression()), !dbg !6026
  %1 = load ptr, ptr %req.addr, align 8, !dbg !6027
  %call2 = call ptr @ahash_request_ctx(ptr noundef %1) #16, !dbg !6028
  store ptr %call2, ptr %desc, align 8, !dbg !6026
  %2 = load ptr, ptr %ctx, align 8, !dbg !6029
  %3 = load ptr, ptr %2, align 8, !dbg !6030
  %4 = load ptr, ptr %desc, align 8, !dbg !6031
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %4, i32 0, i32 0, !dbg !6032
  store ptr %3, ptr %tfm, align 8, !dbg !6033
  %5 = load ptr, ptr %desc, align 8, !dbg !6034
  %6 = load ptr, ptr %in.addr, align 8, !dbg !6035
  %call3 = call i32 @crypto_shash_import(ptr noundef %5, ptr noundef %6) #16, !dbg !6036
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !6037
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !6037
  ret i32 %call3, !dbg !6038
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_descsize(ptr noundef %tfm) #3 align 16 !dbg !6039 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6043
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 0, !dbg !6044
  %1 = load i32, ptr %descsize, align 8, !dbg !6044
  ret i32 %1, !dbg !6045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_clone_shash_ops_async(ptr noundef %nhash, ptr noundef %hash) #0 align 16 !dbg !6046 {
entry:
  %retval = alloca ptr, align 8
  %nhash.addr = alloca ptr, align 8
  %hash.addr = alloca ptr, align 8
  %nctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %shash = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nhash, ptr %nhash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhash.addr, metadata !6050, metadata !DIExpression()), !dbg !6055
  store ptr %hash, ptr %hash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !6051, metadata !DIExpression()), !dbg !6056
  call void @llvm.lifetime.start.p0(i64 8, ptr %nctx) #15, !dbg !6057
  call void @llvm.dbg.declare(metadata ptr %nctx, metadata !6052, metadata !DIExpression()), !dbg !6058
  %0 = load ptr, ptr %nhash.addr, align 8, !dbg !6059
  %call = call ptr @crypto_ahash_ctx(ptr noundef %0) #16, !dbg !6060
  store ptr %call, ptr %nctx, align 8, !dbg !6058
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6053, metadata !DIExpression()), !dbg !6062
  %1 = load ptr, ptr %hash.addr, align 8, !dbg !6063
  %call1 = call ptr @crypto_ahash_ctx(ptr noundef %1) #16, !dbg !6064
  store ptr %call1, ptr %ctx, align 8, !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !6065
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !6054, metadata !DIExpression()), !dbg !6066
  %2 = load ptr, ptr %ctx, align 8, !dbg !6067
  %3 = load ptr, ptr %2, align 8, !dbg !6068
  %call2 = call ptr @crypto_clone_shash(ptr noundef %3) #16, !dbg !6069
  store ptr %call2, ptr %shash, align 8, !dbg !6070
  %4 = load ptr, ptr %shash, align 8, !dbg !6071
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !6073
  br i1 %call3, label %if.then, label %if.end, !dbg !6074

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %nhash.addr, align 8, !dbg !6075
  call void @crypto_free_ahash(ptr noundef %5) #16, !dbg !6077
  %6 = load ptr, ptr %shash, align 8, !dbg !6078
  %call4 = call ptr @ERR_CAST(ptr noundef %6) #16, !dbg !6079
  store ptr %call4, ptr %retval, align 8, !dbg !6080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6080

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %shash, align 8, !dbg !6081
  %8 = load ptr, ptr %nctx, align 8, !dbg !6082
  store ptr %7, ptr %8, align 8, !dbg !6083
  %9 = load ptr, ptr %nhash.addr, align 8, !dbg !6084
  store ptr %9, ptr %retval, align 8, !dbg !6085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6085

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !6086
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !6086
  call void @llvm.lifetime.end.p0(i64 8, ptr %nctx) #15, !dbg !6086
  %10 = load ptr, ptr %retval, align 8, !dbg !6086
  ret ptr %10, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_ctx(ptr noundef %tfm) #3 align 16 !dbg !6087 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6093
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #16, !dbg !6094
  %call1 = call ptr @crypto_tfm_ctx(ptr noundef %call) #16, !dbg !6095
  ret ptr %call1, !dbg !6096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_clone_shash(ptr noundef %hash) #0 align 16 !dbg !6097 {
entry:
  %retval = alloca ptr, align 8
  %hash.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %nhash = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !6101, metadata !DIExpression()), !dbg !6106
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6102, metadata !DIExpression()), !dbg !6108
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !6109
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !6110
  store ptr %call, ptr %tfm, align 8, !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #15, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !6103, metadata !DIExpression()), !dbg !6112
  %1 = load ptr, ptr %hash.addr, align 8, !dbg !6113
  %call1 = call ptr @crypto_shash_alg(ptr noundef %1) #16, !dbg !6114
  store ptr %call1, ptr %alg, align 8, !dbg !6112
  call void @llvm.lifetime.start.p0(i64 8, ptr %nhash) #15, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %nhash, metadata !6104, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6105, metadata !DIExpression()), !dbg !6118
  %2 = load ptr, ptr %alg, align 8, !dbg !6119
  %call2 = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %2) #16, !dbg !6121
  br i1 %call2, label %if.end7, label %if.then, !dbg !6122

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !6123
  %call3 = call ptr @crypto_tfm_get(ptr noundef %3) #16, !dbg !6125
  store ptr %call3, ptr %tfm, align 8, !dbg !6126
  %4 = load ptr, ptr %tfm, align 8, !dbg !6127
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !6129
  br i1 %call4, label %if.then5, label %if.end, !dbg !6130

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr %tfm, align 8, !dbg !6131
  %call6 = call ptr @ERR_CAST(ptr noundef %5) #16, !dbg !6132
  store ptr %call6, ptr %retval, align 8, !dbg !6133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6133

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %hash.addr, align 8, !dbg !6134
  store ptr %6, ptr %retval, align 8, !dbg !6135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6135

if.end7:                                          ; preds = %entry
  %7 = load ptr, ptr %alg, align 8, !dbg !6136
  %clone_tfm = getelementptr inbounds %struct.shash_alg, ptr %7, i32 0, i32 10, !dbg !6138
  %8 = load ptr, ptr %clone_tfm, align 8, !dbg !6138
  %tobool = icmp ne ptr %8, null, !dbg !6136
  br i1 %tobool, label %if.end12, label %land.lhs.true, !dbg !6139

land.lhs.true:                                    ; preds = %if.end7
  %9 = load ptr, ptr %alg, align 8, !dbg !6140
  %init_tfm = getelementptr inbounds %struct.shash_alg, ptr %9, i32 0, i32 8, !dbg !6141
  %10 = load ptr, ptr %init_tfm, align 8, !dbg !6141
  %tobool8 = icmp ne ptr %10, null, !dbg !6140
  br i1 %tobool8, label %if.then10, label %lor.lhs.false, !dbg !6142

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load ptr, ptr %alg, align 8, !dbg !6143
  %12 = getelementptr inbounds %struct.shash_alg, ptr %11, i32 0, i32 12, !dbg !6144
  %base = getelementptr inbounds %struct.anon.37, ptr %12, i32 0, i32 2, !dbg !6144
  %cra_init = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 12, !dbg !6145
  %13 = load ptr, ptr %cra_init, align 8, !dbg !6145
  %tobool9 = icmp ne ptr %13, null, !dbg !6143
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !6146

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call11 = call ptr @ERR_PTR(i64 noundef -38) #16, !dbg !6147
  store ptr %call11, ptr %retval, align 8, !dbg !6148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6148

if.end12:                                         ; preds = %lor.lhs.false, %if.end7
  %14 = load ptr, ptr %tfm, align 8, !dbg !6149
  %call13 = call ptr @crypto_clone_tfm(ptr noundef @crypto_shash_type, ptr noundef %14) #16, !dbg !6150
  store ptr %call13, ptr %nhash, align 8, !dbg !6151
  %15 = load ptr, ptr %nhash, align 8, !dbg !6152
  %call14 = call zeroext i1 @IS_ERR(ptr noundef %15) #16, !dbg !6154
  br i1 %call14, label %if.then15, label %if.end16, !dbg !6155

if.then15:                                        ; preds = %if.end12
  %16 = load ptr, ptr %nhash, align 8, !dbg !6156
  store ptr %16, ptr %retval, align 8, !dbg !6157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6157

if.end16:                                         ; preds = %if.end12
  %17 = load ptr, ptr %hash.addr, align 8, !dbg !6158
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %17, i32 0, i32 0, !dbg !6159
  %18 = load i32, ptr %descsize, align 8, !dbg !6159
  %19 = load ptr, ptr %nhash, align 8, !dbg !6160
  %descsize17 = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 0, !dbg !6161
  store i32 %18, ptr %descsize17, align 8, !dbg !6162
  %20 = load ptr, ptr %alg, align 8, !dbg !6163
  %clone_tfm18 = getelementptr inbounds %struct.shash_alg, ptr %20, i32 0, i32 10, !dbg !6165
  %21 = load ptr, ptr %clone_tfm18, align 8, !dbg !6165
  %tobool19 = icmp ne ptr %21, null, !dbg !6163
  br i1 %tobool19, label %if.then20, label %if.end27, !dbg !6166

if.then20:                                        ; preds = %if.end16
  %22 = load ptr, ptr %alg, align 8, !dbg !6167
  %clone_tfm21 = getelementptr inbounds %struct.shash_alg, ptr %22, i32 0, i32 10, !dbg !6169
  %23 = load ptr, ptr %clone_tfm21, align 8, !dbg !6169
  %24 = load ptr, ptr %nhash, align 8, !dbg !6170
  %25 = load ptr, ptr %hash.addr, align 8, !dbg !6171
  %call22 = call i32 %23(ptr noundef %24, ptr noundef %25) #16, !dbg !6167
  store i32 %call22, ptr %err, align 4, !dbg !6172
  %26 = load i32, ptr %err, align 4, !dbg !6173
  %tobool23 = icmp ne i32 %26, 0, !dbg !6173
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !6175

if.then24:                                        ; preds = %if.then20
  %27 = load ptr, ptr %nhash, align 8, !dbg !6176
  call void @crypto_free_shash(ptr noundef %27) #16, !dbg !6178
  %28 = load i32, ptr %err, align 4, !dbg !6179
  %conv = sext i32 %28 to i64, !dbg !6179
  %call25 = call ptr @ERR_PTR(i64 noundef %conv) #16, !dbg !6180
  store ptr %call25, ptr %retval, align 8, !dbg !6181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6181

if.end26:                                         ; preds = %if.then20
  br label %if.end27, !dbg !6182

if.end27:                                         ; preds = %if.end26, %if.end16
  %29 = load ptr, ptr %nhash, align 8, !dbg !6183
  store ptr %29, ptr %retval, align 8, !dbg !6184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6184

cleanup:                                          ; preds = %if.end27, %if.then24, %if.then15, %if.then10, %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %nhash) #15, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #15, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !6185
  %30 = load ptr, ptr %retval, align 8, !dbg !6185
  ret ptr %30, !dbg !6185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_ahash(ptr noundef %tfm) #3 align 16 !dbg !6186 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6192
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6193
  %call = call ptr @crypto_ahash_tfm(ptr noundef %1) #16, !dbg !6194
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #16, !dbg !6195
  ret void, !dbg !6196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #3 align 16 !dbg !6197 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6203
  ret ptr %0, !dbg !6204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_grab_shash(ptr noundef %spawn, ptr noundef %inst, ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !6205 {
entry:
  %spawn.addr = alloca ptr, align 8
  %inst.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !6213, metadata !DIExpression()), !dbg !6218
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !6214, metadata !DIExpression()), !dbg !6219
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6215, metadata !DIExpression()), !dbg !6220
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6216, metadata !DIExpression()), !dbg !6221
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6217, metadata !DIExpression()), !dbg !6222
  %0 = load ptr, ptr %spawn.addr, align 8, !dbg !6223
  %base = getelementptr inbounds %struct.crypto_shash_spawn, ptr %0, i32 0, i32 0, !dbg !6224
  %frontend = getelementptr inbounds %struct.crypto_spawn, ptr %base, i32 0, i32 3, !dbg !6225
  store ptr @crypto_shash_type, ptr %frontend, align 8, !dbg !6226
  %1 = load ptr, ptr %spawn.addr, align 8, !dbg !6227
  %base1 = getelementptr inbounds %struct.crypto_shash_spawn, ptr %1, i32 0, i32 0, !dbg !6228
  %2 = load ptr, ptr %inst.addr, align 8, !dbg !6229
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6230
  %4 = load i32, ptr %type.addr, align 4, !dbg !6231
  %5 = load i32, ptr %mask.addr, align 4, !dbg !6232
  %call = call i32 @crypto_grab_spawn(ptr noundef %base1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !6233
  ret i32 %call, !dbg !6234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6235 dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_alloc_shash(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !6238 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !6242, metadata !DIExpression()), !dbg !6245
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6243, metadata !DIExpression()), !dbg !6246
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6244, metadata !DIExpression()), !dbg !6247
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !6248
  %1 = load i32, ptr %type.addr, align 4, !dbg !6249
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6250
  %call = call ptr @crypto_alloc_tfm(ptr noundef %0, ptr noundef @crypto_shash_type, i32 noundef %1, i32 noundef %2) #16, !dbg !6251
  ret ptr %call, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_alloc_tfm(ptr noundef %alg_name, ptr noundef %frontend, i32 noundef %type, i32 noundef %mask) #3 align 16 !dbg !6253 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !6257, metadata !DIExpression()), !dbg !6261
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !6258, metadata !DIExpression()), !dbg !6262
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6259, metadata !DIExpression()), !dbg !6263
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6260, metadata !DIExpression()), !dbg !6264
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !6265
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !6266
  %2 = load i32, ptr %type.addr, align 4, !dbg !6267
  %3 = load i32, ptr %mask.addr, align 4, !dbg !6268
  %call = call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef -1) #16, !dbg !6269
  ret ptr %call, !dbg !6270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_has_shash(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !6271 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !6275, metadata !DIExpression()), !dbg !6278
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6276, metadata !DIExpression()), !dbg !6279
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6277, metadata !DIExpression()), !dbg !6280
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !6281
  %1 = load i32, ptr %type.addr, align 4, !dbg !6282
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6283
  %call = call i32 @crypto_type_has_alg(ptr noundef %0, ptr noundef @crypto_shash_type, i32 noundef %1, i32 noundef %2) #16, !dbg !6284
  ret i32 %call, !dbg !6285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6286 dso_local i32 @crypto_type_has_alg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_tfm(ptr noundef %tfm) #3 align 16 !dbg !6289 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6295
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !6296
  ret ptr %base, !dbg !6297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_get(ptr noundef %tfm) #3 align 16 !dbg !6298 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6302, metadata !DIExpression()), !dbg !6303
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6304
  %refcnt = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 0, !dbg !6305
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcnt) #16, !dbg !6306
  br i1 %call, label %cond.true, label %cond.false, !dbg !6306

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6307
  br label %cond.end, !dbg !6306

cond.false:                                       ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -75) #16, !dbg !6308
  br label %cond.end, !dbg !6306

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %call1, %cond.false ], !dbg !6306
  ret ptr %cond, !dbg !6309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !6310 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  %0 = load i64, ptr %error.addr, align 8, !dbg !6316
  %1 = inttoptr i64 %0 to ptr, !dbg !6317
  ret ptr %1, !dbg !6318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local ptr @crypto_clone_tfm(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_shash(ptr noundef %tfm) #3 align 16 !dbg !6322 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6326
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6327
  %call = call ptr @crypto_shash_tfm(ptr noundef %1) #16, !dbg !6328
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #16, !dbg !6329
  ret void, !dbg !6330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hash_prepare_alg(ptr noundef %alg) #0 align 16 !dbg !6331 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %istat = alloca ptr, align 8
  %base = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6336, metadata !DIExpression()), !dbg !6345
  call void @llvm.lifetime.start.p0(i64 8, ptr %istat) #15, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %istat, metadata !6337, metadata !DIExpression()), !dbg !6347
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6348
  %call = call ptr @hash_get_stat(ptr noundef %0) #16, !dbg !6349
  store ptr %call, ptr %istat, align 8, !dbg !6347
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6344, metadata !DIExpression()), !dbg !6351
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !6352
  %base1 = getelementptr inbounds %struct.hash_alg_common, ptr %1, i32 0, i32 2, !dbg !6353
  store ptr %base1, ptr %base, align 8, !dbg !6351
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !6354
  %digestsize = getelementptr inbounds %struct.hash_alg_common, ptr %2, i32 0, i32 0, !dbg !6356
  %3 = load i32, ptr %digestsize, align 8, !dbg !6356
  %cmp = icmp ugt i32 %3, 64, !dbg !6357
  br i1 %cmp, label %if.then, label %if.end, !dbg !6358

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6359

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %base, align 8, !dbg !6360
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 2, !dbg !6361
  %5 = load i32, ptr %cra_flags, align 8, !dbg !6362
  %and = and i32 %5, -16, !dbg !6362
  store i32 %and, ptr %cra_flags, align 8, !dbg !6362
  store i32 0, ptr %retval, align 4, !dbg !6363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6363

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 8, ptr %istat) #15, !dbg !6364
  %6 = load i32, ptr %retval, align 4, !dbg !6364
  ret i32 %6, !dbg !6364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hash_get_stat(ptr noundef %alg) #3 align 16 !dbg !6365 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6369, metadata !DIExpression()), !dbg !6370
  ret ptr null, !dbg !6371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_register_shash(ptr noundef %alg) #0 align 16 !dbg !6372 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6376, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6377, metadata !DIExpression()), !dbg !6381
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6382
  %1 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 12, !dbg !6383
  %base1 = getelementptr inbounds %struct.anon.37, ptr %1, i32 0, i32 2, !dbg !6383
  store ptr %base1, ptr %base, align 8, !dbg !6381
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6378, metadata !DIExpression()), !dbg !6385
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !6386
  %call = call i32 @shash_prepare_alg(ptr noundef %2) #16, !dbg !6387
  store i32 %call, ptr %err, align 4, !dbg !6388
  %3 = load i32, ptr %err, align 4, !dbg !6389
  %tobool = icmp ne i32 %3, 0, !dbg !6389
  br i1 %tobool, label %if.then, label %if.end, !dbg !6391

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !6392
  store i32 %4, ptr %retval, align 4, !dbg !6393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6393

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %base, align 8, !dbg !6394
  %call2 = call i32 @crypto_register_alg(ptr noundef %5) #16, !dbg !6395
  store i32 %call2, ptr %retval, align 4, !dbg !6396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6396

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6397
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !6397
  %6 = load i32, ptr %retval, align 4, !dbg !6397
  ret i32 %6, !dbg !6397
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_prepare_alg(ptr noundef %alg) #0 align 16 !dbg !6398 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6400, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6401, metadata !DIExpression()), !dbg !6405
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6406
  %1 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 12, !dbg !6407
  %base1 = getelementptr inbounds %struct.hash_alg_common, ptr %1, i32 0, i32 2, !dbg !6408
  store ptr %base1, ptr %base, align 8, !dbg !6405
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6402, metadata !DIExpression()), !dbg !6410
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !6411
  %descsize = getelementptr inbounds %struct.shash_alg, ptr %2, i32 0, i32 11, !dbg !6413
  %3 = load i32, ptr %descsize, align 8, !dbg !6413
  %conv = zext i32 %3 to i64, !dbg !6411
  %cmp = icmp ugt i64 %conv, 368, !dbg !6414
  br i1 %cmp, label %if.then, label %if.end, !dbg !6415

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %base, align 8, !dbg !6417
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 5, !dbg !6419
  %5 = load i32, ptr %cra_alignmask, align 4, !dbg !6419
  %cmp3 = icmp ugt i32 %5, 63, !dbg !6420
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6421

if.then5:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6422

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %alg.addr, align 8, !dbg !6423
  %export = getelementptr inbounds %struct.shash_alg, ptr %6, i32 0, i32 5, !dbg !6425
  %7 = load ptr, ptr %export, align 8, !dbg !6425
  %tobool = icmp ne ptr %7, null, !dbg !6423
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !6426

land.lhs.true:                                    ; preds = %if.end6
  %8 = load ptr, ptr %alg.addr, align 8, !dbg !6427
  %import = getelementptr inbounds %struct.shash_alg, ptr %8, i32 0, i32 6, !dbg !6428
  %9 = load ptr, ptr %import, align 8, !dbg !6428
  %tobool7 = icmp ne ptr %9, null, !dbg !6427
  br i1 %tobool7, label %lor.lhs.false, label %if.then13, !dbg !6429

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end6
  %10 = load ptr, ptr %alg.addr, align 8, !dbg !6430
  %import8 = getelementptr inbounds %struct.shash_alg, ptr %10, i32 0, i32 6, !dbg !6431
  %11 = load ptr, ptr %import8, align 8, !dbg !6431
  %tobool9 = icmp ne ptr %11, null, !dbg !6430
  br i1 %tobool9, label %land.lhs.true10, label %if.end14, !dbg !6432

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %alg.addr, align 8, !dbg !6433
  %export11 = getelementptr inbounds %struct.shash_alg, ptr %12, i32 0, i32 5, !dbg !6434
  %13 = load ptr, ptr %export11, align 8, !dbg !6434
  %tobool12 = icmp ne ptr %13, null, !dbg !6433
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6435

if.then13:                                        ; preds = %land.lhs.true10, %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !6436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6436

if.end14:                                         ; preds = %land.lhs.true10, %lor.lhs.false
  %14 = load ptr, ptr %alg.addr, align 8, !dbg !6437
  %15 = getelementptr inbounds %struct.shash_alg, ptr %14, i32 0, i32 12, !dbg !6438
  %call = call i32 @hash_prepare_alg(ptr noundef %15) #16, !dbg !6439
  store i32 %call, ptr %err, align 4, !dbg !6440
  %16 = load i32, ptr %err, align 4, !dbg !6441
  %tobool15 = icmp ne i32 %16, 0, !dbg !6441
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6443

if.then16:                                        ; preds = %if.end14
  %17 = load i32, ptr %err, align 4, !dbg !6444
  store i32 %17, ptr %retval, align 4, !dbg !6445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6445

if.end17:                                         ; preds = %if.end14
  %18 = load ptr, ptr %base, align 8, !dbg !6446
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 10, !dbg !6447
  store ptr @crypto_shash_type, ptr %cra_type, align 8, !dbg !6448
  %19 = load ptr, ptr %base, align 8, !dbg !6449
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 2, !dbg !6450
  %20 = load i32, ptr %cra_flags, align 8, !dbg !6451
  %or = or i32 %20, 14, !dbg !6451
  store i32 %or, ptr %cra_flags, align 8, !dbg !6451
  %21 = load ptr, ptr %alg.addr, align 8, !dbg !6452
  %finup = getelementptr inbounds %struct.shash_alg, ptr %21, i32 0, i32 3, !dbg !6454
  %22 = load ptr, ptr %finup, align 8, !dbg !6454
  %tobool18 = icmp ne ptr %22, null, !dbg !6452
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !6455

if.then19:                                        ; preds = %if.end17
  %23 = load ptr, ptr %alg.addr, align 8, !dbg !6456
  %finup20 = getelementptr inbounds %struct.shash_alg, ptr %23, i32 0, i32 3, !dbg !6457
  store ptr @shash_finup_unaligned, ptr %finup20, align 8, !dbg !6458
  br label %if.end21, !dbg !6456

if.end21:                                         ; preds = %if.then19, %if.end17
  %24 = load ptr, ptr %alg.addr, align 8, !dbg !6459
  %digest = getelementptr inbounds %struct.shash_alg, ptr %24, i32 0, i32 4, !dbg !6461
  %25 = load ptr, ptr %digest, align 8, !dbg !6461
  %tobool22 = icmp ne ptr %25, null, !dbg !6459
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !6462

if.then23:                                        ; preds = %if.end21
  %26 = load ptr, ptr %alg.addr, align 8, !dbg !6463
  %digest24 = getelementptr inbounds %struct.shash_alg, ptr %26, i32 0, i32 4, !dbg !6464
  store ptr @shash_digest_unaligned, ptr %digest24, align 8, !dbg !6465
  br label %if.end25, !dbg !6463

if.end25:                                         ; preds = %if.then23, %if.end21
  %27 = load ptr, ptr %alg.addr, align 8, !dbg !6466
  %export26 = getelementptr inbounds %struct.shash_alg, ptr %27, i32 0, i32 5, !dbg !6468
  %28 = load ptr, ptr %export26, align 8, !dbg !6468
  %tobool27 = icmp ne ptr %28, null, !dbg !6466
  br i1 %tobool27, label %if.end32, label %if.then28, !dbg !6469

if.then28:                                        ; preds = %if.end25
  %29 = load ptr, ptr %alg.addr, align 8, !dbg !6470
  %export29 = getelementptr inbounds %struct.shash_alg, ptr %29, i32 0, i32 5, !dbg !6472
  store ptr @shash_default_export, ptr %export29, align 8, !dbg !6473
  %30 = load ptr, ptr %alg.addr, align 8, !dbg !6474
  %import30 = getelementptr inbounds %struct.shash_alg, ptr %30, i32 0, i32 6, !dbg !6475
  store ptr @shash_default_import, ptr %import30, align 8, !dbg !6476
  %31 = load ptr, ptr %alg.addr, align 8, !dbg !6477
  %descsize31 = getelementptr inbounds %struct.shash_alg, ptr %31, i32 0, i32 11, !dbg !6478
  %32 = load i32, ptr %descsize31, align 8, !dbg !6478
  %33 = load ptr, ptr %alg.addr, align 8, !dbg !6479
  %34 = getelementptr inbounds %struct.shash_alg, ptr %33, i32 0, i32 12, !dbg !6480
  %statesize = getelementptr inbounds %struct.hash_alg_common, ptr %34, i32 0, i32 1, !dbg !6481
  store i32 %32, ptr %statesize, align 4, !dbg !6482
  br label %if.end32, !dbg !6483

if.end32:                                         ; preds = %if.then28, %if.end25
  %35 = load ptr, ptr %alg.addr, align 8, !dbg !6484
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %35, i32 0, i32 7, !dbg !6486
  %36 = load ptr, ptr %setkey, align 8, !dbg !6486
  %tobool33 = icmp ne ptr %36, null, !dbg !6484
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !6487

if.then34:                                        ; preds = %if.end32
  %37 = load ptr, ptr %alg.addr, align 8, !dbg !6488
  %setkey35 = getelementptr inbounds %struct.shash_alg, ptr %37, i32 0, i32 7, !dbg !6489
  store ptr @shash_no_setkey, ptr %setkey35, align 8, !dbg !6490
  br label %if.end36, !dbg !6488

if.end36:                                         ; preds = %if.then34, %if.end32
  store i32 0, ptr %retval, align 4, !dbg !6491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6491

cleanup:                                          ; preds = %if.end36, %if.then16, %if.then13, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !6492
  %38 = load i32, ptr %retval, align 4, !dbg !6492
  ret i32 %38, !dbg !6492
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6493 dso_local i32 @crypto_register_alg(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_unregister_shash(ptr noundef %alg) #0 align 16 !dbg !6496 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6500, metadata !DIExpression()), !dbg !6501
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6502
  %1 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 12, !dbg !6503
  %base = getelementptr inbounds %struct.anon.37, ptr %1, i32 0, i32 2, !dbg !6503
  call void @crypto_unregister_alg(ptr noundef %base) #16, !dbg !6504
  ret void, !dbg !6505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6506 dso_local void @crypto_unregister_alg(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_register_shashes(ptr noundef %algs, i32 noundef %count) #0 align 16 !dbg !6507 {
entry:
  %retval = alloca i32, align 4
  %algs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algs.addr, metadata !6509, metadata !DIExpression()), !dbg !6514
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6510, metadata !DIExpression()), !dbg !6515
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6516
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6511, metadata !DIExpression()), !dbg !6517
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6516
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6512, metadata !DIExpression()), !dbg !6518
  store i32 0, ptr %i, align 4, !dbg !6519
  br label %for.cond, !dbg !6521

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6522
  %1 = load i32, ptr %count.addr, align 4, !dbg !6524
  %cmp = icmp slt i32 %0, %1, !dbg !6525
  br i1 %cmp, label %for.body, label %for.end, !dbg !6526

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algs.addr, align 8, !dbg !6527
  %3 = load i32, ptr %i, align 4, !dbg !6529
  %idxprom = sext i32 %3 to i64, !dbg !6527
  %arrayidx = getelementptr %struct.shash_alg, ptr %2, i64 %idxprom, !dbg !6527
  %call = call i32 @crypto_register_shash(ptr noundef %arrayidx) #16, !dbg !6530
  store i32 %call, ptr %ret, align 4, !dbg !6531
  %4 = load i32, ptr %ret, align 4, !dbg !6532
  %tobool = icmp ne i32 %4, 0, !dbg !6532
  br i1 %tobool, label %if.then, label %if.end, !dbg !6534

if.then:                                          ; preds = %for.body
  br label %err, !dbg !6535

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6536

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !6537
  %inc = add i32 %5, 1, !dbg !6537
  store i32 %inc, ptr %i, align 4, !dbg !6537
  br label %for.cond, !dbg !6538, !llvm.loop !6539

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6541

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !6513), !dbg !6542
  %6 = load i32, ptr %i, align 4, !dbg !6543
  %dec = add i32 %6, -1, !dbg !6543
  store i32 %dec, ptr %i, align 4, !dbg !6543
  br label %for.cond1, !dbg !6543

for.cond1:                                        ; preds = %for.inc6, %err
  %7 = load i32, ptr %i, align 4, !dbg !6545
  %cmp2 = icmp sge i32 %7, 0, !dbg !6547
  br i1 %cmp2, label %for.body3, label %for.end8, !dbg !6548

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %algs.addr, align 8, !dbg !6549
  %9 = load i32, ptr %i, align 4, !dbg !6550
  %idxprom4 = sext i32 %9 to i64, !dbg !6549
  %arrayidx5 = getelementptr %struct.shash_alg, ptr %8, i64 %idxprom4, !dbg !6549
  call void @crypto_unregister_shash(ptr noundef %arrayidx5) #16, !dbg !6551
  br label %for.inc6, !dbg !6551

for.inc6:                                         ; preds = %for.body3
  %10 = load i32, ptr %i, align 4, !dbg !6552
  %dec7 = add i32 %10, -1, !dbg !6552
  store i32 %dec7, ptr %i, align 4, !dbg !6552
  br label %for.cond1, !dbg !6553, !llvm.loop !6554

for.end8:                                         ; preds = %for.cond1
  %11 = load i32, ptr %ret, align 4, !dbg !6556
  store i32 %11, ptr %retval, align 4, !dbg !6557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6557

cleanup:                                          ; preds = %for.end8, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6558
  %12 = load i32, ptr %retval, align 4, !dbg !6558
  ret i32 %12, !dbg !6558
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_unregister_shashes(ptr noundef %algs, i32 noundef %count) #0 align 16 !dbg !6559 {
entry:
  %algs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algs.addr, metadata !6563, metadata !DIExpression()), !dbg !6566
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6564, metadata !DIExpression()), !dbg !6567
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6568
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6565, metadata !DIExpression()), !dbg !6569
  %0 = load i32, ptr %count.addr, align 4, !dbg !6570
  %sub = sub i32 %0, 1, !dbg !6572
  store i32 %sub, ptr %i, align 4, !dbg !6573
  br label %for.cond, !dbg !6574

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6575
  %cmp = icmp sge i32 %1, 0, !dbg !6577
  br i1 %cmp, label %for.body, label %for.end, !dbg !6578

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algs.addr, align 8, !dbg !6579
  %3 = load i32, ptr %i, align 4, !dbg !6580
  %idxprom = sext i32 %3 to i64, !dbg !6579
  %arrayidx = getelementptr %struct.shash_alg, ptr %2, i64 %idxprom, !dbg !6579
  call void @crypto_unregister_shash(ptr noundef %arrayidx) #16, !dbg !6581
  br label %for.inc, !dbg !6581

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !6582
  %dec = add i32 %4, -1, !dbg !6582
  store i32 %dec, ptr %i, align 4, !dbg !6582
  br label %for.cond, !dbg !6583, !llvm.loop !6584

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6586
  ret void, !dbg !6586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @shash_register_instance(ptr noundef %tmpl, ptr noundef %inst) #0 align 16 !dbg !6587 {
entry:
  %retval = alloca i32, align 4
  %tmpl.addr = alloca ptr, align 8
  %inst.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tmpl, ptr %tmpl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmpl.addr, metadata !6591, metadata !DIExpression()), !dbg !6600
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !6592, metadata !DIExpression()), !dbg !6601
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6602
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6593, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6594, metadata !DIExpression()), !dbg !6604
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !6604
  %free = getelementptr inbounds %struct.shash_instance, ptr %0, i32 0, i32 0, !dbg !6604
  %1 = load ptr, ptr %free, align 8, !dbg !6604
  %tobool = icmp ne ptr %1, null, !dbg !6604
  %lnot = xor i1 %tobool, true, !dbg !6604
  %lnot1 = xor i1 %lnot, true, !dbg !6604
  %lnot2 = xor i1 %lnot1, true, !dbg !6604
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6604
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6604
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6605
  %tobool3 = icmp ne i32 %2, 0, !dbg !6605
  %lnot4 = xor i1 %tobool3, true, !dbg !6605
  %lnot6 = xor i1 %lnot4, true, !dbg !6605
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6605
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6605
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6605
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6605
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6604

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6605

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6606
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6597, metadata !DIExpression()), !dbg !6606
  store i32 2305, ptr %__flags, align 4, !dbg !6606
  br label %do.body9, !dbg !6606

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6607

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6607

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6606

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6609
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 726, i32 %3, i64 12) #15, !dbg !6609, !srcloc !6611
  br label %do.cond11, !dbg !6609

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6609

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6606

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6612

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6612

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6605
  br label %do.cond16, !dbg !6606

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6606

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6606

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6604
  %tobool18 = icmp ne i32 %4, 0, !dbg !6604
  %lnot19 = xor i1 %tobool18, true, !dbg !6604
  %lnot21 = xor i1 %lnot19, true, !dbg !6604
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6604
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6604
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6604
  store i64 %expval24, ptr %tmp, align 8, !dbg !6605
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6614
  %5 = load i64, ptr %tmp, align 8, !dbg !6604
  %tobool25 = icmp ne i64 %5, 0, !dbg !6614
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6615

if.then26:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6616

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %inst.addr, align 8, !dbg !6617
  %7 = getelementptr inbounds %struct.shash_instance, ptr %6, i32 0, i32 1, !dbg !6618
  %call = call i32 @shash_prepare_alg(ptr noundef %7) #16, !dbg !6619
  store i32 %call, ptr %err, align 4, !dbg !6620
  %8 = load i32, ptr %err, align 4, !dbg !6621
  %tobool28 = icmp ne i32 %8, 0, !dbg !6621
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6623

if.then29:                                        ; preds = %if.end27
  %9 = load i32, ptr %err, align 4, !dbg !6624
  store i32 %9, ptr %retval, align 4, !dbg !6625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6625

if.end30:                                         ; preds = %if.end27
  %10 = load ptr, ptr %tmpl.addr, align 8, !dbg !6626
  %11 = load ptr, ptr %inst.addr, align 8, !dbg !6627
  %call31 = call ptr @shash_crypto_instance(ptr noundef %11) #16, !dbg !6628
  %call32 = call i32 @crypto_register_instance(ptr noundef %10, ptr noundef %call31) #16, !dbg !6629
  store i32 %call32, ptr %retval, align 4, !dbg !6630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6630

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6631
  %12 = load i32, ptr %retval, align 4, !dbg !6631
  ret i32 %12, !dbg !6631
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6632 dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_crypto_instance(ptr noundef %inst) #3 align 16 !dbg !6635 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !6639, metadata !DIExpression()), !dbg !6640
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !6641
  %1 = getelementptr inbounds %struct.shash_instance, ptr %0, i32 0, i32 1, !dbg !6642
  %base = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1, !dbg !6643
  ret ptr %base, !dbg !6644
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @shash_free_singlespawn_instance(ptr noundef %inst) #0 align 16 !dbg !6645 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !6647, metadata !DIExpression()), !dbg !6648
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !6649
  %call = call ptr @shash_instance_ctx(ptr noundef %0) #16, !dbg !6650
  call void @crypto_drop_spawn(ptr noundef %call) #16, !dbg !6651
  %1 = load ptr, ptr %inst.addr, align 8, !dbg !6652
  call void @kfree(ptr noundef %1) #16, !dbg !6653
  ret void, !dbg !6654
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6655 dso_local void @crypto_drop_spawn(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_instance_ctx(ptr noundef %inst) #3 align 16 !dbg !6658 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !6662, metadata !DIExpression()), !dbg !6663
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !6664
  %call = call ptr @shash_crypto_instance(ptr noundef %0) #16, !dbg !6665
  %call1 = call ptr @crypto_instance_ctx(ptr noundef %call) #16, !dbg !6666
  ret ptr %call1, !dbg !6667
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6668 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_alignmask(ptr noundef %tfm) #3 align 16 !dbg !6669 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6673, metadata !DIExpression()), !dbg !6674
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6675
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !6676
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !6676
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5, !dbg !6677
  %2 = load i32, ptr %cra_alignmask, align 4, !dbg !6677
  ret i32 %2, !dbg !6678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_ctx_alignment() #3 align 16 !dbg !6679 {
entry:
  %tfm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !6684
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6683, metadata !DIExpression()), !dbg !6685
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !6686
  ret i32 8, !dbg !6687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6688 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6692, metadata !DIExpression()), !dbg !6697
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6693, metadata !DIExpression()), !dbg !6698
  %0 = load i64, ptr %size.addr, align 8, !dbg !6699
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6700
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6701

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6702
  %tobool = icmp ne i64 %2, 0, !dbg !6702
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6703

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6704
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6694, metadata !DIExpression()), !dbg !6705
  %3 = load i64, ptr %size.addr, align 8, !dbg !6706
  %cmp = icmp ugt i64 %3, 8192, !dbg !6708
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6709

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6710
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6711
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6712
  store ptr %call, ptr %retval, align 8, !dbg !6713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6713

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6714
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6714
  store i32 %call2, ptr %index, align 4, !dbg !6715
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6716
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6717
  %9 = ptrtoint ptr %8 to i64, !dbg !6717
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6718
  %idxprom = zext i32 %call3 to i64, !dbg !6719
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6719
  %10 = load i32, ptr %index, align 4, !dbg !6720
  %idxprom4 = zext i32 %10 to i64, !dbg !6719
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6719
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6719
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6721
  %13 = load i64, ptr %size.addr, align 8, !dbg !6722
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6723
  store ptr %call6, ptr %retval, align 8, !dbg !6724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6724

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6725
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6726
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6727
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6728
  store ptr %call8, ptr %retval, align 8, !dbg !6729
  br label %return, !dbg !6729

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6730
  ret ptr %16, !dbg !6730
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6731 dso_local void @kfree_sensitive(ptr noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6732 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6733 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6737, metadata !DIExpression()), !dbg !6739
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  %0 = load i64, ptr %size.addr, align 8, !dbg !6741
  %tobool = icmp ne i64 %0, 0, !dbg !6741
  br i1 %tobool, label %if.end, label %if.then, !dbg !6743

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6744
  br label %return, !dbg !6744

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6745
  %cmp = icmp ule i64 %1, 8, !dbg !6747
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6748

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6749
  br label %return, !dbg !6749

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6750
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6752
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6753

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6754
  %cmp4 = icmp ule i64 %3, 96, !dbg !6755
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6756

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6758
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6760
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6761

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6762
  %cmp9 = icmp ule i64 %5, 192, !dbg !6763
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6764

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6765
  br label %return, !dbg !6765

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6766
  %cmp12 = icmp ule i64 %6, 8, !dbg !6768
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6769

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6770
  br label %return, !dbg !6770

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6771
  %cmp15 = icmp ule i64 %7, 16, !dbg !6773
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6774

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6775
  br label %return, !dbg !6775

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6776
  %cmp18 = icmp ule i64 %8, 32, !dbg !6778
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6779

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6780
  br label %return, !dbg !6780

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6781
  %cmp21 = icmp ule i64 %9, 64, !dbg !6783
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6784

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6785
  br label %return, !dbg !6785

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6786
  %cmp24 = icmp ule i64 %10, 128, !dbg !6788
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6789

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6790
  br label %return, !dbg !6790

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6791
  %cmp27 = icmp ule i64 %11, 256, !dbg !6793
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6794

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6795
  br label %return, !dbg !6795

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6796
  %cmp30 = icmp ule i64 %12, 512, !dbg !6798
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6799

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6800
  br label %return, !dbg !6800

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6801
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6803
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6804

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6805
  br label %return, !dbg !6805

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6806
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6808
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6809

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6810
  br label %return, !dbg !6810

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6811
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6813
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6814

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6815
  br label %return, !dbg !6815

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6816
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6818
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6819

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6820
  br label %return, !dbg !6820

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6821
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6823
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6824

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6825
  br label %return, !dbg !6825

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6826
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6828
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6829

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6830
  br label %return, !dbg !6830

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6831
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6833
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6834

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6835
  br label %return, !dbg !6835

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6836
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6838
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6839

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6840
  br label %return, !dbg !6840

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6841
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6843
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6844

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6845
  br label %return, !dbg !6845

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6846
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6848
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6849

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6850
  br label %return, !dbg !6850

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6851
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6853
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6854

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6855
  br label %return, !dbg !6855

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6856
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6858
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6859

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6860
  br label %return, !dbg !6860

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6861, !range !6863, !noundef !1223
  %tobool69 = trunc i8 %25 to i1, !dbg !6861
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6864

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6865

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !6866, !srcloc !6869
  unreachable, !dbg !6866

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6870

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6871

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6872

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6874

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6872

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !6876, !srcloc !6878
  br label %do.end75, !dbg !6876

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6872

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6879
  br label %return, !dbg !6879

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6880
  ret i32 %26, !dbg !6880
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6881 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6887 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6891, metadata !DIExpression()), !dbg !6893
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6892, metadata !DIExpression()), !dbg !6894
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6895
  %and = and i32 %0, 17, !dbg !6895
  %cmp = icmp eq i32 %and, 0, !dbg !6895
  %lnot = xor i1 %cmp, true, !dbg !6895
  %lnot1 = xor i1 %lnot, true, !dbg !6895
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6895
  %conv = sext i32 %lnot.ext to i64, !dbg !6895
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6895
  %tobool = icmp ne i64 %expval, 0, !dbg !6895
  br i1 %tobool, label %if.then, label %if.end, !dbg !6897

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6898
  br label %return, !dbg !6898

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6899
  %and2 = and i32 %1, 1, !dbg !6901
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6901
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6902

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6903
  br label %return, !dbg !6903

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6904
  br label %return, !dbg !6904

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6906
  ret i32 %2, !dbg !6906
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6907 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6908 dso_local void @__compiletime_assert_117() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @crypto_shash_alg_needs_key(ptr noundef %alg) #3 align 16 !dbg !6909 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6911, metadata !DIExpression()), !dbg !6912
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6913
  %call = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %0) #16, !dbg !6914
  br i1 %call, label %land.rhs, label %land.end, !dbg !6915

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !6916
  %2 = getelementptr inbounds %struct.shash_alg, ptr %1, i32 0, i32 12, !dbg !6917
  %base = getelementptr inbounds %struct.anon.37, ptr %2, i32 0, i32 2, !dbg !6917
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 2, !dbg !6918
  %3 = load i32, ptr %cra_flags, align 8, !dbg !6918
  %and = and i32 %3, 16384, !dbg !6919
  %tobool = icmp ne i32 %and, 0, !dbg !6920
  %lnot = xor i1 %tobool, true, !dbg !6920
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6921
  ret i1 %4, !dbg !6922
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_shash_set_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !6923 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6925, metadata !DIExpression()), !dbg !6927
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6926, metadata !DIExpression()), !dbg !6928
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6929
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #16, !dbg !6930
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6931
  call void @crypto_tfm_set_flags(ptr noundef %call, i32 noundef %1) #16, !dbg !6932
  ret void, !dbg !6933
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_tfm_set_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !6934 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6938, metadata !DIExpression()), !dbg !6940
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6939, metadata !DIExpression()), !dbg !6941
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6942
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6943
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 1, !dbg !6944
  %2 = load i32, ptr %crt_flags, align 4, !dbg !6945
  %or = or i32 %2, %0, !dbg !6945
  store i32 %or, ptr %crt_flags, align 4, !dbg !6945
  ret void, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_tfm_clear_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !6947 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6949, metadata !DIExpression()), !dbg !6951
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6950, metadata !DIExpression()), !dbg !6952
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6953
  %not = xor i32 %0, -1, !dbg !6954
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6955
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 1, !dbg !6956
  %2 = load i32, ptr %crt_flags, align 4, !dbg !6957
  %and = and i32 %2, %not, !dbg !6957
  store i32 %and, ptr %crt_flags, align 4, !dbg !6957
  ret void, !dbg !6958
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_hash_errstat(ptr noundef %alg, i32 noundef %err) #3 align 16 !dbg !6959 {
entry:
  %alg.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6963, metadata !DIExpression()), !dbg !6965
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6964, metadata !DIExpression()), !dbg !6966
  %0 = load i32, ptr %err.addr, align 4, !dbg !6967
  ret i32 %0, !dbg !6969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_digestsize(ptr noundef %tfm) #3 align 16 !dbg !6970 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6972, metadata !DIExpression()), !dbg !6973
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6974
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #16, !dbg !6975
  %1 = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 12, !dbg !6976
  %digestsize = getelementptr inbounds %struct.anon.37, ptr %1, i32 0, i32 0, !dbg !6976
  %2 = load i32, ptr %digestsize, align 8, !dbg !6976
  ret i32 %2, !dbg !6977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_get_flags(ptr noundef %tfm) #3 align 16 !dbg !6978 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6982, metadata !DIExpression()), !dbg !6983
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6984
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 1, !dbg !6985
  %1 = load i32, ptr %crt_flags, align 4, !dbg !6985
  ret i32 %1, !dbg !6986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #3 align 16 !dbg !6987 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6992, metadata !DIExpression()), !dbg !6994
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6993, metadata !DIExpression()), !dbg !6995
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6996
  %1 = load i64, ptr %count.addr, align 8, !dbg !6997
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !6998
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6999
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #15, !dbg !6999, !srcloc !7000
  ret void, !dbg !7001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #10 align 16 !dbg !7002 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7008, metadata !DIExpression()), !dbg !7009
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7010
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !7010
  %2 = inttoptr i64 %1 to ptr, !dbg !7010
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !7010
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !7010
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !7010
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !7010
  %shl = shl i64 %sub.ptr.div, 12, !dbg !7010
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !7010
  %add = add i64 %shl, %3, !dbg !7010
  %4 = inttoptr i64 %add to ptr, !dbg !7010
  ret ptr %4, !dbg !7011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7012 dso_local ptr @crypto_create_tfm_node(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_reqtfm(ptr noundef %req) #3 align 16 !dbg !7015 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !7019, metadata !DIExpression()), !dbg !7020
  %0 = load ptr, ptr %req.addr, align 8, !dbg !7021
  %base = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 0, !dbg !7022
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 3, !dbg !7023
  %1 = load ptr, ptr %tfm, align 8, !dbg !7023
  %call = call ptr @__crypto_ahash_cast(ptr noundef %1) #16, !dbg !7024
  ret ptr %call, !dbg !7025
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ahash_request_ctx(ptr noundef %req) #3 align 16 !dbg !7026 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !7030, metadata !DIExpression()), !dbg !7031
  %0 = load ptr, ptr %req.addr, align 8, !dbg !7032
  %__ctx = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 5, !dbg !7033
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !7032
  ret ptr %arraydecay, !dbg !7034
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_tfm(ptr noundef %tfm) #3 align 16 !dbg !7035 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7039, metadata !DIExpression()), !dbg !7040
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7041
  %base = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, !dbg !7042
  ret ptr %base, !dbg !7043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_export(ptr noundef %desc, ptr noundef %out) #3 align 16 !dbg !7044 {
entry:
  %desc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7046, metadata !DIExpression()), !dbg !7048
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !7047, metadata !DIExpression()), !dbg !7049
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !7050
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !7051
  %1 = load ptr, ptr %tfm, align 8, !dbg !7051
  %call = call ptr @crypto_shash_alg(ptr noundef %1) #16, !dbg !7052
  %export = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 5, !dbg !7053
  %2 = load ptr, ptr %export, align 8, !dbg !7053
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !7054
  %4 = load ptr, ptr %out.addr, align 8, !dbg !7055
  %call1 = call i32 %2(ptr noundef %3, ptr noundef %4) #16, !dbg !7052
  ret i32 %call1, !dbg !7056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_import(ptr noundef %desc, ptr noundef %in) #3 align 16 !dbg !7057 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7059, metadata !DIExpression()), !dbg !7062
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !7060, metadata !DIExpression()), !dbg !7063
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #15, !dbg !7064
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !7061, metadata !DIExpression()), !dbg !7065
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !7066
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !7067
  %1 = load ptr, ptr %tfm1, align 8, !dbg !7067
  store ptr %1, ptr %tfm, align 8, !dbg !7065
  %2 = load ptr, ptr %tfm, align 8, !dbg !7068
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #16, !dbg !7070
  %and = and i32 %call, 1, !dbg !7071
  %tobool = icmp ne i32 %and, 0, !dbg !7071
  br i1 %tobool, label %if.then, label %if.end, !dbg !7072

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !7073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7073

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !7074
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #16, !dbg !7075
  %import = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 6, !dbg !7076
  %4 = load ptr, ptr %import, align 8, !dbg !7076
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !7077
  %6 = load ptr, ptr %in.addr, align 8, !dbg !7078
  %call3 = call i32 %4(ptr noundef %5, ptr noundef %6) #16, !dbg !7075
  store i32 %call3, ptr %retval, align 4, !dbg !7079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7079

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #15, !dbg !7080
  %7 = load i32, ptr %retval, align 4, !dbg !7080
  ret i32 %7, !dbg !7080
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7081 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_init_tfm(ptr noundef %tfm) #0 align 16 !dbg !7084 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7086, metadata !DIExpression()), !dbg !7096
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #15, !dbg !7097
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !7087, metadata !DIExpression()), !dbg !7098
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7099
  %call = call ptr @__crypto_shash_cast(ptr noundef %0) #16, !dbg !7100
  store ptr %call, ptr %hash, align 8, !dbg !7098
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #15, !dbg !7101
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !7088, metadata !DIExpression()), !dbg !7102
  %1 = load ptr, ptr %hash, align 8, !dbg !7103
  %call1 = call ptr @crypto_shash_alg(ptr noundef %1) #16, !dbg !7104
  store ptr %call1, ptr %alg, align 8, !dbg !7102
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !7105
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7089, metadata !DIExpression()), !dbg !7106
  %2 = load ptr, ptr %alg, align 8, !dbg !7107
  %descsize = getelementptr inbounds %struct.shash_alg, ptr %2, i32 0, i32 11, !dbg !7108
  %3 = load i32, ptr %descsize, align 8, !dbg !7108
  %4 = load ptr, ptr %hash, align 8, !dbg !7109
  %descsize2 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 0, !dbg !7110
  store i32 %3, ptr %descsize2, align 8, !dbg !7111
  %5 = load ptr, ptr %hash, align 8, !dbg !7112
  %6 = load ptr, ptr %alg, align 8, !dbg !7113
  call void @shash_set_needkey(ptr noundef %5, ptr noundef %6) #16, !dbg !7114
  %7 = load ptr, ptr %alg, align 8, !dbg !7115
  %exit_tfm = getelementptr inbounds %struct.shash_alg, ptr %7, i32 0, i32 9, !dbg !7117
  %8 = load ptr, ptr %exit_tfm, align 8, !dbg !7117
  %tobool = icmp ne ptr %8, null, !dbg !7115
  br i1 %tobool, label %if.then, label %if.end, !dbg !7118

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tfm.addr, align 8, !dbg !7119
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3, !dbg !7120
  store ptr @crypto_shash_exit_tfm, ptr %exit, align 8, !dbg !7121
  br label %if.end, !dbg !7119

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %alg, align 8, !dbg !7122
  %init_tfm = getelementptr inbounds %struct.shash_alg, ptr %10, i32 0, i32 8, !dbg !7124
  %11 = load ptr, ptr %init_tfm, align 8, !dbg !7124
  %tobool3 = icmp ne ptr %11, null, !dbg !7122
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !7125

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7126

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %alg, align 8, !dbg !7127
  %init_tfm6 = getelementptr inbounds %struct.shash_alg, ptr %12, i32 0, i32 8, !dbg !7128
  %13 = load ptr, ptr %init_tfm6, align 8, !dbg !7128
  %14 = load ptr, ptr %hash, align 8, !dbg !7129
  %call7 = call i32 %13(ptr noundef %14) #16, !dbg !7127
  store i32 %call7, ptr %err, align 4, !dbg !7130
  %15 = load i32, ptr %err, align 4, !dbg !7131
  %tobool8 = icmp ne i32 %15, 0, !dbg !7131
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !7133

if.then9:                                         ; preds = %if.end5
  %16 = load i32, ptr %err, align 4, !dbg !7134
  store i32 %16, ptr %retval, align 4, !dbg !7135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7135

if.end10:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !7136
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7090, metadata !DIExpression()), !dbg !7136
  %17 = load ptr, ptr %hash, align 8, !dbg !7136
  %descsize11 = getelementptr inbounds %struct.crypto_shash, ptr %17, i32 0, i32 0, !dbg !7136
  %18 = load i32, ptr %descsize11, align 8, !dbg !7136
  %conv = zext i32 %18 to i64, !dbg !7136
  %cmp = icmp ugt i64 %conv, 368, !dbg !7136
  %lnot = xor i1 %cmp, true, !dbg !7136
  %lnot13 = xor i1 %lnot, true, !dbg !7136
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !7136
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7136
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !7137
  %tobool14 = icmp ne i32 %19, 0, !dbg !7137
  %lnot15 = xor i1 %tobool14, true, !dbg !7137
  %lnot17 = xor i1 %lnot15, true, !dbg !7137
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7137
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !7137
  %expval = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !7137
  %tobool20 = icmp ne i64 %expval, 0, !dbg !7137
  br i1 %tobool20, label %if.then21, label %if.end31, !dbg !7136

if.then21:                                        ; preds = %if.end10
  br label %do.body, !dbg !7137

do.body:                                          ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !7138
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7093, metadata !DIExpression()), !dbg !7138
  store i32 2307, ptr %__flags, align 4, !dbg !7138
  br label %do.body22, !dbg !7138

do.body22:                                        ; preds = %do.body
  br label %do.cond, !dbg !7139

do.cond:                                          ; preds = %do.body22
  br label %do.end, !dbg !7139

do.end:                                           ; preds = %do.cond
  br label %do.body23, !dbg !7138

do.body23:                                        ; preds = %do.end
  %20 = load i32, ptr %__flags, align 4, !dbg !7141
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 495, i32 %20, i64 12) #15, !dbg !7141, !srcloc !7143
  br label %do.cond24, !dbg !7141

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !7141

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !7138

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !7144

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !7144

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !7137
  br label %do.cond29, !dbg !7138

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !7138

do.end30:                                         ; preds = %do.cond29
  br label %if.end31, !dbg !7138

if.end31:                                         ; preds = %do.end30, %if.end10
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !7136
  %tobool32 = icmp ne i32 %21, 0, !dbg !7136
  %lnot33 = xor i1 %tobool32, true, !dbg !7136
  %lnot35 = xor i1 %lnot33, true, !dbg !7136
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !7136
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !7136
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !7136
  store i64 %expval38, ptr %tmp, align 8, !dbg !7137
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !7146
  %22 = load i64, ptr %tmp, align 8, !dbg !7136
  %tobool39 = icmp ne i64 %22, 0, !dbg !7146
  br i1 %tobool39, label %if.then40, label %if.end46, !dbg !7147

if.then40:                                        ; preds = %if.end31
  %23 = load ptr, ptr %alg, align 8, !dbg !7148
  %exit_tfm41 = getelementptr inbounds %struct.shash_alg, ptr %23, i32 0, i32 9, !dbg !7151
  %24 = load ptr, ptr %exit_tfm41, align 8, !dbg !7151
  %tobool42 = icmp ne ptr %24, null, !dbg !7148
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !7152

if.then43:                                        ; preds = %if.then40
  %25 = load ptr, ptr %alg, align 8, !dbg !7153
  %exit_tfm44 = getelementptr inbounds %struct.shash_alg, ptr %25, i32 0, i32 9, !dbg !7154
  %26 = load ptr, ptr %exit_tfm44, align 8, !dbg !7154
  %27 = load ptr, ptr %hash, align 8, !dbg !7155
  call void %26(ptr noundef %27) #16, !dbg !7153
  br label %if.end45, !dbg !7153

if.end45:                                         ; preds = %if.then43, %if.then40
  store i32 -22, ptr %retval, align 4, !dbg !7156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7156

if.end46:                                         ; preds = %if.end31
  store i32 0, ptr %retval, align 4, !dbg !7157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7157

cleanup:                                          ; preds = %if.end46, %if.end45, %if.then9, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !7158
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #15, !dbg !7158
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #15, !dbg !7158
  %28 = load i32, ptr %retval, align 4, !dbg !7158
  ret i32 %28, !dbg !7158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_shash_show(ptr noundef %m, ptr noundef %alg) #0 align 16 !dbg !7159 {
entry:
  %m.addr = alloca ptr, align 8
  %alg.addr = alloca ptr, align 8
  %salg = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7161, metadata !DIExpression()), !dbg !7164
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !7162, metadata !DIExpression()), !dbg !7165
  call void @llvm.lifetime.start.p0(i64 8, ptr %salg) #15, !dbg !7166
  call void @llvm.dbg.declare(metadata ptr %salg, metadata !7163, metadata !DIExpression()), !dbg !7167
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !7168
  %call = call ptr @__crypto_shash_alg(ptr noundef %0) #16, !dbg !7169
  store ptr %call, ptr %salg, align 8, !dbg !7167
  %1 = load ptr, ptr %m.addr, align 8, !dbg !7170
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.2) #16, !dbg !7171
  %2 = load ptr, ptr %m.addr, align 8, !dbg !7172
  %3 = load ptr, ptr %alg.addr, align 8, !dbg !7173
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3, !dbg !7174
  %4 = load i32, ptr %cra_blocksize, align 4, !dbg !7174
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef @.str.3, i32 noundef %4) #16, !dbg !7175
  %5 = load ptr, ptr %m.addr, align 8, !dbg !7176
  %6 = load ptr, ptr %salg, align 8, !dbg !7177
  %7 = getelementptr inbounds %struct.shash_alg, ptr %6, i32 0, i32 12, !dbg !7178
  %digestsize = getelementptr inbounds %struct.anon.37, ptr %7, i32 0, i32 0, !dbg !7178
  %8 = load i32, ptr %digestsize, align 8, !dbg !7178
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.4, i32 noundef %8) #16, !dbg !7179
  call void @llvm.lifetime.end.p0(i64 8, ptr %salg) #15, !dbg !7180
  ret void, !dbg !7180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_shash_free_instance(ptr noundef %inst) #0 align 16 !dbg !7181 {
entry:
  %inst.addr = alloca ptr, align 8
  %shash = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !7183, metadata !DIExpression()), !dbg !7185
  call void @llvm.lifetime.start.p0(i64 8, ptr %shash) #15, !dbg !7186
  call void @llvm.dbg.declare(metadata ptr %shash, metadata !7184, metadata !DIExpression()), !dbg !7187
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !7188
  %call = call ptr @shash_instance(ptr noundef %0) #16, !dbg !7189
  store ptr %call, ptr %shash, align 8, !dbg !7187
  %1 = load ptr, ptr %shash, align 8, !dbg !7190
  %free = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 0, !dbg !7191
  %2 = load ptr, ptr %free, align 8, !dbg !7191
  %3 = load ptr, ptr %shash, align 8, !dbg !7192
  call void %2(ptr noundef %3) #16, !dbg !7190
  call void @llvm.lifetime.end.p0(i64 8, ptr %shash) #15, !dbg !7193
  ret void, !dbg !7193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_cast(ptr noundef %tfm) #3 align 16 !dbg !7194 {
entry:
  %tfm.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7198, metadata !DIExpression()), !dbg !7201
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7202
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7199, metadata !DIExpression()), !dbg !7202
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7202
  store ptr %0, ptr %__mptr, align 8, !dbg !7202
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7202
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !7202
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7203
  %2 = load ptr, ptr %tmp, align 8, !dbg !7202
  ret ptr %2, !dbg !7204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_shash_exit_tfm(ptr noundef %tfm) #0 align 16 !dbg !7205 {
entry:
  %tfm.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %alg = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7207, metadata !DIExpression()), !dbg !7210
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #15, !dbg !7211
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !7208, metadata !DIExpression()), !dbg !7212
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7213
  %call = call ptr @__crypto_shash_cast(ptr noundef %0) #16, !dbg !7214
  store ptr %call, ptr %hash, align 8, !dbg !7212
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #15, !dbg !7215
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !7209, metadata !DIExpression()), !dbg !7216
  %1 = load ptr, ptr %hash, align 8, !dbg !7217
  %call1 = call ptr @crypto_shash_alg(ptr noundef %1) #16, !dbg !7218
  store ptr %call1, ptr %alg, align 8, !dbg !7216
  %2 = load ptr, ptr %alg, align 8, !dbg !7219
  %exit_tfm = getelementptr inbounds %struct.shash_alg, ptr %2, i32 0, i32 9, !dbg !7220
  %3 = load ptr, ptr %exit_tfm, align 8, !dbg !7220
  %4 = load ptr, ptr %hash, align 8, !dbg !7221
  call void %3(ptr noundef %4) #16, !dbg !7219
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #15, !dbg !7222
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #15, !dbg !7222
  ret void, !dbg !7222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7223 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_instance(ptr noundef %inst) #3 align 16 !dbg !7226 {
entry:
  %inst.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !7230, metadata !DIExpression()), !dbg !7233
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7234
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7231, metadata !DIExpression()), !dbg !7234
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !7234
  store ptr %0, ptr %__mptr, align 8, !dbg !7234
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7234
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !7234
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7234
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7235
  %2 = load ptr, ptr %tmp, align 8, !dbg !7234
  ret ptr %2, !dbg !7236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7237 dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #3 align 16 !dbg !7240 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7245, metadata !DIExpression()), !dbg !7246
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7247
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #16, !dbg !7248
  ret i1 %call, !dbg !7249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7250 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7254, metadata !DIExpression()), !dbg !7256
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7255, metadata !DIExpression()), !dbg !7257
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7258
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7259
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !7260
  ret i1 %call, !dbg !7261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7262 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7266, metadata !DIExpression()), !dbg !7270
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7267, metadata !DIExpression()), !dbg !7271
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7268, metadata !DIExpression()), !dbg !7272
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !7273
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7269, metadata !DIExpression()), !dbg !7274
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7275
  %call = call i32 @refcount_read(ptr noundef %0) #16, !dbg !7276
  store i32 %call, ptr %old, align 4, !dbg !7274
  br label %do.body, !dbg !7277

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !7278
  %tobool = icmp ne i32 %1, 0, !dbg !7278
  br i1 %tobool, label %if.end, label %if.then, !dbg !7281

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !7282

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !7283

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !7284
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !7285
  %3 = load i32, ptr %old, align 4, !dbg !7286
  %4 = load i32, ptr %i.addr, align 4, !dbg !7287
  %add = add i32 %3, %4, !dbg !7288
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #16, !dbg !7289
  %lnot = xor i1 %call1, true, !dbg !7290
  br i1 %lnot, label %do.body, label %do.end, !dbg !7283, !llvm.loop !7291

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !7293
  %tobool2 = icmp ne ptr %5, null, !dbg !7293
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7295

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !7296
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !7297
  store i32 %6, ptr %7, align 4, !dbg !7298
  br label %if.end4, !dbg !7299

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !7300
  %cmp = icmp slt i32 %8, 0, !dbg !7300
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7300

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !7300
  %10 = load i32, ptr %i.addr, align 4, !dbg !7300
  %add5 = add i32 %9, %10, !dbg !7300
  %cmp6 = icmp slt i32 %add5, 0, !dbg !7300
  br label %lor.end, !dbg !7300

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !7300
  %lnot8 = xor i1 %lnot7, true, !dbg !7300
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !7300
  %conv = sext i32 %lnot.ext to i64, !dbg !7300
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7300
  %tobool9 = icmp ne i64 %expval, 0, !dbg !7300
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !7302

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !7303
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #16, !dbg !7304
  br label %if.end11, !dbg !7304

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !7305
  %tobool12 = icmp ne i32 %13, 0, !dbg !7305
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !7306
  ret i1 %tobool12, !dbg !7307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #3 align 16 !dbg !7308 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7314, metadata !DIExpression()), !dbg !7315
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7316
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !7317
  %call = call i32 @atomic_read(ptr noundef %refs) #16, !dbg !7318
  ret i32 %call, !dbg !7319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #10 align 16 !dbg !7320 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7326, metadata !DIExpression()), !dbg !7329
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7327, metadata !DIExpression()), !dbg !7330
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7328, metadata !DIExpression()), !dbg !7331
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7332
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !7333
  %1 = load ptr, ptr %old.addr, align 8, !dbg !7334
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #16, !dbg !7335
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7336
  %3 = load ptr, ptr %old.addr, align 8, !dbg !7337
  %4 = load i32, ptr %new.addr, align 4, !dbg !7338
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !7339
  ret i1 %call, !dbg !7340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7341 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #10 align 16 !dbg !7344 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7350, metadata !DIExpression()), !dbg !7351
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7352
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #16, !dbg !7353
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7354
  %call = call i32 @raw_atomic_read(ptr noundef %1) #16, !dbg !7355
  ret i32 %call, !dbg !7356
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7357 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7365, metadata !DIExpression()), !dbg !7367
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7366, metadata !DIExpression()), !dbg !7368
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7369
  %1 = load i64, ptr %size.addr, align 8, !dbg !7370
  %conv = trunc i64 %1 to i32, !dbg !7370
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !7371
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7372
  %3 = load i64, ptr %size.addr, align 8, !dbg !7372
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !7372
  ret void, !dbg !7373
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #10 align 16 !dbg !7374 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7377, metadata !DIExpression()), !dbg !7378
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7379
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !7380
  ret i32 %call, !dbg !7381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7382 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7387, metadata !DIExpression()), !dbg !7389
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7388, metadata !DIExpression()), !dbg !7390
  ret i1 true, !dbg !7391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7392 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7397, metadata !DIExpression()), !dbg !7400
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7398, metadata !DIExpression()), !dbg !7401
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7399, metadata !DIExpression()), !dbg !7402
  ret void, !dbg !7403
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #10 align 16 !dbg !7404 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7407, metadata !DIExpression()), !dbg !7408
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7409
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7409
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7409
  ret i32 %1, !dbg !7410
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7411 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7413, metadata !DIExpression()), !dbg !7415
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7414, metadata !DIExpression()), !dbg !7416
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7417
  %1 = load i64, ptr %size.addr, align 8, !dbg !7418
  %conv = trunc i64 %1 to i32, !dbg !7418
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !7419
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7420
  %3 = load i64, ptr %size.addr, align 8, !dbg !7420
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !7420
  ret void, !dbg !7421
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #10 align 16 !dbg !7422 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7424, metadata !DIExpression()), !dbg !7427
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7425, metadata !DIExpression()), !dbg !7428
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7426, metadata !DIExpression()), !dbg !7429
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7430
  %1 = load ptr, ptr %old.addr, align 8, !dbg !7431
  %2 = load i32, ptr %new.addr, align 4, !dbg !7432
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16, !dbg !7433
  ret i1 %call, !dbg !7434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7435 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7437, metadata !DIExpression()), !dbg !7439
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7438, metadata !DIExpression()), !dbg !7440
  ret i1 true, !dbg !7441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #10 align 16 !dbg !7442 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7444, metadata !DIExpression()), !dbg !7453
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7445, metadata !DIExpression()), !dbg !7454
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7446, metadata !DIExpression()), !dbg !7455
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #15, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %success, metadata !7447, metadata !DIExpression()), !dbg !7456
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #15, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !7449, metadata !DIExpression()), !dbg !7456
  %0 = load ptr, ptr %old.addr, align 8, !dbg !7456
  store ptr %0, ptr %_old, align 8, !dbg !7456
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #15, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !7450, metadata !DIExpression()), !dbg !7456
  %1 = load ptr, ptr %_old, align 8, !dbg !7456
  %2 = load i32, ptr %1, align 4, !dbg !7456
  store i32 %2, ptr %__old, align 4, !dbg !7456
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #15, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !7451, metadata !DIExpression()), !dbg !7456
  %3 = load i32, ptr %new.addr, align 4, !dbg !7456
  store i32 %3, ptr %__new, align 4, !dbg !7456
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7452, metadata !DIExpression()), !dbg !7456
  %4 = load ptr, ptr %v.addr, align 8, !dbg !7456
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !7456
  store ptr %counter, ptr %__ptr, align 8, !dbg !7456
  %5 = load ptr, ptr %__ptr, align 8, !dbg !7456
  %6 = load i32, ptr %__old, align 4, !dbg !7456
  %7 = load i32, ptr %__new, align 4, !dbg !7456
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #15, !dbg !7456, !srcloc !7457
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !7456
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !7456
  %9 = icmp ult i8 %asmresult, 2, !dbg !7456
  call void @llvm.assume(i1 %9), !dbg !7456
  store i8 %asmresult, ptr %success, align 1, !dbg !7456
  store i32 %asmresult1, ptr %__old, align 4, !dbg !7456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !7456
  %10 = load i8, ptr %success, align 1, !dbg !7458, !range !6863, !noundef !1223
  %tobool = trunc i8 %10 to i1, !dbg !7458
  %lnot = xor i1 %tobool, true, !dbg !7458
  %lnot2 = xor i1 %lnot, true, !dbg !7458
  %lnot3 = xor i1 %lnot2, true, !dbg !7458
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7458
  %conv = sext i32 %lnot.ext to i64, !dbg !7458
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7458
  %tobool4 = icmp ne i64 %expval, 0, !dbg !7458
  br i1 %tobool4, label %if.then, label %if.end, !dbg !7456

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !7458
  %12 = load ptr, ptr %_old, align 8, !dbg !7458
  store i32 %11, ptr %12, align 4, !dbg !7458
  br label %if.end, !dbg !7458

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !7456, !range !6863, !noundef !1223
  %tobool5 = trunc i8 %13 to i1, !dbg !7456
  %lnot6 = xor i1 %tobool5, true, !dbg !7456
  %lnot8 = xor i1 %lnot6, true, !dbg !7456
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !7456
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !7456
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !7456
  store i64 %expval11, ptr %tmp, align 8, !dbg !7458
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #15, !dbg !7460
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #15, !dbg !7460
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #15, !dbg !7460
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #15, !dbg !7460
  %14 = load i64, ptr %tmp, align 8, !dbg !7456
  %tobool12 = icmp ne i64 %14, 0, !dbg !7460
  ret i1 %tobool12, !dbg !7461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_default_export(ptr noundef %desc, ptr noundef %out) #0 align 16 !dbg !7462 {
entry:
  %desc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7464, metadata !DIExpression()), !dbg !7466
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !7465, metadata !DIExpression()), !dbg !7467
  %0 = load ptr, ptr %out.addr, align 8, !dbg !7468
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !7469
  %call = call ptr @shash_desc_ctx(ptr noundef %1) #16, !dbg !7470
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !7471
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %2, i32 0, i32 0, !dbg !7472
  %3 = load ptr, ptr %tfm, align 8, !dbg !7472
  %call1 = call i32 @crypto_shash_descsize(ptr noundef %3) #16, !dbg !7473
  %conv = zext i32 %call1 to i64, !dbg !7473
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %call, i64 %conv, i1 false), !dbg !7474
  ret i32 0, !dbg !7475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shash_default_import(ptr noundef %desc, ptr noundef %in) #0 align 16 !dbg !7476 {
entry:
  %desc.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7478, metadata !DIExpression()), !dbg !7480
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !7479, metadata !DIExpression()), !dbg !7481
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !7482
  %call = call ptr @shash_desc_ctx(ptr noundef %0) #16, !dbg !7483
  %1 = load ptr, ptr %in.addr, align 8, !dbg !7484
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !7485
  %tfm = getelementptr inbounds %struct.shash_desc, ptr %2, i32 0, i32 0, !dbg !7486
  %3 = load ptr, ptr %tfm, align 8, !dbg !7486
  %call1 = call i32 @crypto_shash_descsize(ptr noundef %3) #16, !dbg !7487
  %conv = zext i32 %call1 to i64, !dbg !7487
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call, ptr align 1 %1, i64 %conv, i1 false), !dbg !7488
  ret i32 0, !dbg !7489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shash_desc_ctx(ptr noundef %desc) #3 align 16 !dbg !7490 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7494, metadata !DIExpression()), !dbg !7495
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !7496
  %__ctx = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 1, !dbg !7497
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !7496
  ret ptr %arraydecay, !dbg !7498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_instance_ctx(ptr noundef %inst) #3 align 16 !dbg !7499 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !7503, metadata !DIExpression()), !dbg !7504
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !7505
  %__ctx = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 4, !dbg !7506
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %__ctx, i64 0, i64 0, !dbg !7505
  ret ptr %arraydecay, !dbg !7507
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782}
!llvm.ident = !{!4783}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_shash_no_setkey339", scope: !2, file: !3, line: 39, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.shash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/crypto_hash\22 -D KBUILD_BASENAME=\22shash\22 -D KBUILD_MODNAME=\22crypto_hash\22 -D __KBUILD_MODNAME=kmod_crypto_hash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/shash.ll crypto/shash.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !4697, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/shash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1aa92a78fd14def53554c75c421eabc6")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87, !92, !102}
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
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !103, line: 119, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!106 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!107 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!108 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!109 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!110 = !{!111, !112, !113, !7, !888, !4536, !3630, !1069, !4555, !4615, !796, !118, !4672, !4692, !2072, !4695}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !115, line: 175, size: 64, elements: !116)
!115 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!116 = !{!117, !4554}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !114, file: !115, line: 176, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !115, line: 268, size: 320, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !119, file: !115, line: 269, baseType: !7, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !119, file: !115, line: 270, baseType: !123, size: 256, offset: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !124, line: 422, size: 256, elements: !125)
!124 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!125 = !{!126, !137, !142, !143, !148, !4553}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !123, file: !124, line: 423, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !103, line: 113, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !103, line: 111, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !128, file: !103, line: 112, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !132, line: 174, baseType: !133)
!132 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 172, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !133, file: !132, line: 173, baseType: !136, size: 32)
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !123, file: !124, line: 425, baseType: !138, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !139, line: 21, baseType: !140)
!139 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !141, line: 27, baseType: !7)
!141 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !124, line: 427, baseType: !136, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !123, file: !124, line: 429, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !123, file: !124, line: 431, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !124, line: 343, size: 3072, align: 64, elements: !151)
!151 = !{!152, !158, !159, !160, !161, !162, !163, !164, !165, !170, !171, !4518, !4546, !4547, !4548, !4552}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !150, file: !124, line: 344, baseType: !153, size: 128)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !132, line: 190, size: 128, elements: !154)
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !132, line: 191, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !153, file: !132, line: 191, baseType: !156, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !150, file: !124, line: 345, baseType: !153, size: 128, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !150, file: !124, line: 347, baseType: !138, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !150, file: !124, line: 348, baseType: !7, size: 32, offset: 288)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !150, file: !124, line: 349, baseType: !7, size: 32, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !150, file: !124, line: 350, baseType: !7, size: 32, offset: 352)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !150, file: !124, line: 352, baseType: !136, size: 32, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !150, file: !124, line: 353, baseType: !127, size: 32, offset: 416)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !150, file: !124, line: 355, baseType: !166, size: 1024, offset: 448)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 1024, elements: !168)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !{!169}
!169 = !DISubrange(count: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !150, file: !124, line: 356, baseType: !166, size: 1024, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !150, file: !124, line: 358, baseType: !172, size: 64, offset: 2496)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !175, line: 57, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!176 = !{!177, !181, !185, !189, !4230, !4469, !4514, !4515, !4516, !4517}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !174, file: !175, line: 58, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!7, !149, !138, !138}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !174, file: !175, line: 59, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!7, !149}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !174, file: !175, line: 60, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!136, !147}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !174, file: !175, line: 61, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193, !149}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !195, line: 17, size: 960, elements: !196)
!195 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!196 = !{!197, !199, !204, !205, !206, !207, !211, !212, !261, !283, !284, !4229}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !194, file: !195, line: 18, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !195, line: 19, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 61, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !202, line: 72, baseType: !203)
!202 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !202, line: 16, baseType: !112)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !194, file: !195, line: 20, baseType: !200, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !194, file: !195, line: 21, baseType: !200, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !194, file: !195, line: 22, baseType: !200, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !194, file: !195, line: 23, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !132, line: 52, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !202, line: 88, baseType: !210)
!210 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !194, file: !195, line: 24, baseType: !208, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !194, file: !195, line: 25, baseType: !213, size: 256, offset: 448)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !214, line: 66, size: 256, elements: !215)
!214 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!215 = !{!216, !225, !255, !260}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !213, file: !214, line: 67, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !218, line: 13, baseType: !219)
!218 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !132, line: 181, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 179, size: 64, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !220, file: !132, line: 180, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !139, line: 22, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !141, line: 30, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !213, file: !214, line: 68, baseType: !226, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !227, line: 23, baseType: !228)
!227 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !227, line: 14, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !228, file: !227, line: 15, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !232, line: 44, baseType: !233)
!232 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !232, line: 14, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !232, line: 15, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !232, line: 15, size: 32, elements: !237)
!237 = !{!238, !239, !247}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !236, file: !232, line: 16, baseType: !131, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !232, line: 24, baseType: !240, size: 16)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !232, line: 24, size: 16, elements: !241)
!241 = !{!242, !246}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !240, file: !232, line: 25, baseType: !243, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !139, line: 17, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !141, line: 21, baseType: !245)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !240, file: !232, line: 26, baseType: !243, size: 8, offset: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !232, line: 28, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !232, line: 28, size: 32, elements: !249)
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !248, file: !232, line: 29, baseType: !251, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !139, line: 19, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !141, line: 24, baseType: !253)
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !248, file: !232, line: 30, baseType: !251, size: 16, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !213, file: !214, line: 70, baseType: !256, size: 32, offset: 96)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !257, line: 15, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !256, file: !257, line: 20, baseType: !131, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !213, file: !214, line: 72, baseType: !153, size: 128, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !194, file: !195, line: 26, baseType: !262, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !195, line: 32, size: 256, elements: !265)
!265 = !{!266, !271, !275, !279}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !264, file: !195, line: 33, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!111, !193, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !264, file: !195, line: 34, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !193, !111}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !195, line: 35, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!111, !193, !111, !270}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !264, file: !195, line: 36, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!136, !193, !111}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !194, file: !195, line: 27, baseType: !136, size: 32, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !194, file: !195, line: 28, baseType: !285, size: 64, offset: 832)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !288)
!288 = !{!289, !308, !317, !319, !320, !321, !322, !323, !399, !622, !631, !4219, !4220, !4221, !4222, !4223, !4224, !4226, !4227, !4228}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !59, line: 995, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !59, line: 995, size: 128, elements: !291)
!291 = !{!292, !298, !307}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !290, file: !59, line: 996, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !294, line: 60, size: 64, elements: !295)
!294 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !294, line: 61, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !290, file: !59, line: 997, baseType: !299, size: 128, align: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !132, line: 232, size: 128, align: 64, elements: !300)
!300 = !{!301, !303}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !132, line: 233, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !299, file: !132, line: 234, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !302}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !290, file: !59, line: 998, baseType: !7, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !287, file: !59, line: 1005, baseType: !309, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !310, line: 29, baseType: !311)
!310 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !310, line: 17, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !310, line: 18, baseType: !314, size: 32)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !310, line: 18, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !314, file: !310, line: 19, baseType: !228, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !287, file: !59, line: 1006, baseType: !318, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !132, line: 156, baseType: !7)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !287, file: !59, line: 1007, baseType: !217, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !287, file: !59, line: 1008, baseType: !213, size: 256, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !287, file: !59, line: 1009, baseType: !208, size: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !287, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !287, file: !59, line: 1011, baseType: !324, size: 256, offset: 640)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !325)
!325 = !{!326, !349, !388, !389, !397, !398}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !324, file: !59, line: 949, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !328, line: 34, baseType: !329)
!328 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 25, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !329, file: !328, line: 26, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !333, line: 27, baseType: !334)
!333 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !333, line: 13, size: 64, elements: !335)
!335 = !{!336, !348}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !333, line: 14, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !333, line: 14, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !337, file: !333, line: 15, baseType: !131, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !333, line: 16, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !333, line: 16, size: 32, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !341, file: !333, line: 18, baseType: !243, size: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !341, file: !333, line: 19, baseType: !345, size: 24, offset: 8)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 24, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 3)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !334, file: !333, line: 26, baseType: !231, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !324, file: !59, line: 950, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !352)
!352 = !{!353, !354, !355, !356, !369, !370, !377, !378}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !351, file: !6, line: 61, baseType: !127, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !351, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !6, line: 63, baseType: !309, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !351, file: !6, line: 65, baseType: !357, size: 256, offset: 128)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !367)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !132, line: 194, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !358, file: !132, line: 195, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !132, line: 198, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !132, line: 199, baseType: !361, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !362, file: !132, line: 199, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!367 = !{!368}
!368 = !DISubrange(count: 4)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !351, file: !6, line: 66, baseType: !358, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !351, file: !6, line: 68, baseType: !371, size: 192, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !372, line: 41, baseType: !373)
!372 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !372, line: 37, size: 192, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !373, file: !372, line: 38, baseType: !309, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !373, file: !372, line: 39, baseType: !153, size: 128, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !351, file: !6, line: 69, baseType: !299, size: 128, align: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !351, file: !6, line: 70, baseType: !379, offset: 768)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, elements: !386)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !380, file: !6, line: 55, baseType: !136, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !380, file: !6, line: 56, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!386 = !{!387}
!387 = !DISubrange(count: -1)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !324, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !324, file: !59, line: 952, baseType: !390, size: 32, offset: 160)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !391, line: 23, baseType: !392)
!391 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 21, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !391, line: 22, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !132, line: 37, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !202, line: 49, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !324, file: !59, line: 952, baseType: !390, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !324, file: !59, line: 953, baseType: !136, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !287, file: !59, line: 1012, baseType: !400, size: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !403, line: 110, size: 1472, elements: !404)
!403 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!404 = !{!405, !406, !407, !414, !415, !416, !417, !418, !419, !420, !421, !430, !431, !432, !433, !434, !435, !567, !568, !569, !570, !571, !602, !605, !609, !617}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !402, file: !403, line: 111, baseType: !217, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !402, file: !403, line: 112, baseType: !390, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !402, file: !403, line: 113, baseType: !408, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !391, line: 28, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 26, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !391, line: 27, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !132, line: 38, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !202, line: 50, baseType: !7)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !402, file: !403, line: 114, baseType: !390, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !402, file: !403, line: 115, baseType: !408, size: 32, offset: 160)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !402, file: !403, line: 116, baseType: !390, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !402, file: !403, line: 117, baseType: !408, size: 32, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !402, file: !403, line: 118, baseType: !390, size: 32, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !402, file: !403, line: 119, baseType: !408, size: 32, offset: 288)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !402, file: !403, line: 120, baseType: !7, size: 32, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !402, file: !403, line: 121, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !423, line: 24, baseType: !424)
!423 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 24, size: 64, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !424, file: !423, line: 24, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !139, line: 23, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !141, line: 31, baseType: !429)
!429 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !402, file: !403, line: 122, baseType: !422, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !402, file: !403, line: 123, baseType: !422, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !402, file: !403, line: 124, baseType: !422, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !402, file: !403, line: 125, baseType: !422, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !402, file: !403, line: 127, baseType: !245, size: 8, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !402, file: !403, line: 129, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !438, line: 195, size: 1728, elements: !439)
!438 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!439 = !{!440, !441, !446, !458, !467, !470, !471, !478, !479, !480, !481, !484, !485, !486, !488, !489, !531, !552}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !437, file: !438, line: 196, baseType: !127, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !437, file: !438, line: 197, baseType: !442, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !438, line: 28, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !132, line: 104, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !139, line: 20, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !141, line: 26, baseType: !136)
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 198, baseType: !447, size: 192, offset: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 198, size: 192, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !447, file: !438, line: 199, baseType: !153, size: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !447, file: !438, line: 200, baseType: !451, size: 192, align: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !452, line: 5, size: 192, align: 64, elements: !453)
!452 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!453 = !{!454, !455, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !451, file: !452, line: 6, baseType: !112, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !451, file: !452, line: 7, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !451, file: !452, line: 8, baseType: !456, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !437, file: !438, line: 205, baseType: !459, size: 320, offset: 256)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !460, line: 48, size: 320, elements: !461)
!460 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!461 = !{!462, !463, !464, !465, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !459, file: !460, line: 49, baseType: !217, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !459, file: !460, line: 55, baseType: !217, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !459, file: !460, line: 57, baseType: !256, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !459, file: !460, line: 59, baseType: !226, size: 32, offset: 160)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !459, file: !460, line: 60, baseType: !153, size: 128, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !437, file: !438, line: 206, baseType: !468, size: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !438, line: 206, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !437, file: !438, line: 207, baseType: !111, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 208, baseType: !472, size: 64, offset: 704)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 208, size: 64, elements: !473)
!473 = !{!474, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !472, file: !438, line: 209, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !476, line: 8, baseType: !224)
!476 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!477 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !472, file: !438, line: 210, baseType: !475, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !437, file: !438, line: 212, baseType: !475, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !437, file: !438, line: 213, baseType: !390, size: 32, offset: 832)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !437, file: !438, line: 214, baseType: !408, size: 32, offset: 864)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !437, file: !438, line: 215, baseType: !482, size: 32, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !438, line: 31, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !132, line: 110, baseType: !138)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !437, file: !438, line: 216, baseType: !253, size: 16, offset: 928)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !437, file: !438, line: 217, baseType: !253, size: 16, offset: 944)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !437, file: !438, line: 221, baseType: !487, size: 16, offset: 960)
!487 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !438, line: 228, baseType: !112, size: 64, offset: 1024)
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 245, baseType: !490, size: 320, offset: 1088)
!490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 245, size: 320, elements: !491)
!491 = !{!492, !523}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !490, file: !438, line: 246, baseType: !493, size: 320)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !438, line: 114, size: 320, elements: !494)
!494 = !{!495, !496, !508, !511, !520}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !493, file: !438, line: 116, baseType: !112, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !438, line: 117, baseType: !497, size: 64, offset: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !493, file: !438, line: 117, size: 64, elements: !498)
!498 = !{!499, !507}
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !438, line: 118, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !438, line: 118, size: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !500, file: !438, line: 120, baseType: !251, size: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !500, file: !438, line: 121, baseType: !504, size: 48, offset: 16)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 6)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !497, file: !438, line: 127, baseType: !112, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !438, line: 129, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !438, line: 102, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !493, file: !438, line: 130, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !438, line: 108, size: 192, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !513, file: !438, line: 109, baseType: !299, size: 128, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !513, file: !438, line: 110, baseType: !127, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !513, file: !438, line: 111, baseType: !518, size: 8, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !132, line: 35, baseType: !519)
!519 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !493, file: !438, line: 131, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !438, line: 247, baseType: !524, size: 320)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !438, line: 247, size: 320, elements: !525)
!525 = !{!526, !527, !528, !529, !530}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !524, file: !438, line: 248, baseType: !112, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !524, file: !438, line: 249, baseType: !112, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !438, line: 250, baseType: !509, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !524, file: !438, line: 251, baseType: !512, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !524, file: !438, line: 252, baseType: !198, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 260, baseType: !532, size: 256, offset: 1408)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 260, size: 256, elements: !533)
!533 = !{!534, !540}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !532, file: !438, line: 261, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !438, line: 134, size: 256, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !535, file: !438, line: 135, baseType: !111, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !535, file: !438, line: 136, baseType: !539, size: 256)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !367)
!540 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !438, line: 262, baseType: !541, size: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !532, file: !438, line: 262, size: 256, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !541, file: !438, line: 264, baseType: !153, size: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !541, file: !438, line: 265, baseType: !545, size: 128, offset: 128)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !546, line: 22, size: 128, elements: !547)
!546 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !545, file: !546, line: 23, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !546, line: 23, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !545, file: !546, line: 24, baseType: !112, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !437, file: !438, line: 280, baseType: !553, size: 64, offset: 1664)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !438, line: 176, size: 192, elements: !555)
!555 = !{!556, !565, !566}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !554, file: !438, line: 177, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !438, line: 171, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!136, !436, !561, !563, !436}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !554, file: !438, line: 178, baseType: !436, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !554, file: !438, line: 179, baseType: !509, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !402, file: !403, line: 130, baseType: !436, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !402, file: !403, line: 131, baseType: !436, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !402, file: !403, line: 132, baseType: !436, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !402, file: !403, line: 135, baseType: !111, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !402, file: !403, line: 137, baseType: !572, size: 64, offset: 1088)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !574, line: 14, size: 1088, elements: !575)
!574 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!575 = !{!576, !577, !586, !587, !588, !589, !590, !591}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !573, file: !574, line: 15, baseType: !127, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !573, file: !574, line: 17, baseType: !578, size: 320, offset: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !579, line: 22, size: 320, elements: !580)
!579 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!580 = !{!581, !582, !583, !584}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !578, file: !579, line: 23, baseType: !226, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !578, file: !579, line: 24, baseType: !223, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !578, file: !579, line: 26, baseType: !153, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !578, file: !579, line: 28, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !573, file: !574, line: 19, baseType: !112, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !573, file: !574, line: 20, baseType: !217, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !573, file: !574, line: 23, baseType: !362, size: 128, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !573, file: !574, line: 24, baseType: !390, size: 32, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !573, file: !574, line: 29, baseType: !217, size: 64, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !573, file: !574, line: 36, baseType: !592, size: 320, offset: 768)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !593, line: 15, size: 320, elements: !594)
!593 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!594 = !{!595, !596, !597, !598, !599, !600, !601}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !592, file: !593, line: 16, baseType: !226, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !592, file: !593, line: 18, baseType: !136, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !592, file: !593, line: 19, baseType: !136, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !592, file: !593, line: 20, baseType: !136, size: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !592, file: !593, line: 21, baseType: !136, size: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !592, file: !593, line: 22, baseType: !112, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !593, line: 23, baseType: !112, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !402, file: !403, line: 138, baseType: !603, size: 64, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !30, line: 901, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !402, file: !403, line: 139, baseType: !606, size: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !608, line: 16, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !402, file: !403, line: 140, baseType: !610, size: 64, offset: 1280)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !403, line: 25, size: 64, elements: !612)
!612 = !{!613, !614, !615}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !611, file: !403, line: 26, baseType: !131, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !611, file: !403, line: 27, baseType: !136, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !611, file: !403, line: 28, baseType: !616, offset: 64)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !386)
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !403, line: 142, baseType: !618, size: 128, offset: 1344)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !403, line: 142, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !618, file: !403, line: 143, baseType: !136, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !618, file: !403, line: 144, baseType: !299, size: 128, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !287, file: !59, line: 1013, baseType: !623, size: 256, offset: 960)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !623, file: !59, line: 971, baseType: !112, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !623, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !623, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !623, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !623, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !623, file: !59, line: 976, baseType: !208, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !287, file: !59, line: 1014, baseType: !632, size: 128, offset: 1216)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !633, line: 8, size: 128, elements: !634)
!633 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!634 = !{!635, !4218}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !632, file: !633, line: 9, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !638, line: 70, size: 256, elements: !639)
!638 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!639 = !{!640, !4215, !4216, !4217}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !637, file: !638, line: 71, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !643, line: 82, size: 1536, elements: !644)
!643 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!644 = !{!645, !646, !656, !664, !665, !680, !4182, !4184, !4197, !4198, !4199, !4200, !4201, !4207, !4208, !4209}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !642, file: !643, line: 84, baseType: !7, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !642, file: !643, line: 85, baseType: !647, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !648, line: 275, baseType: !649)
!648 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !648, line: 275, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !649, file: !648, line: 275, baseType: !652, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !648, line: 69, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !648, line: 64, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !653, file: !648, line: 65, baseType: !7, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !642, file: !643, line: 86, baseType: !657, size: 128, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !658, line: 38, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !658, line: 39, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !657, file: !658, line: 39, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !642, file: !643, line: 87, baseType: !641, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !642, file: !643, line: 88, baseType: !666, size: 128, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !643, line: 49, size: 128, elements: !667)
!667 = !{!668, !677}
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !643, line: 50, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !643, line: 50, size: 64, elements: !670)
!670 = !{!671, !676}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !643, line: 51, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !643, line: 51, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !672, file: !643, line: 52, baseType: !138, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !672, file: !643, line: 52, baseType: !138, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !669, file: !643, line: 54, baseType: !427, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !643, line: 56, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !642, file: !643, line: 89, baseType: !681, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !683)
!683 = !{!684, !686, !687, !688, !689, !690, !691, !694, !695, !891, !3998, !3999, !4000, !4001, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4164, !4167, !4168, !4169, !4178, !4179, !4180, !4181}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !682, file: !59, line: 642, baseType: !685, size: 16)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !132, line: 24, baseType: !253)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !682, file: !59, line: 643, baseType: !253, size: 16, offset: 16)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !682, file: !59, line: 644, baseType: !390, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !682, file: !59, line: 645, baseType: !153, size: 128, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !682, file: !59, line: 646, baseType: !408, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !682, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !682, file: !59, line: 650, baseType: !692, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !682, file: !59, line: 651, baseType: !692, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !682, file: !59, line: 654, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !699)
!699 = !{!700, !704, !717, !723, !727, !731, !735, !739, !743, !747, !751, !752, !758, !762, !801, !832, !839, !845, !849, !853, !857, !861, !865, !871, !875}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !698, file: !59, line: 1967, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!641, !681, !641, !7}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !698, file: !59, line: 1968, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!521, !641, !681, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !710, line: 10, size: 128, elements: !711)
!710 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!711 = !{!712, !716}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !709, file: !710, line: 11, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !111}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !709, file: !710, line: 12, baseType: !111, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !698, file: !59, line: 1969, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!136, !721, !681, !136}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !423, line: 42, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !698, file: !59, line: 1970, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!692, !681, !136, !518}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !698, file: !59, line: 1972, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!136, !641, !198, !136}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !698, file: !59, line: 1974, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!136, !721, !681, !641, !685, !518}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !698, file: !59, line: 1976, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!136, !641, !681, !641}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !698, file: !59, line: 1977, baseType: !740, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!136, !681, !641}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !698, file: !59, line: 1978, baseType: !744, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!136, !721, !681, !641, !521}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !698, file: !59, line: 1980, baseType: !748, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!136, !721, !681, !641, !685}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !698, file: !59, line: 1982, baseType: !740, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !698, file: !59, line: 1983, baseType: !753, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!136, !721, !681, !641, !685, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !132, line: 21, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !132, line: 18, baseType: !138)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !698, file: !59, line: 1985, baseType: !759, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!136, !721, !681, !641, !681, !641, !7}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !698, file: !59, line: 1987, baseType: !763, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!136, !721, !641, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !768)
!768 = !{!769, !770, !771, !781, !790, !791, !797, !798, !799}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !767, file: !59, line: 227, baseType: !7, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !767, file: !59, line: 228, baseType: !685, size: 16, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !59, line: 241, baseType: !772, size: 32, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !59, line: 241, size: 32, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !772, file: !59, line: 242, baseType: !390, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !772, file: !59, line: 243, baseType: !776, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !777, line: 16, baseType: !778)
!777 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !777, line: 14, size: 32, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !778, file: !777, line: 15, baseType: !395, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !59, line: 245, baseType: !782, size: 32, offset: 96)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !59, line: 245, size: 32, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !782, file: !59, line: 246, baseType: !408, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !782, file: !59, line: 247, baseType: !786, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !777, line: 20, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !777, line: 18, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !787, file: !777, line: 19, baseType: !412, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !767, file: !59, line: 249, baseType: !208, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !767, file: !59, line: 250, baseType: !792, size: 128, offset: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !476, line: 13, size: 128, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !792, file: !476, line: 14, baseType: !475, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !792, file: !476, line: 15, baseType: !796, size: 64, offset: 64)
!796 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !767, file: !59, line: 251, baseType: !792, size: 128, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !767, file: !59, line: 252, baseType: !792, size: 128, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !767, file: !59, line: 259, baseType: !800, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !698, file: !59, line: 1988, baseType: !802, size: 64, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!136, !721, !805, !807, !138, !7}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !809, line: 22, size: 1280, elements: !810)
!809 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !808, file: !809, line: 23, baseType: !138, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !808, file: !809, line: 24, baseType: !685, size: 16, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !808, file: !809, line: 25, baseType: !7, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !808, file: !809, line: 26, baseType: !483, size: 32, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !808, file: !809, line: 27, baseType: !427, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !808, file: !809, line: 28, baseType: !427, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !808, file: !809, line: 41, baseType: !427, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !808, file: !809, line: 42, baseType: !756, size: 32, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !808, file: !809, line: 43, baseType: !756, size: 32, offset: 352)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !808, file: !809, line: 44, baseType: !390, size: 32, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !808, file: !809, line: 45, baseType: !408, size: 32, offset: 416)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !808, file: !809, line: 46, baseType: !208, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !808, file: !809, line: 47, baseType: !792, size: 128, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !808, file: !809, line: 48, baseType: !792, size: 128, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !808, file: !809, line: 49, baseType: !792, size: 128, offset: 768)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !808, file: !809, line: 50, baseType: !792, size: 128, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !808, file: !809, line: 51, baseType: !427, size: 64, offset: 1024)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !808, file: !809, line: 52, baseType: !427, size: 64, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !808, file: !809, line: 53, baseType: !138, size: 32, offset: 1152)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !808, file: !809, line: 54, baseType: !138, size: 32, offset: 1184)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !808, file: !809, line: 55, baseType: !427, size: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !698, file: !59, line: 1990, baseType: !833, size: 64, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!836, !641, !198, !200}
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !132, line: 66, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !202, line: 73, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !202, line: 15, baseType: !796)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !698, file: !59, line: 1991, baseType: !840, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!136, !681, !843, !427, !427}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !698, file: !59, line: 1993, baseType: !846, size: 64, offset: 1088)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!136, !681, !136}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !698, file: !59, line: 1994, baseType: !850, size: 64, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!136, !681, !641, !800, !7, !685}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !698, file: !59, line: 1997, baseType: !854, size: 64, offset: 1216)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!136, !721, !681, !800, !685}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !698, file: !59, line: 1999, baseType: !858, size: 64, offset: 1280)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!692, !721, !641, !136}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !698, file: !59, line: 2001, baseType: !862, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!136, !721, !641, !692, !136}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !698, file: !59, line: 2003, baseType: !866, size: 64, offset: 1408)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!136, !721, !641, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !698, file: !59, line: 2005, baseType: !872, size: 64, offset: 1472)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!136, !641, !869}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !698, file: !59, line: 2006, baseType: !876, size: 64, offset: 1536)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!879, !681}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !881)
!881 = !{!882, !890}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !880, file: !59, line: 3193, baseType: !883, size: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !884, line: 296, size: 128, elements: !885)
!884 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!885 = !{!886, !887, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !883, file: !884, line: 297, baseType: !309, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !883, file: !884, line: 299, baseType: !888, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !132, line: 154, baseType: !7)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !883, file: !884, line: 300, baseType: !111, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !880, file: !59, line: 3194, baseType: !138, size: 32, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !682, file: !59, line: 655, baseType: !892, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !894)
!894 = !{!895, !896, !897, !898, !899, !900, !2292, !2424, !2464, !2547, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2564, !2568, !2569, !2572, !2575, !2578, !2581, !2582, !2583, !2624, !3873, !3874, !3875, !3876, !3877, !3878, !3881, !3883, !3890, !3891, !3892, !3893, !3952, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !893, file: !59, line: 1191, baseType: !153, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !893, file: !59, line: 1192, baseType: !756, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !893, file: !59, line: 1193, baseType: !245, size: 8, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !893, file: !59, line: 1194, baseType: !112, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !893, file: !59, line: 1195, baseType: !208, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !893, file: !59, line: 1196, baseType: !901, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !903)
!903 = !{!904, !905, !906, !912, !916, !920, !924, !2280, !2281, !2282, !2284, !2285, !2286, !2288, !2289, !2290, !2291}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !902, file: !59, line: 2367, baseType: !521, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !902, file: !59, line: 2368, baseType: !136, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !902, file: !59, line: 2376, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!136, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !638, line: 21, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !902, file: !59, line: 2377, baseType: !913, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !902, file: !59, line: 2378, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!641, !901, !136, !521, !111}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !902, file: !59, line: 2380, baseType: !921, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !892}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !902, file: !59, line: 2381, baseType: !925, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !927)
!927 = !{!928, !929, !930, !934, !1936, !1962, !1963, !1964, !1965, !1969, !1972, !1973, !1974, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2042, !2046, !2066, !2084, !2085, !2086, !2087, !2096, !2119, !2120, !2123, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2137, !2138, !2238, !2246, !2247, !2248, !2250, !2254, !2255, !2259, !2260, !2261, !2262, !2264, !2265, !2266, !2273, !2274, !2275, !2279}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !926, file: !15, line: 403, baseType: !14, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !926, file: !15, line: 406, baseType: !153, size: 128, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !926, file: !15, line: 409, baseType: !931, size: 448, offset: 192)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 448, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 56)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !926, file: !15, line: 417, baseType: !935, size: 768, offset: 640)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !936)
!936 = !{!937, !1929, !1930, !1931, !1934}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !935, file: !15, line: 46, baseType: !938, size: 512)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !939, line: 64, size: 512, elements: !940)
!939 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!940 = !{!941, !942, !943, !945, !989, !1823, !1919, !1924, !1925, !1926, !1927, !1928}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !938, file: !939, line: 65, baseType: !521, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !938, file: !939, line: 66, baseType: !153, size: 128, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !938, file: !939, line: 67, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !938, file: !939, line: 68, baseType: !946, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !939, line: 168, size: 768, elements: !948)
!948 = !{!949, !950, !951, !952}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !947, file: !939, line: 169, baseType: !153, size: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !947, file: !939, line: 170, baseType: !309, size: 32, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !947, file: !939, line: 171, baseType: !938, size: 512, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !947, file: !939, line: 172, baseType: !953, size: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !939, line: 133, size: 192, elements: !956)
!956 = !{!957, !964, !969}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !955, file: !939, line: 134, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!136, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !955, file: !939, line: 135, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!521, !962}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !955, file: !939, line: 136, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!136, !962, !974}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !939, line: 125, size: 20736, elements: !976)
!976 = !{!977, !979, !983, !984, !988}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !975, file: !939, line: 126, baseType: !978, size: 192)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 192, elements: !346)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !975, file: !939, line: 127, baseType: !980, size: 4096, offset: 192)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 4096, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !975, file: !939, line: 128, baseType: !136, size: 32, offset: 4288)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !975, file: !939, line: 129, baseType: !985, size: 16384, offset: 4320)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 16384, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 2048)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !975, file: !939, line: 130, baseType: !136, size: 32, offset: 20704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !938, file: !939, line: 69, baseType: !990, size: 64, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !939, line: 116, size: 384, elements: !993)
!993 = !{!994, !998, !1017, !1785, !1813, !1817}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !992, file: !939, line: 117, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !944}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !992, file: !939, line: 118, baseType: !999, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1002, line: 254, size: 128, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1003 = !{!1004, !1013}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1001, file: !1002, line: 255, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!836, !944, !1008, !198}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1002, line: 30, size: 128, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1009, file: !1002, line: 31, baseType: !521, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1009, file: !1002, line: 32, baseType: !685, size: 16, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1001, file: !1002, line: 256, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!836, !944, !1008, !521, !200}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !992, file: !939, line: 119, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1002, line: 84, size: 320, elements: !1022)
!1022 = !{!1023, !1024, !1028, !1781, !1783}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1021, file: !1002, line: 85, baseType: !521, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1021, file: !1002, line: 86, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!685, !944, !1008, !136}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1021, file: !1002, line: 88, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!685, !944, !1032, !136}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1002, line: 175, size: 512, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1772, !1776, !1777}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1033, file: !1002, line: 176, baseType: !1009, size: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !1002, line: 177, baseType: !200, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1033, file: !1002, line: 178, baseType: !111, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1033, file: !1002, line: 179, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1058, !1059, !1060, !1764, !1765, !1766, !1769, !1770, !1771}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1043, file: !59, line: 473, baseType: !681, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1043, file: !59, line: 474, baseType: !883, size: 128, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1043, file: !59, line: 475, baseType: !459, size: 320, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1043, file: !59, line: 476, baseType: !888, size: 32, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1043, file: !59, line: 477, baseType: !131, size: 32, offset: 544)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1043, file: !59, line: 482, baseType: !1051, size: 128, offset: 576)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !452, line: 26, size: 128, elements: !1052)
!1052 = !{!1053, !1057}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1051, file: !452, line: 27, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !452, line: 12, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1054, file: !452, line: 13, baseType: !456, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1051, file: !452, line: 28, baseType: !456, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1043, file: !59, line: 483, baseType: !112, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1043, file: !59, line: 484, baseType: !112, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1043, file: !59, line: 485, baseType: !1061, size: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !1064)
!1064 = !{!1065, !1534, !1604, !1608, !1612, !1618, !1624, !1628, !1633, !1637, !1641, !1645, !1728, !1732, !1736, !1740, !1745, !1749, !1756, !1760}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1063, file: !59, line: 405, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!136, !1069, !1532}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1071)
!1071 = !{!1072, !1073, !1526, !1531}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !30, line: 75, baseType: !112, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !30, line: 83, baseType: !1074, size: 320, offset: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !30, line: 83, size: 320, elements: !1075)
!1075 = !{!1076, !1097, !1111, !1115, !1525}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !30, line: 84, baseType: !1077, size: 320)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !30, line: 84, size: 320, elements: !1078)
!1078 = !{!1079, !1090, !1091, !1096}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !30, line: 90, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !30, line: 90, size: 128, elements: !1081)
!1081 = !{!1082, !1083, !1088, !1089}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1080, file: !30, line: 91, baseType: !153, size: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !30, line: 94, baseType: !1084, size: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !30, line: 94, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1084, file: !30, line: 96, baseType: !111, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1084, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1080, file: !30, line: 102, baseType: !153, size: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1080, file: !30, line: 103, baseType: !153, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1077, file: !30, line: 106, baseType: !1042, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !30, line: 107, baseType: !1092, size: 64, offset: 192)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !30, line: 107, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1092, file: !30, line: 108, baseType: !112, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1092, file: !30, line: 109, baseType: !112, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1077, file: !30, line: 117, baseType: !112, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !30, line: 119, baseType: !1098, size: 320)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !30, line: 119, size: 320, elements: !1099)
!1099 = !{!1100, !1101, !1104, !1105, !1106}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1098, file: !30, line: 124, baseType: !112, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1098, file: !30, line: 125, baseType: !1102, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1098, file: !30, line: 126, baseType: !112, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1098, file: !30, line: 127, baseType: !112, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !30, line: 128, baseType: !1107, size: 64, offset: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !30, line: 128, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1107, file: !30, line: 133, baseType: !112, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1107, file: !30, line: 138, baseType: !217, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !30, line: 141, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !30, line: 141, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1112, file: !30, line: 142, baseType: !112, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !30, line: 144, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !30, line: 144, size: 128, elements: !1117)
!1117 = !{!1118, !1524}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1116, file: !30, line: 146, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1121)
!1121 = !{!1122, !1132, !1153, !1164, !1165, !1166, !1167, !1506, !1507, !1508}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1120, file: !22, line: 127, baseType: !1123, size: 384)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1124)
!1124 = !{!1125, !1126, !1128, !1129, !1130, !1131}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1123, file: !22, line: 22, baseType: !112, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1123, file: !22, line: 23, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1123, file: !22, line: 24, baseType: !1127, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1123, file: !22, line: 25, baseType: !112, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1123, file: !22, line: 26, baseType: !112, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1123, file: !22, line: 27, baseType: !112, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1120, file: !22, line: 128, baseType: !1133, size: 128, offset: 384)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1134, line: 105, size: 128, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1133, file: !1134, line: 110, baseType: !112, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1133, file: !1134, line: 118, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1134, line: 95, size: 448, elements: !1140)
!1140 = !{!1141, !1142, !1148, !1149, !1150, !1151, !1152}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1139, file: !1134, line: 96, baseType: !217, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1139, file: !1134, line: 97, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1134, line: 60, baseType: !1145)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1139, file: !1134, line: 98, baseType: !1143, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1139, file: !1134, line: 99, baseType: !518, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1139, file: !1134, line: 100, baseType: !518, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1139, file: !1134, line: 101, baseType: !299, size: 128, align: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1139, file: !1134, line: 102, baseType: !1147, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1120, file: !22, line: 129, baseType: !1154, size: 256, offset: 512)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1155, line: 26, size: 256, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1154, file: !1155, line: 27, baseType: !7, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1154, file: !1155, line: 28, baseType: !1159, size: 192, offset: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1160, line: 43, size: 192, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1159, file: !1160, line: 44, baseType: !226, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1159, file: !1160, line: 45, baseType: !153, size: 128, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1120, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1120, file: !22, line: 132, baseType: !112, size: 64, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1120, file: !22, line: 133, baseType: !1168, size: 64, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1171)
!1171 = !{!1172, !1176, !1502}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1170, file: !22, line: 83, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1069}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1170, file: !22, line: 89, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1183, line: 512, size: 896, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1184 = !{!1185, !1469, !1470, !1477, !1484, !1494, !1495, !1496, !1498, !1500}
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1183, line: 513, baseType: !1186, size: 320)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1183, line: 513, size: 320, elements: !1187)
!1187 = !{!1188, !1465, !1466, !1467, !1468}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1186, file: !1183, line: 514, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1191)
!1191 = !{!1192, !1201, !1370, !1376, !1383, !1384, !1389, !1390, !1395, !1396, !1399, !1458, !1459, !1460, !1461, !1462, !1463}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !30, line: 628, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !30, line: 628, size: 128, elements: !1194)
!1194 = !{!1195, !1200}
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !30, line: 629, baseType: !1196, size: 128)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1193, file: !30, line: 629, size: 128, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1196, file: !30, line: 631, baseType: !112, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1196, file: !30, line: 632, baseType: !112, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1193, file: !30, line: 635, baseType: !299, size: 128, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1190, file: !30, line: 639, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1204)
!1204 = !{!1205, !1368}
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !30, line: 734, baseType: !1206, size: 10240)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1203, file: !30, line: 734, size: 10240, elements: !1207)
!1207 = !{!1208, !1212, !1226, !1230, !1231, !1232, !1233, !1234, !1235, !1244, !1245, !1246, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1285, !1287, !1290, !1337, !1338, !1339, !1342, !1343, !1344, !1347, !1348, !1349, !1355, !1356}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !30, line: 739, baseType: !1209, size: 512, align: 512)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !30, line: 739, size: 512, align: 512, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1209, file: !30, line: 747, baseType: !131, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1206, file: !30, line: 750, baseType: !1213, size: 128, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1214, line: 218, size: 128, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1215 = !{!1216, !1224, !1225}
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1214, line: 219, baseType: !1217, size: 32)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1214, line: 219, size: 32, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1217, file: !1214, line: 220, baseType: !309, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1217, file: !1214, line: 221, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1214, line: 197, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1214, line: 197, elements: !1223)
!1223 = !{}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1213, file: !1214, line: 223, baseType: !7, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1213, file: !1214, line: 224, baseType: !111, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1206, file: !30, line: 752, baseType: !1227, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!112, !800, !112, !112, !112, !112}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1206, file: !30, line: 756, baseType: !112, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1206, file: !30, line: 757, baseType: !112, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1206, file: !30, line: 760, baseType: !112, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1206, file: !30, line: 761, baseType: !112, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1206, file: !30, line: 763, baseType: !112, size: 64, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1206, file: !30, line: 764, baseType: !1236, size: 64, offset: 1024)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1238, line: 299, baseType: !1239)
!1238 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1238, line: 299, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1239, file: !1238, line: 299, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1243, line: 18, baseType: !112)
!1243 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1206, file: !30, line: 773, baseType: !131, size: 32, offset: 1088)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1206, file: !30, line: 785, baseType: !131, size: 32, offset: 1120)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1206, file: !30, line: 795, baseType: !1247, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1248, file: !30, line: 727, baseType: !427, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1248, file: !30, line: 728, baseType: !136, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1206, file: !30, line: 801, baseType: !112, size: 64, offset: 1216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1206, file: !30, line: 804, baseType: !217, size: 64, offset: 1280)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1206, file: !30, line: 806, baseType: !136, size: 32, offset: 1344)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1206, file: !30, line: 808, baseType: !309, size: 32, offset: 1376)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1206, file: !30, line: 823, baseType: !459, size: 320, offset: 1408)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1206, file: !30, line: 825, baseType: !153, size: 128, offset: 1728)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1206, file: !30, line: 845, baseType: !136, size: 32, offset: 1856)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1206, file: !30, line: 849, baseType: !112, size: 64, offset: 1920)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1206, file: !30, line: 850, baseType: !112, size: 64, offset: 1984)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1206, file: !30, line: 852, baseType: !112, size: 64, offset: 2048)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1206, file: !30, line: 853, baseType: !112, size: 64, offset: 2112)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1206, file: !30, line: 854, baseType: !219, size: 64, offset: 2176)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1206, file: !30, line: 855, baseType: !112, size: 64, offset: 2240)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1206, file: !30, line: 856, baseType: !112, size: 64, offset: 2304)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1206, file: !30, line: 857, baseType: !112, size: 64, offset: 2368)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1206, file: !30, line: 858, baseType: !112, size: 64, offset: 2432)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1206, file: !30, line: 865, baseType: !652, size: 32, offset: 2496)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1206, file: !30, line: 867, baseType: !309, size: 32, offset: 2528)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1206, file: !30, line: 869, baseType: !112, size: 64, offset: 2560)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1206, file: !30, line: 869, baseType: !112, size: 64, offset: 2624)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1206, file: !30, line: 869, baseType: !112, size: 64, offset: 2688)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1206, file: !30, line: 869, baseType: !112, size: 64, offset: 2752)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1206, file: !30, line: 870, baseType: !112, size: 64, offset: 2816)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1206, file: !30, line: 870, baseType: !112, size: 64, offset: 2880)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1206, file: !30, line: 870, baseType: !112, size: 64, offset: 2944)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1206, file: !30, line: 871, baseType: !112, size: 64, offset: 3008)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1206, file: !30, line: 871, baseType: !112, size: 64, offset: 3072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1206, file: !30, line: 871, baseType: !112, size: 64, offset: 3136)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1206, file: !30, line: 871, baseType: !112, size: 64, offset: 3200)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1206, file: !30, line: 873, baseType: !1282, size: 3328, offset: 3264)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 3328, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 52)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1206, file: !30, line: 875, baseType: !1286, size: 1280, offset: 6592)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 1280, elements: !367)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1206, file: !30, line: 877, baseType: !1288, size: 64, offset: 7872)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1206, file: !30, line: 880, baseType: !1291, size: 1088, offset: 7936)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1292, line: 72, baseType: !1293)
!1292 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1292, line: 23, size: 1088, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1302, !1303, !1304, !1305, !1332, !1333, !1334}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1293, file: !1292, line: 28, baseType: !427, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1293, file: !1292, line: 38, baseType: !219, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1293, file: !1292, line: 40, baseType: !112, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1293, file: !1292, line: 43, baseType: !459, size: 320, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1293, file: !1292, line: 44, baseType: !1300, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1292, line: 44, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1292, line: 48, baseType: !112, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1293, file: !1292, line: 59, baseType: !213, size: 256, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1293, file: !1292, line: 60, baseType: !111, size: 64, offset: 896)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1293, file: !1292, line: 61, baseType: !1306, size: 64, offset: 960)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1309, line: 13, size: 1216, elements: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1308, file: !1309, line: 14, baseType: !111, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1308, file: !1309, line: 15, baseType: !112, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1308, file: !1309, line: 17, baseType: !112, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1308, file: !1309, line: 17, baseType: !112, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1308, file: !1309, line: 18, baseType: !112, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1308, file: !1309, line: 18, baseType: !112, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1308, file: !1309, line: 19, baseType: !1318, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1308, file: !1309, line: 21, baseType: !796, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1308, file: !1309, line: 23, baseType: !796, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1308, file: !1309, line: 24, baseType: !796, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1308, file: !1309, line: 25, baseType: !796, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1308, file: !1309, line: 26, baseType: !796, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1308, file: !1309, line: 27, baseType: !796, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1308, file: !1309, line: 28, baseType: !796, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1308, file: !1309, line: 29, baseType: !796, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1308, file: !1309, line: 30, baseType: !796, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1308, file: !1309, line: 31, baseType: !796, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1308, file: !1309, line: 32, baseType: !796, size: 64, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1308, file: !1309, line: 33, baseType: !796, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1293, file: !1292, line: 63, baseType: !131, size: 32, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1293, file: !1292, line: 69, baseType: !251, size: 16, offset: 1056)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1293, file: !1292, line: 70, baseType: !1335, size: 16, offset: 1072)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !139, line: 18, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !141, line: 23, baseType: !487)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1206, file: !30, line: 882, baseType: !112, size: 64, offset: 9024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1206, file: !30, line: 885, baseType: !309, size: 32, offset: 9088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1206, file: !30, line: 886, baseType: !1340, size: 64, offset: 9152)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1206, file: !30, line: 901, baseType: !603, size: 64, offset: 9216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1206, file: !30, line: 904, baseType: !800, size: 64, offset: 9280)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1206, file: !30, line: 906, baseType: !1345, size: 64, offset: 9344)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1206, file: !30, line: 930, baseType: !131, size: 32, offset: 9408)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1206, file: !30, line: 933, baseType: !131, size: 32, offset: 9440)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1206, file: !30, line: 935, baseType: !1350, size: 64, offset: 9472)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1350, file: !81, line: 104, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1206, file: !30, line: 940, baseType: !217, size: 64, offset: 9536)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1206, file: !30, line: 942, baseType: !1357, size: 256, offset: 9600)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1358, line: 98, size: 256, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1357, file: !1358, line: 99, baseType: !217, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1357, file: !1358, line: 100, baseType: !153, size: 128, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1357, file: !1358, line: 101, baseType: !1363, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1358, line: 21, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1203, file: !30, line: 986, baseType: !1369, offset: 10240)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !386)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1190, file: !30, line: 640, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1238, line: 297, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1238, line: 297, size: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1372, file: !1238, line: 297, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1243, line: 19, baseType: !112)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !30, line: 646, baseType: !1377, size: 64, offset: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !30, line: 646, size: 64, elements: !1378)
!1378 = !{!1379, !1382}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1377, file: !30, line: 647, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !112)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1377, file: !30, line: 648, baseType: !1381, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1190, file: !30, line: 666, baseType: !136, size: 32, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1190, file: !30, line: 667, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !30, line: 580, baseType: !459, size: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1190, file: !30, line: 670, baseType: !518, size: 8, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1190, file: !30, line: 681, baseType: !1391, size: 256, offset: 512)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !30, line: 678, size: 256, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1391, file: !30, line: 679, baseType: !451, size: 192, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1391, file: !30, line: 680, baseType: !112, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1190, file: !30, line: 689, baseType: !153, size: 128, offset: 768)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1190, file: !30, line: 691, baseType: !1397, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1190, file: !30, line: 694, baseType: !1400, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1183, line: 563, size: 1024, elements: !1403)
!1403 = !{!1404, !1408, !1409, !1413, !1417, !1421, !1422, !1426, !1430, !1434, !1435, !1436, !1440, !1444, !1450, !1454}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1402, file: !1183, line: 564, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1189}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1402, file: !1183, line: 569, baseType: !1405, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1402, file: !1183, line: 571, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!136, !1189, !112}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1402, file: !1183, line: 572, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!136, !1189}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1402, file: !1183, line: 578, baseType: !1418, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!136, !1189, !112, !112, !112}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1402, file: !1183, line: 580, baseType: !1177, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1402, file: !1183, line: 581, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1180, !1181, !7}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1402, file: !1183, line: 582, baseType: !1427, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1180, !1181, !112, !112}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1402, file: !1183, line: 584, baseType: !1431, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!112, !1189}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1402, file: !1183, line: 588, baseType: !1177, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1402, file: !1183, line: 591, baseType: !1177, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1402, file: !1183, line: 597, baseType: !1437, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!136, !1189, !112, !111, !136, !136}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1402, file: !1183, line: 603, baseType: !1441, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!521, !1189}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1402, file: !1183, line: 613, baseType: !1445, size: 64, offset: 832)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!136, !1189, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1402, file: !1183, line: 625, baseType: !1451, size: 64, offset: 896)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1448, !1189, !112}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1402, file: !1183, line: 633, baseType: !1455, size: 64, offset: 960)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1069, !1189, !112}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1190, file: !30, line: 697, baseType: !112, size: 64, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1190, file: !30, line: 699, baseType: !800, size: 64, offset: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1190, file: !30, line: 700, baseType: !111, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1190, file: !30, line: 711, baseType: !217, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1190, file: !30, line: 717, baseType: !1448, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1190, file: !30, line: 722, baseType: !1464, offset: 1344)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !1223)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1186, file: !1183, line: 515, baseType: !888, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1186, file: !1183, line: 516, baseType: !112, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1186, file: !1183, line: 517, baseType: !112, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1186, file: !1183, line: 518, baseType: !112, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !1183, line: 520, baseType: !29, size: 32, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1182, file: !1183, line: 522, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1243, line: 22, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1243, line: 22, size: 64, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1473, file: !1243, line: 22, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1243, line: 15, baseType: !112)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1182, file: !1183, line: 524, baseType: !1478, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1238, line: 372, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1238, line: 372, size: 64, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1480, file: !1238, line: 372, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1243, line: 16, baseType: !112)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1183, line: 527, baseType: !1485, size: 64, offset: 512)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !1183, line: 527, size: 64, elements: !1486)
!1486 = !{!1487, !1493}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1485, file: !1183, line: 528, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1243, line: 21, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1243, line: 21, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1489, file: !1243, line: 21, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1243, line: 14, baseType: !112)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1485, file: !1183, line: 529, baseType: !1472, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1182, file: !1183, line: 534, baseType: !1069, size: 64, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1182, file: !1183, line: 535, baseType: !1069, size: 64, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1182, file: !1183, line: 541, baseType: !1497, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1182, file: !1183, line: 545, baseType: !1499, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1182, file: !1183, line: 549, baseType: !1501, size: 64, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1238, line: 520, baseType: !1069)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1170, file: !22, line: 100, baseType: !1503, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!136, !1119, !112, !112, !136}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1120, file: !22, line: 134, baseType: !111, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1120, file: !22, line: 135, baseType: !136, size: 32, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !22, line: 136, baseType: !1509, size: 128, offset: 1088)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !22, line: 136, size: 128, elements: !1510)
!1510 = !{!1511, !1517}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1509, file: !22, line: 137, baseType: !1512, size: 128)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1513, line: 6, size: 128, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1512, file: !1513, line: 7, baseType: !427, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1512, file: !1513, line: 8, baseType: !427, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !22, line: 138, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !22, line: 138, elements: !1519)
!1519 = !{!1520, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1518, file: !22, line: 138, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1518, file: !22, line: 138, elements: !1223)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1518, file: !22, line: 138, baseType: !1523)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, elements: !386)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1116, file: !30, line: 147, baseType: !111, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1074, file: !30, line: 161, baseType: !299, size: 128, align: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !30, line: 164, baseType: !1527, size: 32, offset: 384)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !30, line: 164, size: 32, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1527, file: !30, line: 169, baseType: !131, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1527, file: !30, line: 177, baseType: !7, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1070, file: !30, line: 181, baseType: !131, size: 32, offset: 416)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1063, file: !59, line: 406, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!136, !800, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1540)
!1540 = !{!1541, !1571, !1585}
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !30, line: 295, baseType: !1542, size: 512)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !30, line: 295, size: 512, elements: !1543)
!1543 = !{!1544, !1570}
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !30, line: 296, baseType: !1545, size: 448)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !30, line: 296, size: 448, elements: !1546)
!1546 = !{!1547, !1548, !1557, !1558, !1559, !1568, !1569}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !30, line: 298, baseType: !112, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !30, line: 299, baseType: !1549, size: 128, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1545, file: !30, line: 299, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1549, file: !30, line: 300, baseType: !153, size: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !30, line: 302, baseType: !1553, size: 128)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !30, line: 302, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1553, file: !30, line: 303, baseType: !111, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1553, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1545, file: !30, line: 310, baseType: !1042, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1545, file: !30, line: 311, baseType: !112, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !30, line: 312, baseType: !1560, size: 64, offset: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1545, file: !30, line: 312, size: 64, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1560, file: !30, line: 313, baseType: !111, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1560, file: !30, line: 314, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1565, file: !30, line: 256, baseType: !112, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1545, file: !30, line: 316, baseType: !131, size: 32, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1545, file: !30, line: 317, baseType: !131, size: 32, offset: 416)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1542, file: !30, line: 323, baseType: !1070, size: 512, align: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !30, line: 325, baseType: !1572, size: 512, offset: 512)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !30, line: 325, size: 512, elements: !1573)
!1573 = !{!1574, !1584}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !30, line: 326, baseType: !1575, size: 320)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !30, line: 326, size: 320, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1575, file: !30, line: 327, baseType: !112, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1575, file: !30, line: 328, baseType: !112, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1575, file: !30, line: 329, baseType: !112, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1575, file: !30, line: 331, baseType: !131, size: 32, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1575, file: !30, line: 332, baseType: !131, size: 32, offset: 224)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1575, file: !30, line: 333, baseType: !131, size: 32, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1575, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1572, file: !30, line: 339, baseType: !1070, size: 512, align: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !30, line: 341, baseType: !1586, size: 512, offset: 1024)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !30, line: 341, size: 512, elements: !1587)
!1587 = !{!1588, !1597, !1603}
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !30, line: 342, baseType: !1589, size: 384)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !30, line: 342, size: 384, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1589, file: !30, line: 343, baseType: !112, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1589, file: !30, line: 344, baseType: !112, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1589, file: !30, line: 346, baseType: !111, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1589, file: !30, line: 347, baseType: !111, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1589, file: !30, line: 348, baseType: !111, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1589, file: !30, line: 349, baseType: !111, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !30, line: 352, baseType: !1598, size: 256)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !30, line: 352, size: 256, elements: !1599)
!1599 = !{!1600, !1601, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1598, file: !30, line: 353, baseType: !112, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1598, file: !30, line: 354, baseType: !112, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1598, file: !30, line: 356, baseType: !153, size: 128, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1586, file: !30, line: 359, baseType: !1070, size: 512, align: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1063, file: !59, line: 409, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!136, !1042, !1532}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1063, file: !59, line: 412, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!518, !1042, !1538}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1063, file: !59, line: 414, baseType: !1613, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1063, file: !59, line: 416, baseType: !1619, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!136, !800, !1042, !208, !7, !1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1063, file: !59, line: 419, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!136, !800, !1042, !208, !7, !7, !1069, !111}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1063, file: !59, line: 424, baseType: !1629, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1632, !1042, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !132, line: 131, baseType: !427)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1063, file: !59, line: 425, baseType: !1634, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1538, !200, !200}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1063, file: !59, line: 426, baseType: !1638, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!518, !1538, !888}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1063, file: !59, line: 427, baseType: !1642, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1538}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1063, file: !59, line: 428, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!836, !1649, !1671}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1658, !1659, !1660, !1661}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1650, file: !59, line: 374, baseType: !800, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1650, file: !59, line: 375, baseType: !208, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1650, file: !59, line: 376, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !1649, !796}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1650, file: !59, line: 377, baseType: !111, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1650, file: !59, line: 378, baseType: !136, size: 32, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1650, file: !59, line: 379, baseType: !251, size: 16, offset: 288)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !59, line: 380, baseType: !1662, size: 64, offset: 320)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !59, line: 380, size: 64, elements: !1663)
!1663 = !{!1664, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1662, file: !59, line: 386, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1662, file: !59, line: 395, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!836, !111}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1673, line: 41, size: 320, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1685, !1723}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1672, file: !1673, line: 42, baseType: !243, size: 8)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1672, file: !1673, line: 43, baseType: !518, size: 8, offset: 8)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1672, file: !1673, line: 44, baseType: !518, size: 8, offset: 16)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1672, file: !1673, line: 45, baseType: !518, size: 8, offset: 24)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1672, file: !1673, line: 46, baseType: !518, size: 8, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1673, line: 47, baseType: !1681, size: 64, offset: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !1673, line: 47, size: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1681, file: !1673, line: 48, baseType: !200, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1681, file: !1673, line: 49, baseType: !136, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1673, line: 61, baseType: !1686, size: 128, offset: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !1673, line: 61, size: 128, elements: !1687)
!1687 = !{!1688, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1686, file: !1673, line: 67, baseType: !1689, size: 128)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1690, line: 17, size: 128, elements: !1691)
!1690 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1689, file: !1690, line: 19, baseType: !111, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1689, file: !1690, line: 20, baseType: !201, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1673, line: 68, baseType: !1695, size: 128)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !1673, line: 68, size: 128, elements: !1696)
!1696 = !{!1697, !1722}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !1673, line: 69, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1695, file: !1673, line: 69, size: 64, elements: !1699)
!1699 = !{!1700, !1703, !1710, !1719, !1721}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1698, file: !1673, line: 71, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1698, file: !1673, line: 72, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1673, line: 17, size: 128, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1706, file: !1673, line: 18, baseType: !111, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1706, file: !1673, line: 19, baseType: !200, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1698, file: !1673, line: 73, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1714, line: 31, size: 128, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1713, file: !1714, line: 32, baseType: !1069, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1713, file: !1714, line: 33, baseType: !7, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1713, file: !1714, line: 34, baseType: !7, size: 32, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1698, file: !1673, line: 74, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1698, file: !1673, line: 75, baseType: !111, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1695, file: !1673, line: 77, baseType: !200, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1673, line: 80, baseType: !1724, size: 64, offset: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !1673, line: 80, size: 64, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1724, file: !1673, line: 81, baseType: !112, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1724, file: !1673, line: 82, baseType: !208, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1063, file: !59, line: 433, baseType: !1729, size: 64, offset: 768)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!136, !1042, !1538, !1538, !45}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1063, file: !59, line: 435, baseType: !1733, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!136, !1538}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1063, file: !59, line: 436, baseType: !1737, size: 64, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!518, !1538, !200, !200}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1063, file: !59, line: 438, baseType: !1741, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1538, !1744, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1063, file: !59, line: 439, baseType: !1746, size: 64, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!136, !1042, !1069}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1063, file: !59, line: 442, baseType: !1750, size: 64, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!136, !1753, !800, !1755}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1063, file: !59, line: 444, baseType: !1757, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !800}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1063, file: !59, line: 445, baseType: !1761, size: 64, offset: 1216)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!136, !1649, !1671}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !59, line: 486, baseType: !112, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1043, file: !59, line: 487, baseType: !459, size: 320, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1043, file: !59, line: 488, baseType: !1767, size: 32, offset: 1280)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1768, line: 8, baseType: !138)
!1768 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1043, file: !59, line: 489, baseType: !309, size: 32, offset: 1312)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1043, file: !59, line: 490, baseType: !153, size: 128, offset: 1344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1043, file: !59, line: 491, baseType: !111, size: 64, offset: 1472)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1033, file: !1002, line: 180, baseType: !1773, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!836, !800, !944, !1032, !198, !208, !200}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1033, file: !1002, line: 182, baseType: !1773, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1033, file: !1002, line: 184, baseType: !1778, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!136, !800, !944, !1032, !1189}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1021, file: !1002, line: 90, baseType: !1782, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1021, file: !1002, line: 91, baseType: !1784, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !992, file: !939, line: 120, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1789, !962}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1792)
!1792 = !{!1793, !1794, !1798, !1802, !1808, !1812}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !53, line: 40, baseType: !52, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1791, file: !53, line: 41, baseType: !1795, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!518}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1791, file: !53, line: 42, baseType: !1799, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!111}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1791, file: !53, line: 43, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1318, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1791, file: !53, line: 44, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1318}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1791, file: !53, line: 45, baseType: !713, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !992, file: !939, line: 121, baseType: !1814, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1318, !962}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !992, file: !939, line: 122, baseType: !1818, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !962, !1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !938, file: !939, line: 70, baseType: !1824, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1826, line: 190, size: 1152, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1911, !1912, !1913, !1914, !1915, !1918}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1825, file: !1826, line: 191, baseType: !131, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1825, file: !1826, line: 192, baseType: !131, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1825, file: !1826, line: 202, baseType: !1824, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1825, file: !1826, line: 203, baseType: !521, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1825, file: !1826, line: 205, baseType: !451, size: 192, align: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1825, file: !1826, line: 207, baseType: !1318, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1825, file: !1826, line: 208, baseType: !7, size: 32, offset: 448)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !1826, line: 209, baseType: !1836, size: 256, offset: 512)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1825, file: !1826, line: 209, size: 256, elements: !1837)
!1837 = !{!1838, !1847, !1851}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1836, file: !1826, line: 210, baseType: !1839, size: 256)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1826, line: 153, size: 256, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1846}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1839, file: !1826, line: 154, baseType: !112, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1839, file: !1826, line: 156, baseType: !1054, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1839, file: !1826, line: 162, baseType: !1844, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1826, line: 162, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1839, file: !1826, line: 167, baseType: !112, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1836, file: !1826, line: 211, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1826, line: 170, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1848, file: !1826, line: 171, baseType: !1824, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1836, file: !1826, line: 212, baseType: !1852, size: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1826, line: 174, size: 256, elements: !1853)
!1853 = !{!1854, !1906, !1909, !1910}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1852, file: !1826, line: 175, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1826, line: 271, size: 768, elements: !1858)
!1858 = !{!1859, !1879, !1883, !1884, !1885, !1886, !1887, !1891, !1892, !1893, !1894, !1902}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1857, file: !1826, line: 276, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!136, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1826, line: 251, size: 1216, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1864, file: !1826, line: 253, baseType: !1824, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1864, file: !1826, line: 254, baseType: !800, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1864, file: !1826, line: 255, baseType: !193, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1864, file: !1826, line: 256, baseType: !111, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1864, file: !1826, line: 259, baseType: !213, size: 256, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1864, file: !1826, line: 260, baseType: !213, size: 256, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1864, file: !1826, line: 261, baseType: !136, size: 32, offset: 768)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1864, file: !1826, line: 262, baseType: !153, size: 128, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1864, file: !1826, line: 263, baseType: !198, size: 64, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1864, file: !1826, line: 265, baseType: !200, size: 64, offset: 1024)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1864, file: !1826, line: 266, baseType: !518, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1864, file: !1826, line: 267, baseType: !518, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1864, file: !1826, line: 268, baseType: !1400, size: 64, offset: 1152)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1857, file: !1826, line: 277, baseType: !1880, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1863}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1857, file: !1826, line: 290, baseType: !280, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1857, file: !1826, line: 292, baseType: !267, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1857, file: !1826, line: 293, baseType: !276, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1857, file: !1826, line: 294, baseType: !272, size: 64, offset: 320)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1857, file: !1826, line: 296, baseType: !1888, size: 64, offset: 384)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!836, !1863, !198, !200, !208}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1857, file: !1826, line: 306, baseType: !200, size: 64, offset: 448)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1857, file: !1826, line: 313, baseType: !518, size: 8, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1857, file: !1826, line: 314, baseType: !1888, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1857, file: !1826, line: 317, baseType: !1895, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898, !1863, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1899, line: 59, baseType: !7)
!1899 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !59, line: 61, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1857, file: !1826, line: 320, baseType: !1903, size: 64, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!136, !1863, !1189}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1852, file: !1826, line: 176, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1826, line: 35, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1852, file: !1826, line: 177, baseType: !208, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1852, file: !1826, line: 178, baseType: !1824, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1825, file: !1826, line: 215, baseType: !111, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1825, file: !1826, line: 221, baseType: !427, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1825, file: !1826, line: 223, baseType: !253, size: 16, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1825, file: !1826, line: 224, baseType: !685, size: 16, offset: 912)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1825, file: !1826, line: 225, baseType: !1916, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1826, line: 36, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1825, file: !1826, line: 227, baseType: !299, size: 128, align: 64, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !938, file: !939, line: 71, baseType: !1920, size: 32, offset: 448)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1921, line: 19, size: 32, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1922 = !{!1923}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1920, file: !1921, line: 20, baseType: !127, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !938, file: !939, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !938, file: !939, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !938, file: !939, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !938, file: !939, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !938, file: !939, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !935, file: !15, line: 47, baseType: !925, size: 64, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !935, file: !15, line: 48, baseType: !944, size: 64, offset: 576)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !935, file: !15, line: 49, baseType: !1932, size: 64, offset: 640)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !935, file: !15, line: 50, baseType: !1935, size: 64, offset: 704)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !926, file: !15, line: 418, baseType: !1937, size: 64, offset: 1408)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1939)
!1939 = !{!1940, !1941, !1946, !1950, !1954, !1958}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1938, file: !15, line: 54, baseType: !1009, size: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1938, file: !15, line: 55, baseType: !1942, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!836, !1937, !1945, !198}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1938, file: !15, line: 57, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!836, !1937, !1945, !521, !200}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1938, file: !15, line: 59, baseType: !1951, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !925, !521}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1938, file: !15, line: 60, baseType: !1955, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!136, !925}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1938, file: !15, line: 61, baseType: !1959, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !925}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !926, file: !15, line: 419, baseType: !521, size: 64, offset: 1472)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !926, file: !15, line: 420, baseType: !521, size: 64, offset: 1536)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !926, file: !15, line: 421, baseType: !944, size: 64, offset: 1600)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !926, file: !15, line: 424, baseType: !1966, size: 64, offset: 1664)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !926, file: !15, line: 425, baseType: !1970, size: 64, offset: 1728)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !926, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !926, file: !15, line: 435, baseType: !213, size: 256, offset: 1856)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !926, file: !15, line: 437, baseType: !1975, size: 64, offset: 2112)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1977, line: 69, size: 320, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1978 = !{!1979, !1980, !1981, !1998, !2000, !2004, !2005}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1976, file: !1977, line: 70, baseType: !521, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1976, file: !1977, line: 71, baseType: !925, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1976, file: !1977, line: 72, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1977, line: 47, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1993, !1997}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1984, file: !1977, line: 49, baseType: !7, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1984, file: !1977, line: 51, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!136, !521, !1991}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1984, file: !1977, line: 53, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!136, !198, !1991}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1984, file: !1977, line: 55, baseType: !713, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1976, file: !1977, line: 73, baseType: !1999, size: 16, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1976, file: !1977, line: 74, baseType: !2001, size: 8, offset: 208)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !139, line: 16, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !141, line: 20, baseType: !2003)
!2003 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1976, file: !1977, line: 75, baseType: !243, size: 8, offset: 216)
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1977, line: 76, baseType: !2006, size: 64, offset: 256)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1977, line: 76, size: 64, elements: !2007)
!2007 = !{!2008, !2009, !2016}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2006, file: !1977, line: 77, baseType: !111, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2006, file: !1977, line: 78, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1977, line: 86, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2012, file: !1977, line: 87, baseType: !7, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2012, file: !1977, line: 88, baseType: !198, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2006, file: !1977, line: 79, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1977, line: 92, size: 256, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2025, !2026}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2019, file: !1977, line: 94, baseType: !7, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2019, file: !1977, line: 95, baseType: !7, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2019, file: !1977, line: 96, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2019, file: !1977, line: 97, baseType: !1982, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2019, file: !1977, line: 98, baseType: !111, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !926, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !926, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !926, file: !15, line: 442, baseType: !1966, size: 64, offset: 2240)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !926, file: !15, line: 443, baseType: !1970, size: 64, offset: 2304)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !926, file: !15, line: 444, baseType: !518, size: 8, offset: 2368)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !926, file: !15, line: 451, baseType: !518, size: 8, offset: 2376)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !926, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !926, file: !15, line: 455, baseType: !2035, size: 64, offset: 2432)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2037, line: 23, size: 96, elements: !2038)
!2037 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2036, file: !2037, line: 24, baseType: !136, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2036, file: !2037, line: 24, baseType: !136, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2036, file: !2037, line: 24, baseType: !136, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !926, file: !15, line: 458, baseType: !2043, size: 64, offset: 2496)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!136}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !926, file: !15, line: 460, baseType: !2047, size: 4032, align: 512, offset: 2560)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2048, size: 4032, elements: !2064)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2048, file: !15, line: 363, baseType: !111, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2048, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2048, file: !15, line: 367, baseType: !2053, size: 448, offset: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2053, file: !15, line: 320, baseType: !925, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2053, file: !15, line: 321, baseType: !2057, size: 384, offset: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2058, line: 40, size: 384, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2057, file: !2058, line: 41, baseType: !2061, size: 384, align: 64)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, align: 64, elements: !2062)
!2062 = !{!2063}
!2063 = !DISubrange(count: 2)
!2064 = !{!2065}
!2065 = !DISubrange(count: 7)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !926, file: !15, line: 463, baseType: !2067, size: 192, offset: 6592)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2068, line: 8, size: 192, elements: !2069)
!2068 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2069 = !{!2070, !2071, !2073}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2067, file: !2068, line: 10, baseType: !7, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2067, file: !2068, line: 11, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2067, file: !2068, line: 12, baseType: !2074, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2076, line: 59, size: 48, elements: !2077)
!2076 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2075, file: !2076, line: 60, baseType: !1335, size: 16)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2075, file: !2076, line: 61, baseType: !1335, size: 16, offset: 16)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2075, file: !2076, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2075, file: !2076, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2075, file: !2076, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2075, file: !2076, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !926, file: !15, line: 465, baseType: !112, size: 64, offset: 6784)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !926, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !926, file: !15, line: 470, baseType: !153, size: 128, offset: 6912)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !926, file: !15, line: 471, baseType: !2088, size: 64, offset: 7040)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2090, line: 33, size: 96, elements: !2091)
!2090 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2091 = !{!2092, !2093, !2094, !2095}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2089, file: !2090, line: 37, baseType: !136, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2089, file: !2090, line: 43, baseType: !136, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2089, file: !2090, line: 45, baseType: !253, size: 16, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2090, line: 47, baseType: !253, size: 16, offset: 80)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !926, file: !15, line: 476, baseType: !2097, size: 64, offset: 7104)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2099)
!2099 = !{!2100, !2116, !2117, !2118}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2098, file: !15, line: 379, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2103, line: 204, baseType: !2104)
!2103 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2103, line: 197, size: 192, elements: !2105)
!2105 = !{!2106, !2108, !2109, !2110, !2112, !2114}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2104, file: !2103, line: 198, baseType: !2107, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2103, line: 21, baseType: !140)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2104, file: !2103, line: 199, baseType: !245, size: 8, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2104, file: !2103, line: 200, baseType: !245, size: 8, offset: 40)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2104, file: !2103, line: 201, baseType: !2111, size: 16, offset: 48)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2103, line: 17, baseType: !252)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2104, file: !2103, line: 202, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2103, line: 16, baseType: !428)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2104, file: !2103, line: 203, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2103, line: 22, baseType: !428)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2098, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2098, file: !15, line: 381, baseType: !198, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2098, file: !15, line: 382, baseType: !198, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !926, file: !15, line: 477, baseType: !2098, size: 256, offset: 7168)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !926, file: !15, line: 480, baseType: !2121, size: 64, offset: 7424)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !926, file: !15, line: 483, baseType: !2124, size: 64, offset: 7488)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !926, file: !15, line: 488, baseType: !198, size: 64, offset: 7552)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !926, file: !15, line: 492, baseType: !111, size: 64, offset: 7616)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !926, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !926, file: !15, line: 495, baseType: !111, size: 64, offset: 7744)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !926, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !926, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !926, file: !15, line: 500, baseType: !2133, size: 64, offset: 7872)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2135, line: 45, baseType: !2136)
!2135 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !926, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !926, file: !15, line: 504, baseType: !2139, size: 64, offset: 8000)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2142, line: 96, size: 192, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2143 = !{!2144, !2145, !2199, !2202}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2141, file: !2142, line: 97, baseType: !7, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2141, file: !2142, line: 98, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2142, line: 24, size: 3072, elements: !2148)
!2148 = !{!2149, !2151, !2152, !2153, !2154, !2168, !2169, !2170, !2171, !2183, !2184, !2185, !2196, !2197, !2198}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2147, file: !2142, line: 26, baseType: !2150, size: 128)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2062)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2147, file: !2142, line: 27, baseType: !2150, size: 128, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2147, file: !2142, line: 28, baseType: !136, size: 32, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2147, file: !2142, line: 31, baseType: !309, size: 32, align: 512, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2147, file: !2142, line: 32, baseType: !2155, size: 960, offset: 576)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2156, line: 206, size: 960, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2157 = !{!2158, !2159, !2162, !2164, !2165, !2167}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2155, file: !2156, line: 207, baseType: !302, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2155, file: !2156, line: 208, baseType: !2160, size: 256, offset: 64)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 256, elements: !367)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2155, file: !2156, line: 209, baseType: !2163, size: 256, offset: 320)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !367)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2155, file: !2156, line: 213, baseType: !796, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2155, file: !2156, line: 215, baseType: !2166, size: 256, offset: 640)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 256, elements: !367)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !2156, line: 216, baseType: !243, size: 8, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2147, file: !2142, line: 33, baseType: !112, size: 64, offset: 1536)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2147, file: !2142, line: 34, baseType: !112, size: 64, offset: 1600)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2147, file: !2142, line: 35, baseType: !518, size: 8, offset: 1664)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2147, file: !2142, line: 36, baseType: !2172, size: 320, offset: 1728)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2173, line: 11, size: 320, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2174 = !{!2175, !2176, !2177, !2182}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2172, file: !2173, line: 16, baseType: !362, size: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2172, file: !2173, line: 17, baseType: !112, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2172, file: !2173, line: 18, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2172, file: !2173, line: 19, baseType: !138, size: 32, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2147, file: !2142, line: 37, baseType: !1357, size: 256, offset: 2048)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2147, file: !2142, line: 38, baseType: !299, size: 128, align: 64, offset: 2304)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2147, file: !2142, line: 39, baseType: !2186, size: 64, offset: 2432)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2142, line: 49, size: 768, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2187, file: !2142, line: 50, baseType: !309, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2187, file: !2142, line: 51, baseType: !2163, size: 256, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2187, file: !2142, line: 53, baseType: !2163, size: 256, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2187, file: !2142, line: 54, baseType: !112, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2187, file: !2142, line: 55, baseType: !2186, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2187, file: !2142, line: 56, baseType: !136, size: 32, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2187, file: !2142, line: 57, baseType: !136, size: 32, offset: 736)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2147, file: !2142, line: 40, baseType: !112, size: 64, offset: 2496)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2147, file: !2142, line: 42, baseType: !136, size: 32, offset: 2560)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2147, file: !2142, line: 43, baseType: !2140, size: 64, offset: 2624)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2141, file: !2142, line: 99, baseType: !2200, offset: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2201, line: 211, elements: !1223)
!2201 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2141, file: !2142, line: 100, baseType: !2203, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2142, line: 63, size: 3008, elements: !2205)
!2205 = !{!2206, !2207, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2237}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2204, file: !2142, line: 64, baseType: !2186, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2204, file: !2142, line: 65, baseType: !2208, size: 192, offset: 64)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2186, size: 192, elements: !346)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2204, file: !2142, line: 67, baseType: !136, size: 32, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2204, file: !2142, line: 68, baseType: !213, size: 256, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !2142, line: 69, baseType: !309, size: 32, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2204, file: !2142, line: 70, baseType: !213, size: 256, offset: 640)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2204, file: !2142, line: 71, baseType: !112, size: 64, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2204, file: !2142, line: 72, baseType: !112, size: 64, offset: 960)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2204, file: !2142, line: 73, baseType: !112, size: 64, offset: 1024)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2204, file: !2142, line: 74, baseType: !112, size: 64, offset: 1088)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2204, file: !2142, line: 75, baseType: !112, size: 64, offset: 1152)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2204, file: !2142, line: 76, baseType: !112, size: 64, offset: 1216)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2204, file: !2142, line: 77, baseType: !112, size: 64, offset: 1280)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2204, file: !2142, line: 78, baseType: !112, size: 64, offset: 1344)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2204, file: !2142, line: 79, baseType: !518, size: 8, offset: 1408)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2204, file: !2142, line: 80, baseType: !112, size: 64, offset: 1472)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2204, file: !2142, line: 81, baseType: !213, size: 256, offset: 1536)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2204, file: !2142, line: 82, baseType: !1154, size: 256, offset: 1792)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2204, file: !2142, line: 84, baseType: !131, size: 32, offset: 2048)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2204, file: !2142, line: 87, baseType: !112, size: 64, offset: 2112)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2204, file: !2142, line: 88, baseType: !112, size: 64, offset: 2176)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2204, file: !2142, line: 89, baseType: !2229, size: 704, offset: 2240)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1358, line: 111, size: 704, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2236}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2229, file: !1358, line: 112, baseType: !1357, size: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2229, file: !1358, line: 113, baseType: !2172, size: 320, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2229, file: !1358, line: 116, baseType: !2234, size: 64, offset: 576)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1358, line: 18, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2229, file: !1358, line: 117, baseType: !136, size: 32, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2204, file: !2142, line: 90, baseType: !2140, size: 64, offset: 2944)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !926, file: !15, line: 515, baseType: !2239, size: 64, offset: 8064)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2241, line: 117, size: 128, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2240, file: !2241, line: 118, baseType: !444, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2240, file: !2241, line: 119, baseType: !444, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2240, file: !2241, line: 120, baseType: !796, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !926, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !926, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !926, file: !15, line: 520, baseType: !2249, size: 64, offset: 8192)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !926, file: !15, line: 523, baseType: !2251, size: 64, offset: 8256)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !926, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !926, file: !15, line: 525, baseType: !2256, size: 64, offset: 8384)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !926, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !926, file: !15, line: 533, baseType: !111, size: 64, offset: 8512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !926, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !926, file: !15, line: 535, baseType: !2263, size: 64, offset: 8640)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !926, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !926, file: !15, line: 539, baseType: !136, size: 32, offset: 8736)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !926, file: !15, line: 540, baseType: !2267, size: 64, offset: 8768)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2269, line: 32, size: 64, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2268, file: !2269, line: 33, baseType: !444, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2268, file: !2269, line: 34, baseType: !444, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !926, file: !15, line: 563, baseType: !153, size: 128, offset: 8832)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !926, file: !15, line: 565, baseType: !153, size: 128, offset: 8960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !926, file: !15, line: 568, baseType: !2276, size: 64, offset: 9088)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !926, file: !15, line: 570, baseType: !131, size: 32, offset: 9152)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !59, line: 2382, baseType: !901, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !902, file: !59, line: 2383, baseType: !358, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !902, file: !59, line: 2385, baseType: !2283, offset: 576)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2201, line: 206, elements: !1223)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !902, file: !59, line: 2386, baseType: !2283, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !902, file: !59, line: 2387, baseType: !2283, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !902, file: !59, line: 2388, baseType: !2287, offset: 576)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, elements: !346)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !902, file: !59, line: 2390, baseType: !2283, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !902, file: !59, line: 2391, baseType: !2283, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !902, file: !59, line: 2392, baseType: !2283, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !902, file: !59, line: 2393, baseType: !2283, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !893, file: !59, line: 1197, baseType: !2293, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2295)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2296)
!2296 = !{!2297, !2301, !2305, !2306, !2310, !2314, !2318, !2319, !2320, !2324, !2328, !2332, !2333, !2334, !2340, !2344, !2345, !2349, !2350, !2351, !2352, !2356, !2360, !2407, !2422, !2423}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2295, file: !59, line: 2058, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!681, !892}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2295, file: !59, line: 2059, baseType: !2302, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !681}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2295, file: !59, line: 2060, baseType: !2302, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2295, file: !59, line: 2062, baseType: !2307, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !681, !136}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2295, file: !59, line: 2063, baseType: !2311, size: 64, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!136, !681, !1532}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2295, file: !59, line: 2064, baseType: !2315, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!136, !681}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2295, file: !59, line: 2065, baseType: !2302, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2295, file: !59, line: 2066, baseType: !921, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2295, file: !59, line: 2067, baseType: !2321, size: 64, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!136, !892, !136}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2295, file: !59, line: 2068, baseType: !2325, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!136, !892, !58}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2295, file: !59, line: 2069, baseType: !2329, size: 64, offset: 640)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!136, !892}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2295, file: !59, line: 2070, baseType: !2325, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2295, file: !59, line: 2071, baseType: !2329, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2295, file: !59, line: 2072, baseType: !2335, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!136, !641, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2295, file: !59, line: 2073, baseType: !2341, size: 64, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!136, !892, !2072, !198}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2295, file: !59, line: 2074, baseType: !921, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2295, file: !59, line: 2076, baseType: !2346, size: 64, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!136, !193, !641}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2295, file: !59, line: 2077, baseType: !2346, size: 64, offset: 1088)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2295, file: !59, line: 2078, baseType: !2346, size: 64, offset: 1152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2295, file: !59, line: 2079, baseType: !2346, size: 64, offset: 1216)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2295, file: !59, line: 2081, baseType: !2353, size: 64, offset: 1280)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!836, !892, !136, !198, !200, !208}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2295, file: !59, line: 2082, baseType: !2357, size: 64, offset: 1344)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!836, !892, !136, !521, !200, !208}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2295, file: !59, line: 2083, baseType: !2361, size: 64, offset: 1408)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!2364, !681}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2392, !2393, !2394}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2366, file: !64, line: 297, baseType: !362, size: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2366, file: !64, line: 298, baseType: !153, size: 128, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2366, file: !64, line: 299, baseType: !153, size: 128, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2366, file: !64, line: 300, baseType: !153, size: 128, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2366, file: !64, line: 301, baseType: !213, size: 256, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2366, file: !64, line: 302, baseType: !309, size: 32, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2366, file: !64, line: 303, baseType: !131, size: 32, offset: 800)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2366, file: !64, line: 304, baseType: !892, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2366, file: !64, line: 305, baseType: !2377, size: 64, offset: 896)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2378)
!2378 = !{!2379, !2391}
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !2377, file: !64, line: 69, baseType: !2380, size: 32)
!2380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2377, file: !64, line: 69, size: 32, elements: !2381)
!2381 = !{!2382, !2383, !2384}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2380, file: !64, line: 70, baseType: !390, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2380, file: !64, line: 71, baseType: !408, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2380, file: !64, line: 72, baseType: !2385, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2386, line: 24, baseType: !2387)
!2386 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2386, line: 22, size: 32, elements: !2388)
!2388 = !{!2389}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2387, file: !2386, line: 23, baseType: !2390, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2386, line: 20, baseType: !396)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2377, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2366, file: !64, line: 306, baseType: !208, size: 64, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2366, file: !64, line: 307, baseType: !112, size: 64, offset: 1024)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2366, file: !64, line: 308, baseType: !2395, size: 576, offset: 1088)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2396)
!2396 = !{!2397, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2395, file: !64, line: 206, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !210)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2395, file: !64, line: 207, baseType: !2398, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2395, file: !64, line: 208, baseType: !2398, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2395, file: !64, line: 209, baseType: !2398, size: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2395, file: !64, line: 210, baseType: !2398, size: 64, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2395, file: !64, line: 211, baseType: !2398, size: 64, offset: 320)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2395, file: !64, line: 212, baseType: !2398, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2395, file: !64, line: 213, baseType: !475, size: 64, offset: 448)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2395, file: !64, line: 214, baseType: !475, size: 64, offset: 512)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2295, file: !59, line: 2085, baseType: !2408, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!796, !892, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2413, line: 15, size: 256, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2414 = !{!2415, !2416, !2417, !2418, !2419}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2412, file: !2413, line: 16, baseType: !888, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2412, file: !2413, line: 19, baseType: !136, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2412, file: !2413, line: 26, baseType: !112, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2412, file: !2413, line: 33, baseType: !112, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2412, file: !2413, line: 36, baseType: !2420, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2295, file: !59, line: 2087, baseType: !2408, size: 64, offset: 1536)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2295, file: !59, line: 2089, baseType: !921, size: 64, offset: 1600)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !893, file: !59, line: 1198, baseType: !2425, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2427)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2428)
!2428 = !{!2429, !2433, !2437, !2441, !2442, !2443, !2444, !2445, !2450, !2455, !2459}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2427, file: !64, line: 325, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!136, !2365}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2427, file: !64, line: 326, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!2365, !892, !136}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2427, file: !64, line: 327, baseType: !2438, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !2365}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2427, file: !64, line: 328, baseType: !2430, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2427, file: !64, line: 329, baseType: !2430, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2427, file: !64, line: 330, baseType: !2430, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2427, file: !64, line: 331, baseType: !2321, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2427, file: !64, line: 334, baseType: !2446, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!2449, !681}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2427, file: !64, line: 335, baseType: !2451, size: 64, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!136, !681, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2427, file: !64, line: 337, baseType: !2456, size: 64, offset: 576)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!136, !681, !2449}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2427, file: !64, line: 339, baseType: !2460, size: 64, offset: 640)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!136, !892, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !893, file: !59, line: 1199, baseType: !2465, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2468)
!2468 = !{!2469, !2473, !2474, !2478, !2479, !2480, !2495, !2518, !2522, !2523, !2546}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2467, file: !64, line: 431, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!136, !892, !136, !136, !805}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2467, file: !64, line: 432, baseType: !2321, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2467, file: !64, line: 433, baseType: !2475, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!136, !892, !7}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2467, file: !64, line: 434, baseType: !2475, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2467, file: !64, line: 435, baseType: !2321, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2467, file: !64, line: 436, baseType: !2481, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!136, !892, !136, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2485, file: !64, line: 418, baseType: !136, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2485, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2485, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2485, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2485, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2485, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2485, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2485, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2467, file: !64, line: 437, baseType: !2496, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!136, !892, !2377, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2500, file: !64, line: 346, baseType: !136, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2500, file: !64, line: 347, baseType: !427, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2500, file: !64, line: 348, baseType: !427, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2500, file: !64, line: 349, baseType: !427, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2500, file: !64, line: 350, baseType: !427, size: 64, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2500, file: !64, line: 351, baseType: !427, size: 64, offset: 320)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2500, file: !64, line: 352, baseType: !427, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2500, file: !64, line: 353, baseType: !223, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2500, file: !64, line: 355, baseType: !223, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2500, file: !64, line: 356, baseType: !136, size: 32, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2500, file: !64, line: 357, baseType: !136, size: 32, offset: 608)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2500, file: !64, line: 358, baseType: !427, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2500, file: !64, line: 359, baseType: !427, size: 64, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2500, file: !64, line: 360, baseType: !427, size: 64, offset: 768)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2500, file: !64, line: 361, baseType: !223, size: 64, offset: 832)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2500, file: !64, line: 362, baseType: !136, size: 32, offset: 896)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2467, file: !64, line: 438, baseType: !2519, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!136, !892, !2463, !2499}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2467, file: !64, line: 440, baseType: !2496, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2467, file: !64, line: 441, baseType: !2524, size: 64, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!136, !892, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2528, file: !64, line: 412, baseType: !7, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2528, file: !64, line: 413, baseType: !2532, size: 1344, offset: 64)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2533, size: 1344, elements: !346)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2545}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !64, line: 398, baseType: !7, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2533, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2533, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2533, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2533, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2533, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2533, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2533, file: !64, line: 406, baseType: !429, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2533, file: !64, line: 407, baseType: !2544, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !132, line: 132, baseType: !427)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2533, file: !64, line: 408, baseType: !2544, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2467, file: !64, line: 442, baseType: !2475, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !893, file: !59, line: 1200, baseType: !2548, size: 64, offset: 576)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !893, file: !59, line: 1201, baseType: !112, size: 64, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !893, file: !59, line: 1202, baseType: !112, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !893, file: !59, line: 1203, baseType: !112, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !893, file: !59, line: 1204, baseType: !641, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !893, file: !59, line: 1205, baseType: !459, size: 320, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !893, file: !59, line: 1206, baseType: !136, size: 32, offset: 1216)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !893, file: !59, line: 1207, baseType: !131, size: 32, offset: 1248)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !893, file: !59, line: 1209, baseType: !111, size: 64, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !893, file: !59, line: 1211, baseType: !2560, size: 64, offset: 1344)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !893, file: !59, line: 1223, baseType: !2565, size: 64, offset: 1408)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !658, line: 34, size: 64, elements: !2566)
!2566 = !{!2567}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2565, file: !658, line: 35, baseType: !661, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !893, file: !59, line: 1224, baseType: !153, size: 128, offset: 1472)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !893, file: !59, line: 1225, baseType: !2570, size: 64, offset: 1600)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !893, file: !59, line: 1226, baseType: !2573, size: 64, offset: 1664)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !893, file: !59, line: 1227, baseType: !2576, size: 64, offset: 1728)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !893, file: !59, line: 1228, baseType: !2579, size: 64, offset: 1792)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !893, file: !59, line: 1229, baseType: !362, size: 128, offset: 1856)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !893, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !893, file: !59, line: 1231, baseType: !2584, size: 2496, offset: 2048)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2590, !2622}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2584, file: !64, line: 522, baseType: !7, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2584, file: !64, line: 523, baseType: !459, size: 320, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2584, file: !64, line: 524, baseType: !2589, size: 192, offset: 384)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 192, elements: !346)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2584, file: !64, line: 525, baseType: !2591, size: 1728, offset: 576)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 1728, elements: !346)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2593)
!2593 = !{!2594, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2592, file: !64, line: 223, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2597)
!2597 = !{!2598, !2599, !2612, !2613}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2596, file: !64, line: 446, baseType: !136, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2596, file: !64, line: 447, baseType: !2600, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2602, file: !64, line: 313, baseType: !2321, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2602, file: !64, line: 314, baseType: !2321, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2602, file: !64, line: 315, baseType: !2321, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2602, file: !64, line: 316, baseType: !2321, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2602, file: !64, line: 317, baseType: !2430, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2602, file: !64, line: 318, baseType: !2430, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2602, file: !64, line: 319, baseType: !2430, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2602, file: !64, line: 320, baseType: !2460, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2596, file: !64, line: 448, baseType: !925, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2596, file: !64, line: 449, baseType: !2595, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2592, file: !64, line: 224, baseType: !136, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2592, file: !64, line: 226, baseType: !153, size: 128, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2592, file: !64, line: 227, baseType: !112, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2592, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2592, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2592, file: !64, line: 230, baseType: !2398, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2592, file: !64, line: 231, baseType: !2398, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2592, file: !64, line: 232, baseType: !111, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2584, file: !64, line: 526, baseType: !2623, size: 192, offset: 2304)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 192, elements: !346)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !893, file: !59, line: 1233, baseType: !2625, size: 2368, offset: 4544)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2626)
!2626 = !{!2627, !2628, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2625, file: !59, line: 1185, baseType: !253, size: 16)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2625, file: !59, line: 1186, baseType: !253, size: 16, offset: 16)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2625, file: !59, line: 1187, baseType: !2630, size: 2304, offset: 64)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2631, size: 2304, elements: !346)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2632, line: 12, size: 768, elements: !2633)
!2632 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2633 = !{!2634, !2642, !2643, !3871, !3872}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2631, file: !2632, line: 13, baseType: !2635, size: 384)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2636, line: 17, size: 384, elements: !2637)
!2636 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2637 = !{!2638, !2639, !2640, !2641}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2635, file: !2636, line: 18, baseType: !136, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2635, file: !2636, line: 19, baseType: !136, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2635, file: !2636, line: 20, baseType: !371, size: 192, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2635, file: !2636, line: 22, baseType: !299, size: 128, align: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2631, file: !2632, line: 14, baseType: !2024, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2631, file: !2632, line: 15, baseType: !2644, size: 64, offset: 448)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2645, line: 16, size: 64, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2644, file: !2645, line: 17, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2650, line: 746, size: 58368, elements: !2651)
!2650 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2651 = !{!2652, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2732, !2743, !2831, !2835, !2838, !2869, !2870, !2871, !2872, !2883, !2885, !2886, !2887, !2888, !2889, !2890, !2901, !2902, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2919, !2920, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !3008, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3056, !3062, !3063, !3064, !3065, !3066, !3070, !3073, !3080, !3085, !3088, !3091, !3094, !3120, !3258, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3296, !3297, !3298, !3307, !3315, !3316, !3317, !3318, !3319, !3324, !3325, !3326, !3329, !3330, !3333, !3336, !3339, !3347, !3350, !3351, !3437, !3438, !3439, !3440, !3441, !3447, !3448, !3449, !3450, !3453, !3454, !3457, !3471, !3472, !3475, !3476, !3477, !3480, !3481, !3482, !3483, !3484, !3485, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3517, !3520, !3526, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3538, !3610, !3612, !3613, !3614, !3615, !3616, !3617, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3646, !3647, !3648}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2649, file: !2650, line: 752, baseType: !2653, size: 192)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2654, line: 56, size: 192, elements: !2655)
!2654 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !2654, line: 57, baseType: !112, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2653, file: !2654, line: 58, baseType: !112, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2653, file: !2654, line: 59, baseType: !138, size: 32, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2653, file: !2654, line: 61, baseType: !138, size: 32, offset: 160)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2649, file: !2650, line: 754, baseType: !7, size: 32, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2649, file: !2650, line: 767, baseType: !111, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2649, file: !2650, line: 768, baseType: !127, size: 32, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2649, file: !2650, line: 770, baseType: !7, size: 32, offset: 352)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2649, file: !2650, line: 771, baseType: !7, size: 32, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2649, file: !2650, line: 774, baseType: !136, size: 32, offset: 416)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2649, file: !2650, line: 775, baseType: !2667, size: 128, offset: 448)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2668, line: 58, size: 128, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2669 = !{!2670, !2671, !2676, !2677}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2667, file: !2668, line: 59, baseType: !293, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2668, line: 60, baseType: !2672, size: 32, offset: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2668, line: 60, size: 32, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2672, file: !2668, line: 61, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2672, file: !2668, line: 62, baseType: !131, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2667, file: !2668, line: 65, baseType: !251, size: 16, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2667, file: !2668, line: 65, baseType: !251, size: 16, offset: 112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2649, file: !2650, line: 776, baseType: !7, size: 32, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2649, file: !2650, line: 777, baseType: !112, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2649, file: !2650, line: 778, baseType: !2648, size: 64, offset: 704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2649, file: !2650, line: 787, baseType: !136, size: 32, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2649, file: !2650, line: 788, baseType: !136, size: 32, offset: 800)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2649, file: !2650, line: 790, baseType: !136, size: 32, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2649, file: !2650, line: 792, baseType: !136, size: 32, offset: 864)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2649, file: !2650, line: 793, baseType: !136, size: 32, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2649, file: !2650, line: 794, baseType: !136, size: 32, offset: 928)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2649, file: !2650, line: 795, baseType: !7, size: 32, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2649, file: !2650, line: 797, baseType: !2689, size: 2048, offset: 1024)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2650, line: 551, size: 2048, elements: !2690)
!2690 = !{!2691, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2711, !2714, !2715, !2716}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2689, file: !2650, line: 553, baseType: !2692, size: 128)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2650, line: 411, size: 128, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2692, file: !2650, line: 412, baseType: !112, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2692, file: !2650, line: 413, baseType: !138, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2689, file: !2650, line: 554, baseType: !451, size: 192, align: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2689, file: !2650, line: 555, baseType: !427, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2689, file: !2650, line: 556, baseType: !427, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2689, file: !2650, line: 558, baseType: !153, size: 128, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2689, file: !2650, line: 559, baseType: !7, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2689, file: !2650, line: 561, baseType: !427, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2689, file: !2650, line: 562, baseType: !427, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2689, file: !2650, line: 563, baseType: !427, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2689, file: !2650, line: 564, baseType: !427, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2689, file: !2650, line: 565, baseType: !223, size: 64, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2689, file: !2650, line: 566, baseType: !427, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2689, file: !2650, line: 568, baseType: !427, size: 64, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2689, file: !2650, line: 571, baseType: !136, size: 32, offset: 1088)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2689, file: !2650, line: 572, baseType: !2710, size: 64, offset: 1152)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2689, file: !2650, line: 574, baseType: !2712, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2650, line: 49, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2689, file: !2650, line: 576, baseType: !2712, size: 64, offset: 1280)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2689, file: !2650, line: 578, baseType: !112, size: 64, offset: 1344)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2689, file: !2650, line: 588, baseType: !2717, size: 512, align: 512, offset: 1536)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2650, line: 497, size: 512, align: 512, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2717, file: !2650, line: 498, baseType: !427, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2717, file: !2650, line: 499, baseType: !427, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2717, file: !2650, line: 500, baseType: !427, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2717, file: !2650, line: 501, baseType: !138, size: 32, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2717, file: !2650, line: 502, baseType: !138, size: 32, offset: 224)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2717, file: !2650, line: 503, baseType: !112, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2717, file: !2650, line: 504, baseType: !112, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2717, file: !2650, line: 505, baseType: !112, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2717, file: !2650, line: 506, baseType: !2728, size: 64, align: 64, offset: 448)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2650, line: 445, size: 64, align: 64, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2728, file: !2650, line: 446, baseType: !7, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2728, file: !2650, line: 447, baseType: !7, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2649, file: !2650, line: 798, baseType: !2733, size: 384, offset: 3072)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2650, line: 592, size: 384, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2733, file: !2650, line: 593, baseType: !153, size: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2733, file: !2650, line: 594, baseType: !112, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2733, file: !2650, line: 595, baseType: !112, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2733, file: !2650, line: 596, baseType: !7, size: 32, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2733, file: !2650, line: 597, baseType: !253, size: 16, offset: 288)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2733, file: !2650, line: 598, baseType: !253, size: 16, offset: 304)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2733, file: !2650, line: 600, baseType: !2742, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2649, file: !2650, line: 799, baseType: !2744, size: 1792, offset: 3456)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2650, line: 610, size: 1792, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2828, !2829}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2744, file: !2650, line: 611, baseType: !451, size: 192, align: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2744, file: !2650, line: 618, baseType: !427, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2744, file: !2650, line: 619, baseType: !427, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2744, file: !2650, line: 620, baseType: !427, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2744, file: !2650, line: 621, baseType: !427, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2744, file: !2650, line: 622, baseType: !427, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2744, file: !2650, line: 629, baseType: !223, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2744, file: !2650, line: 630, baseType: !427, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2650, line: 631, baseType: !7, size: 32, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2744, file: !2650, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2744, file: !2650, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2744, file: !2650, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2744, file: !2650, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2744, file: !2650, line: 662, baseType: !2760, size: 512, offset: 704)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !2761)
!2761 = !{!2762, !2770, !2771, !2776, !2824, !2825, !2826, !2827}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2760, file: !70, line: 119, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2764, line: 9, size: 256, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2765 = !{!2766, !2767}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2763, file: !2764, line: 10, baseType: !451, size: 192, align: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2763, file: !2764, line: 11, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2769, line: 29, baseType: !223)
!2769 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2760, file: !70, line: 120, baseType: !2768, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2760, file: !70, line: 121, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!69, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2760, file: !70, line: 122, baseType: !2777, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !2779)
!2779 = !{!2780, !2805, !2806, !2809, !2814, !2815, !2819, !2823}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2778, file: !70, line: 160, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !70, line: 216, baseType: !226, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2782, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2782, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2782, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2782, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2782, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2782, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2782, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2782, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2782, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2782, file: !70, line: 227, baseType: !253, size: 16, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2782, file: !70, line: 228, baseType: !253, size: 16, offset: 208)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2782, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2782, file: !70, line: 235, baseType: !2768, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2782, file: !70, line: 236, baseType: !2775, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2782, file: !70, line: 237, baseType: !2768, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2782, file: !70, line: 238, baseType: !2775, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2782, file: !70, line: 239, baseType: !2802, size: 4096, align: 512, offset: 512)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 4096, align: 512, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 8)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2778, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2778, file: !70, line: 162, baseType: !2807, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !132, line: 32, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !202, line: 96, baseType: !136)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2778, file: !70, line: 163, baseType: !2810, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !648, line: 274, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !648, line: 274, size: 32, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2811, file: !648, line: 274, baseType: !652, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2778, file: !70, line: 164, baseType: !2775, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2778, file: !70, line: 165, baseType: !2816, size: 128, offset: 256)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2764, line: 14, size: 128, elements: !2817)
!2817 = !{!2818}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2816, file: !2764, line: 15, baseType: !1051, size: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2778, file: !70, line: 166, baseType: !2820, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!2768}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2778, file: !70, line: 167, baseType: !2768, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2760, file: !70, line: 123, baseType: !243, size: 8, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2760, file: !70, line: 124, baseType: !243, size: 8, offset: 456)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2760, file: !70, line: 125, baseType: !243, size: 8, offset: 464)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2760, file: !70, line: 126, baseType: !243, size: 8, offset: 472)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2744, file: !2650, line: 671, baseType: !2760, size: 512, offset: 1216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2744, file: !2650, line: 679, baseType: !2830, size: 64, offset: 1728)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2649, file: !2650, line: 800, baseType: !2832, size: 64, offset: 5248)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2650, line: 800, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2649, file: !2650, line: 809, baseType: !2836, size: 64, offset: 5312)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2650, line: 70, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2649, file: !2650, line: 825, baseType: !2839, size: 2048, align: 512, offset: 5632)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2650, line: 509, size: 2048, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2839, file: !2650, line: 511, baseType: !427, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2839, file: !2650, line: 512, baseType: !427, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2839, file: !2650, line: 513, baseType: !427, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2839, file: !2650, line: 514, baseType: !427, size: 64, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2839, file: !2650, line: 515, baseType: !427, size: 64, offset: 256)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2839, file: !2650, line: 516, baseType: !427, size: 64, offset: 320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2839, file: !2650, line: 518, baseType: !427, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2839, file: !2650, line: 519, baseType: !427, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2839, file: !2650, line: 520, baseType: !223, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2839, file: !2650, line: 522, baseType: !427, size: 64, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2839, file: !2650, line: 523, baseType: !427, size: 64, offset: 640)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2839, file: !2650, line: 524, baseType: !223, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2839, file: !2650, line: 526, baseType: !223, size: 64, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2839, file: !2650, line: 527, baseType: !427, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2839, file: !2650, line: 529, baseType: !427, size: 64, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2839, file: !2650, line: 530, baseType: !427, size: 64, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2839, file: !2650, line: 531, baseType: !427, size: 64, offset: 1024)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2839, file: !2650, line: 532, baseType: !427, size: 64, offset: 1088)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2839, file: !2650, line: 533, baseType: !427, size: 64, offset: 1152)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2839, file: !2650, line: 535, baseType: !427, size: 64, offset: 1216)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2839, file: !2650, line: 536, baseType: !427, size: 64, offset: 1280)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2839, file: !2650, line: 537, baseType: !427, size: 64, offset: 1344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2839, file: !2650, line: 538, baseType: !427, size: 64, offset: 1408)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2839, file: !2650, line: 539, baseType: !427, size: 64, offset: 1472)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2839, file: !2650, line: 540, baseType: !427, size: 64, offset: 1536)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2839, file: !2650, line: 541, baseType: !427, size: 64, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2839, file: !2650, line: 542, baseType: !427, size: 64, offset: 1664)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2839, file: !2650, line: 543, baseType: !427, size: 64, offset: 1728)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2649, file: !2650, line: 833, baseType: !7, size: 32, offset: 7680)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2649, file: !2650, line: 836, baseType: !7, size: 32, offset: 7712)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2649, file: !2650, line: 837, baseType: !136, size: 32, offset: 7744)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2649, file: !2650, line: 838, baseType: !2873, size: 64, offset: 7808)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2876, line: 19, baseType: !2877)
!2876 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2876, line: 19, size: 64, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2877, file: !2876, line: 19, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !2881)
!2881 = !{!2882}
!2882 = !DISubrange(count: 1)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2649, file: !2650, line: 839, baseType: !2884, size: 64, offset: 7872)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2649, file: !2650, line: 840, baseType: !2875, size: 64, offset: 7936)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2649, file: !2650, line: 841, baseType: !111, size: 64, offset: 8000)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2649, file: !2650, line: 843, baseType: !253, size: 16, offset: 8064)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2649, file: !2650, line: 845, baseType: !253, size: 16, offset: 8080)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2649, file: !2650, line: 848, baseType: !136, size: 32, offset: 8096)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2649, file: !2650, line: 849, baseType: !2891, size: 32, offset: 8128)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2650, line: 718, size: 32, elements: !2892)
!2892 = !{!2893, !2900}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2891, file: !2650, line: 724, baseType: !2894, size: 32)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2891, file: !2650, line: 719, size: 32, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2894, file: !2650, line: 720, baseType: !243, size: 8)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2894, file: !2650, line: 721, baseType: !243, size: 8, offset: 8)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2894, file: !2650, line: 722, baseType: !243, size: 8, offset: 16)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2894, file: !2650, line: 723, baseType: !243, size: 8, offset: 24)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2891, file: !2650, line: 725, baseType: !138, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2649, file: !2650, line: 850, baseType: !153, size: 128, offset: 8192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2649, file: !2650, line: 851, baseType: !2903, size: 64, offset: 8320)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2650, line: 60, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2649, file: !2650, line: 855, baseType: !112, size: 64, offset: 8384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2649, file: !2650, line: 856, baseType: !243, size: 8, offset: 8448)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2649, file: !2650, line: 857, baseType: !243, size: 8, offset: 8456)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2649, file: !2650, line: 858, baseType: !136, size: 32, offset: 8480)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2649, file: !2650, line: 859, baseType: !153, size: 128, offset: 8512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2649, file: !2650, line: 860, baseType: !136, size: 32, offset: 8640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2649, file: !2650, line: 861, baseType: !153, size: 128, offset: 8704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2649, file: !2650, line: 873, baseType: !2913, size: 256, offset: 8832)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2650, line: 376, size: 256, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2913, file: !2650, line: 381, baseType: !112, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2913, file: !2650, line: 384, baseType: !429, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2913, file: !2650, line: 389, baseType: !429, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2913, file: !2650, line: 392, baseType: !429, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2649, file: !2650, line: 875, baseType: !153, size: 128, offset: 9088)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2649, file: !2650, line: 877, baseType: !2921, size: 320, offset: 9216)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2922, line: 86, size: 320, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2923 = !{!2924, !2925, !2926}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2921, file: !2922, line: 87, baseType: !136, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2921, file: !2922, line: 88, baseType: !153, size: 128, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2921, file: !2922, line: 89, baseType: !153, size: 128, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2649, file: !2650, line: 878, baseType: !451, size: 192, align: 64, offset: 9536)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2649, file: !2650, line: 881, baseType: !1202, size: 64, offset: 9728)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2649, file: !2650, line: 882, baseType: !1202, size: 64, offset: 9792)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2649, file: !2650, line: 884, baseType: !136, size: 32, offset: 9856)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2649, file: !2650, line: 885, baseType: !136, size: 32, offset: 9888)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2649, file: !2650, line: 886, baseType: !136, size: 32, offset: 9920)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2649, file: !2650, line: 888, baseType: !136, size: 32, offset: 9952)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2649, file: !2650, line: 890, baseType: !112, size: 64, offset: 9984)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2649, file: !2650, line: 893, baseType: !7, size: 32, offset: 10048)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2649, file: !2650, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2649, file: !2650, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2649, file: !2650, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2649, file: !2650, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2649, file: !2650, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2649, file: !2650, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2649, file: !2650, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2649, file: !2650, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2649, file: !2650, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2649, file: !2650, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2649, file: !2650, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2649, file: !2650, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2649, file: !2650, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2649, file: !2650, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2649, file: !2650, line: 969, baseType: !112, size: 64, offset: 10176)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2649, file: !2650, line: 971, baseType: !2952, size: 448, offset: 10240)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2953)
!2953 = !{!2954, !2955, !2960}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2952, file: !75, line: 26, baseType: !112, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2952, file: !75, line: 27, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!796, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !75, line: 28, baseType: !2961, size: 320, offset: 128)
!2961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !75, line: 28, size: 320, elements: !2962)
!2962 = !{!2963, !2973, !2998}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2961, file: !75, line: 37, baseType: !2964, size: 320)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !75, line: 30, size: 320, elements: !2965)
!2965 = !{!2966, !2968, !2969, !2970, !2971, !2972}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2964, file: !75, line: 31, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2964, file: !75, line: 32, baseType: !138, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2964, file: !75, line: 33, baseType: !138, size: 32, offset: 96)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2964, file: !75, line: 34, baseType: !138, size: 32, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2964, file: !75, line: 35, baseType: !427, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2964, file: !75, line: 36, baseType: !2967, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2961, file: !75, line: 47, baseType: !2974, size: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !75, line: 39, size: 192, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2997}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2974, file: !75, line: 40, baseType: !2807, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2974, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2974, file: !75, line: 42, baseType: !2979, size: 64, offset: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !75, line: 42, size: 64, elements: !2980)
!2980 = !{!2981, !2989}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2979, file: !75, line: 43, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2984, line: 7, size: 128, elements: !2985)
!2984 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2985 = !{!2986, !2988}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2983, file: !2984, line: 8, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !202, line: 93, baseType: !210)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2983, file: !2984, line: 9, baseType: !210, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2979, file: !75, line: 44, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2992, line: 7, size: 64, elements: !2993)
!2992 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2993 = !{!2994, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2991, file: !2992, line: 8, baseType: !2995, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2992, line: 5, baseType: !444)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2991, file: !2992, line: 9, baseType: !444, size: 32, offset: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2974, file: !75, line: 46, baseType: !427, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2961, file: !75, line: 55, baseType: !2999, size: 256)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !75, line: 49, size: 256, elements: !3000)
!3000 = !{!3001, !3004, !3005, !3006, !3007}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2999, file: !75, line: 50, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2999, file: !75, line: 51, baseType: !136, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2999, file: !75, line: 52, baseType: !136, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2999, file: !75, line: 53, baseType: !112, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2999, file: !75, line: 54, baseType: !112, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2649, file: !2650, line: 973, baseType: !3009, size: 32, offset: 10688)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !132, line: 27, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !202, line: 28, baseType: !136)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2649, file: !2650, line: 974, baseType: !3009, size: 32, offset: 10720)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2649, file: !2650, line: 978, baseType: !112, size: 64, offset: 10752)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2649, file: !2650, line: 987, baseType: !2648, size: 64, offset: 10816)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2649, file: !2650, line: 990, baseType: !2648, size: 64, offset: 10880)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2649, file: !2650, line: 995, baseType: !153, size: 128, offset: 10944)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2649, file: !2650, line: 996, baseType: !153, size: 128, offset: 11072)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2649, file: !2650, line: 997, baseType: !2648, size: 64, offset: 11200)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2649, file: !2650, line: 1005, baseType: !153, size: 128, offset: 11264)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2649, file: !2650, line: 1006, baseType: !153, size: 128, offset: 11392)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2649, file: !2650, line: 1009, baseType: !350, size: 64, offset: 11520)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2649, file: !2650, line: 1010, baseType: !3022, size: 512, offset: 11584)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 512, elements: !367)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2649, file: !2650, line: 1011, baseType: !153, size: 128, offset: 12096)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2649, file: !2650, line: 1012, baseType: !153, size: 128, offset: 12224)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2649, file: !2650, line: 1014, baseType: !1935, size: 64, offset: 12352)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2649, file: !2650, line: 1017, baseType: !2072, size: 64, offset: 12416)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2649, file: !2650, line: 1020, baseType: !2072, size: 64, offset: 12480)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2649, file: !2650, line: 1023, baseType: !111, size: 64, offset: 12544)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2649, file: !2650, line: 1025, baseType: !427, size: 64, offset: 12608)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2649, file: !2650, line: 1026, baseType: !427, size: 64, offset: 12672)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2649, file: !2650, line: 1031, baseType: !427, size: 64, offset: 12736)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2649, file: !2650, line: 1032, baseType: !3033, size: 192, offset: 12800)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2650, line: 324, size: 192, elements: !3034)
!3034 = !{!3035, !3036, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3033, file: !2650, line: 326, baseType: !427, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3033, file: !2650, line: 327, baseType: !427, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3033, file: !2650, line: 328, baseType: !226, size: 32, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2649, file: !2650, line: 1041, baseType: !112, size: 64, offset: 12992)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2649, file: !2650, line: 1042, baseType: !112, size: 64, offset: 13056)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2649, file: !2650, line: 1045, baseType: !427, size: 64, offset: 13120)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2649, file: !2650, line: 1048, baseType: !427, size: 64, offset: 13184)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2649, file: !2650, line: 1051, baseType: !112, size: 64, offset: 13248)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2649, file: !2650, line: 1052, baseType: !112, size: 64, offset: 13312)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2649, file: !2650, line: 1055, baseType: !3045, size: 640, offset: 13376)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3046, line: 132, size: 640, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3047 = !{!3048, !3054, !3055}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3045, file: !3046, line: 133, baseType: !3049, size: 576)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3050, size: 576, elements: !346)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3046, line: 117, size: 192, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3050, file: !3046, line: 118, baseType: !427, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3050, file: !3046, line: 119, baseType: !2816, size: 128, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3045, file: !3046, line: 134, baseType: !7, size: 32, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3045, file: !3046, line: 135, baseType: !7, size: 32, offset: 608)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2649, file: !2650, line: 1058, baseType: !3057, size: 448, offset: 14016)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3046, line: 144, size: 448, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3057, file: !3046, line: 145, baseType: !299, size: 128, align: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3057, file: !3046, line: 146, baseType: !213, size: 256, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3057, file: !3046, line: 147, baseType: !7, size: 32, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2649, file: !2650, line: 1064, baseType: !400, size: 64, offset: 14464)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2649, file: !2650, line: 1067, baseType: !400, size: 64, offset: 14528)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2649, file: !2650, line: 1070, baseType: !400, size: 64, offset: 14592)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2649, file: !2650, line: 1074, baseType: !436, size: 64, offset: 14656)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2649, file: !2650, line: 1084, baseType: !3067, size: 128, offset: 14720)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !3068)
!3068 = !{!3069}
!3069 = !DISubrange(count: 16)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2649, file: !2650, line: 1086, baseType: !3071, size: 64, offset: 14848)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2650, line: 55, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2649, file: !2650, line: 1089, baseType: !3074, size: 64, offset: 14912)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3075, line: 12, size: 64, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3074, file: !3075, line: 13, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3075, line: 8, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2649, file: !2650, line: 1090, baseType: !3081, size: 128, offset: 14976)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3082, line: 13, size: 128, elements: !3083)
!3082 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3081, file: !3082, line: 14, baseType: !153, size: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2649, file: !2650, line: 1097, baseType: !3086, size: 64, offset: 15104)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2650, line: 50, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2649, file: !2650, line: 1100, baseType: !3089, size: 64, offset: 15168)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2650, line: 1100, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2649, file: !2650, line: 1103, baseType: !3092, size: 64, offset: 15232)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2650, line: 53, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2649, file: !2650, line: 1107, baseType: !3095, size: 64, offset: 15296)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3097, line: 31, size: 576, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3098 = !{!3099, !3100, !3103, !3106, !3109, !3110, !3113, !3116, !3117}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3096, file: !3097, line: 32, baseType: !127, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3096, file: !3097, line: 33, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3097, line: 9, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3096, file: !3097, line: 34, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3097, line: 10, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3096, file: !3097, line: 35, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3097, line: 8, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3096, file: !3097, line: 36, baseType: !384, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3096, file: !3097, line: 37, baseType: !3111, size: 64, offset: 320)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !438, line: 34, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3096, file: !3097, line: 38, baseType: !3114, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3097, line: 38, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3096, file: !3097, line: 39, baseType: !3114, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3096, file: !3097, line: 40, baseType: !3118, size: 64, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3097, line: 12, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2649, file: !2650, line: 1110, baseType: !3121, size: 64, offset: 15360)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3123, line: 93, size: 8768, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3172, !3181, !3182, !3184, !3185, !3186, !3189, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3227, !3228, !3235, !3245, !3248, !3249, !3252, !3253, !3254, !3255, !3256, !3257}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3122, file: !3123, line: 94, baseType: !127, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3122, file: !3123, line: 95, baseType: !131, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3122, file: !3123, line: 96, baseType: !136, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3122, file: !3123, line: 97, baseType: !136, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3122, file: !3123, line: 98, baseType: !153, size: 128, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3122, file: !3123, line: 100, baseType: !371, size: 192, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3122, file: !3123, line: 103, baseType: !2648, size: 64, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3122, file: !3123, line: 106, baseType: !3133, size: 192, offset: 512)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !608, line: 32, size: 192, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3133, file: !608, line: 33, baseType: !153, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3133, file: !608, line: 34, baseType: !3137, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3138, line: 25, baseType: !3139)
!3138 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3138, line: 23, size: 64, elements: !3140)
!3140 = !{!3141}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3139, file: !3138, line: 24, baseType: !2880, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3122, file: !3123, line: 109, baseType: !358, size: 64, offset: 704)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3122, file: !3123, line: 112, baseType: !136, size: 32, offset: 768)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3122, file: !3123, line: 114, baseType: !136, size: 32, offset: 800)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3122, file: !3123, line: 115, baseType: !2648, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3122, file: !3123, line: 118, baseType: !136, size: 32, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3122, file: !3123, line: 119, baseType: !7, size: 32, offset: 928)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3122, file: !3123, line: 121, baseType: !3149, size: 64, offset: 960)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3123, line: 80, size: 448, elements: !3151)
!3151 = !{!3152, !3153, !3159}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3150, file: !3123, line: 81, baseType: !131, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3150, file: !3123, line: 82, baseType: !3154, size: 128, offset: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3123, line: 75, size: 128, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3154, file: !3123, line: 76, baseType: !2648, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3154, file: !3123, line: 77, baseType: !3158, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3150, file: !3123, line: 83, baseType: !1154, size: 256, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3122, file: !3123, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3122, file: !3123, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3122, file: !3123, line: 138, baseType: !7, size: 32, offset: 1056)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3122, file: !3123, line: 139, baseType: !153, size: 128, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3122, file: !3123, line: 142, baseType: !2760, size: 512, offset: 1216)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3122, file: !3123, line: 143, baseType: !2768, size: 64, offset: 1728)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3122, file: !3123, line: 150, baseType: !3167, size: 256, offset: 1792)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3168, size: 256, elements: !2062)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3123, line: 38, size: 128, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3168, file: !3123, line: 39, baseType: !427, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3168, file: !3123, line: 40, baseType: !427, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3122, file: !3123, line: 156, baseType: !3173, size: 192, offset: 2048)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3123, line: 66, size: 192, elements: !3174)
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3173, file: !3123, line: 67, baseType: !3176, size: 192)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3123, line: 47, size: 192, elements: !3177)
!3177 = !{!3178, !3179, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3176, file: !3123, line: 48, baseType: !219, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3176, file: !3123, line: 49, baseType: !219, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3176, file: !3123, line: 50, baseType: !219, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3122, file: !3123, line: 160, baseType: !3045, size: 640, offset: 2240)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3122, file: !3123, line: 163, baseType: !3183, size: 256, offset: 2880)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !367)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3122, file: !3123, line: 169, baseType: !350, size: 64, offset: 3136)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3122, file: !3123, line: 172, baseType: !136, size: 32, offset: 3200)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3122, file: !3123, line: 174, baseType: !3187, size: 64, offset: 3264)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3123, line: 174, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3122, file: !3123, line: 185, baseType: !3190, size: 64, offset: 3328)
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !648, line: 860, baseType: !3191)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 853, size: 64, elements: !3192)
!3192 = !{!3193, !3194}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3191, file: !648, line: 858, baseType: !647, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3191, file: !648, line: 859, baseType: !309, size: 32, offset: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3122, file: !3123, line: 186, baseType: !427, size: 64, offset: 3392)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3122, file: !3123, line: 186, baseType: !427, size: 64, offset: 3456)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3122, file: !3123, line: 186, baseType: !427, size: 64, offset: 3520)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3122, file: !3123, line: 186, baseType: !427, size: 64, offset: 3584)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3122, file: !3123, line: 187, baseType: !427, size: 64, offset: 3648)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3122, file: !3123, line: 188, baseType: !427, size: 64, offset: 3712)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3122, file: !3123, line: 189, baseType: !3033, size: 192, offset: 3776)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3122, file: !3123, line: 190, baseType: !112, size: 64, offset: 3968)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3122, file: !3123, line: 190, baseType: !112, size: 64, offset: 4032)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3122, file: !3123, line: 190, baseType: !112, size: 64, offset: 4096)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3122, file: !3123, line: 190, baseType: !112, size: 64, offset: 4160)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3122, file: !3123, line: 191, baseType: !112, size: 64, offset: 4224)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3122, file: !3123, line: 191, baseType: !112, size: 64, offset: 4288)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3122, file: !3123, line: 191, baseType: !112, size: 64, offset: 4352)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3122, file: !3123, line: 191, baseType: !112, size: 64, offset: 4416)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3122, file: !3123, line: 192, baseType: !112, size: 64, offset: 4480)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3122, file: !3123, line: 192, baseType: !112, size: 64, offset: 4544)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3122, file: !3123, line: 192, baseType: !112, size: 64, offset: 4608)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3122, file: !3123, line: 192, baseType: !112, size: 64, offset: 4672)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3122, file: !3123, line: 193, baseType: !112, size: 64, offset: 4736)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3122, file: !3123, line: 193, baseType: !112, size: 64, offset: 4800)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3122, file: !3123, line: 194, baseType: !3217, size: 448, offset: 4864)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3218, line: 12, size: 448, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3217, file: !3218, line: 15, baseType: !427, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3217, file: !3218, line: 17, baseType: !427, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3217, file: !3218, line: 19, baseType: !427, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3217, file: !3218, line: 21, baseType: !427, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3217, file: !3218, line: 29, baseType: !427, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3217, file: !3218, line: 35, baseType: !427, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3217, file: !3218, line: 44, baseType: !427, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3122, file: !3123, line: 202, baseType: !429, size: 64, offset: 5312)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3122, file: !3123, line: 213, baseType: !3229, size: 2048, offset: 5376)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3230, size: 2048, elements: !3068)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3231, line: 43, size: 128, elements: !3232)
!3231 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3230, file: !3231, line: 44, baseType: !203, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3230, file: !3231, line: 45, baseType: !203, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3122, file: !3123, line: 216, baseType: !3236, size: 448, offset: 7424)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3123, line: 30, size: 448, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3236, file: !3123, line: 31, baseType: !136, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3236, file: !3123, line: 32, baseType: !796, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3236, file: !3123, line: 33, baseType: !112, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3236, file: !3123, line: 34, baseType: !427, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3236, file: !3123, line: 34, baseType: !427, size: 64, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3236, file: !3123, line: 35, baseType: !112, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3236, file: !3123, line: 35, baseType: !112, size: 64, offset: 384)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3122, file: !3123, line: 219, baseType: !3246, size: 64, offset: 7872)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3123, line: 219, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3122, file: !3123, line: 222, baseType: !7, size: 32, offset: 7936)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3122, file: !3123, line: 223, baseType: !3250, size: 64, offset: 8000)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3123, line: 223, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3122, file: !3123, line: 230, baseType: !518, size: 8, offset: 8064)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3122, file: !3123, line: 231, baseType: !487, size: 16, offset: 8080)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3122, file: !3123, line: 232, baseType: !487, size: 16, offset: 8096)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3122, file: !3123, line: 234, baseType: !1202, size: 64, offset: 8128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3122, file: !3123, line: 237, baseType: !213, size: 256, offset: 8192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3122, file: !3123, line: 243, baseType: !459, size: 320, offset: 8448)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2649, file: !2650, line: 1111, baseType: !3259, size: 64, offset: 15424)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3123, line: 20, size: 16640, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3260, file: !3123, line: 21, baseType: !309, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3260, file: !3123, line: 22, baseType: !127, size: 32, offset: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3260, file: !3123, line: 23, baseType: !371, size: 192, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3260, file: !3123, line: 24, baseType: !3266, size: 16384, offset: 256)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3267, size: 16384, elements: !981)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !608, line: 51, size: 256, elements: !3268)
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3267, file: !608, line: 52, baseType: !3270, size: 256)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !608, line: 37, size: 256, elements: !3271)
!3271 = !{!3272, !3279, !3280, !3284}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3270, file: !608, line: 39, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3274, line: 83, baseType: !3275)
!3274 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3274, line: 82, baseType: !3277)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !136}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3270, file: !608, line: 40, baseType: !112, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3270, file: !608, line: 46, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3274, line: 86, baseType: !3282)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3274, line: 85, baseType: !2277)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3270, file: !608, line: 48, baseType: !3137, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2649, file: !2650, line: 1112, baseType: !3137, size: 64, offset: 15488)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2649, file: !2650, line: 1113, baseType: !3137, size: 64, offset: 15552)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2649, file: !2650, line: 1115, baseType: !3137, size: 64, offset: 15616)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2649, file: !2650, line: 1116, baseType: !3133, size: 192, offset: 15680)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2649, file: !2650, line: 1117, baseType: !112, size: 64, offset: 15872)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2649, file: !2650, line: 1118, baseType: !200, size: 64, offset: 15936)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2649, file: !2650, line: 1119, baseType: !7, size: 32, offset: 16000)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2649, file: !2650, line: 1121, baseType: !302, size: 64, offset: 16064)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2649, file: !2650, line: 1125, baseType: !3294, size: 64, offset: 16128)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2650, line: 43, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2649, file: !2650, line: 1127, baseType: !390, size: 32, offset: 16192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2649, file: !2650, line: 1128, baseType: !7, size: 32, offset: 16224)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2649, file: !2650, line: 1130, baseType: !3299, size: 128, offset: 16256)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3300, line: 37, size: 128, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3299, file: !3300, line: 38, baseType: !136, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3299, file: !3300, line: 39, baseType: !131, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3299, file: !3300, line: 40, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3300, line: 24, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2649, file: !2650, line: 1131, baseType: !3308, size: 256, offset: 16384)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3309, line: 12, size: 256, elements: !3310)
!3309 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3308, file: !3309, line: 13, baseType: !198, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3308, file: !3309, line: 14, baseType: !112, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3308, file: !3309, line: 15, baseType: !112, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3308, file: !3309, line: 16, baseType: !518, size: 8, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2649, file: !2650, line: 1134, baseType: !427, size: 64, offset: 16640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2649, file: !2650, line: 1135, baseType: !427, size: 64, offset: 16704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2649, file: !2650, line: 1138, baseType: !309, size: 32, offset: 16768)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2649, file: !2650, line: 1141, baseType: !226, size: 32, offset: 16800)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2649, file: !2650, line: 1143, baseType: !3320, size: 64, offset: 16832)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2650, line: 735, size: 64, elements: !3321)
!3321 = !{!3322}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3320, file: !2650, line: 736, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2649, file: !2650, line: 1147, baseType: !1051, size: 128, offset: 16896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2649, file: !2650, line: 1149, baseType: !2648, size: 64, offset: 17024)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2649, file: !2650, line: 1151, baseType: !3327, size: 64, offset: 17088)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2650, line: 1151, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2649, file: !2650, line: 1188, baseType: !111, size: 64, offset: 17152)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2649, file: !2650, line: 1191, baseType: !3331, size: 64, offset: 17216)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2650, line: 44, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2649, file: !2650, line: 1194, baseType: !3334, size: 64, offset: 17280)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2650, line: 45, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2649, file: !2650, line: 1197, baseType: !3337, size: 64, offset: 17344)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2650, line: 61, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2649, file: !2650, line: 1199, baseType: !3340, size: 64, offset: 17408)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3342, line: 99, size: 128, elements: !3343)
!3342 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3341, file: !3342, line: 100, baseType: !217, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3341, file: !3342, line: 101, baseType: !131, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3341, file: !3342, line: 103, baseType: !253, size: 16, offset: 96)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2649, file: !2650, line: 1202, baseType: !3348, size: 64, offset: 17472)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2650, line: 48, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2649, file: !2650, line: 1205, baseType: !112, size: 64, offset: 17536)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2649, file: !2650, line: 1206, baseType: !3352, size: 64, offset: 17600)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !608, line: 14, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !608, line: 12, size: 384, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !608, line: 13, baseType: !3357, size: 384)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3354, file: !608, line: 13, size: 384, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3357, file: !608, line: 13, baseType: !136, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3357, file: !608, line: 13, baseType: !136, size: 32, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3357, file: !608, line: 13, baseType: !136, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3357, file: !608, line: 13, baseType: !3363, size: 256, offset: 128)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3364, line: 37, size: 256, elements: !3365)
!3364 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3365 = !{!3366, !3371, !3384, !3390, !3399, !3426, !3431}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3363, file: !3364, line: 42, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 39, size: 64, elements: !3368)
!3368 = !{!3369, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3367, file: !3364, line: 40, baseType: !3010, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3367, file: !3364, line: 41, baseType: !396, size: 32, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3363, file: !3364, line: 50, baseType: !3372, size: 192)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 45, size: 192, elements: !3373)
!3373 = !{!3374, !3376, !3377, !3383}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3372, file: !3364, line: 46, baseType: !3375, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !202, line: 95, baseType: !136)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3372, file: !3364, line: 47, baseType: !136, size: 32, offset: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3372, file: !3364, line: 48, baseType: !3378, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3364, line: 11, baseType: !3379)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3364, line: 8, size: 64, elements: !3380)
!3380 = !{!3381, !3382}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3379, file: !3364, line: 9, baseType: !136, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3379, file: !3364, line: 10, baseType: !111, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3372, file: !3364, line: 49, baseType: !136, size: 32, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3363, file: !3364, line: 57, baseType: !3385, size: 128)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 53, size: 128, elements: !3386)
!3386 = !{!3387, !3388, !3389}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3385, file: !3364, line: 54, baseType: !3010, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3385, file: !3364, line: 55, baseType: !396, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3385, file: !3364, line: 56, baseType: !3378, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3363, file: !3364, line: 66, baseType: !3391, size: 256)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 60, size: 256, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3398}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3391, file: !3364, line: 61, baseType: !3010, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3391, file: !3364, line: 62, baseType: !396, size: 32, offset: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3391, file: !3364, line: 63, baseType: !136, size: 32, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3391, file: !3364, line: 64, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !202, line: 94, baseType: !838)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3391, file: !3364, line: 65, baseType: !3397, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3363, file: !3364, line: 105, baseType: !3400, size: 256)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 69, size: 256, elements: !3401)
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3400, file: !3364, line: 70, baseType: !111, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3400, file: !3364, line: 79, baseType: !3404, size: 192, offset: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3400, file: !3364, line: 79, size: 192, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3415, !3420}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3404, file: !3364, line: 81, baseType: !136, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3404, file: !3364, line: 86, baseType: !487, size: 16)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3404, file: !3364, line: 92, baseType: !3409, size: 192)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3404, file: !3364, line: 88, size: 192, elements: !3410)
!3410 = !{!3411, !3413, !3414}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3409, file: !3364, line: 89, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !2803)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3409, file: !3364, line: 90, baseType: !111, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3409, file: !3364, line: 91, baseType: !111, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3404, file: !3364, line: 97, baseType: !3416, size: 96)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3404, file: !3364, line: 94, size: 96, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3416, file: !3364, line: 95, baseType: !3412, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3416, file: !3364, line: 96, baseType: !140, size: 32, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3404, file: !3364, line: 103, baseType: !3421, size: 128)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3404, file: !3364, line: 99, size: 128, elements: !3422)
!3422 = !{!3423, !3424, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3421, file: !3364, line: 100, baseType: !112, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3421, file: !3364, line: 101, baseType: !140, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3421, file: !3364, line: 102, baseType: !140, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3363, file: !3364, line: 111, baseType: !3427, size: 128)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 108, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3427, file: !3364, line: 109, baseType: !796, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3427, file: !3364, line: 110, baseType: !136, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3363, file: !3364, line: 118, baseType: !3432, size: 128)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3364, line: 114, size: 128, elements: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3432, file: !3364, line: 115, baseType: !111, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3432, file: !3364, line: 116, baseType: !136, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3432, file: !3364, line: 117, baseType: !7, size: 32, offset: 96)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2649, file: !2650, line: 1208, baseType: !3217, size: 448, offset: 17664)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2649, file: !2650, line: 1215, baseType: !427, size: 64, offset: 18112)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2649, file: !2650, line: 1217, baseType: !427, size: 64, offset: 18176)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2649, file: !2650, line: 1219, baseType: !427, size: 64, offset: 18240)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2649, file: !2650, line: 1223, baseType: !3442, size: 64, offset: 18304)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3443, line: 99, baseType: !3444)
!3443 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3443, line: 99, size: 64, elements: !3445)
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3444, file: !3443, line: 99, baseType: !2880, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2649, file: !2650, line: 1225, baseType: !647, size: 32, offset: 18368)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2649, file: !2650, line: 1226, baseType: !136, size: 32, offset: 18400)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2649, file: !2650, line: 1227, baseType: !136, size: 32, offset: 18432)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2649, file: !2650, line: 1231, baseType: !3451, size: 64, offset: 18496)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2650, line: 1231, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2649, file: !2650, line: 1233, baseType: !153, size: 128, offset: 18560)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2649, file: !2650, line: 1240, baseType: !3455, size: 64, offset: 18688)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2650, line: 62, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2649, file: !2650, line: 1242, baseType: !3458, size: 64, offset: 18752)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3460, line: 392, size: 96, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3461 = !{!3462, !3468, !3470}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3459, file: !3460, line: 393, baseType: !3463, size: 32)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3460, line: 388, size: 32, elements: !3464)
!3464 = !{!3465}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3463, file: !3460, line: 389, baseType: !3466, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3467, line: 46, baseType: !138)
!3467 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3459, file: !3460, line: 394, baseType: !3469, size: 32, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3467, line: 42, baseType: !444)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3459, file: !3460, line: 395, baseType: !3466, size: 32, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2649, file: !2650, line: 1244, baseType: !153, size: 128, offset: 18816)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2649, file: !2650, line: 1245, baseType: !3473, size: 64, offset: 18944)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2650, line: 51, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2649, file: !2650, line: 1246, baseType: !213, size: 256, offset: 19008)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2649, file: !2650, line: 1247, baseType: !7, size: 32, offset: 19264)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2649, file: !2650, line: 1250, baseType: !3478, size: 64, offset: 19328)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2650, line: 57, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2649, file: !2650, line: 1251, baseType: !213, size: 256, offset: 19392)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2649, file: !2650, line: 1252, baseType: !153, size: 128, offset: 19648)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2649, file: !2650, line: 1259, baseType: !1448, size: 64, offset: 19776)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2649, file: !2650, line: 1260, baseType: !487, size: 16, offset: 19840)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2649, file: !2650, line: 1261, baseType: !487, size: 16, offset: 19856)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2649, file: !2650, line: 1314, baseType: !3486, size: 64, offset: 19904)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3488, line: 62, size: 256, align: 256, elements: !3489)
!3488 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3487, file: !3488, line: 75, baseType: !140, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3487, file: !3488, line: 90, baseType: !140, size: 32, offset: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3487, file: !3488, line: 112, baseType: !428, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !3488, line: 132, baseType: !140, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3487, file: !3488, line: 140, baseType: !140, size: 32, offset: 160)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3487, file: !3488, line: 149, baseType: !140, size: 32, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3487, file: !3488, line: 154, baseType: !3497, offset: 224)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !386)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2649, file: !2650, line: 1315, baseType: !138, size: 32, offset: 19968)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2649, file: !2650, line: 1316, baseType: !138, size: 32, offset: 20000)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2649, file: !2650, line: 1321, baseType: !112, size: 64, offset: 20032)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2649, file: !2650, line: 1325, baseType: !136, size: 32, offset: 20096)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2649, file: !2650, line: 1326, baseType: !136, size: 32, offset: 20128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2649, file: !2650, line: 1327, baseType: !136, size: 32, offset: 20160)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2649, file: !2650, line: 1328, baseType: !136, size: 32, offset: 20192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2649, file: !2650, line: 1329, baseType: !299, size: 128, align: 64, offset: 20224)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2649, file: !2650, line: 1332, baseType: !3507, size: 128, offset: 20352)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3508, line: 51, size: 128, elements: !3509)
!3508 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3509 = !{!3510, !3515, !3516}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3507, file: !3508, line: 60, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3512, line: 7, size: 64, elements: !3513)
!3512 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3513 = !{!3514}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3511, file: !3512, line: 12, baseType: !2877, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3507, file: !3508, line: 63, baseType: !518, size: 8, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3507, file: !3508, line: 70, baseType: !518, size: 8, offset: 72)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2649, file: !2650, line: 1335, baseType: !3518, size: 64, offset: 20480)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2650, line: 59, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2649, file: !2650, line: 1337, baseType: !3521, size: 128, offset: 20544)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3508, line: 39, size: 128, elements: !3522)
!3522 = !{!3523, !3524, !3525}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3521, file: !3508, line: 40, baseType: !1069, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3521, file: !3508, line: 42, baseType: !140, size: 32, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3521, file: !3508, line: 43, baseType: !140, size: 32, offset: 96)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2649, file: !2650, line: 1340, baseType: !3527, size: 64, offset: 20672)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2650, line: 69, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2649, file: !2650, line: 1351, baseType: !136, size: 32, offset: 20736)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2649, file: !2650, line: 1352, baseType: !136, size: 32, offset: 20768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2649, file: !2650, line: 1354, baseType: !112, size: 64, offset: 20800)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2649, file: !2650, line: 1364, baseType: !427, size: 64, offset: 20864)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2649, file: !2650, line: 1365, baseType: !427, size: 64, offset: 20928)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2649, file: !2650, line: 1412, baseType: !112, size: 64, offset: 20992)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2649, file: !2650, line: 1453, baseType: !3536, size: 64, offset: 21056)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2650, line: 1453, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2649, file: !2650, line: 1457, baseType: !3539, size: 64, offset: 21120)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3541)
!3541 = !{!3542, !3543, !3562, !3565, !3566, !3599, !3609}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3540, file: !81, line: 62, baseType: !80, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !3540, file: !81, line: 64, baseType: !3544, size: 192, offset: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3540, file: !81, line: 64, size: 192, elements: !3545)
!3545 = !{!3546, !3557}
!3546 = !DIDerivedType(tag: DW_TAG_member, scope: !3544, file: !81, line: 65, baseType: !3547, size: 192)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3544, file: !81, line: 65, size: 192, elements: !3548)
!3548 = !{!3549, !3556}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3547, file: !81, line: 66, baseType: !3550, size: 128)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3551, line: 50, size: 128, elements: !3552)
!3551 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3552 = !{!3553, !3554, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3550, file: !3551, line: 52, baseType: !112, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3550, file: !3551, line: 54, baseType: !7, size: 32, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3550, file: !3551, line: 55, baseType: !7, size: 32, offset: 96)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3547, file: !81, line: 67, baseType: !112, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3544, file: !81, line: 70, baseType: !3558, size: 192)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3544, file: !81, line: 70, size: 192, elements: !3559)
!3559 = !{!3560, !3561}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3558, file: !81, line: 71, baseType: !299, size: 128, align: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3558, file: !81, line: 72, baseType: !112, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3540, file: !81, line: 76, baseType: !3563, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3540, file: !81, line: 77, baseType: !112, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3540, file: !81, line: 79, baseType: !3567, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3551, line: 25, size: 256, elements: !3569)
!3569 = !{!3570, !3576, !3580}
!3570 = !DIDerivedType(tag: DW_TAG_member, scope: !3568, file: !3551, line: 26, baseType: !3571, size: 128)
!3571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3568, file: !3551, line: 26, size: 128, elements: !3572)
!3572 = !{!3573, !3575}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3571, file: !3551, line: 27, baseType: !3574, size: 128)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 128, elements: !3068)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3571, file: !3551, line: 28, baseType: !3574, size: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3568, file: !3551, line: 31, baseType: !3577, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3579)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3551, line: 23, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3568, file: !3551, line: 33, baseType: !3581, size: 64, offset: 192)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3568, file: !3551, line: 33, size: 64, elements: !3582)
!3582 = !{!3583, !3589, !3594}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3581, file: !3551, line: 38, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3581, file: !3551, line: 34, size: 64, elements: !3585)
!3585 = !{!3586, !3587, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3584, file: !3551, line: 35, baseType: !444, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3584, file: !3551, line: 36, baseType: !243, size: 8, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3584, file: !3551, line: 37, baseType: !243, size: 8, offset: 40)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3581, file: !3551, line: 42, baseType: !3590, size: 16)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3581, file: !3551, line: 39, size: 16, elements: !3591)
!3591 = !{!3592, !3593}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3590, file: !3551, line: 40, baseType: !243, size: 8)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3590, file: !3551, line: 41, baseType: !243, size: 8, offset: 8)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3581, file: !3551, line: 46, baseType: !3595, size: 16)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3581, file: !3551, line: 43, size: 16, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3595, file: !3551, line: 44, baseType: !243, size: 8)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3595, file: !3551, line: 45, baseType: !243, size: 8, offset: 8)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3540, file: !81, line: 81, baseType: !3600, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3601, file: !81, line: 86, baseType: !3563, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3601, file: !81, line: 87, baseType: !112, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3601, file: !81, line: 88, baseType: !112, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3601, file: !81, line: 89, baseType: !112, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3601, file: !81, line: 90, baseType: !518, size: 8, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3601, file: !81, line: 92, baseType: !3600, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3540, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2649, file: !2650, line: 1463, baseType: !3611, offset: 21184)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2650, line: 739, elements: !1223)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2649, file: !2650, line: 1470, baseType: !299, size: 128, align: 64, offset: 21184)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2649, file: !2650, line: 1471, baseType: !127, size: 32, offset: 21312)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2649, file: !2650, line: 1472, baseType: !136, size: 32, offset: 21344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2649, file: !2650, line: 1474, baseType: !2648, size: 64, offset: 21376)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2649, file: !2650, line: 1475, baseType: !2172, size: 320, offset: 21440)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2649, file: !2650, line: 1478, baseType: !3618, size: 64, offset: 21760)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3620, line: 49, size: 512, elements: !3621)
!3620 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3631}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3619, file: !3620, line: 50, baseType: !3618, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3619, file: !3620, line: 51, baseType: !111, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3619, file: !3620, line: 52, baseType: !112, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3619, file: !3620, line: 53, baseType: !112, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3619, file: !3620, line: 54, baseType: !1622, size: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3619, file: !3620, line: 56, baseType: !7, size: 32, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3619, file: !3620, line: 58, baseType: !7, size: 32, offset: 352)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3619, file: !3620, line: 59, baseType: !3630, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !132, line: 159, baseType: !427)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3619, file: !3620, line: 60, baseType: !1318, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2649, file: !2650, line: 1482, baseType: !127, size: 32, offset: 21824)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2649, file: !2650, line: 1489, baseType: !111, size: 64, offset: 21888)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2649, file: !2650, line: 1504, baseType: !111, size: 64, offset: 21952)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2649, file: !2650, line: 1505, baseType: !428, size: 64, offset: 22016)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2649, file: !2650, line: 1506, baseType: !427, size: 64, offset: 22080)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2649, file: !2650, line: 1507, baseType: !428, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2649, file: !2650, line: 1508, baseType: !428, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2649, file: !2650, line: 1509, baseType: !428, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2649, file: !2650, line: 1510, baseType: !299, size: 128, align: 64, offset: 22208)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2649, file: !2650, line: 1511, baseType: !136, size: 32, offset: 22336)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2649, file: !2650, line: 1515, baseType: !3643, size: 64, offset: 22400)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !294, line: 56, size: 64, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3643, file: !294, line: 57, baseType: !297, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2649, file: !2650, line: 1518, baseType: !3643, size: 64, offset: 22464)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2649, file: !2650, line: 1528, baseType: !299, size: 128, align: 64, offset: 22528)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2649, file: !2650, line: 1552, baseType: !3649, size: 35328, offset: 23040)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3650, line: 430, size: 35328, elements: !3651)
!3650 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3651 = !{!3652, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3681, !3682, !3683, !3684, !3685, !3686, !3689, !3690, !3691, !3692}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3649, file: !3650, line: 432, baseType: !3653, size: 192)
!3653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3654, size: 192, elements: !346)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3655, line: 16, size: 64, elements: !3656)
!3655 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3654, file: !3655, line: 17, baseType: !251, size: 16)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3654, file: !3655, line: 18, baseType: !251, size: 16, offset: 16)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3654, file: !3655, line: 19, baseType: !251, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3654, file: !3655, line: 19, baseType: !251, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3654, file: !3655, line: 19, baseType: !251, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3654, file: !3655, line: 19, baseType: !251, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3654, file: !3655, line: 19, baseType: !251, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3654, file: !3655, line: 20, baseType: !251, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3654, file: !3655, line: 20, baseType: !251, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3654, file: !3655, line: 20, baseType: !251, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3654, file: !3655, line: 20, baseType: !251, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3654, file: !3655, line: 20, baseType: !251, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3654, file: !3655, line: 20, baseType: !251, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3649, file: !3650, line: 436, baseType: !112, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3649, file: !3650, line: 440, baseType: !253, size: 16, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3649, file: !3650, line: 441, baseType: !253, size: 16, offset: 272)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3649, file: !3650, line: 442, baseType: !253, size: 16, offset: 288)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3649, file: !3650, line: 443, baseType: !253, size: 16, offset: 304)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3649, file: !3650, line: 447, baseType: !112, size: 64, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3649, file: !3650, line: 448, baseType: !112, size: 64, offset: 384)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3649, file: !3650, line: 459, baseType: !3678, size: 256, offset: 448)
!3678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3679, size: 256, elements: !367)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3650, line: 428, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3649, file: !3650, line: 461, baseType: !112, size: 64, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3649, file: !3650, line: 463, baseType: !112, size: 64, offset: 768)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3649, file: !3650, line: 465, baseType: !112, size: 64, offset: 832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3649, file: !3650, line: 466, baseType: !112, size: 64, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3649, file: !3650, line: 467, baseType: !112, size: 64, offset: 960)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3649, file: !3650, line: 473, baseType: !3687, size: 64, offset: 1024)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3650, line: 10, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3649, file: !3650, line: 480, baseType: !112, size: 64, offset: 1088)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3649, file: !3650, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3649, file: !3650, line: 491, baseType: !138, size: 32, offset: 1184)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3649, file: !3650, line: 501, baseType: !3693, size: 33792, offset: 1536)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3694, line: 448, size: 33792, elements: !3695)
!3694 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3695 = !{!3696, !3697, !3698, !3862, !3863, !3869, !3870}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3693, file: !3694, line: 461, baseType: !7, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3693, file: !3694, line: 468, baseType: !112, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3693, file: !3694, line: 476, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3694, line: 356, size: 33280, align: 512, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3700, file: !3694, line: 358, baseType: !7, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3700, file: !3694, line: 361, baseType: !7, size: 32, offset: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3700, file: !3694, line: 364, baseType: !427, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3700, file: !3694, line: 367, baseType: !427, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3700, file: !3694, line: 370, baseType: !427, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3700, file: !3694, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3700, file: !3694, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3700, file: !3694, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3700, file: !3694, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3700, file: !3694, line: 397, baseType: !3712, size: 32768, offset: 512)
!3712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3694, line: 348, size: 32768, elements: !3713)
!3713 = !{!3714, !3729, !3768, !3845, !3858}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3712, file: !3694, line: 349, baseType: !3715, size: 896)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3694, line: 12, size: 896, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3728}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3715, file: !3694, line: 13, baseType: !138, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3715, file: !3694, line: 14, baseType: !138, size: 32, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3715, file: !3694, line: 15, baseType: !138, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3715, file: !3694, line: 16, baseType: !138, size: 32, offset: 96)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3715, file: !3694, line: 17, baseType: !138, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3715, file: !3694, line: 18, baseType: !138, size: 32, offset: 160)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3715, file: !3694, line: 19, baseType: !138, size: 32, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3715, file: !3694, line: 22, baseType: !3725, size: 640, offset: 224)
!3725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !3726)
!3726 = !{!3727}
!3727 = !DISubrange(count: 20)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3715, file: !3694, line: 25, baseType: !138, size: 32, offset: 864)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3712, file: !3694, line: 350, baseType: !3730, size: 4096, align: 128)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3694, line: 34, size: 4096, align: 128, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3751, !3752, !3753, !3757, !3759, !3763}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3730, file: !3694, line: 35, baseType: !251, size: 16)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3730, file: !3694, line: 36, baseType: !251, size: 16, offset: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3730, file: !3694, line: 37, baseType: !251, size: 16, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3730, file: !3694, line: 38, baseType: !251, size: 16, offset: 48)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !3730, file: !3694, line: 39, baseType: !3737, size: 128, offset: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3730, file: !3694, line: 39, size: 128, elements: !3738)
!3738 = !{!3739, !3744}
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3737, file: !3694, line: 40, baseType: !3740, size: 128)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3737, file: !3694, line: 40, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3740, file: !3694, line: 41, baseType: !427, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3740, file: !3694, line: 42, baseType: !427, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3737, file: !3694, line: 44, baseType: !3745, size: 128)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3737, file: !3694, line: 44, size: 128, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3745, file: !3694, line: 45, baseType: !138, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3745, file: !3694, line: 46, baseType: !138, size: 32, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3745, file: !3694, line: 47, baseType: !138, size: 32, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3745, file: !3694, line: 48, baseType: !138, size: 32, offset: 96)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3730, file: !3694, line: 51, baseType: !138, size: 32, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3730, file: !3694, line: 52, baseType: !138, size: 32, offset: 224)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3730, file: !3694, line: 55, baseType: !3754, size: 1024, offset: 256)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1024, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3730, file: !3694, line: 58, baseType: !3758, size: 2048, offset: 1280)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 2048, elements: !981)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3730, file: !3694, line: 60, baseType: !3760, size: 384, offset: 3328)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 384, elements: !3761)
!3761 = !{!3762}
!3762 = !DISubrange(count: 12)
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !3730, file: !3694, line: 62, baseType: !3764, size: 384, offset: 3712)
!3764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3730, file: !3694, line: 62, size: 384, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3764, file: !3694, line: 63, baseType: !3760, size: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3764, file: !3694, line: 64, baseType: !3760, size: 384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3712, file: !3694, line: 351, baseType: !3769, size: 1088)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3694, line: 79, size: 1088, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3844}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3769, file: !3694, line: 80, baseType: !138, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3769, file: !3694, line: 81, baseType: !138, size: 32, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3769, file: !3694, line: 82, baseType: !138, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3769, file: !3694, line: 83, baseType: !138, size: 32, offset: 96)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3769, file: !3694, line: 84, baseType: !138, size: 32, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3769, file: !3694, line: 85, baseType: !138, size: 32, offset: 160)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3769, file: !3694, line: 86, baseType: !138, size: 32, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3769, file: !3694, line: 88, baseType: !3725, size: 640, offset: 224)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3769, file: !3694, line: 89, baseType: !243, size: 8, offset: 864)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3769, file: !3694, line: 90, baseType: !243, size: 8, offset: 872)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3769, file: !3694, line: 91, baseType: !243, size: 8, offset: 880)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3769, file: !3694, line: 92, baseType: !243, size: 8, offset: 888)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3769, file: !3694, line: 93, baseType: !243, size: 8, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3769, file: !3694, line: 94, baseType: !243, size: 8, offset: 904)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3769, file: !3694, line: 95, baseType: !3786, size: 64, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3788, line: 11, size: 128, elements: !3789)
!3788 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3787, file: !3788, line: 12, baseType: !796, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3787, file: !3788, line: 13, baseType: !3792, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3794, line: 103, size: 1344, elements: !3795)
!3794 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3824, !3825, !3826}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3793, file: !3794, line: 109, baseType: !112, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3793, file: !3794, line: 110, baseType: !112, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3793, file: !3794, line: 111, baseType: !112, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3793, file: !3794, line: 112, baseType: !112, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3793, file: !3794, line: 113, baseType: !112, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3793, file: !3794, line: 114, baseType: !112, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3793, file: !3794, line: 117, baseType: !112, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3793, file: !3794, line: 118, baseType: !112, size: 64, offset: 448)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3793, file: !3794, line: 119, baseType: !112, size: 64, offset: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3793, file: !3794, line: 120, baseType: !112, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3793, file: !3794, line: 121, baseType: !112, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3793, file: !3794, line: 122, baseType: !112, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3793, file: !3794, line: 123, baseType: !112, size: 64, offset: 768)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3793, file: !3794, line: 124, baseType: !112, size: 64, offset: 832)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3793, file: !3794, line: 125, baseType: !112, size: 64, offset: 896)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3793, file: !3794, line: 139, baseType: !112, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3793, file: !3794, line: 142, baseType: !112, size: 64, offset: 1024)
!3813 = !DIDerivedType(tag: DW_TAG_member, scope: !3793, file: !3794, line: 144, baseType: !3814, size: 64, offset: 1088)
!3814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3793, file: !3794, line: 144, size: 64, elements: !3815)
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3814, file: !3794, line: 146, baseType: !251, size: 16)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3814, file: !3794, line: 148, baseType: !427, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3814, file: !3794, line: 150, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3794, line: 59, size: 64, elements: !3820)
!3820 = !{!3821, !3822, !3823}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3819, file: !3794, line: 61, baseType: !427, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3819, file: !3794, line: 63, baseType: !427, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3819, file: !3794, line: 65, baseType: !427, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3793, file: !3794, line: 153, baseType: !112, size: 64, offset: 1152)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3793, file: !3794, line: 154, baseType: !112, size: 64, offset: 1216)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3793, file: !3794, line: 156, baseType: !3827, size: 64, offset: 1280)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3793, file: !3794, line: 156, size: 64, elements: !3828)
!3828 = !{!3829, !3830, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3827, file: !3794, line: 158, baseType: !251, size: 16)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3827, file: !3794, line: 160, baseType: !427, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3827, file: !3794, line: 162, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3794, line: 69, size: 64, elements: !3833)
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3832, file: !3794, line: 71, baseType: !427, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3832, file: !3794, line: 73, baseType: !427, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3832, file: !3794, line: 75, baseType: !427, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3832, file: !3794, line: 77, baseType: !427, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3832, file: !3794, line: 80, baseType: !427, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3832, file: !3794, line: 83, baseType: !427, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3832, file: !3794, line: 86, baseType: !427, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3832, file: !3794, line: 88, baseType: !427, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3832, file: !3794, line: 93, baseType: !427, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3832, file: !3794, line: 100, baseType: !427, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3769, file: !3694, line: 96, baseType: !138, size: 32, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3712, file: !3694, line: 352, baseType: !3846, size: 4608, align: 512)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3694, line: 333, size: 4608, align: 512, elements: !3847)
!3847 = !{!3848, !3849, !3856}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3846, file: !3694, line: 334, baseType: !3730, size: 4096, align: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3846, file: !3694, line: 335, baseType: !3850, size: 512, offset: 4096)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3694, line: 312, size: 512, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3850, file: !3694, line: 313, baseType: !427, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3850, file: !3694, line: 314, baseType: !427, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3850, file: !3694, line: 315, baseType: !3855, size: 384, offset: 128)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 384, elements: !505)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3846, file: !3694, line: 336, baseType: !3857, offset: 4608)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !386)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3712, file: !3694, line: 353, baseType: !3859, size: 32768)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 32768, elements: !3860)
!3860 = !{!3861}
!3861 = !DISubrange(count: 4096)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3693, file: !3694, line: 484, baseType: !3699, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3693, file: !3694, line: 491, baseType: !3864, size: 128, offset: 256)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3694, line: 404, size: 128, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3864, file: !3694, line: 424, baseType: !427, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3864, file: !3694, line: 432, baseType: !7, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3864, file: !3694, line: 440, baseType: !7, size: 32, offset: 96)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3693, file: !3694, line: 498, baseType: !3864, size: 128, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3693, file: !3694, line: 508, baseType: !3700, size: 33280, align: 512, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2631, file: !2632, line: 16, baseType: !371, size: 192, offset: 512)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2631, file: !2632, line: 17, baseType: !131, size: 32, offset: 704)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !893, file: !59, line: 1240, baseType: !111, size: 64, offset: 6912)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !893, file: !59, line: 1243, baseType: !138, size: 32, offset: 6976)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !893, file: !59, line: 1245, baseType: !475, size: 64, offset: 7040)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !893, file: !59, line: 1246, baseType: !475, size: 64, offset: 7104)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !893, file: !59, line: 1248, baseType: !140, size: 32, offset: 7168)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !893, file: !59, line: 1249, baseType: !3879, size: 64, offset: 7232)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !893, file: !59, line: 1252, baseType: !3882, size: 256, offset: 7296)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !3755)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !893, file: !59, line: 1253, baseType: !3884, size: 128, offset: 7552)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3885, line: 21, baseType: !3886)
!3885 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3885, line: 19, size: 128, elements: !3887)
!3887 = !{!3888}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3886, file: !3885, line: 20, baseType: !3889, size: 128)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !3068)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !893, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !893, file: !59, line: 1261, baseType: !213, size: 256, offset: 7744)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !893, file: !59, line: 1267, baseType: !521, size: 64, offset: 8000)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !893, file: !59, line: 1269, baseType: !3894, size: 64, offset: 8064)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !643, line: 128, size: 1024, align: 512, elements: !3897)
!3897 = !{!3898, !3902, !3903, !3910, !3916, !3920, !3924, !3928, !3929, !3933, !3937, !3942, !3946}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3896, file: !643, line: 129, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!136, !641, !7}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3896, file: !643, line: 130, baseType: !3899, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3896, file: !643, line: 131, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!136, !3907, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3896, file: !643, line: 132, baseType: !3911, size: 64, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!136, !3907, !7, !521, !3914}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3896, file: !643, line: 134, baseType: !3917, size: 64, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!136, !3907}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3896, file: !643, line: 135, baseType: !3921, size: 64, offset: 320)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!136, !641}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3896, file: !643, line: 136, baseType: !3925, size: 64, offset: 384)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !641}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3896, file: !643, line: 137, baseType: !3925, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3896, file: !643, line: 138, baseType: !3930, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !641, !681}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3896, file: !643, line: 139, baseType: !3934, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!198, !641, !198, !136}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3896, file: !643, line: 140, baseType: !3938, size: 64, offset: 640)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!636, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3896, file: !643, line: 141, baseType: !3943, size: 64, offset: 704)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!136, !805, !518}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3896, file: !643, line: 142, baseType: !3947, size: 64, offset: 768)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!641, !641, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !893, file: !59, line: 1271, baseType: !3953, size: 448, offset: 8128)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2413, line: 63, size: 448, elements: !3954)
!3954 = !{!3955, !3960, !3961, !3962, !3963, !3964, !3965}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3953, file: !2413, line: 64, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!112, !3959, !2411}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3953, file: !2413, line: 66, baseType: !3956, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3953, file: !2413, line: 69, baseType: !796, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3953, file: !2413, line: 70, baseType: !136, size: 32, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3953, file: !2413, line: 71, baseType: !7, size: 32, offset: 224)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3953, file: !2413, line: 74, baseType: !153, size: 128, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3953, file: !2413, line: 85, baseType: !3966, size: 64, offset: 384)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !893, file: !59, line: 1274, baseType: !217, size: 64, offset: 8576)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !893, file: !59, line: 1280, baseType: !217, size: 64, offset: 8640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !893, file: !59, line: 1283, baseType: !136, size: 32, offset: 8704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !893, file: !59, line: 1286, baseType: !1767, size: 32, offset: 8736)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !893, file: !59, line: 1289, baseType: !2234, size: 64, offset: 8768)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !893, file: !59, line: 1290, baseType: !358, size: 64, offset: 8832)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !893, file: !59, line: 1297, baseType: !603, size: 64, offset: 8896)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !893, file: !59, line: 1304, baseType: !3975, size: 64, offset: 8960)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3976, line: 49, size: 64, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3977 = !{!3978}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3975, file: !3976, line: 50, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3976, line: 41, size: 512, align: 512, elements: !3981)
!3981 = !{!3982, !3983, !3988}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3980, file: !3976, line: 43, baseType: !309, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3980, file: !3976, line: 45, baseType: !3984, size: 192, offset: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3976, line: 29, size: 192, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3984, file: !3976, line: 30, baseType: !153, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3984, file: !3976, line: 32, baseType: !796, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3980, file: !3976, line: 46, baseType: !796, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !893, file: !59, line: 1305, baseType: !3975, size: 64, offset: 9024)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !893, file: !59, line: 1306, baseType: !299, size: 128, align: 64, offset: 9088)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !893, file: !59, line: 1307, baseType: !1357, size: 256, offset: 9216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !893, file: !59, line: 1309, baseType: !213, size: 256, offset: 9472)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !893, file: !59, line: 1314, baseType: !136, size: 32, offset: 9728)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !893, file: !59, line: 1317, baseType: !309, size: 32, align: 512, offset: 10240)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !893, file: !59, line: 1318, baseType: !153, size: 128, offset: 10304)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !893, file: !59, line: 1320, baseType: !309, size: 32, offset: 10432)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !893, file: !59, line: 1321, baseType: !153, size: 128, offset: 10496)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !682, file: !59, line: 656, baseType: !1042, size: 64, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !682, file: !59, line: 659, baseType: !111, size: 64, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !682, file: !59, line: 663, baseType: !112, size: 64, offset: 640)
!4001 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !59, line: 671, baseType: !4002, size: 32, offset: 704)
!4002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !59, line: 671, size: 32, elements: !4003)
!4003 = !{!4004, !4006}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4002, file: !59, line: 672, baseType: !4005, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4002, file: !59, line: 673, baseType: !7, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !682, file: !59, line: 675, baseType: !756, size: 32, offset: 736)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !682, file: !59, line: 676, baseType: !208, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !682, file: !59, line: 677, baseType: !792, size: 128, offset: 832)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !682, file: !59, line: 678, baseType: !792, size: 128, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !682, file: !59, line: 679, baseType: !792, size: 128, offset: 1088)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !682, file: !59, line: 680, baseType: !309, size: 32, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !682, file: !59, line: 681, baseType: !253, size: 16, offset: 1248)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !682, file: !59, line: 682, baseType: !243, size: 8, offset: 1264)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !682, file: !59, line: 683, baseType: !243, size: 8, offset: 1272)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !682, file: !59, line: 684, baseType: !2544, size: 64, offset: 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !682, file: !59, line: 691, baseType: !112, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !682, file: !59, line: 692, baseType: !459, size: 320, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !682, file: !59, line: 694, baseType: !112, size: 64, offset: 1728)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !682, file: !59, line: 695, baseType: !112, size: 64, offset: 1792)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !682, file: !59, line: 697, baseType: !362, size: 128, offset: 1856)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !682, file: !59, line: 698, baseType: !153, size: 128, offset: 1984)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !682, file: !59, line: 707, baseType: !153, size: 128, offset: 2112)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !682, file: !59, line: 708, baseType: !153, size: 128, offset: 2240)
!4025 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !59, line: 709, baseType: !4026, size: 128, offset: 2368)
!4026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !59, line: 709, size: 128, elements: !4027)
!4027 = !{!4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4026, file: !59, line: 710, baseType: !358, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4026, file: !59, line: 711, baseType: !299, size: 128, align: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !682, file: !59, line: 713, baseType: !219, size: 64, offset: 2496)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !682, file: !59, line: 714, baseType: !219, size: 64, offset: 2560)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !682, file: !59, line: 715, baseType: !131, size: 32, offset: 2624)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !682, file: !59, line: 716, baseType: !131, size: 32, offset: 2656)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !682, file: !59, line: 717, baseType: !131, size: 32, offset: 2688)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !682, file: !59, line: 719, baseType: !131, size: 32, offset: 2720)
!4036 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !59, line: 721, baseType: !4037, size: 64, offset: 2752)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !59, line: 721, size: 64, elements: !4038)
!4038 = !{!4039, !4163}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4037, file: !59, line: 722, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4042)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !4043)
!4043 = !{!4044, !4045, !4049, !4053, !4057, !4058, !4059, !4065, !4078, !4082, !4086, !4087, !4091, !4092, !4096, !4101, !4102, !4106, !4110, !4116, !4117, !4121, !4122, !4126, !4130, !4131, !4136, !4140, !4144, !4148, !4152, !4153, !4159}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4042, file: !59, line: 1915, baseType: !925, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4042, file: !59, line: 1916, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!208, !800, !208, !136}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4042, file: !59, line: 1917, baseType: !4050, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!836, !800, !198, !200, !270}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4042, file: !59, line: 1918, baseType: !4054, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!836, !800, !521, !200, !270}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4042, file: !59, line: 1919, baseType: !1646, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4042, file: !59, line: 1920, baseType: !1646, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4042, file: !59, line: 1921, baseType: !4060, size: 64, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!136, !1649, !4063, !7}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4042, file: !59, line: 1923, baseType: !4066, size: 64, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!136, !800, !4069}
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !4071)
!4071 = !{!4072, !4077}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4070, file: !59, line: 1859, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !4074)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!518, !4069, !521, !136, !208, !427, !7}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4070, file: !59, line: 1860, baseType: !208, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4042, file: !59, line: 1924, baseType: !4079, size: 64, offset: 512)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!1898, !800, !1900}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4042, file: !59, line: 1925, baseType: !4083, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!796, !800, !7, !112}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4042, file: !59, line: 1926, baseType: !4083, size: 64, offset: 640)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4042, file: !59, line: 1927, baseType: !4088, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!136, !800, !1189}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4042, file: !59, line: 1928, baseType: !112, size: 64, offset: 768)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4042, file: !59, line: 1929, baseType: !4093, size: 64, offset: 832)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!136, !681, !800}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4042, file: !59, line: 1930, baseType: !4097, size: 64, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!136, !800, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !111)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4042, file: !59, line: 1931, baseType: !4093, size: 64, offset: 960)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4042, file: !59, line: 1932, baseType: !4103, size: 64, offset: 1024)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!136, !800, !208, !208, !136}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4042, file: !59, line: 1933, baseType: !4107, size: 64, offset: 1088)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!136, !136, !800, !136}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4042, file: !59, line: 1934, baseType: !4111, size: 64, offset: 1152)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!136, !800, !136, !4114}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4042, file: !59, line: 1935, baseType: !1227, size: 64, offset: 1216)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4042, file: !59, line: 1936, baseType: !4118, size: 64, offset: 1280)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!136, !136}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4042, file: !59, line: 1937, baseType: !4111, size: 64, offset: 1344)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4042, file: !59, line: 1938, baseType: !4123, size: 64, offset: 1408)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!836, !3518, !800, !270, !200, !7}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4042, file: !59, line: 1939, baseType: !4127, size: 64, offset: 1472)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!836, !800, !270, !3518, !200, !7}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4042, file: !59, line: 1940, baseType: !1757, size: 64, offset: 1536)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4042, file: !59, line: 1941, baseType: !4132, size: 64, offset: 1600)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!136, !800, !136, !4135, !1623}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4042, file: !59, line: 1942, baseType: !4137, size: 64, offset: 1664)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!796, !800, !136, !208, !208}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4042, file: !59, line: 1944, baseType: !4141, size: 64, offset: 1728)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !193, !800}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4042, file: !59, line: 1948, baseType: !4145, size: 64, offset: 1792)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!836, !800, !208, !800, !208, !200, !7}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4042, file: !59, line: 1950, baseType: !4149, size: 64, offset: 1856)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!208, !800, !208, !800, !208, !208, !7}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4042, file: !59, line: 1953, baseType: !4103, size: 64, offset: 1920)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4042, file: !59, line: 1954, baseType: !4154, size: 64, offset: 1984)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!136, !4157, !7}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4042, file: !59, line: 1955, baseType: !4160, size: 64, offset: 2048)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!136, !4157, !4063, !7}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4037, file: !59, line: 723, baseType: !2302, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !682, file: !59, line: 725, baseType: !4165, size: 64, offset: 2816)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !682, file: !59, line: 726, baseType: !1043, size: 1536, align: 64, offset: 2880)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !682, file: !59, line: 727, baseType: !153, size: 128, offset: 4416)
!4169 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !59, line: 728, baseType: !4170, size: 64, offset: 4544)
!4170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !59, line: 728, size: 64, elements: !4171)
!4171 = !{!4172, !4173, !4176, !4177}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4170, file: !59, line: 729, baseType: !3518, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4170, file: !59, line: 730, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4170, file: !59, line: 731, baseType: !198, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4170, file: !59, line: 732, baseType: !7, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !682, file: !59, line: 735, baseType: !140, size: 32, offset: 4608)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !682, file: !59, line: 738, baseType: !140, size: 32, offset: 4640)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !682, file: !59, line: 739, baseType: !3879, size: 64, offset: 4672)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !682, file: !59, line: 750, baseType: !111, size: 64, offset: 4736)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !642, file: !643, line: 91, baseType: !4183, size: 256, offset: 448)
!4183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 256, elements: !3755)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !642, file: !643, line: 94, baseType: !4185, size: 64, offset: 704)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4186, line: 25, size: 64, elements: !4187)
!4186 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4187 = !{!4188}
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !4185, file: !4186, line: 26, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4185, file: !4186, line: 26, size: 64, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4189, file: !4186, line: 28, baseType: !428, size: 64, align: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !4186, line: 30, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4189, file: !4186, line: 30, size: 64, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4193, file: !4186, line: 31, baseType: !309, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4193, file: !4186, line: 32, baseType: !136, size: 32, offset: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !642, file: !643, line: 95, baseType: !3894, size: 64, offset: 768)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !642, file: !643, line: 96, baseType: !892, size: 64, offset: 832)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !642, file: !643, line: 97, baseType: !112, size: 64, offset: 896)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !642, file: !643, line: 98, baseType: !111, size: 64, offset: 960)
!4201 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !643, line: 100, baseType: !4202, size: 128, offset: 1024)
!4202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 100, size: 128, elements: !4203)
!4203 = !{!4204, !4205}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4202, file: !643, line: 101, baseType: !153, size: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4202, file: !643, line: 102, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !642, file: !643, line: 104, baseType: !153, size: 128, offset: 1152)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !642, file: !643, line: 105, baseType: !153, size: 128, offset: 1280)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !642, file: !643, line: 113, baseType: !4210, size: 128, offset: 1408)
!4210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 109, size: 128, elements: !4211)
!4211 = !{!4212, !4213, !4214}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4210, file: !643, line: 110, baseType: !362, size: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4210, file: !643, line: 111, baseType: !657, size: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4210, file: !643, line: 112, baseType: !299, size: 128, align: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !637, file: !638, line: 72, baseType: !892, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !637, file: !638, line: 73, baseType: !136, size: 32, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !637, file: !638, line: 74, baseType: !721, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !632, file: !633, line: 10, baseType: !641, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !287, file: !59, line: 1015, baseType: !681, size: 64, offset: 1344)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !287, file: !59, line: 1016, baseType: !4040, size: 64, offset: 1408)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !287, file: !59, line: 1018, baseType: !427, size: 64, offset: 1472)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !287, file: !59, line: 1020, baseType: !111, size: 64, offset: 1536)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !287, file: !59, line: 1023, baseType: !111, size: 64, offset: 1600)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !287, file: !59, line: 1027, baseType: !4225, size: 64, offset: 1664)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !287, file: !59, line: 1029, baseType: !1042, size: 64, offset: 1728)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !287, file: !59, line: 1030, baseType: !1767, size: 32, offset: 1792)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !287, file: !59, line: 1031, baseType: !1767, size: 32, offset: 1824)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !194, file: !195, line: 29, baseType: !111, size: 64, offset: 896)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !174, file: !175, line: 62, baseType: !4231, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!136, !4234, !149}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !4236, line: 840, size: 1792, elements: !4237)
!4236 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!4237 = !{!4238, !4257, !4258, !4263, !4267, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4452, !4454, !4455, !4457, !4458, !4459, !4460}
!4238 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !4236, line: 841, baseType: !4239, size: 192)
!4239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4235, file: !4236, line: 841, size: 192, elements: !4240)
!4240 = !{!4241, !4254, !4255, !4256}
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4239, file: !4236, line: 842, baseType: !4242, size: 192)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4239, file: !4236, line: 842, size: 192, elements: !4243)
!4243 = !{!4244, !4245, !4246}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4242, file: !4236, line: 844, baseType: !4234, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4242, file: !4236, line: 845, baseType: !4234, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, scope: !4242, file: !4236, line: 847, baseType: !4247, size: 64, offset: 128)
!4247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4242, file: !4236, line: 847, size: 64, elements: !4248)
!4248 = !{!4249, !4253}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4247, file: !4236, line: 848, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !4252, line: 8, flags: DIFlagFwdDecl)
!4252 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !4247, file: !4236, line: 853, baseType: !112, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !4239, file: !4236, line: 856, baseType: !451, size: 192, align: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4239, file: !4236, line: 857, baseType: !153, size: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !4239, file: !4236, line: 858, baseType: !293, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !4235, file: !4236, line: 861, baseType: !1806, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !4236, line: 863, baseType: !4259, size: 64, offset: 256)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4235, file: !4236, line: 863, size: 64, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !4259, file: !4236, line: 864, baseType: !2768, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !4259, file: !4236, line: 865, baseType: !427, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !4235, file: !4236, line: 873, baseType: !4264, size: 384, align: 64, offset: 320)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 384, elements: !4265)
!4265 = !{!4266}
!4266 = !DISubrange(count: 48)
!4267 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !4236, line: 875, baseType: !4268, size: 128, offset: 704)
!4268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4235, file: !4236, line: 875, size: 128, elements: !4269)
!4269 = !{!4270, !4278}
!4270 = !DIDerivedType(tag: DW_TAG_member, scope: !4268, file: !4236, line: 876, baseType: !4271, size: 128)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4268, file: !4236, line: 876, size: 128, elements: !4272)
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !4271, file: !4236, line: 877, baseType: !112, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !4271, file: !4236, line: 878, baseType: !4275, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{null, !4234}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !4268, file: !4236, line: 880, baseType: !153, size: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !4235, file: !4236, line: 887, baseType: !112, size: 64, offset: 832)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4235, file: !4236, line: 889, baseType: !7, size: 32, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !4235, file: !4236, line: 890, baseType: !7, size: 32, offset: 928)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !4235, file: !4236, line: 891, baseType: !252, size: 16, offset: 960)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !4235, file: !4236, line: 892, baseType: !252, size: 16, offset: 976)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !4235, file: !4236, line: 897, baseType: !252, size: 16, offset: 992)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !4235, file: !4236, line: 908, baseType: !4286, offset: 1008)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !4287)
!4287 = !{!4288}
!4288 = !DISubrange(count: 0)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !4235, file: !4236, line: 910, baseType: !244, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !4235, file: !4236, line: 911, baseType: !244, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !4235, file: !4236, line: 912, baseType: !244, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !4235, file: !4236, line: 913, baseType: !244, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !4235, file: !4236, line: 914, baseType: !244, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !4235, file: !4236, line: 915, baseType: !244, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !4235, file: !4236, line: 916, baseType: !244, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !4235, file: !4236, line: 918, baseType: !244, size: 8, offset: 1016)
!4297 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !4236, line: 924, baseType: !4298, size: 448, offset: 1024)
!4298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4235, file: !4236, line: 924, size: 448, elements: !4299)
!4299 = !{!4300, !4377}
!4300 = !DIDerivedType(tag: DW_TAG_member, scope: !4298, file: !4236, line: 924, baseType: !4301, size: 448)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4298, file: !4236, line: 924, size: 448, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4341, !4342, !4343, !4344, !4354, !4359, !4360, !4365, !4370, !4371, !4372, !4373, !4374, !4375, !4376}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4301, file: !4236, line: 924, baseType: !4286)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4301, file: !4236, line: 924, baseType: !244, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4301, file: !4236, line: 924, baseType: !244, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4301, file: !4236, line: 924, baseType: !4286, offset: 8)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4301, file: !4236, line: 924, baseType: !244, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4301, file: !4236, line: 924, baseType: !244, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4301, file: !4236, line: 924, baseType: !244, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4301, file: !4236, line: 924, baseType: !251, size: 16, offset: 48)
!4331 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !4236, line: 924, baseType: !4332, size: 32, offset: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4301, file: !4236, line: 924, size: 32, elements: !4333)
!4333 = !{!4334, !4336}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4332, file: !4236, line: 924, baseType: !4335, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !1899, line: 44, baseType: !140)
!4336 = !DIDerivedType(tag: DW_TAG_member, scope: !4332, file: !4236, line: 924, baseType: !4337, size: 32)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4332, file: !4236, line: 924, size: 32, elements: !4338)
!4338 = !{!4339, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4337, file: !4236, line: 924, baseType: !252, size: 16)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4337, file: !4236, line: 924, baseType: !252, size: 16, offset: 16)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4301, file: !4236, line: 924, baseType: !140, size: 32, offset: 96)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4301, file: !4236, line: 924, baseType: !136, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4301, file: !4236, line: 924, baseType: !140, size: 32, offset: 160)
!4344 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !4236, line: 924, baseType: !4345, size: 32, offset: 192)
!4345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4301, file: !4236, line: 924, size: 32, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4345, file: !4236, line: 924, baseType: !138, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4345, file: !4236, line: 924, baseType: !4349, size: 32)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4345, file: !4236, line: 924, size: 32, elements: !4350)
!4350 = !{!4351, !4353}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4349, file: !4236, line: 924, baseType: !4352, size: 16)
!4352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !1899, line: 37, baseType: !252)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4349, file: !4236, line: 924, baseType: !252, size: 16, offset: 16)
!4354 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !4236, line: 924, baseType: !4355, size: 32, offset: 224)
!4355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4301, file: !4236, line: 924, size: 32, elements: !4356)
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4355, file: !4236, line: 924, baseType: !7, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4355, file: !4236, line: 924, baseType: !7, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4301, file: !4236, line: 924, baseType: !140, size: 32, offset: 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !4236, line: 924, baseType: !4361, size: 32, offset: 288)
!4361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4301, file: !4236, line: 924, size: 32, elements: !4362)
!4362 = !{!4363, !4364}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4361, file: !4236, line: 924, baseType: !140, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4361, file: !4236, line: 924, baseType: !140, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !4236, line: 924, baseType: !4366, size: 16, offset: 320)
!4366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4301, file: !4236, line: 924, size: 16, elements: !4367)
!4367 = !{!4368, !4369}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4366, file: !4236, line: 924, baseType: !4352, size: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4366, file: !4236, line: 924, baseType: !244, size: 8)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 336)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 352)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 368)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4301, file: !4236, line: 924, baseType: !4352, size: 16, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 400)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 416)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4301, file: !4236, line: 924, baseType: !252, size: 16, offset: 432)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !4298, file: !4236, line: 924, baseType: !4378, size: 448)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4298, file: !4236, line: 924, size: 448, elements: !4379)
!4379 = !{!4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4417, !4418, !4419, !4420, !4429, !4434, !4435, !4440, !4445, !4446, !4447, !4448, !4449, !4450, !4451}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4378, file: !4236, line: 924, baseType: !4286)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4378, file: !4236, line: 924, baseType: !244, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4378, file: !4236, line: 924, baseType: !244, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4378, file: !4236, line: 924, baseType: !4286, offset: 8)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4378, file: !4236, line: 924, baseType: !244, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4378, file: !4236, line: 924, baseType: !244, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4378, file: !4236, line: 924, baseType: !244, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4378, file: !4236, line: 924, baseType: !251, size: 16, offset: 48)
!4408 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !4236, line: 924, baseType: !4409, size: 32, offset: 64)
!4409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !4236, line: 924, size: 32, elements: !4410)
!4410 = !{!4411, !4412}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4409, file: !4236, line: 924, baseType: !4335, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, scope: !4409, file: !4236, line: 924, baseType: !4413, size: 32)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4409, file: !4236, line: 924, size: 32, elements: !4414)
!4414 = !{!4415, !4416}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4413, file: !4236, line: 924, baseType: !252, size: 16)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4413, file: !4236, line: 924, baseType: !252, size: 16, offset: 16)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4378, file: !4236, line: 924, baseType: !140, size: 32, offset: 96)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4378, file: !4236, line: 924, baseType: !136, size: 32, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4378, file: !4236, line: 924, baseType: !140, size: 32, offset: 160)
!4420 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !4236, line: 924, baseType: !4421, size: 32, offset: 192)
!4421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !4236, line: 924, size: 32, elements: !4422)
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4421, file: !4236, line: 924, baseType: !138, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, scope: !4421, file: !4236, line: 924, baseType: !4425, size: 32)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4421, file: !4236, line: 924, size: 32, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4425, file: !4236, line: 924, baseType: !4352, size: 16)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4425, file: !4236, line: 924, baseType: !252, size: 16, offset: 16)
!4429 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !4236, line: 924, baseType: !4430, size: 32, offset: 224)
!4430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !4236, line: 924, size: 32, elements: !4431)
!4431 = !{!4432, !4433}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4430, file: !4236, line: 924, baseType: !7, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4430, file: !4236, line: 924, baseType: !7, size: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4378, file: !4236, line: 924, baseType: !140, size: 32, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !4236, line: 924, baseType: !4436, size: 32, offset: 288)
!4436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !4236, line: 924, size: 32, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4436, file: !4236, line: 924, baseType: !140, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4436, file: !4236, line: 924, baseType: !140, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !4236, line: 924, baseType: !4441, size: 16, offset: 320)
!4441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !4236, line: 924, size: 16, elements: !4442)
!4442 = !{!4443, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4441, file: !4236, line: 924, baseType: !4352, size: 16)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4441, file: !4236, line: 924, baseType: !244, size: 8)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 336)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 352)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 368)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4378, file: !4236, line: 924, baseType: !4352, size: 16, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 400)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 416)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4378, file: !4236, line: 924, baseType: !252, size: 16, offset: 432)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4235, file: !4236, line: 1047, baseType: !4453, size: 32, offset: 1472)
!4453 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !4236, line: 683, baseType: !7)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4235, file: !4236, line: 1048, baseType: !4453, size: 32, offset: 1504)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4235, file: !4236, line: 1049, baseType: !4456, size: 64, offset: 1536)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4235, file: !4236, line: 1050, baseType: !4456, size: 64, offset: 1600)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !4235, file: !4236, line: 1051, baseType: !7, size: 32, offset: 1664)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4235, file: !4236, line: 1052, baseType: !127, size: 32, offset: 1696)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !4235, file: !4236, line: 1056, baseType: !4461, size: 64, offset: 1728)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !4236, line: 4679, size: 64, elements: !4463)
!4463 = !{!4464, !4465, !4467, !4468}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4462, file: !4236, line: 4680, baseType: !127, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4462, file: !4236, line: 4681, baseType: !4466, size: 8, offset: 32)
!4466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 8, elements: !2881)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !4462, file: !4236, line: 4682, baseType: !243, size: 8, offset: 40)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4462, file: !4236, line: 4683, baseType: !3497, align: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !174, file: !175, line: 63, baseType: !4470, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !4473}
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !175, line: 74, size: 3520, elements: !4475)
!4475 = !{!4476, !4477, !4492, !4511, !4512}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4474, file: !175, line: 75, baseType: !150, size: 3072, align: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !4474, file: !175, line: 77, baseType: !4478, size: 64, offset: 3072)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !175, line: 91, size: 1344, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484, !4491}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4479, file: !175, line: 92, baseType: !153, size: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !4479, file: !175, line: 93, baseType: !358, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4479, file: !175, line: 94, baseType: !925, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4479, file: !175, line: 96, baseType: !4485, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!136, !4478, !4488}
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !175, line: 52, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4479, file: !175, line: 98, baseType: !166, size: 1024, offset: 320)
!4492 = !DIDerivedType(tag: DW_TAG_member, scope: !4474, file: !175, line: 79, baseType: !4493, size: 128, offset: 3136)
!4493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4474, file: !175, line: 79, size: 128, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4493, file: !175, line: 81, baseType: !362, size: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !4493, file: !175, line: 83, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !175, line: 101, size: 384, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4507, !4508, !4509, !4510}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4498, file: !175, line: 102, baseType: !153, size: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4498, file: !175, line: 103, baseType: !149, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, scope: !4498, file: !175, line: 104, baseType: !4503, size: 64, offset: 192)
!4503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4498, file: !175, line: 104, size: 64, elements: !4504)
!4504 = !{!4505, !4506}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !4503, file: !175, line: 106, baseType: !4473, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4503, file: !175, line: 108, baseType: !4497, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4498, file: !175, line: 110, baseType: !172, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4498, file: !175, line: 111, baseType: !138, size: 32, offset: 320)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4498, file: !175, line: 112, baseType: !518, size: 8, offset: 352)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4498, file: !175, line: 113, baseType: !518, size: 8, offset: 360)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !4474, file: !175, line: 86, baseType: !1357, size: 256, offset: 3264)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4474, file: !175, line: 88, baseType: !4513, align: 64, offset: 3520)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !386)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !175, line: 68, baseType: !7, size: 32, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !174, file: !175, line: 69, baseType: !7, size: 32, offset: 416)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !174, file: !175, line: 70, baseType: !7, size: 32, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !174, file: !175, line: 71, baseType: !7, size: 32, offset: 480)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !150, file: !124, line: 363, baseType: !4519, size: 256, offset: 2560)
!4519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !124, line: 360, size: 256, elements: !4520)
!4520 = !{!4521, !4538}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !4519, file: !124, line: 361, baseType: !4522, size: 256)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !124, line: 235, size: 256, elements: !4523)
!4523 = !{!4524, !4525, !4526, !4532, !4537}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !4522, file: !124, line: 236, baseType: !7, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !4522, file: !124, line: 237, baseType: !7, size: 32, offset: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !4522, file: !124, line: 238, baseType: !4527, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!136, !147, !4530, !7}
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !4522, file: !124, line: 240, baseType: !4533, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{null, !147, !4536, !4530}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !4522, file: !124, line: 241, baseType: !4533, size: 64, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !4519, file: !124, line: 362, baseType: !4539, size: 128)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !124, line: 255, size: 128, elements: !4540)
!4540 = !{!4541, !4545}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !4539, file: !124, line: 256, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!136, !147, !4530, !7, !4536, !2024}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !4539, file: !124, line: 258, baseType: !4542, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !150, file: !124, line: 365, baseType: !186, size: 64, offset: 2816)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !150, file: !124, line: 366, baseType: !144, size: 64, offset: 2880)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !150, file: !124, line: 367, baseType: !4549, size: 64, offset: 2944)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !149}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !150, file: !124, line: 369, baseType: !925, size: 64, offset: 3008)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !123, file: !124, line: 433, baseType: !4513, align: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !114, file: !115, line: 177, baseType: !4513, align: 64, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !115, line: 225, size: 3904, elements: !4557)
!4557 = !{!4558, !4562, !4566, !4570, !4574, !4575, !4579, !4583, !4587, !4591, !4595, !4599, !4600}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4556, file: !115, line: 226, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!136, !113}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4556, file: !115, line: 227, baseType: !4563, size: 64, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!136, !113, !4530, !7}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4556, file: !115, line: 229, baseType: !4567, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!136, !113, !4536}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4556, file: !115, line: 230, baseType: !4571, size: 64, offset: 192)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!136, !113, !4530, !7, !4536}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4556, file: !115, line: 232, baseType: !4571, size: 64, offset: 256)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4556, file: !115, line: 234, baseType: !4576, size: 64, offset: 320)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!136, !113, !111}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4556, file: !115, line: 235, baseType: !4580, size: 64, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!136, !113, !1318}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4556, file: !115, line: 236, baseType: !4584, size: 64, offset: 448)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!136, !118, !4530, !7}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4556, file: !115, line: 238, baseType: !4588, size: 64, offset: 512)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!136, !118}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !4556, file: !115, line: 239, baseType: !4592, size: 64, offset: 576)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !118}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !4556, file: !115, line: 240, baseType: !4596, size: 64, offset: 640)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!136, !118, !118}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4556, file: !115, line: 242, baseType: !7, size: 32, offset: 704)
!4600 = !DIDerivedType(tag: DW_TAG_member, scope: !4556, file: !115, line: 244, baseType: !4601, size: 3136, offset: 768)
!4601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4556, file: !115, line: 244, size: 3136, elements: !4602)
!4602 = !{!4603, !4609}
!4603 = !DIDerivedType(tag: DW_TAG_member, scope: !4601, file: !115, line: 245, baseType: !4604, size: 3136)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4601, file: !115, line: 245, size: 3136, elements: !4605)
!4605 = !{!4606, !4607, !4608}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4604, file: !115, line: 245, baseType: !7, size: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4604, file: !115, line: 245, baseType: !7, size: 32, offset: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4604, file: !115, line: 245, baseType: !150, size: 3072, align: 64, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !4601, file: !115, line: 246, baseType: !4610, size: 3136)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !115, line: 70, size: 3136, elements: !4611)
!4611 = !{!4612, !4613, !4614}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4610, file: !115, line: 70, baseType: !7, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4610, file: !115, line: 70, baseType: !7, size: 32, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4610, file: !115, line: 70, baseType: !150, size: 3072, align: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ahash", file: !115, line: 252, size: 832, elements: !4617)
!4617 = !{!4618, !4653, !4654, !4655, !4656, !4657, !4661, !4665, !4669, !4670, !4671}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4616, file: !115, line: 253, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!136, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ahash_request", file: !115, line: 72, size: 640, elements: !4624)
!4624 = !{!4625, !4637, !4638, !4650, !4651, !4652}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4623, file: !115, line: 73, baseType: !4626, size: 384)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_async_request", file: !124, line: 172, size: 384, elements: !4627)
!4627 = !{!4628, !4629, !4634, !4635, !4636}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4626, file: !124, line: 173, baseType: !153, size: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4626, file: !124, line: 174, baseType: !4630, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_completion_t", file: !124, line: 163, baseType: !4631)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !111, !136}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4626, file: !124, line: 175, baseType: !111, size: 64, offset: 192)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !4626, file: !124, line: 176, baseType: !147, size: 64, offset: 256)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4626, file: !124, line: 178, baseType: !138, size: 32, offset: 320)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4623, file: !115, line: 75, baseType: !7, size: 32, offset: 384)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4623, file: !115, line: 76, baseType: !4639, size: 64, offset: 448)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4641, line: 11, size: 256, elements: !4642)
!4641 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4642 = !{!4643, !4644, !4645, !4646, !4648, !4649}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4640, file: !4641, line: 12, baseType: !112, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4640, file: !4641, line: 13, baseType: !7, size: 32, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4640, file: !4641, line: 14, baseType: !7, size: 32, offset: 96)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4640, file: !4641, line: 15, baseType: !4647, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !132, line: 149, baseType: !427)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4640, file: !4641, line: 17, baseType: !7, size: 32, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4640, file: !4641, line: 20, baseType: !7, size: 32, offset: 224)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4623, file: !115, line: 77, baseType: !4536, size: 64, offset: 512)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4623, file: !115, line: 80, baseType: !111, size: 64, offset: 576)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4623, file: !115, line: 82, baseType: !4513, align: 64, offset: 640)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4616, file: !115, line: 254, baseType: !4619, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4616, file: !115, line: 255, baseType: !4619, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4616, file: !115, line: 256, baseType: !4619, size: 64, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4616, file: !115, line: 257, baseType: !4619, size: 64, offset: 256)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4616, file: !115, line: 258, baseType: !4658, size: 64, offset: 320)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!136, !4622, !111}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4616, file: !115, line: 259, baseType: !4662, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!136, !4622, !1318}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4616, file: !115, line: 260, baseType: !4666, size: 64, offset: 448)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!136, !4615, !4530, !7}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4616, file: !115, line: 263, baseType: !7, size: 32, offset: 512)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "reqsize", scope: !4616, file: !115, line: 264, baseType: !7, size: 32, offset: 544)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4616, file: !115, line: 265, baseType: !123, size: 256, offset: 576)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_instance", file: !4674, line: 43, size: 4416, elements: !4675)
!4674 = !DIFile(filename: "./include/crypto/internal/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed36183aa18097edaf56e7e16397323")
!4675 = !{!4676, !4680}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4673, file: !4674, line: 44, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !4672}
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4673, file: !4674, line: 45, baseType: !4681, size: 4352, offset: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4673, file: !4674, line: 45, size: 4352, elements: !4682)
!4682 = !{!4683, !4691}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4681, file: !4674, line: 49, baseType: !4684, size: 4352)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4681, file: !4674, line: 46, size: 4352, elements: !4685)
!4685 = !{!4686, !4690}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4684, file: !4674, line: 47, baseType: !4687, size: 832)
!4687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 832, elements: !4688)
!4688 = !{!4689}
!4689 = !DISubrange(count: 104)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4684, file: !4674, line: 48, baseType: !4474, size: 3520, offset: 832)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4681, file: !4674, line: 50, baseType: !4556, size: 3904)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4694)
!4694 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!4697 = !{!0, !4698, !4700, !4702, !4704, !4706, !4708, !4710, !4712, !4714, !4716, !4718, !4720, !4722, !4724, !4726, !4728, !4730, !4732, !4737, !4739, !4741, !4746, !4751, !4756, !4761, !4763, !4768, !4773}
!4698 = !DIGlobalVariableExpression(var: !4699, expr: !DIExpression())
!4699 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shash_setkey340", scope: !2, file: !3, line: 88, type: !111, isLocal: true, isDefinition: true)
!4700 = !DIGlobalVariableExpression(var: !4701, expr: !DIExpression())
!4701 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shash_update341", scope: !2, file: !3, line: 138, type: !111, isLocal: true, isDefinition: true)
!4702 = !DIGlobalVariableExpression(var: !4703, expr: !DIExpression())
!4703 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shash_final342", scope: !2, file: !3, line: 185, type: !111, isLocal: true, isDefinition: true)
!4704 = !DIGlobalVariableExpression(var: !4705, expr: !DIExpression())
!4705 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shash_finup343", scope: !2, file: !3, line: 217, type: !111, isLocal: true, isDefinition: true)
!4706 = !DIGlobalVariableExpression(var: !4707, expr: !DIExpression())
!4707 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shash_digest344", scope: !2, file: !3, line: 251, type: !111, isLocal: true, isDefinition: true)
!4708 = !DIGlobalVariableExpression(var: !4709, expr: !DIExpression())
!4709 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shash_tfm_digest345", scope: !2, file: !3, line: 267, type: !111, isLocal: true, isDefinition: true)
!4710 = !DIGlobalVariableExpression(var: !4711, expr: !DIExpression())
!4711 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_shash_ahash_update346", scope: !2, file: !3, line: 310, type: !111, isLocal: true, isDefinition: true)
!4712 = !DIGlobalVariableExpression(var: !4713, expr: !DIExpression())
!4713 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_shash_ahash_finup347", scope: !2, file: !3, line: 341, type: !111, isLocal: true, isDefinition: true)
!4714 = !DIGlobalVariableExpression(var: !4715, expr: !DIExpression())
!4715 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_shash_ahash_digest351", scope: !2, file: !3, line: 375, type: !111, isLocal: true, isDefinition: true)
!4716 = !DIGlobalVariableExpression(var: !4717, expr: !DIExpression())
!4717 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_grab_shash352", scope: !2, file: !3, line: 570, type: !111, isLocal: true, isDefinition: true)
!4718 = !DIGlobalVariableExpression(var: !4719, expr: !DIExpression())
!4719 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alloc_shash353", scope: !2, file: !3, line: 577, type: !111, isLocal: true, isDefinition: true)
!4720 = !DIGlobalVariableExpression(var: !4721, expr: !DIExpression())
!4721 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_has_shash354", scope: !2, file: !3, line: 583, type: !111, isLocal: true, isDefinition: true)
!4722 = !DIGlobalVariableExpression(var: !4723, expr: !DIExpression())
!4723 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_clone_shash355", scope: !2, file: !3, line: 619, type: !111, isLocal: true, isDefinition: true)
!4724 = !DIGlobalVariableExpression(var: !4725, expr: !DIExpression())
!4725 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_register_shash356", scope: !2, file: !3, line: 684, type: !111, isLocal: true, isDefinition: true)
!4726 = !DIGlobalVariableExpression(var: !4727, expr: !DIExpression())
!4727 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_unregister_shash357", scope: !2, file: !3, line: 690, type: !111, isLocal: true, isDefinition: true)
!4728 = !DIGlobalVariableExpression(var: !4729, expr: !DIExpression())
!4729 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_register_shashes358", scope: !2, file: !3, line: 710, type: !111, isLocal: true, isDefinition: true)
!4730 = !DIGlobalVariableExpression(var: !4731, expr: !DIExpression())
!4731 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_unregister_shashes359", scope: !2, file: !3, line: 719, type: !111, isLocal: true, isDefinition: true)
!4732 = !DIGlobalVariableExpression(var: !4733, expr: !DIExpression())
!4733 = distinct !DIGlobalVariable(scope: null, file: !3, line: 726, type: !4734, isLocal: true, isDefinition: true)
!4734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 120, elements: !4735)
!4735 = !{!4736}
!4736 = !DISubrange(count: 15)
!4737 = !DIGlobalVariableExpression(var: !4738, expr: !DIExpression())
!4738 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_shash_register_instance360", scope: !2, file: !3, line: 735, type: !111, isLocal: true, isDefinition: true)
!4739 = !DIGlobalVariableExpression(var: !4740, expr: !DIExpression())
!4740 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_shash_free_singlespawn_instance361", scope: !2, file: !3, line: 742, type: !111, isLocal: true, isDefinition: true)
!4741 = !DIGlobalVariableExpression(var: !4742, expr: !DIExpression())
!4742 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file362", scope: !2, file: !3, line: 744, type: !4743, isLocal: true, isDefinition: true, align: 8)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 288, elements: !4744)
!4744 = !{!4745}
!4745 = !DISubrange(count: 36)
!4746 = !DIGlobalVariableExpression(var: !4747, expr: !DIExpression())
!4747 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license363", scope: !2, file: !3, line: 744, type: !4748, isLocal: true, isDefinition: true, align: 8)
!4748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 192, elements: !4749)
!4749 = !{!4750}
!4750 = !DISubrange(count: 24)
!4751 = !DIGlobalVariableExpression(var: !4752, expr: !DIExpression())
!4752 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description364", scope: !2, file: !3, line: 745, type: !4753, isLocal: true, isDefinition: true, align: 8)
!4753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 480, elements: !4754)
!4754 = !{!4755}
!4755 = !DISubrange(count: 60)
!4756 = !DIGlobalVariableExpression(var: !4757, expr: !DIExpression())
!4757 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4758, isLocal: true, isDefinition: true)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 168, elements: !4759)
!4759 = !{!4760}
!4760 = !DISubrange(count: 21)
!4761 = !DIGlobalVariableExpression(var: !4762, expr: !DIExpression())
!4762 = distinct !DIGlobalVariable(name: "crypto_shash_type", scope: !2, file: !3, line: 544, type: !173, isLocal: true, isDefinition: true)
!4763 = !DIGlobalVariableExpression(var: !4764, expr: !DIExpression())
!4764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 533, type: !4765, isLocal: true, isDefinition: true)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 176, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 22)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !4770, isLocal: true, isDefinition: true)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 152, elements: !4771)
!4771 = !{!4772}
!4772 = !DISubrange(count: 19)
!4773 = !DIGlobalVariableExpression(var: !4774, expr: !DIExpression())
!4774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !4770, isLocal: true, isDefinition: true)
!4775 = !{i32 7, !"Dwarf Version", i32 5}
!4776 = !{i32 2, !"Debug Info Version", i32 3}
!4777 = !{i32 1, !"wchar_size", i32 2}
!4778 = !{i32 8, !"cf-protection-branch", i32 1}
!4779 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4780 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4781 = !{i32 1, !"Code Model", i32 2}
!4782 = !{i32 1, !"override-stack-alignment", i32 8}
!4783 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4784 = distinct !DISubprogram(name: "shash_no_setkey", scope: !3, file: !3, line: 34, type: !4585, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4785)
!4785 = !{!4786, !4787, !4788}
!4786 = !DILocalVariable(name: "tfm", arg: 1, scope: !4784, file: !3, line: 34, type: !118)
!4787 = !DILocalVariable(name: "key", arg: 2, scope: !4784, file: !3, line: 34, type: !4530)
!4788 = !DILocalVariable(name: "keylen", arg: 3, scope: !4784, file: !3, line: 35, type: !7)
!4789 = !DILocation(line: 34, column: 42, scope: !4784)
!4790 = !DILocation(line: 34, column: 57, scope: !4784)
!4791 = !DILocation(line: 35, column: 20, scope: !4784)
!4792 = !DILocation(line: 37, column: 2, scope: !4784)
!4793 = distinct !DISubprogram(name: "crypto_shash_setkey", scope: !3, file: !3, line: 68, type: !4585, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4799, !4800}
!4795 = !DILocalVariable(name: "tfm", arg: 1, scope: !4793, file: !3, line: 68, type: !118)
!4796 = !DILocalVariable(name: "key", arg: 2, scope: !4793, file: !3, line: 68, type: !4530)
!4797 = !DILocalVariable(name: "keylen", arg: 3, scope: !4793, file: !3, line: 69, type: !7)
!4798 = !DILocalVariable(name: "shash", scope: !4793, file: !3, line: 71, type: !4555)
!4799 = !DILocalVariable(name: "alignmask", scope: !4793, file: !3, line: 72, type: !112)
!4800 = !DILocalVariable(name: "err", scope: !4793, file: !3, line: 73, type: !136)
!4801 = !DILocation(line: 68, column: 46, scope: !4793)
!4802 = !DILocation(line: 68, column: 61, scope: !4793)
!4803 = !DILocation(line: 69, column: 17, scope: !4793)
!4804 = !DILocation(line: 71, column: 2, scope: !4793)
!4805 = !DILocation(line: 71, column: 20, scope: !4793)
!4806 = !DILocation(line: 71, column: 45, scope: !4793)
!4807 = !DILocation(line: 71, column: 28, scope: !4793)
!4808 = !DILocation(line: 72, column: 2, scope: !4793)
!4809 = !DILocation(line: 72, column: 16, scope: !4793)
!4810 = !DILocation(line: 72, column: 51, scope: !4793)
!4811 = !DILocation(line: 72, column: 28, scope: !4793)
!4812 = !DILocation(line: 73, column: 2, scope: !4793)
!4813 = !DILocation(line: 73, column: 6, scope: !4793)
!4814 = !DILocation(line: 75, column: 21, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 75, column: 6)
!4816 = !DILocation(line: 75, column: 6, scope: !4815)
!4817 = !DILocation(line: 75, column: 27, scope: !4815)
!4818 = !DILocation(line: 75, column: 25, scope: !4815)
!4819 = !DILocation(line: 75, column: 6, scope: !4793)
!4820 = !DILocation(line: 76, column: 32, scope: !4815)
!4821 = !DILocation(line: 76, column: 37, scope: !4815)
!4822 = !DILocation(line: 76, column: 42, scope: !4815)
!4823 = !DILocation(line: 76, column: 9, scope: !4815)
!4824 = !DILocation(line: 76, column: 7, scope: !4815)
!4825 = !DILocation(line: 76, column: 3, scope: !4815)
!4826 = !DILocation(line: 78, column: 9, scope: !4815)
!4827 = !DILocation(line: 78, column: 16, scope: !4815)
!4828 = !DILocation(line: 78, column: 23, scope: !4815)
!4829 = !DILocation(line: 78, column: 28, scope: !4815)
!4830 = !DILocation(line: 78, column: 33, scope: !4815)
!4831 = !DILocation(line: 78, column: 7, scope: !4815)
!4832 = !DILocation(line: 80, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 80, column: 6)
!4834 = !DILocation(line: 80, column: 6, scope: !4793)
!4835 = !DILocation(line: 81, column: 21, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 80, column: 21)
!4837 = !DILocation(line: 81, column: 26, scope: !4836)
!4838 = !DILocation(line: 81, column: 3, scope: !4836)
!4839 = !DILocation(line: 82, column: 10, scope: !4836)
!4840 = !DILocation(line: 82, column: 3, scope: !4836)
!4841 = !DILocation(line: 85, column: 27, scope: !4793)
!4842 = !DILocation(line: 85, column: 2, scope: !4793)
!4843 = !DILocation(line: 86, column: 2, scope: !4793)
!4844 = !DILocation(line: 87, column: 1, scope: !4793)
!4845 = distinct !DISubprogram(name: "crypto_shash_alg", scope: !115, file: !115, line: 826, type: !4846, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!4555, !118}
!4848 = !{!4849}
!4849 = !DILocalVariable(name: "tfm", arg: 1, scope: !4845, file: !115, line: 826, type: !118)
!4850 = !DILocation(line: 826, column: 71, scope: !4845)
!4851 = !DILocation(line: 828, column: 45, scope: !4845)
!4852 = !DILocation(line: 828, column: 28, scope: !4845)
!4853 = !DILocation(line: 828, column: 51, scope: !4845)
!4854 = !DILocation(line: 828, column: 9, scope: !4845)
!4855 = !DILocation(line: 828, column: 2, scope: !4845)
!4856 = distinct !DISubprogram(name: "crypto_shash_alignmask", scope: !115, file: !115, line: 801, type: !4857, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4859)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!7, !118}
!4859 = !{!4860}
!4860 = !DILocalVariable(name: "tfm", arg: 1, scope: !4856, file: !115, line: 802, type: !118)
!4861 = !DILocation(line: 802, column: 23, scope: !4856)
!4862 = !DILocation(line: 804, column: 51, scope: !4856)
!4863 = !DILocation(line: 804, column: 34, scope: !4856)
!4864 = !DILocation(line: 804, column: 9, scope: !4856)
!4865 = !DILocation(line: 804, column: 2, scope: !4856)
!4866 = distinct !DISubprogram(name: "shash_setkey_unaligned", scope: !3, file: !3, line: 41, type: !4585, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4867)
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876}
!4868 = !DILocalVariable(name: "tfm", arg: 1, scope: !4866, file: !3, line: 41, type: !118)
!4869 = !DILocalVariable(name: "key", arg: 2, scope: !4866, file: !3, line: 41, type: !4530)
!4870 = !DILocalVariable(name: "keylen", arg: 3, scope: !4866, file: !3, line: 42, type: !7)
!4871 = !DILocalVariable(name: "shash", scope: !4866, file: !3, line: 44, type: !4555)
!4872 = !DILocalVariable(name: "alignmask", scope: !4866, file: !3, line: 45, type: !112)
!4873 = !DILocalVariable(name: "absize", scope: !4866, file: !3, line: 46, type: !112)
!4874 = !DILocalVariable(name: "buffer", scope: !4866, file: !3, line: 47, type: !4536)
!4875 = !DILocalVariable(name: "alignbuffer", scope: !4866, file: !3, line: 47, type: !4536)
!4876 = !DILocalVariable(name: "err", scope: !4866, file: !3, line: 48, type: !136)
!4877 = !DILocation(line: 41, column: 56, scope: !4866)
!4878 = !DILocation(line: 41, column: 71, scope: !4866)
!4879 = !DILocation(line: 42, column: 20, scope: !4866)
!4880 = !DILocation(line: 44, column: 2, scope: !4866)
!4881 = !DILocation(line: 44, column: 20, scope: !4866)
!4882 = !DILocation(line: 44, column: 45, scope: !4866)
!4883 = !DILocation(line: 44, column: 28, scope: !4866)
!4884 = !DILocation(line: 45, column: 2, scope: !4866)
!4885 = !DILocation(line: 45, column: 16, scope: !4866)
!4886 = !DILocation(line: 45, column: 51, scope: !4866)
!4887 = !DILocation(line: 45, column: 28, scope: !4866)
!4888 = !DILocation(line: 46, column: 2, scope: !4866)
!4889 = !DILocation(line: 46, column: 16, scope: !4866)
!4890 = !DILocation(line: 47, column: 2, scope: !4866)
!4891 = !DILocation(line: 47, column: 6, scope: !4866)
!4892 = !DILocation(line: 47, column: 15, scope: !4866)
!4893 = !DILocation(line: 48, column: 2, scope: !4866)
!4894 = !DILocation(line: 48, column: 6, scope: !4866)
!4895 = !DILocation(line: 50, column: 11, scope: !4866)
!4896 = !DILocation(line: 50, column: 21, scope: !4866)
!4897 = !DILocation(line: 50, column: 35, scope: !4866)
!4898 = !DILocation(line: 50, column: 62, scope: !4866)
!4899 = !DILocation(line: 50, column: 33, scope: !4866)
!4900 = !DILocation(line: 50, column: 31, scope: !4866)
!4901 = !DILocation(line: 50, column: 18, scope: !4866)
!4902 = !DILocation(line: 50, column: 9, scope: !4866)
!4903 = !DILocation(line: 51, column: 19, scope: !4866)
!4904 = !DILocation(line: 51, column: 11, scope: !4866)
!4905 = !DILocation(line: 51, column: 9, scope: !4866)
!4906 = !DILocation(line: 52, column: 7, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 52, column: 6)
!4908 = !DILocation(line: 52, column: 6, scope: !4866)
!4909 = !DILocation(line: 53, column: 3, scope: !4907)
!4910 = !DILocation(line: 55, column: 22, scope: !4866)
!4911 = !DILocation(line: 55, column: 16, scope: !4866)
!4912 = !DILocation(line: 55, column: 14, scope: !4866)
!4913 = !DILocation(line: 56, column: 9, scope: !4866)
!4914 = !DILocation(line: 56, column: 22, scope: !4866)
!4915 = !DILocation(line: 56, column: 27, scope: !4866)
!4916 = !DILocation(line: 56, column: 2, scope: !4866)
!4917 = !DILocation(line: 57, column: 8, scope: !4866)
!4918 = !DILocation(line: 57, column: 15, scope: !4866)
!4919 = !DILocation(line: 57, column: 22, scope: !4866)
!4920 = !DILocation(line: 57, column: 27, scope: !4866)
!4921 = !DILocation(line: 57, column: 40, scope: !4866)
!4922 = !DILocation(line: 57, column: 6, scope: !4866)
!4923 = !DILocation(line: 58, column: 18, scope: !4866)
!4924 = !DILocation(line: 58, column: 2, scope: !4866)
!4925 = !DILocation(line: 59, column: 9, scope: !4866)
!4926 = !DILocation(line: 59, column: 2, scope: !4866)
!4927 = !DILocation(line: 60, column: 1, scope: !4866)
!4928 = distinct !DISubprogram(name: "shash_set_needkey", scope: !3, file: !3, line: 62, type: !4929, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !118, !4555}
!4931 = !{!4932, !4933}
!4932 = !DILocalVariable(name: "tfm", arg: 1, scope: !4928, file: !3, line: 62, type: !118)
!4933 = !DILocalVariable(name: "alg", arg: 2, scope: !4928, file: !3, line: 62, type: !4555)
!4934 = !DILocation(line: 62, column: 52, scope: !4928)
!4935 = !DILocation(line: 62, column: 75, scope: !4928)
!4936 = !DILocation(line: 64, column: 33, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 64, column: 6)
!4938 = !DILocation(line: 64, column: 6, scope: !4937)
!4939 = !DILocation(line: 64, column: 6, scope: !4928)
!4940 = !DILocation(line: 65, column: 26, scope: !4937)
!4941 = !DILocation(line: 65, column: 3, scope: !4937)
!4942 = !DILocation(line: 66, column: 1, scope: !4928)
!4943 = distinct !DISubprogram(name: "crypto_shash_clear_flags", scope: !115, file: !115, line: 860, type: !4944, scopeLine: 861, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4946)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{null, !118, !138}
!4946 = !{!4947, !4948}
!4947 = !DILocalVariable(name: "tfm", arg: 1, scope: !4943, file: !115, line: 860, type: !118)
!4948 = !DILocalVariable(name: "flags", arg: 2, scope: !4943, file: !115, line: 860, type: !138)
!4949 = !DILocation(line: 860, column: 66, scope: !4943)
!4950 = !DILocation(line: 860, column: 75, scope: !4943)
!4951 = !DILocation(line: 862, column: 42, scope: !4943)
!4952 = !DILocation(line: 862, column: 25, scope: !4943)
!4953 = !DILocation(line: 862, column: 48, scope: !4943)
!4954 = !DILocation(line: 862, column: 2, scope: !4943)
!4955 = !DILocation(line: 863, column: 1, scope: !4943)
!4956 = distinct !DISubprogram(name: "crypto_shash_update", scope: !3, file: !3, line: 120, type: !4564, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4957)
!4957 = !{!4958, !4959, !4960, !4961, !4962, !4963, !4964}
!4958 = !DILocalVariable(name: "desc", arg: 1, scope: !4956, file: !3, line: 120, type: !113)
!4959 = !DILocalVariable(name: "data", arg: 2, scope: !4956, file: !3, line: 120, type: !4530)
!4960 = !DILocalVariable(name: "len", arg: 3, scope: !4956, file: !3, line: 121, type: !7)
!4961 = !DILocalVariable(name: "tfm", scope: !4956, file: !3, line: 123, type: !118)
!4962 = !DILocalVariable(name: "shash", scope: !4956, file: !3, line: 124, type: !4555)
!4963 = !DILocalVariable(name: "alignmask", scope: !4956, file: !3, line: 125, type: !112)
!4964 = !DILocalVariable(name: "err", scope: !4956, file: !3, line: 126, type: !136)
!4965 = !DILocation(line: 120, column: 44, scope: !4956)
!4966 = !DILocation(line: 120, column: 60, scope: !4956)
!4967 = !DILocation(line: 121, column: 17, scope: !4956)
!4968 = !DILocation(line: 123, column: 2, scope: !4956)
!4969 = !DILocation(line: 123, column: 23, scope: !4956)
!4970 = !DILocation(line: 123, column: 29, scope: !4956)
!4971 = !DILocation(line: 123, column: 35, scope: !4956)
!4972 = !DILocation(line: 124, column: 2, scope: !4956)
!4973 = !DILocation(line: 124, column: 20, scope: !4956)
!4974 = !DILocation(line: 124, column: 45, scope: !4956)
!4975 = !DILocation(line: 124, column: 28, scope: !4956)
!4976 = !DILocation(line: 125, column: 2, scope: !4956)
!4977 = !DILocation(line: 125, column: 16, scope: !4956)
!4978 = !DILocation(line: 125, column: 51, scope: !4956)
!4979 = !DILocation(line: 125, column: 28, scope: !4956)
!4980 = !DILocation(line: 126, column: 2, scope: !4956)
!4981 = !DILocation(line: 126, column: 6, scope: !4956)
!4982 = !DILocation(line: 131, column: 21, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 131, column: 6)
!4984 = !DILocation(line: 131, column: 6, scope: !4983)
!4985 = !DILocation(line: 131, column: 28, scope: !4983)
!4986 = !DILocation(line: 131, column: 26, scope: !4983)
!4987 = !DILocation(line: 131, column: 6, scope: !4956)
!4988 = !DILocation(line: 132, column: 32, scope: !4983)
!4989 = !DILocation(line: 132, column: 38, scope: !4983)
!4990 = !DILocation(line: 132, column: 44, scope: !4983)
!4991 = !DILocation(line: 132, column: 9, scope: !4983)
!4992 = !DILocation(line: 132, column: 7, scope: !4983)
!4993 = !DILocation(line: 132, column: 3, scope: !4983)
!4994 = !DILocation(line: 134, column: 9, scope: !4983)
!4995 = !DILocation(line: 134, column: 16, scope: !4983)
!4996 = !DILocation(line: 134, column: 23, scope: !4983)
!4997 = !DILocation(line: 134, column: 29, scope: !4983)
!4998 = !DILocation(line: 134, column: 35, scope: !4983)
!4999 = !DILocation(line: 134, column: 7, scope: !4983)
!5000 = !DILocation(line: 136, column: 30, scope: !4956)
!5001 = !DILocation(line: 136, column: 37, scope: !4956)
!5002 = !DILocation(line: 136, column: 9, scope: !4956)
!5003 = !DILocation(line: 137, column: 1, scope: !4956)
!5004 = !DILocation(line: 136, column: 2, scope: !4956)
!5005 = distinct !DISubprogram(name: "shash_update_unaligned", scope: !3, file: !3, line: 90, type: !4564, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5006)
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5018, !5019, !5020, !5023}
!5007 = !DILocalVariable(name: "desc", arg: 1, scope: !5005, file: !3, line: 90, type: !113)
!5008 = !DILocalVariable(name: "data", arg: 2, scope: !5005, file: !3, line: 90, type: !4530)
!5009 = !DILocalVariable(name: "len", arg: 3, scope: !5005, file: !3, line: 91, type: !7)
!5010 = !DILocalVariable(name: "tfm", scope: !5005, file: !3, line: 93, type: !118)
!5011 = !DILocalVariable(name: "shash", scope: !5005, file: !3, line: 94, type: !4555)
!5012 = !DILocalVariable(name: "alignmask", scope: !5005, file: !3, line: 95, type: !112)
!5013 = !DILocalVariable(name: "unaligned_len", scope: !5005, file: !3, line: 96, type: !7)
!5014 = !DILocalVariable(name: "ubuf", scope: !5005, file: !3, line: 102, type: !5015)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1008, elements: !5016)
!5016 = !{!5017}
!5017 = !DISubrange(count: 126)
!5018 = !DILocalVariable(name: "buf", scope: !5005, file: !3, line: 103, type: !4536)
!5019 = !DILocalVariable(name: "err", scope: !5005, file: !3, line: 104, type: !136)
!5020 = !DILocalVariable(name: "__ret_warn_on", scope: !5021, file: !3, line: 106, type: !136)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 106, column: 6)
!5022 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 106, column: 6)
!5023 = !DILocalVariable(name: "__flags", scope: !5024, file: !3, line: 106, type: !136)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 106, column: 6)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 106, column: 6)
!5026 = !DILocation(line: 90, column: 54, scope: !5005)
!5027 = !DILocation(line: 90, column: 70, scope: !5005)
!5028 = !DILocation(line: 91, column: 20, scope: !5005)
!5029 = !DILocation(line: 93, column: 2, scope: !5005)
!5030 = !DILocation(line: 93, column: 23, scope: !5005)
!5031 = !DILocation(line: 93, column: 29, scope: !5005)
!5032 = !DILocation(line: 93, column: 35, scope: !5005)
!5033 = !DILocation(line: 94, column: 2, scope: !5005)
!5034 = !DILocation(line: 94, column: 20, scope: !5005)
!5035 = !DILocation(line: 94, column: 45, scope: !5005)
!5036 = !DILocation(line: 94, column: 28, scope: !5005)
!5037 = !DILocation(line: 95, column: 2, scope: !5005)
!5038 = !DILocation(line: 95, column: 16, scope: !5005)
!5039 = !DILocation(line: 95, column: 51, scope: !5005)
!5040 = !DILocation(line: 95, column: 28, scope: !5005)
!5041 = !DILocation(line: 96, column: 2, scope: !5005)
!5042 = !DILocation(line: 96, column: 15, scope: !5005)
!5043 = !DILocation(line: 96, column: 31, scope: !5005)
!5044 = !DILocation(line: 96, column: 41, scope: !5005)
!5045 = !DILocation(line: 97, column: 26, scope: !5005)
!5046 = !DILocation(line: 97, column: 11, scope: !5005)
!5047 = !DILocation(line: 97, column: 33, scope: !5005)
!5048 = !DILocation(line: 97, column: 31, scope: !5005)
!5049 = !DILocation(line: 96, column: 45, scope: !5005)
!5050 = !DILocation(line: 102, column: 2, scope: !5005)
!5051 = !DILocation(line: 102, column: 5, scope: !5005)
!5052 = !DILocation(line: 103, column: 2, scope: !5005)
!5053 = !DILocation(line: 103, column: 6, scope: !5005)
!5054 = !DILocation(line: 103, column: 12, scope: !5005)
!5055 = !DILocation(line: 104, column: 2, scope: !5005)
!5056 = !DILocation(line: 104, column: 6, scope: !5005)
!5057 = !DILocation(line: 106, column: 6, scope: !5021)
!5058 = !DILocation(line: 106, column: 6, scope: !5025)
!5059 = !DILocation(line: 106, column: 6, scope: !5024)
!5060 = !DILocation(line: 106, column: 6, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 106, column: 6)
!5062 = !DILocation(line: 106, column: 6, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 106, column: 6)
!5064 = !{i64 2155693364, i64 2155693393, i64 2155693439, i64 2155693497, i64 2155693551, i64 2155693605, i64 2155693660, i64 2155693691, i64 2155693999, i64 2155694005, i64 2155694052, i64 2155694075, i64 2155694101}
!5065 = !DILocation(line: 106, column: 6, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 106, column: 6)
!5067 = !DILocation(line: 106, column: 6, scope: !5022)
!5068 = !DILocation(line: 106, column: 6, scope: !5005)
!5069 = !DILocation(line: 107, column: 3, scope: !5022)
!5070 = !DILocation(line: 109, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 109, column: 6)
!5072 = !DILocation(line: 109, column: 22, scope: !5071)
!5073 = !DILocation(line: 109, column: 20, scope: !5071)
!5074 = !DILocation(line: 109, column: 6, scope: !5005)
!5075 = !DILocation(line: 110, column: 19, scope: !5071)
!5076 = !DILocation(line: 110, column: 17, scope: !5071)
!5077 = !DILocation(line: 110, column: 3, scope: !5071)
!5078 = !DILocation(line: 112, column: 9, scope: !5005)
!5079 = !DILocation(line: 112, column: 14, scope: !5005)
!5080 = !DILocation(line: 112, column: 20, scope: !5005)
!5081 = !DILocation(line: 112, column: 2, scope: !5005)
!5082 = !DILocation(line: 113, column: 8, scope: !5005)
!5083 = !DILocation(line: 113, column: 15, scope: !5005)
!5084 = !DILocation(line: 113, column: 22, scope: !5005)
!5085 = !DILocation(line: 113, column: 28, scope: !5005)
!5086 = !DILocation(line: 113, column: 33, scope: !5005)
!5087 = !DILocation(line: 113, column: 6, scope: !5005)
!5088 = !DILocation(line: 114, column: 9, scope: !5005)
!5089 = !DILocation(line: 114, column: 17, scope: !5005)
!5090 = !DILocation(line: 114, column: 2, scope: !5005)
!5091 = !DILocation(line: 116, column: 9, scope: !5005)
!5092 = !DILocation(line: 117, column: 9, scope: !5005)
!5093 = !DILocation(line: 117, column: 16, scope: !5005)
!5094 = !DILocation(line: 117, column: 23, scope: !5005)
!5095 = !DILocation(line: 117, column: 29, scope: !5005)
!5096 = !DILocation(line: 117, column: 36, scope: !5005)
!5097 = !DILocation(line: 117, column: 34, scope: !5005)
!5098 = !DILocation(line: 117, column: 51, scope: !5005)
!5099 = !DILocation(line: 117, column: 57, scope: !5005)
!5100 = !DILocation(line: 117, column: 55, scope: !5005)
!5101 = !DILocation(line: 116, column: 2, scope: !5005)
!5102 = !DILocation(line: 118, column: 1, scope: !5005)
!5103 = distinct !DISubprogram(name: "crypto_shash_errstat", scope: !3, file: !3, line: 29, type: !5104, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5106)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!136, !4555, !136}
!5106 = !{!5107, !5108}
!5107 = !DILocalVariable(name: "alg", arg: 1, scope: !5103, file: !3, line: 29, type: !4555)
!5108 = !DILocalVariable(name: "err", arg: 2, scope: !5103, file: !3, line: 29, type: !136)
!5109 = !DILocation(line: 29, column: 58, scope: !5103)
!5110 = !DILocation(line: 29, column: 67, scope: !5103)
!5111 = !DILocation(line: 31, column: 30, scope: !5103)
!5112 = !DILocation(line: 31, column: 35, scope: !5103)
!5113 = !DILocation(line: 31, column: 41, scope: !5103)
!5114 = !DILocation(line: 31, column: 9, scope: !5103)
!5115 = !DILocation(line: 31, column: 2, scope: !5103)
!5116 = distinct !DISubprogram(name: "crypto_shash_final", scope: !3, file: !3, line: 168, type: !4568, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5117)
!5117 = !{!5118, !5119, !5120, !5121, !5122, !5123}
!5118 = !DILocalVariable(name: "desc", arg: 1, scope: !5116, file: !3, line: 168, type: !113)
!5119 = !DILocalVariable(name: "out", arg: 2, scope: !5116, file: !3, line: 168, type: !4536)
!5120 = !DILocalVariable(name: "tfm", scope: !5116, file: !3, line: 170, type: !118)
!5121 = !DILocalVariable(name: "shash", scope: !5116, file: !3, line: 171, type: !4555)
!5122 = !DILocalVariable(name: "alignmask", scope: !5116, file: !3, line: 172, type: !112)
!5123 = !DILocalVariable(name: "err", scope: !5116, file: !3, line: 173, type: !136)
!5124 = !DILocation(line: 168, column: 43, scope: !5116)
!5125 = !DILocation(line: 168, column: 53, scope: !5116)
!5126 = !DILocation(line: 170, column: 2, scope: !5116)
!5127 = !DILocation(line: 170, column: 23, scope: !5116)
!5128 = !DILocation(line: 170, column: 29, scope: !5116)
!5129 = !DILocation(line: 170, column: 35, scope: !5116)
!5130 = !DILocation(line: 171, column: 2, scope: !5116)
!5131 = !DILocation(line: 171, column: 20, scope: !5116)
!5132 = !DILocation(line: 171, column: 45, scope: !5116)
!5133 = !DILocation(line: 171, column: 28, scope: !5116)
!5134 = !DILocation(line: 172, column: 2, scope: !5116)
!5135 = !DILocation(line: 172, column: 16, scope: !5116)
!5136 = !DILocation(line: 172, column: 51, scope: !5116)
!5137 = !DILocation(line: 172, column: 28, scope: !5116)
!5138 = !DILocation(line: 173, column: 2, scope: !5116)
!5139 = !DILocation(line: 173, column: 6, scope: !5116)
!5140 = !DILocation(line: 178, column: 21, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 178, column: 6)
!5142 = !DILocation(line: 178, column: 6, scope: !5141)
!5143 = !DILocation(line: 178, column: 27, scope: !5141)
!5144 = !DILocation(line: 178, column: 25, scope: !5141)
!5145 = !DILocation(line: 178, column: 6, scope: !5116)
!5146 = !DILocation(line: 179, column: 31, scope: !5141)
!5147 = !DILocation(line: 179, column: 37, scope: !5141)
!5148 = !DILocation(line: 179, column: 9, scope: !5141)
!5149 = !DILocation(line: 179, column: 7, scope: !5141)
!5150 = !DILocation(line: 179, column: 3, scope: !5141)
!5151 = !DILocation(line: 181, column: 9, scope: !5141)
!5152 = !DILocation(line: 181, column: 16, scope: !5141)
!5153 = !DILocation(line: 181, column: 22, scope: !5141)
!5154 = !DILocation(line: 181, column: 28, scope: !5141)
!5155 = !DILocation(line: 181, column: 7, scope: !5141)
!5156 = !DILocation(line: 183, column: 30, scope: !5116)
!5157 = !DILocation(line: 183, column: 37, scope: !5116)
!5158 = !DILocation(line: 183, column: 9, scope: !5116)
!5159 = !DILocation(line: 184, column: 1, scope: !5116)
!5160 = !DILocation(line: 183, column: 2, scope: !5116)
!5161 = distinct !DISubprogram(name: "shash_final_unaligned", scope: !3, file: !3, line: 140, type: !4568, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5162)
!5162 = !{!5163, !5164, !5165, !5166, !5167, !5168, !5169, !5173, !5174, !5175, !5178, !5181}
!5163 = !DILocalVariable(name: "desc", arg: 1, scope: !5161, file: !3, line: 140, type: !113)
!5164 = !DILocalVariable(name: "out", arg: 2, scope: !5161, file: !3, line: 140, type: !4536)
!5165 = !DILocalVariable(name: "tfm", scope: !5161, file: !3, line: 142, type: !118)
!5166 = !DILocalVariable(name: "alignmask", scope: !5161, file: !3, line: 143, type: !112)
!5167 = !DILocalVariable(name: "shash", scope: !5161, file: !3, line: 144, type: !4555)
!5168 = !DILocalVariable(name: "ds", scope: !5161, file: !3, line: 145, type: !7)
!5169 = !DILocalVariable(name: "ubuf", scope: !5161, file: !3, line: 150, type: !5170)
!5170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1016, elements: !5171)
!5171 = !{!5172}
!5172 = !DISubrange(count: 127)
!5173 = !DILocalVariable(name: "buf", scope: !5161, file: !3, line: 151, type: !4536)
!5174 = !DILocalVariable(name: "err", scope: !5161, file: !3, line: 152, type: !136)
!5175 = !DILocalVariable(name: "__ret_warn_on", scope: !5176, file: !3, line: 154, type: !136)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 154, column: 6)
!5177 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 154, column: 6)
!5178 = !DILocalVariable(name: "__flags", scope: !5179, file: !3, line: 154, type: !136)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 154, column: 6)
!5180 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 154, column: 6)
!5181 = !DILabel(scope: !5161, name: "out", file: !3, line: 163)
!5182 = !DILocation(line: 140, column: 53, scope: !5161)
!5183 = !DILocation(line: 140, column: 63, scope: !5161)
!5184 = !DILocation(line: 142, column: 2, scope: !5161)
!5185 = !DILocation(line: 142, column: 23, scope: !5161)
!5186 = !DILocation(line: 142, column: 29, scope: !5161)
!5187 = !DILocation(line: 142, column: 35, scope: !5161)
!5188 = !DILocation(line: 143, column: 2, scope: !5161)
!5189 = !DILocation(line: 143, column: 16, scope: !5161)
!5190 = !DILocation(line: 143, column: 51, scope: !5161)
!5191 = !DILocation(line: 143, column: 28, scope: !5161)
!5192 = !DILocation(line: 144, column: 2, scope: !5161)
!5193 = !DILocation(line: 144, column: 20, scope: !5161)
!5194 = !DILocation(line: 144, column: 45, scope: !5161)
!5195 = !DILocation(line: 144, column: 28, scope: !5161)
!5196 = !DILocation(line: 145, column: 2, scope: !5161)
!5197 = !DILocation(line: 145, column: 15, scope: !5161)
!5198 = !DILocation(line: 145, column: 44, scope: !5161)
!5199 = !DILocation(line: 145, column: 20, scope: !5161)
!5200 = !DILocation(line: 150, column: 2, scope: !5161)
!5201 = !DILocation(line: 150, column: 5, scope: !5161)
!5202 = !DILocation(line: 151, column: 2, scope: !5161)
!5203 = !DILocation(line: 151, column: 6, scope: !5161)
!5204 = !DILocation(line: 151, column: 12, scope: !5161)
!5205 = !DILocation(line: 152, column: 2, scope: !5161)
!5206 = !DILocation(line: 152, column: 6, scope: !5161)
!5207 = !DILocation(line: 154, column: 6, scope: !5176)
!5208 = !DILocation(line: 154, column: 6, scope: !5180)
!5209 = !DILocation(line: 154, column: 6, scope: !5179)
!5210 = !DILocation(line: 154, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 154, column: 6)
!5212 = !DILocation(line: 154, column: 6, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 154, column: 6)
!5214 = !{i64 2155698022, i64 2155698051, i64 2155698097, i64 2155698155, i64 2155698209, i64 2155698263, i64 2155698318, i64 2155698349, i64 2155698657, i64 2155698663, i64 2155698710, i64 2155698733, i64 2155698759}
!5215 = !DILocation(line: 154, column: 6, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 154, column: 6)
!5217 = !DILocation(line: 154, column: 6, scope: !5177)
!5218 = !DILocation(line: 154, column: 6, scope: !5161)
!5219 = !DILocation(line: 155, column: 3, scope: !5177)
!5220 = !DILocation(line: 157, column: 8, scope: !5161)
!5221 = !DILocation(line: 157, column: 15, scope: !5161)
!5222 = !DILocation(line: 157, column: 21, scope: !5161)
!5223 = !DILocation(line: 157, column: 27, scope: !5161)
!5224 = !DILocation(line: 157, column: 6, scope: !5161)
!5225 = !DILocation(line: 158, column: 6, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 158, column: 6)
!5227 = !DILocation(line: 158, column: 6, scope: !5161)
!5228 = !DILocation(line: 159, column: 3, scope: !5226)
!5229 = !DILocation(line: 161, column: 9, scope: !5161)
!5230 = !DILocation(line: 161, column: 14, scope: !5161)
!5231 = !DILocation(line: 161, column: 19, scope: !5161)
!5232 = !DILocation(line: 161, column: 2, scope: !5161)
!5233 = !DILocation(line: 163, column: 1, scope: !5161)
!5234 = !DILocation(line: 164, column: 9, scope: !5161)
!5235 = !DILocation(line: 164, column: 17, scope: !5161)
!5236 = !DILocation(line: 164, column: 2, scope: !5161)
!5237 = !DILocation(line: 165, column: 9, scope: !5161)
!5238 = !DILocation(line: 165, column: 2, scope: !5161)
!5239 = !DILocation(line: 166, column: 1, scope: !5161)
!5240 = distinct !DISubprogram(name: "crypto_shash_finup", scope: !3, file: !3, line: 194, type: !4572, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5241 = !{!5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249}
!5242 = !DILocalVariable(name: "desc", arg: 1, scope: !5240, file: !3, line: 194, type: !113)
!5243 = !DILocalVariable(name: "data", arg: 2, scope: !5240, file: !3, line: 194, type: !4530)
!5244 = !DILocalVariable(name: "len", arg: 3, scope: !5240, file: !3, line: 195, type: !7)
!5245 = !DILocalVariable(name: "out", arg: 4, scope: !5240, file: !3, line: 195, type: !4536)
!5246 = !DILocalVariable(name: "tfm", scope: !5240, file: !3, line: 197, type: !118)
!5247 = !DILocalVariable(name: "shash", scope: !5240, file: !3, line: 198, type: !4555)
!5248 = !DILocalVariable(name: "alignmask", scope: !5240, file: !3, line: 199, type: !112)
!5249 = !DILocalVariable(name: "err", scope: !5240, file: !3, line: 200, type: !136)
!5250 = !DILocation(line: 194, column: 43, scope: !5240)
!5251 = !DILocation(line: 194, column: 59, scope: !5240)
!5252 = !DILocation(line: 195, column: 23, scope: !5240)
!5253 = !DILocation(line: 195, column: 32, scope: !5240)
!5254 = !DILocation(line: 197, column: 2, scope: !5240)
!5255 = !DILocation(line: 197, column: 23, scope: !5240)
!5256 = !DILocation(line: 197, column: 29, scope: !5240)
!5257 = !DILocation(line: 197, column: 35, scope: !5240)
!5258 = !DILocation(line: 198, column: 2, scope: !5240)
!5259 = !DILocation(line: 198, column: 20, scope: !5240)
!5260 = !DILocation(line: 198, column: 45, scope: !5240)
!5261 = !DILocation(line: 198, column: 28, scope: !5240)
!5262 = !DILocation(line: 199, column: 2, scope: !5240)
!5263 = !DILocation(line: 199, column: 16, scope: !5240)
!5264 = !DILocation(line: 199, column: 51, scope: !5240)
!5265 = !DILocation(line: 199, column: 28, scope: !5240)
!5266 = !DILocation(line: 200, column: 2, scope: !5240)
!5267 = !DILocation(line: 200, column: 6, scope: !5240)
!5268 = !DILocation(line: 209, column: 22, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 209, column: 6)
!5270 = !DILocation(line: 209, column: 7, scope: !5269)
!5271 = !DILocation(line: 209, column: 44, scope: !5269)
!5272 = !DILocation(line: 209, column: 29, scope: !5269)
!5273 = !DILocation(line: 209, column: 27, scope: !5269)
!5274 = !DILocation(line: 209, column: 51, scope: !5269)
!5275 = !DILocation(line: 209, column: 49, scope: !5269)
!5276 = !DILocation(line: 209, column: 6, scope: !5240)
!5277 = !DILocation(line: 210, column: 31, scope: !5269)
!5278 = !DILocation(line: 210, column: 37, scope: !5269)
!5279 = !DILocation(line: 210, column: 43, scope: !5269)
!5280 = !DILocation(line: 210, column: 48, scope: !5269)
!5281 = !DILocation(line: 210, column: 9, scope: !5269)
!5282 = !DILocation(line: 210, column: 7, scope: !5269)
!5283 = !DILocation(line: 210, column: 3, scope: !5269)
!5284 = !DILocation(line: 212, column: 9, scope: !5269)
!5285 = !DILocation(line: 212, column: 16, scope: !5269)
!5286 = !DILocation(line: 212, column: 22, scope: !5269)
!5287 = !DILocation(line: 212, column: 28, scope: !5269)
!5288 = !DILocation(line: 212, column: 34, scope: !5269)
!5289 = !DILocation(line: 212, column: 39, scope: !5269)
!5290 = !DILocation(line: 212, column: 7, scope: !5269)
!5291 = !DILocation(line: 215, column: 30, scope: !5240)
!5292 = !DILocation(line: 215, column: 37, scope: !5240)
!5293 = !DILocation(line: 215, column: 9, scope: !5240)
!5294 = !DILocation(line: 216, column: 1, scope: !5240)
!5295 = !DILocation(line: 215, column: 2, scope: !5240)
!5296 = distinct !DISubprogram(name: "shash_finup_unaligned", scope: !3, file: !3, line: 187, type: !4572, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5297 = !{!5298, !5299, !5300, !5301}
!5298 = !DILocalVariable(name: "desc", arg: 1, scope: !5296, file: !3, line: 187, type: !113)
!5299 = !DILocalVariable(name: "data", arg: 2, scope: !5296, file: !3, line: 187, type: !4530)
!5300 = !DILocalVariable(name: "len", arg: 3, scope: !5296, file: !3, line: 188, type: !7)
!5301 = !DILocalVariable(name: "out", arg: 4, scope: !5296, file: !3, line: 188, type: !4536)
!5302 = !DILocation(line: 187, column: 53, scope: !5296)
!5303 = !DILocation(line: 187, column: 69, scope: !5296)
!5304 = !DILocation(line: 188, column: 19, scope: !5296)
!5305 = !DILocation(line: 188, column: 28, scope: !5296)
!5306 = !DILocation(line: 190, column: 32, scope: !5296)
!5307 = !DILocation(line: 190, column: 38, scope: !5296)
!5308 = !DILocation(line: 190, column: 44, scope: !5296)
!5309 = !DILocation(line: 190, column: 9, scope: !5296)
!5310 = !DILocation(line: 191, column: 31, scope: !5296)
!5311 = !DILocation(line: 191, column: 37, scope: !5296)
!5312 = !DILocation(line: 191, column: 9, scope: !5296)
!5313 = !DILocation(line: 190, column: 2, scope: !5296)
!5314 = distinct !DISubprogram(name: "crypto_shash_digest", scope: !3, file: !3, line: 227, type: !4572, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5315)
!5315 = !{!5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323}
!5316 = !DILocalVariable(name: "desc", arg: 1, scope: !5314, file: !3, line: 227, type: !113)
!5317 = !DILocalVariable(name: "data", arg: 2, scope: !5314, file: !3, line: 227, type: !4530)
!5318 = !DILocalVariable(name: "len", arg: 3, scope: !5314, file: !3, line: 228, type: !7)
!5319 = !DILocalVariable(name: "out", arg: 4, scope: !5314, file: !3, line: 228, type: !4536)
!5320 = !DILocalVariable(name: "tfm", scope: !5314, file: !3, line: 230, type: !118)
!5321 = !DILocalVariable(name: "shash", scope: !5314, file: !3, line: 231, type: !4555)
!5322 = !DILocalVariable(name: "alignmask", scope: !5314, file: !3, line: 232, type: !112)
!5323 = !DILocalVariable(name: "err", scope: !5314, file: !3, line: 233, type: !136)
!5324 = !DILocation(line: 227, column: 44, scope: !5314)
!5325 = !DILocation(line: 227, column: 60, scope: !5314)
!5326 = !DILocation(line: 228, column: 17, scope: !5314)
!5327 = !DILocation(line: 228, column: 26, scope: !5314)
!5328 = !DILocation(line: 230, column: 2, scope: !5314)
!5329 = !DILocation(line: 230, column: 23, scope: !5314)
!5330 = !DILocation(line: 230, column: 29, scope: !5314)
!5331 = !DILocation(line: 230, column: 35, scope: !5314)
!5332 = !DILocation(line: 231, column: 2, scope: !5314)
!5333 = !DILocation(line: 231, column: 20, scope: !5314)
!5334 = !DILocation(line: 231, column: 45, scope: !5314)
!5335 = !DILocation(line: 231, column: 28, scope: !5314)
!5336 = !DILocation(line: 232, column: 2, scope: !5314)
!5337 = !DILocation(line: 232, column: 16, scope: !5314)
!5338 = !DILocation(line: 232, column: 51, scope: !5314)
!5339 = !DILocation(line: 232, column: 28, scope: !5314)
!5340 = !DILocation(line: 233, column: 2, scope: !5314)
!5341 = !DILocation(line: 233, column: 6, scope: !5314)
!5342 = !DILocation(line: 242, column: 29, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 242, column: 6)
!5344 = !DILocation(line: 242, column: 6, scope: !5343)
!5345 = !DILocation(line: 242, column: 34, scope: !5343)
!5346 = !DILocation(line: 242, column: 6, scope: !5314)
!5347 = !DILocation(line: 243, column: 7, scope: !5343)
!5348 = !DILocation(line: 243, column: 3, scope: !5343)
!5349 = !DILocation(line: 244, column: 27, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 244, column: 11)
!5351 = !DILocation(line: 244, column: 12, scope: !5350)
!5352 = !DILocation(line: 244, column: 49, scope: !5350)
!5353 = !DILocation(line: 244, column: 34, scope: !5350)
!5354 = !DILocation(line: 244, column: 32, scope: !5350)
!5355 = !DILocation(line: 244, column: 56, scope: !5350)
!5356 = !DILocation(line: 244, column: 54, scope: !5350)
!5357 = !DILocation(line: 244, column: 11, scope: !5343)
!5358 = !DILocation(line: 245, column: 32, scope: !5350)
!5359 = !DILocation(line: 245, column: 38, scope: !5350)
!5360 = !DILocation(line: 245, column: 44, scope: !5350)
!5361 = !DILocation(line: 245, column: 49, scope: !5350)
!5362 = !DILocation(line: 245, column: 9, scope: !5350)
!5363 = !DILocation(line: 245, column: 7, scope: !5350)
!5364 = !DILocation(line: 245, column: 3, scope: !5350)
!5365 = !DILocation(line: 247, column: 9, scope: !5350)
!5366 = !DILocation(line: 247, column: 16, scope: !5350)
!5367 = !DILocation(line: 247, column: 23, scope: !5350)
!5368 = !DILocation(line: 247, column: 29, scope: !5350)
!5369 = !DILocation(line: 247, column: 35, scope: !5350)
!5370 = !DILocation(line: 247, column: 40, scope: !5350)
!5371 = !DILocation(line: 247, column: 7, scope: !5350)
!5372 = !DILocation(line: 249, column: 30, scope: !5314)
!5373 = !DILocation(line: 249, column: 37, scope: !5314)
!5374 = !DILocation(line: 249, column: 9, scope: !5314)
!5375 = !DILocation(line: 250, column: 1, scope: !5314)
!5376 = !DILocation(line: 249, column: 2, scope: !5314)
!5377 = distinct !DISubprogram(name: "crypto_shash_get_flags", scope: !115, file: !115, line: 850, type: !5378, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5380)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!138, !118}
!5380 = !{!5381}
!5381 = !DILocalVariable(name: "tfm", arg: 1, scope: !5377, file: !115, line: 850, type: !118)
!5382 = !DILocation(line: 850, column: 63, scope: !5377)
!5383 = !DILocation(line: 852, column: 47, scope: !5377)
!5384 = !DILocation(line: 852, column: 30, scope: !5377)
!5385 = !DILocation(line: 852, column: 9, scope: !5377)
!5386 = !DILocation(line: 852, column: 2, scope: !5377)
!5387 = distinct !DISubprogram(name: "shash_digest_unaligned", scope: !3, file: !3, line: 219, type: !4572, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5388 = !{!5389, !5390, !5391, !5392}
!5389 = !DILocalVariable(name: "desc", arg: 1, scope: !5387, file: !3, line: 219, type: !113)
!5390 = !DILocalVariable(name: "data", arg: 2, scope: !5387, file: !3, line: 219, type: !4530)
!5391 = !DILocalVariable(name: "len", arg: 3, scope: !5387, file: !3, line: 220, type: !7)
!5392 = !DILocalVariable(name: "out", arg: 4, scope: !5387, file: !3, line: 220, type: !4536)
!5393 = !DILocation(line: 219, column: 54, scope: !5387)
!5394 = !DILocation(line: 219, column: 70, scope: !5387)
!5395 = !DILocation(line: 220, column: 20, scope: !5387)
!5396 = !DILocation(line: 220, column: 29, scope: !5387)
!5397 = !DILocation(line: 222, column: 27, scope: !5387)
!5398 = !DILocation(line: 222, column: 9, scope: !5387)
!5399 = !DILocation(line: 223, column: 32, scope: !5387)
!5400 = !DILocation(line: 223, column: 38, scope: !5387)
!5401 = !DILocation(line: 223, column: 44, scope: !5387)
!5402 = !DILocation(line: 223, column: 9, scope: !5387)
!5403 = !DILocation(line: 224, column: 31, scope: !5387)
!5404 = !DILocation(line: 224, column: 37, scope: !5387)
!5405 = !DILocation(line: 224, column: 9, scope: !5387)
!5406 = !DILocation(line: 222, column: 2, scope: !5387)
!5407 = distinct !DISubprogram(name: "crypto_shash_tfm_digest", scope: !3, file: !3, line: 253, type: !5408, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5410)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!136, !118, !4530, !7, !4536}
!5410 = !{!5411, !5412, !5413, !5414, !5415, !5419, !5420}
!5411 = !DILocalVariable(name: "tfm", arg: 1, scope: !5407, file: !3, line: 253, type: !118)
!5412 = !DILocalVariable(name: "data", arg: 2, scope: !5407, file: !3, line: 253, type: !4530)
!5413 = !DILocalVariable(name: "len", arg: 3, scope: !5407, file: !3, line: 254, type: !7)
!5414 = !DILocalVariable(name: "out", arg: 4, scope: !5407, file: !3, line: 254, type: !4536)
!5415 = !DILocalVariable(name: "__desc_desc", scope: !5407, file: !3, line: 256, type: !5416, align: 64)
!5416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 3008, elements: !5417)
!5417 = !{!5418}
!5418 = !DISubrange(count: 376)
!5419 = !DILocalVariable(name: "desc", scope: !5407, file: !3, line: 256, type: !113)
!5420 = !DILocalVariable(name: "err", scope: !5407, file: !3, line: 257, type: !136)
!5421 = !DILocation(line: 253, column: 50, scope: !5407)
!5422 = !DILocation(line: 253, column: 65, scope: !5407)
!5423 = !DILocation(line: 254, column: 21, scope: !5407)
!5424 = !DILocation(line: 254, column: 30, scope: !5407)
!5425 = !DILocation(line: 256, column: 2, scope: !5407)
!5426 = !DILocation(line: 257, column: 2, scope: !5407)
!5427 = !DILocation(line: 257, column: 6, scope: !5407)
!5428 = !DILocation(line: 259, column: 14, scope: !5407)
!5429 = !DILocation(line: 259, column: 2, scope: !5407)
!5430 = !DILocation(line: 259, column: 8, scope: !5407)
!5431 = !DILocation(line: 259, column: 12, scope: !5407)
!5432 = !DILocation(line: 261, column: 28, scope: !5407)
!5433 = !DILocation(line: 261, column: 34, scope: !5407)
!5434 = !DILocation(line: 261, column: 40, scope: !5407)
!5435 = !DILocation(line: 261, column: 45, scope: !5407)
!5436 = !DILocation(line: 261, column: 8, scope: !5407)
!5437 = !DILocation(line: 261, column: 6, scope: !5407)
!5438 = !DILocation(line: 263, column: 18, scope: !5407)
!5439 = !DILocation(line: 263, column: 2, scope: !5407)
!5440 = !DILocation(line: 265, column: 9, scope: !5407)
!5441 = !DILocation(line: 266, column: 1, scope: !5407)
!5442 = !DILocation(line: 265, column: 2, scope: !5407)
!5443 = distinct !DISubprogram(name: "shash_desc_zero", scope: !115, file: !115, line: 1053, type: !5444, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5446)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{null, !113}
!5446 = !{!5447}
!5447 = !DILocalVariable(name: "desc", arg: 1, scope: !5443, file: !115, line: 1053, type: !113)
!5448 = !DILocation(line: 1053, column: 55, scope: !5443)
!5449 = !DILocation(line: 1055, column: 19, scope: !5443)
!5450 = !DILocation(line: 1056, column: 43, scope: !5443)
!5451 = !DILocation(line: 1056, column: 49, scope: !5443)
!5452 = !DILocation(line: 1056, column: 21, scope: !5443)
!5453 = !DILocation(line: 1056, column: 19, scope: !5443)
!5454 = !DILocation(line: 1055, column: 2, scope: !5443)
!5455 = !DILocation(line: 1057, column: 1, scope: !5443)
!5456 = distinct !DISubprogram(name: "shash_ahash_update", scope: !3, file: !3, line: 299, type: !5457, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!136, !4622, !113}
!5459 = !{!5460, !5461, !5462, !5473}
!5460 = !DILocalVariable(name: "req", arg: 1, scope: !5456, file: !3, line: 299, type: !4622)
!5461 = !DILocalVariable(name: "desc", arg: 2, scope: !5456, file: !3, line: 299, type: !113)
!5462 = !DILocalVariable(name: "walk", scope: !5456, file: !3, line: 301, type: !5463)
!5463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_hash_walk", file: !4674, line: 17, size: 384, elements: !5464)
!5464 = !{!5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5463, file: !4674, line: 18, baseType: !198, size: 64)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5463, file: !4674, line: 20, baseType: !7, size: 32, offset: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "alignmask", scope: !5463, file: !4674, line: 21, baseType: !7, size: 32, offset: 96)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "pg", scope: !5463, file: !4674, line: 23, baseType: !1069, size: 64, offset: 128)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "entrylen", scope: !5463, file: !4674, line: 24, baseType: !7, size: 32, offset: 192)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !5463, file: !4674, line: 26, baseType: !7, size: 32, offset: 224)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5463, file: !4674, line: 27, baseType: !4639, size: 64, offset: 256)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5463, file: !4674, line: 29, baseType: !7, size: 32, offset: 320)
!5473 = !DILocalVariable(name: "nbytes", scope: !5456, file: !3, line: 302, type: !136)
!5474 = !DILocation(line: 299, column: 46, scope: !5456)
!5475 = !DILocation(line: 299, column: 70, scope: !5456)
!5476 = !DILocation(line: 301, column: 2, scope: !5456)
!5477 = !DILocation(line: 301, column: 26, scope: !5456)
!5478 = !DILocation(line: 302, column: 2, scope: !5456)
!5479 = !DILocation(line: 302, column: 6, scope: !5456)
!5480 = !DILocation(line: 304, column: 39, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 304, column: 2)
!5482 = !DILocation(line: 304, column: 16, scope: !5481)
!5483 = !DILocation(line: 304, column: 14, scope: !5481)
!5484 = !DILocation(line: 304, column: 7, scope: !5481)
!5485 = !DILocation(line: 304, column: 52, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 304, column: 2)
!5487 = !DILocation(line: 304, column: 59, scope: !5486)
!5488 = !DILocation(line: 304, column: 2, scope: !5481)
!5489 = !DILocation(line: 306, column: 32, scope: !5486)
!5490 = !DILocation(line: 306, column: 43, scope: !5486)
!5491 = !DILocation(line: 306, column: 49, scope: !5486)
!5492 = !DILocation(line: 306, column: 12, scope: !5486)
!5493 = !DILocation(line: 306, column: 10, scope: !5486)
!5494 = !DILocation(line: 306, column: 3, scope: !5486)
!5495 = !DILocation(line: 305, column: 45, scope: !5486)
!5496 = !DILocation(line: 305, column: 16, scope: !5486)
!5497 = !DILocation(line: 305, column: 14, scope: !5486)
!5498 = !DILocation(line: 304, column: 2, scope: !5486)
!5499 = distinct !{!5499, !5488, !5500, !5501, !5502}
!5500 = !DILocation(line: 306, column: 55, scope: !5481)
!5501 = !{!"llvm.loop.mustprogress"}
!5502 = !{!"llvm.loop.unroll.disable"}
!5503 = !DILocation(line: 308, column: 9, scope: !5456)
!5504 = !DILocation(line: 309, column: 1, scope: !5456)
!5505 = !DILocation(line: 308, column: 2, scope: !5456)
!5506 = !DISubprogram(name: "crypto_hash_walk_first", scope: !4674, file: !4674, line: 63, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!136, !4622, !5509}
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5510 = !DISubprogram(name: "crypto_hash_walk_done", scope: !4674, file: !4674, line: 62, type: !5511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!136, !5509, !136}
!5513 = distinct !DISubprogram(name: "shash_ahash_finup", scope: !3, file: !3, line: 322, type: !5457, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5514 = !{!5515, !5516, !5517, !5518}
!5515 = !DILocalVariable(name: "req", arg: 1, scope: !5513, file: !3, line: 322, type: !4622)
!5516 = !DILocalVariable(name: "desc", arg: 2, scope: !5513, file: !3, line: 322, type: !113)
!5517 = !DILocalVariable(name: "walk", scope: !5513, file: !3, line: 324, type: !5463)
!5518 = !DILocalVariable(name: "nbytes", scope: !5513, file: !3, line: 325, type: !136)
!5519 = !DILocation(line: 322, column: 45, scope: !5513)
!5520 = !DILocation(line: 322, column: 69, scope: !5513)
!5521 = !DILocation(line: 324, column: 2, scope: !5513)
!5522 = !DILocation(line: 324, column: 26, scope: !5513)
!5523 = !DILocation(line: 325, column: 2, scope: !5513)
!5524 = !DILocation(line: 325, column: 6, scope: !5513)
!5525 = !DILocation(line: 327, column: 34, scope: !5513)
!5526 = !DILocation(line: 327, column: 11, scope: !5513)
!5527 = !DILocation(line: 327, column: 9, scope: !5513)
!5528 = !DILocation(line: 328, column: 7, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 328, column: 6)
!5530 = !DILocation(line: 328, column: 6, scope: !5513)
!5531 = !DILocation(line: 329, column: 29, scope: !5529)
!5532 = !DILocation(line: 329, column: 35, scope: !5529)
!5533 = !DILocation(line: 329, column: 40, scope: !5529)
!5534 = !DILocation(line: 329, column: 10, scope: !5529)
!5535 = !DILocation(line: 329, column: 3, scope: !5529)
!5536 = !DILocation(line: 331, column: 2, scope: !5513)
!5537 = !DILocation(line: 332, column: 12, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 331, column: 5)
!5539 = !DILocation(line: 333, column: 24, scope: !5538)
!5540 = !DILocation(line: 333, column: 35, scope: !5538)
!5541 = !DILocation(line: 333, column: 41, scope: !5538)
!5542 = !DILocation(line: 334, column: 10, scope: !5538)
!5543 = !DILocation(line: 334, column: 15, scope: !5538)
!5544 = !DILocation(line: 333, column: 5, scope: !5538)
!5545 = !DILocation(line: 335, column: 25, scope: !5538)
!5546 = !DILocation(line: 335, column: 36, scope: !5538)
!5547 = !DILocation(line: 335, column: 42, scope: !5538)
!5548 = !DILocation(line: 335, column: 5, scope: !5538)
!5549 = !DILocation(line: 332, column: 10, scope: !5538)
!5550 = !DILocation(line: 336, column: 41, scope: !5538)
!5551 = !DILocation(line: 336, column: 12, scope: !5538)
!5552 = !DILocation(line: 336, column: 10, scope: !5538)
!5553 = !DILocation(line: 337, column: 2, scope: !5538)
!5554 = !DILocation(line: 337, column: 11, scope: !5513)
!5555 = !DILocation(line: 337, column: 18, scope: !5513)
!5556 = distinct !{!5556, !5536, !5557, !5501, !5502}
!5557 = !DILocation(line: 337, column: 21, scope: !5513)
!5558 = !DILocation(line: 339, column: 9, scope: !5513)
!5559 = !DILocation(line: 339, column: 2, scope: !5513)
!5560 = !DILocation(line: 340, column: 1, scope: !5513)
!5561 = distinct !DISubprogram(name: "crypto_hash_walk_last", scope: !4674, file: !4674, line: 66, type: !5562, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!136, !5509}
!5564 = !{!5565}
!5565 = !DILocalVariable(name: "walk", arg: 1, scope: !5561, file: !4674, line: 66, type: !5509)
!5566 = !DILocation(line: 66, column: 66, scope: !5561)
!5567 = !DILocation(line: 68, column: 11, scope: !5561)
!5568 = !DILocation(line: 68, column: 17, scope: !5561)
!5569 = !DILocation(line: 68, column: 28, scope: !5561)
!5570 = !DILocation(line: 68, column: 34, scope: !5561)
!5571 = !DILocation(line: 68, column: 26, scope: !5561)
!5572 = !DILocation(line: 68, column: 9, scope: !5561)
!5573 = !DILocation(line: 68, column: 2, scope: !5561)
!5574 = distinct !DISubprogram(name: "shash_ahash_digest", scope: !3, file: !3, line: 353, type: !5457, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5575 = !{!5576, !5577, !5578, !5579, !5580, !5581, !5582, !5585, !5586}
!5576 = !DILocalVariable(name: "req", arg: 1, scope: !5574, file: !3, line: 353, type: !4622)
!5577 = !DILocalVariable(name: "desc", arg: 2, scope: !5574, file: !3, line: 353, type: !113)
!5578 = !DILocalVariable(name: "nbytes", scope: !5574, file: !3, line: 355, type: !7)
!5579 = !DILocalVariable(name: "sg", scope: !5574, file: !3, line: 356, type: !4639)
!5580 = !DILocalVariable(name: "offset", scope: !5574, file: !3, line: 357, type: !7)
!5581 = !DILocalVariable(name: "err", scope: !5574, file: !3, line: 358, type: !136)
!5582 = !DILocalVariable(name: "__UNIQUE_ID___x348", scope: !5583, file: !3, line: 362, type: !7)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 362, column: 17)
!5584 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 360, column: 6)
!5585 = !DILocalVariable(name: "__UNIQUE_ID___y349", scope: !5583, file: !3, line: 362, type: !7)
!5586 = !DILocalVariable(name: "data", scope: !5587, file: !3, line: 363, type: !111)
!5587 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 362, column: 73)
!5588 = !DILocation(line: 353, column: 46, scope: !5574)
!5589 = !DILocation(line: 353, column: 70, scope: !5574)
!5590 = !DILocation(line: 355, column: 2, scope: !5574)
!5591 = !DILocation(line: 355, column: 15, scope: !5574)
!5592 = !DILocation(line: 355, column: 24, scope: !5574)
!5593 = !DILocation(line: 355, column: 29, scope: !5574)
!5594 = !DILocation(line: 356, column: 2, scope: !5574)
!5595 = !DILocation(line: 356, column: 22, scope: !5574)
!5596 = !DILocation(line: 357, column: 2, scope: !5574)
!5597 = !DILocation(line: 357, column: 15, scope: !5574)
!5598 = !DILocation(line: 358, column: 2, scope: !5574)
!5599 = !DILocation(line: 358, column: 6, scope: !5574)
!5600 = !DILocation(line: 360, column: 6, scope: !5584)
!5601 = !DILocation(line: 360, column: 13, scope: !5584)
!5602 = !DILocation(line: 361, column: 12, scope: !5584)
!5603 = !DILocation(line: 361, column: 17, scope: !5584)
!5604 = !DILocation(line: 361, column: 10, scope: !5584)
!5605 = !DILocation(line: 361, column: 31, scope: !5584)
!5606 = !DILocation(line: 361, column: 35, scope: !5584)
!5607 = !DILocation(line: 361, column: 29, scope: !5584)
!5608 = !DILocation(line: 362, column: 7, scope: !5584)
!5609 = !DILocation(line: 362, column: 17, scope: !5583)
!5610 = !DILocation(line: 362, column: 17, scope: !5584)
!5611 = !DILocation(line: 362, column: 14, scope: !5584)
!5612 = !DILocation(line: 360, column: 6, scope: !5574)
!5613 = !DILocation(line: 363, column: 3, scope: !5587)
!5614 = !DILocation(line: 363, column: 9, scope: !5587)
!5615 = !DILocation(line: 365, column: 34, scope: !5587)
!5616 = !DILocation(line: 365, column: 26, scope: !5587)
!5617 = !DILocation(line: 365, column: 10, scope: !5587)
!5618 = !DILocation(line: 365, column: 8, scope: !5587)
!5619 = !DILocation(line: 366, column: 29, scope: !5587)
!5620 = !DILocation(line: 366, column: 35, scope: !5587)
!5621 = !DILocation(line: 366, column: 42, scope: !5587)
!5622 = !DILocation(line: 366, column: 40, scope: !5587)
!5623 = !DILocation(line: 366, column: 50, scope: !5587)
!5624 = !DILocation(line: 367, column: 8, scope: !5587)
!5625 = !DILocation(line: 367, column: 13, scope: !5587)
!5626 = !DILocation(line: 366, column: 9, scope: !5587)
!5627 = !DILocation(line: 366, column: 7, scope: !5587)
!5628 = !DILocation(line: 368, column: 3, scope: !5587)
!5629 = !DILocation(line: 368, column: 3, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 368, column: 3)
!5631 = !DILocation(line: 368, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 368, column: 3)
!5633 = !DILocation(line: 369, column: 2, scope: !5584)
!5634 = !DILocation(line: 369, column: 2, scope: !5587)
!5635 = !DILocation(line: 370, column: 27, scope: !5584)
!5636 = !DILocation(line: 370, column: 9, scope: !5584)
!5637 = !DILocation(line: 371, column: 27, scope: !5584)
!5638 = !DILocation(line: 371, column: 32, scope: !5584)
!5639 = !DILocation(line: 371, column: 9, scope: !5584)
!5640 = !DILocation(line: 370, column: 7, scope: !5584)
!5641 = !DILocation(line: 373, column: 9, scope: !5574)
!5642 = !DILocation(line: 374, column: 1, scope: !5574)
!5643 = !DILocation(line: 373, column: 2, scope: !5574)
!5644 = distinct !DISubprogram(name: "kmap_local_page", scope: !5645, file: !5645, line: 183, type: !5646, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5648)
!5645 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!111, !1069}
!5648 = !{!5649}
!5649 = !DILocalVariable(name: "page", arg: 1, scope: !5644, file: !5645, line: 183, type: !1069)
!5650 = !DILocation(line: 183, column: 50, scope: !5644)
!5651 = !DILocation(line: 185, column: 9, scope: !5644)
!5652 = !DILocation(line: 185, column: 2, scope: !5644)
!5653 = distinct !DISubprogram(name: "sg_page", scope: !4641, file: !4641, line: 168, type: !5654, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5656)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!1069, !4639}
!5656 = !{!5657}
!5657 = !DILocalVariable(name: "sg", arg: 1, scope: !5653, file: !4641, line: 168, type: !4639)
!5658 = !DILocation(line: 168, column: 56, scope: !5653)
!5659 = !DILocation(line: 173, column: 26, scope: !5653)
!5660 = !DILocation(line: 173, column: 31, scope: !5653)
!5661 = !DILocation(line: 173, column: 41, scope: !5653)
!5662 = !DILocation(line: 173, column: 9, scope: !5653)
!5663 = !DILocation(line: 173, column: 2, scope: !5653)
!5664 = distinct !DISubprogram(name: "__kunmap_local", scope: !5645, file: !5645, line: 203, type: !5665, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5667)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{null, !1318}
!5667 = !{!5668}
!5668 = !DILocalVariable(name: "addr", arg: 1, scope: !5664, file: !5645, line: 203, type: !1318)
!5669 = !DILocation(line: 203, column: 47, scope: !5664)
!5670 = !DILocation(line: 208, column: 1, scope: !5664)
!5671 = distinct !DISubprogram(name: "crypto_shash_init", scope: !115, file: !115, line: 994, type: !4560, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5672)
!5672 = !{!5673, !5674}
!5673 = !DILocalVariable(name: "desc", arg: 1, scope: !5671, file: !115, line: 994, type: !113)
!5674 = !DILocalVariable(name: "tfm", scope: !5671, file: !115, line: 996, type: !118)
!5675 = !DILocation(line: 994, column: 56, scope: !5671)
!5676 = !DILocation(line: 996, column: 2, scope: !5671)
!5677 = !DILocation(line: 996, column: 23, scope: !5671)
!5678 = !DILocation(line: 996, column: 29, scope: !5671)
!5679 = !DILocation(line: 996, column: 35, scope: !5671)
!5680 = !DILocation(line: 998, column: 29, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5671, file: !115, line: 998, column: 6)
!5682 = !DILocation(line: 998, column: 6, scope: !5681)
!5683 = !DILocation(line: 998, column: 34, scope: !5681)
!5684 = !DILocation(line: 998, column: 6, scope: !5671)
!5685 = !DILocation(line: 999, column: 3, scope: !5681)
!5686 = !DILocation(line: 1001, column: 26, scope: !5671)
!5687 = !DILocation(line: 1001, column: 9, scope: !5671)
!5688 = !DILocation(line: 1001, column: 32, scope: !5671)
!5689 = !DILocation(line: 1001, column: 37, scope: !5671)
!5690 = !DILocation(line: 1001, column: 2, scope: !5671)
!5691 = !DILocation(line: 1002, column: 1, scope: !5671)
!5692 = distinct !DISubprogram(name: "crypto_init_shash_ops_async", scope: !3, file: !3, line: 409, type: !187, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5693)
!5693 = !{!5694, !5695, !5696, !5697, !5698, !5700}
!5694 = !DILocalVariable(name: "tfm", arg: 1, scope: !5692, file: !3, line: 409, type: !147)
!5695 = !DILocalVariable(name: "calg", scope: !5692, file: !3, line: 411, type: !149)
!5696 = !DILocalVariable(name: "alg", scope: !5692, file: !3, line: 412, type: !4555)
!5697 = !DILocalVariable(name: "crt", scope: !5692, file: !3, line: 413, type: !4615)
!5698 = !DILocalVariable(name: "ctx", scope: !5692, file: !3, line: 414, type: !5699)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!5700 = !DILocalVariable(name: "shash", scope: !5692, file: !3, line: 415, type: !118)
!5701 = !DILocation(line: 409, column: 52, scope: !5692)
!5702 = !DILocation(line: 411, column: 2, scope: !5692)
!5703 = !DILocation(line: 411, column: 21, scope: !5692)
!5704 = !DILocation(line: 411, column: 28, scope: !5692)
!5705 = !DILocation(line: 411, column: 33, scope: !5692)
!5706 = !DILocation(line: 412, column: 2, scope: !5692)
!5707 = !DILocation(line: 412, column: 20, scope: !5692)
!5708 = !DILocation(line: 412, column: 45, scope: !5692)
!5709 = !DILocation(line: 412, column: 26, scope: !5692)
!5710 = !DILocation(line: 413, column: 2, scope: !5692)
!5711 = !DILocation(line: 413, column: 23, scope: !5692)
!5712 = !DILocation(line: 413, column: 49, scope: !5692)
!5713 = !DILocation(line: 413, column: 29, scope: !5692)
!5714 = !DILocation(line: 414, column: 2, scope: !5692)
!5715 = !DILocation(line: 414, column: 24, scope: !5692)
!5716 = !DILocation(line: 414, column: 45, scope: !5692)
!5717 = !DILocation(line: 414, column: 30, scope: !5692)
!5718 = !DILocation(line: 415, column: 2, scope: !5692)
!5719 = !DILocation(line: 415, column: 23, scope: !5692)
!5720 = !DILocation(line: 417, column: 22, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 417, column: 6)
!5722 = !DILocation(line: 417, column: 7, scope: !5721)
!5723 = !DILocation(line: 417, column: 6, scope: !5692)
!5724 = !DILocation(line: 418, column: 3, scope: !5721)
!5725 = !DILocation(line: 420, column: 28, scope: !5692)
!5726 = !DILocation(line: 420, column: 10, scope: !5692)
!5727 = !DILocation(line: 420, column: 8, scope: !5692)
!5728 = !DILocation(line: 421, column: 13, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 421, column: 6)
!5730 = !DILocation(line: 421, column: 6, scope: !5729)
!5731 = !DILocation(line: 421, column: 6, scope: !5692)
!5732 = !DILocation(line: 422, column: 18, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 421, column: 21)
!5734 = !DILocation(line: 422, column: 3, scope: !5733)
!5735 = !DILocation(line: 423, column: 18, scope: !5733)
!5736 = !DILocation(line: 423, column: 10, scope: !5733)
!5737 = !DILocation(line: 423, column: 3, scope: !5733)
!5738 = !DILocation(line: 426, column: 9, scope: !5692)
!5739 = !DILocation(line: 426, column: 3, scope: !5692)
!5740 = !DILocation(line: 426, column: 7, scope: !5692)
!5741 = !DILocation(line: 427, column: 2, scope: !5692)
!5742 = !DILocation(line: 427, column: 7, scope: !5692)
!5743 = !DILocation(line: 427, column: 12, scope: !5692)
!5744 = !DILocation(line: 429, column: 2, scope: !5692)
!5745 = !DILocation(line: 429, column: 7, scope: !5692)
!5746 = !DILocation(line: 429, column: 12, scope: !5692)
!5747 = !DILocation(line: 430, column: 2, scope: !5692)
!5748 = !DILocation(line: 430, column: 7, scope: !5692)
!5749 = !DILocation(line: 430, column: 14, scope: !5692)
!5750 = !DILocation(line: 431, column: 2, scope: !5692)
!5751 = !DILocation(line: 431, column: 7, scope: !5692)
!5752 = !DILocation(line: 431, column: 13, scope: !5692)
!5753 = !DILocation(line: 432, column: 2, scope: !5692)
!5754 = !DILocation(line: 432, column: 7, scope: !5692)
!5755 = !DILocation(line: 432, column: 13, scope: !5692)
!5756 = !DILocation(line: 433, column: 2, scope: !5692)
!5757 = !DILocation(line: 433, column: 7, scope: !5692)
!5758 = !DILocation(line: 433, column: 14, scope: !5692)
!5759 = !DILocation(line: 434, column: 34, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 434, column: 6)
!5761 = !DILocation(line: 434, column: 6, scope: !5760)
!5762 = !DILocation(line: 434, column: 6, scope: !5692)
!5763 = !DILocation(line: 435, column: 3, scope: !5760)
!5764 = !DILocation(line: 435, column: 8, scope: !5760)
!5765 = !DILocation(line: 435, column: 15, scope: !5760)
!5766 = !DILocation(line: 437, column: 25, scope: !5692)
!5767 = !DILocation(line: 437, column: 53, scope: !5692)
!5768 = !DILocation(line: 437, column: 30, scope: !5692)
!5769 = !DILocation(line: 437, column: 60, scope: !5692)
!5770 = !DILocation(line: 437, column: 2, scope: !5692)
!5771 = !DILocation(line: 440, column: 2, scope: !5692)
!5772 = !DILocation(line: 440, column: 7, scope: !5692)
!5773 = !DILocation(line: 440, column: 14, scope: !5692)
!5774 = !DILocation(line: 441, column: 2, scope: !5692)
!5775 = !DILocation(line: 441, column: 7, scope: !5692)
!5776 = !DILocation(line: 441, column: 14, scope: !5692)
!5777 = !DILocation(line: 443, column: 67, scope: !5692)
!5778 = !DILocation(line: 443, column: 45, scope: !5692)
!5779 = !DILocation(line: 443, column: 43, scope: !5692)
!5780 = !DILocation(line: 443, column: 17, scope: !5692)
!5781 = !DILocation(line: 443, column: 2, scope: !5692)
!5782 = !DILocation(line: 443, column: 7, scope: !5692)
!5783 = !DILocation(line: 443, column: 15, scope: !5692)
!5784 = !DILocation(line: 445, column: 2, scope: !5692)
!5785 = !DILocation(line: 446, column: 1, scope: !5692)
!5786 = distinct !DISubprogram(name: "__crypto_shash_alg", scope: !115, file: !115, line: 821, type: !5787, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5789)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!4555, !149}
!5789 = !{!5790, !5791}
!5790 = !DILocalVariable(name: "alg", arg: 1, scope: !5786, file: !115, line: 821, type: !149)
!5791 = !DILocalVariable(name: "__mptr", scope: !5792, file: !115, line: 823, type: !111)
!5792 = distinct !DILexicalBlock(scope: !5786, file: !115, line: 823, column: 9)
!5793 = !DILocation(line: 821, column: 71, scope: !5786)
!5794 = !DILocation(line: 823, column: 9, scope: !5792)
!5795 = !DILocation(line: 823, column: 9, scope: !5786)
!5796 = !DILocation(line: 823, column: 2, scope: !5786)
!5797 = distinct !DISubprogram(name: "__crypto_ahash_cast", scope: !115, file: !115, line: 283, type: !5798, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5800)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!4615, !147}
!5800 = !{!5801, !5802}
!5801 = !DILocalVariable(name: "tfm", arg: 1, scope: !5797, file: !115, line: 283, type: !147)
!5802 = !DILocalVariable(name: "__mptr", scope: !5803, file: !115, line: 285, type: !111)
!5803 = distinct !DILexicalBlock(scope: !5797, file: !115, line: 285, column: 9)
!5804 = !DILocation(line: 283, column: 75, scope: !5797)
!5805 = !DILocation(line: 285, column: 9, scope: !5803)
!5806 = !DILocation(line: 285, column: 9, scope: !5797)
!5807 = !DILocation(line: 285, column: 2, scope: !5797)
!5808 = distinct !DISubprogram(name: "crypto_tfm_ctx", scope: !175, file: !175, line: 184, type: !5809, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5811)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!111, !147}
!5811 = !{!5812}
!5812 = !DILocalVariable(name: "tfm", arg: 1, scope: !5808, file: !175, line: 184, type: !147)
!5813 = !DILocation(line: 184, column: 55, scope: !5808)
!5814 = !DILocation(line: 186, column: 9, scope: !5808)
!5815 = !DILocation(line: 186, column: 14, scope: !5808)
!5816 = !DILocation(line: 186, column: 2, scope: !5808)
!5817 = !DISubprogram(name: "crypto_mod_get", scope: !5818, file: !5818, line: 109, type: !5819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5818 = !DIFile(filename: "crypto/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "30af55952b42d6d15a944aa564f21699")
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!149, !149}
!5821 = distinct !DISubprogram(name: "crypto_create_tfm", scope: !5818, file: !5818, line: 134, type: !5822, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5824)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!111, !149, !172}
!5824 = !{!5825, !5826}
!5825 = !DILocalVariable(name: "alg", arg: 1, scope: !5821, file: !5818, line: 134, type: !149)
!5826 = !DILocalVariable(name: "frontend", arg: 2, scope: !5821, file: !5818, line: 135, type: !172)
!5827 = !DILocation(line: 134, column: 58, scope: !5821)
!5828 = !DILocation(line: 135, column: 30, scope: !5821)
!5829 = !DILocation(line: 137, column: 32, scope: !5821)
!5830 = !DILocation(line: 137, column: 37, scope: !5821)
!5831 = !DILocation(line: 137, column: 9, scope: !5821)
!5832 = !DILocation(line: 137, column: 2, scope: !5821)
!5833 = distinct !DISubprogram(name: "IS_ERR", scope: !5834, file: !5834, line: 59, type: !5835, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5837)
!5834 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!518, !1318}
!5837 = !{!5838}
!5838 = !DILocalVariable(name: "ptr", arg: 1, scope: !5833, file: !5834, line: 59, type: !1318)
!5839 = !DILocation(line: 59, column: 60, scope: !5833)
!5840 = !DILocation(line: 61, column: 9, scope: !5833)
!5841 = !DILocation(line: 61, column: 2, scope: !5833)
!5842 = !DISubprogram(name: "crypto_mod_put", scope: !175, file: !175, line: 146, type: !4550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5843 = distinct !DISubprogram(name: "PTR_ERR", scope: !5834, file: !5834, line: 49, type: !5844, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5846)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!796, !1318}
!5846 = !{!5847}
!5847 = !DILocalVariable(name: "ptr", arg: 1, scope: !5843, file: !5834, line: 49, type: !1318)
!5848 = !DILocation(line: 49, column: 61, scope: !5843)
!5849 = !DILocation(line: 51, column: 16, scope: !5843)
!5850 = !DILocation(line: 51, column: 9, scope: !5843)
!5851 = !DILocation(line: 51, column: 2, scope: !5843)
!5852 = distinct !DISubprogram(name: "crypto_exit_shash_ops_async", scope: !3, file: !3, line: 402, type: !145, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5853)
!5853 = !{!5854, !5855}
!5854 = !DILocalVariable(name: "tfm", arg: 1, scope: !5852, file: !3, line: 402, type: !147)
!5855 = !DILocalVariable(name: "ctx", scope: !5852, file: !3, line: 404, type: !5699)
!5856 = !DILocation(line: 402, column: 60, scope: !5852)
!5857 = !DILocation(line: 404, column: 2, scope: !5852)
!5858 = !DILocation(line: 404, column: 24, scope: !5852)
!5859 = !DILocation(line: 404, column: 45, scope: !5852)
!5860 = !DILocation(line: 404, column: 30, scope: !5852)
!5861 = !DILocation(line: 406, column: 21, scope: !5852)
!5862 = !DILocation(line: 406, column: 20, scope: !5852)
!5863 = !DILocation(line: 406, column: 2, scope: !5852)
!5864 = !DILocation(line: 407, column: 1, scope: !5852)
!5865 = distinct !DISubprogram(name: "shash_async_init", scope: !3, file: !3, line: 289, type: !4620, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5866)
!5866 = !{!5867, !5868, !5869}
!5867 = !DILocalVariable(name: "req", arg: 1, scope: !5865, file: !3, line: 289, type: !4622)
!5868 = !DILocalVariable(name: "ctx", scope: !5865, file: !3, line: 291, type: !5699)
!5869 = !DILocalVariable(name: "desc", scope: !5865, file: !3, line: 292, type: !113)
!5870 = !DILocation(line: 289, column: 51, scope: !5865)
!5871 = !DILocation(line: 291, column: 2, scope: !5865)
!5872 = !DILocation(line: 291, column: 24, scope: !5865)
!5873 = !DILocation(line: 291, column: 67, scope: !5865)
!5874 = !DILocation(line: 291, column: 47, scope: !5865)
!5875 = !DILocation(line: 291, column: 30, scope: !5865)
!5876 = !DILocation(line: 292, column: 2, scope: !5865)
!5877 = !DILocation(line: 292, column: 21, scope: !5865)
!5878 = !DILocation(line: 292, column: 46, scope: !5865)
!5879 = !DILocation(line: 292, column: 28, scope: !5865)
!5880 = !DILocation(line: 294, column: 15, scope: !5865)
!5881 = !DILocation(line: 294, column: 14, scope: !5865)
!5882 = !DILocation(line: 294, column: 2, scope: !5865)
!5883 = !DILocation(line: 294, column: 8, scope: !5865)
!5884 = !DILocation(line: 294, column: 12, scope: !5865)
!5885 = !DILocation(line: 296, column: 27, scope: !5865)
!5886 = !DILocation(line: 296, column: 9, scope: !5865)
!5887 = !DILocation(line: 297, column: 1, scope: !5865)
!5888 = !DILocation(line: 296, column: 2, scope: !5865)
!5889 = distinct !DISubprogram(name: "shash_async_update", scope: !3, file: !3, line: 312, type: !4620, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5890 = !{!5891}
!5891 = !DILocalVariable(name: "req", arg: 1, scope: !5889, file: !3, line: 312, type: !4622)
!5892 = !DILocation(line: 312, column: 53, scope: !5889)
!5893 = !DILocation(line: 314, column: 28, scope: !5889)
!5894 = !DILocation(line: 314, column: 51, scope: !5889)
!5895 = !DILocation(line: 314, column: 33, scope: !5889)
!5896 = !DILocation(line: 314, column: 9, scope: !5889)
!5897 = !DILocation(line: 314, column: 2, scope: !5889)
!5898 = distinct !DISubprogram(name: "shash_async_final", scope: !3, file: !3, line: 317, type: !4620, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5899 = !{!5900}
!5900 = !DILocalVariable(name: "req", arg: 1, scope: !5898, file: !3, line: 317, type: !4622)
!5901 = !DILocation(line: 317, column: 52, scope: !5898)
!5902 = !DILocation(line: 319, column: 46, scope: !5898)
!5903 = !DILocation(line: 319, column: 28, scope: !5898)
!5904 = !DILocation(line: 319, column: 52, scope: !5898)
!5905 = !DILocation(line: 319, column: 57, scope: !5898)
!5906 = !DILocation(line: 319, column: 9, scope: !5898)
!5907 = !DILocation(line: 319, column: 2, scope: !5898)
!5908 = distinct !DISubprogram(name: "shash_async_finup", scope: !3, file: !3, line: 343, type: !4620, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5909 = !{!5910, !5911, !5912}
!5910 = !DILocalVariable(name: "req", arg: 1, scope: !5908, file: !3, line: 343, type: !4622)
!5911 = !DILocalVariable(name: "ctx", scope: !5908, file: !3, line: 345, type: !5699)
!5912 = !DILocalVariable(name: "desc", scope: !5908, file: !3, line: 346, type: !113)
!5913 = !DILocation(line: 343, column: 52, scope: !5908)
!5914 = !DILocation(line: 345, column: 2, scope: !5908)
!5915 = !DILocation(line: 345, column: 24, scope: !5908)
!5916 = !DILocation(line: 345, column: 67, scope: !5908)
!5917 = !DILocation(line: 345, column: 47, scope: !5908)
!5918 = !DILocation(line: 345, column: 30, scope: !5908)
!5919 = !DILocation(line: 346, column: 2, scope: !5908)
!5920 = !DILocation(line: 346, column: 21, scope: !5908)
!5921 = !DILocation(line: 346, column: 46, scope: !5908)
!5922 = !DILocation(line: 346, column: 28, scope: !5908)
!5923 = !DILocation(line: 348, column: 15, scope: !5908)
!5924 = !DILocation(line: 348, column: 14, scope: !5908)
!5925 = !DILocation(line: 348, column: 2, scope: !5908)
!5926 = !DILocation(line: 348, column: 8, scope: !5908)
!5927 = !DILocation(line: 348, column: 12, scope: !5908)
!5928 = !DILocation(line: 350, column: 27, scope: !5908)
!5929 = !DILocation(line: 350, column: 32, scope: !5908)
!5930 = !DILocation(line: 350, column: 9, scope: !5908)
!5931 = !DILocation(line: 351, column: 1, scope: !5908)
!5932 = !DILocation(line: 350, column: 2, scope: !5908)
!5933 = distinct !DISubprogram(name: "shash_async_digest", scope: !3, file: !3, line: 377, type: !4620, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5934)
!5934 = !{!5935, !5936, !5937}
!5935 = !DILocalVariable(name: "req", arg: 1, scope: !5933, file: !3, line: 377, type: !4622)
!5936 = !DILocalVariable(name: "ctx", scope: !5933, file: !3, line: 379, type: !5699)
!5937 = !DILocalVariable(name: "desc", scope: !5933, file: !3, line: 380, type: !113)
!5938 = !DILocation(line: 377, column: 53, scope: !5933)
!5939 = !DILocation(line: 379, column: 2, scope: !5933)
!5940 = !DILocation(line: 379, column: 24, scope: !5933)
!5941 = !DILocation(line: 379, column: 67, scope: !5933)
!5942 = !DILocation(line: 379, column: 47, scope: !5933)
!5943 = !DILocation(line: 379, column: 30, scope: !5933)
!5944 = !DILocation(line: 380, column: 2, scope: !5933)
!5945 = !DILocation(line: 380, column: 21, scope: !5933)
!5946 = !DILocation(line: 380, column: 46, scope: !5933)
!5947 = !DILocation(line: 380, column: 28, scope: !5933)
!5948 = !DILocation(line: 382, column: 15, scope: !5933)
!5949 = !DILocation(line: 382, column: 14, scope: !5933)
!5950 = !DILocation(line: 382, column: 2, scope: !5933)
!5951 = !DILocation(line: 382, column: 8, scope: !5933)
!5952 = !DILocation(line: 382, column: 12, scope: !5933)
!5953 = !DILocation(line: 384, column: 28, scope: !5933)
!5954 = !DILocation(line: 384, column: 33, scope: !5933)
!5955 = !DILocation(line: 384, column: 9, scope: !5933)
!5956 = !DILocation(line: 385, column: 1, scope: !5933)
!5957 = !DILocation(line: 384, column: 2, scope: !5933)
!5958 = distinct !DISubprogram(name: "crypto_shash_alg_has_setkey", scope: !4674, file: !4674, line: 81, type: !5959, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5961)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!518, !4555}
!5961 = !{!5962}
!5962 = !DILocalVariable(name: "alg", arg: 1, scope: !5958, file: !4674, line: 81, type: !4555)
!5963 = !DILocation(line: 81, column: 66, scope: !5958)
!5964 = !DILocation(line: 83, column: 9, scope: !5958)
!5965 = !DILocation(line: 83, column: 14, scope: !5958)
!5966 = !DILocation(line: 83, column: 21, scope: !5958)
!5967 = !DILocation(line: 83, column: 2, scope: !5958)
!5968 = distinct !DISubprogram(name: "shash_async_setkey", scope: !3, file: !3, line: 281, type: !4667, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5969)
!5969 = !{!5970, !5971, !5972, !5973}
!5970 = !DILocalVariable(name: "tfm", arg: 1, scope: !5968, file: !3, line: 281, type: !4615)
!5971 = !DILocalVariable(name: "key", arg: 2, scope: !5968, file: !3, line: 281, type: !4530)
!5972 = !DILocalVariable(name: "keylen", arg: 3, scope: !5968, file: !3, line: 282, type: !7)
!5973 = !DILocalVariable(name: "ctx", scope: !5968, file: !3, line: 284, type: !5699)
!5974 = !DILocation(line: 281, column: 52, scope: !5968)
!5975 = !DILocation(line: 281, column: 67, scope: !5968)
!5976 = !DILocation(line: 282, column: 23, scope: !5968)
!5977 = !DILocation(line: 284, column: 2, scope: !5968)
!5978 = !DILocation(line: 284, column: 24, scope: !5968)
!5979 = !DILocation(line: 284, column: 47, scope: !5968)
!5980 = !DILocation(line: 284, column: 30, scope: !5968)
!5981 = !DILocation(line: 286, column: 30, scope: !5968)
!5982 = !DILocation(line: 286, column: 29, scope: !5968)
!5983 = !DILocation(line: 286, column: 35, scope: !5968)
!5984 = !DILocation(line: 286, column: 40, scope: !5968)
!5985 = !DILocation(line: 286, column: 9, scope: !5968)
!5986 = !DILocation(line: 287, column: 1, scope: !5968)
!5987 = !DILocation(line: 286, column: 2, scope: !5968)
!5988 = distinct !DISubprogram(name: "crypto_ahash_set_flags", scope: !115, file: !115, line: 412, type: !5989, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5991)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{null, !4615, !138}
!5991 = !{!5992, !5993}
!5992 = !DILocalVariable(name: "tfm", arg: 1, scope: !5988, file: !115, line: 412, type: !4615)
!5993 = !DILocalVariable(name: "flags", arg: 2, scope: !5988, file: !115, line: 412, type: !138)
!5994 = !DILocation(line: 412, column: 64, scope: !5988)
!5995 = !DILocation(line: 412, column: 73, scope: !5988)
!5996 = !DILocation(line: 414, column: 40, scope: !5988)
!5997 = !DILocation(line: 414, column: 23, scope: !5988)
!5998 = !DILocation(line: 414, column: 46, scope: !5988)
!5999 = !DILocation(line: 414, column: 2, scope: !5988)
!6000 = !DILocation(line: 415, column: 1, scope: !5988)
!6001 = distinct !DISubprogram(name: "shash_async_export", scope: !3, file: !3, line: 387, type: !4659, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6002)
!6002 = !{!6003, !6004}
!6003 = !DILocalVariable(name: "req", arg: 1, scope: !6001, file: !3, line: 387, type: !4622)
!6004 = !DILocalVariable(name: "out", arg: 2, scope: !6001, file: !3, line: 387, type: !111)
!6005 = !DILocation(line: 387, column: 53, scope: !6001)
!6006 = !DILocation(line: 387, column: 64, scope: !6001)
!6007 = !DILocation(line: 389, column: 47, scope: !6001)
!6008 = !DILocation(line: 389, column: 29, scope: !6001)
!6009 = !DILocation(line: 389, column: 53, scope: !6001)
!6010 = !DILocation(line: 389, column: 9, scope: !6001)
!6011 = !DILocation(line: 389, column: 2, scope: !6001)
!6012 = distinct !DISubprogram(name: "shash_async_import", scope: !3, file: !3, line: 392, type: !4663, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6013 = !{!6014, !6015, !6016, !6017}
!6014 = !DILocalVariable(name: "req", arg: 1, scope: !6012, file: !3, line: 392, type: !4622)
!6015 = !DILocalVariable(name: "in", arg: 2, scope: !6012, file: !3, line: 392, type: !1318)
!6016 = !DILocalVariable(name: "ctx", scope: !6012, file: !3, line: 394, type: !5699)
!6017 = !DILocalVariable(name: "desc", scope: !6012, file: !3, line: 395, type: !113)
!6018 = !DILocation(line: 392, column: 53, scope: !6012)
!6019 = !DILocation(line: 392, column: 70, scope: !6012)
!6020 = !DILocation(line: 394, column: 2, scope: !6012)
!6021 = !DILocation(line: 394, column: 24, scope: !6012)
!6022 = !DILocation(line: 394, column: 67, scope: !6012)
!6023 = !DILocation(line: 394, column: 47, scope: !6012)
!6024 = !DILocation(line: 394, column: 30, scope: !6012)
!6025 = !DILocation(line: 395, column: 2, scope: !6012)
!6026 = !DILocation(line: 395, column: 21, scope: !6012)
!6027 = !DILocation(line: 395, column: 46, scope: !6012)
!6028 = !DILocation(line: 395, column: 28, scope: !6012)
!6029 = !DILocation(line: 397, column: 15, scope: !6012)
!6030 = !DILocation(line: 397, column: 14, scope: !6012)
!6031 = !DILocation(line: 397, column: 2, scope: !6012)
!6032 = !DILocation(line: 397, column: 8, scope: !6012)
!6033 = !DILocation(line: 397, column: 12, scope: !6012)
!6034 = !DILocation(line: 399, column: 29, scope: !6012)
!6035 = !DILocation(line: 399, column: 35, scope: !6012)
!6036 = !DILocation(line: 399, column: 9, scope: !6012)
!6037 = !DILocation(line: 400, column: 1, scope: !6012)
!6038 = !DILocation(line: 399, column: 2, scope: !6012)
!6039 = distinct !DISubprogram(name: "crypto_shash_descsize", scope: !115, file: !115, line: 880, type: !4857, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6040 = !{!6041}
!6041 = !DILocalVariable(name: "tfm", arg: 1, scope: !6039, file: !115, line: 880, type: !118)
!6042 = !DILocation(line: 880, column: 71, scope: !6039)
!6043 = !DILocation(line: 882, column: 9, scope: !6039)
!6044 = !DILocation(line: 882, column: 14, scope: !6039)
!6045 = !DILocation(line: 882, column: 2, scope: !6039)
!6046 = distinct !DISubprogram(name: "crypto_clone_shash_ops_async", scope: !3, file: !3, line: 448, type: !6047, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6049)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{!4615, !4615, !4615}
!6049 = !{!6050, !6051, !6052, !6053, !6054}
!6050 = !DILocalVariable(name: "nhash", arg: 1, scope: !6046, file: !3, line: 448, type: !4615)
!6051 = !DILocalVariable(name: "hash", arg: 2, scope: !6046, file: !3, line: 449, type: !4615)
!6052 = !DILocalVariable(name: "nctx", scope: !6046, file: !3, line: 451, type: !5699)
!6053 = !DILocalVariable(name: "ctx", scope: !6046, file: !3, line: 452, type: !5699)
!6054 = !DILocalVariable(name: "shash", scope: !6046, file: !3, line: 453, type: !118)
!6055 = !DILocation(line: 448, column: 72, scope: !6046)
!6056 = !DILocation(line: 449, column: 30, scope: !6046)
!6057 = !DILocation(line: 451, column: 2, scope: !6046)
!6058 = !DILocation(line: 451, column: 24, scope: !6046)
!6059 = !DILocation(line: 451, column: 48, scope: !6046)
!6060 = !DILocation(line: 451, column: 31, scope: !6046)
!6061 = !DILocation(line: 452, column: 2, scope: !6046)
!6062 = !DILocation(line: 452, column: 24, scope: !6046)
!6063 = !DILocation(line: 452, column: 47, scope: !6046)
!6064 = !DILocation(line: 452, column: 30, scope: !6046)
!6065 = !DILocation(line: 453, column: 2, scope: !6046)
!6066 = !DILocation(line: 453, column: 23, scope: !6046)
!6067 = !DILocation(line: 455, column: 30, scope: !6046)
!6068 = !DILocation(line: 455, column: 29, scope: !6046)
!6069 = !DILocation(line: 455, column: 10, scope: !6046)
!6070 = !DILocation(line: 455, column: 8, scope: !6046)
!6071 = !DILocation(line: 456, column: 13, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6046, file: !3, line: 456, column: 6)
!6073 = !DILocation(line: 456, column: 6, scope: !6072)
!6074 = !DILocation(line: 456, column: 6, scope: !6046)
!6075 = !DILocation(line: 457, column: 21, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 456, column: 21)
!6077 = !DILocation(line: 457, column: 3, scope: !6076)
!6078 = !DILocation(line: 458, column: 19, scope: !6076)
!6079 = !DILocation(line: 458, column: 10, scope: !6076)
!6080 = !DILocation(line: 458, column: 3, scope: !6076)
!6081 = !DILocation(line: 461, column: 10, scope: !6046)
!6082 = !DILocation(line: 461, column: 3, scope: !6046)
!6083 = !DILocation(line: 461, column: 8, scope: !6046)
!6084 = !DILocation(line: 463, column: 9, scope: !6046)
!6085 = !DILocation(line: 463, column: 2, scope: !6046)
!6086 = !DILocation(line: 464, column: 1, scope: !6046)
!6087 = distinct !DISubprogram(name: "crypto_ahash_ctx", scope: !4674, file: !4674, line: 136, type: !6088, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!111, !4615}
!6090 = !{!6091}
!6091 = !DILocalVariable(name: "tfm", arg: 1, scope: !6087, file: !4674, line: 136, type: !4615)
!6092 = !DILocation(line: 136, column: 59, scope: !6087)
!6093 = !DILocation(line: 138, column: 41, scope: !6087)
!6094 = !DILocation(line: 138, column: 24, scope: !6087)
!6095 = !DILocation(line: 138, column: 9, scope: !6087)
!6096 = !DILocation(line: 138, column: 2, scope: !6087)
!6097 = distinct !DISubprogram(name: "crypto_clone_shash", scope: !3, file: !3, line: 585, type: !6098, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{!118, !118}
!6100 = !{!6101, !6102, !6103, !6104, !6105}
!6101 = !DILocalVariable(name: "hash", arg: 1, scope: !6097, file: !3, line: 585, type: !118)
!6102 = !DILocalVariable(name: "tfm", scope: !6097, file: !3, line: 587, type: !147)
!6103 = !DILocalVariable(name: "alg", scope: !6097, file: !3, line: 588, type: !4555)
!6104 = !DILocalVariable(name: "nhash", scope: !6097, file: !3, line: 589, type: !118)
!6105 = !DILocalVariable(name: "err", scope: !6097, file: !3, line: 590, type: !136)
!6106 = !DILocation(line: 585, column: 62, scope: !6097)
!6107 = !DILocation(line: 587, column: 2, scope: !6097)
!6108 = !DILocation(line: 587, column: 21, scope: !6097)
!6109 = !DILocation(line: 587, column: 44, scope: !6097)
!6110 = !DILocation(line: 587, column: 27, scope: !6097)
!6111 = !DILocation(line: 588, column: 2, scope: !6097)
!6112 = !DILocation(line: 588, column: 20, scope: !6097)
!6113 = !DILocation(line: 588, column: 43, scope: !6097)
!6114 = !DILocation(line: 588, column: 26, scope: !6097)
!6115 = !DILocation(line: 589, column: 2, scope: !6097)
!6116 = !DILocation(line: 589, column: 23, scope: !6097)
!6117 = !DILocation(line: 590, column: 2, scope: !6097)
!6118 = !DILocation(line: 590, column: 6, scope: !6097)
!6119 = !DILocation(line: 592, column: 35, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 592, column: 6)
!6121 = !DILocation(line: 592, column: 7, scope: !6120)
!6122 = !DILocation(line: 592, column: 6, scope: !6097)
!6123 = !DILocation(line: 593, column: 24, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 592, column: 41)
!6125 = !DILocation(line: 593, column: 9, scope: !6124)
!6126 = !DILocation(line: 593, column: 7, scope: !6124)
!6127 = !DILocation(line: 594, column: 14, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 594, column: 7)
!6129 = !DILocation(line: 594, column: 7, scope: !6128)
!6130 = !DILocation(line: 594, column: 7, scope: !6124)
!6131 = !DILocation(line: 595, column: 20, scope: !6128)
!6132 = !DILocation(line: 595, column: 11, scope: !6128)
!6133 = !DILocation(line: 595, column: 4, scope: !6128)
!6134 = !DILocation(line: 597, column: 10, scope: !6124)
!6135 = !DILocation(line: 597, column: 3, scope: !6124)
!6136 = !DILocation(line: 600, column: 7, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 600, column: 6)
!6138 = !DILocation(line: 600, column: 12, scope: !6137)
!6139 = !DILocation(line: 600, column: 22, scope: !6137)
!6140 = !DILocation(line: 600, column: 26, scope: !6137)
!6141 = !DILocation(line: 600, column: 31, scope: !6137)
!6142 = !DILocation(line: 600, column: 40, scope: !6137)
!6143 = !DILocation(line: 600, column: 43, scope: !6137)
!6144 = !DILocation(line: 600, column: 48, scope: !6137)
!6145 = !DILocation(line: 600, column: 53, scope: !6137)
!6146 = !DILocation(line: 600, column: 6, scope: !6097)
!6147 = !DILocation(line: 601, column: 10, scope: !6137)
!6148 = !DILocation(line: 601, column: 3, scope: !6137)
!6149 = !DILocation(line: 603, column: 47, scope: !6097)
!6150 = !DILocation(line: 603, column: 10, scope: !6097)
!6151 = !DILocation(line: 603, column: 8, scope: !6097)
!6152 = !DILocation(line: 604, column: 13, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 604, column: 6)
!6154 = !DILocation(line: 604, column: 6, scope: !6153)
!6155 = !DILocation(line: 604, column: 6, scope: !6097)
!6156 = !DILocation(line: 605, column: 10, scope: !6153)
!6157 = !DILocation(line: 605, column: 3, scope: !6153)
!6158 = !DILocation(line: 607, column: 20, scope: !6097)
!6159 = !DILocation(line: 607, column: 26, scope: !6097)
!6160 = !DILocation(line: 607, column: 2, scope: !6097)
!6161 = !DILocation(line: 607, column: 9, scope: !6097)
!6162 = !DILocation(line: 607, column: 18, scope: !6097)
!6163 = !DILocation(line: 609, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 609, column: 6)
!6165 = !DILocation(line: 609, column: 11, scope: !6164)
!6166 = !DILocation(line: 609, column: 6, scope: !6097)
!6167 = !DILocation(line: 610, column: 9, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 609, column: 22)
!6169 = !DILocation(line: 610, column: 14, scope: !6168)
!6170 = !DILocation(line: 610, column: 24, scope: !6168)
!6171 = !DILocation(line: 610, column: 31, scope: !6168)
!6172 = !DILocation(line: 610, column: 7, scope: !6168)
!6173 = !DILocation(line: 611, column: 7, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 611, column: 7)
!6175 = !DILocation(line: 611, column: 7, scope: !6168)
!6176 = !DILocation(line: 612, column: 22, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 611, column: 12)
!6178 = !DILocation(line: 612, column: 4, scope: !6177)
!6179 = !DILocation(line: 613, column: 19, scope: !6177)
!6180 = !DILocation(line: 613, column: 11, scope: !6177)
!6181 = !DILocation(line: 613, column: 4, scope: !6177)
!6182 = !DILocation(line: 615, column: 2, scope: !6168)
!6183 = !DILocation(line: 617, column: 9, scope: !6097)
!6184 = !DILocation(line: 617, column: 2, scope: !6097)
!6185 = !DILocation(line: 618, column: 1, scope: !6097)
!6186 = distinct !DISubprogram(name: "crypto_free_ahash", scope: !115, file: !115, line: 318, type: !6187, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6189)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{null, !4615}
!6189 = !{!6190}
!6190 = !DILocalVariable(name: "tfm", arg: 1, scope: !6186, file: !115, line: 318, type: !4615)
!6191 = !DILocation(line: 318, column: 59, scope: !6186)
!6192 = !DILocation(line: 320, column: 21, scope: !6186)
!6193 = !DILocation(line: 320, column: 43, scope: !6186)
!6194 = !DILocation(line: 320, column: 26, scope: !6186)
!6195 = !DILocation(line: 320, column: 2, scope: !6186)
!6196 = !DILocation(line: 321, column: 1, scope: !6186)
!6197 = distinct !DISubprogram(name: "ERR_CAST", scope: !5834, file: !5834, line: 82, type: !6198, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6200)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!111, !1318}
!6200 = !{!6201}
!6201 = !DILocalVariable(name: "ptr", arg: 1, scope: !6197, file: !5834, line: 82, type: !1318)
!6202 = !DILocation(line: 82, column: 64, scope: !6197)
!6203 = !DILocation(line: 85, column: 18, scope: !6197)
!6204 = !DILocation(line: 85, column: 2, scope: !6197)
!6205 = distinct !DISubprogram(name: "crypto_grab_shash", scope: !3, file: !3, line: 563, type: !6206, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6212)
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!136, !6208, !4473, !521, !138, !138}
!6208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6209, size: 64)
!6209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash_spawn", file: !4674, line: 58, size: 384, elements: !6210)
!6210 = !{!6211}
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6209, file: !4674, line: 59, baseType: !4498, size: 384)
!6212 = !{!6213, !6214, !6215, !6216, !6217}
!6213 = !DILocalVariable(name: "spawn", arg: 1, scope: !6205, file: !3, line: 563, type: !6208)
!6214 = !DILocalVariable(name: "inst", arg: 2, scope: !6205, file: !3, line: 564, type: !4473)
!6215 = !DILocalVariable(name: "name", arg: 3, scope: !6205, file: !3, line: 565, type: !521)
!6216 = !DILocalVariable(name: "type", arg: 4, scope: !6205, file: !3, line: 565, type: !138)
!6217 = !DILocalVariable(name: "mask", arg: 5, scope: !6205, file: !3, line: 565, type: !138)
!6218 = !DILocation(line: 563, column: 50, scope: !6205)
!6219 = !DILocation(line: 564, column: 33, scope: !6205)
!6220 = !DILocation(line: 565, column: 21, scope: !6205)
!6221 = !DILocation(line: 565, column: 31, scope: !6205)
!6222 = !DILocation(line: 565, column: 41, scope: !6205)
!6223 = !DILocation(line: 567, column: 2, scope: !6205)
!6224 = !DILocation(line: 567, column: 9, scope: !6205)
!6225 = !DILocation(line: 567, column: 14, scope: !6205)
!6226 = !DILocation(line: 567, column: 23, scope: !6205)
!6227 = !DILocation(line: 568, column: 28, scope: !6205)
!6228 = !DILocation(line: 568, column: 35, scope: !6205)
!6229 = !DILocation(line: 568, column: 41, scope: !6205)
!6230 = !DILocation(line: 568, column: 47, scope: !6205)
!6231 = !DILocation(line: 568, column: 53, scope: !6205)
!6232 = !DILocation(line: 568, column: 59, scope: !6205)
!6233 = !DILocation(line: 568, column: 9, scope: !6205)
!6234 = !DILocation(line: 568, column: 2, scope: !6205)
!6235 = !DISubprogram(name: "crypto_grab_spawn", scope: !175, file: !175, line: 158, type: !6236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!136, !4497, !4473, !521, !138, !138}
!6238 = distinct !DISubprogram(name: "crypto_alloc_shash", scope: !3, file: !3, line: 572, type: !6239, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6241)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{!118, !521, !138, !138}
!6241 = !{!6242, !6243, !6244}
!6242 = !DILocalVariable(name: "alg_name", arg: 1, scope: !6238, file: !3, line: 572, type: !521)
!6243 = !DILocalVariable(name: "type", arg: 2, scope: !6238, file: !3, line: 572, type: !138)
!6244 = !DILocalVariable(name: "mask", arg: 3, scope: !6238, file: !3, line: 573, type: !138)
!6245 = !DILocation(line: 572, column: 53, scope: !6238)
!6246 = !DILocation(line: 572, column: 67, scope: !6238)
!6247 = !DILocation(line: 573, column: 10, scope: !6238)
!6248 = !DILocation(line: 575, column: 26, scope: !6238)
!6249 = !DILocation(line: 575, column: 56, scope: !6238)
!6250 = !DILocation(line: 575, column: 62, scope: !6238)
!6251 = !DILocation(line: 575, column: 9, scope: !6238)
!6252 = !DILocation(line: 575, column: 2, scope: !6238)
!6253 = distinct !DISubprogram(name: "crypto_alloc_tfm", scope: !5818, file: !5818, line: 148, type: !6254, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6256)
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!111, !521, !172, !138, !138}
!6256 = !{!6257, !6258, !6259, !6260}
!6257 = !DILocalVariable(name: "alg_name", arg: 1, scope: !6253, file: !5818, line: 148, type: !521)
!6258 = !DILocalVariable(name: "frontend", arg: 2, scope: !6253, file: !5818, line: 149, type: !172)
!6259 = !DILocalVariable(name: "type", arg: 3, scope: !6253, file: !5818, line: 149, type: !138)
!6260 = !DILocalVariable(name: "mask", arg: 4, scope: !6253, file: !5818, line: 149, type: !138)
!6261 = !DILocation(line: 148, column: 50, scope: !6253)
!6262 = !DILocation(line: 149, column: 36, scope: !6253)
!6263 = !DILocation(line: 149, column: 50, scope: !6253)
!6264 = !DILocation(line: 149, column: 60, scope: !6253)
!6265 = !DILocation(line: 151, column: 31, scope: !6253)
!6266 = !DILocation(line: 151, column: 41, scope: !6253)
!6267 = !DILocation(line: 151, column: 51, scope: !6253)
!6268 = !DILocation(line: 151, column: 57, scope: !6253)
!6269 = !DILocation(line: 151, column: 9, scope: !6253)
!6270 = !DILocation(line: 151, column: 2, scope: !6253)
!6271 = distinct !DISubprogram(name: "crypto_has_shash", scope: !3, file: !3, line: 579, type: !6272, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6274)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!136, !521, !138, !138}
!6274 = !{!6275, !6276, !6277}
!6275 = !DILocalVariable(name: "alg_name", arg: 1, scope: !6271, file: !3, line: 579, type: !521)
!6276 = !DILocalVariable(name: "type", arg: 2, scope: !6271, file: !3, line: 579, type: !138)
!6277 = !DILocalVariable(name: "mask", arg: 3, scope: !6271, file: !3, line: 579, type: !138)
!6278 = !DILocation(line: 579, column: 34, scope: !6271)
!6279 = !DILocation(line: 579, column: 48, scope: !6271)
!6280 = !DILocation(line: 579, column: 58, scope: !6271)
!6281 = !DILocation(line: 581, column: 29, scope: !6271)
!6282 = !DILocation(line: 581, column: 59, scope: !6271)
!6283 = !DILocation(line: 581, column: 65, scope: !6271)
!6284 = !DILocation(line: 581, column: 9, scope: !6271)
!6285 = !DILocation(line: 581, column: 2, scope: !6271)
!6286 = !DISubprogram(name: "crypto_type_has_alg", scope: !5818, file: !5818, line: 158, type: !6287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6287 = !DISubroutineType(types: !6288)
!6288 = !{!136, !521, !172, !138, !138}
!6289 = distinct !DISubprogram(name: "crypto_shash_tfm", scope: !115, file: !115, line: 775, type: !6290, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6292)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!147, !118}
!6292 = !{!6293}
!6293 = !DILocalVariable(name: "tfm", arg: 1, scope: !6289, file: !115, line: 775, type: !118)
!6294 = !DILocation(line: 775, column: 72, scope: !6289)
!6295 = !DILocation(line: 777, column: 10, scope: !6289)
!6296 = !DILocation(line: 777, column: 15, scope: !6289)
!6297 = !DILocation(line: 777, column: 2, scope: !6289)
!6298 = distinct !DISubprogram(name: "crypto_tfm_get", scope: !5818, file: !5818, line: 214, type: !6299, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6301)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!147, !147}
!6301 = !{!6302}
!6302 = !DILocalVariable(name: "tfm", arg: 1, scope: !6298, file: !5818, line: 214, type: !147)
!6303 = !DILocation(line: 214, column: 68, scope: !6298)
!6304 = !DILocation(line: 216, column: 32, scope: !6298)
!6305 = !DILocation(line: 216, column: 37, scope: !6298)
!6306 = !DILocation(line: 216, column: 9, scope: !6298)
!6307 = !DILocation(line: 216, column: 47, scope: !6298)
!6308 = !DILocation(line: 216, column: 53, scope: !6298)
!6309 = !DILocation(line: 216, column: 2, scope: !6298)
!6310 = distinct !DISubprogram(name: "ERR_PTR", scope: !5834, file: !5834, line: 39, type: !6311, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6313)
!6311 = !DISubroutineType(types: !6312)
!6312 = !{!111, !796}
!6313 = !{!6314}
!6314 = !DILocalVariable(name: "error", arg: 1, scope: !6310, file: !5834, line: 39, type: !796)
!6315 = !DILocation(line: 39, column: 48, scope: !6310)
!6316 = !DILocation(line: 41, column: 18, scope: !6310)
!6317 = !DILocation(line: 41, column: 9, scope: !6310)
!6318 = !DILocation(line: 41, column: 2, scope: !6310)
!6319 = !DISubprogram(name: "crypto_clone_tfm", scope: !5818, file: !5818, line: 127, type: !6320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = !DISubroutineType(types: !6321)
!6321 = !{!111, !172, !147}
!6322 = distinct !DISubprogram(name: "crypto_free_shash", scope: !115, file: !115, line: 786, type: !4593, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6323)
!6323 = !{!6324}
!6324 = !DILocalVariable(name: "tfm", arg: 1, scope: !6322, file: !115, line: 786, type: !118)
!6325 = !DILocation(line: 786, column: 59, scope: !6322)
!6326 = !DILocation(line: 788, column: 21, scope: !6322)
!6327 = !DILocation(line: 788, column: 43, scope: !6322)
!6328 = !DILocation(line: 788, column: 26, scope: !6322)
!6329 = !DILocation(line: 788, column: 2, scope: !6322)
!6330 = !DILocation(line: 789, column: 1, scope: !6322)
!6331 = distinct !DISubprogram(name: "hash_prepare_alg", scope: !3, file: !3, line: 621, type: !6332, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!136, !6334}
!6334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!6335 = !{!6336, !6337, !6344}
!6336 = !DILocalVariable(name: "alg", arg: 1, scope: !6331, file: !3, line: 621, type: !6334)
!6337 = !DILocalVariable(name: "istat", scope: !6331, file: !3, line: 623, type: !6338)
!6338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6339, size: 64)
!6339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_istat_hash", file: !115, line: 32, size: 192, elements: !6340)
!6340 = !{!6341, !6342, !6343}
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "hash_cnt", scope: !6339, file: !115, line: 33, baseType: !219, size: 64)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "hash_tlen", scope: !6339, file: !115, line: 34, baseType: !219, size: 64, offset: 64)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "err_cnt", scope: !6339, file: !115, line: 35, baseType: !219, size: 64, offset: 128)
!6344 = !DILocalVariable(name: "base", scope: !6331, file: !3, line: 624, type: !149)
!6345 = !DILocation(line: 621, column: 46, scope: !6331)
!6346 = !DILocation(line: 623, column: 2, scope: !6331)
!6347 = !DILocation(line: 623, column: 28, scope: !6331)
!6348 = !DILocation(line: 623, column: 50, scope: !6331)
!6349 = !DILocation(line: 623, column: 36, scope: !6331)
!6350 = !DILocation(line: 624, column: 2, scope: !6331)
!6351 = !DILocation(line: 624, column: 21, scope: !6331)
!6352 = !DILocation(line: 624, column: 29, scope: !6331)
!6353 = !DILocation(line: 624, column: 34, scope: !6331)
!6354 = !DILocation(line: 626, column: 6, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 626, column: 6)
!6356 = !DILocation(line: 626, column: 11, scope: !6355)
!6357 = !DILocation(line: 626, column: 22, scope: !6355)
!6358 = !DILocation(line: 626, column: 6, scope: !6331)
!6359 = !DILocation(line: 627, column: 3, scope: !6355)
!6360 = !DILocation(line: 629, column: 2, scope: !6331)
!6361 = !DILocation(line: 629, column: 8, scope: !6331)
!6362 = !DILocation(line: 629, column: 18, scope: !6331)
!6363 = !DILocation(line: 634, column: 2, scope: !6331)
!6364 = !DILocation(line: 635, column: 1, scope: !6331)
!6365 = distinct !DISubprogram(name: "hash_get_stat", scope: !115, file: !115, line: 569, type: !6366, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6368)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!6338, !6334}
!6368 = !{!6369}
!6369 = !DILocalVariable(name: "alg", arg: 1, scope: !6365, file: !115, line: 570, type: !6334)
!6370 = !DILocation(line: 570, column: 26, scope: !6365)
!6371 = !DILocation(line: 575, column: 2, scope: !6365)
!6372 = distinct !DISubprogram(name: "crypto_register_shash", scope: !3, file: !3, line: 673, type: !6373, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6375)
!6373 = !DISubroutineType(types: !6374)
!6374 = !{!136, !4555}
!6375 = !{!6376, !6377, !6378}
!6376 = !DILocalVariable(name: "alg", arg: 1, scope: !6372, file: !3, line: 673, type: !4555)
!6377 = !DILocalVariable(name: "base", scope: !6372, file: !3, line: 675, type: !149)
!6378 = !DILocalVariable(name: "err", scope: !6372, file: !3, line: 676, type: !136)
!6379 = !DILocation(line: 673, column: 45, scope: !6372)
!6380 = !DILocation(line: 675, column: 2, scope: !6372)
!6381 = !DILocation(line: 675, column: 21, scope: !6372)
!6382 = !DILocation(line: 675, column: 29, scope: !6372)
!6383 = !DILocation(line: 675, column: 34, scope: !6372)
!6384 = !DILocation(line: 676, column: 2, scope: !6372)
!6385 = !DILocation(line: 676, column: 6, scope: !6372)
!6386 = !DILocation(line: 678, column: 26, scope: !6372)
!6387 = !DILocation(line: 678, column: 8, scope: !6372)
!6388 = !DILocation(line: 678, column: 6, scope: !6372)
!6389 = !DILocation(line: 679, column: 6, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 679, column: 6)
!6391 = !DILocation(line: 679, column: 6, scope: !6372)
!6392 = !DILocation(line: 680, column: 10, scope: !6390)
!6393 = !DILocation(line: 680, column: 3, scope: !6390)
!6394 = !DILocation(line: 682, column: 29, scope: !6372)
!6395 = !DILocation(line: 682, column: 9, scope: !6372)
!6396 = !DILocation(line: 682, column: 2, scope: !6372)
!6397 = !DILocation(line: 683, column: 1, scope: !6372)
!6398 = distinct !DISubprogram(name: "shash_prepare_alg", scope: !3, file: !3, line: 637, type: !6373, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6399)
!6399 = !{!6400, !6401, !6402}
!6400 = !DILocalVariable(name: "alg", arg: 1, scope: !6398, file: !3, line: 637, type: !4555)
!6401 = !DILocalVariable(name: "base", scope: !6398, file: !3, line: 639, type: !149)
!6402 = !DILocalVariable(name: "err", scope: !6398, file: !3, line: 640, type: !136)
!6403 = !DILocation(line: 637, column: 48, scope: !6398)
!6404 = !DILocation(line: 639, column: 2, scope: !6398)
!6405 = !DILocation(line: 639, column: 21, scope: !6398)
!6406 = !DILocation(line: 639, column: 29, scope: !6398)
!6407 = !DILocation(line: 639, column: 34, scope: !6398)
!6408 = !DILocation(line: 639, column: 39, scope: !6398)
!6409 = !DILocation(line: 640, column: 2, scope: !6398)
!6410 = !DILocation(line: 640, column: 6, scope: !6398)
!6411 = !DILocation(line: 642, column: 6, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 642, column: 6)
!6413 = !DILocation(line: 642, column: 11, scope: !6412)
!6414 = !DILocation(line: 642, column: 20, scope: !6412)
!6415 = !DILocation(line: 642, column: 6, scope: !6398)
!6416 = !DILocation(line: 643, column: 3, scope: !6412)
!6417 = !DILocation(line: 645, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 645, column: 6)
!6419 = !DILocation(line: 645, column: 12, scope: !6418)
!6420 = !DILocation(line: 645, column: 26, scope: !6418)
!6421 = !DILocation(line: 645, column: 6, scope: !6398)
!6422 = !DILocation(line: 646, column: 3, scope: !6418)
!6423 = !DILocation(line: 648, column: 7, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 648, column: 6)
!6425 = !DILocation(line: 648, column: 12, scope: !6424)
!6426 = !DILocation(line: 648, column: 19, scope: !6424)
!6427 = !DILocation(line: 648, column: 23, scope: !6424)
!6428 = !DILocation(line: 648, column: 28, scope: !6424)
!6429 = !DILocation(line: 648, column: 36, scope: !6424)
!6430 = !DILocation(line: 648, column: 40, scope: !6424)
!6431 = !DILocation(line: 648, column: 45, scope: !6424)
!6432 = !DILocation(line: 648, column: 52, scope: !6424)
!6433 = !DILocation(line: 648, column: 56, scope: !6424)
!6434 = !DILocation(line: 648, column: 61, scope: !6424)
!6435 = !DILocation(line: 648, column: 6, scope: !6398)
!6436 = !DILocation(line: 649, column: 3, scope: !6424)
!6437 = !DILocation(line: 651, column: 26, scope: !6398)
!6438 = !DILocation(line: 651, column: 31, scope: !6398)
!6439 = !DILocation(line: 651, column: 8, scope: !6398)
!6440 = !DILocation(line: 651, column: 6, scope: !6398)
!6441 = !DILocation(line: 652, column: 6, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 652, column: 6)
!6443 = !DILocation(line: 652, column: 6, scope: !6398)
!6444 = !DILocation(line: 653, column: 10, scope: !6442)
!6445 = !DILocation(line: 653, column: 3, scope: !6442)
!6446 = !DILocation(line: 655, column: 2, scope: !6398)
!6447 = !DILocation(line: 655, column: 8, scope: !6398)
!6448 = !DILocation(line: 655, column: 17, scope: !6398)
!6449 = !DILocation(line: 656, column: 2, scope: !6398)
!6450 = !DILocation(line: 656, column: 8, scope: !6398)
!6451 = !DILocation(line: 656, column: 18, scope: !6398)
!6452 = !DILocation(line: 658, column: 7, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 658, column: 6)
!6454 = !DILocation(line: 658, column: 12, scope: !6453)
!6455 = !DILocation(line: 658, column: 6, scope: !6398)
!6456 = !DILocation(line: 659, column: 3, scope: !6453)
!6457 = !DILocation(line: 659, column: 8, scope: !6453)
!6458 = !DILocation(line: 659, column: 14, scope: !6453)
!6459 = !DILocation(line: 660, column: 7, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 660, column: 6)
!6461 = !DILocation(line: 660, column: 12, scope: !6460)
!6462 = !DILocation(line: 660, column: 6, scope: !6398)
!6463 = !DILocation(line: 661, column: 3, scope: !6460)
!6464 = !DILocation(line: 661, column: 8, scope: !6460)
!6465 = !DILocation(line: 661, column: 15, scope: !6460)
!6466 = !DILocation(line: 662, column: 7, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 662, column: 6)
!6468 = !DILocation(line: 662, column: 12, scope: !6467)
!6469 = !DILocation(line: 662, column: 6, scope: !6398)
!6470 = !DILocation(line: 663, column: 3, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 662, column: 20)
!6472 = !DILocation(line: 663, column: 8, scope: !6471)
!6473 = !DILocation(line: 663, column: 15, scope: !6471)
!6474 = !DILocation(line: 664, column: 3, scope: !6471)
!6475 = !DILocation(line: 664, column: 8, scope: !6471)
!6476 = !DILocation(line: 664, column: 15, scope: !6471)
!6477 = !DILocation(line: 665, column: 25, scope: !6471)
!6478 = !DILocation(line: 665, column: 30, scope: !6471)
!6479 = !DILocation(line: 665, column: 3, scope: !6471)
!6480 = !DILocation(line: 665, column: 8, scope: !6471)
!6481 = !DILocation(line: 665, column: 13, scope: !6471)
!6482 = !DILocation(line: 665, column: 23, scope: !6471)
!6483 = !DILocation(line: 666, column: 2, scope: !6471)
!6484 = !DILocation(line: 667, column: 7, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 667, column: 6)
!6486 = !DILocation(line: 667, column: 12, scope: !6485)
!6487 = !DILocation(line: 667, column: 6, scope: !6398)
!6488 = !DILocation(line: 668, column: 3, scope: !6485)
!6489 = !DILocation(line: 668, column: 8, scope: !6485)
!6490 = !DILocation(line: 668, column: 15, scope: !6485)
!6491 = !DILocation(line: 670, column: 2, scope: !6398)
!6492 = !DILocation(line: 671, column: 1, scope: !6398)
!6493 = !DISubprogram(name: "crypto_register_alg", scope: !175, file: !175, line: 141, type: !6494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6494 = !DISubroutineType(types: !6495)
!6495 = !{!136, !149}
!6496 = distinct !DISubprogram(name: "crypto_unregister_shash", scope: !3, file: !3, line: 686, type: !6497, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{null, !4555}
!6499 = !{!6500}
!6500 = !DILocalVariable(name: "alg", arg: 1, scope: !6496, file: !3, line: 686, type: !4555)
!6501 = !DILocation(line: 686, column: 48, scope: !6496)
!6502 = !DILocation(line: 688, column: 25, scope: !6496)
!6503 = !DILocation(line: 688, column: 30, scope: !6496)
!6504 = !DILocation(line: 688, column: 2, scope: !6496)
!6505 = !DILocation(line: 689, column: 1, scope: !6496)
!6506 = !DISubprogram(name: "crypto_unregister_alg", scope: !175, file: !175, line: 142, type: !4550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6507 = distinct !DISubprogram(name: "crypto_register_shashes", scope: !3, file: !3, line: 692, type: !5104, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6508)
!6508 = !{!6509, !6510, !6511, !6512, !6513}
!6509 = !DILocalVariable(name: "algs", arg: 1, scope: !6507, file: !3, line: 692, type: !4555)
!6510 = !DILocalVariable(name: "count", arg: 2, scope: !6507, file: !3, line: 692, type: !136)
!6511 = !DILocalVariable(name: "i", scope: !6507, file: !3, line: 694, type: !136)
!6512 = !DILocalVariable(name: "ret", scope: !6507, file: !3, line: 694, type: !136)
!6513 = !DILabel(scope: !6507, name: "err", file: !3, line: 704)
!6514 = !DILocation(line: 692, column: 47, scope: !6507)
!6515 = !DILocation(line: 692, column: 57, scope: !6507)
!6516 = !DILocation(line: 694, column: 2, scope: !6507)
!6517 = !DILocation(line: 694, column: 6, scope: !6507)
!6518 = !DILocation(line: 694, column: 9, scope: !6507)
!6519 = !DILocation(line: 696, column: 9, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 696, column: 2)
!6521 = !DILocation(line: 696, column: 7, scope: !6520)
!6522 = !DILocation(line: 696, column: 14, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6520, file: !3, line: 696, column: 2)
!6524 = !DILocation(line: 696, column: 18, scope: !6523)
!6525 = !DILocation(line: 696, column: 16, scope: !6523)
!6526 = !DILocation(line: 696, column: 2, scope: !6520)
!6527 = !DILocation(line: 697, column: 32, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 696, column: 30)
!6529 = !DILocation(line: 697, column: 37, scope: !6528)
!6530 = !DILocation(line: 697, column: 9, scope: !6528)
!6531 = !DILocation(line: 697, column: 7, scope: !6528)
!6532 = !DILocation(line: 698, column: 7, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 698, column: 7)
!6534 = !DILocation(line: 698, column: 7, scope: !6528)
!6535 = !DILocation(line: 699, column: 4, scope: !6533)
!6536 = !DILocation(line: 700, column: 2, scope: !6528)
!6537 = !DILocation(line: 696, column: 26, scope: !6523)
!6538 = !DILocation(line: 696, column: 2, scope: !6523)
!6539 = distinct !{!6539, !6526, !6540, !5501, !5502}
!6540 = !DILocation(line: 700, column: 2, scope: !6520)
!6541 = !DILocation(line: 702, column: 2, scope: !6507)
!6542 = !DILocation(line: 704, column: 1, scope: !6507)
!6543 = !DILocation(line: 705, column: 7, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 705, column: 2)
!6545 = !DILocation(line: 705, column: 12, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 705, column: 2)
!6547 = !DILocation(line: 705, column: 14, scope: !6546)
!6548 = !DILocation(line: 705, column: 2, scope: !6544)
!6549 = !DILocation(line: 706, column: 28, scope: !6546)
!6550 = !DILocation(line: 706, column: 33, scope: !6546)
!6551 = !DILocation(line: 706, column: 3, scope: !6546)
!6552 = !DILocation(line: 705, column: 20, scope: !6546)
!6553 = !DILocation(line: 705, column: 2, scope: !6546)
!6554 = distinct !{!6554, !6548, !6555, !5501, !5502}
!6555 = !DILocation(line: 706, column: 35, scope: !6544)
!6556 = !DILocation(line: 708, column: 9, scope: !6507)
!6557 = !DILocation(line: 708, column: 2, scope: !6507)
!6558 = !DILocation(line: 709, column: 1, scope: !6507)
!6559 = distinct !DISubprogram(name: "crypto_unregister_shashes", scope: !3, file: !3, line: 712, type: !6560, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{null, !4555, !136}
!6562 = !{!6563, !6564, !6565}
!6563 = !DILocalVariable(name: "algs", arg: 1, scope: !6559, file: !3, line: 712, type: !4555)
!6564 = !DILocalVariable(name: "count", arg: 2, scope: !6559, file: !3, line: 712, type: !136)
!6565 = !DILocalVariable(name: "i", scope: !6559, file: !3, line: 714, type: !136)
!6566 = !DILocation(line: 712, column: 50, scope: !6559)
!6567 = !DILocation(line: 712, column: 60, scope: !6559)
!6568 = !DILocation(line: 714, column: 2, scope: !6559)
!6569 = !DILocation(line: 714, column: 6, scope: !6559)
!6570 = !DILocation(line: 716, column: 11, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 716, column: 2)
!6572 = !DILocation(line: 716, column: 17, scope: !6571)
!6573 = !DILocation(line: 716, column: 9, scope: !6571)
!6574 = !DILocation(line: 716, column: 7, scope: !6571)
!6575 = !DILocation(line: 716, column: 22, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 716, column: 2)
!6577 = !DILocation(line: 716, column: 24, scope: !6576)
!6578 = !DILocation(line: 716, column: 2, scope: !6571)
!6579 = !DILocation(line: 717, column: 28, scope: !6576)
!6580 = !DILocation(line: 717, column: 33, scope: !6576)
!6581 = !DILocation(line: 717, column: 3, scope: !6576)
!6582 = !DILocation(line: 716, column: 30, scope: !6576)
!6583 = !DILocation(line: 716, column: 2, scope: !6576)
!6584 = distinct !{!6584, !6578, !6585, !5501, !5502}
!6585 = !DILocation(line: 717, column: 35, scope: !6571)
!6586 = !DILocation(line: 718, column: 1, scope: !6559)
!6587 = distinct !DISubprogram(name: "shash_register_instance", scope: !3, file: !3, line: 721, type: !6588, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6590)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!136, !4478, !4672}
!6590 = !{!6591, !6592, !6593, !6594, !6597}
!6591 = !DILocalVariable(name: "tmpl", arg: 1, scope: !6587, file: !3, line: 721, type: !4478)
!6592 = !DILocalVariable(name: "inst", arg: 2, scope: !6587, file: !3, line: 722, type: !4672)
!6593 = !DILocalVariable(name: "err", scope: !6587, file: !3, line: 724, type: !136)
!6594 = !DILocalVariable(name: "__ret_warn_on", scope: !6595, file: !3, line: 726, type: !136)
!6595 = distinct !DILexicalBlock(scope: !6596, file: !3, line: 726, column: 6)
!6596 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 726, column: 6)
!6597 = !DILocalVariable(name: "__flags", scope: !6598, file: !3, line: 726, type: !136)
!6598 = distinct !DILexicalBlock(scope: !6599, file: !3, line: 726, column: 6)
!6599 = distinct !DILexicalBlock(scope: !6595, file: !3, line: 726, column: 6)
!6600 = !DILocation(line: 721, column: 53, scope: !6587)
!6601 = !DILocation(line: 722, column: 31, scope: !6587)
!6602 = !DILocation(line: 724, column: 2, scope: !6587)
!6603 = !DILocation(line: 724, column: 6, scope: !6587)
!6604 = !DILocation(line: 726, column: 6, scope: !6595)
!6605 = !DILocation(line: 726, column: 6, scope: !6599)
!6606 = !DILocation(line: 726, column: 6, scope: !6598)
!6607 = !DILocation(line: 726, column: 6, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 726, column: 6)
!6609 = !DILocation(line: 726, column: 6, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 726, column: 6)
!6611 = !{i64 2155754348, i64 2155754377, i64 2155754423, i64 2155754481, i64 2155754535, i64 2155754589, i64 2155754644, i64 2155754675, i64 2155754983, i64 2155754989, i64 2155755036, i64 2155755059, i64 2155755085}
!6612 = !DILocation(line: 726, column: 6, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 726, column: 6)
!6614 = !DILocation(line: 726, column: 6, scope: !6596)
!6615 = !DILocation(line: 726, column: 6, scope: !6587)
!6616 = !DILocation(line: 727, column: 3, scope: !6596)
!6617 = !DILocation(line: 729, column: 27, scope: !6587)
!6618 = !DILocation(line: 729, column: 33, scope: !6587)
!6619 = !DILocation(line: 729, column: 8, scope: !6587)
!6620 = !DILocation(line: 729, column: 6, scope: !6587)
!6621 = !DILocation(line: 730, column: 6, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 730, column: 6)
!6623 = !DILocation(line: 730, column: 6, scope: !6587)
!6624 = !DILocation(line: 731, column: 10, scope: !6622)
!6625 = !DILocation(line: 731, column: 3, scope: !6622)
!6626 = !DILocation(line: 733, column: 34, scope: !6587)
!6627 = !DILocation(line: 733, column: 62, scope: !6587)
!6628 = !DILocation(line: 733, column: 40, scope: !6587)
!6629 = !DILocation(line: 733, column: 9, scope: !6587)
!6630 = !DILocation(line: 733, column: 2, scope: !6587)
!6631 = !DILocation(line: 734, column: 1, scope: !6587)
!6632 = !DISubprogram(name: "crypto_register_instance", scope: !175, file: !175, line: 154, type: !6633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6633 = !DISubroutineType(types: !6634)
!6634 = !{!136, !4478, !4473}
!6635 = distinct !DISubprogram(name: "shash_crypto_instance", scope: !4674, file: !4674, line: 243, type: !6636, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6638)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!4473, !4672}
!6638 = !{!6639}
!6639 = !DILocalVariable(name: "inst", arg: 1, scope: !6635, file: !4674, line: 244, type: !4672)
!6640 = !DILocation(line: 244, column: 25, scope: !6635)
!6641 = !DILocation(line: 246, column: 10, scope: !6635)
!6642 = !DILocation(line: 246, column: 16, scope: !6635)
!6643 = !DILocation(line: 246, column: 18, scope: !6635)
!6644 = !DILocation(line: 246, column: 2, scope: !6635)
!6645 = distinct !DISubprogram(name: "shash_free_singlespawn_instance", scope: !3, file: !3, line: 737, type: !4678, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6646)
!6646 = !{!6647}
!6647 = !DILocalVariable(name: "inst", arg: 1, scope: !6645, file: !3, line: 737, type: !4672)
!6648 = !DILocation(line: 737, column: 61, scope: !6645)
!6649 = !DILocation(line: 739, column: 39, scope: !6645)
!6650 = !DILocation(line: 739, column: 20, scope: !6645)
!6651 = !DILocation(line: 739, column: 2, scope: !6645)
!6652 = !DILocation(line: 740, column: 8, scope: !6645)
!6653 = !DILocation(line: 740, column: 2, scope: !6645)
!6654 = !DILocation(line: 741, column: 1, scope: !6645)
!6655 = !DISubprogram(name: "crypto_drop_spawn", scope: !175, file: !175, line: 160, type: !6656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{null, !4497}
!6658 = distinct !DISubprogram(name: "shash_instance_ctx", scope: !4674, file: !4674, line: 261, type: !6659, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6661)
!6659 = !DISubroutineType(types: !6660)
!6660 = !{!111, !4672}
!6661 = !{!6662}
!6662 = !DILocalVariable(name: "inst", arg: 1, scope: !6658, file: !4674, line: 261, type: !4672)
!6663 = !DILocation(line: 261, column: 63, scope: !6658)
!6664 = !DILocation(line: 263, column: 51, scope: !6658)
!6665 = !DILocation(line: 263, column: 29, scope: !6658)
!6666 = !DILocation(line: 263, column: 9, scope: !6658)
!6667 = !DILocation(line: 263, column: 2, scope: !6658)
!6668 = !DISubprogram(name: "kfree", scope: !93, file: !93, line: 227, type: !5665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6669 = distinct !DISubprogram(name: "crypto_tfm_alg_alignmask", scope: !124, file: !124, line: 470, type: !6670, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6670 = !DISubroutineType(types: !6671)
!6671 = !{!7, !147}
!6672 = !{!6673}
!6673 = !DILocalVariable(name: "tfm", arg: 1, scope: !6669, file: !124, line: 470, type: !147)
!6674 = !DILocation(line: 470, column: 72, scope: !6669)
!6675 = !DILocation(line: 472, column: 9, scope: !6669)
!6676 = !DILocation(line: 472, column: 14, scope: !6669)
!6677 = !DILocation(line: 472, column: 25, scope: !6669)
!6678 = !DILocation(line: 472, column: 2, scope: !6669)
!6679 = distinct !DISubprogram(name: "crypto_tfm_ctx_alignment", scope: !124, file: !124, line: 490, type: !6680, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6682)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!7}
!6682 = !{!6683}
!6683 = !DILocalVariable(name: "tfm", scope: !6679, file: !124, line: 492, type: !147)
!6684 = !DILocation(line: 492, column: 2, scope: !6679)
!6685 = !DILocation(line: 492, column: 21, scope: !6679)
!6686 = !DILocation(line: 494, column: 1, scope: !6679)
!6687 = !DILocation(line: 493, column: 2, scope: !6679)
!6688 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !6689, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6691)
!6689 = !DISubroutineType(types: !6690)
!6690 = !{!111, !200, !888}
!6691 = !{!6692, !6693, !6694}
!6692 = !DILocalVariable(name: "size", arg: 1, scope: !6688, file: !93, line: 591, type: !200)
!6693 = !DILocalVariable(name: "flags", arg: 2, scope: !6688, file: !93, line: 591, type: !888)
!6694 = !DILocalVariable(name: "index", scope: !6695, file: !93, line: 594, type: !7)
!6695 = distinct !DILexicalBlock(scope: !6696, file: !93, line: 593, column: 42)
!6696 = distinct !DILexicalBlock(scope: !6688, file: !93, line: 593, column: 6)
!6697 = !DILocation(line: 591, column: 61, scope: !6688)
!6698 = !DILocation(line: 591, column: 73, scope: !6688)
!6699 = !DILocation(line: 593, column: 27, scope: !6696)
!6700 = !DILocation(line: 593, column: 6, scope: !6696)
!6701 = !DILocation(line: 593, column: 33, scope: !6696)
!6702 = !DILocation(line: 593, column: 36, scope: !6696)
!6703 = !DILocation(line: 593, column: 6, scope: !6688)
!6704 = !DILocation(line: 594, column: 3, scope: !6695)
!6705 = !DILocation(line: 594, column: 16, scope: !6695)
!6706 = !DILocation(line: 596, column: 7, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6695, file: !93, line: 596, column: 7)
!6708 = !DILocation(line: 596, column: 12, scope: !6707)
!6709 = !DILocation(line: 596, column: 7, scope: !6695)
!6710 = !DILocation(line: 597, column: 25, scope: !6707)
!6711 = !DILocation(line: 597, column: 31, scope: !6707)
!6712 = !DILocation(line: 597, column: 11, scope: !6707)
!6713 = !DILocation(line: 597, column: 4, scope: !6707)
!6714 = !DILocation(line: 599, column: 11, scope: !6695)
!6715 = !DILocation(line: 599, column: 9, scope: !6695)
!6716 = !DILocation(line: 601, column: 33, scope: !6695)
!6717 = !DILocation(line: 601, column: 40, scope: !6695)
!6718 = !DILocation(line: 601, column: 20, scope: !6695)
!6719 = !DILocation(line: 601, column: 5, scope: !6695)
!6720 = !DILocation(line: 601, column: 51, scope: !6695)
!6721 = !DILocation(line: 602, column: 5, scope: !6695)
!6722 = !DILocation(line: 602, column: 12, scope: !6695)
!6723 = !DILocation(line: 600, column: 10, scope: !6695)
!6724 = !DILocation(line: 600, column: 3, scope: !6695)
!6725 = !DILocation(line: 603, column: 2, scope: !6696)
!6726 = !DILocation(line: 604, column: 19, scope: !6688)
!6727 = !DILocation(line: 604, column: 25, scope: !6688)
!6728 = !DILocation(line: 604, column: 9, scope: !6688)
!6729 = !DILocation(line: 604, column: 2, scope: !6688)
!6730 = !DILocation(line: 605, column: 1, scope: !6688)
!6731 = !DISubprogram(name: "kfree_sensitive", scope: !93, file: !93, line: 228, type: !5665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6732 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !6689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6733 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !6734, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6736)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!7, !200, !518}
!6736 = !{!6737, !6738}
!6737 = !DILocalVariable(name: "size", arg: 1, scope: !6733, file: !93, line: 444, type: !200)
!6738 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6733, file: !93, line: 445, type: !518)
!6739 = !DILocation(line: 444, column: 60, scope: !6733)
!6740 = !DILocation(line: 445, column: 16, scope: !6733)
!6741 = !DILocation(line: 447, column: 7, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 447, column: 6)
!6743 = !DILocation(line: 447, column: 6, scope: !6733)
!6744 = !DILocation(line: 448, column: 3, scope: !6742)
!6745 = !DILocation(line: 450, column: 6, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 450, column: 6)
!6747 = !DILocation(line: 450, column: 11, scope: !6746)
!6748 = !DILocation(line: 450, column: 6, scope: !6733)
!6749 = !DILocation(line: 451, column: 3, scope: !6746)
!6750 = !DILocation(line: 453, column: 32, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 453, column: 6)
!6752 = !DILocation(line: 453, column: 37, scope: !6751)
!6753 = !DILocation(line: 453, column: 42, scope: !6751)
!6754 = !DILocation(line: 453, column: 45, scope: !6751)
!6755 = !DILocation(line: 453, column: 50, scope: !6751)
!6756 = !DILocation(line: 453, column: 6, scope: !6733)
!6757 = !DILocation(line: 454, column: 3, scope: !6751)
!6758 = !DILocation(line: 455, column: 32, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 455, column: 6)
!6760 = !DILocation(line: 455, column: 37, scope: !6759)
!6761 = !DILocation(line: 455, column: 43, scope: !6759)
!6762 = !DILocation(line: 455, column: 46, scope: !6759)
!6763 = !DILocation(line: 455, column: 51, scope: !6759)
!6764 = !DILocation(line: 455, column: 6, scope: !6733)
!6765 = !DILocation(line: 456, column: 3, scope: !6759)
!6766 = !DILocation(line: 457, column: 6, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 457, column: 6)
!6768 = !DILocation(line: 457, column: 11, scope: !6767)
!6769 = !DILocation(line: 457, column: 6, scope: !6733)
!6770 = !DILocation(line: 457, column: 26, scope: !6767)
!6771 = !DILocation(line: 458, column: 6, scope: !6772)
!6772 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 458, column: 6)
!6773 = !DILocation(line: 458, column: 11, scope: !6772)
!6774 = !DILocation(line: 458, column: 6, scope: !6733)
!6775 = !DILocation(line: 458, column: 26, scope: !6772)
!6776 = !DILocation(line: 459, column: 6, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 459, column: 6)
!6778 = !DILocation(line: 459, column: 11, scope: !6777)
!6779 = !DILocation(line: 459, column: 6, scope: !6733)
!6780 = !DILocation(line: 459, column: 26, scope: !6777)
!6781 = !DILocation(line: 460, column: 6, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 460, column: 6)
!6783 = !DILocation(line: 460, column: 11, scope: !6782)
!6784 = !DILocation(line: 460, column: 6, scope: !6733)
!6785 = !DILocation(line: 460, column: 26, scope: !6782)
!6786 = !DILocation(line: 461, column: 6, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 461, column: 6)
!6788 = !DILocation(line: 461, column: 11, scope: !6787)
!6789 = !DILocation(line: 461, column: 6, scope: !6733)
!6790 = !DILocation(line: 461, column: 26, scope: !6787)
!6791 = !DILocation(line: 462, column: 6, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 462, column: 6)
!6793 = !DILocation(line: 462, column: 11, scope: !6792)
!6794 = !DILocation(line: 462, column: 6, scope: !6733)
!6795 = !DILocation(line: 462, column: 26, scope: !6792)
!6796 = !DILocation(line: 463, column: 6, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 463, column: 6)
!6798 = !DILocation(line: 463, column: 11, scope: !6797)
!6799 = !DILocation(line: 463, column: 6, scope: !6733)
!6800 = !DILocation(line: 463, column: 26, scope: !6797)
!6801 = !DILocation(line: 464, column: 6, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 464, column: 6)
!6803 = !DILocation(line: 464, column: 11, scope: !6802)
!6804 = !DILocation(line: 464, column: 6, scope: !6733)
!6805 = !DILocation(line: 464, column: 26, scope: !6802)
!6806 = !DILocation(line: 465, column: 6, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 465, column: 6)
!6808 = !DILocation(line: 465, column: 11, scope: !6807)
!6809 = !DILocation(line: 465, column: 6, scope: !6733)
!6810 = !DILocation(line: 465, column: 26, scope: !6807)
!6811 = !DILocation(line: 466, column: 6, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 466, column: 6)
!6813 = !DILocation(line: 466, column: 11, scope: !6812)
!6814 = !DILocation(line: 466, column: 6, scope: !6733)
!6815 = !DILocation(line: 466, column: 26, scope: !6812)
!6816 = !DILocation(line: 467, column: 6, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 467, column: 6)
!6818 = !DILocation(line: 467, column: 11, scope: !6817)
!6819 = !DILocation(line: 467, column: 6, scope: !6733)
!6820 = !DILocation(line: 467, column: 26, scope: !6817)
!6821 = !DILocation(line: 468, column: 6, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 468, column: 6)
!6823 = !DILocation(line: 468, column: 11, scope: !6822)
!6824 = !DILocation(line: 468, column: 6, scope: !6733)
!6825 = !DILocation(line: 468, column: 26, scope: !6822)
!6826 = !DILocation(line: 469, column: 6, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 469, column: 6)
!6828 = !DILocation(line: 469, column: 11, scope: !6827)
!6829 = !DILocation(line: 469, column: 6, scope: !6733)
!6830 = !DILocation(line: 469, column: 26, scope: !6827)
!6831 = !DILocation(line: 470, column: 6, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 470, column: 6)
!6833 = !DILocation(line: 470, column: 11, scope: !6832)
!6834 = !DILocation(line: 470, column: 6, scope: !6733)
!6835 = !DILocation(line: 470, column: 26, scope: !6832)
!6836 = !DILocation(line: 471, column: 6, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 471, column: 6)
!6838 = !DILocation(line: 471, column: 11, scope: !6837)
!6839 = !DILocation(line: 471, column: 6, scope: !6733)
!6840 = !DILocation(line: 471, column: 26, scope: !6837)
!6841 = !DILocation(line: 472, column: 6, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 472, column: 6)
!6843 = !DILocation(line: 472, column: 11, scope: !6842)
!6844 = !DILocation(line: 472, column: 6, scope: !6733)
!6845 = !DILocation(line: 472, column: 26, scope: !6842)
!6846 = !DILocation(line: 473, column: 6, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 473, column: 6)
!6848 = !DILocation(line: 473, column: 11, scope: !6847)
!6849 = !DILocation(line: 473, column: 6, scope: !6733)
!6850 = !DILocation(line: 473, column: 26, scope: !6847)
!6851 = !DILocation(line: 474, column: 6, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 474, column: 6)
!6853 = !DILocation(line: 474, column: 11, scope: !6852)
!6854 = !DILocation(line: 474, column: 6, scope: !6733)
!6855 = !DILocation(line: 474, column: 27, scope: !6852)
!6856 = !DILocation(line: 475, column: 6, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 475, column: 6)
!6858 = !DILocation(line: 475, column: 11, scope: !6857)
!6859 = !DILocation(line: 475, column: 6, scope: !6733)
!6860 = !DILocation(line: 475, column: 32, scope: !6857)
!6861 = !DILocation(line: 477, column: 50, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6733, file: !93, line: 477, column: 6)
!6863 = !{i8 0, i8 2}
!6864 = !DILocation(line: 477, column: 6, scope: !6733)
!6865 = !DILocation(line: 478, column: 3, scope: !6862)
!6866 = !DILocation(line: 478, column: 3, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6868, file: !93, line: 478, column: 3)
!6868 = distinct !DILexicalBlock(scope: !6862, file: !93, line: 478, column: 3)
!6869 = !{i32 -2143495833}
!6870 = !DILocation(line: 478, column: 3, scope: !6868)
!6871 = !DILocation(line: 480, column: 3, scope: !6862)
!6872 = !DILocation(line: 480, column: 3, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6862, file: !93, line: 480, column: 3)
!6874 = !DILocation(line: 480, column: 3, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6873, file: !93, line: 480, column: 3)
!6876 = !DILocation(line: 480, column: 3, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6873, file: !93, line: 480, column: 3)
!6878 = !{i64 2151471666, i64 2151471695, i64 2151471741, i64 2151471799, i64 2151471853, i64 2151471907, i64 2151471962, i64 2151471993}
!6879 = !DILocation(line: 483, column: 2, scope: !6733)
!6880 = !DILocation(line: 484, column: 1, scope: !6733)
!6881 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !6882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!111, !6884, !888, !200}
!6884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6885, size: 64)
!6885 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6886, line: 11, flags: DIFlagFwdDecl)
!6886 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6887 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !6888, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6890)
!6888 = !DISubroutineType(types: !6889)
!6889 = !{!92, !888, !112}
!6890 = !{!6891, !6892}
!6891 = !DILocalVariable(name: "flags", arg: 1, scope: !6887, file: !93, line: 401, type: !888)
!6892 = !DILocalVariable(name: "caller", arg: 2, scope: !6887, file: !93, line: 401, type: !112)
!6893 = !DILocation(line: 401, column: 67, scope: !6887)
!6894 = !DILocation(line: 401, column: 88, scope: !6887)
!6895 = !DILocation(line: 407, column: 6, scope: !6896)
!6896 = distinct !DILexicalBlock(scope: !6887, file: !93, line: 407, column: 6)
!6897 = !DILocation(line: 407, column: 6, scope: !6887)
!6898 = !DILocation(line: 413, column: 3, scope: !6896)
!6899 = !DILocation(line: 423, column: 38, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6887, file: !93, line: 423, column: 6)
!6901 = !DILocation(line: 423, column: 44, scope: !6900)
!6902 = !DILocation(line: 423, column: 6, scope: !6887)
!6903 = !DILocation(line: 424, column: 3, scope: !6900)
!6904 = !DILocation(line: 426, column: 3, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6887, file: !93, line: 425, column: 6)
!6906 = !DILocation(line: 429, column: 1, scope: !6887)
!6907 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !6689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6908 = !DISubprogram(name: "__compiletime_assert_117", scope: !93, file: !93, line: 478, type: !2277, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6909 = distinct !DISubprogram(name: "crypto_shash_alg_needs_key", scope: !4674, file: !4674, line: 86, type: !5959, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6910)
!6910 = !{!6911}
!6911 = !DILocalVariable(name: "alg", arg: 1, scope: !6909, file: !4674, line: 86, type: !4555)
!6912 = !DILocation(line: 86, column: 65, scope: !6909)
!6913 = !DILocation(line: 88, column: 37, scope: !6909)
!6914 = !DILocation(line: 88, column: 9, scope: !6909)
!6915 = !DILocation(line: 88, column: 42, scope: !6909)
!6916 = !DILocation(line: 89, column: 5, scope: !6909)
!6917 = !DILocation(line: 89, column: 10, scope: !6909)
!6918 = !DILocation(line: 89, column: 15, scope: !6909)
!6919 = !DILocation(line: 89, column: 25, scope: !6909)
!6920 = !DILocation(line: 89, column: 3, scope: !6909)
!6921 = !DILocation(line: 0, scope: !6909)
!6922 = !DILocation(line: 88, column: 2, scope: !6909)
!6923 = distinct !DISubprogram(name: "crypto_shash_set_flags", scope: !115, file: !115, line: 855, type: !4944, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6924)
!6924 = !{!6925, !6926}
!6925 = !DILocalVariable(name: "tfm", arg: 1, scope: !6923, file: !115, line: 855, type: !118)
!6926 = !DILocalVariable(name: "flags", arg: 2, scope: !6923, file: !115, line: 855, type: !138)
!6927 = !DILocation(line: 855, column: 64, scope: !6923)
!6928 = !DILocation(line: 855, column: 73, scope: !6923)
!6929 = !DILocation(line: 857, column: 40, scope: !6923)
!6930 = !DILocation(line: 857, column: 23, scope: !6923)
!6931 = !DILocation(line: 857, column: 46, scope: !6923)
!6932 = !DILocation(line: 857, column: 2, scope: !6923)
!6933 = !DILocation(line: 858, column: 1, scope: !6923)
!6934 = distinct !DISubprogram(name: "crypto_tfm_set_flags", scope: !124, file: !124, line: 480, type: !6935, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6937)
!6935 = !DISubroutineType(types: !6936)
!6936 = !{null, !147, !138}
!6937 = !{!6938, !6939}
!6938 = !DILocalVariable(name: "tfm", arg: 1, scope: !6934, file: !124, line: 480, type: !147)
!6939 = !DILocalVariable(name: "flags", arg: 2, scope: !6934, file: !124, line: 480, type: !138)
!6940 = !DILocation(line: 480, column: 60, scope: !6934)
!6941 = !DILocation(line: 480, column: 69, scope: !6934)
!6942 = !DILocation(line: 482, column: 20, scope: !6934)
!6943 = !DILocation(line: 482, column: 2, scope: !6934)
!6944 = !DILocation(line: 482, column: 7, scope: !6934)
!6945 = !DILocation(line: 482, column: 17, scope: !6934)
!6946 = !DILocation(line: 483, column: 1, scope: !6934)
!6947 = distinct !DISubprogram(name: "crypto_tfm_clear_flags", scope: !124, file: !124, line: 485, type: !6935, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6948)
!6948 = !{!6949, !6950}
!6949 = !DILocalVariable(name: "tfm", arg: 1, scope: !6947, file: !124, line: 485, type: !147)
!6950 = !DILocalVariable(name: "flags", arg: 2, scope: !6947, file: !124, line: 485, type: !138)
!6951 = !DILocation(line: 485, column: 62, scope: !6947)
!6952 = !DILocation(line: 485, column: 71, scope: !6947)
!6953 = !DILocation(line: 487, column: 21, scope: !6947)
!6954 = !DILocation(line: 487, column: 20, scope: !6947)
!6955 = !DILocation(line: 487, column: 2, scope: !6947)
!6956 = !DILocation(line: 487, column: 7, scope: !6947)
!6957 = !DILocation(line: 487, column: 17, scope: !6947)
!6958 = !DILocation(line: 488, column: 1, scope: !6947)
!6959 = distinct !DISubprogram(name: "crypto_hash_errstat", scope: !115, file: !115, line: 579, type: !6960, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6962)
!6960 = !DISubroutineType(types: !6961)
!6961 = !{!136, !6334, !136}
!6962 = !{!6963, !6964}
!6963 = !DILocalVariable(name: "alg", arg: 1, scope: !6959, file: !115, line: 579, type: !6334)
!6964 = !DILocalVariable(name: "err", arg: 2, scope: !6959, file: !115, line: 579, type: !136)
!6965 = !DILocation(line: 579, column: 63, scope: !6959)
!6966 = !DILocation(line: 579, column: 72, scope: !6959)
!6967 = !DILocation(line: 582, column: 10, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6959, file: !115, line: 581, column: 6)
!6969 = !DILocation(line: 582, column: 3, scope: !6968)
!6970 = distinct !DISubprogram(name: "crypto_shash_digestsize", scope: !115, file: !115, line: 840, type: !4857, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6971)
!6971 = !{!6972}
!6972 = !DILocalVariable(name: "tfm", arg: 1, scope: !6970, file: !115, line: 840, type: !118)
!6973 = !DILocation(line: 840, column: 73, scope: !6970)
!6974 = !DILocation(line: 842, column: 26, scope: !6970)
!6975 = !DILocation(line: 842, column: 9, scope: !6970)
!6976 = !DILocation(line: 842, column: 32, scope: !6970)
!6977 = !DILocation(line: 842, column: 2, scope: !6970)
!6978 = distinct !DISubprogram(name: "crypto_tfm_get_flags", scope: !124, file: !124, line: 475, type: !6979, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6981)
!6979 = !DISubroutineType(types: !6980)
!6980 = !{!138, !147}
!6981 = !{!6982}
!6982 = !DILocalVariable(name: "tfm", arg: 1, scope: !6978, file: !124, line: 475, type: !147)
!6983 = !DILocation(line: 475, column: 59, scope: !6978)
!6984 = !DILocation(line: 477, column: 9, scope: !6978)
!6985 = !DILocation(line: 477, column: 14, scope: !6978)
!6986 = !DILocation(line: 477, column: 2, scope: !6978)
!6987 = distinct !DISubprogram(name: "memzero_explicit", scope: !6988, file: !6988, line: 276, type: !6989, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6988 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6989 = !DISubroutineType(types: !6990)
!6990 = !{null, !111, !200}
!6991 = !{!6992, !6993}
!6992 = !DILocalVariable(name: "s", arg: 1, scope: !6987, file: !6988, line: 276, type: !111)
!6993 = !DILocalVariable(name: "count", arg: 2, scope: !6987, file: !6988, line: 276, type: !200)
!6994 = !DILocation(line: 276, column: 43, scope: !6987)
!6995 = !DILocation(line: 276, column: 53, scope: !6987)
!6996 = !DILocation(line: 278, column: 9, scope: !6987)
!6997 = !DILocation(line: 278, column: 15, scope: !6987)
!6998 = !DILocation(line: 278, column: 2, scope: !6987)
!6999 = !DILocation(line: 279, column: 2, scope: !6987)
!7000 = !{i64 2148842660}
!7001 = !DILocation(line: 280, column: 1, scope: !6987)
!7002 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1183, file: !1183, line: 2176, type: !7003, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7007)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{!111, !7005}
!7005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7006, size: 64)
!7006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!7007 = !{!7008}
!7008 = !DILocalVariable(name: "page", arg: 1, scope: !7002, file: !1183, line: 2176, type: !7005)
!7009 = !DILocation(line: 2176, column: 69, scope: !7002)
!7010 = !DILocation(line: 2178, column: 9, scope: !7002)
!7011 = !DILocation(line: 2178, column: 2, scope: !7002)
!7012 = !DISubprogram(name: "crypto_create_tfm_node", scope: !5818, file: !5818, line: 125, type: !7013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7013 = !DISubroutineType(types: !7014)
!7014 = !{!111, !149, !172, !136}
!7015 = distinct !DISubprogram(name: "crypto_ahash_reqtfm", scope: !115, file: !115, line: 432, type: !7016, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7018)
!7016 = !DISubroutineType(types: !7017)
!7017 = !{!4615, !4622}
!7018 = !{!7019}
!7019 = !DILocalVariable(name: "req", arg: 1, scope: !7015, file: !115, line: 433, type: !4622)
!7020 = !DILocation(line: 433, column: 24, scope: !7015)
!7021 = !DILocation(line: 435, column: 29, scope: !7015)
!7022 = !DILocation(line: 435, column: 34, scope: !7015)
!7023 = !DILocation(line: 435, column: 39, scope: !7015)
!7024 = !DILocation(line: 435, column: 9, scope: !7015)
!7025 = !DILocation(line: 435, column: 2, scope: !7015)
!7026 = distinct !DISubprogram(name: "ahash_request_ctx", scope: !115, file: !115, line: 449, type: !7027, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7029)
!7027 = !DISubroutineType(types: !7028)
!7028 = !{!111, !4622}
!7029 = !{!7030}
!7030 = !DILocalVariable(name: "req", arg: 1, scope: !7026, file: !115, line: 449, type: !4622)
!7031 = !DILocation(line: 449, column: 61, scope: !7026)
!7032 = !DILocation(line: 451, column: 9, scope: !7026)
!7033 = !DILocation(line: 451, column: 14, scope: !7026)
!7034 = !DILocation(line: 451, column: 2, scope: !7026)
!7035 = distinct !DISubprogram(name: "crypto_ahash_tfm", scope: !115, file: !115, line: 307, type: !7036, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7038)
!7036 = !DISubroutineType(types: !7037)
!7037 = !{!147, !4615}
!7038 = !{!7039}
!7039 = !DILocalVariable(name: "tfm", arg: 1, scope: !7035, file: !115, line: 307, type: !4615)
!7040 = !DILocation(line: 307, column: 72, scope: !7035)
!7041 = !DILocation(line: 309, column: 10, scope: !7035)
!7042 = !DILocation(line: 309, column: 15, scope: !7035)
!7043 = !DILocation(line: 309, column: 2, scope: !7035)
!7044 = distinct !DISubprogram(name: "crypto_shash_export", scope: !115, file: !115, line: 955, type: !4577, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7045)
!7045 = !{!7046, !7047}
!7046 = !DILocalVariable(name: "desc", arg: 1, scope: !7044, file: !115, line: 955, type: !113)
!7047 = !DILocalVariable(name: "out", arg: 2, scope: !7044, file: !115, line: 955, type: !111)
!7048 = !DILocation(line: 955, column: 58, scope: !7044)
!7049 = !DILocation(line: 955, column: 70, scope: !7044)
!7050 = !DILocation(line: 957, column: 26, scope: !7044)
!7051 = !DILocation(line: 957, column: 32, scope: !7044)
!7052 = !DILocation(line: 957, column: 9, scope: !7044)
!7053 = !DILocation(line: 957, column: 38, scope: !7044)
!7054 = !DILocation(line: 957, column: 45, scope: !7044)
!7055 = !DILocation(line: 957, column: 51, scope: !7044)
!7056 = !DILocation(line: 957, column: 2, scope: !7044)
!7057 = distinct !DISubprogram(name: "crypto_shash_import", scope: !115, file: !115, line: 972, type: !4581, scopeLine: 973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7058)
!7058 = !{!7059, !7060, !7061}
!7059 = !DILocalVariable(name: "desc", arg: 1, scope: !7057, file: !115, line: 972, type: !113)
!7060 = !DILocalVariable(name: "in", arg: 2, scope: !7057, file: !115, line: 972, type: !1318)
!7061 = !DILocalVariable(name: "tfm", scope: !7057, file: !115, line: 974, type: !118)
!7062 = !DILocation(line: 972, column: 58, scope: !7057)
!7063 = !DILocation(line: 972, column: 76, scope: !7057)
!7064 = !DILocation(line: 974, column: 2, scope: !7057)
!7065 = !DILocation(line: 974, column: 23, scope: !7057)
!7066 = !DILocation(line: 974, column: 29, scope: !7057)
!7067 = !DILocation(line: 974, column: 35, scope: !7057)
!7068 = !DILocation(line: 976, column: 29, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7057, file: !115, line: 976, column: 6)
!7070 = !DILocation(line: 976, column: 6, scope: !7069)
!7071 = !DILocation(line: 976, column: 34, scope: !7069)
!7072 = !DILocation(line: 976, column: 6, scope: !7057)
!7073 = !DILocation(line: 977, column: 3, scope: !7069)
!7074 = !DILocation(line: 979, column: 26, scope: !7057)
!7075 = !DILocation(line: 979, column: 9, scope: !7057)
!7076 = !DILocation(line: 979, column: 32, scope: !7057)
!7077 = !DILocation(line: 979, column: 39, scope: !7057)
!7078 = !DILocation(line: 979, column: 45, scope: !7057)
!7079 = !DILocation(line: 979, column: 2, scope: !7057)
!7080 = !DILocation(line: 980, column: 1, scope: !7057)
!7081 = !DISubprogram(name: "crypto_destroy_tfm", scope: !124, file: !124, line: 445, type: !7082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7082 = !DISubroutineType(types: !7083)
!7083 = !{null, !111, !147}
!7084 = distinct !DISubprogram(name: "crypto_shash_init_tfm", scope: !3, file: !3, line: 474, type: !187, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7085)
!7085 = !{!7086, !7087, !7088, !7089, !7090, !7093}
!7086 = !DILocalVariable(name: "tfm", arg: 1, scope: !7084, file: !3, line: 474, type: !147)
!7087 = !DILocalVariable(name: "hash", scope: !7084, file: !3, line: 476, type: !118)
!7088 = !DILocalVariable(name: "alg", scope: !7084, file: !3, line: 477, type: !4555)
!7089 = !DILocalVariable(name: "err", scope: !7084, file: !3, line: 478, type: !136)
!7090 = !DILocalVariable(name: "__ret_warn_on", scope: !7091, file: !3, line: 495, type: !136)
!7091 = distinct !DILexicalBlock(scope: !7092, file: !3, line: 495, column: 6)
!7092 = distinct !DILexicalBlock(scope: !7084, file: !3, line: 495, column: 6)
!7093 = !DILocalVariable(name: "__flags", scope: !7094, file: !3, line: 495, type: !136)
!7094 = distinct !DILexicalBlock(scope: !7095, file: !3, line: 495, column: 6)
!7095 = distinct !DILexicalBlock(scope: !7091, file: !3, line: 495, column: 6)
!7096 = !DILocation(line: 474, column: 53, scope: !7084)
!7097 = !DILocation(line: 476, column: 2, scope: !7084)
!7098 = !DILocation(line: 476, column: 23, scope: !7084)
!7099 = !DILocation(line: 476, column: 50, scope: !7084)
!7100 = !DILocation(line: 476, column: 30, scope: !7084)
!7101 = !DILocation(line: 477, column: 2, scope: !7084)
!7102 = !DILocation(line: 477, column: 20, scope: !7084)
!7103 = !DILocation(line: 477, column: 43, scope: !7084)
!7104 = !DILocation(line: 477, column: 26, scope: !7084)
!7105 = !DILocation(line: 478, column: 2, scope: !7084)
!7106 = !DILocation(line: 478, column: 6, scope: !7084)
!7107 = !DILocation(line: 480, column: 19, scope: !7084)
!7108 = !DILocation(line: 480, column: 24, scope: !7084)
!7109 = !DILocation(line: 480, column: 2, scope: !7084)
!7110 = !DILocation(line: 480, column: 8, scope: !7084)
!7111 = !DILocation(line: 480, column: 17, scope: !7084)
!7112 = !DILocation(line: 482, column: 20, scope: !7084)
!7113 = !DILocation(line: 482, column: 26, scope: !7084)
!7114 = !DILocation(line: 482, column: 2, scope: !7084)
!7115 = !DILocation(line: 484, column: 6, scope: !7116)
!7116 = distinct !DILexicalBlock(scope: !7084, file: !3, line: 484, column: 6)
!7117 = !DILocation(line: 484, column: 11, scope: !7116)
!7118 = !DILocation(line: 484, column: 6, scope: !7084)
!7119 = !DILocation(line: 485, column: 3, scope: !7116)
!7120 = !DILocation(line: 485, column: 8, scope: !7116)
!7121 = !DILocation(line: 485, column: 13, scope: !7116)
!7122 = !DILocation(line: 487, column: 7, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7084, file: !3, line: 487, column: 6)
!7124 = !DILocation(line: 487, column: 12, scope: !7123)
!7125 = !DILocation(line: 487, column: 6, scope: !7084)
!7126 = !DILocation(line: 488, column: 3, scope: !7123)
!7127 = !DILocation(line: 490, column: 8, scope: !7084)
!7128 = !DILocation(line: 490, column: 13, scope: !7084)
!7129 = !DILocation(line: 490, column: 22, scope: !7084)
!7130 = !DILocation(line: 490, column: 6, scope: !7084)
!7131 = !DILocation(line: 491, column: 6, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7084, file: !3, line: 491, column: 6)
!7133 = !DILocation(line: 491, column: 6, scope: !7084)
!7134 = !DILocation(line: 492, column: 10, scope: !7132)
!7135 = !DILocation(line: 492, column: 3, scope: !7132)
!7136 = !DILocation(line: 495, column: 6, scope: !7091)
!7137 = !DILocation(line: 495, column: 6, scope: !7095)
!7138 = !DILocation(line: 495, column: 6, scope: !7094)
!7139 = !DILocation(line: 495, column: 6, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 495, column: 6)
!7141 = !DILocation(line: 495, column: 6, scope: !7142)
!7142 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 495, column: 6)
!7143 = !{i64 2155731929, i64 2155731958, i64 2155732004, i64 2155732062, i64 2155732116, i64 2155732170, i64 2155732225, i64 2155732256, i64 2155732564, i64 2155732570, i64 2155732617, i64 2155732640, i64 2155732666}
!7144 = !DILocation(line: 495, column: 6, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 495, column: 6)
!7146 = !DILocation(line: 495, column: 6, scope: !7092)
!7147 = !DILocation(line: 495, column: 6, scope: !7084)
!7148 = !DILocation(line: 496, column: 7, scope: !7149)
!7149 = distinct !DILexicalBlock(scope: !7150, file: !3, line: 496, column: 7)
!7150 = distinct !DILexicalBlock(scope: !7092, file: !3, line: 495, column: 56)
!7151 = !DILocation(line: 496, column: 12, scope: !7149)
!7152 = !DILocation(line: 496, column: 7, scope: !7150)
!7153 = !DILocation(line: 497, column: 4, scope: !7149)
!7154 = !DILocation(line: 497, column: 9, scope: !7149)
!7155 = !DILocation(line: 497, column: 18, scope: !7149)
!7156 = !DILocation(line: 498, column: 3, scope: !7150)
!7157 = !DILocation(line: 501, column: 2, scope: !7084)
!7158 = !DILocation(line: 502, column: 1, scope: !7084)
!7159 = distinct !DISubprogram(name: "crypto_shash_show", scope: !3, file: !3, line: 529, type: !191, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7160)
!7160 = !{!7161, !7162, !7163}
!7161 = !DILocalVariable(name: "m", arg: 1, scope: !7159, file: !3, line: 529, type: !193)
!7162 = !DILocalVariable(name: "alg", arg: 2, scope: !7159, file: !3, line: 529, type: !149)
!7163 = !DILocalVariable(name: "salg", scope: !7159, file: !3, line: 531, type: !4555)
!7164 = !DILocation(line: 529, column: 48, scope: !7159)
!7165 = !DILocation(line: 529, column: 70, scope: !7159)
!7166 = !DILocation(line: 531, column: 2, scope: !7159)
!7167 = !DILocation(line: 531, column: 20, scope: !7159)
!7168 = !DILocation(line: 531, column: 46, scope: !7159)
!7169 = !DILocation(line: 531, column: 27, scope: !7159)
!7170 = !DILocation(line: 533, column: 13, scope: !7159)
!7171 = !DILocation(line: 533, column: 2, scope: !7159)
!7172 = !DILocation(line: 534, column: 13, scope: !7159)
!7173 = !DILocation(line: 534, column: 39, scope: !7159)
!7174 = !DILocation(line: 534, column: 44, scope: !7159)
!7175 = !DILocation(line: 534, column: 2, scope: !7159)
!7176 = !DILocation(line: 535, column: 13, scope: !7159)
!7177 = !DILocation(line: 535, column: 39, scope: !7159)
!7178 = !DILocation(line: 535, column: 45, scope: !7159)
!7179 = !DILocation(line: 535, column: 2, scope: !7159)
!7180 = !DILocation(line: 536, column: 1, scope: !7159)
!7181 = distinct !DISubprogram(name: "crypto_shash_free_instance", scope: !3, file: !3, line: 504, type: !4471, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7182)
!7182 = !{!7183, !7184}
!7183 = !DILocalVariable(name: "inst", arg: 1, scope: !7181, file: !3, line: 504, type: !4473)
!7184 = !DILocalVariable(name: "shash", scope: !7181, file: !3, line: 506, type: !4672)
!7185 = !DILocation(line: 504, column: 64, scope: !7181)
!7186 = !DILocation(line: 506, column: 2, scope: !7181)
!7187 = !DILocation(line: 506, column: 25, scope: !7181)
!7188 = !DILocation(line: 506, column: 48, scope: !7181)
!7189 = !DILocation(line: 506, column: 33, scope: !7181)
!7190 = !DILocation(line: 508, column: 2, scope: !7181)
!7191 = !DILocation(line: 508, column: 9, scope: !7181)
!7192 = !DILocation(line: 508, column: 14, scope: !7181)
!7193 = !DILocation(line: 509, column: 1, scope: !7181)
!7194 = distinct !DISubprogram(name: "__crypto_shash_cast", scope: !4674, file: !4674, line: 277, type: !7195, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7197)
!7195 = !DISubroutineType(types: !7196)
!7196 = !{!118, !147}
!7197 = !{!7198, !7199}
!7198 = !DILocalVariable(name: "tfm", arg: 1, scope: !7194, file: !4674, line: 277, type: !147)
!7199 = !DILocalVariable(name: "__mptr", scope: !7200, file: !4674, line: 279, type: !111)
!7200 = distinct !DILexicalBlock(scope: !7194, file: !4674, line: 279, column: 9)
!7201 = !DILocation(line: 277, column: 75, scope: !7194)
!7202 = !DILocation(line: 279, column: 9, scope: !7200)
!7203 = !DILocation(line: 279, column: 9, scope: !7194)
!7204 = !DILocation(line: 279, column: 2, scope: !7194)
!7205 = distinct !DISubprogram(name: "crypto_shash_exit_tfm", scope: !3, file: !3, line: 466, type: !145, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7206)
!7206 = !{!7207, !7208, !7209}
!7207 = !DILocalVariable(name: "tfm", arg: 1, scope: !7205, file: !3, line: 466, type: !147)
!7208 = !DILocalVariable(name: "hash", scope: !7205, file: !3, line: 468, type: !118)
!7209 = !DILocalVariable(name: "alg", scope: !7205, file: !3, line: 469, type: !4555)
!7210 = !DILocation(line: 466, column: 54, scope: !7205)
!7211 = !DILocation(line: 468, column: 2, scope: !7205)
!7212 = !DILocation(line: 468, column: 23, scope: !7205)
!7213 = !DILocation(line: 468, column: 50, scope: !7205)
!7214 = !DILocation(line: 468, column: 30, scope: !7205)
!7215 = !DILocation(line: 469, column: 2, scope: !7205)
!7216 = !DILocation(line: 469, column: 20, scope: !7205)
!7217 = !DILocation(line: 469, column: 43, scope: !7205)
!7218 = !DILocation(line: 469, column: 26, scope: !7205)
!7219 = !DILocation(line: 471, column: 2, scope: !7205)
!7220 = !DILocation(line: 471, column: 7, scope: !7205)
!7221 = !DILocation(line: 471, column: 16, scope: !7205)
!7222 = !DILocation(line: 472, column: 1, scope: !7205)
!7223 = !DISubprogram(name: "seq_printf", scope: !195, file: !195, line: 119, type: !7224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7224 = !DISubroutineType(types: !7225)
!7225 = !{null, !193, !521, null}
!7226 = distinct !DISubprogram(name: "shash_instance", scope: !4674, file: !4674, line: 249, type: !7227, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7229)
!7227 = !DISubroutineType(types: !7228)
!7228 = !{!4672, !4473}
!7229 = !{!7230, !7231}
!7230 = !DILocalVariable(name: "inst", arg: 1, scope: !7226, file: !4674, line: 250, type: !4473)
!7231 = !DILocalVariable(name: "__mptr", scope: !7232, file: !4674, line: 252, type: !111)
!7232 = distinct !DILexicalBlock(scope: !7226, file: !4674, line: 252, column: 9)
!7233 = !DILocation(line: 250, column: 26, scope: !7226)
!7234 = !DILocation(line: 252, column: 9, scope: !7232)
!7235 = !DILocation(line: 252, column: 9, scope: !7226)
!7236 = !DILocation(line: 252, column: 2, scope: !7226)
!7237 = !DISubprogram(name: "crypto_alloc_tfm_node", scope: !5818, file: !5818, line: 144, type: !7238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7238 = !DISubroutineType(types: !7239)
!7239 = !{!111, !521, !172, !138, !138, !136}
!7240 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !103, file: !103, line: 243, type: !7241, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7244)
!7241 = !DISubroutineType(types: !7242)
!7242 = !{!518, !7243}
!7243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!7244 = !{!7245}
!7245 = !DILocalVariable(name: "r", arg: 1, scope: !7240, file: !103, line: 243, type: !7243)
!7246 = !DILocation(line: 243, column: 67, scope: !7240)
!7247 = !DILocation(line: 245, column: 33, scope: !7240)
!7248 = !DILocation(line: 245, column: 9, scope: !7240)
!7249 = !DILocation(line: 245, column: 2, scope: !7240)
!7250 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !103, file: !103, line: 225, type: !7251, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7253)
!7251 = !DISubroutineType(types: !7252)
!7252 = !{!518, !7243, !2072}
!7253 = !{!7254, !7255}
!7254 = !DILocalVariable(name: "r", arg: 1, scope: !7250, file: !103, line: 225, type: !7243)
!7255 = !DILocalVariable(name: "oldp", arg: 2, scope: !7250, file: !103, line: 225, type: !2072)
!7256 = !DILocation(line: 225, column: 69, scope: !7250)
!7257 = !DILocation(line: 225, column: 77, scope: !7250)
!7258 = !DILocation(line: 227, column: 36, scope: !7250)
!7259 = !DILocation(line: 227, column: 39, scope: !7250)
!7260 = !DILocation(line: 227, column: 9, scope: !7250)
!7261 = !DILocation(line: 227, column: 2, scope: !7250)
!7262 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !103, file: !103, line: 150, type: !7263, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7265)
!7263 = !DISubroutineType(types: !7264)
!7264 = !{!518, !136, !7243, !2072}
!7265 = !{!7266, !7267, !7268, !7269}
!7266 = !DILocalVariable(name: "i", arg: 1, scope: !7262, file: !103, line: 150, type: !136)
!7267 = !DILocalVariable(name: "r", arg: 2, scope: !7262, file: !103, line: 150, type: !7243)
!7268 = !DILocalVariable(name: "oldp", arg: 3, scope: !7262, file: !103, line: 150, type: !2072)
!7269 = !DILocalVariable(name: "old", scope: !7262, file: !103, line: 152, type: !136)
!7270 = !DILocation(line: 150, column: 61, scope: !7262)
!7271 = !DILocation(line: 150, column: 76, scope: !7262)
!7272 = !DILocation(line: 150, column: 84, scope: !7262)
!7273 = !DILocation(line: 152, column: 2, scope: !7262)
!7274 = !DILocation(line: 152, column: 6, scope: !7262)
!7275 = !DILocation(line: 152, column: 26, scope: !7262)
!7276 = !DILocation(line: 152, column: 12, scope: !7262)
!7277 = !DILocation(line: 154, column: 2, scope: !7262)
!7278 = !DILocation(line: 155, column: 8, scope: !7279)
!7279 = distinct !DILexicalBlock(scope: !7280, file: !103, line: 155, column: 7)
!7280 = distinct !DILexicalBlock(scope: !7262, file: !103, line: 154, column: 5)
!7281 = !DILocation(line: 155, column: 7, scope: !7280)
!7282 = !DILocation(line: 156, column: 4, scope: !7279)
!7283 = !DILocation(line: 157, column: 2, scope: !7280)
!7284 = !DILocation(line: 157, column: 40, scope: !7262)
!7285 = !DILocation(line: 157, column: 43, scope: !7262)
!7286 = !DILocation(line: 157, column: 55, scope: !7262)
!7287 = !DILocation(line: 157, column: 61, scope: !7262)
!7288 = !DILocation(line: 157, column: 59, scope: !7262)
!7289 = !DILocation(line: 157, column: 12, scope: !7262)
!7290 = !DILocation(line: 157, column: 11, scope: !7262)
!7291 = distinct !{!7291, !7277, !7292, !5501, !5502}
!7292 = !DILocation(line: 157, column: 63, scope: !7262)
!7293 = !DILocation(line: 159, column: 6, scope: !7294)
!7294 = distinct !DILexicalBlock(scope: !7262, file: !103, line: 159, column: 6)
!7295 = !DILocation(line: 159, column: 6, scope: !7262)
!7296 = !DILocation(line: 160, column: 11, scope: !7294)
!7297 = !DILocation(line: 160, column: 4, scope: !7294)
!7298 = !DILocation(line: 160, column: 9, scope: !7294)
!7299 = !DILocation(line: 160, column: 3, scope: !7294)
!7300 = !DILocation(line: 162, column: 6, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7262, file: !103, line: 162, column: 6)
!7302 = !DILocation(line: 162, column: 6, scope: !7262)
!7303 = !DILocation(line: 163, column: 26, scope: !7301)
!7304 = !DILocation(line: 163, column: 3, scope: !7301)
!7305 = !DILocation(line: 165, column: 9, scope: !7262)
!7306 = !DILocation(line: 166, column: 1, scope: !7262)
!7307 = !DILocation(line: 165, column: 2, scope: !7262)
!7308 = distinct !DISubprogram(name: "refcount_read", scope: !103, file: !103, line: 145, type: !7309, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7313)
!7309 = !DISubroutineType(types: !7310)
!7310 = !{!7, !7311}
!7311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7312, size: 64)
!7312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!7313 = !{!7314}
!7314 = !DILocalVariable(name: "r", arg: 1, scope: !7308, file: !103, line: 145, type: !7311)
!7315 = !DILocation(line: 145, column: 60, scope: !7308)
!7316 = !DILocation(line: 147, column: 22, scope: !7308)
!7317 = !DILocation(line: 147, column: 25, scope: !7308)
!7318 = !DILocation(line: 147, column: 9, scope: !7308)
!7319 = !DILocation(line: 147, column: 2, scope: !7308)
!7320 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !7321, file: !7321, line: 1335, type: !7322, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7325)
!7321 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7322 = !DISubroutineType(types: !7323)
!7323 = !{!518, !7324, !2072, !136}
!7324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!7325 = !{!7326, !7327, !7328}
!7326 = !DILocalVariable(name: "v", arg: 1, scope: !7320, file: !7321, line: 1335, type: !7324)
!7327 = !DILocalVariable(name: "old", arg: 2, scope: !7320, file: !7321, line: 1335, type: !2072)
!7328 = !DILocalVariable(name: "new", arg: 3, scope: !7320, file: !7321, line: 1335, type: !136)
!7329 = !DILocation(line: 1335, column: 38, scope: !7320)
!7330 = !DILocation(line: 1335, column: 46, scope: !7320)
!7331 = !DILocation(line: 1335, column: 55, scope: !7320)
!7332 = !DILocation(line: 1337, column: 31, scope: !7320)
!7333 = !DILocation(line: 1337, column: 2, scope: !7320)
!7334 = !DILocation(line: 1338, column: 31, scope: !7320)
!7335 = !DILocation(line: 1338, column: 2, scope: !7320)
!7336 = !DILocation(line: 1339, column: 40, scope: !7320)
!7337 = !DILocation(line: 1339, column: 43, scope: !7320)
!7338 = !DILocation(line: 1339, column: 48, scope: !7320)
!7339 = !DILocation(line: 1339, column: 9, scope: !7320)
!7340 = !DILocation(line: 1339, column: 2, scope: !7320)
!7341 = !DISubprogram(name: "refcount_warn_saturate", scope: !103, file: !103, line: 127, type: !7342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7342 = !DISubroutineType(types: !7343)
!7343 = !{null, !7243, !102}
!7344 = distinct !DISubprogram(name: "atomic_read", scope: !7321, file: !7321, line: 30, type: !7345, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7349)
!7345 = !DISubroutineType(types: !7346)
!7346 = !{!136, !7347}
!7347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7348, size: 64)
!7348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!7349 = !{!7350}
!7350 = !DILocalVariable(name: "v", arg: 1, scope: !7344, file: !7321, line: 30, type: !7347)
!7351 = !DILocation(line: 30, column: 29, scope: !7344)
!7352 = !DILocation(line: 32, column: 25, scope: !7344)
!7353 = !DILocation(line: 32, column: 2, scope: !7344)
!7354 = !DILocation(line: 33, column: 25, scope: !7344)
!7355 = !DILocation(line: 33, column: 9, scope: !7344)
!7356 = !DILocation(line: 33, column: 2, scope: !7344)
!7357 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7358, file: !7358, line: 66, type: !7359, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7364)
!7358 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7359 = !DISubroutineType(types: !7360)
!7360 = !{null, !7361, !200}
!7361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7362, size: 64)
!7362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7363)
!7363 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7364 = !{!7365, !7366}
!7365 = !DILocalVariable(name: "v", arg: 1, scope: !7357, file: !7358, line: 66, type: !7361)
!7366 = !DILocalVariable(name: "size", arg: 2, scope: !7357, file: !7358, line: 66, type: !200)
!7367 = !DILocation(line: 66, column: 73, scope: !7357)
!7368 = !DILocation(line: 66, column: 83, scope: !7357)
!7369 = !DILocation(line: 68, column: 19, scope: !7357)
!7370 = !DILocation(line: 68, column: 22, scope: !7357)
!7371 = !DILocation(line: 68, column: 2, scope: !7357)
!7372 = !DILocation(line: 69, column: 2, scope: !7357)
!7373 = !DILocation(line: 70, column: 1, scope: !7357)
!7374 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7375, file: !7375, line: 442, type: !7345, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7376)
!7375 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7376 = !{!7377}
!7377 = !DILocalVariable(name: "v", arg: 1, scope: !7374, file: !7375, line: 442, type: !7347)
!7378 = !DILocation(line: 442, column: 33, scope: !7374)
!7379 = !DILocation(line: 444, column: 26, scope: !7374)
!7380 = !DILocation(line: 444, column: 9, scope: !7374)
!7381 = !DILocation(line: 444, column: 2, scope: !7374)
!7382 = distinct !DISubprogram(name: "kasan_check_read", scope: !7383, file: !7383, line: 40, type: !7384, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7386)
!7383 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7384 = !DISubroutineType(types: !7385)
!7385 = !{!518, !7361, !7}
!7386 = !{!7387, !7388}
!7387 = !DILocalVariable(name: "p", arg: 1, scope: !7382, file: !7383, line: 40, type: !7361)
!7388 = !DILocalVariable(name: "size", arg: 2, scope: !7382, file: !7383, line: 40, type: !7)
!7389 = !DILocation(line: 40, column: 58, scope: !7382)
!7390 = !DILocation(line: 40, column: 74, scope: !7382)
!7391 = !DILocation(line: 42, column: 2, scope: !7382)
!7392 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7393, file: !7393, line: 229, type: !7394, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7396)
!7393 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7394 = !DISubroutineType(types: !7395)
!7395 = !{null, !7361, !200, !136}
!7396 = !{!7397, !7398, !7399}
!7397 = !DILocalVariable(name: "ptr", arg: 1, scope: !7392, file: !7393, line: 229, type: !7361)
!7398 = !DILocalVariable(name: "size", arg: 2, scope: !7392, file: !7393, line: 229, type: !200)
!7399 = !DILocalVariable(name: "type", arg: 3, scope: !7392, file: !7393, line: 230, type: !136)
!7400 = !DILocation(line: 229, column: 60, scope: !7392)
!7401 = !DILocation(line: 229, column: 72, scope: !7392)
!7402 = !DILocation(line: 230, column: 15, scope: !7392)
!7403 = !DILocation(line: 230, column: 23, scope: !7392)
!7404 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7405, file: !7405, line: 17, type: !7345, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7406)
!7405 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7406 = !{!7407}
!7407 = !DILocalVariable(name: "v", arg: 1, scope: !7404, file: !7405, line: 17, type: !7347)
!7408 = !DILocation(line: 17, column: 61, scope: !7404)
!7409 = !DILocation(line: 23, column: 9, scope: !7404)
!7410 = !DILocation(line: 23, column: 2, scope: !7404)
!7411 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7358, file: !7358, line: 94, type: !7359, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7412)
!7412 = !{!7413, !7414}
!7413 = !DILocalVariable(name: "v", arg: 1, scope: !7411, file: !7358, line: 94, type: !7361)
!7414 = !DILocalVariable(name: "size", arg: 2, scope: !7411, file: !7358, line: 94, type: !200)
!7415 = !DILocation(line: 94, column: 79, scope: !7411)
!7416 = !DILocation(line: 94, column: 89, scope: !7411)
!7417 = !DILocation(line: 96, column: 20, scope: !7411)
!7418 = !DILocation(line: 96, column: 23, scope: !7411)
!7419 = !DILocation(line: 96, column: 2, scope: !7411)
!7420 = !DILocation(line: 97, column: 2, scope: !7411)
!7421 = !DILocation(line: 98, column: 1, scope: !7411)
!7422 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !7375, file: !7375, line: 2207, type: !7322, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7423)
!7423 = !{!7424, !7425, !7426}
!7424 = !DILocalVariable(name: "v", arg: 1, scope: !7422, file: !7375, line: 2207, type: !7324)
!7425 = !DILocalVariable(name: "old", arg: 2, scope: !7422, file: !7375, line: 2207, type: !2072)
!7426 = !DILocalVariable(name: "new", arg: 3, scope: !7422, file: !7375, line: 2207, type: !136)
!7427 = !DILocation(line: 2207, column: 42, scope: !7422)
!7428 = !DILocation(line: 2207, column: 50, scope: !7422)
!7429 = !DILocation(line: 2207, column: 59, scope: !7422)
!7430 = !DILocation(line: 2212, column: 33, scope: !7422)
!7431 = !DILocation(line: 2212, column: 36, scope: !7422)
!7432 = !DILocation(line: 2212, column: 41, scope: !7422)
!7433 = !DILocation(line: 2212, column: 9, scope: !7422)
!7434 = !DILocation(line: 2212, column: 2, scope: !7422)
!7435 = distinct !DISubprogram(name: "kasan_check_write", scope: !7383, file: !7383, line: 44, type: !7384, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7436)
!7436 = !{!7437, !7438}
!7437 = !DILocalVariable(name: "p", arg: 1, scope: !7435, file: !7383, line: 44, type: !7361)
!7438 = !DILocalVariable(name: "size", arg: 2, scope: !7435, file: !7383, line: 44, type: !7)
!7439 = !DILocation(line: 44, column: 59, scope: !7435)
!7440 = !DILocation(line: 44, column: 75, scope: !7435)
!7441 = !DILocation(line: 46, column: 2, scope: !7435)
!7442 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !7405, file: !7405, line: 113, type: !7322, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7443)
!7443 = !{!7444, !7445, !7446, !7447, !7449, !7450, !7451, !7452}
!7444 = !DILocalVariable(name: "v", arg: 1, scope: !7442, file: !7405, line: 113, type: !7324)
!7445 = !DILocalVariable(name: "old", arg: 2, scope: !7442, file: !7405, line: 113, type: !2072)
!7446 = !DILocalVariable(name: "new", arg: 3, scope: !7442, file: !7405, line: 113, type: !136)
!7447 = !DILocalVariable(name: "success", scope: !7448, file: !7405, line: 115, type: !518)
!7448 = distinct !DILexicalBlock(scope: !7442, file: !7405, line: 115, column: 9)
!7449 = !DILocalVariable(name: "_old", scope: !7448, file: !7405, line: 115, type: !2072)
!7450 = !DILocalVariable(name: "__old", scope: !7448, file: !7405, line: 115, type: !136)
!7451 = !DILocalVariable(name: "__new", scope: !7448, file: !7405, line: 115, type: !136)
!7452 = !DILocalVariable(name: "__ptr", scope: !7448, file: !7405, line: 115, type: !4695)
!7453 = !DILocation(line: 113, column: 63, scope: !7442)
!7454 = !DILocation(line: 113, column: 71, scope: !7442)
!7455 = !DILocation(line: 113, column: 80, scope: !7442)
!7456 = !DILocation(line: 115, column: 9, scope: !7448)
!7457 = !{i64 2148899072, i64 2148899111, i64 2148899132, i64 2148899169, i64 2148899192, i64 2148899201, i64 2148899499}
!7458 = !DILocation(line: 115, column: 9, scope: !7459)
!7459 = distinct !DILexicalBlock(scope: !7448, file: !7405, line: 115, column: 9)
!7460 = !DILocation(line: 115, column: 9, scope: !7442)
!7461 = !DILocation(line: 115, column: 2, scope: !7442)
!7462 = distinct !DISubprogram(name: "shash_default_export", scope: !3, file: !3, line: 269, type: !4577, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7463)
!7463 = !{!7464, !7465}
!7464 = !DILocalVariable(name: "desc", arg: 1, scope: !7462, file: !3, line: 269, type: !113)
!7465 = !DILocalVariable(name: "out", arg: 2, scope: !7462, file: !3, line: 269, type: !111)
!7466 = !DILocation(line: 269, column: 52, scope: !7462)
!7467 = !DILocation(line: 269, column: 64, scope: !7462)
!7468 = !DILocation(line: 271, column: 9, scope: !7462)
!7469 = !DILocation(line: 271, column: 29, scope: !7462)
!7470 = !DILocation(line: 271, column: 14, scope: !7462)
!7471 = !DILocation(line: 271, column: 58, scope: !7462)
!7472 = !DILocation(line: 271, column: 64, scope: !7462)
!7473 = !DILocation(line: 271, column: 36, scope: !7462)
!7474 = !DILocation(line: 271, column: 2, scope: !7462)
!7475 = !DILocation(line: 272, column: 2, scope: !7462)
!7476 = distinct !DISubprogram(name: "shash_default_import", scope: !3, file: !3, line: 275, type: !4581, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7477)
!7477 = !{!7478, !7479}
!7478 = !DILocalVariable(name: "desc", arg: 1, scope: !7476, file: !3, line: 275, type: !113)
!7479 = !DILocalVariable(name: "in", arg: 2, scope: !7476, file: !3, line: 275, type: !1318)
!7480 = !DILocation(line: 275, column: 52, scope: !7476)
!7481 = !DILocation(line: 275, column: 70, scope: !7476)
!7482 = !DILocation(line: 277, column: 24, scope: !7476)
!7483 = !DILocation(line: 277, column: 9, scope: !7476)
!7484 = !DILocation(line: 277, column: 31, scope: !7476)
!7485 = !DILocation(line: 277, column: 57, scope: !7476)
!7486 = !DILocation(line: 277, column: 63, scope: !7476)
!7487 = !DILocation(line: 277, column: 35, scope: !7476)
!7488 = !DILocation(line: 277, column: 2, scope: !7476)
!7489 = !DILocation(line: 278, column: 2, scope: !7476)
!7490 = distinct !DISubprogram(name: "shash_desc_ctx", scope: !115, file: !115, line: 885, type: !7491, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7493)
!7491 = !DISubroutineType(types: !7492)
!7492 = !{!111, !113}
!7493 = !{!7494}
!7494 = !DILocalVariable(name: "desc", arg: 1, scope: !7490, file: !115, line: 885, type: !113)
!7495 = !DILocation(line: 885, column: 55, scope: !7490)
!7496 = !DILocation(line: 887, column: 9, scope: !7490)
!7497 = !DILocation(line: 887, column: 15, scope: !7490)
!7498 = !DILocation(line: 887, column: 2, scope: !7490)
!7499 = distinct !DISubprogram(name: "crypto_instance_ctx", scope: !175, file: !175, line: 224, type: !7500, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7502)
!7500 = !DISubroutineType(types: !7501)
!7501 = !{!111, !4473}
!7502 = !{!7503}
!7503 = !DILocalVariable(name: "inst", arg: 1, scope: !7499, file: !175, line: 224, type: !4473)
!7504 = !DILocation(line: 224, column: 65, scope: !7499)
!7505 = !DILocation(line: 226, column: 9, scope: !7499)
!7506 = !DILocation(line: 226, column: 15, scope: !7499)
!7507 = !DILocation(line: 226, column: 2, scope: !7499)
