; ModuleID = 'crypto/ahash.c'
source_filename = "crypto/ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_hash_walk_done: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_hash_walk_done ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_hash_walk_first: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_hash_walk_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_ahash_setkey: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_ahash_setkey ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_ahash_final: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_ahash_final ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_ahash_finup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_ahash_finup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_ahash_digest: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_ahash_digest ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_grab_ahash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_grab_ahash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alloc_ahash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alloc_ahash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_has_ahash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_has_ahash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_clone_ahash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_clone_ahash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_register_ahash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_register_ahash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_unregister_ahash: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_unregister_ahash ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_register_ahashes: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_register_ahashes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_unregister_ahashes: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_unregister_ahashes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ahash_register_instance: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ahash_register_instance ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_hash_alg_has_setkey: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_hash_alg_has_setkey ; .previous"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.static_call_key = type { ptr, %union.anon.51 }
%union.anon.51 = type { i64 }
%struct.crypto_hash_walk = type { ptr, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.page = type { i64, %union.anon.13, %union.anon.22, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %union.anon.15, ptr, %union.anon.17, i64 }
%union.anon.15 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.17 = type { i64 }
%union.anon.22 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.crypto_tfm }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hash_alg_common = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.47, ptr, ptr, ptr, ptr }
%union.anon.47 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_ahash_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.46, ptr, i32, i8, i8 }
%union.anon.46 = type { ptr }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hash_alg_common }
%struct.ahash_instance = type { ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { [96 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.50, %struct.work_struct, [0 x ptr] }
%union.anon.50 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, %struct.crypto_alg }

@__UNIQUE_ID___addressable_crypto_hash_walk_done344 = internal global ptr @crypto_hash_walk_done, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_crypto_hash_walk_first345 = internal global ptr @crypto_hash_walk_first, section ".discard.addressable", align 8, !dbg !4723
@__UNIQUE_ID___addressable_crypto_ahash_setkey346 = internal global ptr @crypto_ahash_setkey, section ".discard.addressable", align 8, !dbg !4725
@__UNIQUE_ID___addressable_crypto_ahash_final347 = internal global ptr @crypto_ahash_final, section ".discard.addressable", align 8, !dbg !4727
@__UNIQUE_ID___addressable_crypto_ahash_finup348 = internal global ptr @crypto_ahash_finup, section ".discard.addressable", align 8, !dbg !4729
@__UNIQUE_ID___addressable_crypto_ahash_digest349 = internal global ptr @crypto_ahash_digest, section ".discard.addressable", align 8, !dbg !4731
@crypto_ahash_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_ahash_extsize, ptr @crypto_ahash_init_tfm, ptr @crypto_ahash_show, ptr null, ptr @crypto_ahash_free_instance, i32 15, i32 -16, i32 14, i32 72 }, align 8, !dbg !4787
@__UNIQUE_ID___addressable_crypto_grab_ahash350 = internal global ptr @crypto_grab_ahash, section ".discard.addressable", align 8, !dbg !4733
@__UNIQUE_ID___addressable_crypto_alloc_ahash351 = internal global ptr @crypto_alloc_ahash, section ".discard.addressable", align 8, !dbg !4735
@__UNIQUE_ID___addressable_crypto_has_ahash352 = internal global ptr @crypto_has_ahash, section ".discard.addressable", align 8, !dbg !4737
@__UNIQUE_ID___addressable_crypto_clone_ahash353 = internal global ptr @crypto_clone_ahash, section ".discard.addressable", align 8, !dbg !4739
@__UNIQUE_ID___addressable_crypto_register_ahash354 = internal global ptr @crypto_register_ahash, section ".discard.addressable", align 8, !dbg !4741
@__UNIQUE_ID___addressable_crypto_unregister_ahash355 = internal global ptr @crypto_unregister_ahash, section ".discard.addressable", align 8, !dbg !4743
@__UNIQUE_ID___addressable_crypto_register_ahashes356 = internal global ptr @crypto_register_ahashes, section ".discard.addressable", align 8, !dbg !4745
@__UNIQUE_ID___addressable_crypto_unregister_ahashes357 = internal global ptr @crypto_unregister_ahashes, section ".discard.addressable", align 8, !dbg !4747
@.str = private unnamed_addr constant [15 x i8] c"crypto/ahash.c\00", align 1, !dbg !4749
@__UNIQUE_ID___addressable_ahash_register_instance358 = internal global ptr @ahash_register_instance, section ".discard.addressable", align 8, !dbg !4754
@__UNIQUE_ID___addressable_crypto_hash_alg_has_setkey359 = internal global ptr @crypto_hash_alg_has_setkey, section ".discard.addressable", align 8, !dbg !4756
@__UNIQUE_ID_file360 = internal constant [36 x i8] c"crypto_hash.file=crypto/crypto_hash\00", section ".modinfo", align 1, !dbg !4758
@__UNIQUE_ID_license361 = internal constant [24 x i8] c"crypto_hash.license=GPL\00", section ".modinfo", align 1, !dbg !4763
@__UNIQUE_ID_description362 = internal constant [61 x i8] c"crypto_hash.description=Asynchronous cryptographic hash type\00", section ".modinfo", align 1, !dbg !4768
@.str.1 = private unnamed_addr constant [18 x i8] c"crypto/internal.h\00", align 1, !dbg !4773
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched183 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !4779
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4782
@.str.3 = private unnamed_addr constant [22 x i8] c"type         : ahash\0A\00", align 1, !dbg !4789
@.str.4 = private unnamed_addr constant [19 x i8] c"async        : %s\0A\00", align 1, !dbg !4794
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !4799
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !4802
@.str.7 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1, !dbg !4805
@.str.8 = private unnamed_addr constant [19 x i8] c"digestsize   : %u\0A\00", align 1, !dbg !4807
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID___addressable_crypto_hash_walk_done344, ptr @__UNIQUE_ID___addressable_crypto_hash_walk_first345, ptr @__UNIQUE_ID___addressable_crypto_ahash_setkey346, ptr @__UNIQUE_ID___addressable_crypto_ahash_final347, ptr @__UNIQUE_ID___addressable_crypto_ahash_finup348, ptr @__UNIQUE_ID___addressable_crypto_ahash_digest349, ptr @__UNIQUE_ID___addressable_crypto_grab_ahash350, ptr @__UNIQUE_ID___addressable_crypto_alloc_ahash351, ptr @__UNIQUE_ID___addressable_crypto_has_ahash352, ptr @__UNIQUE_ID___addressable_crypto_clone_ahash353, ptr @__UNIQUE_ID___addressable_crypto_register_ahash354, ptr @__UNIQUE_ID___addressable_crypto_unregister_ahash355, ptr @__UNIQUE_ID___addressable_crypto_register_ahashes356, ptr @__UNIQUE_ID___addressable_crypto_unregister_ahashes357, ptr @__UNIQUE_ID___addressable_ahash_register_instance358, ptr @__UNIQUE_ID___addressable_crypto_hash_alg_has_setkey359, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__UNIQUE_ID_description362, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched183], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_hash_walk_done(ptr noundef %walk, i32 noundef %err) #0 align 16 !dbg !4818 {
entry:
  %retval = alloca i32, align 4
  %walk.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %alignmask = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %__UNIQUE_ID___x341 = alloca i32, align 4
  %__UNIQUE_ID___y342 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !4833, metadata !DIExpression()), !dbg !4842
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !4834, metadata !DIExpression()), !dbg !4843
  call void @llvm.lifetime.start.p0(i64 4, ptr %alignmask) #14, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !4835, metadata !DIExpression()), !dbg !4845
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !4846
  %alignmask1 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 2, !dbg !4847
  %1 = load i32, ptr %alignmask1, align 4, !dbg !4847
  store i32 %1, ptr %alignmask, align 4, !dbg !4845
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !4848
  %offset = getelementptr inbounds %struct.crypto_hash_walk, ptr %2, i32 0, i32 1, !dbg !4849
  %3 = load i32, ptr %offset, align 8, !dbg !4849
  %4 = load ptr, ptr %walk.addr, align 8, !dbg !4850
  %data = getelementptr inbounds %struct.crypto_hash_walk, ptr %4, i32 0, i32 0, !dbg !4851
  %5 = load ptr, ptr %data, align 8, !dbg !4852
  %idx.ext = zext i32 %3 to i64, !dbg !4852
  %idx.neg = sub i64 0, %idx.ext, !dbg !4852
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.neg, !dbg !4852
  store ptr %add.ptr, ptr %data, align 8, !dbg !4852
  %6 = load ptr, ptr %walk.addr, align 8, !dbg !4853
  %entrylen = getelementptr inbounds %struct.crypto_hash_walk, ptr %6, i32 0, i32 4, !dbg !4854
  %7 = load i32, ptr %entrylen, align 8, !dbg !4854
  %tobool = icmp ne i32 %7, 0, !dbg !4853
  br i1 %tobool, label %land.lhs.true, label %if.end25, !dbg !4855

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %walk.addr, align 8, !dbg !4856
  %offset2 = getelementptr inbounds %struct.crypto_hash_walk, ptr %8, i32 0, i32 1, !dbg !4857
  %9 = load i32, ptr %offset2, align 8, !dbg !4857
  %10 = load i32, ptr %alignmask, align 4, !dbg !4858
  %and = and i32 %9, %10, !dbg !4859
  %tobool3 = icmp ne i32 %and, 0, !dbg !4859
  br i1 %tobool3, label %land.lhs.true4, label %if.end25, !dbg !4860

land.lhs.true4:                                   ; preds = %land.lhs.true
  %11 = load i32, ptr %err.addr, align 4, !dbg !4861
  %tobool5 = icmp ne i32 %11, 0, !dbg !4861
  br i1 %tobool5, label %if.end25, label %if.then, !dbg !4862

if.then:                                          ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbytes) #14, !dbg !4863
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !4836, metadata !DIExpression()), !dbg !4864
  %12 = load ptr, ptr %walk.addr, align 8, !dbg !4865
  %offset6 = getelementptr inbounds %struct.crypto_hash_walk, ptr %12, i32 0, i32 1, !dbg !4865
  %13 = load i32, ptr %offset6, align 8, !dbg !4865
  %14 = load i32, ptr %alignmask, align 4, !dbg !4865
  %add = add i32 %14, 1, !dbg !4865
  %sub = sub i32 %add, 1, !dbg !4865
  %add7 = add i32 %13, %sub, !dbg !4865
  %15 = load i32, ptr %alignmask, align 4, !dbg !4865
  %add8 = add i32 %15, 1, !dbg !4865
  %sub9 = sub i32 %add8, 1, !dbg !4865
  %not = xor i32 %sub9, -1, !dbg !4865
  %and10 = and i32 %add7, %not, !dbg !4865
  %16 = load ptr, ptr %walk.addr, align 8, !dbg !4866
  %offset11 = getelementptr inbounds %struct.crypto_hash_walk, ptr %16, i32 0, i32 1, !dbg !4867
  store i32 %and10, ptr %offset11, align 8, !dbg !4868
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x341) #14, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x341, metadata !4839, metadata !DIExpression()), !dbg !4869
  %17 = load ptr, ptr %walk.addr, align 8, !dbg !4869
  %entrylen12 = getelementptr inbounds %struct.crypto_hash_walk, ptr %17, i32 0, i32 4, !dbg !4869
  %18 = load i32, ptr %entrylen12, align 8, !dbg !4869
  store i32 %18, ptr %__UNIQUE_ID___x341, align 4, !dbg !4869
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y342) #14, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y342, metadata !4841, metadata !DIExpression()), !dbg !4869
  %19 = load ptr, ptr %walk.addr, align 8, !dbg !4869
  %offset13 = getelementptr inbounds %struct.crypto_hash_walk, ptr %19, i32 0, i32 1, !dbg !4869
  %20 = load i32, ptr %offset13, align 8, !dbg !4869
  %conv = zext i32 %20 to i64, !dbg !4869
  %sub14 = sub i64 4096, %conv, !dbg !4869
  %conv15 = trunc i64 %sub14 to i32, !dbg !4869
  store i32 %conv15, ptr %__UNIQUE_ID___y342, align 4, !dbg !4869
  %21 = load i32, ptr %__UNIQUE_ID___x341, align 4, !dbg !4869
  %22 = load i32, ptr %__UNIQUE_ID___y342, align 4, !dbg !4869
  %cmp = icmp ult i32 %21, %22, !dbg !4869
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4869

cond.true:                                        ; preds = %if.then
  %23 = load i32, ptr %__UNIQUE_ID___x341, align 4, !dbg !4869
  br label %cond.end, !dbg !4869

cond.false:                                       ; preds = %if.then
  %24 = load i32, ptr %__UNIQUE_ID___y342, align 4, !dbg !4869
  br label %cond.end, !dbg !4869

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !4869
  store i32 %cond, ptr %tmp, align 4, !dbg !4869
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y342) #14, !dbg !4870
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x341) #14, !dbg !4870
  %25 = load i32, ptr %tmp, align 4, !dbg !4869
  store i32 %25, ptr %nbytes, align 4, !dbg !4871
  %26 = load i32, ptr %nbytes, align 4, !dbg !4872
  %tobool17 = icmp ne i32 %26, 0, !dbg !4872
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !4874

if.then18:                                        ; preds = %cond.end
  %27 = load i32, ptr %nbytes, align 4, !dbg !4875
  %28 = load ptr, ptr %walk.addr, align 8, !dbg !4877
  %entrylen19 = getelementptr inbounds %struct.crypto_hash_walk, ptr %28, i32 0, i32 4, !dbg !4878
  %29 = load i32, ptr %entrylen19, align 8, !dbg !4879
  %sub20 = sub i32 %29, %27, !dbg !4879
  store i32 %sub20, ptr %entrylen19, align 8, !dbg !4879
  %30 = load ptr, ptr %walk.addr, align 8, !dbg !4880
  %offset21 = getelementptr inbounds %struct.crypto_hash_walk, ptr %30, i32 0, i32 1, !dbg !4881
  %31 = load i32, ptr %offset21, align 8, !dbg !4881
  %32 = load ptr, ptr %walk.addr, align 8, !dbg !4882
  %data22 = getelementptr inbounds %struct.crypto_hash_walk, ptr %32, i32 0, i32 0, !dbg !4883
  %33 = load ptr, ptr %data22, align 8, !dbg !4884
  %idx.ext23 = zext i32 %31 to i64, !dbg !4884
  %add.ptr24 = getelementptr i8, ptr %33, i64 %idx.ext23, !dbg !4884
  store ptr %add.ptr24, ptr %data22, align 8, !dbg !4884
  %34 = load i32, ptr %nbytes, align 4, !dbg !4885
  store i32 %34, ptr %retval, align 4, !dbg !4886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4886

if.end:                                           ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4887
  br label %cleanup, !dbg !4887

cleanup:                                          ; preds = %if.end, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbytes) #14, !dbg !4887
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !4888

if.end25:                                         ; preds = %cleanup.cont, %land.lhs.true4, %land.lhs.true, %entry
  br label %do.body, !dbg !4889

do.body:                                          ; preds = %if.end25
  br label %do.body26, !dbg !4890

do.body26:                                        ; preds = %do.body
  br label %do.cond, !dbg !4892

do.cond:                                          ; preds = %do.body26
  br label %do.end, !dbg !4892

do.end:                                           ; preds = %do.cond
  %35 = load ptr, ptr %walk.addr, align 8, !dbg !4890
  %data27 = getelementptr inbounds %struct.crypto_hash_walk, ptr %35, i32 0, i32 0, !dbg !4890
  %36 = load ptr, ptr %data27, align 8, !dbg !4890
  call void @__kunmap_local(ptr noundef %36) #15, !dbg !4890
  br label %do.cond28, !dbg !4890

do.cond28:                                        ; preds = %do.end
  br label %do.end29, !dbg !4890

do.end29:                                         ; preds = %do.cond28
  %37 = load ptr, ptr %walk.addr, align 8, !dbg !4894
  %flags = getelementptr inbounds %struct.crypto_hash_walk, ptr %37, i32 0, i32 7, !dbg !4895
  %38 = load i32, ptr %flags, align 8, !dbg !4895
  call void @crypto_yield(i32 noundef %38) #15, !dbg !4896
  %39 = load i32, ptr %err.addr, align 4, !dbg !4897
  %tobool30 = icmp ne i32 %39, 0, !dbg !4897
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4899

if.then31:                                        ; preds = %do.end29
  %40 = load i32, ptr %err.addr, align 4, !dbg !4900
  store i32 %40, ptr %retval, align 4, !dbg !4901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4901

if.end32:                                         ; preds = %do.end29
  %41 = load ptr, ptr %walk.addr, align 8, !dbg !4902
  %entrylen33 = getelementptr inbounds %struct.crypto_hash_walk, ptr %41, i32 0, i32 4, !dbg !4904
  %42 = load i32, ptr %entrylen33, align 8, !dbg !4904
  %tobool34 = icmp ne i32 %42, 0, !dbg !4902
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !4905

if.then35:                                        ; preds = %if.end32
  %43 = load ptr, ptr %walk.addr, align 8, !dbg !4906
  %offset36 = getelementptr inbounds %struct.crypto_hash_walk, ptr %43, i32 0, i32 1, !dbg !4908
  store i32 0, ptr %offset36, align 8, !dbg !4909
  %44 = load ptr, ptr %walk.addr, align 8, !dbg !4910
  %pg = getelementptr inbounds %struct.crypto_hash_walk, ptr %44, i32 0, i32 3, !dbg !4911
  %45 = load ptr, ptr %pg, align 8, !dbg !4912
  %incdec.ptr = getelementptr %struct.page, ptr %45, i32 1, !dbg !4912
  store ptr %incdec.ptr, ptr %pg, align 8, !dbg !4912
  %46 = load ptr, ptr %walk.addr, align 8, !dbg !4913
  %call = call i32 @hash_walk_next(ptr noundef %46) #15, !dbg !4914
  store i32 %call, ptr %retval, align 4, !dbg !4915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4915

if.end37:                                         ; preds = %if.end32
  %47 = load ptr, ptr %walk.addr, align 8, !dbg !4916
  %total = getelementptr inbounds %struct.crypto_hash_walk, ptr %47, i32 0, i32 5, !dbg !4918
  %48 = load i32, ptr %total, align 4, !dbg !4918
  %tobool38 = icmp ne i32 %48, 0, !dbg !4916
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !4919

if.then39:                                        ; preds = %if.end37
  store i32 0, ptr %retval, align 4, !dbg !4920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4920

if.end40:                                         ; preds = %if.end37
  %49 = load ptr, ptr %walk.addr, align 8, !dbg !4921
  %sg = getelementptr inbounds %struct.crypto_hash_walk, ptr %49, i32 0, i32 6, !dbg !4922
  %50 = load ptr, ptr %sg, align 8, !dbg !4922
  %call41 = call ptr @sg_next(ptr noundef %50) #15, !dbg !4923
  %51 = load ptr, ptr %walk.addr, align 8, !dbg !4924
  %sg42 = getelementptr inbounds %struct.crypto_hash_walk, ptr %51, i32 0, i32 6, !dbg !4925
  store ptr %call41, ptr %sg42, align 8, !dbg !4926
  %52 = load ptr, ptr %walk.addr, align 8, !dbg !4927
  %call43 = call i32 @hash_walk_new_entry(ptr noundef %52) #15, !dbg !4928
  store i32 %call43, ptr %retval, align 4, !dbg !4929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4929

cleanup44:                                        ; preds = %if.end40, %if.then39, %if.then35, %if.then31, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %alignmask) #14, !dbg !4930
  %53 = load i32, ptr %retval, align 4, !dbg !4930
  ret i32 %53, !dbg !4930
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #3 align 16 !dbg !4931 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  ret void, !dbg !4938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_yield(i32 noundef %flags) #3 align 16 !dbg !4939 {
entry:
  %flags.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4945
  %and = and i32 %0, 512, !dbg !4947
  %tobool = icmp ne i32 %and, 0, !dbg !4947
  br i1 %tobool, label %if.then, label %if.end, !dbg !4948

if.then:                                          ; preds = %entry
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 206, i32 noundef 0) #15, !dbg !4949
  %call = call i32 @_cond_resched() #15, !dbg !4949
  store i32 %call, ptr %tmp, align 4, !dbg !4949
  %1 = load i32, ptr %tmp, align 4, !dbg !4949
  br label %if.end, !dbg !4951

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4952
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_walk_next(ptr noundef %walk) #0 align 16 !dbg !4953 {
entry:
  %walk.addr = alloca ptr, align 8
  %alignmask = alloca i32, align 4
  %offset = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %__UNIQUE_ID___x339 = alloca i32, align 4
  %__UNIQUE_ID___y340 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %unaligned = alloca i32, align 4
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !4957, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %alignmask) #14, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !4958, metadata !DIExpression()), !dbg !4969
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !4970
  %alignmask1 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 2, !dbg !4971
  %1 = load i32, ptr %alignmask1, align 4, !dbg !4971
  store i32 %1, ptr %alignmask, align 4, !dbg !4969
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #14, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4959, metadata !DIExpression()), !dbg !4973
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !4974
  %offset2 = getelementptr inbounds %struct.crypto_hash_walk, ptr %2, i32 0, i32 1, !dbg !4975
  %3 = load i32, ptr %offset2, align 8, !dbg !4975
  store i32 %3, ptr %offset, align 4, !dbg !4973
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbytes) #14, !dbg !4976
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !4960, metadata !DIExpression()), !dbg !4977
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x339) #14, !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x339, metadata !4961, metadata !DIExpression()), !dbg !4978
  %4 = load ptr, ptr %walk.addr, align 8, !dbg !4978
  %entrylen = getelementptr inbounds %struct.crypto_hash_walk, ptr %4, i32 0, i32 4, !dbg !4978
  %5 = load i32, ptr %entrylen, align 8, !dbg !4978
  store i32 %5, ptr %__UNIQUE_ID___x339, align 4, !dbg !4978
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y340) #14, !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y340, metadata !4963, metadata !DIExpression()), !dbg !4978
  %6 = load i32, ptr %offset, align 4, !dbg !4978
  %sub = sub i32 4096, %6, !dbg !4978
  store i32 %sub, ptr %__UNIQUE_ID___y340, align 4, !dbg !4978
  %7 = load i32, ptr %__UNIQUE_ID___x339, align 4, !dbg !4978
  %8 = load i32, ptr %__UNIQUE_ID___y340, align 4, !dbg !4978
  %cmp = icmp ult i32 %7, %8, !dbg !4978
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4978

cond.true:                                        ; preds = %entry
  %9 = load i32, ptr %__UNIQUE_ID___x339, align 4, !dbg !4978
  br label %cond.end, !dbg !4978

cond.false:                                       ; preds = %entry
  %10 = load i32, ptr %__UNIQUE_ID___y340, align 4, !dbg !4978
  br label %cond.end, !dbg !4978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !4978
  store i32 %cond, ptr %tmp, align 4, !dbg !4978
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y340) #14, !dbg !4979
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x339) #14, !dbg !4979
  %11 = load i32, ptr %tmp, align 4, !dbg !4978
  store i32 %11, ptr %nbytes, align 4, !dbg !4977
  %12 = load ptr, ptr %walk.addr, align 8, !dbg !4980
  %pg = getelementptr inbounds %struct.crypto_hash_walk, ptr %12, i32 0, i32 3, !dbg !4981
  %13 = load ptr, ptr %pg, align 8, !dbg !4981
  %call = call ptr @kmap_local_page(ptr noundef %13) #15, !dbg !4982
  %14 = load ptr, ptr %walk.addr, align 8, !dbg !4983
  %data = getelementptr inbounds %struct.crypto_hash_walk, ptr %14, i32 0, i32 0, !dbg !4984
  store ptr %call, ptr %data, align 8, !dbg !4985
  %15 = load i32, ptr %offset, align 4, !dbg !4986
  %16 = load ptr, ptr %walk.addr, align 8, !dbg !4987
  %data3 = getelementptr inbounds %struct.crypto_hash_walk, ptr %16, i32 0, i32 0, !dbg !4988
  %17 = load ptr, ptr %data3, align 8, !dbg !4989
  %idx.ext = zext i32 %15 to i64, !dbg !4989
  %add.ptr = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !4989
  store ptr %add.ptr, ptr %data3, align 8, !dbg !4989
  %18 = load i32, ptr %offset, align 4, !dbg !4990
  %19 = load i32, ptr %alignmask, align 4, !dbg !4991
  %and = and i32 %18, %19, !dbg !4992
  %tobool = icmp ne i32 %and, 0, !dbg !4992
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4993

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %unaligned) #14, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %unaligned, metadata !4964, metadata !DIExpression()), !dbg !4995
  %20 = load i32, ptr %alignmask, align 4, !dbg !4996
  %add = add i32 %20, 1, !dbg !4997
  %21 = load i32, ptr %offset, align 4, !dbg !4998
  %22 = load i32, ptr %alignmask, align 4, !dbg !4999
  %and4 = and i32 %21, %22, !dbg !5000
  %sub5 = sub i32 %add, %and4, !dbg !5001
  store i32 %sub5, ptr %unaligned, align 4, !dbg !4995
  %23 = load i32, ptr %nbytes, align 4, !dbg !5002
  %24 = load i32, ptr %unaligned, align 4, !dbg !5004
  %cmp6 = icmp ugt i32 %23, %24, !dbg !5005
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !5006

if.then7:                                         ; preds = %if.then
  %25 = load i32, ptr %unaligned, align 4, !dbg !5007
  store i32 %25, ptr %nbytes, align 4, !dbg !5008
  br label %if.end, !dbg !5009

if.end:                                           ; preds = %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %unaligned) #14, !dbg !5010
  br label %if.end8, !dbg !5011

if.end8:                                          ; preds = %if.end, %cond.end
  %26 = load i32, ptr %nbytes, align 4, !dbg !5012
  %27 = load ptr, ptr %walk.addr, align 8, !dbg !5013
  %entrylen9 = getelementptr inbounds %struct.crypto_hash_walk, ptr %27, i32 0, i32 4, !dbg !5014
  %28 = load i32, ptr %entrylen9, align 8, !dbg !5015
  %sub10 = sub i32 %28, %26, !dbg !5015
  store i32 %sub10, ptr %entrylen9, align 8, !dbg !5015
  %29 = load i32, ptr %nbytes, align 4, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbytes) #14, !dbg !5017
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #14, !dbg !5017
  call void @llvm.lifetime.end.p0(i64 4, ptr %alignmask) #14, !dbg !5017
  ret i32 %29, !dbg !5018
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5019 dso_local ptr @sg_next(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_walk_new_entry(ptr noundef %walk) #0 align 16 !dbg !5022 {
entry:
  %walk.addr = alloca ptr, align 8
  %sg = alloca ptr, align 8
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !5024, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #14, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !5025, metadata !DIExpression()), !dbg !5028
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !5029
  %sg1 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 6, !dbg !5030
  %1 = load ptr, ptr %sg1, align 8, !dbg !5030
  store ptr %1, ptr %sg, align 8, !dbg !5031
  %2 = load ptr, ptr %sg, align 8, !dbg !5032
  %offset = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 1, !dbg !5033
  %3 = load i32, ptr %offset, align 8, !dbg !5033
  %4 = load ptr, ptr %walk.addr, align 8, !dbg !5034
  %offset2 = getelementptr inbounds %struct.crypto_hash_walk, ptr %4, i32 0, i32 1, !dbg !5035
  store i32 %3, ptr %offset2, align 8, !dbg !5036
  %5 = load ptr, ptr %walk.addr, align 8, !dbg !5037
  %sg3 = getelementptr inbounds %struct.crypto_hash_walk, ptr %5, i32 0, i32 6, !dbg !5038
  %6 = load ptr, ptr %sg3, align 8, !dbg !5038
  %call = call ptr @sg_page(ptr noundef %6) #15, !dbg !5039
  %7 = load ptr, ptr %walk.addr, align 8, !dbg !5040
  %offset4 = getelementptr inbounds %struct.crypto_hash_walk, ptr %7, i32 0, i32 1, !dbg !5041
  %8 = load i32, ptr %offset4, align 8, !dbg !5041
  %shr = lshr i32 %8, 12, !dbg !5042
  %idx.ext = zext i32 %shr to i64, !dbg !5043
  %add.ptr = getelementptr %struct.page, ptr %call, i64 %idx.ext, !dbg !5043
  %9 = load ptr, ptr %walk.addr, align 8, !dbg !5044
  %pg = getelementptr inbounds %struct.crypto_hash_walk, ptr %9, i32 0, i32 3, !dbg !5045
  store ptr %add.ptr, ptr %pg, align 8, !dbg !5046
  %10 = load ptr, ptr %walk.addr, align 8, !dbg !5047
  %offset5 = getelementptr inbounds %struct.crypto_hash_walk, ptr %10, i32 0, i32 1, !dbg !5047
  %11 = load i32, ptr %offset5, align 8, !dbg !5047
  %conv = zext i32 %11 to i64, !dbg !5047
  %and = and i64 %conv, 4095, !dbg !5047
  %conv6 = trunc i64 %and to i32, !dbg !5047
  %12 = load ptr, ptr %walk.addr, align 8, !dbg !5048
  %offset7 = getelementptr inbounds %struct.crypto_hash_walk, ptr %12, i32 0, i32 1, !dbg !5049
  store i32 %conv6, ptr %offset7, align 8, !dbg !5050
  %13 = load ptr, ptr %sg, align 8, !dbg !5051
  %length = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 2, !dbg !5052
  %14 = load i32, ptr %length, align 4, !dbg !5052
  %15 = load ptr, ptr %walk.addr, align 8, !dbg !5053
  %entrylen = getelementptr inbounds %struct.crypto_hash_walk, ptr %15, i32 0, i32 4, !dbg !5054
  store i32 %14, ptr %entrylen, align 8, !dbg !5055
  %16 = load ptr, ptr %walk.addr, align 8, !dbg !5056
  %entrylen8 = getelementptr inbounds %struct.crypto_hash_walk, ptr %16, i32 0, i32 4, !dbg !5058
  %17 = load i32, ptr %entrylen8, align 8, !dbg !5058
  %18 = load ptr, ptr %walk.addr, align 8, !dbg !5059
  %total = getelementptr inbounds %struct.crypto_hash_walk, ptr %18, i32 0, i32 5, !dbg !5060
  %19 = load i32, ptr %total, align 4, !dbg !5060
  %cmp = icmp ugt i32 %17, %19, !dbg !5061
  br i1 %cmp, label %if.then, label %if.end, !dbg !5062

if.then:                                          ; preds = %entry
  %20 = load ptr, ptr %walk.addr, align 8, !dbg !5063
  %total10 = getelementptr inbounds %struct.crypto_hash_walk, ptr %20, i32 0, i32 5, !dbg !5064
  %21 = load i32, ptr %total10, align 4, !dbg !5064
  %22 = load ptr, ptr %walk.addr, align 8, !dbg !5065
  %entrylen11 = getelementptr inbounds %struct.crypto_hash_walk, ptr %22, i32 0, i32 4, !dbg !5066
  store i32 %21, ptr %entrylen11, align 8, !dbg !5067
  br label %if.end, !dbg !5065

if.end:                                           ; preds = %if.then, %entry
  %23 = load ptr, ptr %walk.addr, align 8, !dbg !5068
  %entrylen12 = getelementptr inbounds %struct.crypto_hash_walk, ptr %23, i32 0, i32 4, !dbg !5069
  %24 = load i32, ptr %entrylen12, align 8, !dbg !5069
  %25 = load ptr, ptr %walk.addr, align 8, !dbg !5070
  %total13 = getelementptr inbounds %struct.crypto_hash_walk, ptr %25, i32 0, i32 5, !dbg !5071
  %26 = load i32, ptr %total13, align 4, !dbg !5072
  %sub = sub i32 %26, %24, !dbg !5072
  store i32 %sub, ptr %total13, align 4, !dbg !5072
  %27 = load ptr, ptr %walk.addr, align 8, !dbg !5073
  %call14 = call i32 @hash_walk_next(ptr noundef %27) #15, !dbg !5074
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #14, !dbg !5075
  ret i32 %call14, !dbg !5076
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_hash_walk_first(ptr noundef %req, ptr noundef %walk) #0 align 16 !dbg !5077 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %walk.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5081, metadata !DIExpression()), !dbg !5083
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !5082, metadata !DIExpression()), !dbg !5084
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5085
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1, !dbg !5086
  %1 = load i32, ptr %nbytes, align 8, !dbg !5086
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !5087
  %total = getelementptr inbounds %struct.crypto_hash_walk, ptr %2, i32 0, i32 5, !dbg !5088
  store i32 %1, ptr %total, align 4, !dbg !5089
  %3 = load ptr, ptr %walk.addr, align 8, !dbg !5090
  %total1 = getelementptr inbounds %struct.crypto_hash_walk, ptr %3, i32 0, i32 5, !dbg !5092
  %4 = load i32, ptr %total1, align 4, !dbg !5092
  %tobool = icmp ne i32 %4, 0, !dbg !5090
  br i1 %tobool, label %if.end, label %if.then, !dbg !5093

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %walk.addr, align 8, !dbg !5094
  %entrylen = getelementptr inbounds %struct.crypto_hash_walk, ptr %5, i32 0, i32 4, !dbg !5096
  store i32 0, ptr %entrylen, align 8, !dbg !5097
  store i32 0, ptr %retval, align 4, !dbg !5098
  br label %return, !dbg !5098

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %req.addr, align 8, !dbg !5099
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %6) #15, !dbg !5100
  %call2 = call i32 @crypto_ahash_alignmask(ptr noundef %call) #15, !dbg !5101
  %7 = load ptr, ptr %walk.addr, align 8, !dbg !5102
  %alignmask = getelementptr inbounds %struct.crypto_hash_walk, ptr %7, i32 0, i32 2, !dbg !5103
  store i32 %call2, ptr %alignmask, align 4, !dbg !5104
  %8 = load ptr, ptr %req.addr, align 8, !dbg !5105
  %src = getelementptr inbounds %struct.ahash_request, ptr %8, i32 0, i32 2, !dbg !5106
  %9 = load ptr, ptr %src, align 8, !dbg !5106
  %10 = load ptr, ptr %walk.addr, align 8, !dbg !5107
  %sg = getelementptr inbounds %struct.crypto_hash_walk, ptr %10, i32 0, i32 6, !dbg !5108
  store ptr %9, ptr %sg, align 8, !dbg !5109
  %11 = load ptr, ptr %req.addr, align 8, !dbg !5110
  %base = getelementptr inbounds %struct.ahash_request, ptr %11, i32 0, i32 0, !dbg !5111
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 4, !dbg !5112
  %12 = load i32, ptr %flags, align 8, !dbg !5112
  %13 = load ptr, ptr %walk.addr, align 8, !dbg !5113
  %flags3 = getelementptr inbounds %struct.crypto_hash_walk, ptr %13, i32 0, i32 7, !dbg !5114
  store i32 %12, ptr %flags3, align 8, !dbg !5115
  %14 = load ptr, ptr %walk.addr, align 8, !dbg !5116
  %call4 = call i32 @hash_walk_new_entry(ptr noundef %14) #15, !dbg !5117
  store i32 %call4, ptr %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !5119
  ret i32 %15, !dbg !5119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_alignmask(ptr noundef %tfm) #3 align 16 !dbg !5120 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5126
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #15, !dbg !5127
  %call1 = call i32 @crypto_tfm_alg_alignmask(ptr noundef %call) #15, !dbg !5128
  ret i32 %call1, !dbg !5129
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_reqtfm(ptr noundef %req) #3 align 16 !dbg !5130 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5134, metadata !DIExpression()), !dbg !5135
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5136
  %base = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 0, !dbg !5137
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 3, !dbg !5138
  %1 = load ptr, ptr %tfm, align 8, !dbg !5138
  %call = call ptr @__crypto_ahash_cast(ptr noundef %1) #15, !dbg !5139
  ret ptr %call, !dbg !5140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_ahash_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !5141 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5143, metadata !DIExpression()), !dbg !5148
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5144, metadata !DIExpression()), !dbg !5149
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !5145, metadata !DIExpression()), !dbg !5150
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #14, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5146, metadata !DIExpression()), !dbg !5152
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5153
  %call = call i32 @crypto_ahash_alignmask(ptr noundef %0) #15, !dbg !5154
  %conv = zext i32 %call to i64, !dbg !5154
  store i64 %conv, ptr %alignmask, align 8, !dbg !5152
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5147, metadata !DIExpression()), !dbg !5156
  %1 = load ptr, ptr %key.addr, align 8, !dbg !5157
  %2 = ptrtoint ptr %1 to i64, !dbg !5159
  %3 = load i64, ptr %alignmask, align 8, !dbg !5160
  %and = and i64 %2, %3, !dbg !5161
  %tobool = icmp ne i64 %and, 0, !dbg !5161
  br i1 %tobool, label %if.then, label %if.else, !dbg !5162

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tfm.addr, align 8, !dbg !5163
  %5 = load ptr, ptr %key.addr, align 8, !dbg !5164
  %6 = load i32, ptr %keylen.addr, align 4, !dbg !5165
  %call1 = call i32 @ahash_setkey_unaligned(ptr noundef %4, ptr noundef %5, i32 noundef %6) #15, !dbg !5166
  store i32 %call1, ptr %err, align 4, !dbg !5167
  br label %if.end, !dbg !5168

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %tfm.addr, align 8, !dbg !5169
  %setkey = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 7, !dbg !5170
  %8 = load ptr, ptr %setkey, align 8, !dbg !5170
  %9 = load ptr, ptr %tfm.addr, align 8, !dbg !5171
  %10 = load ptr, ptr %key.addr, align 8, !dbg !5172
  %11 = load i32, ptr %keylen.addr, align 4, !dbg !5173
  %call2 = call i32 %8(ptr noundef %9, ptr noundef %10, i32 noundef %11) #15, !dbg !5169
  store i32 %call2, ptr %err, align 4, !dbg !5174
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr %err, align 4, !dbg !5175
  %tobool3 = icmp ne i32 %12, 0, !dbg !5175
  %lnot = xor i1 %tobool3, true, !dbg !5175
  %lnot4 = xor i1 %lnot, true, !dbg !5175
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5175
  %conv5 = sext i32 %lnot.ext to i64, !dbg !5175
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !5175
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5175
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5177

if.then7:                                         ; preds = %if.end
  %13 = load ptr, ptr %tfm.addr, align 8, !dbg !5178
  call void @ahash_set_needkey(ptr noundef %13) #15, !dbg !5180
  %14 = load i32, ptr %err, align 4, !dbg !5181
  store i32 %14, ptr %retval, align 4, !dbg !5182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5182

if.end8:                                          ; preds = %if.end
  %15 = load ptr, ptr %tfm.addr, align 8, !dbg !5183
  call void @crypto_ahash_clear_flags(ptr noundef %15, i32 noundef 1) #15, !dbg !5184
  store i32 0, ptr %retval, align 4, !dbg !5185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5185

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5186
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #14, !dbg !5186
  %16 = load i32, ptr %retval, align 4, !dbg !5186
  ret i32 %16, !dbg !5186
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_setkey_unaligned(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !5187 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  %alignmask = alloca i64, align 8
  %ret = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %alignbuffer = alloca ptr, align 8
  %absize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5189, metadata !DIExpression()), !dbg !5197
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5190, metadata !DIExpression()), !dbg !5198
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !5191, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #14, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5192, metadata !DIExpression()), !dbg !5201
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5202
  %call = call i32 @crypto_ahash_alignmask(ptr noundef %0) #15, !dbg !5203
  %conv = zext i32 %call to i64, !dbg !5203
  store i64 %conv, ptr %alignmask, align 8, !dbg !5201
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5204
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5193, metadata !DIExpression()), !dbg !5205
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #14, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5194, metadata !DIExpression()), !dbg !5207
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignbuffer) #14, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %alignbuffer, metadata !5195, metadata !DIExpression()), !dbg !5208
  call void @llvm.lifetime.start.p0(i64 8, ptr %absize) #14, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %absize, metadata !5196, metadata !DIExpression()), !dbg !5210
  %1 = load i32, ptr %keylen.addr, align 4, !dbg !5211
  %conv1 = zext i32 %1 to i64, !dbg !5211
  %2 = load i64, ptr %alignmask, align 8, !dbg !5212
  %add = add i64 %conv1, %2, !dbg !5213
  store i64 %add, ptr %absize, align 8, !dbg !5214
  %3 = load i64, ptr %absize, align 8, !dbg !5215
  %call2 = call noalias ptr @kmalloc(i64 noundef %3, i32 noundef 3264) #16, !dbg !5216
  store ptr %call2, ptr %buffer, align 8, !dbg !5217
  %4 = load ptr, ptr %buffer, align 8, !dbg !5218
  %tobool = icmp ne ptr %4, null, !dbg !5218
  br i1 %tobool, label %if.end, label %if.then, !dbg !5220

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5221

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buffer, align 8, !dbg !5222
  %6 = ptrtoint ptr %5 to i64, !dbg !5222
  %7 = load i64, ptr %alignmask, align 8, !dbg !5222
  %add3 = add i64 %7, 1, !dbg !5222
  %sub = sub i64 %add3, 1, !dbg !5222
  %add4 = add i64 %6, %sub, !dbg !5222
  %8 = load i64, ptr %alignmask, align 8, !dbg !5222
  %add5 = add i64 %8, 1, !dbg !5222
  %sub6 = sub i64 %add5, 1, !dbg !5222
  %not = xor i64 %sub6, -1, !dbg !5222
  %and = and i64 %add4, %not, !dbg !5222
  %9 = inttoptr i64 %and to ptr, !dbg !5223
  store ptr %9, ptr %alignbuffer, align 8, !dbg !5224
  %10 = load ptr, ptr %alignbuffer, align 8, !dbg !5225
  %11 = load ptr, ptr %key.addr, align 8, !dbg !5226
  %12 = load i32, ptr %keylen.addr, align 4, !dbg !5227
  %conv7 = zext i32 %12 to i64, !dbg !5227
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %11, i64 %conv7, i1 false), !dbg !5228
  %13 = load ptr, ptr %tfm.addr, align 8, !dbg !5229
  %setkey = getelementptr inbounds %struct.crypto_ahash, ptr %13, i32 0, i32 7, !dbg !5230
  %14 = load ptr, ptr %setkey, align 8, !dbg !5230
  %15 = load ptr, ptr %tfm.addr, align 8, !dbg !5231
  %16 = load ptr, ptr %alignbuffer, align 8, !dbg !5232
  %17 = load i32, ptr %keylen.addr, align 4, !dbg !5233
  %call8 = call i32 %14(ptr noundef %15, ptr noundef %16, i32 noundef %17) #15, !dbg !5229
  store i32 %call8, ptr %ret, align 4, !dbg !5234
  %18 = load ptr, ptr %buffer, align 8, !dbg !5235
  call void @kfree_sensitive(ptr noundef %18) #15, !dbg !5236
  %19 = load i32, ptr %ret, align 4, !dbg !5237
  store i32 %19, ptr %retval, align 4, !dbg !5238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5238

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %absize) #14, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignbuffer) #14, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #14, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #14, !dbg !5239
  %20 = load i32, ptr %retval, align 4, !dbg !5239
  ret i32 %20, !dbg !5239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_set_needkey(ptr noundef %tfm) #0 align 16 !dbg !5240 {
entry:
  %tfm.addr = alloca ptr, align 8
  %alg = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5242, metadata !DIExpression()), !dbg !5246
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5243, metadata !DIExpression()), !dbg !5248
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5249
  %call = call ptr @crypto_hash_alg_common(ptr noundef %0) #15, !dbg !5250
  store ptr %call, ptr %alg, align 8, !dbg !5248
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5251
  %setkey = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 7, !dbg !5253
  %2 = load ptr, ptr %setkey, align 8, !dbg !5253
  %cmp = icmp ne ptr %2, @ahash_nosetkey, !dbg !5254
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5255

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %alg, align 8, !dbg !5256
  %base = getelementptr inbounds %struct.hash_alg_common, ptr %3, i32 0, i32 2, !dbg !5257
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 2, !dbg !5258
  %4 = load i32, ptr %cra_flags, align 8, !dbg !5258
  %and = and i32 %4, 16384, !dbg !5259
  %tobool = icmp ne i32 %and, 0, !dbg !5259
  br i1 %tobool, label %if.end, label %if.then, !dbg !5260

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %tfm.addr, align 8, !dbg !5261
  call void @crypto_ahash_set_flags(ptr noundef %5, i32 noundef 1) #15, !dbg !5262
  br label %if.end, !dbg !5262

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !5263
  ret void, !dbg !5263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_clear_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !5264 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5269, metadata !DIExpression()), !dbg !5271
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5272
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #15, !dbg !5273
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5274
  call void @crypto_tfm_clear_flags(ptr noundef %call, i32 noundef %1) #15, !dbg !5275
  ret void, !dbg !5276
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_ahash_final(ptr noundef %req) #0 align 16 !dbg !5277 {
entry:
  %req.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %alg = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5279, metadata !DIExpression()), !dbg !5282
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !5283
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5280, metadata !DIExpression()), !dbg !5284
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5285
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !5286
  store ptr %call, ptr %tfm, align 8, !dbg !5284
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !5287
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5281, metadata !DIExpression()), !dbg !5288
  %1 = load ptr, ptr %tfm, align 8, !dbg !5289
  %call1 = call ptr @crypto_hash_alg_common(ptr noundef %1) #15, !dbg !5290
  store ptr %call1, ptr %alg, align 8, !dbg !5288
  %2 = load ptr, ptr %req.addr, align 8, !dbg !5291
  %3 = load ptr, ptr %tfm, align 8, !dbg !5292
  %final = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 2, !dbg !5293
  %4 = load ptr, ptr %final, align 8, !dbg !5293
  %call2 = call i32 @crypto_ahash_op(ptr noundef %2, ptr noundef %4, i1 noundef zeroext true) #15, !dbg !5294
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !5295
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !5295
  ret i32 %call2, !dbg !5296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_hash_alg_common(ptr noundef %tfm) #3 align 16 !dbg !5297 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5301, metadata !DIExpression()), !dbg !5302
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5303
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #15, !dbg !5304
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !5305
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5305
  %call1 = call ptr @__crypto_hash_alg_common(ptr noundef %1) #15, !dbg !5306
  ret ptr %call1, !dbg !5307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_op(ptr noundef %req, ptr noundef %op, i1 noundef zeroext %has_state) #0 align 16 !dbg !5308 {
entry:
  %req.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %has_state.addr = alloca i8, align 1
  %tfm = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5312, metadata !DIExpression()), !dbg !5318
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5313, metadata !DIExpression()), !dbg !5319
  %frombool = zext i1 %has_state to i8
  store i8 %frombool, ptr %has_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %has_state.addr, metadata !5314, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5315, metadata !DIExpression()), !dbg !5322
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5323
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !5324
  store ptr %call, ptr %tfm, align 8, !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #14, !dbg !5325
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !5316, metadata !DIExpression()), !dbg !5326
  %1 = load ptr, ptr %tfm, align 8, !dbg !5327
  %call1 = call i32 @crypto_ahash_alignmask(ptr noundef %1) #15, !dbg !5328
  %conv = zext i32 %call1 to i64, !dbg !5328
  store i64 %conv, ptr %alignmask, align 8, !dbg !5326
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5317, metadata !DIExpression()), !dbg !5330
  %2 = load ptr, ptr %req.addr, align 8, !dbg !5331
  %result = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 3, !dbg !5333
  %3 = load ptr, ptr %result, align 8, !dbg !5333
  %4 = ptrtoint ptr %3 to i64, !dbg !5334
  %5 = load i64, ptr %alignmask, align 8, !dbg !5335
  %and = and i64 %4, %5, !dbg !5336
  %tobool = icmp ne i64 %and, 0, !dbg !5336
  br i1 %tobool, label %if.then, label %if.else, !dbg !5337

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %req.addr, align 8, !dbg !5338
  %7 = load ptr, ptr %op.addr, align 8, !dbg !5339
  %8 = load i8, ptr %has_state.addr, align 1, !dbg !5340, !range !5341, !noundef !1042
  %tobool2 = trunc i8 %8 to i1, !dbg !5340
  %call3 = call i32 @ahash_op_unaligned(ptr noundef %6, ptr noundef %7, i1 noundef zeroext %tobool2) #15, !dbg !5342
  store i32 %call3, ptr %err, align 4, !dbg !5343
  br label %if.end, !dbg !5344

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %op.addr, align 8, !dbg !5345
  %10 = load ptr, ptr %req.addr, align 8, !dbg !5346
  %call4 = call i32 %9(ptr noundef %10) #15, !dbg !5345
  store i32 %call4, ptr %err, align 4, !dbg !5347
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %tfm, align 8, !dbg !5348
  %call5 = call ptr @crypto_hash_alg_common(ptr noundef %11) #15, !dbg !5349
  %12 = load i32, ptr %err, align 4, !dbg !5350
  %call6 = call i32 @crypto_hash_errstat(ptr noundef %call5, i32 noundef %12) #15, !dbg !5351
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5352
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #14, !dbg !5352
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !5352
  ret i32 %call6, !dbg !5353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_ahash_finup(ptr noundef %req) #0 align 16 !dbg !5354 {
entry:
  %req.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %alg = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5356, metadata !DIExpression()), !dbg !5359
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5357, metadata !DIExpression()), !dbg !5361
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5362
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !5363
  store ptr %call, ptr %tfm, align 8, !dbg !5361
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5358, metadata !DIExpression()), !dbg !5365
  %1 = load ptr, ptr %tfm, align 8, !dbg !5366
  %call1 = call ptr @crypto_hash_alg_common(ptr noundef %1) #15, !dbg !5367
  store ptr %call1, ptr %alg, align 8, !dbg !5365
  %2 = load ptr, ptr %req.addr, align 8, !dbg !5368
  %3 = load ptr, ptr %tfm, align 8, !dbg !5369
  %finup = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 3, !dbg !5370
  %4 = load ptr, ptr %finup, align 8, !dbg !5370
  %call2 = call i32 @crypto_ahash_op(ptr noundef %2, ptr noundef %4, i1 noundef zeroext true) #15, !dbg !5371
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !5372
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !5372
  ret i32 %call2, !dbg !5373
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_ahash_digest(ptr noundef %req) #0 align 16 !dbg !5374 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5376, metadata !DIExpression()), !dbg !5379
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5377, metadata !DIExpression()), !dbg !5381
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5382
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !5383
  store ptr %call, ptr %tfm, align 8, !dbg !5381
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5378, metadata !DIExpression()), !dbg !5385
  %1 = load ptr, ptr %tfm, align 8, !dbg !5386
  %call1 = call ptr @crypto_hash_alg_common(ptr noundef %1) #15, !dbg !5387
  store ptr %call1, ptr %alg, align 8, !dbg !5385
  %2 = load ptr, ptr %tfm, align 8, !dbg !5388
  %call2 = call i32 @crypto_ahash_get_flags(ptr noundef %2) #15, !dbg !5390
  %and = and i32 %call2, 1, !dbg !5391
  %tobool = icmp ne i32 %and, 0, !dbg !5391
  br i1 %tobool, label %if.then, label %if.end, !dbg !5392

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %alg, align 8, !dbg !5393
  %call3 = call i32 @crypto_hash_errstat(ptr noundef %3, i32 noundef -126) #15, !dbg !5394
  store i32 %call3, ptr %retval, align 4, !dbg !5395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5395

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %req.addr, align 8, !dbg !5396
  %5 = load ptr, ptr %tfm, align 8, !dbg !5397
  %digest = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 4, !dbg !5398
  %6 = load ptr, ptr %digest, align 8, !dbg !5398
  %call4 = call i32 @crypto_ahash_op(ptr noundef %4, ptr noundef %6, i1 noundef zeroext false) #15, !dbg !5399
  store i32 %call4, ptr %retval, align 4, !dbg !5400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !5401
  %7 = load i32, ptr %retval, align 4, !dbg !5401
  ret i32 %7, !dbg !5401
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_get_flags(ptr noundef %tfm) #3 align 16 !dbg !5402 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5408
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #15, !dbg !5409
  %call1 = call i32 @crypto_tfm_get_flags(ptr noundef %call) #15, !dbg !5410
  ret i32 %call1, !dbg !5411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_hash_errstat(ptr noundef %alg, i32 noundef %err) #3 align 16 !dbg !5412 {
entry:
  %alg.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5416, metadata !DIExpression()), !dbg !5418
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5417, metadata !DIExpression()), !dbg !5419
  %0 = load i32, ptr %err.addr, align 4, !dbg !5420
  ret i32 %0, !dbg !5422
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_grab_ahash(ptr noundef %spawn, ptr noundef %inst, ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5423 {
entry:
  %spawn.addr = alloca ptr, align 8
  %inst.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %spawn, ptr %spawn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %spawn.addr, metadata !5431, metadata !DIExpression()), !dbg !5436
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !5432, metadata !DIExpression()), !dbg !5437
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5433, metadata !DIExpression()), !dbg !5438
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5434, metadata !DIExpression()), !dbg !5439
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5435, metadata !DIExpression()), !dbg !5440
  %0 = load ptr, ptr %spawn.addr, align 8, !dbg !5441
  %base = getelementptr inbounds %struct.crypto_ahash_spawn, ptr %0, i32 0, i32 0, !dbg !5442
  %frontend = getelementptr inbounds %struct.crypto_spawn, ptr %base, i32 0, i32 3, !dbg !5443
  store ptr @crypto_ahash_type, ptr %frontend, align 8, !dbg !5444
  %1 = load ptr, ptr %spawn.addr, align 8, !dbg !5445
  %base1 = getelementptr inbounds %struct.crypto_ahash_spawn, ptr %1, i32 0, i32 0, !dbg !5446
  %2 = load ptr, ptr %inst.addr, align 8, !dbg !5447
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5448
  %4 = load i32, ptr %type.addr, align 4, !dbg !5449
  %5 = load i32, ptr %mask.addr, align 4, !dbg !5450
  %call = call i32 @crypto_grab_spawn(ptr noundef %base1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !5451
  ret i32 %call, !dbg !5452
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5453 dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_alloc_ahash(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5456 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !5460, metadata !DIExpression()), !dbg !5463
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5461, metadata !DIExpression()), !dbg !5464
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5462, metadata !DIExpression()), !dbg !5465
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !5466
  %1 = load i32, ptr %type.addr, align 4, !dbg !5467
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5468
  %call = call ptr @crypto_alloc_tfm(ptr noundef %0, ptr noundef @crypto_ahash_type, i32 noundef %1, i32 noundef %2) #15, !dbg !5469
  ret ptr %call, !dbg !5470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_alloc_tfm(ptr noundef %alg_name, ptr noundef %frontend, i32 noundef %type, i32 noundef %mask) #3 align 16 !dbg !5471 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !5475, metadata !DIExpression()), !dbg !5479
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5476, metadata !DIExpression()), !dbg !5480
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5477, metadata !DIExpression()), !dbg !5481
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5478, metadata !DIExpression()), !dbg !5482
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !5483
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !5484
  %2 = load i32, ptr %type.addr, align 4, !dbg !5485
  %3 = load i32, ptr %mask.addr, align 4, !dbg !5486
  %call = call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef -1) #15, !dbg !5487
  ret ptr %call, !dbg !5488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_has_ahash(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5489 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !5493, metadata !DIExpression()), !dbg !5496
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5494, metadata !DIExpression()), !dbg !5497
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5495, metadata !DIExpression()), !dbg !5498
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !5499
  %1 = load i32, ptr %type.addr, align 4, !dbg !5500
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5501
  %call = call i32 @crypto_type_has_alg(ptr noundef %0, ptr noundef @crypto_ahash_type, i32 noundef %1, i32 noundef %2) #15, !dbg !5502
  ret i32 %call, !dbg !5503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5504 dso_local i32 @crypto_type_has_alg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_clone_ahash(ptr noundef %hash) #0 align 16 !dbg !5507 {
entry:
  %retval = alloca ptr, align 8
  %hash.addr = alloca ptr, align 8
  %halg = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %nhash = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !5511, metadata !DIExpression()), !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %halg) #14, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %halg, metadata !5512, metadata !DIExpression()), !dbg !5520
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !5521
  %call = call ptr @crypto_hash_alg_common(ptr noundef %0) #15, !dbg !5522
  store ptr %call, ptr %halg, align 8, !dbg !5520
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5513, metadata !DIExpression()), !dbg !5524
  %1 = load ptr, ptr %hash.addr, align 8, !dbg !5525
  %call1 = call ptr @crypto_ahash_tfm(ptr noundef %1) #15, !dbg !5526
  store ptr %call1, ptr %tfm, align 8, !dbg !5524
  call void @llvm.lifetime.start.p0(i64 8, ptr %nhash) #14, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %nhash, metadata !5514, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5515, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5516, metadata !DIExpression()), !dbg !5532
  %2 = load ptr, ptr %halg, align 8, !dbg !5533
  %call2 = call zeroext i1 @crypto_hash_alg_has_setkey(ptr noundef %2) #15, !dbg !5535
  br i1 %call2, label %if.end7, label %if.then, !dbg !5536

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !5537
  %call3 = call ptr @crypto_tfm_get(ptr noundef %3) #15, !dbg !5539
  store ptr %call3, ptr %tfm, align 8, !dbg !5540
  %4 = load ptr, ptr %tfm, align 8, !dbg !5541
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %4) #15, !dbg !5543
  br i1 %call4, label %if.then5, label %if.end, !dbg !5544

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr %tfm, align 8, !dbg !5545
  %call6 = call ptr @ERR_CAST(ptr noundef %5) #15, !dbg !5546
  store ptr %call6, ptr %retval, align 8, !dbg !5547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5547

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %hash.addr, align 8, !dbg !5548
  store ptr %6, ptr %retval, align 8, !dbg !5549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5549

if.end7:                                          ; preds = %entry
  %7 = load ptr, ptr %tfm, align 8, !dbg !5550
  %call8 = call ptr @crypto_clone_tfm(ptr noundef @crypto_ahash_type, ptr noundef %7) #15, !dbg !5551
  store ptr %call8, ptr %nhash, align 8, !dbg !5552
  %8 = load ptr, ptr %nhash, align 8, !dbg !5553
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %8) #15, !dbg !5555
  br i1 %call9, label %if.then10, label %if.end11, !dbg !5556

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr %nhash, align 8, !dbg !5557
  store ptr %9, ptr %retval, align 8, !dbg !5558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5558

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %hash.addr, align 8, !dbg !5559
  %init = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 0, !dbg !5560
  %11 = load ptr, ptr %init, align 8, !dbg !5560
  %12 = load ptr, ptr %nhash, align 8, !dbg !5561
  %init12 = getelementptr inbounds %struct.crypto_ahash, ptr %12, i32 0, i32 0, !dbg !5562
  store ptr %11, ptr %init12, align 8, !dbg !5563
  %13 = load ptr, ptr %hash.addr, align 8, !dbg !5564
  %update = getelementptr inbounds %struct.crypto_ahash, ptr %13, i32 0, i32 1, !dbg !5565
  %14 = load ptr, ptr %update, align 8, !dbg !5565
  %15 = load ptr, ptr %nhash, align 8, !dbg !5566
  %update13 = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 1, !dbg !5567
  store ptr %14, ptr %update13, align 8, !dbg !5568
  %16 = load ptr, ptr %hash.addr, align 8, !dbg !5569
  %final = getelementptr inbounds %struct.crypto_ahash, ptr %16, i32 0, i32 2, !dbg !5570
  %17 = load ptr, ptr %final, align 8, !dbg !5570
  %18 = load ptr, ptr %nhash, align 8, !dbg !5571
  %final14 = getelementptr inbounds %struct.crypto_ahash, ptr %18, i32 0, i32 2, !dbg !5572
  store ptr %17, ptr %final14, align 8, !dbg !5573
  %19 = load ptr, ptr %hash.addr, align 8, !dbg !5574
  %finup = getelementptr inbounds %struct.crypto_ahash, ptr %19, i32 0, i32 3, !dbg !5575
  %20 = load ptr, ptr %finup, align 8, !dbg !5575
  %21 = load ptr, ptr %nhash, align 8, !dbg !5576
  %finup15 = getelementptr inbounds %struct.crypto_ahash, ptr %21, i32 0, i32 3, !dbg !5577
  store ptr %20, ptr %finup15, align 8, !dbg !5578
  %22 = load ptr, ptr %hash.addr, align 8, !dbg !5579
  %digest = getelementptr inbounds %struct.crypto_ahash, ptr %22, i32 0, i32 4, !dbg !5580
  %23 = load ptr, ptr %digest, align 8, !dbg !5580
  %24 = load ptr, ptr %nhash, align 8, !dbg !5581
  %digest16 = getelementptr inbounds %struct.crypto_ahash, ptr %24, i32 0, i32 4, !dbg !5582
  store ptr %23, ptr %digest16, align 8, !dbg !5583
  %25 = load ptr, ptr %hash.addr, align 8, !dbg !5584
  %export = getelementptr inbounds %struct.crypto_ahash, ptr %25, i32 0, i32 5, !dbg !5585
  %26 = load ptr, ptr %export, align 8, !dbg !5585
  %27 = load ptr, ptr %nhash, align 8, !dbg !5586
  %export17 = getelementptr inbounds %struct.crypto_ahash, ptr %27, i32 0, i32 5, !dbg !5587
  store ptr %26, ptr %export17, align 8, !dbg !5588
  %28 = load ptr, ptr %hash.addr, align 8, !dbg !5589
  %import = getelementptr inbounds %struct.crypto_ahash, ptr %28, i32 0, i32 6, !dbg !5590
  %29 = load ptr, ptr %import, align 8, !dbg !5590
  %30 = load ptr, ptr %nhash, align 8, !dbg !5591
  %import18 = getelementptr inbounds %struct.crypto_ahash, ptr %30, i32 0, i32 6, !dbg !5592
  store ptr %29, ptr %import18, align 8, !dbg !5593
  %31 = load ptr, ptr %hash.addr, align 8, !dbg !5594
  %setkey = getelementptr inbounds %struct.crypto_ahash, ptr %31, i32 0, i32 7, !dbg !5595
  %32 = load ptr, ptr %setkey, align 8, !dbg !5595
  %33 = load ptr, ptr %nhash, align 8, !dbg !5596
  %setkey19 = getelementptr inbounds %struct.crypto_ahash, ptr %33, i32 0, i32 7, !dbg !5597
  store ptr %32, ptr %setkey19, align 8, !dbg !5598
  %34 = load ptr, ptr %hash.addr, align 8, !dbg !5599
  %reqsize = getelementptr inbounds %struct.crypto_ahash, ptr %34, i32 0, i32 9, !dbg !5600
  %35 = load i32, ptr %reqsize, align 4, !dbg !5600
  %36 = load ptr, ptr %nhash, align 8, !dbg !5601
  %reqsize20 = getelementptr inbounds %struct.crypto_ahash, ptr %36, i32 0, i32 9, !dbg !5602
  store i32 %35, ptr %reqsize20, align 4, !dbg !5603
  %37 = load ptr, ptr %hash.addr, align 8, !dbg !5604
  %statesize = getelementptr inbounds %struct.crypto_ahash, ptr %37, i32 0, i32 8, !dbg !5605
  %38 = load i32, ptr %statesize, align 8, !dbg !5605
  %39 = load ptr, ptr %nhash, align 8, !dbg !5606
  %statesize21 = getelementptr inbounds %struct.crypto_ahash, ptr %39, i32 0, i32 8, !dbg !5607
  store i32 %38, ptr %statesize21, align 8, !dbg !5608
  %40 = load ptr, ptr %tfm, align 8, !dbg !5609
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %40, i32 0, i32 4, !dbg !5611
  %41 = load ptr, ptr %__crt_alg, align 8, !dbg !5611
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %41, i32 0, i32 10, !dbg !5612
  %42 = load ptr, ptr %cra_type, align 8, !dbg !5612
  %cmp = icmp ne ptr %42, @crypto_ahash_type, !dbg !5613
  br i1 %cmp, label %if.then22, label %if.end24, !dbg !5614

if.then22:                                        ; preds = %if.end11
  %43 = load ptr, ptr %nhash, align 8, !dbg !5615
  %44 = load ptr, ptr %hash.addr, align 8, !dbg !5616
  %call23 = call ptr @crypto_clone_shash_ops_async(ptr noundef %43, ptr noundef %44) #15, !dbg !5617
  store ptr %call23, ptr %retval, align 8, !dbg !5618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

if.end24:                                         ; preds = %if.end11
  store i32 -38, ptr %err, align 4, !dbg !5619
  %45 = load ptr, ptr %hash.addr, align 8, !dbg !5620
  %call25 = call ptr @crypto_ahash_alg(ptr noundef %45) #15, !dbg !5621
  store ptr %call25, ptr %alg, align 8, !dbg !5622
  %46 = load ptr, ptr %alg, align 8, !dbg !5623
  %clone_tfm = getelementptr inbounds %struct.ahash_alg, ptr %46, i32 0, i32 10, !dbg !5625
  %47 = load ptr, ptr %clone_tfm, align 8, !dbg !5625
  %tobool = icmp ne ptr %47, null, !dbg !5623
  br i1 %tobool, label %if.end27, label %if.then26, !dbg !5626

if.then26:                                        ; preds = %if.end24
  br label %out_free_nhash, !dbg !5627

if.end27:                                         ; preds = %if.end24
  %48 = load ptr, ptr %alg, align 8, !dbg !5628
  %clone_tfm28 = getelementptr inbounds %struct.ahash_alg, ptr %48, i32 0, i32 10, !dbg !5629
  %49 = load ptr, ptr %clone_tfm28, align 8, !dbg !5629
  %50 = load ptr, ptr %nhash, align 8, !dbg !5630
  %51 = load ptr, ptr %hash.addr, align 8, !dbg !5631
  %call29 = call i32 %49(ptr noundef %50, ptr noundef %51) #15, !dbg !5628
  store i32 %call29, ptr %err, align 4, !dbg !5632
  %52 = load i32, ptr %err, align 4, !dbg !5633
  %tobool30 = icmp ne i32 %52, 0, !dbg !5633
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5635

if.then31:                                        ; preds = %if.end27
  br label %out_free_nhash, !dbg !5636

if.end32:                                         ; preds = %if.end27
  %53 = load ptr, ptr %nhash, align 8, !dbg !5637
  store ptr %53, ptr %retval, align 8, !dbg !5638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5638

out_free_nhash:                                   ; preds = %if.then31, %if.then26
  call void @llvm.dbg.label(metadata !5517), !dbg !5639
  %54 = load ptr, ptr %nhash, align 8, !dbg !5640
  call void @crypto_free_ahash(ptr noundef %54) #15, !dbg !5641
  %55 = load i32, ptr %err, align 4, !dbg !5642
  %conv = sext i32 %55 to i64, !dbg !5642
  %call33 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !5643
  store ptr %call33, ptr %retval, align 8, !dbg !5644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5644

cleanup:                                          ; preds = %out_free_nhash, %if.end32, %if.then22, %if.then10, %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %nhash) #14, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %halg) #14, !dbg !5645
  %56 = load ptr, ptr %retval, align 8, !dbg !5645
  ret ptr %56, !dbg !5645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_tfm(ptr noundef %tfm) #3 align 16 !dbg !5646 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5652
  %base = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, !dbg !5653
  ret ptr %base, !dbg !5654
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @crypto_hash_alg_has_setkey(ptr noundef %halg) #0 align 16 !dbg !5655 {
entry:
  %retval = alloca i1, align 1
  %halg.addr = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %halg, ptr %halg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %halg.addr, metadata !5659, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5660, metadata !DIExpression()), !dbg !5663
  %0 = load ptr, ptr %halg.addr, align 8, !dbg !5664
  %base = getelementptr inbounds %struct.hash_alg_common, ptr %0, i32 0, i32 2, !dbg !5665
  store ptr %base, ptr %alg, align 8, !dbg !5663
  %1 = load ptr, ptr %alg, align 8, !dbg !5666
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 10, !dbg !5668
  %2 = load ptr, ptr %cra_type, align 8, !dbg !5668
  %cmp = icmp ne ptr %2, @crypto_ahash_type, !dbg !5669
  br i1 %cmp, label %if.then, label %if.end, !dbg !5670

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %alg, align 8, !dbg !5671
  %call = call ptr @__crypto_shash_alg(ptr noundef %3) #15, !dbg !5672
  %call1 = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %call) #15, !dbg !5673
  store i1 %call1, ptr %retval, align 1, !dbg !5674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5674

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %alg, align 8, !dbg !5675
  %call2 = call ptr @__crypto_ahash_alg(ptr noundef %4) #15, !dbg !5676
  %setkey = getelementptr inbounds %struct.ahash_alg, ptr %call2, i32 0, i32 7, !dbg !5677
  %5 = load ptr, ptr %setkey, align 8, !dbg !5677
  %cmp3 = icmp ne ptr %5, null, !dbg !5678
  store i1 %cmp3, ptr %retval, align 1, !dbg !5679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5679

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !5680
  %6 = load i1, ptr %retval, align 1, !dbg !5680
  ret i1 %6, !dbg !5680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_tfm_get(ptr noundef %tfm) #3 align 16 !dbg !5681 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5687
  %refcnt = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 0, !dbg !5688
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcnt) #15, !dbg !5689
  br i1 %call, label %cond.true, label %cond.false, !dbg !5689

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5690
  br label %cond.end, !dbg !5689

cond.false:                                       ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -75) #15, !dbg !5691
  br label %cond.end, !dbg !5689

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %call1, %cond.false ], !dbg !5689
  ret ptr %cond, !dbg !5692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5693 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5700
  %1 = ptrtoint ptr %0 to i64, !dbg !5700
  %2 = inttoptr i64 %1 to ptr, !dbg !5700
  %3 = ptrtoint ptr %2 to i64, !dbg !5700
  %cmp = icmp uge i64 %3, -4095, !dbg !5700
  %lnot = xor i1 %cmp, true, !dbg !5700
  %lnot1 = xor i1 %lnot, true, !dbg !5700
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5700
  %conv = sext i32 %lnot.ext to i64, !dbg !5700
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5700
  %tobool = icmp ne i64 %expval, 0, !dbg !5700
  ret i1 %tobool, !dbg !5701
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #3 align 16 !dbg !5702 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5708
  ret ptr %0, !dbg !5709
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5710 dso_local ptr @crypto_clone_tfm(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5713 dso_local ptr @crypto_clone_shash_ops_async(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_alg(ptr noundef %hash) #3 align 16 !dbg !5717 {
entry:
  %hash.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !5721, metadata !DIExpression()), !dbg !5724
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5722, metadata !DIExpression()), !dbg !5725
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !5725
  %call = call ptr @crypto_hash_alg_common(ptr noundef %0) #15, !dbg !5725
  store ptr %call, ptr %__mptr, align 8, !dbg !5725
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5725
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !5725
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5726
  %2 = load ptr, ptr %tmp, align 8, !dbg !5725
  ret ptr %2, !dbg !5727
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_ahash(ptr noundef %tfm) #3 align 16 !dbg !5728 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5732
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5733
  %call = call ptr @crypto_ahash_tfm(ptr noundef %1) #15, !dbg !5734
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #15, !dbg !5735
  ret void, !dbg !5736
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !5737 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  %0 = load i64, ptr %error.addr, align 8, !dbg !5743
  %1 = inttoptr i64 %0 to ptr, !dbg !5744
  ret ptr %1, !dbg !5745
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_register_ahash(ptr noundef %alg) #0 align 16 !dbg !5746 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5750, metadata !DIExpression()), !dbg !5753
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5751, metadata !DIExpression()), !dbg !5755
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5756
  %halg = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, !dbg !5757
  %base1 = getelementptr inbounds %struct.hash_alg_common, ptr %halg, i32 0, i32 2, !dbg !5758
  store ptr %base1, ptr %base, align 8, !dbg !5755
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5752, metadata !DIExpression()), !dbg !5760
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !5761
  %call = call i32 @ahash_prepare_alg(ptr noundef %1) #15, !dbg !5762
  store i32 %call, ptr %err, align 4, !dbg !5763
  %2 = load i32, ptr %err, align 4, !dbg !5764
  %tobool = icmp ne i32 %2, 0, !dbg !5764
  br i1 %tobool, label %if.then, label %if.end, !dbg !5766

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !5767
  store i32 %3, ptr %retval, align 4, !dbg !5768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5768

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %base, align 8, !dbg !5769
  %call2 = call i32 @crypto_register_alg(ptr noundef %4) #15, !dbg !5770
  store i32 %call2, ptr %retval, align 4, !dbg !5771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5771

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5772
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !5772
  %5 = load i32, ptr %retval, align 4, !dbg !5772
  ret i32 %5, !dbg !5772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_prepare_alg(ptr noundef %alg) #0 align 16 !dbg !5773 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5775, metadata !DIExpression()), !dbg !5778
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5776, metadata !DIExpression()), !dbg !5780
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5781
  %halg = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, !dbg !5782
  %base1 = getelementptr inbounds %struct.hash_alg_common, ptr %halg, i32 0, i32 2, !dbg !5783
  store ptr %base1, ptr %base, align 8, !dbg !5780
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5784
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5777, metadata !DIExpression()), !dbg !5785
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !5786
  %halg2 = getelementptr inbounds %struct.ahash_alg, ptr %1, i32 0, i32 11, !dbg !5788
  %statesize = getelementptr inbounds %struct.hash_alg_common, ptr %halg2, i32 0, i32 1, !dbg !5789
  %2 = load i32, ptr %statesize, align 4, !dbg !5789
  %cmp = icmp eq i32 %2, 0, !dbg !5790
  br i1 %cmp, label %if.then, label %if.end, !dbg !5791

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5792

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %alg.addr, align 8, !dbg !5793
  %halg3 = getelementptr inbounds %struct.ahash_alg, ptr %3, i32 0, i32 11, !dbg !5794
  %call = call i32 @hash_prepare_alg(ptr noundef %halg3) #15, !dbg !5795
  store i32 %call, ptr %err, align 4, !dbg !5796
  %4 = load i32, ptr %err, align 4, !dbg !5797
  %tobool = icmp ne i32 %4, 0, !dbg !5797
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5799

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %err, align 4, !dbg !5800
  store i32 %5, ptr %retval, align 4, !dbg !5801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5801

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %base, align 8, !dbg !5802
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 10, !dbg !5803
  store ptr @crypto_ahash_type, ptr %cra_type, align 8, !dbg !5804
  %7 = load ptr, ptr %base, align 8, !dbg !5805
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 2, !dbg !5806
  %8 = load i32, ptr %cra_flags, align 8, !dbg !5807
  %or = or i32 %8, 15, !dbg !5807
  store i32 %or, ptr %cra_flags, align 8, !dbg !5807
  store i32 0, ptr %retval, align 4, !dbg !5808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5808

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5809
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !5809
  %9 = load i32, ptr %retval, align 4, !dbg !5809
  ret i32 %9, !dbg !5809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local i32 @crypto_register_alg(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_unregister_ahash(ptr noundef %alg) #0 align 16 !dbg !5813 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5819
  %halg = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, !dbg !5820
  %base = getelementptr inbounds %struct.hash_alg_common, ptr %halg, i32 0, i32 2, !dbg !5821
  call void @crypto_unregister_alg(ptr noundef %base) #15, !dbg !5822
  ret void, !dbg !5823
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5824 dso_local void @crypto_unregister_alg(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_register_ahashes(ptr noundef %algs, i32 noundef %count) #0 align 16 !dbg !5825 {
entry:
  %retval = alloca i32, align 4
  %algs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algs.addr, metadata !5829, metadata !DIExpression()), !dbg !5834
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5830, metadata !DIExpression()), !dbg !5835
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5831, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5832, metadata !DIExpression()), !dbg !5838
  store i32 0, ptr %i, align 4, !dbg !5839
  br label %for.cond, !dbg !5841

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5842
  %1 = load i32, ptr %count.addr, align 4, !dbg !5844
  %cmp = icmp slt i32 %0, %1, !dbg !5845
  br i1 %cmp, label %for.body, label %for.end, !dbg !5846

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algs.addr, align 8, !dbg !5847
  %3 = load i32, ptr %i, align 4, !dbg !5849
  %idxprom = sext i32 %3 to i64, !dbg !5847
  %arrayidx = getelementptr %struct.ahash_alg, ptr %2, i64 %idxprom, !dbg !5847
  %call = call i32 @crypto_register_ahash(ptr noundef %arrayidx) #15, !dbg !5850
  store i32 %call, ptr %ret, align 4, !dbg !5851
  %4 = load i32, ptr %ret, align 4, !dbg !5852
  %tobool = icmp ne i32 %4, 0, !dbg !5852
  br i1 %tobool, label %if.then, label %if.end, !dbg !5854

if.then:                                          ; preds = %for.body
  br label %err, !dbg !5855

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5856

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !5857
  %inc = add i32 %5, 1, !dbg !5857
  store i32 %inc, ptr %i, align 4, !dbg !5857
  br label %for.cond, !dbg !5858, !llvm.loop !5859

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5863

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !5833), !dbg !5864
  %6 = load i32, ptr %i, align 4, !dbg !5865
  %dec = add i32 %6, -1, !dbg !5865
  store i32 %dec, ptr %i, align 4, !dbg !5865
  br label %for.cond1, !dbg !5865

for.cond1:                                        ; preds = %for.inc6, %err
  %7 = load i32, ptr %i, align 4, !dbg !5867
  %cmp2 = icmp sge i32 %7, 0, !dbg !5869
  br i1 %cmp2, label %for.body3, label %for.end8, !dbg !5870

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %algs.addr, align 8, !dbg !5871
  %9 = load i32, ptr %i, align 4, !dbg !5872
  %idxprom4 = sext i32 %9 to i64, !dbg !5871
  %arrayidx5 = getelementptr %struct.ahash_alg, ptr %8, i64 %idxprom4, !dbg !5871
  call void @crypto_unregister_ahash(ptr noundef %arrayidx5) #15, !dbg !5873
  br label %for.inc6, !dbg !5873

for.inc6:                                         ; preds = %for.body3
  %10 = load i32, ptr %i, align 4, !dbg !5874
  %dec7 = add i32 %10, -1, !dbg !5874
  store i32 %dec7, ptr %i, align 4, !dbg !5874
  br label %for.cond1, !dbg !5875, !llvm.loop !5876

for.end8:                                         ; preds = %for.cond1
  %11 = load i32, ptr %ret, align 4, !dbg !5878
  store i32 %11, ptr %retval, align 4, !dbg !5879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5879

cleanup:                                          ; preds = %for.end8, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5880
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5880
  %12 = load i32, ptr %retval, align 4, !dbg !5880
  ret i32 %12, !dbg !5880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_unregister_ahashes(ptr noundef %algs, i32 noundef %count) #0 align 16 !dbg !5881 {
entry:
  %algs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algs.addr, metadata !5885, metadata !DIExpression()), !dbg !5888
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5886, metadata !DIExpression()), !dbg !5889
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5887, metadata !DIExpression()), !dbg !5891
  %0 = load i32, ptr %count.addr, align 4, !dbg !5892
  %sub = sub i32 %0, 1, !dbg !5894
  store i32 %sub, ptr %i, align 4, !dbg !5895
  br label %for.cond, !dbg !5896

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5897
  %cmp = icmp sge i32 %1, 0, !dbg !5899
  br i1 %cmp, label %for.body, label %for.end, !dbg !5900

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algs.addr, align 8, !dbg !5901
  %3 = load i32, ptr %i, align 4, !dbg !5902
  %idxprom = sext i32 %3 to i64, !dbg !5901
  %arrayidx = getelementptr %struct.ahash_alg, ptr %2, i64 %idxprom, !dbg !5901
  call void @crypto_unregister_ahash(ptr noundef %arrayidx) #15, !dbg !5903
  br label %for.inc, !dbg !5903

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !5904
  %dec = add i32 %4, -1, !dbg !5904
  store i32 %dec, ptr %i, align 4, !dbg !5904
  br label %for.cond, !dbg !5905, !llvm.loop !5906

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5908
  ret void, !dbg !5908
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ahash_register_instance(ptr noundef %tmpl, ptr noundef %inst) #0 align 16 !dbg !5909 {
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
  call void @llvm.dbg.declare(metadata ptr %tmpl.addr, metadata !5913, metadata !DIExpression()), !dbg !5922
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !5914, metadata !DIExpression()), !dbg !5923
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5915, metadata !DIExpression()), !dbg !5925
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5916, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !5926
  %free = getelementptr inbounds %struct.ahash_instance, ptr %0, i32 0, i32 0, !dbg !5926
  %1 = load ptr, ptr %free, align 8, !dbg !5926
  %tobool = icmp ne ptr %1, null, !dbg !5926
  %lnot = xor i1 %tobool, true, !dbg !5926
  %lnot1 = xor i1 %lnot, true, !dbg !5926
  %lnot2 = xor i1 %lnot1, true, !dbg !5926
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5926
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5926
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5927
  %tobool3 = icmp ne i32 %2, 0, !dbg !5927
  %lnot4 = xor i1 %tobool3, true, !dbg !5927
  %lnot6 = xor i1 %lnot4, true, !dbg !5927
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5927
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5927
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5927
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5927
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5926

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5927

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5919, metadata !DIExpression()), !dbg !5928
  store i32 2305, ptr %__flags, align 4, !dbg !5928
  br label %do.body9, !dbg !5928

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5929

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5929

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5928

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5931
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 665, i32 %3, i64 12) #14, !dbg !5931, !srcloc !5933
  br label %do.cond11, !dbg !5931

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5931

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5928

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5934

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5934

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5927
  br label %do.cond16, !dbg !5928

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5928

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5928

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5926
  %tobool18 = icmp ne i32 %4, 0, !dbg !5926
  %lnot19 = xor i1 %tobool18, true, !dbg !5926
  %lnot21 = xor i1 %lnot19, true, !dbg !5926
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5926
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5926
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5926
  store i64 %expval24, ptr %tmp, align 8, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5936
  %5 = load i64, ptr %tmp, align 8, !dbg !5926
  %tobool25 = icmp ne i64 %5, 0, !dbg !5936
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5937

if.then26:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5938

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %inst.addr, align 8, !dbg !5939
  %7 = getelementptr inbounds %struct.ahash_instance, ptr %6, i32 0, i32 1, !dbg !5940
  %call = call i32 @ahash_prepare_alg(ptr noundef %7) #15, !dbg !5941
  store i32 %call, ptr %err, align 4, !dbg !5942
  %8 = load i32, ptr %err, align 4, !dbg !5943
  %tobool28 = icmp ne i32 %8, 0, !dbg !5943
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5945

if.then29:                                        ; preds = %if.end27
  %9 = load i32, ptr %err, align 4, !dbg !5946
  store i32 %9, ptr %retval, align 4, !dbg !5947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5947

if.end30:                                         ; preds = %if.end27
  %10 = load ptr, ptr %tmpl.addr, align 8, !dbg !5948
  %11 = load ptr, ptr %inst.addr, align 8, !dbg !5949
  %call31 = call ptr @ahash_crypto_instance(ptr noundef %11) #15, !dbg !5950
  %call32 = call i32 @crypto_register_instance(ptr noundef %10, ptr noundef %call31) #15, !dbg !5951
  store i32 %call32, ptr %retval, align 4, !dbg !5952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5952

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5953
  %12 = load i32, ptr %retval, align 4, !dbg !5953
  ret i32 %12, !dbg !5953
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5954 dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ahash_crypto_instance(ptr noundef %inst) #3 align 16 !dbg !5957 {
entry:
  %inst.addr = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !5963
  %1 = getelementptr inbounds %struct.ahash_instance, ptr %0, i32 0, i32 1, !dbg !5964
  %base = getelementptr inbounds %struct.anon.49, ptr %1, i32 0, i32 1, !dbg !5965
  ret ptr %base, !dbg !5966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %alg) #3 align 16 !dbg !5967 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5973
  %setkey = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 7, !dbg !5974
  %1 = load ptr, ptr %setkey, align 8, !dbg !5974
  %cmp = icmp ne ptr %1, @shash_no_setkey, !dbg !5975
  ret i1 %cmp, !dbg !5976
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_alg(ptr noundef %alg) #3 align 16 !dbg !5977 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5981, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5982, metadata !DIExpression()), !dbg !5985
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5985
  store ptr %0, ptr %__mptr, align 8, !dbg !5985
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5985
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !5985
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5986
  %2 = load ptr, ptr %tmp, align 8, !dbg !5985
  ret ptr %2, !dbg !5987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_ahash_alg(ptr noundef %alg) #3 align 16 !dbg !5988 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5992, metadata !DIExpression()), !dbg !5995
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5996
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5993, metadata !DIExpression()), !dbg !5996
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5996
  %call = call ptr @__crypto_hash_alg_common(ptr noundef %0) #15, !dbg !5996
  store ptr %call, ptr %__mptr, align 8, !dbg !5996
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5996
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !5996
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5996
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5997
  %2 = load ptr, ptr %tmp, align 8, !dbg !5996
  ret ptr %2, !dbg !5998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !5999 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6004, metadata !DIExpression()), !dbg !6007
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6005, metadata !DIExpression()), !dbg !6008
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6006, metadata !DIExpression()), !dbg !6009
  ret void, !dbg !6010
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #6 align 16 !dbg !4781 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6011
  %0 = load ptr, ptr %tmp, align 8, !dbg !6011
  %call = call i32 %0() #15, !dbg !6013
  ret i32 %call, !dbg !6014
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #3 align 16 !dbg !6015 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6019, metadata !DIExpression()), !dbg !6020
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6021
  %call = call ptr @lowmem_page_address(ptr noundef %0) #15, !dbg !6021
  ret ptr %call, !dbg !6022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #6 align 16 !dbg !6023 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6031
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6031
  %2 = inttoptr i64 %1 to ptr, !dbg !6031
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6031
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6031
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6031
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6031
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6031
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6031
  %add = add i64 %shl, %3, !dbg !6031
  %4 = inttoptr i64 %add to ptr, !dbg !6031
  ret ptr %4, !dbg !6032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_page(ptr noundef %sg) #3 align 16 !dbg !6033 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !6039
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !6040
  %1 = load i64, ptr %page_link, align 8, !dbg !6040
  %and = and i64 %1, -4, !dbg !6041
  %2 = inttoptr i64 %and to ptr, !dbg !6042
  ret ptr %2, !dbg !6043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_alg_alignmask(ptr noundef %tfm) #3 align 16 !dbg !6044 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6050
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !6051
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !6051
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5, !dbg !6052
  %2 = load i32, ptr %cra_alignmask, align 4, !dbg !6052
  ret i32 %2, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_ahash_cast(ptr noundef %tfm) #3 align 16 !dbg !6054 {
entry:
  %tfm.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6058, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6059, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6062
  store ptr %0, ptr %__mptr, align 8, !dbg !6062
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6062
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !6062
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6063
  %2 = load ptr, ptr %tmp, align 8, !dbg !6062
  ret ptr %2, !dbg !6064
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6065 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6069, metadata !DIExpression()), !dbg !6074
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6070, metadata !DIExpression()), !dbg !6075
  %0 = load i64, ptr %size.addr, align 8, !dbg !6076
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6077
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6078

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6079
  %tobool = icmp ne i64 %2, 0, !dbg !6079
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6080

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6071, metadata !DIExpression()), !dbg !6082
  %3 = load i64, ptr %size.addr, align 8, !dbg !6083
  %cmp = icmp ugt i64 %3, 8192, !dbg !6085
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6086

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6087
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6088
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !6089
  store ptr %call, ptr %retval, align 8, !dbg !6090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6091
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6091
  store i32 %call2, ptr %index, align 4, !dbg !6092
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6093
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6094
  %9 = ptrtoint ptr %8 to i64, !dbg !6094
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6095
  %idxprom = zext i32 %call3 to i64, !dbg !6096
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6096
  %10 = load i32, ptr %index, align 4, !dbg !6097
  %idxprom4 = zext i32 %10 to i64, !dbg !6096
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6096
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6096
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6098
  %13 = load i64, ptr %size.addr, align 8, !dbg !6099
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6100
  store ptr %call6, ptr %retval, align 8, !dbg !6101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6101

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6102
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6103
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6104
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !6105
  store ptr %call8, ptr %retval, align 8, !dbg !6106
  br label %return, !dbg !6106

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6107
  ret ptr %16, !dbg !6107
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6108 dso_local void @kfree_sensitive(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6109 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6110 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6114, metadata !DIExpression()), !dbg !6116
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6115, metadata !DIExpression()), !dbg !6117
  %0 = load i64, ptr %size.addr, align 8, !dbg !6118
  %tobool = icmp ne i64 %0, 0, !dbg !6118
  br i1 %tobool, label %if.end, label %if.then, !dbg !6120

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6121
  br label %return, !dbg !6121

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp = icmp ule i64 %1, 8, !dbg !6124
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6125

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6127
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6129
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6130

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6131
  %cmp4 = icmp ule i64 %3, 96, !dbg !6132
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6133

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6135
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6137
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6138

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6139
  %cmp9 = icmp ule i64 %5, 192, !dbg !6140
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6141

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6142
  br label %return, !dbg !6142

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6143
  %cmp12 = icmp ule i64 %6, 8, !dbg !6145
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6146

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6147
  br label %return, !dbg !6147

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6148
  %cmp15 = icmp ule i64 %7, 16, !dbg !6150
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6151

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6153
  %cmp18 = icmp ule i64 %8, 32, !dbg !6155
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6156

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6157
  br label %return, !dbg !6157

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6158
  %cmp21 = icmp ule i64 %9, 64, !dbg !6160
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6161

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6162
  br label %return, !dbg !6162

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6163
  %cmp24 = icmp ule i64 %10, 128, !dbg !6165
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6166

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6167
  br label %return, !dbg !6167

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6168
  %cmp27 = icmp ule i64 %11, 256, !dbg !6170
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6171

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6172
  br label %return, !dbg !6172

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6173
  %cmp30 = icmp ule i64 %12, 512, !dbg !6175
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6176

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6177
  br label %return, !dbg !6177

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6178
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6180
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6181

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6182
  br label %return, !dbg !6182

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6183
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6185
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6186

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6187
  br label %return, !dbg !6187

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6188
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6190
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6191

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6192
  br label %return, !dbg !6192

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6193
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6195
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6196

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6198
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6200
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6201

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6202
  br label %return, !dbg !6202

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6203
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6205
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6206

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6208
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6210
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6211

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6213
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6215
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6216

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6218
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6220
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6221

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6223
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6225
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6226

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6228
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6230
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6231

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6232
  br label %return, !dbg !6232

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6233
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6235
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6236

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6237
  br label %return, !dbg !6237

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6238, !range !5341, !noundef !1042
  %tobool69 = trunc i8 %25 to i1, !dbg !6238
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6240

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6241

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !6242, !srcloc !6245
  unreachable, !dbg !6242

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6246

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6247

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6248

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6250

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6248

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !6252, !srcloc !6254
  br label %do.end75, !dbg !6252

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6248

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6255
  br label %return, !dbg !6255

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6256
  ret i32 %26, !dbg !6256
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6257 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !6263 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6271
  %and = and i32 %0, 17, !dbg !6271
  %cmp = icmp eq i32 %and, 0, !dbg !6271
  %lnot = xor i1 %cmp, true, !dbg !6271
  %lnot1 = xor i1 %lnot, true, !dbg !6271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6271
  %conv = sext i32 %lnot.ext to i64, !dbg !6271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6271
  %tobool = icmp ne i64 %expval, 0, !dbg !6271
  br i1 %tobool, label %if.then, label %if.end, !dbg !6273

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6274
  br label %return, !dbg !6274

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6275
  %and2 = and i32 %1, 1, !dbg !6277
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6277
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6278

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6282
  ret i32 %2, !dbg !6282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6283 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6284 dso_local void @__compiletime_assert_117() #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_nosetkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 16 !dbg !6285 {
entry:
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6287, metadata !DIExpression()), !dbg !6290
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6288, metadata !DIExpression()), !dbg !6291
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !6289, metadata !DIExpression()), !dbg !6292
  ret i32 -38, !dbg !6293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_set_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !6294 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6296, metadata !DIExpression()), !dbg !6298
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6297, metadata !DIExpression()), !dbg !6299
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6300
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #15, !dbg !6301
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6302
  call void @crypto_tfm_set_flags(ptr noundef %call, i32 noundef %1) #15, !dbg !6303
  ret void, !dbg !6304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_tfm_set_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !6305 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6313
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6314
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 1, !dbg !6315
  %2 = load i32, ptr %crt_flags, align 4, !dbg !6316
  %or = or i32 %2, %0, !dbg !6316
  store i32 %or, ptr %crt_flags, align 4, !dbg !6316
  ret void, !dbg !6317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_tfm_clear_flags(ptr noundef %tfm, i32 noundef %flags) #3 align 16 !dbg !6318 {
entry:
  %tfm.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6320, metadata !DIExpression()), !dbg !6322
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6321, metadata !DIExpression()), !dbg !6323
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6324
  %not = xor i32 %0, -1, !dbg !6325
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6326
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 1, !dbg !6327
  %2 = load i32, ptr %crt_flags, align 4, !dbg !6328
  %and = and i32 %2, %not, !dbg !6328
  store i32 %and, ptr %crt_flags, align 4, !dbg !6328
  ret void, !dbg !6329
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_hash_alg_common(ptr noundef %alg) #3 align 16 !dbg !6330 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6334, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6335, metadata !DIExpression()), !dbg !6338
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6338
  store ptr %0, ptr %__mptr, align 8, !dbg !6338
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6338
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !6338
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6339
  %2 = load ptr, ptr %tmp, align 8, !dbg !6338
  ret ptr %2, !dbg !6340
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_op_unaligned(ptr noundef %req, ptr noundef %op, i1 noundef zeroext %has_state) #0 align 16 !dbg !6341 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %has_state.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6343, metadata !DIExpression()), !dbg !6347
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6344, metadata !DIExpression()), !dbg !6348
  %frombool = zext i1 %has_state to i8
  store i8 %frombool, ptr %has_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %has_state.addr, metadata !6345, metadata !DIExpression()), !dbg !6349
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6346, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6352
  %1 = load i8, ptr %has_state.addr, align 1, !dbg !6353, !range !5341, !noundef !1042
  %tobool = trunc i8 %1 to i1, !dbg !6353
  %call = call i32 @ahash_save_req(ptr noundef %0, ptr noundef @ahash_op_unaligned_done, i1 noundef zeroext %tobool) #15, !dbg !6354
  store i32 %call, ptr %err, align 4, !dbg !6355
  %2 = load i32, ptr %err, align 4, !dbg !6356
  %tobool1 = icmp ne i32 %2, 0, !dbg !6356
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6358

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !6359
  store i32 %3, ptr %retval, align 4, !dbg !6360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6360

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %op.addr, align 8, !dbg !6361
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6362
  %priv = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 4, !dbg !6363
  %6 = load ptr, ptr %priv, align 8, !dbg !6363
  %call2 = call i32 %4(ptr noundef %6) #15, !dbg !6361
  store i32 %call2, ptr %err, align 4, !dbg !6364
  %7 = load i32, ptr %err, align 4, !dbg !6365
  %cmp = icmp eq i32 %7, -115, !dbg !6367
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !6368

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !6369
  %cmp3 = icmp eq i32 %8, -16, !dbg !6370
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6371

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i32, ptr %err, align 4, !dbg !6372
  store i32 %9, ptr %retval, align 4, !dbg !6373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6373

if.end5:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %req.addr, align 8, !dbg !6374
  %11 = load i32, ptr %err, align 4, !dbg !6375
  call void @ahash_restore_req(ptr noundef %10, i32 noundef %11) #15, !dbg !6376
  %12 = load i32, ptr %err, align 4, !dbg !6377
  store i32 %12, ptr %retval, align 4, !dbg !6378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6378

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6379
  %13 = load i32, ptr %retval, align 4, !dbg !6379
  ret i32 %13, !dbg !6379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_save_req(ptr noundef %req, ptr noundef %cplt, i1 noundef zeroext %has_state) #0 align 16 !dbg !6380 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %cplt.addr = alloca ptr, align 8
  %has_state.addr = alloca i8, align 1
  %tfm = alloca ptr, align 8
  %alignmask = alloca i64, align 8
  %ds = alloca i32, align 4
  %subreq = alloca ptr, align 8
  %subreq_size = alloca i32, align 4
  %reqsize = alloca i32, align 4
  %result = alloca ptr, align 8
  %gfp = alloca i32, align 4
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6384, metadata !DIExpression()), !dbg !6399
  store ptr %cplt, ptr %cplt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cplt.addr, metadata !6385, metadata !DIExpression()), !dbg !6400
  %frombool = zext i1 %has_state to i8
  store i8 %frombool, ptr %has_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %has_state.addr, metadata !6386, metadata !DIExpression()), !dbg !6401
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6387, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6404
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !6405
  store ptr %call, ptr %tfm, align 8, !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignmask) #14, !dbg !6406
  call void @llvm.dbg.declare(metadata ptr %alignmask, metadata !6388, metadata !DIExpression()), !dbg !6407
  %1 = load ptr, ptr %tfm, align 8, !dbg !6408
  %call1 = call i32 @crypto_ahash_alignmask(ptr noundef %1) #15, !dbg !6409
  %conv = zext i32 %call1 to i64, !dbg !6409
  store i64 %conv, ptr %alignmask, align 8, !dbg !6407
  call void @llvm.lifetime.start.p0(i64 4, ptr %ds) #14, !dbg !6410
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !6389, metadata !DIExpression()), !dbg !6411
  %2 = load ptr, ptr %tfm, align 8, !dbg !6412
  %call2 = call i32 @crypto_ahash_digestsize(ptr noundef %2) #15, !dbg !6413
  store i32 %call2, ptr %ds, align 4, !dbg !6411
  call void @llvm.lifetime.start.p0(i64 8, ptr %subreq) #14, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %subreq, metadata !6390, metadata !DIExpression()), !dbg !6415
  call void @llvm.lifetime.start.p0(i64 4, ptr %subreq_size) #14, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %subreq_size, metadata !6391, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 4, ptr %reqsize) #14, !dbg !6418
  call void @llvm.dbg.declare(metadata ptr %reqsize, metadata !6392, metadata !DIExpression()), !dbg !6419
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #14, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6393, metadata !DIExpression()), !dbg !6421
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #14, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !6394, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6395, metadata !DIExpression()), !dbg !6425
  store i32 80, ptr %subreq_size, align 4, !dbg !6426
  %3 = load ptr, ptr %tfm, align 8, !dbg !6427
  %call3 = call i32 @crypto_ahash_reqsize(ptr noundef %3) #15, !dbg !6428
  store i32 %call3, ptr %reqsize, align 4, !dbg !6429
  %4 = load i32, ptr %reqsize, align 4, !dbg !6430
  %call4 = call i32 @crypto_tfm_ctx_alignment() #15, !dbg !6430
  %sub = sub i32 %call4, 1, !dbg !6430
  %add = add i32 %4, %sub, !dbg !6430
  %call5 = call i32 @crypto_tfm_ctx_alignment() #15, !dbg !6430
  %sub6 = sub i32 %call5, 1, !dbg !6430
  %not = xor i32 %sub6, -1, !dbg !6430
  %and = and i32 %add, %not, !dbg !6430
  store i32 %and, ptr %reqsize, align 4, !dbg !6431
  %5 = load i32, ptr %reqsize, align 4, !dbg !6432
  %6 = load i32, ptr %subreq_size, align 4, !dbg !6433
  %add7 = add i32 %6, %5, !dbg !6433
  store i32 %add7, ptr %subreq_size, align 4, !dbg !6433
  %7 = load i32, ptr %ds, align 4, !dbg !6434
  %8 = load i32, ptr %subreq_size, align 4, !dbg !6435
  %add8 = add i32 %8, %7, !dbg !6435
  store i32 %add8, ptr %subreq_size, align 4, !dbg !6435
  %9 = load i64, ptr %alignmask, align 8, !dbg !6436
  %call9 = call i32 @crypto_tfm_ctx_alignment() #15, !dbg !6437
  %sub10 = sub i32 %call9, 1, !dbg !6438
  %not11 = xor i32 %sub10, -1, !dbg !6439
  %conv12 = zext i32 %not11 to i64, !dbg !6439
  %and13 = and i64 %9, %conv12, !dbg !6440
  %10 = load i32, ptr %subreq_size, align 4, !dbg !6441
  %conv14 = zext i32 %10 to i64, !dbg !6441
  %add15 = add i64 %conv14, %and13, !dbg !6441
  %conv16 = trunc i64 %add15 to i32, !dbg !6441
  store i32 %conv16, ptr %subreq_size, align 4, !dbg !6441
  %11 = load ptr, ptr %req.addr, align 8, !dbg !6442
  %call17 = call i32 @ahash_request_flags(ptr noundef %11) #15, !dbg !6443
  store i32 %call17, ptr %flags, align 4, !dbg !6444
  %12 = load i32, ptr %flags, align 4, !dbg !6445
  %and18 = and i32 %12, 512, !dbg !6446
  %tobool = icmp ne i32 %and18, 0, !dbg !6447
  %13 = zext i1 %tobool to i64, !dbg !6447
  %cond = select i1 %tobool, i32 3264, i32 2080, !dbg !6447
  store i32 %cond, ptr %gfp, align 4, !dbg !6448
  %14 = load i32, ptr %subreq_size, align 4, !dbg !6449
  %conv19 = zext i32 %14 to i64, !dbg !6449
  %15 = load i32, ptr %gfp, align 4, !dbg !6450
  %call20 = call noalias ptr @kmalloc(i64 noundef %conv19, i32 noundef %15) #16, !dbg !6451
  store ptr %call20, ptr %subreq, align 8, !dbg !6452
  %16 = load ptr, ptr %subreq, align 8, !dbg !6453
  %tobool21 = icmp ne ptr %16, null, !dbg !6453
  br i1 %tobool21, label %if.end, label %if.then, !dbg !6455

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6456

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %subreq, align 8, !dbg !6457
  %18 = load ptr, ptr %tfm, align 8, !dbg !6458
  call void @ahash_request_set_tfm(ptr noundef %17, ptr noundef %18) #15, !dbg !6459
  %19 = load ptr, ptr %subreq, align 8, !dbg !6460
  %20 = load i32, ptr %flags, align 4, !dbg !6461
  %21 = load ptr, ptr %cplt.addr, align 8, !dbg !6462
  %22 = load ptr, ptr %req.addr, align 8, !dbg !6463
  call void @ahash_request_set_callback(ptr noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22) #15, !dbg !6464
  %23 = load ptr, ptr %subreq, align 8, !dbg !6465
  %add.ptr = getelementptr %struct.ahash_request, ptr %23, i64 1, !dbg !6466
  %24 = load i32, ptr %reqsize, align 4, !dbg !6467
  %idx.ext = zext i32 %24 to i64, !dbg !6468
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i64 %idx.ext, !dbg !6468
  store ptr %add.ptr22, ptr %result, align 8, !dbg !6469
  %25 = load ptr, ptr %result, align 8, !dbg !6470
  %26 = ptrtoint ptr %25 to i64, !dbg !6470
  %27 = load i64, ptr %alignmask, align 8, !dbg !6470
  %add23 = add i64 %27, 1, !dbg !6470
  %sub24 = sub i64 %add23, 1, !dbg !6470
  %add25 = add i64 %26, %sub24, !dbg !6470
  %28 = load i64, ptr %alignmask, align 8, !dbg !6470
  %add26 = add i64 %28, 1, !dbg !6470
  %sub27 = sub i64 %add26, 1, !dbg !6470
  %not28 = xor i64 %sub27, -1, !dbg !6470
  %and29 = and i64 %add25, %not28, !dbg !6470
  %29 = inttoptr i64 %and29 to ptr, !dbg !6470
  store ptr %29, ptr %result, align 8, !dbg !6471
  %30 = load ptr, ptr %subreq, align 8, !dbg !6472
  %31 = load ptr, ptr %req.addr, align 8, !dbg !6473
  %src = getelementptr inbounds %struct.ahash_request, ptr %31, i32 0, i32 2, !dbg !6474
  %32 = load ptr, ptr %src, align 8, !dbg !6474
  %33 = load ptr, ptr %result, align 8, !dbg !6475
  %34 = load ptr, ptr %req.addr, align 8, !dbg !6476
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %34, i32 0, i32 1, !dbg !6477
  %35 = load i32, ptr %nbytes, align 8, !dbg !6477
  call void @ahash_request_set_crypt(ptr noundef %30, ptr noundef %32, ptr noundef %33, i32 noundef %35) #15, !dbg !6478
  %36 = load i8, ptr %has_state.addr, align 1, !dbg !6479, !range !5341, !noundef !1042
  %tobool30 = trunc i8 %36 to i1, !dbg !6479
  br i1 %tobool30, label %if.then31, label %if.end40, !dbg !6480

if.then31:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #14, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6396, metadata !DIExpression()), !dbg !6482
  %37 = load ptr, ptr %tfm, align 8, !dbg !6483
  %call32 = call i32 @crypto_ahash_statesize(ptr noundef %37) #15, !dbg !6484
  %conv33 = zext i32 %call32 to i64, !dbg !6484
  %38 = load i32, ptr %gfp, align 4, !dbg !6485
  %call34 = call noalias ptr @kmalloc(i64 noundef %conv33, i32 noundef %38) #16, !dbg !6486
  store ptr %call34, ptr %state, align 8, !dbg !6487
  %39 = load ptr, ptr %state, align 8, !dbg !6488
  %tobool35 = icmp ne ptr %39, null, !dbg !6488
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !6490

if.then36:                                        ; preds = %if.then31
  %40 = load ptr, ptr %subreq, align 8, !dbg !6491
  call void @kfree(ptr noundef %40) #15, !dbg !6493
  store i32 -12, ptr %retval, align 4, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6494

if.end37:                                         ; preds = %if.then31
  %41 = load ptr, ptr %req.addr, align 8, !dbg !6495
  %42 = load ptr, ptr %state, align 8, !dbg !6496
  %call38 = call i32 @crypto_ahash_export(ptr noundef %41, ptr noundef %42) #15, !dbg !6497
  %43 = load ptr, ptr %subreq, align 8, !dbg !6498
  %44 = load ptr, ptr %state, align 8, !dbg !6499
  %call39 = call i32 @crypto_ahash_import(ptr noundef %43, ptr noundef %44) #15, !dbg !6500
  %45 = load ptr, ptr %state, align 8, !dbg !6501
  call void @kfree_sensitive(ptr noundef %45) #15, !dbg !6502
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6503
  br label %cleanup, !dbg !6503

cleanup:                                          ; preds = %if.end37, %if.then36
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #14, !dbg !6503
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end40, !dbg !6504

if.end40:                                         ; preds = %cleanup.cont, %if.end
  %46 = load ptr, ptr %subreq, align 8, !dbg !6505
  %47 = load ptr, ptr %req.addr, align 8, !dbg !6506
  %priv = getelementptr inbounds %struct.ahash_request, ptr %47, i32 0, i32 4, !dbg !6507
  store ptr %46, ptr %priv, align 8, !dbg !6508
  store i32 0, ptr %retval, align 4, !dbg !6509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6509

cleanup41:                                        ; preds = %if.end40, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 4, ptr %reqsize) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 4, ptr %subreq_size) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %subreq) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 4, ptr %ds) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignmask) #14, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !6510
  %48 = load i32, ptr %retval, align 4, !dbg !6510
  ret i32 %48, !dbg !6510
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_op_unaligned_done(ptr noundef %data, i32 noundef %err) #0 align 16 !dbg !6511 {
entry:
  %data.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %areq = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6513, metadata !DIExpression()), !dbg !6517
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6514, metadata !DIExpression()), !dbg !6518
  call void @llvm.lifetime.start.p0(i64 8, ptr %areq) #14, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %areq, metadata !6515, metadata !DIExpression()), !dbg !6520
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6521
  store ptr %0, ptr %areq, align 8, !dbg !6520
  %1 = load i32, ptr %err.addr, align 4, !dbg !6522
  %cmp = icmp eq i32 %1, -115, !dbg !6524
  br i1 %cmp, label %if.then, label %if.end, !dbg !6525

if.then:                                          ; preds = %entry
  br label %out, !dbg !6526

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %areq, align 8, !dbg !6527
  %3 = load i32, ptr %err.addr, align 4, !dbg !6528
  call void @ahash_restore_req(ptr noundef %2, i32 noundef %3) #15, !dbg !6529
  br label %out, !dbg !6529

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6516), !dbg !6530
  %4 = load ptr, ptr %areq, align 8, !dbg !6531
  %5 = load i32, ptr %err.addr, align 4, !dbg !6532
  call void @ahash_request_complete(ptr noundef %4, i32 noundef %5) #15, !dbg !6533
  call void @llvm.lifetime.end.p0(i64 8, ptr %areq) #14, !dbg !6534
  ret void, !dbg !6534
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_restore_req(ptr noundef %req, i32 noundef %err) #0 align 16 !dbg !6535 {
entry:
  %req.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %subreq = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6539, metadata !DIExpression()), !dbg !6542
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6540, metadata !DIExpression()), !dbg !6543
  call void @llvm.lifetime.start.p0(i64 8, ptr %subreq) #14, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %subreq, metadata !6541, metadata !DIExpression()), !dbg !6545
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6546
  %priv = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 4, !dbg !6547
  %1 = load ptr, ptr %priv, align 8, !dbg !6547
  store ptr %1, ptr %subreq, align 8, !dbg !6545
  %2 = load i32, ptr %err.addr, align 4, !dbg !6548
  %tobool = icmp ne i32 %2, 0, !dbg !6548
  br i1 %tobool, label %if.end, label %if.then, !dbg !6550

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %req.addr, align 8, !dbg !6551
  %result = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 3, !dbg !6552
  %4 = load ptr, ptr %result, align 8, !dbg !6552
  %5 = load ptr, ptr %subreq, align 8, !dbg !6553
  %result1 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 3, !dbg !6554
  %6 = load ptr, ptr %result1, align 8, !dbg !6554
  %7 = load ptr, ptr %req.addr, align 8, !dbg !6555
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %7) #15, !dbg !6556
  %call2 = call i32 @crypto_ahash_digestsize(ptr noundef %call) #15, !dbg !6557
  %conv = zext i32 %call2 to i64, !dbg !6557
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %conv, i1 false), !dbg !6558
  br label %if.end, !dbg !6558

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %req.addr, align 8, !dbg !6559
  %priv3 = getelementptr inbounds %struct.ahash_request, ptr %8, i32 0, i32 4, !dbg !6560
  store ptr null, ptr %priv3, align 8, !dbg !6561
  %9 = load ptr, ptr %subreq, align 8, !dbg !6562
  call void @kfree_sensitive(ptr noundef %9) #15, !dbg !6563
  call void @llvm.lifetime.end.p0(i64 8, ptr %subreq) #14, !dbg !6564
  ret void, !dbg !6564
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_digestsize(ptr noundef %tfm) #3 align 16 !dbg !6565 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6569
  %call = call ptr @crypto_hash_alg_common(ptr noundef %0) #15, !dbg !6570
  %digestsize = getelementptr inbounds %struct.hash_alg_common, ptr %call, i32 0, i32 0, !dbg !6571
  %1 = load i32, ptr %digestsize, align 8, !dbg !6571
  ret i32 %1, !dbg !6572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_reqsize(ptr noundef %tfm) #3 align 16 !dbg !6573 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6575, metadata !DIExpression()), !dbg !6576
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6577
  %reqsize = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 9, !dbg !6578
  %1 = load i32, ptr %reqsize, align 4, !dbg !6578
  ret i32 %1, !dbg !6579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_ctx_alignment() #3 align 16 !dbg !6580 {
entry:
  %tfm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6584, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !6587
  ret i32 8, !dbg !6588
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_request_flags(ptr noundef %req) #3 align 16 !dbg !6589 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6595
  %base = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 0, !dbg !6596
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 4, !dbg !6597
  %1 = load i32, ptr %flags, align 8, !dbg !6597
  ret i32 %1, !dbg !6598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_request_set_tfm(ptr noundef %req, ptr noundef %tfm) #3 align 16 !dbg !6599 {
entry:
  %req.addr = alloca ptr, align 8
  %tfm.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6603, metadata !DIExpression()), !dbg !6605
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6604, metadata !DIExpression()), !dbg !6606
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6607
  %call = call ptr @crypto_ahash_tfm(ptr noundef %0) #15, !dbg !6608
  %1 = load ptr, ptr %req.addr, align 8, !dbg !6609
  %base = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 0, !dbg !6610
  %tfm1 = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 3, !dbg !6611
  store ptr %call, ptr %tfm1, align 8, !dbg !6612
  ret void, !dbg !6613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_request_set_callback(ptr noundef %req, i32 noundef %flags, ptr noundef %compl, ptr noundef %data) #3 align 16 !dbg !6614 {
entry:
  %req.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %compl.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6618, metadata !DIExpression()), !dbg !6622
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6619, metadata !DIExpression()), !dbg !6623
  store ptr %compl, ptr %compl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compl.addr, metadata !6620, metadata !DIExpression()), !dbg !6624
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6621, metadata !DIExpression()), !dbg !6625
  %0 = load ptr, ptr %compl.addr, align 8, !dbg !6626
  %1 = load ptr, ptr %req.addr, align 8, !dbg !6627
  %base = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 0, !dbg !6628
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 1, !dbg !6629
  store ptr %0, ptr %complete, align 8, !dbg !6630
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6631
  %3 = load ptr, ptr %req.addr, align 8, !dbg !6632
  %base1 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 0, !dbg !6633
  %data2 = getelementptr inbounds %struct.crypto_async_request, ptr %base1, i32 0, i32 2, !dbg !6634
  store ptr %2, ptr %data2, align 8, !dbg !6635
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6636
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6637
  %base3 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 0, !dbg !6638
  %flags4 = getelementptr inbounds %struct.crypto_async_request, ptr %base3, i32 0, i32 4, !dbg !6639
  store i32 %4, ptr %flags4, align 8, !dbg !6640
  ret void, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_request_set_crypt(ptr noundef %req, ptr noundef %src, ptr noundef %result, i32 noundef %nbytes) #3 align 16 !dbg !6642 {
entry:
  %req.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %nbytes.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6646, metadata !DIExpression()), !dbg !6650
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6647, metadata !DIExpression()), !dbg !6651
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !6648, metadata !DIExpression()), !dbg !6652
  store i32 %nbytes, ptr %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !6649, metadata !DIExpression()), !dbg !6653
  %0 = load ptr, ptr %src.addr, align 8, !dbg !6654
  %1 = load ptr, ptr %req.addr, align 8, !dbg !6655
  %src1 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 2, !dbg !6656
  store ptr %0, ptr %src1, align 8, !dbg !6657
  %2 = load i32, ptr %nbytes.addr, align 4, !dbg !6658
  %3 = load ptr, ptr %req.addr, align 8, !dbg !6659
  %nbytes2 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 1, !dbg !6660
  store i32 %2, ptr %nbytes2, align 8, !dbg !6661
  %4 = load ptr, ptr %result.addr, align 8, !dbg !6662
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6663
  %result3 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 3, !dbg !6664
  store ptr %4, ptr %result3, align 8, !dbg !6665
  ret void, !dbg !6666
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_statesize(ptr noundef %tfm) #3 align 16 !dbg !6667 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6669, metadata !DIExpression()), !dbg !6670
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6671
  %statesize = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 8, !dbg !6672
  %1 = load i32, ptr %statesize, align 8, !dbg !6672
  ret i32 %1, !dbg !6673
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6674 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_export(ptr noundef %req, ptr noundef %out) #3 align 16 !dbg !6675 {
entry:
  %req.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6677, metadata !DIExpression()), !dbg !6679
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !6678, metadata !DIExpression()), !dbg !6680
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6681
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !6682
  %export = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 5, !dbg !6683
  %1 = load ptr, ptr %export, align 8, !dbg !6683
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6684
  %3 = load ptr, ptr %out.addr, align 8, !dbg !6685
  %call1 = call i32 %1(ptr noundef %2, ptr noundef %3) #15, !dbg !6682
  ret i32 %call1, !dbg !6686
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_import(ptr noundef %req, ptr noundef %in) #3 align 16 !dbg !6687 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6689, metadata !DIExpression()), !dbg !6692
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !6690, metadata !DIExpression()), !dbg !6693
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !6694
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6691, metadata !DIExpression()), !dbg !6695
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6696
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !6697
  store ptr %call, ptr %tfm, align 8, !dbg !6695
  %1 = load ptr, ptr %tfm, align 8, !dbg !6698
  %call1 = call i32 @crypto_ahash_get_flags(ptr noundef %1) #15, !dbg !6700
  %and = and i32 %call1, 1, !dbg !6701
  %tobool = icmp ne i32 %and, 0, !dbg !6701
  br i1 %tobool, label %if.then, label %if.end, !dbg !6702

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !6703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6703

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tfm, align 8, !dbg !6704
  %import = getelementptr inbounds %struct.crypto_ahash, ptr %2, i32 0, i32 6, !dbg !6705
  %3 = load ptr, ptr %import, align 8, !dbg !6705
  %4 = load ptr, ptr %req.addr, align 8, !dbg !6706
  %5 = load ptr, ptr %in.addr, align 8, !dbg !6707
  %call2 = call i32 %3(ptr noundef %4, ptr noundef %5) #15, !dbg !6704
  store i32 %call2, ptr %retval, align 4, !dbg !6708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6708

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !6709
  %6 = load i32, ptr %retval, align 4, !dbg !6709
  ret i32 %6, !dbg !6709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_request_complete(ptr noundef %req, i32 noundef %err) #3 align 16 !dbg !6710 {
entry:
  %req.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6712, metadata !DIExpression()), !dbg !6714
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6713, metadata !DIExpression()), !dbg !6715
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6716
  %base = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 0, !dbg !6717
  %1 = load i32, ptr %err.addr, align 4, !dbg !6718
  call void @crypto_request_complete(ptr noundef %base, i32 noundef %1) #15, !dbg !6719
  ret void, !dbg !6720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_request_complete(ptr noundef %req, i32 noundef %err) #3 align 16 !dbg !6721 {
entry:
  %req.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6726, metadata !DIExpression()), !dbg !6728
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6727, metadata !DIExpression()), !dbg !6729
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6730
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1, !dbg !6731
  %1 = load ptr, ptr %complete, align 8, !dbg !6731
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6732
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 2, !dbg !6733
  %3 = load ptr, ptr %data, align 8, !dbg !6733
  %4 = load i32, ptr %err.addr, align 4, !dbg !6734
  call void %1(ptr noundef %3, i32 noundef %4) #15, !dbg !6730
  ret void, !dbg !6735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_get_flags(ptr noundef %tfm) #3 align 16 !dbg !6736 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6740, metadata !DIExpression()), !dbg !6741
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6742
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 1, !dbg !6743
  %1 = load i32, ptr %crt_flags, align 4, !dbg !6743
  ret i32 %1, !dbg !6744
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_extsize(ptr noundef %alg) #0 align 16 !dbg !6745 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6747, metadata !DIExpression()), !dbg !6748
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6749
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10, !dbg !6751
  %1 = load ptr, ptr %cra_type, align 8, !dbg !6751
  %cmp = icmp ne ptr %1, @crypto_ahash_type, !dbg !6752
  br i1 %cmp, label %if.then, label %if.end, !dbg !6753

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !6754
  br label %return, !dbg !6754

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !6755
  %call = call i32 @crypto_alg_extsize(ptr noundef %2) #15, !dbg !6756
  store i32 %call, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6758
  ret i32 %3, !dbg !6758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ahash_init_tfm(ptr noundef %tfm) #0 align 16 !dbg !6759 {
entry:
  %retval = alloca i32, align 4
  %tfm.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6761, metadata !DIExpression()), !dbg !6764
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #14, !dbg !6765
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !6762, metadata !DIExpression()), !dbg !6766
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6767
  %call = call ptr @__crypto_ahash_cast(ptr noundef %0) #15, !dbg !6768
  store ptr %call, ptr %hash, align 8, !dbg !6766
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !6769
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !6763, metadata !DIExpression()), !dbg !6770
  %1 = load ptr, ptr %hash, align 8, !dbg !6771
  %call1 = call ptr @crypto_ahash_alg(ptr noundef %1) #15, !dbg !6772
  store ptr %call1, ptr %alg, align 8, !dbg !6770
  %2 = load ptr, ptr %hash, align 8, !dbg !6773
  %setkey = getelementptr inbounds %struct.crypto_ahash, ptr %2, i32 0, i32 7, !dbg !6774
  store ptr @ahash_nosetkey, ptr %setkey, align 8, !dbg !6775
  %3 = load ptr, ptr %hash, align 8, !dbg !6776
  %4 = load ptr, ptr %alg, align 8, !dbg !6777
  %halg = getelementptr inbounds %struct.ahash_alg, ptr %4, i32 0, i32 11, !dbg !6778
  %statesize = getelementptr inbounds %struct.hash_alg_common, ptr %halg, i32 0, i32 1, !dbg !6779
  %5 = load i32, ptr %statesize, align 4, !dbg !6779
  call void @crypto_ahash_set_statesize(ptr noundef %3, i32 noundef %5) #15, !dbg !6780
  %6 = load ptr, ptr %tfm.addr, align 8, !dbg !6781
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 4, !dbg !6783
  %7 = load ptr, ptr %__crt_alg, align 8, !dbg !6783
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 10, !dbg !6784
  %8 = load ptr, ptr %cra_type, align 8, !dbg !6784
  %cmp = icmp ne ptr %8, @crypto_ahash_type, !dbg !6785
  br i1 %cmp, label %if.then, label %if.end, !dbg !6786

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tfm.addr, align 8, !dbg !6787
  %call2 = call i32 @crypto_init_shash_ops_async(ptr noundef %9) #15, !dbg !6788
  store i32 %call2, ptr %retval, align 4, !dbg !6789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6789

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %alg, align 8, !dbg !6790
  %init = getelementptr inbounds %struct.ahash_alg, ptr %10, i32 0, i32 0, !dbg !6791
  %11 = load ptr, ptr %init, align 8, !dbg !6791
  %12 = load ptr, ptr %hash, align 8, !dbg !6792
  %init3 = getelementptr inbounds %struct.crypto_ahash, ptr %12, i32 0, i32 0, !dbg !6793
  store ptr %11, ptr %init3, align 8, !dbg !6794
  %13 = load ptr, ptr %alg, align 8, !dbg !6795
  %update = getelementptr inbounds %struct.ahash_alg, ptr %13, i32 0, i32 1, !dbg !6796
  %14 = load ptr, ptr %update, align 8, !dbg !6796
  %15 = load ptr, ptr %hash, align 8, !dbg !6797
  %update4 = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 1, !dbg !6798
  store ptr %14, ptr %update4, align 8, !dbg !6799
  %16 = load ptr, ptr %alg, align 8, !dbg !6800
  %final = getelementptr inbounds %struct.ahash_alg, ptr %16, i32 0, i32 2, !dbg !6801
  %17 = load ptr, ptr %final, align 8, !dbg !6801
  %18 = load ptr, ptr %hash, align 8, !dbg !6802
  %final5 = getelementptr inbounds %struct.crypto_ahash, ptr %18, i32 0, i32 2, !dbg !6803
  store ptr %17, ptr %final5, align 8, !dbg !6804
  %19 = load ptr, ptr %alg, align 8, !dbg !6805
  %finup = getelementptr inbounds %struct.ahash_alg, ptr %19, i32 0, i32 3, !dbg !6806
  %20 = load ptr, ptr %finup, align 8, !dbg !6806
  %tobool = icmp ne ptr %20, null, !dbg !6805
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6805

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !6805

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !6805

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %20, %cond.true ], [ @ahash_def_finup, %cond.false ], !dbg !6805
  %21 = load ptr, ptr %hash, align 8, !dbg !6807
  %finup6 = getelementptr inbounds %struct.crypto_ahash, ptr %21, i32 0, i32 3, !dbg !6808
  store ptr %cond, ptr %finup6, align 8, !dbg !6809
  %22 = load ptr, ptr %alg, align 8, !dbg !6810
  %digest = getelementptr inbounds %struct.ahash_alg, ptr %22, i32 0, i32 4, !dbg !6811
  %23 = load ptr, ptr %digest, align 8, !dbg !6811
  %24 = load ptr, ptr %hash, align 8, !dbg !6812
  %digest7 = getelementptr inbounds %struct.crypto_ahash, ptr %24, i32 0, i32 4, !dbg !6813
  store ptr %23, ptr %digest7, align 8, !dbg !6814
  %25 = load ptr, ptr %alg, align 8, !dbg !6815
  %export = getelementptr inbounds %struct.ahash_alg, ptr %25, i32 0, i32 5, !dbg !6816
  %26 = load ptr, ptr %export, align 8, !dbg !6816
  %27 = load ptr, ptr %hash, align 8, !dbg !6817
  %export8 = getelementptr inbounds %struct.crypto_ahash, ptr %27, i32 0, i32 5, !dbg !6818
  store ptr %26, ptr %export8, align 8, !dbg !6819
  %28 = load ptr, ptr %alg, align 8, !dbg !6820
  %import = getelementptr inbounds %struct.ahash_alg, ptr %28, i32 0, i32 6, !dbg !6821
  %29 = load ptr, ptr %import, align 8, !dbg !6821
  %30 = load ptr, ptr %hash, align 8, !dbg !6822
  %import9 = getelementptr inbounds %struct.crypto_ahash, ptr %30, i32 0, i32 6, !dbg !6823
  store ptr %29, ptr %import9, align 8, !dbg !6824
  %31 = load ptr, ptr %alg, align 8, !dbg !6825
  %setkey10 = getelementptr inbounds %struct.ahash_alg, ptr %31, i32 0, i32 7, !dbg !6827
  %32 = load ptr, ptr %setkey10, align 8, !dbg !6827
  %tobool11 = icmp ne ptr %32, null, !dbg !6825
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !6828

if.then12:                                        ; preds = %cond.end
  %33 = load ptr, ptr %alg, align 8, !dbg !6829
  %setkey13 = getelementptr inbounds %struct.ahash_alg, ptr %33, i32 0, i32 7, !dbg !6831
  %34 = load ptr, ptr %setkey13, align 8, !dbg !6831
  %35 = load ptr, ptr %hash, align 8, !dbg !6832
  %setkey14 = getelementptr inbounds %struct.crypto_ahash, ptr %35, i32 0, i32 7, !dbg !6833
  store ptr %34, ptr %setkey14, align 8, !dbg !6834
  %36 = load ptr, ptr %hash, align 8, !dbg !6835
  call void @ahash_set_needkey(ptr noundef %36) #15, !dbg !6836
  br label %if.end15, !dbg !6837

if.end15:                                         ; preds = %if.then12, %cond.end
  %37 = load ptr, ptr %alg, align 8, !dbg !6838
  %exit_tfm = getelementptr inbounds %struct.ahash_alg, ptr %37, i32 0, i32 9, !dbg !6840
  %38 = load ptr, ptr %exit_tfm, align 8, !dbg !6840
  %tobool16 = icmp ne ptr %38, null, !dbg !6838
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6841

if.then17:                                        ; preds = %if.end15
  %39 = load ptr, ptr %tfm.addr, align 8, !dbg !6842
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %39, i32 0, i32 3, !dbg !6843
  store ptr @crypto_ahash_exit_tfm, ptr %exit, align 8, !dbg !6844
  br label %if.end18, !dbg !6842

if.end18:                                         ; preds = %if.then17, %if.end15
  %40 = load ptr, ptr %alg, align 8, !dbg !6845
  %init_tfm = getelementptr inbounds %struct.ahash_alg, ptr %40, i32 0, i32 8, !dbg !6846
  %41 = load ptr, ptr %init_tfm, align 8, !dbg !6846
  %tobool19 = icmp ne ptr %41, null, !dbg !6845
  br i1 %tobool19, label %cond.true20, label %cond.false23, !dbg !6845

cond.true20:                                      ; preds = %if.end18
  %42 = load ptr, ptr %alg, align 8, !dbg !6847
  %init_tfm21 = getelementptr inbounds %struct.ahash_alg, ptr %42, i32 0, i32 8, !dbg !6848
  %43 = load ptr, ptr %init_tfm21, align 8, !dbg !6848
  %44 = load ptr, ptr %hash, align 8, !dbg !6849
  %call22 = call i32 %43(ptr noundef %44) #15, !dbg !6847
  br label %cond.end24, !dbg !6845

cond.false23:                                     ; preds = %if.end18
  br label %cond.end24, !dbg !6845

cond.end24:                                       ; preds = %cond.false23, %cond.true20
  %cond25 = phi i32 [ %call22, %cond.true20 ], [ 0, %cond.false23 ], !dbg !6845
  store i32 %cond25, ptr %retval, align 4, !dbg !6850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6850

cleanup:                                          ; preds = %cond.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #14, !dbg !6851
  %45 = load i32, ptr %retval, align 4, !dbg !6851
  ret i32 %45, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_show(ptr noundef %m, ptr noundef %alg) #0 align 16 !dbg !6852 {
entry:
  %m.addr = alloca ptr, align 8
  %alg.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6854, metadata !DIExpression()), !dbg !6856
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6855, metadata !DIExpression()), !dbg !6857
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6858
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.3) #15, !dbg !6859
  %1 = load ptr, ptr %m.addr, align 8, !dbg !6860
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !6861
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 2, !dbg !6862
  %3 = load i32, ptr %cra_flags, align 8, !dbg !6862
  %and = and i32 %3, 128, !dbg !6863
  %tobool = icmp ne i32 %and, 0, !dbg !6861
  %4 = zext i1 %tobool to i64, !dbg !6861
  %cond = select i1 %tobool, ptr @.str.5, ptr @.str.6, !dbg !6861
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %cond) #15, !dbg !6864
  %5 = load ptr, ptr %m.addr, align 8, !dbg !6865
  %6 = load ptr, ptr %alg.addr, align 8, !dbg !6866
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3, !dbg !6867
  %7 = load i32, ptr %cra_blocksize, align 4, !dbg !6867
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.7, i32 noundef %7) #15, !dbg !6868
  %8 = load ptr, ptr %m.addr, align 8, !dbg !6869
  %9 = load ptr, ptr %alg.addr, align 8, !dbg !6870
  %call = call ptr @__crypto_hash_alg_common(ptr noundef %9) #15, !dbg !6871
  %digestsize = getelementptr inbounds %struct.hash_alg_common, ptr %call, i32 0, i32 0, !dbg !6872
  %10 = load i32, ptr %digestsize, align 8, !dbg !6872
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef @.str.8, i32 noundef %10) #15, !dbg !6873
  ret void, !dbg !6874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_free_instance(ptr noundef %inst) #0 align 16 !dbg !6875 {
entry:
  %inst.addr = alloca ptr, align 8
  %ahash = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !6877, metadata !DIExpression()), !dbg !6879
  call void @llvm.lifetime.start.p0(i64 8, ptr %ahash) #14, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %ahash, metadata !6878, metadata !DIExpression()), !dbg !6881
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !6882
  %call = call ptr @ahash_instance(ptr noundef %0) #15, !dbg !6883
  store ptr %call, ptr %ahash, align 8, !dbg !6881
  %1 = load ptr, ptr %ahash, align 8, !dbg !6884
  %free = getelementptr inbounds %struct.ahash_instance, ptr %1, i32 0, i32 0, !dbg !6885
  %2 = load ptr, ptr %free, align 8, !dbg !6885
  %3 = load ptr, ptr %ahash, align 8, !dbg !6886
  call void %2(ptr noundef %3) #15, !dbg !6884
  call void @llvm.lifetime.end.p0(i64 8, ptr %ahash) #14, !dbg !6887
  ret void, !dbg !6887
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6888 dso_local i32 @crypto_alg_extsize(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_set_statesize(ptr noundef %tfm, i32 noundef %size) #3 align 16 !dbg !6889 {
entry:
  %tfm.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6893, metadata !DIExpression()), !dbg !6895
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6894, metadata !DIExpression()), !dbg !6896
  %0 = load i32, ptr %size.addr, align 4, !dbg !6897
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !6898
  %statesize = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 8, !dbg !6899
  store i32 %0, ptr %statesize, align 8, !dbg !6900
  ret void, !dbg !6901
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6902 dso_local i32 @crypto_init_shash_ops_async(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_def_finup(ptr noundef %req) #0 align 16 !dbg !6903 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6905, metadata !DIExpression()), !dbg !6908
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #14, !dbg !6909
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6906, metadata !DIExpression()), !dbg !6910
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6911
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %0) #15, !dbg !6912
  store ptr %call, ptr %tfm, align 8, !dbg !6910
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6907, metadata !DIExpression()), !dbg !6914
  %1 = load ptr, ptr %req.addr, align 8, !dbg !6915
  %call1 = call i32 @ahash_save_req(ptr noundef %1, ptr noundef @ahash_def_finup_done1, i1 noundef zeroext true) #15, !dbg !6916
  store i32 %call1, ptr %err, align 4, !dbg !6917
  %2 = load i32, ptr %err, align 4, !dbg !6918
  %tobool = icmp ne i32 %2, 0, !dbg !6918
  br i1 %tobool, label %if.then, label %if.end, !dbg !6920

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !6921
  store i32 %3, ptr %retval, align 4, !dbg !6922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6922

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tfm, align 8, !dbg !6923
  %update = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 1, !dbg !6924
  %5 = load ptr, ptr %update, align 8, !dbg !6924
  %6 = load ptr, ptr %req.addr, align 8, !dbg !6925
  %priv = getelementptr inbounds %struct.ahash_request, ptr %6, i32 0, i32 4, !dbg !6926
  %7 = load ptr, ptr %priv, align 8, !dbg !6926
  %call2 = call i32 %5(ptr noundef %7) #15, !dbg !6923
  store i32 %call2, ptr %err, align 4, !dbg !6927
  %8 = load i32, ptr %err, align 4, !dbg !6928
  %cmp = icmp eq i32 %8, -115, !dbg !6930
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !6931

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, ptr %err, align 4, !dbg !6932
  %cmp3 = icmp eq i32 %9, -16, !dbg !6933
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6934

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i32, ptr %err, align 4, !dbg !6935
  store i32 %10, ptr %retval, align 4, !dbg !6936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6936

if.end5:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %req.addr, align 8, !dbg !6937
  %12 = load i32, ptr %err, align 4, !dbg !6938
  %call6 = call i32 @ahash_def_finup_finish1(ptr noundef %11, i32 noundef %12) #15, !dbg !6939
  store i32 %call6, ptr %retval, align 4, !dbg !6940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6940

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #14, !dbg !6941
  %13 = load i32, ptr %retval, align 4, !dbg !6941
  ret i32 %13, !dbg !6941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_ahash_exit_tfm(ptr noundef %tfm) #0 align 16 !dbg !6942 {
entry:
  %tfm.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %alg = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !6944, metadata !DIExpression()), !dbg !6947
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #14, !dbg !6948
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !6945, metadata !DIExpression()), !dbg !6949
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !6950
  %call = call ptr @__crypto_ahash_cast(ptr noundef %0) #15, !dbg !6951
  store ptr %call, ptr %hash, align 8, !dbg !6949
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #14, !dbg !6952
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !6946, metadata !DIExpression()), !dbg !6953
  %1 = load ptr, ptr %hash, align 8, !dbg !6954
  %call1 = call ptr @crypto_ahash_alg(ptr noundef %1) #15, !dbg !6955
  store ptr %call1, ptr %alg, align 8, !dbg !6953
  %2 = load ptr, ptr %alg, align 8, !dbg !6956
  %exit_tfm = getelementptr inbounds %struct.ahash_alg, ptr %2, i32 0, i32 9, !dbg !6957
  %3 = load ptr, ptr %exit_tfm, align 8, !dbg !6957
  %4 = load ptr, ptr %hash, align 8, !dbg !6958
  call void %3(ptr noundef %4) #15, !dbg !6956
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #14, !dbg !6959
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #14, !dbg !6959
  ret void, !dbg !6959
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_def_finup_done1(ptr noundef %data, i32 noundef %err) #0 align 16 !dbg !6960 {
entry:
  %data.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %areq = alloca ptr, align 8
  %subreq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6962, metadata !DIExpression()), !dbg !6967
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6963, metadata !DIExpression()), !dbg !6968
  call void @llvm.lifetime.start.p0(i64 8, ptr %areq) #14, !dbg !6969
  call void @llvm.dbg.declare(metadata ptr %areq, metadata !6964, metadata !DIExpression()), !dbg !6970
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6971
  store ptr %0, ptr %areq, align 8, !dbg !6970
  call void @llvm.lifetime.start.p0(i64 8, ptr %subreq) #14, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %subreq, metadata !6965, metadata !DIExpression()), !dbg !6973
  %1 = load i32, ptr %err.addr, align 4, !dbg !6974
  %cmp = icmp eq i32 %1, -115, !dbg !6976
  br i1 %cmp, label %if.then, label %if.end, !dbg !6977

if.then:                                          ; preds = %entry
  br label %out, !dbg !6978

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %areq, align 8, !dbg !6979
  %priv = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 4, !dbg !6980
  %3 = load ptr, ptr %priv, align 8, !dbg !6980
  store ptr %3, ptr %subreq, align 8, !dbg !6981
  %4 = load ptr, ptr %subreq, align 8, !dbg !6982
  %base = getelementptr inbounds %struct.ahash_request, ptr %4, i32 0, i32 0, !dbg !6983
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 4, !dbg !6984
  %5 = load i32, ptr %flags, align 8, !dbg !6985
  %and = and i32 %5, 1024, !dbg !6985
  store i32 %and, ptr %flags, align 8, !dbg !6985
  %6 = load ptr, ptr %areq, align 8, !dbg !6986
  %7 = load i32, ptr %err.addr, align 4, !dbg !6987
  %call = call i32 @ahash_def_finup_finish1(ptr noundef %6, i32 noundef %7) #15, !dbg !6988
  store i32 %call, ptr %err.addr, align 4, !dbg !6989
  %8 = load i32, ptr %err.addr, align 4, !dbg !6990
  %cmp1 = icmp eq i32 %8, -115, !dbg !6992
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !6993

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, ptr %err.addr, align 4, !dbg !6994
  %cmp2 = icmp eq i32 %9, -16, !dbg !6995
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6996

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6997

if.end4:                                          ; preds = %lor.lhs.false
  br label %out, !dbg !6998

out:                                              ; preds = %if.end4, %if.then
  call void @llvm.dbg.label(metadata !6966), !dbg !6999
  %10 = load ptr, ptr %areq, align 8, !dbg !7000
  %11 = load i32, ptr %err.addr, align 4, !dbg !7001
  call void @ahash_request_complete(ptr noundef %10, i32 noundef %11) #15, !dbg !7002
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7003
  br label %cleanup, !dbg !7003

cleanup:                                          ; preds = %out, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %subreq) #14, !dbg !7003
  call void @llvm.lifetime.end.p0(i64 8, ptr %areq) #14, !dbg !7003
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7003

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ahash_def_finup_finish1(ptr noundef %req, i32 noundef %err) #0 align 16 !dbg !7004 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %subreq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !7008, metadata !DIExpression()), !dbg !7012
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !7009, metadata !DIExpression()), !dbg !7013
  call void @llvm.lifetime.start.p0(i64 8, ptr %subreq) #14, !dbg !7014
  call void @llvm.dbg.declare(metadata ptr %subreq, metadata !7010, metadata !DIExpression()), !dbg !7015
  %0 = load ptr, ptr %req.addr, align 8, !dbg !7016
  %priv = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 4, !dbg !7017
  %1 = load ptr, ptr %priv, align 8, !dbg !7017
  store ptr %1, ptr %subreq, align 8, !dbg !7015
  %2 = load i32, ptr %err.addr, align 4, !dbg !7018
  %tobool = icmp ne i32 %2, 0, !dbg !7018
  br i1 %tobool, label %if.then, label %if.end, !dbg !7020

if.then:                                          ; preds = %entry
  br label %out, !dbg !7021

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %subreq, align 8, !dbg !7022
  %base = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 0, !dbg !7023
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 1, !dbg !7024
  store ptr @ahash_def_finup_done2, ptr %complete, align 8, !dbg !7025
  %4 = load ptr, ptr %req.addr, align 8, !dbg !7026
  %call = call ptr @crypto_ahash_reqtfm(ptr noundef %4) #15, !dbg !7027
  %final = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 2, !dbg !7028
  %5 = load ptr, ptr %final, align 8, !dbg !7028
  %6 = load ptr, ptr %subreq, align 8, !dbg !7029
  %call1 = call i32 %5(ptr noundef %6) #15, !dbg !7027
  store i32 %call1, ptr %err.addr, align 4, !dbg !7030
  %7 = load i32, ptr %err.addr, align 4, !dbg !7031
  %cmp = icmp eq i32 %7, -115, !dbg !7033
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !7034

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, ptr %err.addr, align 4, !dbg !7035
  %cmp2 = icmp eq i32 %8, -16, !dbg !7036
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !7037

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i32, ptr %err.addr, align 4, !dbg !7038
  store i32 %9, ptr %retval, align 4, !dbg !7039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7039

if.end4:                                          ; preds = %lor.lhs.false
  br label %out, !dbg !7040

out:                                              ; preds = %if.end4, %if.then
  call void @llvm.dbg.label(metadata !7011), !dbg !7041
  %10 = load ptr, ptr %req.addr, align 8, !dbg !7042
  %11 = load i32, ptr %err.addr, align 4, !dbg !7043
  call void @ahash_restore_req(ptr noundef %10, i32 noundef %11) #15, !dbg !7044
  %12 = load i32, ptr %err.addr, align 4, !dbg !7045
  store i32 %12, ptr %retval, align 4, !dbg !7046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7046

cleanup:                                          ; preds = %out, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %subreq) #14, !dbg !7047
  %13 = load i32, ptr %retval, align 4, !dbg !7047
  ret i32 %13, !dbg !7047
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ahash_def_finup_done2(ptr noundef %data, i32 noundef %err) #0 align 16 !dbg !7048 {
entry:
  %data.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %areq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7050, metadata !DIExpression()), !dbg !7053
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !7051, metadata !DIExpression()), !dbg !7054
  call void @llvm.lifetime.start.p0(i64 8, ptr %areq) #14, !dbg !7055
  call void @llvm.dbg.declare(metadata ptr %areq, metadata !7052, metadata !DIExpression()), !dbg !7056
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7057
  store ptr %0, ptr %areq, align 8, !dbg !7056
  %1 = load i32, ptr %err.addr, align 4, !dbg !7058
  %cmp = icmp eq i32 %1, -115, !dbg !7060
  br i1 %cmp, label %if.then, label %if.end, !dbg !7061

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7062

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %areq, align 8, !dbg !7063
  %3 = load i32, ptr %err.addr, align 4, !dbg !7064
  call void @ahash_restore_req(ptr noundef %2, i32 noundef %3) #15, !dbg !7065
  %4 = load ptr, ptr %areq, align 8, !dbg !7066
  %5 = load i32, ptr %err.addr, align 4, !dbg !7067
  call void @ahash_request_complete(ptr noundef %4, i32 noundef %5) #15, !dbg !7068
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7069
  br label %cleanup, !dbg !7069

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %areq) #14, !dbg !7069
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7069

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7070 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ahash_instance(ptr noundef %inst) #3 align 16 !dbg !7073 {
entry:
  %inst.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inst, ptr %inst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inst.addr, metadata !7077, metadata !DIExpression()), !dbg !7080
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !7081
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7078, metadata !DIExpression()), !dbg !7081
  %0 = load ptr, ptr %inst.addr, align 8, !dbg !7081
  store ptr %0, ptr %__mptr, align 8, !dbg !7081
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7081
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !7081
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !7082
  %2 = load ptr, ptr %tmp, align 8, !dbg !7081
  ret ptr %2, !dbg !7083
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7084 dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #3 align 16 !dbg !7087 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7092, metadata !DIExpression()), !dbg !7093
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7094
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #15, !dbg !7095
  ret i1 %call, !dbg !7096
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7097 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7101, metadata !DIExpression()), !dbg !7103
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7102, metadata !DIExpression()), !dbg !7104
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7105
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7106
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !7107
  ret i1 %call, !dbg !7108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7109 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7113, metadata !DIExpression()), !dbg !7117
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7114, metadata !DIExpression()), !dbg !7118
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7115, metadata !DIExpression()), !dbg !7119
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !7120
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7116, metadata !DIExpression()), !dbg !7121
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7122
  %call = call i32 @refcount_read(ptr noundef %0) #15, !dbg !7123
  store i32 %call, ptr %old, align 4, !dbg !7121
  br label %do.body, !dbg !7124

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !7125
  %tobool = icmp ne i32 %1, 0, !dbg !7125
  br i1 %tobool, label %if.end, label %if.then, !dbg !7128

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !7129

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !7130

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !7131
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !7132
  %3 = load i32, ptr %old, align 4, !dbg !7133
  %4 = load i32, ptr %i.addr, align 4, !dbg !7134
  %add = add i32 %3, %4, !dbg !7135
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #15, !dbg !7136
  %lnot = xor i1 %call1, true, !dbg !7137
  br i1 %lnot, label %do.body, label %do.end, !dbg !7130, !llvm.loop !7138

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !7140
  %tobool2 = icmp ne ptr %5, null, !dbg !7140
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7142

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !7143
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !7144
  store i32 %6, ptr %7, align 4, !dbg !7145
  br label %if.end4, !dbg !7146

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !7147
  %cmp = icmp slt i32 %8, 0, !dbg !7147
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7147

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !7147
  %10 = load i32, ptr %i.addr, align 4, !dbg !7147
  %add5 = add i32 %9, %10, !dbg !7147
  %cmp6 = icmp slt i32 %add5, 0, !dbg !7147
  br label %lor.end, !dbg !7147

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !7147
  %lnot8 = xor i1 %lnot7, true, !dbg !7147
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !7147
  %conv = sext i32 %lnot.ext to i64, !dbg !7147
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7147
  %tobool9 = icmp ne i64 %expval, 0, !dbg !7147
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !7149

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !7150
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #15, !dbg !7151
  br label %if.end11, !dbg !7151

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !7152
  %tobool12 = icmp ne i32 %13, 0, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !7153
  ret i1 %tobool12, !dbg !7154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #3 align 16 !dbg !7155 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7161, metadata !DIExpression()), !dbg !7162
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7163
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !7164
  %call = call i32 @atomic_read(ptr noundef %refs) #15, !dbg !7165
  ret i32 %call, !dbg !7166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !7167 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7173, metadata !DIExpression()), !dbg !7176
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7174, metadata !DIExpression()), !dbg !7177
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7175, metadata !DIExpression()), !dbg !7178
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7179
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !7180
  %1 = load ptr, ptr %old.addr, align 8, !dbg !7181
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #15, !dbg !7182
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7183
  %3 = load ptr, ptr %old.addr, align 8, !dbg !7184
  %4 = load i32, ptr %new.addr, align 4, !dbg !7185
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #15, !dbg !7186
  ret i1 %call, !dbg !7187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7188 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !7191 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7197, metadata !DIExpression()), !dbg !7198
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7199
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #15, !dbg !7200
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7201
  %call = call i32 @raw_atomic_read(ptr noundef %1) #15, !dbg !7202
  ret i32 %call, !dbg !7203
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7204 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7212, metadata !DIExpression()), !dbg !7214
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7213, metadata !DIExpression()), !dbg !7215
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7216
  %1 = load i64, ptr %size.addr, align 8, !dbg !7217
  %conv = trunc i64 %1 to i32, !dbg !7217
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !7218
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7219
  %3 = load i64, ptr %size.addr, align 8, !dbg !7219
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !7219
  ret void, !dbg !7220
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !7221 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7224, metadata !DIExpression()), !dbg !7225
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7226
  %call = call i32 @arch_atomic_read(ptr noundef %0) #15, !dbg !7227
  ret i32 %call, !dbg !7228
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7229 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7234, metadata !DIExpression()), !dbg !7236
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7235, metadata !DIExpression()), !dbg !7237
  ret i1 true, !dbg !7238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7239 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7244, metadata !DIExpression()), !dbg !7247
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7245, metadata !DIExpression()), !dbg !7248
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7246, metadata !DIExpression()), !dbg !7249
  ret void, !dbg !7250
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !7251 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7254, metadata !DIExpression()), !dbg !7255
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7256
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7256
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7256
  ret i32 %1, !dbg !7257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7258 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7260, metadata !DIExpression()), !dbg !7262
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7261, metadata !DIExpression()), !dbg !7263
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7264
  %1 = load i64, ptr %size.addr, align 8, !dbg !7265
  %conv = trunc i64 %1 to i32, !dbg !7265
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !7266
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7267
  %3 = load i64, ptr %size.addr, align 8, !dbg !7267
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !7267
  ret void, !dbg !7268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !7269 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7271, metadata !DIExpression()), !dbg !7274
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7272, metadata !DIExpression()), !dbg !7275
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7273, metadata !DIExpression()), !dbg !7276
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7277
  %1 = load ptr, ptr %old.addr, align 8, !dbg !7278
  %2 = load i32, ptr %new.addr, align 4, !dbg !7279
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15, !dbg !7280
  ret i1 %call, !dbg !7281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7282 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7284, metadata !DIExpression()), !dbg !7286
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7285, metadata !DIExpression()), !dbg !7287
  ret i1 true, !dbg !7288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !7289 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7291, metadata !DIExpression()), !dbg !7300
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7292, metadata !DIExpression()), !dbg !7301
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7293, metadata !DIExpression()), !dbg !7302
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #14, !dbg !7303
  call void @llvm.dbg.declare(metadata ptr %success, metadata !7294, metadata !DIExpression()), !dbg !7303
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #14, !dbg !7303
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !7296, metadata !DIExpression()), !dbg !7303
  %0 = load ptr, ptr %old.addr, align 8, !dbg !7303
  store ptr %0, ptr %_old, align 8, !dbg !7303
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #14, !dbg !7303
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !7297, metadata !DIExpression()), !dbg !7303
  %1 = load ptr, ptr %_old, align 8, !dbg !7303
  %2 = load i32, ptr %1, align 4, !dbg !7303
  store i32 %2, ptr %__old, align 4, !dbg !7303
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #14, !dbg !7303
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !7298, metadata !DIExpression()), !dbg !7303
  %3 = load i32, ptr %new.addr, align 4, !dbg !7303
  store i32 %3, ptr %__new, align 4, !dbg !7303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !7303
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7299, metadata !DIExpression()), !dbg !7303
  %4 = load ptr, ptr %v.addr, align 8, !dbg !7303
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !7303
  store ptr %counter, ptr %__ptr, align 8, !dbg !7303
  %5 = load ptr, ptr %__ptr, align 8, !dbg !7303
  %6 = load i32, ptr %__old, align 4, !dbg !7303
  %7 = load i32, ptr %__new, align 4, !dbg !7303
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #14, !dbg !7303, !srcloc !7304
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !7303
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !7303
  %9 = icmp ult i8 %asmresult, 2, !dbg !7303
  call void @llvm.assume(i1 %9), !dbg !7303
  store i8 %asmresult, ptr %success, align 1, !dbg !7303
  store i32 %asmresult1, ptr %__old, align 4, !dbg !7303
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !7303
  %10 = load i8, ptr %success, align 1, !dbg !7305, !range !5341, !noundef !1042
  %tobool = trunc i8 %10 to i1, !dbg !7305
  %lnot = xor i1 %tobool, true, !dbg !7305
  %lnot2 = xor i1 %lnot, true, !dbg !7305
  %lnot3 = xor i1 %lnot2, true, !dbg !7305
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7305
  %conv = sext i32 %lnot.ext to i64, !dbg !7305
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7305
  %tobool4 = icmp ne i64 %expval, 0, !dbg !7305
  br i1 %tobool4, label %if.then, label %if.end, !dbg !7303

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !7305
  %12 = load ptr, ptr %_old, align 8, !dbg !7305
  store i32 %11, ptr %12, align 4, !dbg !7305
  br label %if.end, !dbg !7305

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !7303, !range !5341, !noundef !1042
  %tobool5 = trunc i8 %13 to i1, !dbg !7303
  %lnot6 = xor i1 %tobool5, true, !dbg !7303
  %lnot8 = xor i1 %lnot6, true, !dbg !7303
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !7303
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !7303
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !7303
  store i64 %expval11, ptr %tmp, align 8, !dbg !7305
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #14, !dbg !7307
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #14, !dbg !7307
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #14, !dbg !7307
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #14, !dbg !7307
  %14 = load i64, ptr %tmp, align 8, !dbg !7303
  %tobool12 = icmp ne i64 %14, 0, !dbg !7307
  ret i1 %tobool12, !dbg !7308
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7309 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7312 dso_local i32 @hash_prepare_alg(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @shash_no_setkey(ptr noundef, ptr noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816}
!llvm.ident = !{!4817}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_hash_walk_done344", scope: !2, file: !3, line: 110, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.ahash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/crypto_hash\22 -D KBUILD_BASENAME=\22ahash\22 -D KBUILD_MODNAME=\22crypto_hash\22 -D __KBUILD_MODNAME=kmod_crypto_hash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/ahash.ll crypto/ahash.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !4722, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/ahash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80598bf88a1bcd5e20124c58dc9e0e00")
!4 = !{!5, !13, !21, !37, !43, !48, !54, !59, !65, !72, !79, !87, !92, !102}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !22, line: 1325, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!24 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!25 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!26 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!27 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!28 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!29 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!30 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!31 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!32 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!33 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!34 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!35 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!36 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !38, line: 26, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !44, line: 2052, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!47 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !49, line: 54, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "USRQUOTA", value: 0)
!52 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!53 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !60, line: 16, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "TT_NONE", value: 0)
!63 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!64 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !66, line: 51, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!69 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!70 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!71 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !73, line: 15, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!76 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!77 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !80, line: 68, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!83 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!84 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!85 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!110 = !{!7, !111, !112, !113, !120, !4170, !962, !4548, !4602, !4608, !4651, !1768, !4654, !4656, !4657}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !114, line: 159, baseType: !115)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !116, line: 23, baseType: !117)
!116 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !118, line: 31, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!119 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !22, line: 74, size: 512, align: 128, elements: !122)
!122 = !{!123, !124, !4164, !4169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !22, line: 75, baseType: !112, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !22, line: 83, baseType: !125, size: 320, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !22, line: 83, size: 320, elements: !126)
!126 = !{!127, !4070, !4084, !4088, !4163}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !22, line: 84, baseType: !128, size: 320)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !22, line: 84, size: 320, elements: !129)
!129 = !{!130, !146, !4064, !4069}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !22, line: 90, baseType: !131, size: 128)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !22, line: 90, size: 128, elements: !132)
!132 = !{!133, !139, !144, !145}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !131, file: !22, line: 91, baseType: !134, size: 128)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 190, size: 128, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !114, line: 191, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !114, line: 191, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !22, line: 94, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !22, line: 94, size: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !140, file: !22, line: 96, baseType: !111, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !140, file: !22, line: 98, baseType: !7, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !131, file: !22, line: 102, baseType: !134, size: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !131, file: !22, line: 103, baseType: !134, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !128, file: !22, line: 106, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 472, size: 1536, align: 64, elements: !149)
!149 = !{!150, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !4058, !4059, !4060, !4061, !4062, !4063}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !148, file: !44, line: 473, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 641, size: 4800, elements: !153)
!153 = !{!154, !157, !158, !167, !168, !175, !176, !179, !180, !3837, !3838, !3839, !3840, !3841, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3881, !3884, !3885, !3886, !3895, !3896, !3897, !3898}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !152, file: !44, line: 642, baseType: !155, size: 16)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !114, line: 24, baseType: !156)
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !152, file: !44, line: 643, baseType: !156, size: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !152, file: !44, line: 644, baseType: !159, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !160, line: 23, baseType: !161)
!160 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 21, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !160, line: 22, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !114, line: 37, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !166, line: 49, baseType: !7)
!166 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !152, file: !44, line: 645, baseType: !134, size: 128, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !152, file: !44, line: 646, baseType: !169, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !160, line: 28, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 26, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !170, file: !160, line: 27, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !114, line: 38, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !166, line: 50, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !152, file: !44, line: 647, baseType: !7, size: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !152, file: !44, line: 650, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 607, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !152, file: !44, line: 651, baseType: !177, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !152, file: !44, line: 654, baseType: !181, size: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1966, size: 2048, align: 512, elements: !184)
!184 = !{!185, !3671, !3681, !3685, !3689, !3693, !3697, !3701, !3705, !3709, !3713, !3714, !3718, !3722, !3759, !3788, !3792, !3798, !3802, !3806, !3810, !3814, !3818, !3824, !3828}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !183, file: !44, line: 1967, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !151, !189, !7}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !191, line: 82, size: 1536, elements: !192)
!191 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!192 = !{!193, !194, !204, !212, !213, !231, !232, !236, !288, !3654, !3655, !3656, !3657, !3663, !3664, !3665}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !190, file: !191, line: 84, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !190, file: !191, line: 85, baseType: !195, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !196, line: 275, baseType: !197)
!196 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !196, line: 275, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !197, file: !196, line: 275, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !196, line: 69, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !196, line: 64, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !201, file: !196, line: 65, baseType: !7, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !190, file: !191, line: 86, baseType: !205, size: 128, offset: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !206, line: 38, size: 128, elements: !207)
!206 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !206, line: 39, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !205, file: !206, line: 39, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !190, file: !191, line: 87, baseType: !189, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !190, file: !191, line: 88, baseType: !214, size: 128, offset: 256)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !191, line: 49, size: 128, elements: !215)
!215 = !{!216, !227}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !191, line: 50, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !191, line: 50, size: 64, elements: !218)
!218 = !{!219, !226}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !191, line: 51, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !191, line: 51, size: 64, elements: !221)
!221 = !{!222, !225}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !220, file: !191, line: 52, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !116, line: 21, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !118, line: 27, baseType: !7)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !220, file: !191, line: 52, baseType: !223, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !217, file: !191, line: 54, baseType: !115, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !191, line: 56, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !190, file: !191, line: 89, baseType: !151, size: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !190, file: !191, line: 91, baseType: !233, size: 256, offset: 448)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !190, file: !191, line: 94, baseType: !237, size: 64, offset: 704)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !238, line: 25, size: 64, elements: !239)
!238 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !238, line: 26, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !238, line: 26, size: 64, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !241, file: !238, line: 28, baseType: !117, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !238, line: 30, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !238, line: 30, size: 64, elements: !246)
!246 = !{!247, !287}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !245, file: !238, line: 31, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !249, line: 29, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !249, line: 17, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !249, line: 18, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 18, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !253, file: !249, line: 19, baseType: !256, size: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !257, line: 14, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !256, file: !257, line: 15, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !261, line: 44, baseType: !262)
!261 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !261, line: 14, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !261, line: 15, baseType: !265, size: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !262, file: !261, line: 15, size: 32, elements: !266)
!266 = !{!267, !273, !280}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !265, file: !261, line: 16, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 174, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 172, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !269, file: !114, line: 173, baseType: !272, size: 32)
!272 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!273 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !261, line: 24, baseType: !274, size: 16)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !261, line: 24, size: 16, elements: !275)
!275 = !{!276, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !274, file: !261, line: 25, baseType: !277, size: 8)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !116, line: 17, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !118, line: 21, baseType: !230)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !274, file: !261, line: 26, baseType: !277, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !261, line: 28, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !261, line: 28, size: 32, elements: !282)
!282 = !{!283, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !281, file: !261, line: 29, baseType: !284, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !116, line: 19, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !118, line: 24, baseType: !156)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !281, file: !261, line: 30, baseType: !284, size: 16, offset: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !245, file: !238, line: 32, baseType: !272, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !190, file: !191, line: 95, baseType: !289, size: 64, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !191, line: 128, size: 1024, align: 512, elements: !292)
!292 = !{!293, !297, !298, !305, !314, !318, !322, !326, !327, !331, !336, !3644, !3648}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !291, file: !191, line: 129, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!272, !189, !7}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !291, file: !191, line: 130, baseType: !294, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !291, file: !191, line: 131, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!272, !302, !304}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !291, file: !191, line: 132, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!272, !302, !7, !309, !312}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !291, file: !191, line: 134, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!272, !302}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !291, file: !191, line: 135, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!272, !189}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !291, file: !191, line: 136, baseType: !323, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !189}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !291, file: !191, line: 137, baseType: !323, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !291, file: !191, line: 138, baseType: !328, size: 64, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !189, !151}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !291, file: !191, line: 139, baseType: !332, size: 64, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !189, !335, !272}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !291, file: !191, line: 140, baseType: !337, size: 64, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !3643}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !342, line: 70, size: 256, elements: !343)
!342 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!343 = !{!344, !345, !3639, !3640}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !341, file: !342, line: 71, baseType: !189, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !341, file: !342, line: 72, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1190, size: 10752, elements: !348)
!348 = !{!349, !350, !353, !354, !355, !359, !1988, !2122, !2162, !2247, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2264, !2268, !2269, !2272, !2275, !2278, !2281, !2282, !2283, !2324, !3572, !3573, !3574, !3575, !3576, !3577, !3580, !3582, !3589, !3590, !3591, !3592, !3593, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !347, file: !44, line: 1191, baseType: !134, size: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !347, file: !44, line: 1192, baseType: !351, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !114, line: 21, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !114, line: 18, baseType: !223)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !347, file: !44, line: 1193, baseType: !230, size: 8, offset: 160)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !347, file: !44, line: 1194, baseType: !112, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !347, file: !44, line: 1195, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !114, line: 52, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !166, line: 88, baseType: !358)
!358 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !347, file: !44, line: 1196, baseType: !360, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2366, size: 576, elements: !362)
!362 = !{!363, !364, !365, !371, !375, !379, !383, !1976, !1977, !1978, !1980, !1981, !1982, !1984, !1985, !1986, !1987}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !44, line: 2367, baseType: !309, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !361, file: !44, line: 2368, baseType: !272, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !361, file: !44, line: 2376, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!272, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !342, line: 21, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !361, file: !44, line: 2377, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 75, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !361, file: !44, line: 2378, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!189, !360, !272, !309, !111}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !361, file: !44, line: 2380, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !346}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !361, file: !44, line: 2381, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !386)
!386 = !{!387, !388, !389, !393, !1632, !1658, !1659, !1660, !1661, !1665, !1668, !1669, !1670, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1738, !1742, !1762, !1780, !1781, !1782, !1783, !1792, !1815, !1816, !1819, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1833, !1834, !1934, !1942, !1943, !1944, !1946, !1950, !1951, !1955, !1956, !1957, !1958, !1960, !1961, !1962, !1969, !1970, !1971, !1975}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !6, line: 403, baseType: !5, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !385, file: !6, line: 406, baseType: !134, size: 128, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !6, line: 409, baseType: !390, size: 448, offset: 192)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 448, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 56)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !385, file: !6, line: 417, baseType: !394, size: 768, offset: 640)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !395)
!395 = !{!396, !1615, !1616, !1617, !1620}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !394, file: !6, line: 46, baseType: !397, size: 512)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !398, line: 64, size: 512, elements: !399)
!398 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!399 = !{!400, !401, !402, !404, !450, !1510, !1605, !1610, !1611, !1612, !1613, !1614}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !398, line: 65, baseType: !309, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !397, file: !398, line: 66, baseType: !134, size: 128, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !397, file: !398, line: 67, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !397, file: !398, line: 68, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !398, line: 168, size: 768, elements: !407)
!407 = !{!408, !409, !410, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !406, file: !398, line: 169, baseType: !134, size: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !406, file: !398, line: 170, baseType: !248, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !406, file: !398, line: 171, baseType: !397, size: 512, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !406, file: !398, line: 172, baseType: !412, size: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !398, line: 133, size: 192, elements: !415)
!415 = !{!416, !423, !428}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !414, file: !398, line: 134, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!272, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !398, line: 135, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!309, !421}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !414, file: !398, line: 136, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!272, !421, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !398, line: 125, size: 20736, elements: !435)
!435 = !{!436, !440, !444, !445, !449}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !434, file: !398, line: 126, baseType: !437, size: 192)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 3)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !434, file: !398, line: 127, baseType: !441, size: 4096, offset: 192)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 4096, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !434, file: !398, line: 128, baseType: !272, size: 32, offset: 4288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !434, file: !398, line: 129, baseType: !446, size: 16384, offset: 4320)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16384, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 2048)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !434, file: !398, line: 130, baseType: !272, size: 32, offset: 20704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !397, file: !398, line: 69, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !398, line: 116, size: 384, elements: !454)
!454 = !{!455, !459, !485, !1469, !1500, !1504}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !453, file: !398, line: 117, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !403}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !453, file: !398, line: 118, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !463, line: 254, size: 128, elements: !464)
!463 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!464 = !{!465, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !462, file: !463, line: 255, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !403, !473, !335}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 66, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !166, line: 73, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !166, line: 15, baseType: !472)
!472 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !463, line: 30, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !463, line: 31, baseType: !309, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !474, file: !463, line: 32, baseType: !155, size: 16, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !462, file: !463, line: 256, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!469, !403, !473, !309, !482}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 61, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !166, line: 72, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !166, line: 16, baseType: !112)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !453, file: !398, line: 119, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !463, line: 84, size: 320, elements: !490)
!490 = !{!491, !492, !496, !1465, !1467}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !463, line: 85, baseType: !309, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !489, file: !463, line: 86, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!155, !403, !473, !272}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !489, file: !463, line: 88, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!155, !403, !500, !272}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !463, line: 175, size: 512, elements: !502)
!502 = !{!503, !504, !505, !506, !510, !1460, !1461}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !501, file: !463, line: 176, baseType: !474, size: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !501, file: !463, line: 177, baseType: !482, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !501, file: !463, line: 178, baseType: !111, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !501, file: !463, line: 179, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!147}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !501, file: !463, line: 180, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!469, !514, !403, !500, !335, !356, !482}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 994, size: 1856, align: 64, elements: !516)
!516 = !{!517, !536, !537, !539, !548, !561, !562, !563, !634, !846, !855, !861, !862, !1450, !1451, !1452, !1453, !1455, !1456, !1459}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !44, line: 995, baseType: !518, size: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !44, line: 995, size: 128, elements: !519)
!519 = !{!520, !526, !535}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !518, file: !44, line: 996, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !522, line: 60, size: 64, elements: !523)
!522 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !522, line: 61, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !518, file: !44, line: 997, baseType: !527, size: 128, align: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !114, line: 232, size: 128, align: 64, elements: !528)
!528 = !{!529, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !114, line: 233, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !527, file: !114, line: 234, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !530}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !518, file: !44, line: 998, baseType: !7, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !515, file: !44, line: 1005, baseType: !248, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !515, file: !44, line: 1006, baseType: !538, size: 32, offset: 160)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !114, line: 156, baseType: !7)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !515, file: !44, line: 1007, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !541, line: 13, baseType: !542)
!541 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 181, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 179, size: 64, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !543, file: !114, line: 180, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !116, line: 22, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !118, line: 30, baseType: !358)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !515, file: !44, line: 1008, baseType: !549, size: 256, offset: 256)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !550, line: 66, size: 256, elements: !551)
!550 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!551 = !{!552, !553, !555, !560}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !549, file: !550, line: 67, baseType: !540, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !549, file: !550, line: 68, baseType: !554, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !257, line: 23, baseType: !256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !549, file: !550, line: 70, baseType: !556, size: 32, offset: 96)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !557, line: 15, size: 32, elements: !558)
!557 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !556, file: !557, line: 20, baseType: !268, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !549, file: !550, line: 72, baseType: !134, size: 128, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !515, file: !44, line: 1009, baseType: !356, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !515, file: !44, line: 1010, baseType: !7, size: 32, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !515, file: !44, line: 1011, baseType: !564, size: 256, offset: 640)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 948, size: 256, elements: !565)
!565 = !{!566, !587, !630, !631, !632, !633}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !44, line: 949, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !568, line: 34, baseType: !569)
!568 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 25, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !569, file: !568, line: 26, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !573, line: 27, baseType: !574)
!573 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !573, line: 13, size: 64, elements: !575)
!575 = !{!576, !586}
!576 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !573, line: 14, baseType: !577, size: 32)
!577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !573, line: 14, size: 32, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !577, file: !573, line: 15, baseType: !268, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !573, line: 16, baseType: !581, size: 32)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !577, file: !573, line: 16, size: 32, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !581, file: !573, line: 18, baseType: !277, size: 8)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !581, file: !573, line: 19, baseType: !585, size: 24, offset: 8)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 24, elements: !438)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !574, file: !573, line: 26, baseType: !260, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !564, file: !44, line: 950, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !590)
!590 = !{!591, !596, !597, !598, !611, !612, !619, !620}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !589, file: !14, line: 61, baseType: !592, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !103, line: 113, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !103, line: 111, size: 32, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !593, file: !103, line: 112, baseType: !268, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !589, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !589, file: !14, line: 63, baseType: !248, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !589, file: !14, line: 65, baseType: !599, size: 256, offset: 128)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 256, elements: !609)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !114, line: 194, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !600, file: !114, line: 195, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !114, line: 198, size: 128, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !114, line: 199, baseType: !603, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !604, file: !114, line: 199, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!609 = !{!610}
!610 = !DISubrange(count: 4)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !589, file: !14, line: 66, baseType: !600, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !589, file: !14, line: 68, baseType: !613, size: 192, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !614, line: 41, baseType: !615)
!614 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !614, line: 37, size: 192, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !615, file: !614, line: 38, baseType: !248, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !615, file: !614, line: 39, baseType: !134, size: 128, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !589, file: !14, line: 69, baseType: !527, size: 128, align: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !589, file: !14, line: 70, baseType: !621, offset: 768)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, elements: !628)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !622, file: !14, line: 55, baseType: !272, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !622, file: !14, line: 56, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!628 = !{!629}
!629 = !DISubrange(count: -1)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !564, file: !44, line: 951, baseType: !13, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !564, file: !44, line: 952, baseType: !159, size: 32, offset: 160)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !564, file: !44, line: 952, baseType: !159, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !564, file: !44, line: 953, baseType: !272, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !515, file: !44, line: 1012, baseType: !635, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !638, line: 110, size: 1472, elements: !639)
!638 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !656, !657, !658, !659, !660, !661, !791, !792, !793, !794, !795, !826, !829, !833, !841}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !637, file: !638, line: 111, baseType: !540, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !637, file: !638, line: 112, baseType: !159, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !637, file: !638, line: 113, baseType: !169, size: 32, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !637, file: !638, line: 114, baseType: !159, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !637, file: !638, line: 115, baseType: !169, size: 32, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !637, file: !638, line: 116, baseType: !159, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !637, file: !638, line: 117, baseType: !169, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !637, file: !638, line: 118, baseType: !159, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !637, file: !638, line: 119, baseType: !169, size: 32, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !637, file: !638, line: 120, baseType: !7, size: 32, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !637, file: !638, line: 121, baseType: !651, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !652, line: 24, baseType: !653)
!652 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 24, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !653, file: !652, line: 24, baseType: !115, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !637, file: !638, line: 122, baseType: !651, size: 64, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !637, file: !638, line: 123, baseType: !651, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !637, file: !638, line: 124, baseType: !651, size: 64, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !637, file: !638, line: 125, baseType: !651, size: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !637, file: !638, line: 127, baseType: !230, size: 8, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !637, file: !638, line: 129, baseType: !662, size: 64, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !664, line: 195, size: 1728, elements: !665)
!664 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!665 = !{!666, !667, !672, !684, !693, !696, !697, !704, !705, !706, !707, !710, !711, !712, !714, !715, !755, !776}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !663, file: !664, line: 196, baseType: !592, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !663, file: !664, line: 197, baseType: !668, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !664, line: 28, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !114, line: 104, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !116, line: 20, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !118, line: 26, baseType: !272)
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !664, line: 198, baseType: !673, size: 192, offset: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !664, line: 198, size: 192, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !673, file: !664, line: 199, baseType: !134, size: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !673, file: !664, line: 200, baseType: !677, size: 192, align: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !678, line: 5, size: 192, align: 64, elements: !679)
!678 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!679 = !{!680, !681, !683}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !677, file: !678, line: 6, baseType: !112, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !677, file: !678, line: 7, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !677, file: !678, line: 8, baseType: !682, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !663, file: !664, line: 205, baseType: !685, size: 320, offset: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !686, line: 48, size: 320, elements: !687)
!686 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!687 = !{!688, !689, !690, !691, !692}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !685, file: !686, line: 49, baseType: !540, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !685, file: !686, line: 55, baseType: !540, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !685, file: !686, line: 57, baseType: !556, size: 32, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !685, file: !686, line: 59, baseType: !554, size: 32, offset: 160)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !685, file: !686, line: 60, baseType: !134, size: 128, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !663, file: !664, line: 206, baseType: !694, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !664, line: 206, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !663, file: !664, line: 207, baseType: !111, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !664, line: 208, baseType: !698, size: 64, offset: 704)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !664, line: 208, size: 64, elements: !699)
!699 = !{!700, !703}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !698, file: !664, line: 209, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !702, line: 8, baseType: !547)
!702 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !698, file: !664, line: 210, baseType: !701, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !663, file: !664, line: 212, baseType: !701, size: 64, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !663, file: !664, line: 213, baseType: !159, size: 32, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !663, file: !664, line: 214, baseType: !169, size: 32, offset: 864)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !663, file: !664, line: 215, baseType: !708, size: 32, offset: 896)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !664, line: 31, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 110, baseType: !223)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !663, file: !664, line: 216, baseType: !156, size: 16, offset: 928)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !663, file: !664, line: 217, baseType: !156, size: 16, offset: 944)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !663, file: !664, line: 221, baseType: !713, size: 16, offset: 960)
!713 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !664, line: 228, baseType: !112, size: 64, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !664, line: 245, baseType: !716, size: 320, offset: 1088)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !664, line: 245, size: 320, elements: !717)
!717 = !{!718, !747}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !716, file: !664, line: 246, baseType: !719, size: 320)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !664, line: 114, size: 320, elements: !720)
!720 = !{!721, !722, !734, !737, !746}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !719, file: !664, line: 116, baseType: !112, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !664, line: 117, baseType: !723, size: 64, offset: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !664, line: 117, size: 64, elements: !724)
!724 = !{!725, !733}
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !664, line: 118, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !664, line: 118, size: 64, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !726, file: !664, line: 120, baseType: !284, size: 16)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !726, file: !664, line: 121, baseType: !730, size: 48, offset: 16)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 48, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 6)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !723, file: !664, line: 127, baseType: !112, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !664, line: 129, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !664, line: 102, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !719, file: !664, line: 130, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !664, line: 108, size: 192, elements: !740)
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !739, file: !664, line: 109, baseType: !527, size: 128, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !739, file: !664, line: 110, baseType: !592, size: 32, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !739, file: !664, line: 111, baseType: !744, size: 8, offset: 160)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 35, baseType: !745)
!745 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !719, file: !664, line: 131, baseType: !309, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !664, line: 247, baseType: !748, size: 320)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !664, line: 247, size: 320, elements: !749)
!749 = !{!750, !751, !752, !753, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !748, file: !664, line: 248, baseType: !112, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !748, file: !664, line: 249, baseType: !112, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !664, line: 250, baseType: !735, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !748, file: !664, line: 251, baseType: !738, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !748, file: !664, line: 252, baseType: !335, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !664, line: 260, baseType: !756, size: 256, offset: 1408)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !664, line: 260, size: 256, elements: !757)
!757 = !{!758, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !756, file: !664, line: 261, baseType: !759, size: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !664, line: 134, size: 256, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !759, file: !664, line: 135, baseType: !111, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !759, file: !664, line: 136, baseType: !763, size: 256)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !609)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !664, line: 262, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !664, line: 262, size: 256, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !765, file: !664, line: 264, baseType: !134, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !765, file: !664, line: 265, baseType: !769, size: 128, offset: 128)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !770, line: 22, size: 128, elements: !771)
!770 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!771 = !{!772, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !769, file: !770, line: 23, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !770, line: 23, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !769, file: !770, line: 24, baseType: !112, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !663, file: !664, line: 280, baseType: !777, size: 64, offset: 1664)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !664, line: 176, size: 192, elements: !779)
!779 = !{!780, !789, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !778, file: !664, line: 177, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !664, line: 171, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!272, !662, !785, !787, !662}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !778, file: !664, line: 178, baseType: !662, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !778, file: !664, line: 179, baseType: !735, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !637, file: !638, line: 130, baseType: !662, size: 64, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !637, file: !638, line: 131, baseType: !662, size: 64, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !637, file: !638, line: 132, baseType: !662, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !637, file: !638, line: 135, baseType: !111, size: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !637, file: !638, line: 137, baseType: !796, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !798, line: 14, size: 1088, elements: !799)
!798 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!799 = !{!800, !801, !810, !811, !812, !813, !814, !815}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !797, file: !798, line: 15, baseType: !592, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !797, file: !798, line: 17, baseType: !802, size: 320, offset: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !803, line: 22, size: 320, elements: !804)
!803 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!804 = !{!805, !806, !807, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !803, line: 23, baseType: !554, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !802, file: !803, line: 24, baseType: !546, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !802, file: !803, line: 26, baseType: !134, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !802, file: !803, line: 28, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !797, file: !798, line: 19, baseType: !112, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !797, file: !798, line: 20, baseType: !540, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !797, file: !798, line: 23, baseType: !604, size: 128, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !797, file: !798, line: 24, baseType: !159, size: 32, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !797, file: !798, line: 29, baseType: !540, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !797, file: !798, line: 36, baseType: !816, size: 320, offset: 768)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !817, line: 15, size: 320, elements: !818)
!817 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!818 = !{!819, !820, !821, !822, !823, !824, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !817, line: 16, baseType: !554, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !816, file: !817, line: 18, baseType: !272, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !816, file: !817, line: 19, baseType: !272, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !816, file: !817, line: 20, baseType: !272, size: 32, offset: 96)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !816, file: !817, line: 21, baseType: !272, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !816, file: !817, line: 22, baseType: !112, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !817, line: 23, baseType: !112, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !637, file: !638, line: 138, baseType: !827, size: 64, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !22, line: 901, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !637, file: !638, line: 139, baseType: !830, size: 64, offset: 1216)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !832, line: 16, flags: DIFlagFwdDecl)
!832 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !637, file: !638, line: 140, baseType: !834, size: 64, offset: 1280)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !638, line: 25, size: 64, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !835, file: !638, line: 26, baseType: !268, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !835, file: !638, line: 27, baseType: !272, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !835, file: !638, line: 28, baseType: !840, offset: 64)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, elements: !628)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !638, line: 142, baseType: !842, size: 128, offset: 1344)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !638, line: 142, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !842, file: !638, line: 143, baseType: !272, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !842, file: !638, line: 144, baseType: !527, size: 128, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !515, file: !44, line: 1013, baseType: !847, size: 256, offset: 960)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 970, size: 256, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !847, file: !44, line: 971, baseType: !112, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !847, file: !44, line: 972, baseType: !7, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !847, file: !44, line: 973, baseType: !7, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !847, file: !44, line: 974, baseType: !7, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !847, file: !44, line: 975, baseType: !7, size: 32, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !847, file: !44, line: 976, baseType: !356, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !515, file: !44, line: 1014, baseType: !856, size: 128, offset: 1216)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !857, line: 8, size: 128, elements: !858)
!857 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !856, file: !857, line: 9, baseType: !340, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !856, file: !857, line: 10, baseType: !189, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !515, file: !44, line: 1015, baseType: !151, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !515, file: !44, line: 1016, baseType: !863, size: 64, offset: 1408)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1914, size: 2112, elements: !866)
!866 = !{!867, !868, !872, !877, !881, !971, !972, !978, !991, !999, !1003, !1004, !1333, !1334, !1338, !1343, !1344, !1348, !1352, !1358, !1359, !1363, !1364, !1371, !1375, !1379, !1385, !1389, !1431, !1435, !1439, !1440, !1446}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !865, file: !44, line: 1915, baseType: !384, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !865, file: !44, line: 1916, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!356, !514, !356, !272}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !865, file: !44, line: 1917, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!469, !514, !335, !482, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !865, file: !44, line: 1918, baseType: !878, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!469, !514, !309, !482, !876}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !865, file: !44, line: 1919, baseType: !882, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!469, !885, !907}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 373, size: 384, elements: !887)
!887 = !{!888, !889, !890, !894, !895, !896, !897}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !886, file: !44, line: 374, baseType: !514, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !886, file: !44, line: 375, baseType: !356, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !886, file: !44, line: 376, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !885, !472}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !886, file: !44, line: 377, baseType: !111, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !886, file: !44, line: 378, baseType: !272, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !886, file: !44, line: 379, baseType: !284, size: 16, offset: 288)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !44, line: 380, baseType: !898, size: 64, offset: 320)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !44, line: 380, size: 64, elements: !899)
!899 = !{!900, !903}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !898, file: !44, line: 386, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 386, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !898, file: !44, line: 395, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!469, !111}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !909, line: 41, size: 320, elements: !910)
!909 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!910 = !{!911, !912, !913, !914, !915, !916, !921, !966}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !908, file: !909, line: 42, baseType: !277, size: 8)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !908, file: !909, line: 43, baseType: !744, size: 8, offset: 8)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !908, file: !909, line: 44, baseType: !744, size: 8, offset: 16)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !908, file: !909, line: 45, baseType: !744, size: 8, offset: 24)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !908, file: !909, line: 46, baseType: !744, size: 8, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !909, line: 47, baseType: !917, size: 64, offset: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !909, line: 47, size: 64, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !917, file: !909, line: 48, baseType: !482, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !917, file: !909, line: 49, baseType: !272, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !909, line: 61, baseType: !922, size: 128, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !909, line: 61, size: 128, elements: !923)
!923 = !{!924, !930}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !922, file: !909, line: 67, baseType: !925, size: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !926, line: 17, size: 128, elements: !927)
!926 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !925, file: !926, line: 19, baseType: !111, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !925, file: !926, line: 20, baseType: !483, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !909, line: 68, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !909, line: 68, size: 128, elements: !932)
!932 = !{!933, !965}
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !909, line: 69, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !909, line: 69, size: 64, elements: !935)
!935 = !{!936, !939, !946, !955, !964}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !934, file: !909, line: 71, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !934, file: !909, line: 72, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !909, line: 17, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !942, file: !909, line: 18, baseType: !111, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !942, file: !909, line: 19, baseType: !482, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !934, file: !909, line: 73, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !950, line: 31, size: 128, elements: !951)
!950 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !949, file: !950, line: 32, baseType: !120, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !949, file: !950, line: 33, baseType: !7, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !949, file: !950, line: 34, baseType: !7, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !934, file: !909, line: 74, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !958, line: 296, size: 128, elements: !959)
!958 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!959 = !{!960, !961, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !957, file: !958, line: 297, baseType: !248, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !957, file: !958, line: 299, baseType: !962, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !114, line: 154, baseType: !7)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !957, file: !958, line: 300, baseType: !111, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !934, file: !909, line: 75, baseType: !111, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !931, file: !909, line: 77, baseType: !482, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !909, line: 80, baseType: !967, size: 64, offset: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !909, line: 80, size: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !967, file: !909, line: 81, baseType: !112, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !967, file: !909, line: 82, baseType: !356, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !865, file: !44, line: 1920, baseType: !882, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !865, file: !44, line: 1921, baseType: !973, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!272, !885, !976, !7}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !44, line: 53, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !865, file: !44, line: 1923, baseType: !979, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!272, !514, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1858, size: 128, elements: !984)
!984 = !{!985, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !983, file: !44, line: 1859, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1855, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!744, !982, !309, !272, !356, !115, !7}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !983, file: !44, line: 1860, baseType: !356, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !865, file: !44, line: 1924, baseType: !992, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!995, !514, !997}
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !996, line: 59, baseType: !7)
!996 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !865, file: !44, line: 1925, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!472, !514, !7, !112}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !865, file: !44, line: 1926, baseType: !1000, size: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !865, file: !44, line: 1927, baseType: !1005, size: 64, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!272, !514, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !22, line: 625, size: 1344, elements: !1010)
!1010 = !{!1011, !1020, !1189, !1195, !1202, !1203, !1208, !1209, !1214, !1215, !1218, !1326, !1327, !1328, !1329, !1330, !1331}
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !22, line: 628, baseType: !1012, size: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !22, line: 628, size: 128, elements: !1013)
!1013 = !{!1014, !1019}
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !22, line: 629, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !22, line: 629, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1015, file: !22, line: 631, baseType: !112, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1015, file: !22, line: 632, baseType: !112, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1012, file: !22, line: 635, baseType: !527, size: 128, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1009, file: !22, line: 639, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !22, line: 733, size: 10240, elements: !1023)
!1023 = !{!1024, !1187}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !22, line: 734, baseType: !1025, size: 10240)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !22, line: 734, size: 10240, elements: !1026)
!1026 = !{!1027, !1031, !1045, !1049, !1050, !1051, !1052, !1053, !1054, !1063, !1064, !1065, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1104, !1106, !1109, !1156, !1157, !1158, !1161, !1162, !1163, !1166, !1167, !1168, !1174, !1175}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !22, line: 739, baseType: !1028, size: 512, align: 512)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !22, line: 739, size: 512, align: 512, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1028, file: !22, line: 747, baseType: !268, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1025, file: !22, line: 750, baseType: !1032, size: 128, offset: 512)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1033, line: 218, size: 128, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1034 = !{!1035, !1043, !1044}
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !1033, line: 219, baseType: !1036, size: 32)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !1033, line: 219, size: 32, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1036, file: !1033, line: 220, baseType: !248, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1036, file: !1033, line: 221, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1033, line: 197, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1033, line: 197, elements: !1042)
!1042 = !{}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1032, file: !1033, line: 223, baseType: !7, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1032, file: !1033, line: 224, baseType: !111, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1025, file: !22, line: 752, baseType: !1046, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!112, !514, !112, !112, !112, !112}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1025, file: !22, line: 756, baseType: !112, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1025, file: !22, line: 757, baseType: !112, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1025, file: !22, line: 760, baseType: !112, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1025, file: !22, line: 761, baseType: !112, size: 64, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1025, file: !22, line: 763, baseType: !112, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1025, file: !22, line: 764, baseType: !1055, size: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1057, line: 299, baseType: !1058)
!1057 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 299, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1058, file: !1057, line: 299, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1062, line: 18, baseType: !112)
!1062 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1025, file: !22, line: 773, baseType: !268, size: 32, offset: 1088)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1025, file: !22, line: 785, baseType: !268, size: 32, offset: 1120)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1025, file: !22, line: 795, baseType: !1066, size: 64, offset: 1152)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !22, line: 726, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1067, file: !22, line: 727, baseType: !115, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1067, file: !22, line: 728, baseType: !272, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1025, file: !22, line: 801, baseType: !112, size: 64, offset: 1216)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1025, file: !22, line: 804, baseType: !540, size: 64, offset: 1280)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1025, file: !22, line: 806, baseType: !272, size: 32, offset: 1344)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1025, file: !22, line: 808, baseType: !248, size: 32, offset: 1376)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1025, file: !22, line: 823, baseType: !685, size: 320, offset: 1408)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1025, file: !22, line: 825, baseType: !134, size: 128, offset: 1728)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1025, file: !22, line: 845, baseType: !272, size: 32, offset: 1856)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1025, file: !22, line: 849, baseType: !112, size: 64, offset: 1920)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1025, file: !22, line: 850, baseType: !112, size: 64, offset: 1984)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1025, file: !22, line: 852, baseType: !112, size: 64, offset: 2048)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1025, file: !22, line: 853, baseType: !112, size: 64, offset: 2112)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1025, file: !22, line: 854, baseType: !542, size: 64, offset: 2176)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1025, file: !22, line: 855, baseType: !112, size: 64, offset: 2240)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1025, file: !22, line: 856, baseType: !112, size: 64, offset: 2304)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1025, file: !22, line: 857, baseType: !112, size: 64, offset: 2368)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1025, file: !22, line: 858, baseType: !112, size: 64, offset: 2432)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1025, file: !22, line: 865, baseType: !200, size: 32, offset: 2496)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1025, file: !22, line: 867, baseType: !248, size: 32, offset: 2528)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1025, file: !22, line: 869, baseType: !112, size: 64, offset: 2560)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1025, file: !22, line: 869, baseType: !112, size: 64, offset: 2624)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1025, file: !22, line: 869, baseType: !112, size: 64, offset: 2688)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1025, file: !22, line: 869, baseType: !112, size: 64, offset: 2752)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1025, file: !22, line: 870, baseType: !112, size: 64, offset: 2816)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1025, file: !22, line: 870, baseType: !112, size: 64, offset: 2880)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1025, file: !22, line: 870, baseType: !112, size: 64, offset: 2944)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1025, file: !22, line: 871, baseType: !112, size: 64, offset: 3008)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1025, file: !22, line: 871, baseType: !112, size: 64, offset: 3072)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1025, file: !22, line: 871, baseType: !112, size: 64, offset: 3136)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1025, file: !22, line: 871, baseType: !112, size: 64, offset: 3200)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1025, file: !22, line: 873, baseType: !1101, size: 3328, offset: 3264)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 3328, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 52)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1025, file: !22, line: 875, baseType: !1105, size: 1280, offset: 6592)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 1280, elements: !609)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1025, file: !22, line: 877, baseType: !1107, size: 64, offset: 7872)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !22, line: 877, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1025, file: !22, line: 880, baseType: !1110, size: 1088, offset: 7936)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1111, line: 72, baseType: !1112)
!1111 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 23, size: 1088, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1121, !1122, !1123, !1124, !1151, !1152, !1153}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1112, file: !1111, line: 28, baseType: !115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1112, file: !1111, line: 38, baseType: !542, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1112, file: !1111, line: 40, baseType: !112, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1112, file: !1111, line: 43, baseType: !685, size: 320, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1112, file: !1111, line: 44, baseType: !1119, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1111, line: 44, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1112, file: !1111, line: 48, baseType: !112, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1112, file: !1111, line: 59, baseType: !549, size: 256, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1112, file: !1111, line: 60, baseType: !111, size: 64, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1112, file: !1111, line: 61, baseType: !1125, size: 64, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1128, line: 13, size: 1216, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1127, file: !1128, line: 14, baseType: !111, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1127, file: !1128, line: 15, baseType: !112, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1127, file: !1128, line: 17, baseType: !112, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1127, file: !1128, line: 17, baseType: !112, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1127, file: !1128, line: 18, baseType: !112, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1127, file: !1128, line: 18, baseType: !112, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1127, file: !1128, line: 19, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1127, file: !1128, line: 21, baseType: !472, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1127, file: !1128, line: 23, baseType: !472, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1127, file: !1128, line: 24, baseType: !472, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1127, file: !1128, line: 25, baseType: !472, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1127, file: !1128, line: 26, baseType: !472, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1127, file: !1128, line: 27, baseType: !472, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1127, file: !1128, line: 28, baseType: !472, size: 64, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1127, file: !1128, line: 29, baseType: !472, size: 64, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1127, file: !1128, line: 30, baseType: !472, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1127, file: !1128, line: 31, baseType: !472, size: 64, offset: 1024)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1127, file: !1128, line: 32, baseType: !472, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1127, file: !1128, line: 33, baseType: !472, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1112, file: !1111, line: 63, baseType: !268, size: 32, offset: 1024)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1112, file: !1111, line: 69, baseType: !284, size: 16, offset: 1056)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1112, file: !1111, line: 70, baseType: !1154, size: 16, offset: 1072)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !116, line: 18, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !118, line: 23, baseType: !713)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !22, line: 882, baseType: !112, size: 64, offset: 9024)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1025, file: !22, line: 885, baseType: !248, size: 32, offset: 9088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1025, file: !22, line: 886, baseType: !1159, size: 64, offset: 9152)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !22, line: 732, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1025, file: !22, line: 901, baseType: !827, size: 64, offset: 9216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1025, file: !22, line: 904, baseType: !514, size: 64, offset: 9280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1025, file: !22, line: 906, baseType: !1164, size: 64, offset: 9344)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !22, line: 906, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1025, file: !22, line: 930, baseType: !268, size: 32, offset: 9408)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1025, file: !22, line: 933, baseType: !268, size: 32, offset: 9440)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1025, file: !22, line: 935, baseType: !1169, size: 64, offset: 9472)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !66, line: 103, size: 64, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1169, file: !66, line: 104, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !66, line: 101, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1025, file: !22, line: 940, baseType: !540, size: 64, offset: 9536)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1025, file: !22, line: 942, baseType: !1176, size: 256, offset: 9600)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1177, line: 98, size: 256, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1176, file: !1177, line: 99, baseType: !540, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1176, file: !1177, line: 100, baseType: !134, size: 128, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1176, file: !1177, line: 101, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1177, line: 21, baseType: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1022, file: !22, line: 986, baseType: !1188, offset: 10240)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !628)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1009, file: !22, line: 640, baseType: !1190, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1057, line: 297, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1057, line: 297, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1191, file: !1057, line: 297, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1062, line: 19, baseType: !112)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !22, line: 646, baseType: !1196, size: 64, offset: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !22, line: 646, size: 64, elements: !1197)
!1197 = !{!1198, !1201}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1196, file: !22, line: 647, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !22, line: 542, baseType: !112)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1196, file: !22, line: 648, baseType: !1200, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1009, file: !22, line: 666, baseType: !272, size: 32, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1009, file: !22, line: 667, baseType: !1204, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !22, line: 579, size: 320, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1205, file: !22, line: 580, baseType: !685, size: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1009, file: !22, line: 670, baseType: !744, size: 8, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1009, file: !22, line: 681, baseType: !1210, size: 256, offset: 512)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !22, line: 678, size: 256, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1210, file: !22, line: 679, baseType: !677, size: 192, align: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1210, file: !22, line: 680, baseType: !112, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1009, file: !22, line: 689, baseType: !134, size: 128, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1009, file: !22, line: 691, baseType: !1216, size: 64, offset: 896)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !22, line: 691, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1009, file: !22, line: 694, baseType: !1219, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1222, line: 563, size: 1024, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1223 = !{!1224, !1228, !1229, !1233, !1237, !1241, !1290, !1294, !1298, !1302, !1303, !1304, !1308, !1312, !1318, !1322}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1221, file: !1222, line: 564, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1008}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1221, file: !1222, line: 569, baseType: !1225, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1221, file: !1222, line: 571, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!272, !1008, !112}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1221, file: !1222, line: 572, baseType: !1234, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!272, !1008}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1221, file: !1222, line: 578, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!272, !1008, !112, !112, !112}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1221, file: !1222, line: 580, baseType: !1242, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !22, line: 1184, baseType: !7)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1222, line: 512, size: 896, elements: !1248)
!1248 = !{!1249, !1257, !1258, !1265, !1272, !1282, !1283, !1284, !1286, !1288}
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !1222, line: 513, baseType: !1250, size: 320)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1247, file: !1222, line: 513, size: 320, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1250, file: !1222, line: 514, baseType: !1008, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1250, file: !1222, line: 515, baseType: !962, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1250, file: !1222, line: 516, baseType: !112, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1250, file: !1222, line: 517, baseType: !112, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1250, file: !1222, line: 518, baseType: !112, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !1222, line: 520, baseType: !21, size: 32, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1247, file: !1222, line: 522, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1062, line: 22, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 22, size: 64, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1261, file: !1062, line: 22, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1062, line: 15, baseType: !112)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1247, file: !1222, line: 524, baseType: !1266, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1057, line: 372, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 372, size: 64, elements: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1268, file: !1057, line: 372, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1062, line: 16, baseType: !112)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !1222, line: 527, baseType: !1273, size: 64, offset: 512)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !1222, line: 527, size: 64, elements: !1274)
!1274 = !{!1275, !1281}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1273, file: !1222, line: 528, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1062, line: 21, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 21, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1277, file: !1062, line: 21, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1062, line: 14, baseType: !112)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1273, file: !1222, line: 529, baseType: !1260, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1247, file: !1222, line: 534, baseType: !120, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1247, file: !1222, line: 535, baseType: !120, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1247, file: !1222, line: 541, baseType: !1285, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1247, file: !1222, line: 545, baseType: !1287, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1247, file: !1222, line: 549, baseType: !1289, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1057, line: 520, baseType: !120)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1221, file: !1222, line: 581, baseType: !1291, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1245, !1246, !7}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1221, file: !1222, line: 582, baseType: !1295, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1245, !1246, !112, !112}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1221, file: !1222, line: 584, baseType: !1299, size: 64, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!112, !1008}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1221, file: !1222, line: 588, baseType: !1242, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1221, file: !1222, line: 591, baseType: !1242, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1221, file: !1222, line: 597, baseType: !1305, size: 64, offset: 704)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!272, !1008, !112, !111, !272, !272}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1221, file: !1222, line: 603, baseType: !1309, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!309, !1008}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1221, file: !1222, line: 613, baseType: !1313, size: 64, offset: 832)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!272, !1008, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !22, line: 717, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1221, file: !1222, line: 625, baseType: !1319, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1316, !1008, !112}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1221, file: !1222, line: 633, baseType: !1323, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!120, !1008, !112}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1009, file: !22, line: 697, baseType: !112, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1009, file: !22, line: 699, baseType: !514, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1009, file: !22, line: 700, baseType: !111, size: 64, offset: 1152)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1009, file: !22, line: 711, baseType: !540, size: 64, offset: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1009, file: !22, line: 717, baseType: !1316, size: 64, offset: 1280)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1009, file: !22, line: 722, baseType: !1332, offset: 1344)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !22, line: 570, elements: !1042)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !865, file: !44, line: 1928, baseType: !112, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !865, file: !44, line: 1929, baseType: !1335, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!272, !151, !514}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !865, file: !44, line: 1930, baseType: !1339, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!272, !514, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1061, baseType: !111)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !865, file: !44, line: 1931, baseType: !1335, size: 64, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !865, file: !44, line: 1932, baseType: !1345, size: 64, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!272, !514, !356, !356, !272}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !865, file: !44, line: 1933, baseType: !1349, size: 64, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!272, !272, !514, !272}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !865, file: !44, line: 1934, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!272, !514, !272, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1063, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !865, file: !44, line: 1935, baseType: !1046, size: 64, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !865, file: !44, line: 1936, baseType: !1360, size: 64, offset: 1280)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!272, !272}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !865, file: !44, line: 1937, baseType: !1353, size: 64, offset: 1344)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !865, file: !44, line: 1938, baseType: !1365, size: 64, offset: 1408)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!469, !1368, !514, !876, !482, !7}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1370, line: 59, flags: DIFlagFwdDecl)
!1370 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !865, file: !44, line: 1939, baseType: !1372, size: 64, offset: 1472)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!469, !514, !876, !1368, !482, !7}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !865, file: !44, line: 1940, baseType: !1376, size: 64, offset: 1536)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !514}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !865, file: !44, line: 1941, baseType: !1380, size: 64, offset: 1600)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!272, !514, !272, !1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !865, file: !44, line: 1942, baseType: !1386, size: 64, offset: 1664)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!472, !514, !272, !356, !356}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !865, file: !44, line: 1944, baseType: !1390, size: 64, offset: 1728)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1393, !514}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1395, line: 17, size: 960, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1426, !1427, !1430}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1394, file: !1395, line: 18, baseType: !335, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1394, file: !1395, line: 19, baseType: !482, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1394, file: !1395, line: 20, baseType: !482, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1394, file: !1395, line: 21, baseType: !482, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1394, file: !1395, line: 22, baseType: !482, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1394, file: !1395, line: 23, baseType: !356, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1394, file: !1395, line: 24, baseType: !356, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1395, line: 25, baseType: !549, size: 256, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1394, file: !1395, line: 26, baseType: !1406, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1395, line: 32, size: 256, elements: !1409)
!1409 = !{!1410, !1414, !1418, !1422}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1408, file: !1395, line: 33, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!111, !1393, !876}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1408, file: !1395, line: 34, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1393, !111}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1408, file: !1395, line: 35, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!111, !1393, !111, !876}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1408, file: !1395, line: 36, baseType: !1423, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!272, !1393, !111}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1394, file: !1395, line: 27, baseType: !272, size: 32, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1394, file: !1395, line: 28, baseType: !1428, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1394, file: !1395, line: 29, baseType: !111, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !865, file: !44, line: 1948, baseType: !1432, size: 64, offset: 1792)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!469, !514, !356, !514, !356, !482, !7}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !865, file: !44, line: 1950, baseType: !1436, size: 64, offset: 1856)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!356, !514, !356, !514, !356, !356, !7}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !865, file: !44, line: 1953, baseType: !1345, size: 64, offset: 1920)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !865, file: !44, line: 1954, baseType: !1441, size: 64, offset: 1984)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!272, !1444, !7}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !44, line: 1911, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !865, file: !44, line: 1955, baseType: !1447, size: 64, offset: 2048)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!272, !1444, !976, !7}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !515, file: !44, line: 1018, baseType: !115, size: 64, offset: 1472)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !515, file: !44, line: 1020, baseType: !111, size: 64, offset: 1536)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !515, file: !44, line: 1023, baseType: !111, size: 64, offset: 1600)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !515, file: !44, line: 1027, baseType: !1454, size: 64, offset: 1664)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !515, file: !44, line: 1029, baseType: !147, size: 64, offset: 1728)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !515, file: !44, line: 1030, baseType: !1457, size: 32, offset: 1792)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1458, line: 8, baseType: !223)
!1458 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !515, file: !44, line: 1031, baseType: !1457, size: 32, offset: 1824)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !501, file: !463, line: 182, baseType: !511, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !501, file: !463, line: 184, baseType: !1462, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!272, !514, !403, !500, !1008}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !489, file: !463, line: 90, baseType: !1466, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !489, file: !463, line: 91, baseType: !1468, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !453, file: !398, line: 120, baseType: !1470, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !421}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !1476)
!1476 = !{!1477, !1478, !1482, !1486, !1492, !1496}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1475, file: !38, line: 40, baseType: !37, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1475, file: !38, line: 41, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!744}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1475, file: !38, line: 42, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!111}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1475, file: !38, line: 43, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1137, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1475, file: !38, line: 44, baseType: !1493, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1137}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1475, file: !38, line: 45, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !111}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !453, file: !398, line: 121, baseType: !1501, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1137, !421}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !453, file: !398, line: 122, baseType: !1505, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !421, !1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !397, file: !398, line: 70, baseType: !1511, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1513, line: 190, size: 1152, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1597, !1598, !1599, !1600, !1601, !1604}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1512, file: !1513, line: 191, baseType: !268, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1512, file: !1513, line: 192, baseType: !268, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1512, file: !1513, line: 202, baseType: !1511, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1512, file: !1513, line: 203, baseType: !309, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1512, file: !1513, line: 205, baseType: !677, size: 192, align: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1512, file: !1513, line: 207, baseType: !1137, size: 64, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1512, file: !1513, line: 208, baseType: !7, size: 32, offset: 448)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 209, baseType: !1523, size: 256, offset: 512)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 209, size: 256, elements: !1524)
!1524 = !{!1525, !1537, !1541}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1523, file: !1513, line: 210, baseType: !1526, size: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1513, line: 153, size: 256, elements: !1527)
!1527 = !{!1528, !1529, !1533, !1536}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1526, file: !1513, line: 154, baseType: !112, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1526, file: !1513, line: 156, baseType: !1530, size: 64, offset: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !678, line: 12, size: 64, elements: !1531)
!1531 = !{!1532}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1530, file: !678, line: 13, baseType: !682, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1526, file: !1513, line: 162, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1513, line: 162, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1526, file: !1513, line: 167, baseType: !112, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1523, file: !1513, line: 211, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1513, line: 170, size: 64, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1538, file: !1513, line: 171, baseType: !1511, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1523, file: !1513, line: 212, baseType: !1542, size: 256)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1513, line: 174, size: 256, elements: !1543)
!1543 = !{!1544, !1592, !1595, !1596}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1542, file: !1513, line: 175, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1513, line: 271, size: 768, elements: !1548)
!1548 = !{!1549, !1569, !1573, !1574, !1575, !1576, !1577, !1581, !1582, !1583, !1584, !1588}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1547, file: !1513, line: 276, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!272, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1513, line: 251, size: 1216, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1554, file: !1513, line: 253, baseType: !1511, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1554, file: !1513, line: 254, baseType: !514, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1554, file: !1513, line: 255, baseType: !1393, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1554, file: !1513, line: 256, baseType: !111, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1554, file: !1513, line: 259, baseType: !549, size: 256, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1554, file: !1513, line: 260, baseType: !549, size: 256, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1554, file: !1513, line: 261, baseType: !272, size: 32, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1554, file: !1513, line: 262, baseType: !134, size: 128, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1554, file: !1513, line: 263, baseType: !335, size: 64, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1554, file: !1513, line: 265, baseType: !482, size: 64, offset: 1024)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1554, file: !1513, line: 266, baseType: !744, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1554, file: !1513, line: 267, baseType: !744, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1554, file: !1513, line: 268, baseType: !1219, size: 64, offset: 1152)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1547, file: !1513, line: 277, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1553}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1547, file: !1513, line: 290, baseType: !1423, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1547, file: !1513, line: 292, baseType: !1411, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1547, file: !1513, line: 293, baseType: !1419, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1547, file: !1513, line: 294, baseType: !1415, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1547, file: !1513, line: 296, baseType: !1578, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!469, !1553, !335, !482, !356}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1547, file: !1513, line: 306, baseType: !482, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1547, file: !1513, line: 313, baseType: !744, size: 8, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1547, file: !1513, line: 314, baseType: !1578, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1547, file: !1513, line: 317, baseType: !1585, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!995, !1553, !997}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1547, file: !1513, line: 320, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!272, !1553, !1008}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1542, file: !1513, line: 176, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1513, line: 35, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1542, file: !1513, line: 177, baseType: !356, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1542, file: !1513, line: 178, baseType: !1511, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1512, file: !1513, line: 215, baseType: !111, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1512, file: !1513, line: 221, baseType: !115, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !1513, line: 223, baseType: !156, size: 16, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1512, file: !1513, line: 224, baseType: !155, size: 16, offset: 912)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1512, file: !1513, line: 225, baseType: !1602, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1513, line: 36, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1512, file: !1513, line: 227, baseType: !527, size: 128, align: 64, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !397, file: !398, line: 71, baseType: !1606, size: 32, offset: 448)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1607, line: 19, size: 32, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1606, file: !1607, line: 20, baseType: !592, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !397, file: !398, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !397, file: !398, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !397, file: !398, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !397, file: !398, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !397, file: !398, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !394, file: !6, line: 47, baseType: !384, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !394, file: !6, line: 48, baseType: !403, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !394, file: !6, line: 49, baseType: !1618, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !394, file: !6, line: 50, baseType: !1621, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1623, line: 26, size: 256, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1622, file: !1623, line: 27, baseType: !7, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1622, file: !1623, line: 28, baseType: !1627, size: 192, offset: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1628, line: 43, size: 192, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1627, file: !1628, line: 44, baseType: !554, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1627, file: !1628, line: 45, baseType: !134, size: 128, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !385, file: !6, line: 418, baseType: !1633, size: 64, offset: 1408)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1635)
!1635 = !{!1636, !1637, !1642, !1646, !1650, !1654}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1634, file: !6, line: 54, baseType: !474, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1634, file: !6, line: 55, baseType: !1638, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!469, !1633, !1641, !335}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1634, file: !6, line: 57, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!469, !1633, !1641, !309, !482}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1634, file: !6, line: 59, baseType: !1647, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !384, !309}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1634, file: !6, line: 60, baseType: !1651, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!272, !384}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1634, file: !6, line: 61, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !384}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !385, file: !6, line: 419, baseType: !309, size: 64, offset: 1472)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !385, file: !6, line: 420, baseType: !309, size: 64, offset: 1536)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !385, file: !6, line: 421, baseType: !403, size: 64, offset: 1600)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !385, file: !6, line: 424, baseType: !1662, size: 64, offset: 1664)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !385, file: !6, line: 425, baseType: !1666, size: 64, offset: 1728)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !385, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !385, file: !6, line: 435, baseType: !549, size: 256, offset: 1856)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !385, file: !6, line: 437, baseType: !1671, size: 64, offset: 2112)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1673, line: 69, size: 320, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1674 = !{!1675, !1676, !1677, !1694, !1696, !1700, !1701}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1672, file: !1673, line: 70, baseType: !309, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1672, file: !1673, line: 71, baseType: !384, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1672, file: !1673, line: 72, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1673, line: 47, size: 256, elements: !1681)
!1681 = !{!1682, !1683, !1689, !1693}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1680, file: !1673, line: 49, baseType: !7, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1680, file: !1673, line: 51, baseType: !1684, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!272, !309, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1680, file: !1673, line: 53, baseType: !1690, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!272, !335, !1687}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1680, file: !1673, line: 55, baseType: !1497, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1672, file: !1673, line: 73, baseType: !1695, size: 16, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1672, file: !1673, line: 74, baseType: !1697, size: 8, offset: 208)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !116, line: 16, baseType: !1698)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !118, line: 20, baseType: !1699)
!1699 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1673, line: 75, baseType: !277, size: 8, offset: 216)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1673, line: 76, baseType: !1702, size: 64, offset: 256)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !1673, line: 76, size: 64, elements: !1703)
!1703 = !{!1704, !1705, !1712}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1702, file: !1673, line: 77, baseType: !111, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1702, file: !1673, line: 78, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1673, line: 86, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1708, file: !1673, line: 87, baseType: !7, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1708, file: !1673, line: 88, baseType: !335, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1702, file: !1673, line: 79, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1673, line: 92, size: 256, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1721, !1722}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1715, file: !1673, line: 94, baseType: !7, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1715, file: !1673, line: 95, baseType: !7, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1715, file: !1673, line: 96, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1715, file: !1673, line: 97, baseType: !1678, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1715, file: !1673, line: 98, baseType: !111, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !385, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !385, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !385, file: !6, line: 442, baseType: !1662, size: 64, offset: 2240)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !385, file: !6, line: 443, baseType: !1666, size: 64, offset: 2304)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !385, file: !6, line: 444, baseType: !744, size: 8, offset: 2368)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !385, file: !6, line: 451, baseType: !744, size: 8, offset: 2376)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !385, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !385, file: !6, line: 455, baseType: !1731, size: 64, offset: 2432)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1733, line: 23, size: 96, elements: !1734)
!1733 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1732, file: !1733, line: 24, baseType: !272, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1732, file: !1733, line: 24, baseType: !272, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1732, file: !1733, line: 24, baseType: !272, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !385, file: !6, line: 458, baseType: !1739, size: 64, offset: 2496)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!272}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !385, file: !6, line: 460, baseType: !1743, size: 4032, align: 512, offset: 2560)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1744, size: 4032, elements: !1760)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1744, file: !6, line: 363, baseType: !111, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1744, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1744, file: !6, line: 367, baseType: !1749, size: 448, offset: 128)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1749, file: !6, line: 320, baseType: !384, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1749, file: !6, line: 321, baseType: !1753, size: 384, offset: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1754, line: 40, size: 384, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1753, file: !1754, line: 41, baseType: !1757, size: 384, align: 64)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 384, align: 64, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 2)
!1760 = !{!1761}
!1761 = !DISubrange(count: 7)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !385, file: !6, line: 463, baseType: !1763, size: 192, offset: 6592)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1764, line: 8, size: 192, elements: !1765)
!1764 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1765 = !{!1766, !1767, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1763, file: !1764, line: 10, baseType: !7, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1763, file: !1764, line: 11, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1763, file: !1764, line: 12, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1772, line: 59, size: 48, elements: !1773)
!1772 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1771, file: !1772, line: 60, baseType: !1154, size: 16)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1771, file: !1772, line: 61, baseType: !1154, size: 16, offset: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1771, file: !1772, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1771, file: !1772, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !1772, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1771, file: !1772, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !385, file: !6, line: 465, baseType: !112, size: 64, offset: 6784)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !385, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !385, file: !6, line: 470, baseType: !134, size: 128, offset: 6912)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !385, file: !6, line: 471, baseType: !1784, size: 64, offset: 7040)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1786, line: 33, size: 96, elements: !1787)
!1786 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1787 = !{!1788, !1789, !1790, !1791}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1785, file: !1786, line: 37, baseType: !272, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1785, file: !1786, line: 43, baseType: !272, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1785, file: !1786, line: 45, baseType: !156, size: 16, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1785, file: !1786, line: 47, baseType: !156, size: 16, offset: 80)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !385, file: !6, line: 476, baseType: !1793, size: 64, offset: 7104)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1795)
!1795 = !{!1796, !1812, !1813, !1814}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1794, file: !6, line: 379, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1799, line: 204, baseType: !1800)
!1799 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1799, line: 197, size: 192, elements: !1801)
!1801 = !{!1802, !1804, !1805, !1806, !1808, !1810}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1800, file: !1799, line: 198, baseType: !1803, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1799, line: 21, baseType: !224)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1800, file: !1799, line: 199, baseType: !230, size: 8, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1800, file: !1799, line: 200, baseType: !230, size: 8, offset: 40)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1800, file: !1799, line: 201, baseType: !1807, size: 16, offset: 48)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1799, line: 17, baseType: !285)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1800, file: !1799, line: 202, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1799, line: 16, baseType: !117)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1800, file: !1799, line: 203, baseType: !1811, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1799, line: 22, baseType: !117)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1794, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1794, file: !6, line: 381, baseType: !335, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1794, file: !6, line: 382, baseType: !335, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !385, file: !6, line: 477, baseType: !1794, size: 256, offset: 7168)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !385, file: !6, line: 480, baseType: !1817, size: 64, offset: 7424)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !385, file: !6, line: 483, baseType: !1820, size: 64, offset: 7488)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !385, file: !6, line: 488, baseType: !335, size: 64, offset: 7552)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !385, file: !6, line: 492, baseType: !111, size: 64, offset: 7616)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !385, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !385, file: !6, line: 495, baseType: !111, size: 64, offset: 7744)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !385, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !385, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !385, file: !6, line: 500, baseType: !1829, size: 64, offset: 7872)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1831, line: 45, baseType: !1832)
!1831 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !385, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !385, file: !6, line: 504, baseType: !1835, size: 64, offset: 8000)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1838, line: 96, size: 192, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1839 = !{!1840, !1841, !1895, !1898}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1837, file: !1838, line: 97, baseType: !7, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1837, file: !1838, line: 98, baseType: !1842, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1838, line: 24, size: 3072, elements: !1844)
!1844 = !{!1845, !1847, !1848, !1849, !1850, !1864, !1865, !1866, !1867, !1879, !1880, !1881, !1892, !1893, !1894}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1843, file: !1838, line: 26, baseType: !1846, size: 128)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 128, elements: !1758)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1843, file: !1838, line: 27, baseType: !1846, size: 128, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1843, file: !1838, line: 28, baseType: !272, size: 32, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1843, file: !1838, line: 31, baseType: !248, size: 32, align: 512, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1843, file: !1838, line: 32, baseType: !1851, size: 960, offset: 576)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1852, line: 206, size: 960, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1853 = !{!1854, !1855, !1858, !1860, !1861, !1863}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1851, file: !1852, line: 207, baseType: !530, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1851, file: !1852, line: 208, baseType: !1856, size: 256, offset: 64)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 256, elements: !609)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1851, file: !1852, line: 209, baseType: !1859, size: 256, offset: 320)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !609)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1851, file: !1852, line: 213, baseType: !472, size: 64, offset: 576)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1851, file: !1852, line: 215, baseType: !1862, size: 256, offset: 640)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 256, elements: !609)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1851, file: !1852, line: 216, baseType: !277, size: 8, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1843, file: !1838, line: 33, baseType: !112, size: 64, offset: 1536)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1843, file: !1838, line: 34, baseType: !112, size: 64, offset: 1600)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1843, file: !1838, line: 35, baseType: !744, size: 8, offset: 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1843, file: !1838, line: 36, baseType: !1868, size: 320, offset: 1728)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1869, line: 11, size: 320, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1870 = !{!1871, !1872, !1873, !1878}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1868, file: !1869, line: 16, baseType: !604, size: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1868, file: !1869, line: 17, baseType: !112, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1868, file: !1869, line: 18, baseType: !1874, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1869, line: 19, baseType: !223, size: 32, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1843, file: !1838, line: 37, baseType: !1176, size: 256, offset: 2048)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1843, file: !1838, line: 38, baseType: !527, size: 128, align: 64, offset: 2304)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1843, file: !1838, line: 39, baseType: !1882, size: 64, offset: 2432)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1838, line: 49, size: 768, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !1838, line: 50, baseType: !248, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1883, file: !1838, line: 51, baseType: !1859, size: 256, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1883, file: !1838, line: 53, baseType: !1859, size: 256, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1883, file: !1838, line: 54, baseType: !112, size: 64, offset: 576)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1883, file: !1838, line: 55, baseType: !1882, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1883, file: !1838, line: 56, baseType: !272, size: 32, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1883, file: !1838, line: 57, baseType: !272, size: 32, offset: 736)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1843, file: !1838, line: 40, baseType: !112, size: 64, offset: 2496)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1843, file: !1838, line: 42, baseType: !272, size: 32, offset: 2560)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1843, file: !1838, line: 43, baseType: !1836, size: 64, offset: 2624)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1837, file: !1838, line: 99, baseType: !1896, offset: 128)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1897, line: 211, elements: !1042)
!1897 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1837, file: !1838, line: 100, baseType: !1899, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1838, line: 63, size: 3008, elements: !1901)
!1901 = !{!1902, !1903, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1933}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1900, file: !1838, line: 64, baseType: !1882, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1900, file: !1838, line: 65, baseType: !1904, size: 192, offset: 64)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1882, size: 192, elements: !438)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1900, file: !1838, line: 67, baseType: !272, size: 32, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1900, file: !1838, line: 68, baseType: !549, size: 256, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1900, file: !1838, line: 69, baseType: !248, size: 32, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1900, file: !1838, line: 70, baseType: !549, size: 256, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1900, file: !1838, line: 71, baseType: !112, size: 64, offset: 896)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1900, file: !1838, line: 72, baseType: !112, size: 64, offset: 960)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1900, file: !1838, line: 73, baseType: !112, size: 64, offset: 1024)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1900, file: !1838, line: 74, baseType: !112, size: 64, offset: 1088)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1900, file: !1838, line: 75, baseType: !112, size: 64, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1900, file: !1838, line: 76, baseType: !112, size: 64, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1900, file: !1838, line: 77, baseType: !112, size: 64, offset: 1280)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1900, file: !1838, line: 78, baseType: !112, size: 64, offset: 1344)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1900, file: !1838, line: 79, baseType: !744, size: 8, offset: 1408)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1900, file: !1838, line: 80, baseType: !112, size: 64, offset: 1472)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1900, file: !1838, line: 81, baseType: !549, size: 256, offset: 1536)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1900, file: !1838, line: 82, baseType: !1622, size: 256, offset: 1792)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1900, file: !1838, line: 84, baseType: !268, size: 32, offset: 2048)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1900, file: !1838, line: 87, baseType: !112, size: 64, offset: 2112)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1900, file: !1838, line: 88, baseType: !112, size: 64, offset: 2176)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1900, file: !1838, line: 89, baseType: !1925, size: 704, offset: 2240)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1177, line: 111, size: 704, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1932}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1925, file: !1177, line: 112, baseType: !1176, size: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1925, file: !1177, line: 113, baseType: !1868, size: 320, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1925, file: !1177, line: 116, baseType: !1930, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1177, line: 18, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1925, file: !1177, line: 117, baseType: !272, size: 32, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1900, file: !1838, line: 90, baseType: !1836, size: 64, offset: 2944)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !385, file: !6, line: 515, baseType: !1935, size: 64, offset: 8064)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1937, line: 117, size: 128, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1938 = !{!1939, !1940, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1936, file: !1937, line: 118, baseType: !670, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1936, file: !1937, line: 119, baseType: !670, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1936, file: !1937, line: 120, baseType: !472, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !385, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !385, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !385, file: !6, line: 520, baseType: !1945, size: 64, offset: 8192)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !385, file: !6, line: 523, baseType: !1947, size: 64, offset: 8256)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !385, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !385, file: !6, line: 525, baseType: !1952, size: 64, offset: 8384)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !385, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !385, file: !6, line: 533, baseType: !111, size: 64, offset: 8512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !385, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !385, file: !6, line: 535, baseType: !1959, size: 64, offset: 8640)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !385, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !385, file: !6, line: 539, baseType: !272, size: 32, offset: 8736)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !385, file: !6, line: 540, baseType: !1963, size: 64, offset: 8768)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1965, line: 32, size: 64, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1964, file: !1965, line: 33, baseType: !670, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1964, file: !1965, line: 34, baseType: !670, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !385, file: !6, line: 563, baseType: !134, size: 128, offset: 8832)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !385, file: !6, line: 565, baseType: !134, size: 128, offset: 8960)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !385, file: !6, line: 568, baseType: !1972, size: 64, offset: 9088)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !385, file: !6, line: 570, baseType: !268, size: 32, offset: 9152)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !44, line: 2382, baseType: !360, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !361, file: !44, line: 2383, baseType: !600, size: 64, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !361, file: !44, line: 2385, baseType: !1979, offset: 576)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1897, line: 206, elements: !1042)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !361, file: !44, line: 2386, baseType: !1979, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !361, file: !44, line: 2387, baseType: !1979, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !361, file: !44, line: 2388, baseType: !1983, offset: 576)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, elements: !438)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !361, file: !44, line: 2390, baseType: !1979, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !361, file: !44, line: 2391, baseType: !1979, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !361, file: !44, line: 2392, baseType: !1979, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !361, file: !44, line: 2393, baseType: !1979, offset: 576)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !347, file: !44, line: 1197, baseType: !1989, size: 64, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 2057, size: 1664, elements: !1992)
!1992 = !{!1993, !1997, !2001, !2002, !2006, !2012, !2016, !2017, !2018, !2022, !2026, !2030, !2031, !2032, !2038, !2042, !2043, !2047, !2048, !2049, !2050, !2054, !2058, !2105, !2120, !2121}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1991, file: !44, line: 2058, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!151, !346}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1991, file: !44, line: 2059, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !151}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1991, file: !44, line: 2060, baseType: !1998, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1991, file: !44, line: 2062, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !151, !272}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1991, file: !44, line: 2063, baseType: !2007, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!272, !151, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 309, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1991, file: !44, line: 2064, baseType: !2013, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!272, !151}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1991, file: !44, line: 2065, baseType: !1998, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1991, file: !44, line: 2066, baseType: !380, size: 64, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1991, file: !44, line: 2067, baseType: !2019, size: 64, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!272, !346, !272}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1991, file: !44, line: 2068, baseType: !2023, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!272, !346, !43}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1991, file: !44, line: 2069, baseType: !2027, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!272, !346}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1991, file: !44, line: 2070, baseType: !2023, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1991, file: !44, line: 2071, baseType: !2027, size: 64, offset: 768)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1991, file: !44, line: 2072, baseType: !2033, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!272, !189, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 62, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1991, file: !44, line: 2073, baseType: !2039, size: 64, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!272, !346, !1768, !335}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1991, file: !44, line: 2074, baseType: !380, size: 64, offset: 960)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1991, file: !44, line: 2076, baseType: !2044, size: 64, offset: 1024)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!272, !1393, !189}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1991, file: !44, line: 2077, baseType: !2044, size: 64, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1991, file: !44, line: 2078, baseType: !2044, size: 64, offset: 1152)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1991, file: !44, line: 2079, baseType: !2044, size: 64, offset: 1216)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1991, file: !44, line: 2081, baseType: !2051, size: 64, offset: 1280)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!469, !346, !272, !335, !482, !356}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1991, file: !44, line: 2082, baseType: !2055, size: 64, offset: 1344)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!469, !346, !272, !309, !482, !356}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1991, file: !44, line: 2083, baseType: !2059, size: 64, offset: 1408)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2062, !151}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !49, line: 296, size: 1664, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2090, !2091, !2092}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2064, file: !49, line: 297, baseType: !604, size: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2064, file: !49, line: 298, baseType: !134, size: 128, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2064, file: !49, line: 299, baseType: !134, size: 128, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2064, file: !49, line: 300, baseType: !134, size: 128, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2064, file: !49, line: 301, baseType: !549, size: 256, offset: 512)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2064, file: !49, line: 302, baseType: !248, size: 32, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2064, file: !49, line: 303, baseType: !268, size: 32, offset: 800)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2064, file: !49, line: 304, baseType: !346, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2064, file: !49, line: 305, baseType: !2075, size: 64, offset: 896)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !49, line: 68, size: 64, elements: !2076)
!2076 = !{!2077, !2089}
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2075, file: !49, line: 69, baseType: !2078, size: 32)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2075, file: !49, line: 69, size: 32, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2078, file: !49, line: 70, baseType: !159, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2078, file: !49, line: 71, baseType: !169, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2078, file: !49, line: 72, baseType: !2083, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2084, line: 24, baseType: !2085)
!2084 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2084, line: 22, size: 32, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2085, file: !2084, line: 23, baseType: !2088, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2084, line: 20, baseType: !165)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2075, file: !49, line: 74, baseType: !48, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2064, file: !49, line: 306, baseType: !356, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2064, file: !49, line: 307, baseType: !112, size: 64, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2064, file: !49, line: 308, baseType: !2093, size: 576, offset: 1088)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !49, line: 205, size: 576, elements: !2094)
!2094 = !{!2095, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2093, file: !49, line: 206, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !49, line: 66, baseType: !358)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2093, file: !49, line: 207, baseType: !2096, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2093, file: !49, line: 208, baseType: !2096, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2093, file: !49, line: 209, baseType: !2096, size: 64, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2093, file: !49, line: 210, baseType: !2096, size: 64, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2093, file: !49, line: 211, baseType: !2096, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2093, file: !49, line: 212, baseType: !2096, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2093, file: !49, line: 213, baseType: !701, size: 64, offset: 448)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2093, file: !49, line: 214, baseType: !701, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1991, file: !44, line: 2085, baseType: !2106, size: 64, offset: 1472)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!472, !346, !2109}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2111, line: 15, size: 256, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2112 = !{!2113, !2114, !2115, !2116, !2117}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2110, file: !2111, line: 16, baseType: !962, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2110, file: !2111, line: 19, baseType: !272, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2110, file: !2111, line: 26, baseType: !112, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2110, file: !2111, line: 33, baseType: !112, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2110, file: !2111, line: 36, baseType: !2118, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !22, line: 33, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1991, file: !44, line: 2087, baseType: !2106, size: 64, offset: 1536)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1991, file: !44, line: 2089, baseType: !380, size: 64, offset: 1600)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !347, file: !44, line: 1198, baseType: !2123, size: 64, offset: 448)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !49, line: 324, size: 704, elements: !2126)
!2126 = !{!2127, !2131, !2135, !2139, !2140, !2141, !2142, !2143, !2148, !2153, !2157}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2125, file: !49, line: 325, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!272, !2063}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2125, file: !49, line: 326, baseType: !2132, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2063, !346, !272}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2125, file: !49, line: 327, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2063}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2125, file: !49, line: 328, baseType: !2128, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2125, file: !49, line: 329, baseType: !2128, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2125, file: !49, line: 330, baseType: !2128, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2125, file: !49, line: 331, baseType: !2019, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2125, file: !49, line: 334, baseType: !2144, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2147, !151}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2125, file: !49, line: 335, baseType: !2149, size: 64, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!272, !151, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2125, file: !49, line: 337, baseType: !2154, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!272, !151, !2147}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2125, file: !49, line: 339, baseType: !2158, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!272, !346, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !347, file: !44, line: 1199, baseType: !2163, size: 64, offset: 512)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !49, line: 430, size: 704, elements: !2166)
!2166 = !{!2167, !2173, !2174, !2178, !2179, !2180, !2195, !2218, !2222, !2223, !2246}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2165, file: !49, line: 431, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!272, !346, !272, !272, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2165, file: !49, line: 432, baseType: !2019, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2165, file: !49, line: 433, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!272, !346, !7}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2165, file: !49, line: 434, baseType: !2175, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2165, file: !49, line: 435, baseType: !2019, size: 64, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2165, file: !49, line: 436, baseType: !2181, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!272, !346, !272, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !49, line: 417, size: 256, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2185, file: !49, line: 418, baseType: !272, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2185, file: !49, line: 419, baseType: !7, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2185, file: !49, line: 420, baseType: !7, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2185, file: !49, line: 422, baseType: !7, size: 32, offset: 96)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2185, file: !49, line: 423, baseType: !7, size: 32, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2185, file: !49, line: 424, baseType: !7, size: 32, offset: 160)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2185, file: !49, line: 425, baseType: !7, size: 32, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2185, file: !49, line: 426, baseType: !7, size: 32, offset: 224)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2165, file: !49, line: 437, baseType: !2196, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!272, !346, !2075, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !49, line: 345, size: 960, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2200, file: !49, line: 346, baseType: !272, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2200, file: !49, line: 347, baseType: !115, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2200, file: !49, line: 348, baseType: !115, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2200, file: !49, line: 349, baseType: !115, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2200, file: !49, line: 350, baseType: !115, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2200, file: !49, line: 351, baseType: !115, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2200, file: !49, line: 352, baseType: !115, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2200, file: !49, line: 353, baseType: !546, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2200, file: !49, line: 355, baseType: !546, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2200, file: !49, line: 356, baseType: !272, size: 32, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2200, file: !49, line: 357, baseType: !272, size: 32, offset: 608)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2200, file: !49, line: 358, baseType: !115, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2200, file: !49, line: 359, baseType: !115, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2200, file: !49, line: 360, baseType: !115, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2200, file: !49, line: 361, baseType: !546, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2200, file: !49, line: 362, baseType: !272, size: 32, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2165, file: !49, line: 438, baseType: !2219, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!272, !346, !2161, !2199}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2165, file: !49, line: 440, baseType: !2196, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2165, file: !49, line: 441, baseType: !2224, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!272, !346, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !49, line: 411, size: 1408, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2228, file: !49, line: 412, baseType: !7, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2228, file: !49, line: 413, baseType: !2232, size: 1344, offset: 64)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2233, size: 1344, elements: !438)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !49, line: 397, size: 448, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2245}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2233, file: !49, line: 398, baseType: !7, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2233, file: !49, line: 399, baseType: !7, size: 32, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2233, file: !49, line: 401, baseType: !7, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2233, file: !49, line: 402, baseType: !7, size: 32, offset: 96)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2233, file: !49, line: 403, baseType: !7, size: 32, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2233, file: !49, line: 404, baseType: !7, size: 32, offset: 160)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2233, file: !49, line: 405, baseType: !7, size: 32, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2233, file: !49, line: 406, baseType: !119, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2233, file: !49, line: 407, baseType: !2244, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !114, line: 132, baseType: !115)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2233, file: !49, line: 408, baseType: !2244, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2165, file: !49, line: 442, baseType: !2175, size: 64, offset: 640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !347, file: !44, line: 1200, baseType: !2248, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 54, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !347, file: !44, line: 1201, baseType: !112, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !347, file: !44, line: 1202, baseType: !112, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !347, file: !44, line: 1203, baseType: !112, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !347, file: !44, line: 1204, baseType: !189, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !347, file: !44, line: 1205, baseType: !685, size: 320, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !347, file: !44, line: 1206, baseType: !272, size: 32, offset: 1216)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !347, file: !44, line: 1207, baseType: !268, size: 32, offset: 1248)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !347, file: !44, line: 1209, baseType: !111, size: 64, offset: 1280)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !347, file: !44, line: 1211, baseType: !2260, size: 64, offset: 1344)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2263)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1211, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !347, file: !44, line: 1223, baseType: !2265, size: 64, offset: 1408)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !206, line: 34, size: 64, elements: !2266)
!2266 = !{!2267}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2265, file: !206, line: 35, baseType: !209, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !347, file: !44, line: 1224, baseType: !134, size: 128, offset: 1472)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !347, file: !44, line: 1225, baseType: !2270, size: 64, offset: 1600)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 1225, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !347, file: !44, line: 1226, baseType: !2273, size: 64, offset: 1664)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !44, line: 1226, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !347, file: !44, line: 1227, baseType: !2276, size: 64, offset: 1728)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !347, file: !44, line: 1228, baseType: !2279, size: 64, offset: 1792)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1228, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !347, file: !44, line: 1229, baseType: !604, size: 128, offset: 1856)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !347, file: !44, line: 1230, baseType: !7, size: 32, offset: 1984)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !347, file: !44, line: 1231, baseType: !2284, size: 2496, offset: 2048)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !49, line: 521, size: 2496, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2290, !2322}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !49, line: 522, baseType: !7, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2284, file: !49, line: 523, baseType: !685, size: 320, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2284, file: !49, line: 524, baseType: !2289, size: 192, offset: 384)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 192, elements: !438)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2284, file: !49, line: 525, baseType: !2291, size: 1728, offset: 576)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, size: 1728, elements: !438)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !49, line: 222, size: 576, elements: !2293)
!2293 = !{!2294, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2292, file: !49, line: 223, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !49, line: 445, size: 256, elements: !2297)
!2297 = !{!2298, !2299, !2312, !2313}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2296, file: !49, line: 446, baseType: !272, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2296, file: !49, line: 447, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !49, line: 312, size: 512, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2302, file: !49, line: 313, baseType: !2019, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2302, file: !49, line: 314, baseType: !2019, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2302, file: !49, line: 315, baseType: !2019, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2302, file: !49, line: 316, baseType: !2019, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2302, file: !49, line: 317, baseType: !2128, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2302, file: !49, line: 318, baseType: !2128, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2302, file: !49, line: 319, baseType: !2128, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2302, file: !49, line: 320, baseType: !2158, size: 64, offset: 448)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2296, file: !49, line: 448, baseType: !384, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2296, file: !49, line: 449, baseType: !2295, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2292, file: !49, line: 224, baseType: !272, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2292, file: !49, line: 226, baseType: !134, size: 128, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2292, file: !49, line: 227, baseType: !112, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2292, file: !49, line: 228, baseType: !7, size: 32, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2292, file: !49, line: 229, baseType: !7, size: 32, offset: 352)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2292, file: !49, line: 230, baseType: !2096, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2292, file: !49, line: 231, baseType: !2096, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2292, file: !49, line: 232, baseType: !111, size: 64, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2284, file: !49, line: 526, baseType: !2323, size: 192, offset: 2304)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2300, size: 192, elements: !438)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !347, file: !44, line: 1233, baseType: !2325, size: 2368, offset: 4544)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1184, size: 2368, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2325, file: !44, line: 1185, baseType: !156, size: 16)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2325, file: !44, line: 1186, baseType: !156, size: 16, offset: 16)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2325, file: !44, line: 1187, baseType: !2330, size: 2304, offset: 64)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2331, size: 2304, elements: !438)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2332, line: 12, size: 768, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2333 = !{!2334, !2342, !2343, !3570, !3571}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2331, file: !2332, line: 13, baseType: !2335, size: 384)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2336, line: 17, size: 384, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2335, file: !2336, line: 18, baseType: !272, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2335, file: !2336, line: 19, baseType: !272, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2335, file: !2336, line: 20, baseType: !613, size: 192, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2335, file: !2336, line: 22, baseType: !527, size: 128, align: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2331, file: !2332, line: 14, baseType: !1720, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2331, file: !2332, line: 15, baseType: !2344, size: 64, offset: 448)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2345, line: 16, size: 64, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2346 = !{!2347}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2344, file: !2345, line: 17, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1370, line: 746, size: 58368, elements: !2350)
!2350 = !{!2351, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2431, !2442, !2534, !2538, !2541, !2572, !2573, !2574, !2575, !2586, !2588, !2589, !2590, !2591, !2592, !2593, !2604, !2605, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2622, !2623, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2711, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2759, !2765, !2766, !2767, !2768, !2769, !2773, !2776, !2783, !2788, !2791, !2794, !2797, !2823, !2961, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2999, !3000, !3001, !3010, !3018, !3019, !3020, !3021, !3022, !3027, !3028, !3029, !3032, !3033, !3036, !3039, !3042, !3050, !3053, !3054, !3140, !3141, !3142, !3143, !3144, !3150, !3151, !3152, !3153, !3156, !3157, !3160, !3174, !3175, !3178, !3179, !3180, !3183, !3184, !3185, !3186, !3187, !3188, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3220, !3221, !3227, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3239, !3311, !3313, !3314, !3315, !3316, !3317, !3318, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3347, !3348, !3349}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2349, file: !1370, line: 752, baseType: !2352, size: 192)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2353, line: 56, size: 192, elements: !2354)
!2353 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2354 = !{!2355, !2356, !2357, !2358}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2352, file: !2353, line: 57, baseType: !112, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2352, file: !2353, line: 58, baseType: !112, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2352, file: !2353, line: 59, baseType: !223, size: 32, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2352, file: !2353, line: 61, baseType: !223, size: 32, offset: 160)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2349, file: !1370, line: 754, baseType: !7, size: 32, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2349, file: !1370, line: 767, baseType: !111, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2349, file: !1370, line: 768, baseType: !592, size: 32, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2349, file: !1370, line: 770, baseType: !7, size: 32, offset: 352)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2349, file: !1370, line: 771, baseType: !7, size: 32, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2349, file: !1370, line: 774, baseType: !272, size: 32, offset: 416)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2349, file: !1370, line: 775, baseType: !2366, size: 128, offset: 448)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2367, line: 58, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2368 = !{!2369, !2370, !2375, !2376}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2366, file: !2367, line: 59, baseType: !521, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !2367, line: 60, baseType: !2371, size: 32, offset: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2366, file: !2367, line: 60, size: 32, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2371, file: !2367, line: 61, baseType: !7, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2371, file: !2367, line: 62, baseType: !268, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2366, file: !2367, line: 65, baseType: !284, size: 16, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2366, file: !2367, line: 65, baseType: !284, size: 16, offset: 112)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2349, file: !1370, line: 776, baseType: !7, size: 32, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2349, file: !1370, line: 777, baseType: !112, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2349, file: !1370, line: 778, baseType: !2348, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2349, file: !1370, line: 787, baseType: !272, size: 32, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2349, file: !1370, line: 788, baseType: !272, size: 32, offset: 800)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2349, file: !1370, line: 790, baseType: !272, size: 32, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2349, file: !1370, line: 792, baseType: !272, size: 32, offset: 864)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2349, file: !1370, line: 793, baseType: !272, size: 32, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2349, file: !1370, line: 794, baseType: !272, size: 32, offset: 928)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2349, file: !1370, line: 795, baseType: !7, size: 32, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2349, file: !1370, line: 797, baseType: !2388, size: 2048, offset: 1024)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1370, line: 551, size: 2048, elements: !2389)
!2389 = !{!2390, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2410, !2413, !2414, !2415}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2388, file: !1370, line: 553, baseType: !2391, size: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1370, line: 411, size: 128, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2391, file: !1370, line: 412, baseType: !112, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2391, file: !1370, line: 413, baseType: !223, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2388, file: !1370, line: 554, baseType: !677, size: 192, align: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2388, file: !1370, line: 555, baseType: !115, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2388, file: !1370, line: 556, baseType: !115, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2388, file: !1370, line: 558, baseType: !134, size: 128, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2388, file: !1370, line: 559, baseType: !7, size: 32, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2388, file: !1370, line: 561, baseType: !115, size: 64, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2388, file: !1370, line: 562, baseType: !115, size: 64, offset: 704)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2388, file: !1370, line: 563, baseType: !115, size: 64, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2388, file: !1370, line: 564, baseType: !115, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2388, file: !1370, line: 565, baseType: !546, size: 64, offset: 896)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2388, file: !1370, line: 566, baseType: !115, size: 64, offset: 960)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2388, file: !1370, line: 568, baseType: !115, size: 64, offset: 1024)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2388, file: !1370, line: 571, baseType: !272, size: 32, offset: 1088)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2388, file: !1370, line: 572, baseType: !2409, size: 64, offset: 1152)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2388, file: !1370, line: 574, baseType: !2411, size: 64, offset: 1216)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1370, line: 49, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2388, file: !1370, line: 576, baseType: !2411, size: 64, offset: 1280)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2388, file: !1370, line: 578, baseType: !112, size: 64, offset: 1344)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2388, file: !1370, line: 588, baseType: !2416, size: 512, align: 512, offset: 1536)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1370, line: 497, size: 512, align: 512, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2416, file: !1370, line: 498, baseType: !115, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2416, file: !1370, line: 499, baseType: !115, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2416, file: !1370, line: 500, baseType: !115, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2416, file: !1370, line: 501, baseType: !223, size: 32, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2416, file: !1370, line: 502, baseType: !223, size: 32, offset: 224)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2416, file: !1370, line: 503, baseType: !112, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2416, file: !1370, line: 504, baseType: !112, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2416, file: !1370, line: 505, baseType: !112, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2416, file: !1370, line: 506, baseType: !2427, size: 64, align: 64, offset: 448)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1370, line: 445, size: 64, align: 64, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2427, file: !1370, line: 446, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2427, file: !1370, line: 447, baseType: !7, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2349, file: !1370, line: 798, baseType: !2432, size: 384, offset: 3072)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1370, line: 592, size: 384, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2432, file: !1370, line: 593, baseType: !134, size: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2432, file: !1370, line: 594, baseType: !112, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2432, file: !1370, line: 595, baseType: !112, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2432, file: !1370, line: 596, baseType: !7, size: 32, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2432, file: !1370, line: 597, baseType: !156, size: 16, offset: 288)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2432, file: !1370, line: 598, baseType: !156, size: 16, offset: 304)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2432, file: !1370, line: 600, baseType: !2441, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2349, file: !1370, line: 799, baseType: !2443, size: 1792, offset: 3456)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1370, line: 610, size: 1792, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2531, !2532}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2443, file: !1370, line: 611, baseType: !677, size: 192, align: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2443, file: !1370, line: 618, baseType: !115, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2443, file: !1370, line: 619, baseType: !115, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2443, file: !1370, line: 620, baseType: !115, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2443, file: !1370, line: 621, baseType: !115, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2443, file: !1370, line: 622, baseType: !115, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2443, file: !1370, line: 629, baseType: !546, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2443, file: !1370, line: 630, baseType: !115, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !1370, line: 631, baseType: !7, size: 32, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2443, file: !1370, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2443, file: !1370, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2443, file: !1370, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2443, file: !1370, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2443, file: !1370, line: 662, baseType: !2459, size: 512, offset: 704)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !2460)
!2460 = !{!2461, !2469, !2470, !2475, !2527, !2528, !2529, !2530}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2459, file: !55, line: 119, baseType: !2462, size: 256)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2463, line: 9, size: 256, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2462, file: !2463, line: 10, baseType: !677, size: 192, align: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2462, file: !2463, line: 11, baseType: !2467, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2468, line: 29, baseType: !546)
!2468 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2459, file: !55, line: 120, baseType: !2467, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2459, file: !55, line: 121, baseType: !2471, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!54, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2459, file: !55, line: 122, baseType: !2476, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !2478)
!2478 = !{!2479, !2504, !2505, !2508, !2513, !2514, !2522, !2526}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2477, file: !55, line: 160, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2481, file: !55, line: 216, baseType: !554, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2481, file: !55, line: 217, baseType: !7, size: 32, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2481, file: !55, line: 218, baseType: !7, size: 32, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2481, file: !55, line: 219, baseType: !7, size: 32, offset: 96)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2481, file: !55, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2481, file: !55, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2481, file: !55, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2481, file: !55, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2481, file: !55, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2481, file: !55, line: 226, baseType: !7, size: 32, offset: 160)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2481, file: !55, line: 227, baseType: !156, size: 16, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2481, file: !55, line: 228, baseType: !156, size: 16, offset: 208)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2481, file: !55, line: 229, baseType: !7, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2481, file: !55, line: 235, baseType: !2467, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2481, file: !55, line: 236, baseType: !2474, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2481, file: !55, line: 237, baseType: !2467, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2481, file: !55, line: 238, baseType: !2474, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2481, file: !55, line: 239, baseType: !2501, size: 4096, align: 512, offset: 512)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2477, size: 4096, align: 512, elements: !2502)
!2502 = !{!2503}
!2503 = !DISubrange(count: 8)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2477, file: !55, line: 161, baseType: !7, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2477, file: !55, line: 162, baseType: !2506, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !114, line: 32, baseType: !2507)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !166, line: 96, baseType: !272)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2477, file: !55, line: 163, baseType: !2509, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !196, line: 274, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !196, line: 274, size: 32, elements: !2511)
!2511 = !{!2512}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2510, file: !196, line: 274, baseType: !200, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2477, file: !55, line: 164, baseType: !2474, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2477, file: !55, line: 165, baseType: !2515, size: 128, offset: 256)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2463, line: 14, size: 128, elements: !2516)
!2516 = !{!2517}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2515, file: !2463, line: 15, baseType: !2518, size: 128)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !678, line: 26, size: 128, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2518, file: !678, line: 27, baseType: !1530, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2518, file: !678, line: 28, baseType: !682, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2477, file: !55, line: 166, baseType: !2523, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!2467}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2477, file: !55, line: 167, baseType: !2467, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2459, file: !55, line: 123, baseType: !277, size: 8, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2459, file: !55, line: 124, baseType: !277, size: 8, offset: 456)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2459, file: !55, line: 125, baseType: !277, size: 8, offset: 464)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2459, file: !55, line: 126, baseType: !277, size: 8, offset: 472)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2443, file: !1370, line: 671, baseType: !2459, size: 512, offset: 1216)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2443, file: !1370, line: 679, baseType: !2533, size: 64, offset: 1728)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2349, file: !1370, line: 800, baseType: !2535, size: 64, offset: 5248)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2537)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1370, line: 800, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2349, file: !1370, line: 809, baseType: !2539, size: 64, offset: 5312)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1370, line: 70, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2349, file: !1370, line: 825, baseType: !2542, size: 2048, align: 512, offset: 5632)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1370, line: 509, size: 2048, align: 512, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2542, file: !1370, line: 511, baseType: !115, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2542, file: !1370, line: 512, baseType: !115, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2542, file: !1370, line: 513, baseType: !115, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2542, file: !1370, line: 514, baseType: !115, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2542, file: !1370, line: 515, baseType: !115, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2542, file: !1370, line: 516, baseType: !115, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2542, file: !1370, line: 518, baseType: !115, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2542, file: !1370, line: 519, baseType: !115, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2542, file: !1370, line: 520, baseType: !546, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2542, file: !1370, line: 522, baseType: !115, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2542, file: !1370, line: 523, baseType: !115, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2542, file: !1370, line: 524, baseType: !546, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2542, file: !1370, line: 526, baseType: !546, size: 64, offset: 768)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2542, file: !1370, line: 527, baseType: !115, size: 64, offset: 832)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2542, file: !1370, line: 529, baseType: !115, size: 64, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2542, file: !1370, line: 530, baseType: !115, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2542, file: !1370, line: 531, baseType: !115, size: 64, offset: 1024)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2542, file: !1370, line: 532, baseType: !115, size: 64, offset: 1088)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2542, file: !1370, line: 533, baseType: !115, size: 64, offset: 1152)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2542, file: !1370, line: 535, baseType: !115, size: 64, offset: 1216)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2542, file: !1370, line: 536, baseType: !115, size: 64, offset: 1280)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2542, file: !1370, line: 537, baseType: !115, size: 64, offset: 1344)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2542, file: !1370, line: 538, baseType: !115, size: 64, offset: 1408)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2542, file: !1370, line: 539, baseType: !115, size: 64, offset: 1472)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2542, file: !1370, line: 540, baseType: !115, size: 64, offset: 1536)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2542, file: !1370, line: 541, baseType: !115, size: 64, offset: 1600)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2542, file: !1370, line: 542, baseType: !115, size: 64, offset: 1664)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2542, file: !1370, line: 543, baseType: !115, size: 64, offset: 1728)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2349, file: !1370, line: 833, baseType: !7, size: 32, offset: 7680)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2349, file: !1370, line: 836, baseType: !7, size: 32, offset: 7712)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2349, file: !1370, line: 837, baseType: !272, size: 32, offset: 7744)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2349, file: !1370, line: 838, baseType: !2576, size: 64, offset: 7808)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2579, line: 19, baseType: !2580)
!2579 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2579, line: 19, size: 64, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2580, file: !2579, line: 19, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !2584)
!2584 = !{!2585}
!2585 = !DISubrange(count: 1)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2349, file: !1370, line: 839, baseType: !2587, size: 64, offset: 7872)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2349, file: !1370, line: 840, baseType: !2578, size: 64, offset: 7936)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2349, file: !1370, line: 841, baseType: !111, size: 64, offset: 8000)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2349, file: !1370, line: 843, baseType: !156, size: 16, offset: 8064)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2349, file: !1370, line: 845, baseType: !156, size: 16, offset: 8080)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2349, file: !1370, line: 848, baseType: !272, size: 32, offset: 8096)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2349, file: !1370, line: 849, baseType: !2594, size: 32, offset: 8128)
!2594 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1370, line: 718, size: 32, elements: !2595)
!2595 = !{!2596, !2603}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2594, file: !1370, line: 724, baseType: !2597, size: 32)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2594, file: !1370, line: 719, size: 32, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2597, file: !1370, line: 720, baseType: !277, size: 8)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2597, file: !1370, line: 721, baseType: !277, size: 8, offset: 8)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2597, file: !1370, line: 722, baseType: !277, size: 8, offset: 16)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2597, file: !1370, line: 723, baseType: !277, size: 8, offset: 24)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2594, file: !1370, line: 725, baseType: !223, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2349, file: !1370, line: 850, baseType: !134, size: 128, offset: 8192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2349, file: !1370, line: 851, baseType: !2606, size: 64, offset: 8320)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1370, line: 60, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2349, file: !1370, line: 855, baseType: !112, size: 64, offset: 8384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2349, file: !1370, line: 856, baseType: !277, size: 8, offset: 8448)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2349, file: !1370, line: 857, baseType: !277, size: 8, offset: 8456)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2349, file: !1370, line: 858, baseType: !272, size: 32, offset: 8480)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2349, file: !1370, line: 859, baseType: !134, size: 128, offset: 8512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2349, file: !1370, line: 860, baseType: !272, size: 32, offset: 8640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2349, file: !1370, line: 861, baseType: !134, size: 128, offset: 8704)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2349, file: !1370, line: 873, baseType: !2616, size: 256, offset: 8832)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1370, line: 376, size: 256, elements: !2617)
!2617 = !{!2618, !2619, !2620, !2621}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2616, file: !1370, line: 381, baseType: !112, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2616, file: !1370, line: 384, baseType: !119, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2616, file: !1370, line: 389, baseType: !119, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2616, file: !1370, line: 392, baseType: !119, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2349, file: !1370, line: 875, baseType: !134, size: 128, offset: 9088)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2349, file: !1370, line: 877, baseType: !2624, size: 320, offset: 9216)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2625, line: 86, size: 320, elements: !2626)
!2625 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2626 = !{!2627, !2628, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2624, file: !2625, line: 87, baseType: !272, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2624, file: !2625, line: 88, baseType: !134, size: 128, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2624, file: !2625, line: 89, baseType: !134, size: 128, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2349, file: !1370, line: 878, baseType: !677, size: 192, align: 64, offset: 9536)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2349, file: !1370, line: 881, baseType: !1021, size: 64, offset: 9728)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2349, file: !1370, line: 882, baseType: !1021, size: 64, offset: 9792)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2349, file: !1370, line: 884, baseType: !272, size: 32, offset: 9856)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2349, file: !1370, line: 885, baseType: !272, size: 32, offset: 9888)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2349, file: !1370, line: 886, baseType: !272, size: 32, offset: 9920)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2349, file: !1370, line: 888, baseType: !272, size: 32, offset: 9952)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2349, file: !1370, line: 890, baseType: !112, size: 64, offset: 9984)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2349, file: !1370, line: 893, baseType: !7, size: 32, offset: 10048)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2349, file: !1370, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2349, file: !1370, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2349, file: !1370, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2349, file: !1370, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2349, file: !1370, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2349, file: !1370, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2349, file: !1370, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2349, file: !1370, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2349, file: !1370, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2349, file: !1370, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2349, file: !1370, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2349, file: !1370, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2349, file: !1370, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2349, file: !1370, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2349, file: !1370, line: 969, baseType: !112, size: 64, offset: 10176)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2349, file: !1370, line: 971, baseType: !2655, size: 448, offset: 10240)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !60, line: 25, size: 448, elements: !2656)
!2656 = !{!2657, !2658, !2663}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2655, file: !60, line: 26, baseType: !112, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2655, file: !60, line: 27, baseType: !2659, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!472, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !2655, file: !60, line: 28, baseType: !2664, size: 320, offset: 128)
!2664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2655, file: !60, line: 28, size: 320, elements: !2665)
!2665 = !{!2666, !2676, !2701}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2664, file: !60, line: 37, baseType: !2667, size: 320)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2664, file: !60, line: 30, size: 320, elements: !2668)
!2668 = !{!2669, !2671, !2672, !2673, !2674, !2675}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2667, file: !60, line: 31, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2667, file: !60, line: 32, baseType: !223, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2667, file: !60, line: 33, baseType: !223, size: 32, offset: 96)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2667, file: !60, line: 34, baseType: !223, size: 32, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2667, file: !60, line: 35, baseType: !115, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2667, file: !60, line: 36, baseType: !2670, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2664, file: !60, line: 47, baseType: !2677, size: 192)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2664, file: !60, line: 39, size: 192, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2700}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2677, file: !60, line: 40, baseType: !2506, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2677, file: !60, line: 41, baseType: !59, size: 32, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, scope: !2677, file: !60, line: 42, baseType: !2682, size: 64, offset: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2677, file: !60, line: 42, size: 64, elements: !2683)
!2683 = !{!2684, !2692}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2682, file: !60, line: 43, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2687, line: 7, size: 128, elements: !2688)
!2687 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2688 = !{!2689, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2686, file: !2687, line: 8, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !166, line: 93, baseType: !358)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2686, file: !2687, line: 9, baseType: !358, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2682, file: !60, line: 44, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2695, line: 7, size: 64, elements: !2696)
!2695 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2696 = !{!2697, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2694, file: !2695, line: 8, baseType: !2698, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2695, line: 5, baseType: !670)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2694, file: !2695, line: 9, baseType: !670, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2677, file: !60, line: 46, baseType: !115, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2664, file: !60, line: 55, baseType: !2702, size: 256)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2664, file: !60, line: 49, size: 256, elements: !2703)
!2703 = !{!2704, !2707, !2708, !2709, !2710}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2702, file: !60, line: 50, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !60, line: 14, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2702, file: !60, line: 51, baseType: !272, size: 32, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2702, file: !60, line: 52, baseType: !272, size: 32, offset: 96)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2702, file: !60, line: 53, baseType: !112, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2702, file: !60, line: 54, baseType: !112, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2349, file: !1370, line: 973, baseType: !2712, size: 32, offset: 10688)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !114, line: 27, baseType: !2713)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !166, line: 28, baseType: !272)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2349, file: !1370, line: 974, baseType: !2712, size: 32, offset: 10720)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2349, file: !1370, line: 978, baseType: !112, size: 64, offset: 10752)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2349, file: !1370, line: 987, baseType: !2348, size: 64, offset: 10816)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2349, file: !1370, line: 990, baseType: !2348, size: 64, offset: 10880)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2349, file: !1370, line: 995, baseType: !134, size: 128, offset: 10944)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2349, file: !1370, line: 996, baseType: !134, size: 128, offset: 11072)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2349, file: !1370, line: 997, baseType: !2348, size: 64, offset: 11200)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2349, file: !1370, line: 1005, baseType: !134, size: 128, offset: 11264)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2349, file: !1370, line: 1006, baseType: !134, size: 128, offset: 11392)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2349, file: !1370, line: 1009, baseType: !588, size: 64, offset: 11520)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2349, file: !1370, line: 1010, baseType: !2725, size: 512, offset: 11584)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 512, elements: !609)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2349, file: !1370, line: 1011, baseType: !134, size: 128, offset: 12096)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2349, file: !1370, line: 1012, baseType: !134, size: 128, offset: 12224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2349, file: !1370, line: 1014, baseType: !1621, size: 64, offset: 12352)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2349, file: !1370, line: 1017, baseType: !1768, size: 64, offset: 12416)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2349, file: !1370, line: 1020, baseType: !1768, size: 64, offset: 12480)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2349, file: !1370, line: 1023, baseType: !111, size: 64, offset: 12544)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2349, file: !1370, line: 1025, baseType: !115, size: 64, offset: 12608)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2349, file: !1370, line: 1026, baseType: !115, size: 64, offset: 12672)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2349, file: !1370, line: 1031, baseType: !115, size: 64, offset: 12736)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2349, file: !1370, line: 1032, baseType: !2736, size: 192, offset: 12800)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1370, line: 324, size: 192, elements: !2737)
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2736, file: !1370, line: 326, baseType: !115, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2736, file: !1370, line: 327, baseType: !115, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2736, file: !1370, line: 328, baseType: !554, size: 32, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2349, file: !1370, line: 1041, baseType: !112, size: 64, offset: 12992)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2349, file: !1370, line: 1042, baseType: !112, size: 64, offset: 13056)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2349, file: !1370, line: 1045, baseType: !115, size: 64, offset: 13120)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2349, file: !1370, line: 1048, baseType: !115, size: 64, offset: 13184)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2349, file: !1370, line: 1051, baseType: !112, size: 64, offset: 13248)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2349, file: !1370, line: 1052, baseType: !112, size: 64, offset: 13312)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2349, file: !1370, line: 1055, baseType: !2748, size: 640, offset: 13376)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2749, line: 132, size: 640, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2750 = !{!2751, !2757, !2758}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2748, file: !2749, line: 133, baseType: !2752, size: 576)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2753, size: 576, elements: !438)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2749, line: 117, size: 192, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2753, file: !2749, line: 118, baseType: !115, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2753, file: !2749, line: 119, baseType: !2515, size: 128, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2748, file: !2749, line: 134, baseType: !7, size: 32, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2748, file: !2749, line: 135, baseType: !7, size: 32, offset: 608)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2349, file: !1370, line: 1058, baseType: !2760, size: 448, offset: 14016)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2749, line: 144, size: 448, elements: !2761)
!2761 = !{!2762, !2763, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2760, file: !2749, line: 145, baseType: !527, size: 128, align: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2760, file: !2749, line: 146, baseType: !549, size: 256, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2760, file: !2749, line: 147, baseType: !7, size: 32, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2349, file: !1370, line: 1064, baseType: !635, size: 64, offset: 14464)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2349, file: !1370, line: 1067, baseType: !635, size: 64, offset: 14528)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2349, file: !1370, line: 1070, baseType: !635, size: 64, offset: 14592)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2349, file: !1370, line: 1074, baseType: !662, size: 64, offset: 14656)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2349, file: !1370, line: 1084, baseType: !2770, size: 128, offset: 14720)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !2771)
!2771 = !{!2772}
!2772 = !DISubrange(count: 16)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2349, file: !1370, line: 1086, baseType: !2774, size: 64, offset: 14848)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1370, line: 55, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2349, file: !1370, line: 1089, baseType: !2777, size: 64, offset: 14912)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2778, line: 12, size: 64, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2777, file: !2778, line: 13, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2778, line: 8, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2349, file: !1370, line: 1090, baseType: !2784, size: 128, offset: 14976)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2785, line: 13, size: 128, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2786 = !{!2787}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2784, file: !2785, line: 14, baseType: !134, size: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2349, file: !1370, line: 1097, baseType: !2789, size: 64, offset: 15104)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1370, line: 50, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2349, file: !1370, line: 1100, baseType: !2792, size: 64, offset: 15168)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1370, line: 1100, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2349, file: !1370, line: 1103, baseType: !2795, size: 64, offset: 15232)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1370, line: 53, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2349, file: !1370, line: 1107, baseType: !2798, size: 64, offset: 15296)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2800, line: 31, size: 576, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2801 = !{!2802, !2803, !2806, !2809, !2812, !2813, !2816, !2819, !2820}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2799, file: !2800, line: 32, baseType: !592, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2799, file: !2800, line: 33, baseType: !2804, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2800, line: 9, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2799, file: !2800, line: 34, baseType: !2807, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2800, line: 10, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2799, file: !2800, line: 35, baseType: !2810, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2800, line: 8, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2799, file: !2800, line: 36, baseType: !626, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2799, file: !2800, line: 37, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !664, line: 34, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2799, file: !2800, line: 38, baseType: !2817, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2800, line: 38, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2799, file: !2800, line: 39, baseType: !2817, size: 64, offset: 448)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2799, file: !2800, line: 40, baseType: !2821, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2800, line: 12, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2349, file: !1370, line: 1110, baseType: !2824, size: 64, offset: 15360)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2826, line: 93, size: 8768, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2875, !2884, !2885, !2887, !2888, !2889, !2892, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2930, !2931, !2938, !2948, !2951, !2952, !2955, !2956, !2957, !2958, !2959, !2960}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2825, file: !2826, line: 94, baseType: !592, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2825, file: !2826, line: 95, baseType: !268, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2825, file: !2826, line: 96, baseType: !272, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2825, file: !2826, line: 97, baseType: !272, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2825, file: !2826, line: 98, baseType: !134, size: 128, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2825, file: !2826, line: 100, baseType: !613, size: 192, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2825, file: !2826, line: 103, baseType: !2348, size: 64, offset: 448)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2825, file: !2826, line: 106, baseType: !2836, size: 192, offset: 512)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !832, line: 32, size: 192, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !832, line: 33, baseType: !134, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2836, file: !832, line: 34, baseType: !2840, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2841, line: 25, baseType: !2842)
!2841 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2841, line: 23, size: 64, elements: !2843)
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2842, file: !2841, line: 24, baseType: !2583, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2825, file: !2826, line: 109, baseType: !600, size: 64, offset: 704)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2825, file: !2826, line: 112, baseType: !272, size: 32, offset: 768)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2825, file: !2826, line: 114, baseType: !272, size: 32, offset: 800)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2825, file: !2826, line: 115, baseType: !2348, size: 64, offset: 832)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2825, file: !2826, line: 118, baseType: !272, size: 32, offset: 896)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2826, line: 119, baseType: !7, size: 32, offset: 928)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2825, file: !2826, line: 121, baseType: !2852, size: 64, offset: 960)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2826, line: 80, size: 448, elements: !2854)
!2854 = !{!2855, !2856, !2862}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2853, file: !2826, line: 81, baseType: !268, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2853, file: !2826, line: 82, baseType: !2857, size: 128, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2826, line: 75, size: 128, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2857, file: !2826, line: 76, baseType: !2348, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2857, file: !2826, line: 77, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2853, file: !2826, line: 83, baseType: !1622, size: 256, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2825, file: !2826, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2825, file: !2826, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2825, file: !2826, line: 138, baseType: !7, size: 32, offset: 1056)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2825, file: !2826, line: 139, baseType: !134, size: 128, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2825, file: !2826, line: 142, baseType: !2459, size: 512, offset: 1216)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2825, file: !2826, line: 143, baseType: !2467, size: 64, offset: 1728)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2825, file: !2826, line: 150, baseType: !2870, size: 256, offset: 1792)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2871, size: 256, elements: !1758)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2826, line: 38, size: 128, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2871, file: !2826, line: 39, baseType: !115, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2871, file: !2826, line: 40, baseType: !115, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2825, file: !2826, line: 156, baseType: !2876, size: 192, offset: 2048)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2826, line: 66, size: 192, elements: !2877)
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2876, file: !2826, line: 67, baseType: !2879, size: 192)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2826, line: 47, size: 192, elements: !2880)
!2880 = !{!2881, !2882, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2879, file: !2826, line: 48, baseType: !542, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2879, file: !2826, line: 49, baseType: !542, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2879, file: !2826, line: 50, baseType: !542, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2825, file: !2826, line: 160, baseType: !2748, size: 640, offset: 2240)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2825, file: !2826, line: 163, baseType: !2886, size: 256, offset: 2880)
!2886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 256, elements: !609)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2825, file: !2826, line: 169, baseType: !588, size: 64, offset: 3136)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2825, file: !2826, line: 172, baseType: !272, size: 32, offset: 3200)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2825, file: !2826, line: 174, baseType: !2890, size: 64, offset: 3264)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2826, line: 174, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2825, file: !2826, line: 185, baseType: !2893, size: 64, offset: 3328)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !196, line: 860, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 853, size: 64, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2894, file: !196, line: 858, baseType: !195, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !196, line: 859, baseType: !248, size: 32, offset: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2825, file: !2826, line: 186, baseType: !115, size: 64, offset: 3392)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2825, file: !2826, line: 186, baseType: !115, size: 64, offset: 3456)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2825, file: !2826, line: 186, baseType: !115, size: 64, offset: 3520)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2825, file: !2826, line: 186, baseType: !115, size: 64, offset: 3584)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2825, file: !2826, line: 187, baseType: !115, size: 64, offset: 3648)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2825, file: !2826, line: 188, baseType: !115, size: 64, offset: 3712)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2825, file: !2826, line: 189, baseType: !2736, size: 192, offset: 3776)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2825, file: !2826, line: 190, baseType: !112, size: 64, offset: 3968)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2825, file: !2826, line: 190, baseType: !112, size: 64, offset: 4032)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2825, file: !2826, line: 190, baseType: !112, size: 64, offset: 4096)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2825, file: !2826, line: 190, baseType: !112, size: 64, offset: 4160)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2825, file: !2826, line: 191, baseType: !112, size: 64, offset: 4224)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2825, file: !2826, line: 191, baseType: !112, size: 64, offset: 4288)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2825, file: !2826, line: 191, baseType: !112, size: 64, offset: 4352)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2825, file: !2826, line: 191, baseType: !112, size: 64, offset: 4416)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2825, file: !2826, line: 192, baseType: !112, size: 64, offset: 4480)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2825, file: !2826, line: 192, baseType: !112, size: 64, offset: 4544)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2825, file: !2826, line: 192, baseType: !112, size: 64, offset: 4608)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2825, file: !2826, line: 192, baseType: !112, size: 64, offset: 4672)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2825, file: !2826, line: 193, baseType: !112, size: 64, offset: 4736)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2825, file: !2826, line: 193, baseType: !112, size: 64, offset: 4800)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2825, file: !2826, line: 194, baseType: !2920, size: 448, offset: 4864)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2921, line: 12, size: 448, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2920, file: !2921, line: 15, baseType: !115, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2920, file: !2921, line: 17, baseType: !115, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2920, file: !2921, line: 19, baseType: !115, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2920, file: !2921, line: 21, baseType: !115, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2920, file: !2921, line: 29, baseType: !115, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2920, file: !2921, line: 35, baseType: !115, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2920, file: !2921, line: 44, baseType: !115, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2825, file: !2826, line: 202, baseType: !119, size: 64, offset: 5312)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2825, file: !2826, line: 213, baseType: !2932, size: 2048, offset: 5376)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2933, size: 2048, elements: !2771)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2934, line: 43, size: 128, elements: !2935)
!2934 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2935 = !{!2936, !2937}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2933, file: !2934, line: 44, baseType: !484, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2933, file: !2934, line: 45, baseType: !484, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2825, file: !2826, line: 216, baseType: !2939, size: 448, offset: 7424)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2826, line: 30, size: 448, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2939, file: !2826, line: 31, baseType: !272, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2939, file: !2826, line: 32, baseType: !472, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2939, file: !2826, line: 33, baseType: !112, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2939, file: !2826, line: 34, baseType: !115, size: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2939, file: !2826, line: 34, baseType: !115, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2939, file: !2826, line: 35, baseType: !112, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2939, file: !2826, line: 35, baseType: !112, size: 64, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2825, file: !2826, line: 219, baseType: !2949, size: 64, offset: 7872)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2826, line: 219, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2825, file: !2826, line: 222, baseType: !7, size: 32, offset: 7936)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2825, file: !2826, line: 223, baseType: !2953, size: 64, offset: 8000)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2826, line: 223, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2825, file: !2826, line: 230, baseType: !744, size: 8, offset: 8064)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2825, file: !2826, line: 231, baseType: !713, size: 16, offset: 8080)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2825, file: !2826, line: 232, baseType: !713, size: 16, offset: 8096)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2825, file: !2826, line: 234, baseType: !1021, size: 64, offset: 8128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2825, file: !2826, line: 237, baseType: !549, size: 256, offset: 8192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2825, file: !2826, line: 243, baseType: !685, size: 320, offset: 8448)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2349, file: !1370, line: 1111, baseType: !2962, size: 64, offset: 15424)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2826, line: 20, size: 16640, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2963, file: !2826, line: 21, baseType: !248, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2963, file: !2826, line: 22, baseType: !592, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2963, file: !2826, line: 23, baseType: !613, size: 192, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2963, file: !2826, line: 24, baseType: !2969, size: 16384, offset: 256)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2970, size: 16384, elements: !442)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !832, line: 51, size: 256, elements: !2971)
!2971 = !{!2972}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2970, file: !832, line: 52, baseType: !2973, size: 256)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !832, line: 37, size: 256, elements: !2974)
!2974 = !{!2975, !2982, !2983, !2987}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2973, file: !832, line: 39, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2977, line: 83, baseType: !2978)
!2977 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2977, line: 82, baseType: !2980)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !272}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2973, file: !832, line: 40, baseType: !112, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2973, file: !832, line: 46, baseType: !2984, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2977, line: 86, baseType: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2977, line: 85, baseType: !1973)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2973, file: !832, line: 48, baseType: !2840, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2349, file: !1370, line: 1112, baseType: !2840, size: 64, offset: 15488)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2349, file: !1370, line: 1113, baseType: !2840, size: 64, offset: 15552)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2349, file: !1370, line: 1115, baseType: !2840, size: 64, offset: 15616)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2349, file: !1370, line: 1116, baseType: !2836, size: 192, offset: 15680)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2349, file: !1370, line: 1117, baseType: !112, size: 64, offset: 15872)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2349, file: !1370, line: 1118, baseType: !482, size: 64, offset: 15936)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2349, file: !1370, line: 1119, baseType: !7, size: 32, offset: 16000)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2349, file: !1370, line: 1121, baseType: !530, size: 64, offset: 16064)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2349, file: !1370, line: 1125, baseType: !2997, size: 64, offset: 16128)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1370, line: 43, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2349, file: !1370, line: 1127, baseType: !159, size: 32, offset: 16192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2349, file: !1370, line: 1128, baseType: !7, size: 32, offset: 16224)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2349, file: !1370, line: 1130, baseType: !3002, size: 128, offset: 16256)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3003, line: 37, size: 128, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3004 = !{!3005, !3006, !3007}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3002, file: !3003, line: 38, baseType: !272, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3002, file: !3003, line: 39, baseType: !268, size: 32, offset: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3002, file: !3003, line: 40, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3003, line: 24, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2349, file: !1370, line: 1131, baseType: !3011, size: 256, offset: 16384)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3012, line: 12, size: 256, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3013 = !{!3014, !3015, !3016, !3017}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3011, file: !3012, line: 13, baseType: !335, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3011, file: !3012, line: 14, baseType: !112, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3011, file: !3012, line: 15, baseType: !112, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3011, file: !3012, line: 16, baseType: !744, size: 8, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2349, file: !1370, line: 1134, baseType: !115, size: 64, offset: 16640)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2349, file: !1370, line: 1135, baseType: !115, size: 64, offset: 16704)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2349, file: !1370, line: 1138, baseType: !248, size: 32, offset: 16768)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2349, file: !1370, line: 1141, baseType: !554, size: 32, offset: 16800)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2349, file: !1370, line: 1143, baseType: !3023, size: 64, offset: 16832)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1370, line: 735, size: 64, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3023, file: !1370, line: 736, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2349, file: !1370, line: 1147, baseType: !2518, size: 128, offset: 16896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2349, file: !1370, line: 1149, baseType: !2348, size: 64, offset: 17024)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2349, file: !1370, line: 1151, baseType: !3030, size: 64, offset: 17088)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1370, line: 1151, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2349, file: !1370, line: 1188, baseType: !111, size: 64, offset: 17152)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2349, file: !1370, line: 1191, baseType: !3034, size: 64, offset: 17216)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1370, line: 44, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2349, file: !1370, line: 1194, baseType: !3037, size: 64, offset: 17280)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1370, line: 45, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2349, file: !1370, line: 1197, baseType: !3040, size: 64, offset: 17344)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1370, line: 61, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2349, file: !1370, line: 1199, baseType: !3043, size: 64, offset: 17408)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3045, line: 99, size: 128, elements: !3046)
!3045 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3046 = !{!3047, !3048, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3044, file: !3045, line: 100, baseType: !540, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3044, file: !3045, line: 101, baseType: !268, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3044, file: !3045, line: 103, baseType: !156, size: 16, offset: 96)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2349, file: !1370, line: 1202, baseType: !3051, size: 64, offset: 17472)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1370, line: 48, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2349, file: !1370, line: 1205, baseType: !112, size: 64, offset: 17536)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2349, file: !1370, line: 1206, baseType: !3055, size: 64, offset: 17600)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !832, line: 14, baseType: !3057)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !832, line: 12, size: 384, elements: !3058)
!3058 = !{!3059}
!3059 = !DIDerivedType(tag: DW_TAG_member, scope: !3057, file: !832, line: 13, baseType: !3060, size: 384)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !832, line: 13, size: 384, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3065}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3060, file: !832, line: 13, baseType: !272, size: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3060, file: !832, line: 13, baseType: !272, size: 32, offset: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3060, file: !832, line: 13, baseType: !272, size: 32, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3060, file: !832, line: 13, baseType: !3066, size: 256, offset: 128)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3067, line: 37, size: 256, elements: !3068)
!3067 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3068 = !{!3069, !3074, !3087, !3093, !3102, !3129, !3134}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3066, file: !3067, line: 42, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 39, size: 64, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3070, file: !3067, line: 40, baseType: !2713, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3070, file: !3067, line: 41, baseType: !165, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3066, file: !3067, line: 50, baseType: !3075, size: 192)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 45, size: 192, elements: !3076)
!3076 = !{!3077, !3079, !3080, !3086}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3075, file: !3067, line: 46, baseType: !3078, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !166, line: 95, baseType: !272)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3075, file: !3067, line: 47, baseType: !272, size: 32, offset: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3075, file: !3067, line: 48, baseType: !3081, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3067, line: 11, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3067, line: 8, size: 64, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3082, file: !3067, line: 9, baseType: !272, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3082, file: !3067, line: 10, baseType: !111, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3075, file: !3067, line: 49, baseType: !272, size: 32, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3066, file: !3067, line: 57, baseType: !3088, size: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 53, size: 128, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3088, file: !3067, line: 54, baseType: !2713, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3088, file: !3067, line: 55, baseType: !165, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3088, file: !3067, line: 56, baseType: !3081, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3066, file: !3067, line: 66, baseType: !3094, size: 256)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 60, size: 256, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3101}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3094, file: !3067, line: 61, baseType: !2713, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3094, file: !3067, line: 62, baseType: !165, size: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3094, file: !3067, line: 63, baseType: !272, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3094, file: !3067, line: 64, baseType: !3100, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !166, line: 94, baseType: !471)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3094, file: !3067, line: 65, baseType: !3100, size: 64, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3066, file: !3067, line: 105, baseType: !3103, size: 256)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 69, size: 256, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3103, file: !3067, line: 70, baseType: !111, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !3067, line: 79, baseType: !3107, size: 192, offset: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !3067, line: 79, size: 192, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3118, !3123}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3107, file: !3067, line: 81, baseType: !272, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3107, file: !3067, line: 86, baseType: !713, size: 16)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3107, file: !3067, line: 92, baseType: !3112, size: 192)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3107, file: !3067, line: 88, size: 192, elements: !3113)
!3113 = !{!3114, !3116, !3117}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3112, file: !3067, line: 89, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !2502)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3112, file: !3067, line: 90, baseType: !111, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3112, file: !3067, line: 91, baseType: !111, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3107, file: !3067, line: 97, baseType: !3119, size: 96)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3107, file: !3067, line: 94, size: 96, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3119, file: !3067, line: 95, baseType: !3115, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3119, file: !3067, line: 96, baseType: !224, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3107, file: !3067, line: 103, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3107, file: !3067, line: 99, size: 128, elements: !3125)
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3124, file: !3067, line: 100, baseType: !112, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3124, file: !3067, line: 101, baseType: !224, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3124, file: !3067, line: 102, baseType: !224, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3066, file: !3067, line: 111, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 108, size: 128, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3130, file: !3067, line: 109, baseType: !472, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3130, file: !3067, line: 110, baseType: !272, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3066, file: !3067, line: 118, baseType: !3135, size: 128)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !3067, line: 114, size: 128, elements: !3136)
!3136 = !{!3137, !3138, !3139}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3135, file: !3067, line: 115, baseType: !111, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3135, file: !3067, line: 116, baseType: !272, size: 32, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3135, file: !3067, line: 117, baseType: !7, size: 32, offset: 96)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2349, file: !1370, line: 1208, baseType: !2920, size: 448, offset: 17664)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2349, file: !1370, line: 1215, baseType: !115, size: 64, offset: 18112)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2349, file: !1370, line: 1217, baseType: !115, size: 64, offset: 18176)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2349, file: !1370, line: 1219, baseType: !115, size: 64, offset: 18240)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2349, file: !1370, line: 1223, baseType: !3145, size: 64, offset: 18304)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3146, line: 99, baseType: !3147)
!3146 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3146, line: 99, size: 64, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3147, file: !3146, line: 99, baseType: !2583, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2349, file: !1370, line: 1225, baseType: !195, size: 32, offset: 18368)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2349, file: !1370, line: 1226, baseType: !272, size: 32, offset: 18400)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2349, file: !1370, line: 1227, baseType: !272, size: 32, offset: 18432)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2349, file: !1370, line: 1231, baseType: !3154, size: 64, offset: 18496)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1370, line: 1231, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2349, file: !1370, line: 1233, baseType: !134, size: 128, offset: 18560)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2349, file: !1370, line: 1240, baseType: !3158, size: 64, offset: 18688)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1370, line: 62, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2349, file: !1370, line: 1242, baseType: !3161, size: 64, offset: 18752)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3163, line: 392, size: 96, elements: !3164)
!3163 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3164 = !{!3165, !3171, !3173}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3162, file: !3163, line: 393, baseType: !3166, size: 32)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3163, line: 388, size: 32, elements: !3167)
!3167 = !{!3168}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3166, file: !3163, line: 389, baseType: !3169, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3170, line: 46, baseType: !223)
!3170 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3162, file: !3163, line: 394, baseType: !3172, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3170, line: 42, baseType: !670)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3162, file: !3163, line: 395, baseType: !3169, size: 32, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2349, file: !1370, line: 1244, baseType: !134, size: 128, offset: 18816)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2349, file: !1370, line: 1245, baseType: !3176, size: 64, offset: 18944)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1370, line: 51, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2349, file: !1370, line: 1246, baseType: !549, size: 256, offset: 19008)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2349, file: !1370, line: 1247, baseType: !7, size: 32, offset: 19264)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2349, file: !1370, line: 1250, baseType: !3181, size: 64, offset: 19328)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1370, line: 57, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2349, file: !1370, line: 1251, baseType: !549, size: 256, offset: 19392)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2349, file: !1370, line: 1252, baseType: !134, size: 128, offset: 19648)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2349, file: !1370, line: 1259, baseType: !1316, size: 64, offset: 19776)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2349, file: !1370, line: 1260, baseType: !713, size: 16, offset: 19840)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2349, file: !1370, line: 1261, baseType: !713, size: 16, offset: 19856)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2349, file: !1370, line: 1314, baseType: !3189, size: 64, offset: 19904)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3191, line: 62, size: 256, align: 256, elements: !3192)
!3191 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198, !3199}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3190, file: !3191, line: 75, baseType: !224, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3190, file: !3191, line: 90, baseType: !224, size: 32, offset: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3190, file: !3191, line: 112, baseType: !117, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3190, file: !3191, line: 132, baseType: !224, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3190, file: !3191, line: 140, baseType: !224, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3190, file: !3191, line: 149, baseType: !224, size: 32, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3190, file: !3191, line: 154, baseType: !3200, offset: 224)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, elements: !628)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2349, file: !1370, line: 1315, baseType: !223, size: 32, offset: 19968)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2349, file: !1370, line: 1316, baseType: !223, size: 32, offset: 20000)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2349, file: !1370, line: 1321, baseType: !112, size: 64, offset: 20032)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2349, file: !1370, line: 1325, baseType: !272, size: 32, offset: 20096)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2349, file: !1370, line: 1326, baseType: !272, size: 32, offset: 20128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2349, file: !1370, line: 1327, baseType: !272, size: 32, offset: 20160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2349, file: !1370, line: 1328, baseType: !272, size: 32, offset: 20192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2349, file: !1370, line: 1329, baseType: !527, size: 128, align: 64, offset: 20224)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2349, file: !1370, line: 1332, baseType: !3210, size: 128, offset: 20352)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3211, line: 51, size: 128, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3212 = !{!3213, !3218, !3219}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3210, file: !3211, line: 60, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3215, line: 7, size: 64, elements: !3216)
!3215 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3216 = !{!3217}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3214, file: !3215, line: 12, baseType: !2580, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3210, file: !3211, line: 63, baseType: !744, size: 8, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3210, file: !3211, line: 70, baseType: !744, size: 8, offset: 72)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2349, file: !1370, line: 1335, baseType: !1368, size: 64, offset: 20480)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2349, file: !1370, line: 1337, baseType: !3222, size: 128, offset: 20544)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3211, line: 39, size: 128, elements: !3223)
!3223 = !{!3224, !3225, !3226}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3222, file: !3211, line: 40, baseType: !120, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3222, file: !3211, line: 42, baseType: !224, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3222, file: !3211, line: 43, baseType: !224, size: 32, offset: 96)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2349, file: !1370, line: 1340, baseType: !3228, size: 64, offset: 20672)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1370, line: 69, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2349, file: !1370, line: 1351, baseType: !272, size: 32, offset: 20736)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2349, file: !1370, line: 1352, baseType: !272, size: 32, offset: 20768)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2349, file: !1370, line: 1354, baseType: !112, size: 64, offset: 20800)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2349, file: !1370, line: 1364, baseType: !115, size: 64, offset: 20864)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2349, file: !1370, line: 1365, baseType: !115, size: 64, offset: 20928)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2349, file: !1370, line: 1412, baseType: !112, size: 64, offset: 20992)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2349, file: !1370, line: 1453, baseType: !3237, size: 64, offset: 21056)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1370, line: 1453, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2349, file: !1370, line: 1457, baseType: !3240, size: 64, offset: 21120)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !66, line: 61, size: 576, elements: !3242)
!3242 = !{!3243, !3244, !3263, !3266, !3267, !3300, !3310}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3241, file: !66, line: 62, baseType: !65, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !66, line: 64, baseType: !3245, size: 192, offset: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !66, line: 64, size: 192, elements: !3246)
!3246 = !{!3247, !3258}
!3247 = !DIDerivedType(tag: DW_TAG_member, scope: !3245, file: !66, line: 65, baseType: !3248, size: 192)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !66, line: 65, size: 192, elements: !3249)
!3249 = !{!3250, !3257}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3248, file: !66, line: 66, baseType: !3251, size: 128)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3252, line: 50, size: 128, elements: !3253)
!3252 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3251, file: !3252, line: 52, baseType: !112, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3251, file: !3252, line: 54, baseType: !7, size: 32, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3251, file: !3252, line: 55, baseType: !7, size: 32, offset: 96)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3248, file: !66, line: 67, baseType: !112, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3245, file: !66, line: 70, baseType: !3259, size: 192)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !66, line: 70, size: 192, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3259, file: !66, line: 71, baseType: !527, size: 128, align: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3259, file: !66, line: 72, baseType: !112, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3241, file: !66, line: 76, baseType: !3264, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !66, line: 76, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3241, file: !66, line: 77, baseType: !112, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3241, file: !66, line: 79, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3252, line: 25, size: 256, elements: !3270)
!3270 = !{!3271, !3277, !3281}
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3252, line: 26, baseType: !3272, size: 128)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !3252, line: 26, size: 128, elements: !3273)
!3273 = !{!3274, !3276}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3272, file: !3252, line: 27, baseType: !3275, size: 128)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !2771)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3272, file: !3252, line: 28, baseType: !3275, size: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3269, file: !3252, line: 31, baseType: !3278, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3252, line: 23, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3252, line: 33, baseType: !3282, size: 64, offset: 192)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !3252, line: 33, size: 64, elements: !3283)
!3283 = !{!3284, !3290, !3295}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3282, file: !3252, line: 38, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3282, file: !3252, line: 34, size: 64, elements: !3286)
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3285, file: !3252, line: 35, baseType: !670, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3285, file: !3252, line: 36, baseType: !277, size: 8, offset: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3285, file: !3252, line: 37, baseType: !277, size: 8, offset: 40)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3282, file: !3252, line: 42, baseType: !3291, size: 16)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3282, file: !3252, line: 39, size: 16, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3291, file: !3252, line: 40, baseType: !277, size: 8)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3291, file: !3252, line: 41, baseType: !277, size: 8, offset: 8)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3282, file: !3252, line: 46, baseType: !3296, size: 16)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3282, file: !3252, line: 43, size: 16, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3296, file: !3252, line: 44, baseType: !277, size: 8)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3296, file: !3252, line: 45, baseType: !277, size: 8, offset: 8)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3241, file: !66, line: 81, baseType: !3301, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !66, line: 85, size: 384, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3302, file: !66, line: 86, baseType: !3264, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3302, file: !66, line: 87, baseType: !112, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3302, file: !66, line: 88, baseType: !112, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3302, file: !66, line: 89, baseType: !112, size: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3302, file: !66, line: 90, baseType: !744, size: 8, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3302, file: !66, line: 92, baseType: !3301, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3241, file: !66, line: 82, baseType: !7, size: 32, offset: 512)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2349, file: !1370, line: 1463, baseType: !3312, offset: 21184)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1370, line: 739, elements: !1042)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2349, file: !1370, line: 1470, baseType: !527, size: 128, align: 64, offset: 21184)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2349, file: !1370, line: 1471, baseType: !592, size: 32, offset: 21312)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2349, file: !1370, line: 1472, baseType: !272, size: 32, offset: 21344)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2349, file: !1370, line: 1474, baseType: !2348, size: 64, offset: 21376)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2349, file: !1370, line: 1475, baseType: !1868, size: 320, offset: 21440)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2349, file: !1370, line: 1478, baseType: !3319, size: 64, offset: 21760)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3321, line: 49, size: 512, elements: !3322)
!3321 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3329, !3330, !3331, !3332}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3320, file: !3321, line: 50, baseType: !3319, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3320, file: !3321, line: 51, baseType: !111, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3320, file: !3321, line: 52, baseType: !112, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3320, file: !3321, line: 53, baseType: !112, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3320, file: !3321, line: 54, baseType: !3328, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3320, file: !3321, line: 56, baseType: !7, size: 32, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3320, file: !3321, line: 58, baseType: !7, size: 32, offset: 352)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3320, file: !3321, line: 59, baseType: !113, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3320, file: !3321, line: 60, baseType: !1137, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2349, file: !1370, line: 1482, baseType: !592, size: 32, offset: 21824)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2349, file: !1370, line: 1489, baseType: !111, size: 64, offset: 21888)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2349, file: !1370, line: 1504, baseType: !111, size: 64, offset: 21952)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2349, file: !1370, line: 1505, baseType: !117, size: 64, offset: 22016)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2349, file: !1370, line: 1506, baseType: !115, size: 64, offset: 22080)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2349, file: !1370, line: 1507, baseType: !117, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2349, file: !1370, line: 1508, baseType: !117, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2349, file: !1370, line: 1509, baseType: !117, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2349, file: !1370, line: 1510, baseType: !527, size: 128, align: 64, offset: 22208)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2349, file: !1370, line: 1511, baseType: !272, size: 32, offset: 22336)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2349, file: !1370, line: 1515, baseType: !3344, size: 64, offset: 22400)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !522, line: 56, size: 64, elements: !3345)
!3345 = !{!3346}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3344, file: !522, line: 57, baseType: !525, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2349, file: !1370, line: 1518, baseType: !3344, size: 64, offset: 22464)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2349, file: !1370, line: 1528, baseType: !527, size: 128, align: 64, offset: 22528)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2349, file: !1370, line: 1552, baseType: !3350, size: 35328, offset: 23040)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3351, line: 430, size: 35328, elements: !3352)
!3351 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3352 = !{!3353, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382, !3383, !3384, !3385, !3386, !3387, !3390, !3391, !3392, !3393}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3350, file: !3351, line: 432, baseType: !3354, size: 192)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3355, size: 192, elements: !438)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3356, line: 16, size: 64, elements: !3357)
!3356 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3355, file: !3356, line: 17, baseType: !284, size: 16)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3355, file: !3356, line: 18, baseType: !284, size: 16, offset: 16)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3355, file: !3356, line: 19, baseType: !284, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3355, file: !3356, line: 19, baseType: !284, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3355, file: !3356, line: 19, baseType: !284, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3355, file: !3356, line: 19, baseType: !284, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3355, file: !3356, line: 19, baseType: !284, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3355, file: !3356, line: 20, baseType: !284, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3355, file: !3356, line: 20, baseType: !284, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3355, file: !3356, line: 20, baseType: !284, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3355, file: !3356, line: 20, baseType: !284, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3355, file: !3356, line: 20, baseType: !284, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3355, file: !3356, line: 20, baseType: !284, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3350, file: !3351, line: 436, baseType: !112, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3350, file: !3351, line: 440, baseType: !156, size: 16, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3350, file: !3351, line: 441, baseType: !156, size: 16, offset: 272)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3350, file: !3351, line: 442, baseType: !156, size: 16, offset: 288)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3350, file: !3351, line: 443, baseType: !156, size: 16, offset: 304)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3350, file: !3351, line: 447, baseType: !112, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3350, file: !3351, line: 448, baseType: !112, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3350, file: !3351, line: 459, baseType: !3379, size: 256, offset: 448)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3380, size: 256, elements: !609)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3351, line: 428, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3350, file: !3351, line: 461, baseType: !112, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3350, file: !3351, line: 463, baseType: !112, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3350, file: !3351, line: 465, baseType: !112, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3350, file: !3351, line: 466, baseType: !112, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3350, file: !3351, line: 467, baseType: !112, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3350, file: !3351, line: 473, baseType: !3388, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3351, line: 10, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3350, file: !3351, line: 480, baseType: !112, size: 64, offset: 1088)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3350, file: !3351, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3350, file: !3351, line: 491, baseType: !223, size: 32, offset: 1184)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3350, file: !3351, line: 501, baseType: !3394, size: 33792, offset: 1536)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3395, line: 448, size: 33792, elements: !3396)
!3395 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3396 = !{!3397, !3398, !3399, !3561, !3562, !3568, !3569}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3394, file: !3395, line: 461, baseType: !7, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3394, file: !3395, line: 468, baseType: !112, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3394, file: !3395, line: 476, baseType: !3400, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3395, line: 356, size: 33280, align: 512, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3401, file: !3395, line: 358, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3401, file: !3395, line: 361, baseType: !7, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3401, file: !3395, line: 364, baseType: !115, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3401, file: !3395, line: 367, baseType: !115, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3401, file: !3395, line: 370, baseType: !115, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3401, file: !3395, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3401, file: !3395, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3401, file: !3395, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3401, file: !3395, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3401, file: !3395, line: 397, baseType: !3413, size: 32768, offset: 512)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3395, line: 348, size: 32768, elements: !3414)
!3414 = !{!3415, !3430, !3467, !3544, !3557}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3413, file: !3395, line: 349, baseType: !3416, size: 896)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3395, line: 12, size: 896, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3429}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3416, file: !3395, line: 13, baseType: !223, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3416, file: !3395, line: 14, baseType: !223, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3416, file: !3395, line: 15, baseType: !223, size: 32, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3416, file: !3395, line: 16, baseType: !223, size: 32, offset: 96)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3416, file: !3395, line: 17, baseType: !223, size: 32, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3416, file: !3395, line: 18, baseType: !223, size: 32, offset: 160)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3416, file: !3395, line: 19, baseType: !223, size: 32, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3416, file: !3395, line: 22, baseType: !3426, size: 640, offset: 224)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 640, elements: !3427)
!3427 = !{!3428}
!3428 = !DISubrange(count: 20)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3416, file: !3395, line: 25, baseType: !223, size: 32, offset: 864)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3413, file: !3395, line: 350, baseType: !3431, size: 4096, align: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3395, line: 34, size: 4096, align: 128, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3452, !3453, !3454, !3456, !3458, !3462}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3431, file: !3395, line: 35, baseType: !284, size: 16)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3431, file: !3395, line: 36, baseType: !284, size: 16, offset: 16)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3431, file: !3395, line: 37, baseType: !284, size: 16, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3431, file: !3395, line: 38, baseType: !284, size: 16, offset: 48)
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3395, line: 39, baseType: !3438, size: 128, offset: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3395, line: 39, size: 128, elements: !3439)
!3439 = !{!3440, !3445}
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3395, line: 40, baseType: !3441, size: 128)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3395, line: 40, size: 128, elements: !3442)
!3442 = !{!3443, !3444}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3441, file: !3395, line: 41, baseType: !115, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3441, file: !3395, line: 42, baseType: !115, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3395, line: 44, baseType: !3446, size: 128)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3395, line: 44, size: 128, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3446, file: !3395, line: 45, baseType: !223, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3446, file: !3395, line: 46, baseType: !223, size: 32, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3446, file: !3395, line: 47, baseType: !223, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3446, file: !3395, line: 48, baseType: !223, size: 32, offset: 96)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3431, file: !3395, line: 51, baseType: !223, size: 32, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3431, file: !3395, line: 52, baseType: !223, size: 32, offset: 224)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3431, file: !3395, line: 55, baseType: !3455, size: 1024, offset: 256)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 1024, elements: !234)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3431, file: !3395, line: 58, baseType: !3457, size: 2048, offset: 1280)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2048, elements: !442)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3431, file: !3395, line: 60, baseType: !3459, size: 384, offset: 3328)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 384, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 12)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3395, line: 62, baseType: !3463, size: 384, offset: 3712)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3395, line: 62, size: 384, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3463, file: !3395, line: 63, baseType: !3459, size: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3463, file: !3395, line: 64, baseType: !3459, size: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3413, file: !3395, line: 351, baseType: !3468, size: 1088)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3395, line: 79, size: 1088, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3543}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3468, file: !3395, line: 80, baseType: !223, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3468, file: !3395, line: 81, baseType: !223, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3468, file: !3395, line: 82, baseType: !223, size: 32, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3468, file: !3395, line: 83, baseType: !223, size: 32, offset: 96)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3468, file: !3395, line: 84, baseType: !223, size: 32, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3468, file: !3395, line: 85, baseType: !223, size: 32, offset: 160)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3468, file: !3395, line: 86, baseType: !223, size: 32, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3468, file: !3395, line: 88, baseType: !3426, size: 640, offset: 224)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3468, file: !3395, line: 89, baseType: !277, size: 8, offset: 864)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3468, file: !3395, line: 90, baseType: !277, size: 8, offset: 872)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3468, file: !3395, line: 91, baseType: !277, size: 8, offset: 880)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3468, file: !3395, line: 92, baseType: !277, size: 8, offset: 888)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3468, file: !3395, line: 93, baseType: !277, size: 8, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3468, file: !3395, line: 94, baseType: !277, size: 8, offset: 904)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3468, file: !3395, line: 95, baseType: !3485, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3487, line: 11, size: 128, elements: !3488)
!3487 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3486, file: !3487, line: 12, baseType: !472, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3486, file: !3487, line: 13, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3493, line: 103, size: 1344, elements: !3494)
!3493 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3523, !3524, !3525}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3492, file: !3493, line: 109, baseType: !112, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3492, file: !3493, line: 110, baseType: !112, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3492, file: !3493, line: 111, baseType: !112, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3492, file: !3493, line: 112, baseType: !112, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3492, file: !3493, line: 113, baseType: !112, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3492, file: !3493, line: 114, baseType: !112, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3492, file: !3493, line: 117, baseType: !112, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3492, file: !3493, line: 118, baseType: !112, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3492, file: !3493, line: 119, baseType: !112, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3492, file: !3493, line: 120, baseType: !112, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3492, file: !3493, line: 121, baseType: !112, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3492, file: !3493, line: 122, baseType: !112, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3492, file: !3493, line: 123, baseType: !112, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3492, file: !3493, line: 124, baseType: !112, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3492, file: !3493, line: 125, baseType: !112, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3492, file: !3493, line: 139, baseType: !112, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3492, file: !3493, line: 142, baseType: !112, size: 64, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3492, file: !3493, line: 144, baseType: !3513, size: 64, offset: 1088)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3492, file: !3493, line: 144, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3513, file: !3493, line: 146, baseType: !284, size: 16)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3513, file: !3493, line: 148, baseType: !115, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3513, file: !3493, line: 150, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3493, line: 59, size: 64, elements: !3519)
!3519 = !{!3520, !3521, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3518, file: !3493, line: 61, baseType: !115, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3518, file: !3493, line: 63, baseType: !115, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3518, file: !3493, line: 65, baseType: !115, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !3493, line: 153, baseType: !112, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3492, file: !3493, line: 154, baseType: !112, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3492, file: !3493, line: 156, baseType: !3526, size: 64, offset: 1280)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3492, file: !3493, line: 156, size: 64, elements: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3526, file: !3493, line: 158, baseType: !284, size: 16)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3526, file: !3493, line: 160, baseType: !115, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3526, file: !3493, line: 162, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3493, line: 69, size: 64, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3531, file: !3493, line: 71, baseType: !115, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3531, file: !3493, line: 73, baseType: !115, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3531, file: !3493, line: 75, baseType: !115, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3531, file: !3493, line: 77, baseType: !115, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3531, file: !3493, line: 80, baseType: !115, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3531, file: !3493, line: 83, baseType: !115, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3531, file: !3493, line: 86, baseType: !115, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3531, file: !3493, line: 88, baseType: !115, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3531, file: !3493, line: 93, baseType: !115, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3531, file: !3493, line: 100, baseType: !115, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3468, file: !3395, line: 96, baseType: !223, size: 32, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3413, file: !3395, line: 352, baseType: !3545, size: 4608, align: 512)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3395, line: 333, size: 4608, align: 512, elements: !3546)
!3546 = !{!3547, !3548, !3555}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3545, file: !3395, line: 334, baseType: !3431, size: 4096, align: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3545, file: !3395, line: 335, baseType: !3549, size: 512, offset: 4096)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3395, line: 312, size: 512, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3549, file: !3395, line: 313, baseType: !115, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3549, file: !3395, line: 314, baseType: !115, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3549, file: !3395, line: 315, baseType: !3554, size: 384, offset: 128)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 384, elements: !731)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3545, file: !3395, line: 336, baseType: !3556, offset: 4608)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, elements: !628)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3413, file: !3395, line: 353, baseType: !3558, size: 32768)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 32768, elements: !3559)
!3559 = !{!3560}
!3560 = !DISubrange(count: 4096)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3394, file: !3395, line: 484, baseType: !3400, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3394, file: !3395, line: 491, baseType: !3563, size: 128, offset: 256)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3395, line: 404, size: 128, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3563, file: !3395, line: 424, baseType: !115, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3563, file: !3395, line: 432, baseType: !7, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3563, file: !3395, line: 440, baseType: !7, size: 32, offset: 96)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3394, file: !3395, line: 498, baseType: !3563, size: 128, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3394, file: !3395, line: 508, baseType: !3401, size: 33280, align: 512, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2331, file: !2332, line: 16, baseType: !613, size: 192, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2331, file: !2332, line: 17, baseType: !268, size: 32, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !347, file: !44, line: 1240, baseType: !111, size: 64, offset: 6912)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !347, file: !44, line: 1243, baseType: !223, size: 32, offset: 6976)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !347, file: !44, line: 1245, baseType: !701, size: 64, offset: 7040)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !347, file: !44, line: 1246, baseType: !701, size: 64, offset: 7104)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !347, file: !44, line: 1248, baseType: !224, size: 32, offset: 7168)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !347, file: !44, line: 1249, baseType: !3578, size: 64, offset: 7232)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 634, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !347, file: !44, line: 1252, baseType: !3581, size: 256, offset: 7296)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !234)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !347, file: !44, line: 1253, baseType: !3583, size: 128, offset: 7552)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3584, line: 21, baseType: !3585)
!3584 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3584, line: 19, size: 128, elements: !3586)
!3586 = !{!3587}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3585, file: !3584, line: 20, baseType: !3588, size: 128)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 128, elements: !2771)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !347, file: !44, line: 1255, baseType: !7, size: 32, offset: 7680)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !347, file: !44, line: 1261, baseType: !549, size: 256, offset: 7744)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !347, file: !44, line: 1267, baseType: !309, size: 64, offset: 8000)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !347, file: !44, line: 1269, baseType: !289, size: 64, offset: 8064)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !347, file: !44, line: 1271, baseType: !3594, size: 448, offset: 8128)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2111, line: 63, size: 448, elements: !3595)
!3595 = !{!3596, !3601, !3602, !3603, !3604, !3605, !3606}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3594, file: !2111, line: 64, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!112, !3600, !2109}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3594, file: !2111, line: 66, baseType: !3597, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3594, file: !2111, line: 69, baseType: !472, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3594, file: !2111, line: 70, baseType: !272, size: 32, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3594, file: !2111, line: 71, baseType: !7, size: 32, offset: 224)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3594, file: !2111, line: 74, baseType: !134, size: 128, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3594, file: !2111, line: 85, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !347, file: !44, line: 1274, baseType: !540, size: 64, offset: 8576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !347, file: !44, line: 1280, baseType: !540, size: 64, offset: 8640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !347, file: !44, line: 1283, baseType: !272, size: 32, offset: 8704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !347, file: !44, line: 1286, baseType: !1457, size: 32, offset: 8736)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !347, file: !44, line: 1289, baseType: !1930, size: 64, offset: 8768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !347, file: !44, line: 1290, baseType: !600, size: 64, offset: 8832)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !347, file: !44, line: 1297, baseType: !827, size: 64, offset: 8896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !347, file: !44, line: 1304, baseType: !3616, size: 64, offset: 8960)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3617, line: 49, size: 64, elements: !3618)
!3617 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3616, file: !3617, line: 50, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3617, line: 41, size: 512, align: 512, elements: !3622)
!3622 = !{!3623, !3624, !3629}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3621, file: !3617, line: 43, baseType: !248, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3621, file: !3617, line: 45, baseType: !3625, size: 192, offset: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3617, line: 29, size: 192, elements: !3626)
!3626 = !{!3627, !3628}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3625, file: !3617, line: 30, baseType: !134, size: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3625, file: !3617, line: 32, baseType: !472, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3621, file: !3617, line: 46, baseType: !472, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !347, file: !44, line: 1305, baseType: !3616, size: 64, offset: 9024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !347, file: !44, line: 1306, baseType: !527, size: 128, align: 64, offset: 9088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !347, file: !44, line: 1307, baseType: !1176, size: 256, offset: 9216)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !347, file: !44, line: 1309, baseType: !549, size: 256, offset: 9472)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !347, file: !44, line: 1314, baseType: !272, size: 32, offset: 9728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !347, file: !44, line: 1317, baseType: !248, size: 32, align: 512, offset: 10240)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !347, file: !44, line: 1318, baseType: !134, size: 128, offset: 10304)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !347, file: !44, line: 1320, baseType: !248, size: 32, offset: 10432)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !347, file: !44, line: 1321, baseType: !134, size: 128, offset: 10496)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !341, file: !342, line: 73, baseType: !272, size: 32, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !341, file: !342, line: 74, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !652, line: 42, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !291, file: !191, line: 141, baseType: !3645, size: 64, offset: 704)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!272, !2171, !744}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !291, file: !191, line: 142, baseType: !3649, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!189, !189, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !190, file: !191, line: 96, baseType: !346, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !190, file: !191, line: 97, baseType: !112, size: 64, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !190, file: !191, line: 98, baseType: !111, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !191, line: 100, baseType: !3658, size: 128, offset: 1024)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !191, line: 100, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3658, file: !191, line: 101, baseType: !134, size: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3658, file: !191, line: 102, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !190, file: !191, line: 104, baseType: !134, size: 128, offset: 1152)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !190, file: !191, line: 105, baseType: !134, size: 128, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !190, file: !191, line: 113, baseType: !3666, size: 128, offset: 1408)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !191, line: 109, size: 128, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3666, file: !191, line: 110, baseType: !604, size: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3666, file: !191, line: 111, baseType: !205, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3666, file: !191, line: 112, baseType: !527, size: 128, align: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !183, file: !44, line: 1968, baseType: !3672, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!309, !189, !151, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3677, line: 10, size: 128, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3676, file: !3677, line: 11, baseType: !1497, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3676, file: !3677, line: 12, baseType: !111, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !183, file: !44, line: 1969, baseType: !3682, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!272, !3641, !151, !272}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !183, file: !44, line: 1970, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!177, !151, !272, !744}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !183, file: !44, line: 1972, baseType: !3690, size: 64, offset: 256)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!272, !189, !335, !272}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !183, file: !44, line: 1974, baseType: !3694, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!272, !3641, !151, !189, !155, !744}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !183, file: !44, line: 1976, baseType: !3698, size: 64, offset: 384)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!272, !189, !151, !189}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !183, file: !44, line: 1977, baseType: !3702, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!272, !151, !189}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !183, file: !44, line: 1978, baseType: !3706, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!272, !3641, !151, !189, !309}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !183, file: !44, line: 1980, baseType: !3710, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!272, !3641, !151, !189, !155}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !183, file: !44, line: 1982, baseType: !3702, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !183, file: !44, line: 1983, baseType: !3715, size: 64, offset: 704)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!272, !3641, !151, !189, !155, !351}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !183, file: !44, line: 1985, baseType: !3719, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!272, !3641, !151, !189, !151, !189, !7}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !183, file: !44, line: 1987, baseType: !3723, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!272, !3641, !189, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 226, size: 640, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3741, !3750, !3751, !3756, !3757, !3758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3727, file: !44, line: 227, baseType: !7, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3727, file: !44, line: 228, baseType: !155, size: 16, offset: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3727, file: !44, line: 241, baseType: !3732, size: 32, offset: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3727, file: !44, line: 241, size: 32, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3732, file: !44, line: 242, baseType: !159, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3732, file: !44, line: 243, baseType: !3736, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3737, line: 16, baseType: !3738)
!3737 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3737, line: 14, size: 32, elements: !3739)
!3739 = !{!3740}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3738, file: !3737, line: 15, baseType: !164, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3727, file: !44, line: 245, baseType: !3742, size: 32, offset: 96)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3727, file: !44, line: 245, size: 32, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3742, file: !44, line: 246, baseType: !169, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3742, file: !44, line: 247, baseType: !3746, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3737, line: 20, baseType: !3747)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3737, line: 18, size: 32, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3747, file: !3737, line: 19, baseType: !173, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3727, file: !44, line: 249, baseType: !356, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3727, file: !44, line: 250, baseType: !3752, size: 128, offset: 192)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !702, line: 13, size: 128, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3752, file: !702, line: 14, baseType: !701, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3752, file: !702, line: 15, baseType: !472, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3727, file: !44, line: 251, baseType: !3752, size: 128, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3727, file: !44, line: 252, baseType: !3752, size: 128, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3727, file: !44, line: 259, baseType: !514, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !183, file: !44, line: 1988, baseType: !3760, size: 64, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!272, !3641, !2171, !3763, !223, !7}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3765, line: 22, size: 1280, elements: !3766)
!3765 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3764, file: !3765, line: 23, baseType: !223, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3764, file: !3765, line: 24, baseType: !155, size: 16, offset: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3764, file: !3765, line: 25, baseType: !7, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3764, file: !3765, line: 26, baseType: !709, size: 32, offset: 96)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3764, file: !3765, line: 27, baseType: !115, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3764, file: !3765, line: 28, baseType: !115, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3764, file: !3765, line: 41, baseType: !115, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3764, file: !3765, line: 42, baseType: !351, size: 32, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3764, file: !3765, line: 43, baseType: !351, size: 32, offset: 352)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3764, file: !3765, line: 44, baseType: !159, size: 32, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3764, file: !3765, line: 45, baseType: !169, size: 32, offset: 416)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3764, file: !3765, line: 46, baseType: !356, size: 64, offset: 448)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3764, file: !3765, line: 47, baseType: !3752, size: 128, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3764, file: !3765, line: 48, baseType: !3752, size: 128, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3764, file: !3765, line: 49, baseType: !3752, size: 128, offset: 768)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3764, file: !3765, line: 50, baseType: !3752, size: 128, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3764, file: !3765, line: 51, baseType: !115, size: 64, offset: 1024)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3764, file: !3765, line: 52, baseType: !115, size: 64, offset: 1088)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3764, file: !3765, line: 53, baseType: !223, size: 32, offset: 1152)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3764, file: !3765, line: 54, baseType: !223, size: 32, offset: 1184)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3764, file: !3765, line: 55, baseType: !115, size: 64, offset: 1216)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !183, file: !44, line: 1990, baseType: !3789, size: 64, offset: 960)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!469, !189, !335, !482}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !183, file: !44, line: 1991, baseType: !3793, size: 64, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!272, !151, !3796, !115, !115}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 55, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !183, file: !44, line: 1993, baseType: !3799, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!272, !151, !272}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !183, file: !44, line: 1994, baseType: !3803, size: 64, offset: 1152)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!272, !151, !189, !514, !7, !155}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !183, file: !44, line: 1997, baseType: !3807, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!272, !3641, !151, !514, !155}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !183, file: !44, line: 1999, baseType: !3811, size: 64, offset: 1280)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!177, !3641, !189, !272}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !183, file: !44, line: 2001, baseType: !3815, size: 64, offset: 1344)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!272, !3641, !189, !177, !272}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !183, file: !44, line: 2003, baseType: !3819, size: 64, offset: 1408)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!272, !3641, !189, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !44, line: 76, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !183, file: !44, line: 2005, baseType: !3825, size: 64, offset: 1472)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!272, !189, !3822}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !183, file: !44, line: 2006, baseType: !3829, size: 64, offset: 1536)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!3832, !151}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !44, line: 3192, size: 192, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3833, file: !44, line: 3193, baseType: !957, size: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3833, file: !44, line: 3194, baseType: !223, size: 32, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !152, file: !44, line: 655, baseType: !346, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !152, file: !44, line: 656, baseType: !147, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !152, file: !44, line: 659, baseType: !111, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !152, file: !44, line: 663, baseType: !112, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !44, line: 671, baseType: !3842, size: 32, offset: 704)
!3842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !44, line: 671, size: 32, elements: !3843)
!3843 = !{!3844, !3846}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3842, file: !44, line: 672, baseType: !3845, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3842, file: !44, line: 673, baseType: !7, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !152, file: !44, line: 675, baseType: !351, size: 32, offset: 736)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !152, file: !44, line: 676, baseType: !356, size: 64, offset: 768)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !152, file: !44, line: 677, baseType: !3752, size: 128, offset: 832)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !152, file: !44, line: 678, baseType: !3752, size: 128, offset: 960)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !152, file: !44, line: 679, baseType: !3752, size: 128, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !152, file: !44, line: 680, baseType: !248, size: 32, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !152, file: !44, line: 681, baseType: !156, size: 16, offset: 1248)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !152, file: !44, line: 682, baseType: !277, size: 8, offset: 1264)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !152, file: !44, line: 683, baseType: !277, size: 8, offset: 1272)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !152, file: !44, line: 684, baseType: !2244, size: 64, offset: 1280)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !152, file: !44, line: 691, baseType: !112, size: 64, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !152, file: !44, line: 692, baseType: !685, size: 320, offset: 1408)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !152, file: !44, line: 694, baseType: !112, size: 64, offset: 1728)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !152, file: !44, line: 695, baseType: !112, size: 64, offset: 1792)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !152, file: !44, line: 697, baseType: !604, size: 128, offset: 1856)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !152, file: !44, line: 698, baseType: !134, size: 128, offset: 1984)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !152, file: !44, line: 707, baseType: !134, size: 128, offset: 2112)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !152, file: !44, line: 708, baseType: !134, size: 128, offset: 2240)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !44, line: 709, baseType: !3866, size: 128, offset: 2368)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !44, line: 709, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3866, file: !44, line: 710, baseType: !600, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3866, file: !44, line: 711, baseType: !527, size: 128, align: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !152, file: !44, line: 713, baseType: !542, size: 64, offset: 2496)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !152, file: !44, line: 714, baseType: !542, size: 64, offset: 2560)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !152, file: !44, line: 715, baseType: !268, size: 32, offset: 2624)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !152, file: !44, line: 716, baseType: !268, size: 32, offset: 2656)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !152, file: !44, line: 717, baseType: !268, size: 32, offset: 2688)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !152, file: !44, line: 719, baseType: !268, size: 32, offset: 2720)
!3876 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !44, line: 721, baseType: !3877, size: 64, offset: 2752)
!3877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !44, line: 721, size: 64, elements: !3878)
!3878 = !{!3879, !3880}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3877, file: !44, line: 722, baseType: !863, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3877, file: !44, line: 723, baseType: !1998, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !152, file: !44, line: 725, baseType: !3882, size: 64, offset: 2816)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 725, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !152, file: !44, line: 726, baseType: !148, size: 1536, align: 64, offset: 2880)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !152, file: !44, line: 727, baseType: !134, size: 128, offset: 4416)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !44, line: 728, baseType: !3887, size: 64, offset: 4544)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !44, line: 728, size: 64, elements: !3888)
!3888 = !{!3889, !3890, !3893, !3894}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3887, file: !44, line: 729, baseType: !1368, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3887, file: !44, line: 730, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 730, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3887, file: !44, line: 731, baseType: !335, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3887, file: !44, line: 732, baseType: !7, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !152, file: !44, line: 735, baseType: !224, size: 32, offset: 4608)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !152, file: !44, line: 738, baseType: !224, size: 32, offset: 4640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !152, file: !44, line: 739, baseType: !3578, size: 64, offset: 4672)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !152, file: !44, line: 750, baseType: !111, size: 64, offset: 4736)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !148, file: !44, line: 474, baseType: !957, size: 128, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !148, file: !44, line: 475, baseType: !685, size: 320, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !148, file: !44, line: 476, baseType: !962, size: 32, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !148, file: !44, line: 477, baseType: !268, size: 32, offset: 544)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !148, file: !44, line: 482, baseType: !2518, size: 128, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !148, file: !44, line: 483, baseType: !112, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !148, file: !44, line: 484, baseType: !112, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !148, file: !44, line: 485, baseType: !3907, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 404, size: 1280, elements: !3910)
!3910 = !{!3911, !3915, !3985, !3989, !3993, !3999, !4003, !4007, !4012, !4016, !4020, !4024, !4025, !4029, !4033, !4037, !4042, !4046, !4053, !4054}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3909, file: !44, line: 405, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!272, !120, !2010}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3909, file: !44, line: 406, baseType: !3916, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!272, !514, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !22, line: 293, size: 1536, elements: !3921)
!3921 = !{!3922, !3952, !3966}
!3922 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !22, line: 295, baseType: !3923, size: 512)
!3923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !22, line: 295, size: 512, elements: !3924)
!3924 = !{!3925, !3951}
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3923, file: !22, line: 296, baseType: !3926, size: 448)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3923, file: !22, line: 296, size: 448, elements: !3927)
!3927 = !{!3928, !3929, !3938, !3939, !3940, !3949, !3950}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3926, file: !22, line: 298, baseType: !112, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !22, line: 299, baseType: !3930, size: 128, offset: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !22, line: 299, size: 128, elements: !3931)
!3931 = !{!3932, !3933}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3930, file: !22, line: 300, baseType: !134, size: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !22, line: 302, baseType: !3934, size: 128)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3930, file: !22, line: 302, size: 128, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3934, file: !22, line: 303, baseType: !111, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3934, file: !22, line: 305, baseType: !7, size: 32, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3926, file: !22, line: 310, baseType: !147, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3926, file: !22, line: 311, baseType: !112, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !22, line: 312, baseType: !3941, size: 64, offset: 320)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !22, line: 312, size: 64, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3941, file: !22, line: 313, baseType: !111, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3941, file: !22, line: 314, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !22, line: 257, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 255, size: 64, elements: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3946, file: !22, line: 256, baseType: !112, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3926, file: !22, line: 316, baseType: !268, size: 32, offset: 384)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3926, file: !22, line: 317, baseType: !268, size: 32, offset: 416)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3923, file: !22, line: 323, baseType: !121, size: 512, align: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !22, line: 325, baseType: !3953, size: 512, offset: 512)
!3953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !22, line: 325, size: 512, elements: !3954)
!3954 = !{!3955, !3965}
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3953, file: !22, line: 326, baseType: !3956, size: 320)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3953, file: !22, line: 326, size: 320, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3956, file: !22, line: 327, baseType: !112, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3956, file: !22, line: 328, baseType: !112, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3956, file: !22, line: 329, baseType: !112, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3956, file: !22, line: 331, baseType: !268, size: 32, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3956, file: !22, line: 332, baseType: !268, size: 32, offset: 224)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3956, file: !22, line: 333, baseType: !268, size: 32, offset: 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3956, file: !22, line: 335, baseType: !7, size: 32, offset: 288)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3953, file: !22, line: 339, baseType: !121, size: 512, align: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !22, line: 341, baseType: !3967, size: 512, offset: 1024)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !22, line: 341, size: 512, elements: !3968)
!3968 = !{!3969, !3978, !3984}
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !3967, file: !22, line: 342, baseType: !3970, size: 384)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3967, file: !22, line: 342, size: 384, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3970, file: !22, line: 343, baseType: !112, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3970, file: !22, line: 344, baseType: !112, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3970, file: !22, line: 346, baseType: !111, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3970, file: !22, line: 347, baseType: !111, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3970, file: !22, line: 348, baseType: !111, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3970, file: !22, line: 349, baseType: !111, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !3967, file: !22, line: 352, baseType: !3979, size: 256)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3967, file: !22, line: 352, size: 256, elements: !3980)
!3980 = !{!3981, !3982, !3983}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3979, file: !22, line: 353, baseType: !112, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3979, file: !22, line: 354, baseType: !112, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3979, file: !22, line: 356, baseType: !134, size: 128, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3967, file: !22, line: 359, baseType: !121, size: 512, align: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3909, file: !44, line: 409, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!272, !147, !2010}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3909, file: !44, line: 412, baseType: !3990, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!744, !147, !3919}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3909, file: !44, line: 414, baseType: !3994, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 310, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3909, file: !44, line: 416, baseType: !4000, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!272, !514, !147, !356, !7, !3328, !1384}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3909, file: !44, line: 419, baseType: !4004, size: 64, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!272, !514, !147, !356, !7, !7, !120, !111}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3909, file: !44, line: 424, baseType: !4008, size: 64, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!4011, !147, !4011}
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !114, line: 131, baseType: !115)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3909, file: !44, line: 425, baseType: !4013, size: 64, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3919, !482, !482}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3909, file: !44, line: 426, baseType: !4017, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!744, !3919, !962}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3909, file: !44, line: 427, baseType: !4021, size: 64, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !3919}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3909, file: !44, line: 428, baseType: !882, size: 64, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3909, file: !44, line: 433, baseType: !4026, size: 64, offset: 768)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!272, !147, !3919, !3919, !72}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3909, file: !44, line: 435, baseType: !4030, size: 64, offset: 832)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!272, !3919}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3909, file: !44, line: 436, baseType: !4034, size: 64, offset: 896)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!744, !3919, !482, !482}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3909, file: !44, line: 438, baseType: !4038, size: 64, offset: 960)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !3919, !4041, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3909, file: !44, line: 439, baseType: !4043, size: 64, offset: 1024)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!272, !147, !120}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3909, file: !44, line: 442, baseType: !4047, size: 64, offset: 1088)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!272, !4050, !514, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 66, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3909, file: !44, line: 444, baseType: !1376, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3909, file: !44, line: 445, baseType: !4055, size: 64, offset: 1216)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!272, !885, !907}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !44, line: 486, baseType: !112, size: 64, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !148, file: !44, line: 487, baseType: !685, size: 320, offset: 960)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !148, file: !44, line: 488, baseType: !1457, size: 32, offset: 1280)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !148, file: !44, line: 489, baseType: !248, size: 32, offset: 1312)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !148, file: !44, line: 490, baseType: !134, size: 128, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !148, file: !44, line: 491, baseType: !111, size: 64, offset: 1472)
!4064 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !22, line: 107, baseType: !4065, size: 64, offset: 192)
!4065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !22, line: 107, size: 64, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4065, file: !22, line: 108, baseType: !112, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4065, file: !22, line: 109, baseType: !112, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !128, file: !22, line: 117, baseType: !112, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !22, line: 119, baseType: !4071, size: 320)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !22, line: 119, size: 320, elements: !4072)
!4072 = !{!4073, !4074, !4077, !4078, !4079}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4071, file: !22, line: 124, baseType: !112, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4071, file: !22, line: 125, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !22, line: 125, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4071, file: !22, line: 126, baseType: !112, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4071, file: !22, line: 127, baseType: !112, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !22, line: 128, baseType: !4080, size: 64, offset: 256)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4071, file: !22, line: 128, size: 64, elements: !4081)
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4080, file: !22, line: 133, baseType: !112, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4080, file: !22, line: 138, baseType: !540, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !22, line: 141, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !22, line: 141, size: 64, elements: !4086)
!4086 = !{!4087}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4085, file: !22, line: 142, baseType: !112, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !22, line: 144, baseType: !4089, size: 128)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !22, line: 144, size: 128, elements: !4090)
!4090 = !{!4091, !4162}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4089, file: !22, line: 146, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !80, line: 126, size: 1216, elements: !4094)
!4094 = !{!4095, !4105, !4126, !4127, !4128, !4129, !4130, !4144, !4145, !4146}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4093, file: !80, line: 127, baseType: !4096, size: 384)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !80, line: 21, size: 384, elements: !4097)
!4097 = !{!4098, !4099, !4101, !4102, !4103, !4104}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4096, file: !80, line: 22, baseType: !112, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4096, file: !80, line: 23, baseType: !4100, size: 64, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4096, file: !80, line: 24, baseType: !4100, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4096, file: !80, line: 25, baseType: !112, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4096, file: !80, line: 26, baseType: !112, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4096, file: !80, line: 27, baseType: !112, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4093, file: !80, line: 128, baseType: !4106, size: 128, offset: 384)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4107, line: 105, size: 128, elements: !4108)
!4107 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4106, file: !4107, line: 110, baseType: !112, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4106, file: !4107, line: 118, baseType: !4111, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4107, line: 95, size: 448, elements: !4113)
!4113 = !{!4114, !4115, !4121, !4122, !4123, !4124, !4125}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4112, file: !4107, line: 96, baseType: !540, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4112, file: !4107, line: 97, baseType: !4116, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4107, line: 60, baseType: !4118)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{null, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4112, file: !4107, line: 98, baseType: !4116, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4112, file: !4107, line: 99, baseType: !744, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4112, file: !4107, line: 100, baseType: !744, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4112, file: !4107, line: 101, baseType: !527, size: 128, align: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4112, file: !4107, line: 102, baseType: !4120, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4093, file: !80, line: 129, baseType: !1622, size: 256, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4093, file: !80, line: 130, baseType: !79, size: 32, offset: 768)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4093, file: !80, line: 131, baseType: !7, size: 32, offset: 800)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4093, file: !80, line: 132, baseType: !112, size: 64, offset: 832)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4093, file: !80, line: 133, baseType: !4131, size: 64, offset: 896)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4133)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !80, line: 77, size: 192, elements: !4134)
!4134 = !{!4135, !4139, !4140}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4133, file: !80, line: 83, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !120}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4133, file: !80, line: 89, baseType: !1242, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4133, file: !80, line: 100, baseType: !4141, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!272, !4092, !112, !112, !272}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4093, file: !80, line: 134, baseType: !111, size: 64, offset: 960)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4093, file: !80, line: 135, baseType: !272, size: 32, offset: 1024)
!4146 = !DIDerivedType(tag: DW_TAG_member, scope: !4093, file: !80, line: 136, baseType: !4147, size: 128, offset: 1088)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4093, file: !80, line: 136, size: 128, elements: !4148)
!4148 = !{!4149, !4155}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4147, file: !80, line: 137, baseType: !4150, size: 128)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4151, line: 6, size: 128, elements: !4152)
!4151 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4152 = !{!4153, !4154}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4150, file: !4151, line: 7, baseType: !115, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4150, file: !4151, line: 8, baseType: !115, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, scope: !4147, file: !80, line: 138, baseType: !4156)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4147, file: !80, line: 138, elements: !4157)
!4157 = !{!4158, !4160}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4156, file: !80, line: 138, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4156, file: !80, line: 138, elements: !1042)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4156, file: !80, line: 138, baseType: !4161)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4150, elements: !628)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4089, file: !22, line: 147, baseType: !111, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !125, file: !22, line: 161, baseType: !527, size: 128, align: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !22, line: 164, baseType: !4165, size: 32, offset: 384)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !22, line: 164, size: 32, elements: !4166)
!4166 = !{!4167, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4165, file: !22, line: 169, baseType: !268, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4165, file: !22, line: 177, baseType: !7, size: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !121, file: !22, line: 181, baseType: !268, size: 32, offset: 416)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ahash", file: !4172, line: 252, size: 832, elements: !4173)
!4172 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!4173 = !{!4174, !4583, !4584, !4585, !4586, !4587, !4591, !4595, !4599, !4600, !4601}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4171, file: !4172, line: 253, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!272, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ahash_request", file: !4172, line: 72, size: 640, elements: !4180)
!4180 = !{!4181, !4567, !4568, !4580, !4581, !4582}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4179, file: !4172, line: 73, baseType: !4182, size: 384)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_async_request", file: !4183, line: 172, size: 384, elements: !4184)
!4183 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!4184 = !{!4185, !4186, !4191, !4192, !4566}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4182, file: !4183, line: 173, baseType: !134, size: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4182, file: !4183, line: 174, baseType: !4187, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_completion_t", file: !4183, line: 163, baseType: !4188)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !111, !272}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4182, file: !4183, line: 175, baseType: !111, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !4182, file: !4183, line: 176, baseType: !4193, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !4183, line: 422, size: 256, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199, !4203, !4565}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4194, file: !4183, line: 423, baseType: !592, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !4194, file: !4183, line: 425, baseType: !223, size: 32, offset: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4194, file: !4183, line: 427, baseType: !272, size: 32, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4194, file: !4183, line: 429, baseType: !4200, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !4193}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !4194, file: !4183, line: 431, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !4183, line: 343, size: 3072, align: 64, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4219, !4220, !4530, !4558, !4559, !4560, !4564}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !4205, file: !4183, line: 344, baseType: !134, size: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !4205, file: !4183, line: 345, baseType: !134, size: 128, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !4205, file: !4183, line: 347, baseType: !223, size: 32, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !4205, file: !4183, line: 348, baseType: !7, size: 32, offset: 288)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !4205, file: !4183, line: 349, baseType: !7, size: 32, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !4205, file: !4183, line: 350, baseType: !7, size: 32, offset: 352)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !4205, file: !4183, line: 352, baseType: !272, size: 32, offset: 384)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !4205, file: !4183, line: 353, baseType: !592, size: 32, offset: 416)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !4205, file: !4183, line: 355, baseType: !4216, size: 1024, offset: 448)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 1024, elements: !4217)
!4217 = !{!4218}
!4218 = !DISubrange(count: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !4205, file: !4183, line: 356, baseType: !4216, size: 1024, offset: 1472)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !4205, file: !4183, line: 358, baseType: !4221, size: 64, offset: 2496)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !4224, line: 57, size: 512, elements: !4225)
!4224 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!4225 = !{!4226, !4230, !4234, !4238, !4242, !4481, !4526, !4527, !4528, !4529}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !4223, file: !4224, line: 58, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!7, !4204, !223, !223}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !4223, file: !4224, line: 59, baseType: !4231, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!7, !4204}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4223, file: !4224, line: 60, baseType: !4235, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!272, !4193}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4223, file: !4224, line: 61, baseType: !4239, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !1393, !4204}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !4223, file: !4224, line: 62, baseType: !4243, size: 64, offset: 256)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!272, !4246, !4204}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !4248, line: 840, size: 1792, elements: !4249)
!4248 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!4249 = !{!4250, !4269, !4270, !4275, !4279, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4464, !4466, !4467, !4469, !4470, !4471, !4472}
!4250 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4248, line: 841, baseType: !4251, size: 192)
!4251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4248, line: 841, size: 192, elements: !4252)
!4252 = !{!4253, !4266, !4267, !4268}
!4253 = !DIDerivedType(tag: DW_TAG_member, scope: !4251, file: !4248, line: 842, baseType: !4254, size: 192)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4251, file: !4248, line: 842, size: 192, elements: !4255)
!4255 = !{!4256, !4257, !4258}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4254, file: !4248, line: 844, baseType: !4246, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4254, file: !4248, line: 845, baseType: !4246, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4254, file: !4248, line: 847, baseType: !4259, size: 64, offset: 128)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4254, file: !4248, line: 847, size: 64, elements: !4260)
!4260 = !{!4261, !4265}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4259, file: !4248, line: 848, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !4264, line: 8, flags: DIFlagFwdDecl)
!4264 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !4259, file: !4248, line: 853, baseType: !112, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !4251, file: !4248, line: 856, baseType: !677, size: 192, align: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4251, file: !4248, line: 857, baseType: !134, size: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !4251, file: !4248, line: 858, baseType: !521, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !4247, file: !4248, line: 861, baseType: !1490, size: 64, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4248, line: 863, baseType: !4271, size: 64, offset: 256)
!4271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4248, line: 863, size: 64, elements: !4272)
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !4271, file: !4248, line: 864, baseType: !2467, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !4271, file: !4248, line: 865, baseType: !115, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !4247, file: !4248, line: 873, baseType: !4276, size: 384, align: 64, offset: 320)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 384, elements: !4277)
!4277 = !{!4278}
!4278 = !DISubrange(count: 48)
!4279 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4248, line: 875, baseType: !4280, size: 128, offset: 704)
!4280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4248, line: 875, size: 128, elements: !4281)
!4281 = !{!4282, !4290}
!4282 = !DIDerivedType(tag: DW_TAG_member, scope: !4280, file: !4248, line: 876, baseType: !4283, size: 128)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4280, file: !4248, line: 876, size: 128, elements: !4284)
!4284 = !{!4285, !4286}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !4283, file: !4248, line: 877, baseType: !112, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !4283, file: !4248, line: 878, baseType: !4287, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !4246}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !4280, file: !4248, line: 880, baseType: !134, size: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !4247, file: !4248, line: 887, baseType: !112, size: 64, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4247, file: !4248, line: 889, baseType: !7, size: 32, offset: 896)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !4247, file: !4248, line: 890, baseType: !7, size: 32, offset: 928)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !4247, file: !4248, line: 891, baseType: !285, size: 16, offset: 960)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !4247, file: !4248, line: 892, baseType: !285, size: 16, offset: 976)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !4247, file: !4248, line: 897, baseType: !285, size: 16, offset: 992)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !4247, file: !4248, line: 908, baseType: !4298, offset: 1008)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !4299)
!4299 = !{!4300}
!4300 = !DISubrange(count: 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !4247, file: !4248, line: 910, baseType: !278, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !4247, file: !4248, line: 911, baseType: !278, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !4247, file: !4248, line: 912, baseType: !278, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !4247, file: !4248, line: 913, baseType: !278, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !4247, file: !4248, line: 914, baseType: !278, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !4247, file: !4248, line: 915, baseType: !278, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !4247, file: !4248, line: 916, baseType: !278, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !4247, file: !4248, line: 918, baseType: !278, size: 8, offset: 1016)
!4309 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4248, line: 924, baseType: !4310, size: 448, offset: 1024)
!4310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4248, line: 924, size: 448, elements: !4311)
!4311 = !{!4312, !4389}
!4312 = !DIDerivedType(tag: DW_TAG_member, scope: !4310, file: !4248, line: 924, baseType: !4313, size: 448)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4310, file: !4248, line: 924, size: 448, elements: !4314)
!4314 = !{!4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4353, !4354, !4355, !4356, !4366, !4371, !4372, !4377, !4382, !4383, !4384, !4385, !4386, !4387, !4388}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4313, file: !4248, line: 924, baseType: !4298)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4313, file: !4248, line: 924, baseType: !278, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4313, file: !4248, line: 924, baseType: !278, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4313, file: !4248, line: 924, baseType: !4298, offset: 8)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4313, file: !4248, line: 924, baseType: !278, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4313, file: !4248, line: 924, baseType: !278, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4313, file: !4248, line: 924, baseType: !278, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4313, file: !4248, line: 924, baseType: !284, size: 16, offset: 48)
!4343 = !DIDerivedType(tag: DW_TAG_member, scope: !4313, file: !4248, line: 924, baseType: !4344, size: 32, offset: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4313, file: !4248, line: 924, size: 32, elements: !4345)
!4345 = !{!4346, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4344, file: !4248, line: 924, baseType: !4347, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !996, line: 44, baseType: !224)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !4248, line: 924, baseType: !4349, size: 32)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4344, file: !4248, line: 924, size: 32, elements: !4350)
!4350 = !{!4351, !4352}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4349, file: !4248, line: 924, baseType: !285, size: 16)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4349, file: !4248, line: 924, baseType: !285, size: 16, offset: 16)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4313, file: !4248, line: 924, baseType: !224, size: 32, offset: 96)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4313, file: !4248, line: 924, baseType: !272, size: 32, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4313, file: !4248, line: 924, baseType: !224, size: 32, offset: 160)
!4356 = !DIDerivedType(tag: DW_TAG_member, scope: !4313, file: !4248, line: 924, baseType: !4357, size: 32, offset: 192)
!4357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4313, file: !4248, line: 924, size: 32, elements: !4358)
!4358 = !{!4359, !4360}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4357, file: !4248, line: 924, baseType: !223, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, scope: !4357, file: !4248, line: 924, baseType: !4361, size: 32)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4357, file: !4248, line: 924, size: 32, elements: !4362)
!4362 = !{!4363, !4365}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4361, file: !4248, line: 924, baseType: !4364, size: 16)
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !996, line: 37, baseType: !285)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4361, file: !4248, line: 924, baseType: !285, size: 16, offset: 16)
!4366 = !DIDerivedType(tag: DW_TAG_member, scope: !4313, file: !4248, line: 924, baseType: !4367, size: 32, offset: 224)
!4367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4313, file: !4248, line: 924, size: 32, elements: !4368)
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4367, file: !4248, line: 924, baseType: !7, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4367, file: !4248, line: 924, baseType: !7, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4313, file: !4248, line: 924, baseType: !224, size: 32, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4313, file: !4248, line: 924, baseType: !4373, size: 32, offset: 288)
!4373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4313, file: !4248, line: 924, size: 32, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4373, file: !4248, line: 924, baseType: !224, size: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4373, file: !4248, line: 924, baseType: !224, size: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, scope: !4313, file: !4248, line: 924, baseType: !4378, size: 16, offset: 320)
!4378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4313, file: !4248, line: 924, size: 16, elements: !4379)
!4379 = !{!4380, !4381}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4378, file: !4248, line: 924, baseType: !4364, size: 16)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4378, file: !4248, line: 924, baseType: !278, size: 8)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 336)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 352)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 368)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4313, file: !4248, line: 924, baseType: !4364, size: 16, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 400)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 416)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4313, file: !4248, line: 924, baseType: !285, size: 16, offset: 432)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !4310, file: !4248, line: 924, baseType: !4390, size: 448)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4310, file: !4248, line: 924, size: 448, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4429, !4430, !4431, !4432, !4441, !4446, !4447, !4452, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4390, file: !4248, line: 924, baseType: !4298)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4390, file: !4248, line: 924, baseType: !278, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4390, file: !4248, line: 924, baseType: !278, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4390, file: !4248, line: 924, baseType: !4298, offset: 8)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4390, file: !4248, line: 924, baseType: !278, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4390, file: !4248, line: 924, baseType: !278, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4390, file: !4248, line: 924, baseType: !278, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4390, file: !4248, line: 924, baseType: !284, size: 16, offset: 48)
!4420 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !4248, line: 924, baseType: !4421, size: 32, offset: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4390, file: !4248, line: 924, size: 32, elements: !4422)
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4421, file: !4248, line: 924, baseType: !4347, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, scope: !4421, file: !4248, line: 924, baseType: !4425, size: 32)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4421, file: !4248, line: 924, size: 32, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4425, file: !4248, line: 924, baseType: !285, size: 16)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4425, file: !4248, line: 924, baseType: !285, size: 16, offset: 16)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4390, file: !4248, line: 924, baseType: !224, size: 32, offset: 96)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4390, file: !4248, line: 924, baseType: !272, size: 32, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4390, file: !4248, line: 924, baseType: !224, size: 32, offset: 160)
!4432 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !4248, line: 924, baseType: !4433, size: 32, offset: 192)
!4433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4390, file: !4248, line: 924, size: 32, elements: !4434)
!4434 = !{!4435, !4436}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4433, file: !4248, line: 924, baseType: !223, size: 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, scope: !4433, file: !4248, line: 924, baseType: !4437, size: 32)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4433, file: !4248, line: 924, size: 32, elements: !4438)
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4437, file: !4248, line: 924, baseType: !4364, size: 16)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4437, file: !4248, line: 924, baseType: !285, size: 16, offset: 16)
!4441 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !4248, line: 924, baseType: !4442, size: 32, offset: 224)
!4442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4390, file: !4248, line: 924, size: 32, elements: !4443)
!4443 = !{!4444, !4445}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4442, file: !4248, line: 924, baseType: !7, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4442, file: !4248, line: 924, baseType: !7, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4390, file: !4248, line: 924, baseType: !224, size: 32, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !4248, line: 924, baseType: !4448, size: 32, offset: 288)
!4448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4390, file: !4248, line: 924, size: 32, elements: !4449)
!4449 = !{!4450, !4451}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4448, file: !4248, line: 924, baseType: !224, size: 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4448, file: !4248, line: 924, baseType: !224, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !4248, line: 924, baseType: !4453, size: 16, offset: 320)
!4453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4390, file: !4248, line: 924, size: 16, elements: !4454)
!4454 = !{!4455, !4456}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4453, file: !4248, line: 924, baseType: !4364, size: 16)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4453, file: !4248, line: 924, baseType: !278, size: 8)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 336)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 352)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 368)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4390, file: !4248, line: 924, baseType: !4364, size: 16, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 400)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 416)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4390, file: !4248, line: 924, baseType: !285, size: 16, offset: 432)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4247, file: !4248, line: 1047, baseType: !4465, size: 32, offset: 1472)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !4248, line: 683, baseType: !7)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4247, file: !4248, line: 1048, baseType: !4465, size: 32, offset: 1504)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4247, file: !4248, line: 1049, baseType: !4468, size: 64, offset: 1536)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4247, file: !4248, line: 1050, baseType: !4468, size: 64, offset: 1600)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !4247, file: !4248, line: 1051, baseType: !7, size: 32, offset: 1664)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4247, file: !4248, line: 1052, baseType: !592, size: 32, offset: 1696)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !4247, file: !4248, line: 1056, baseType: !4473, size: 64, offset: 1728)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !4248, line: 4679, size: 64, elements: !4475)
!4475 = !{!4476, !4477, !4479, !4480}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4474, file: !4248, line: 4680, baseType: !592, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4474, file: !4248, line: 4681, baseType: !4478, size: 8, offset: 32)
!4478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 8, elements: !2584)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !4474, file: !4248, line: 4682, baseType: !277, size: 8, offset: 40)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4474, file: !4248, line: 4683, baseType: !3200, align: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4223, file: !4224, line: 63, baseType: !4482, size: 64, offset: 320)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !4485}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !4224, line: 74, size: 3520, elements: !4487)
!4487 = !{!4488, !4489, !4504, !4523, !4524}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4486, file: !4224, line: 75, baseType: !4205, size: 3072, align: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !4486, file: !4224, line: 77, baseType: !4490, size: 64, offset: 3072)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !4224, line: 91, size: 1344, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4503}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4491, file: !4224, line: 92, baseType: !134, size: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !4491, file: !4224, line: 93, baseType: !600, size: 64, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4491, file: !4224, line: 94, baseType: !384, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4491, file: !4224, line: 96, baseType: !4497, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!272, !4490, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !4224, line: 52, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4491, file: !4224, line: 98, baseType: !4216, size: 1024, offset: 320)
!4504 = !DIDerivedType(tag: DW_TAG_member, scope: !4486, file: !4224, line: 79, baseType: !4505, size: 128, offset: 3136)
!4505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4486, file: !4224, line: 79, size: 128, elements: !4506)
!4506 = !{!4507, !4508}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4505, file: !4224, line: 81, baseType: !604, size: 128)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !4505, file: !4224, line: 83, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !4224, line: 101, size: 384, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4519, !4520, !4521, !4522}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4510, file: !4224, line: 102, baseType: !134, size: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4510, file: !4224, line: 103, baseType: !4204, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, scope: !4510, file: !4224, line: 104, baseType: !4515, size: 64, offset: 192)
!4515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4510, file: !4224, line: 104, size: 64, elements: !4516)
!4516 = !{!4517, !4518}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !4515, file: !4224, line: 106, baseType: !4485, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4515, file: !4224, line: 108, baseType: !4509, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4510, file: !4224, line: 110, baseType: !4221, size: 64, offset: 256)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4510, file: !4224, line: 111, baseType: !223, size: 32, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4510, file: !4224, line: 112, baseType: !744, size: 8, offset: 352)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4510, file: !4224, line: 113, baseType: !744, size: 8, offset: 360)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !4486, file: !4224, line: 86, baseType: !1176, size: 256, offset: 3264)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4486, file: !4224, line: 88, baseType: !4525, align: 64, offset: 3520)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !628)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4223, file: !4224, line: 68, baseType: !7, size: 32, offset: 384)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !4223, file: !4224, line: 69, baseType: !7, size: 32, offset: 416)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !4223, file: !4224, line: 70, baseType: !7, size: 32, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !4223, file: !4224, line: 71, baseType: !7, size: 32, offset: 480)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !4205, file: !4183, line: 363, baseType: !4531, size: 256, offset: 2560)
!4531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4205, file: !4183, line: 360, size: 256, elements: !4532)
!4532 = !{!4533, !4550}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !4531, file: !4183, line: 361, baseType: !4534, size: 256)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !4183, line: 235, size: 256, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4544, !4549}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !4534, file: !4183, line: 236, baseType: !7, size: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !4534, file: !4183, line: 237, baseType: !7, size: 32, offset: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !4534, file: !4183, line: 238, baseType: !4539, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!272, !4193, !4542, !7}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !4534, file: !4183, line: 240, baseType: !4545, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !4193, !4548, !4542}
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !4534, file: !4183, line: 241, baseType: !4545, size: 64, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !4531, file: !4183, line: 362, baseType: !4551, size: 128)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !4183, line: 255, size: 128, elements: !4552)
!4552 = !{!4553, !4557}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !4551, file: !4183, line: 256, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!272, !4193, !4542, !7, !4548, !1720}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !4551, file: !4183, line: 258, baseType: !4554, size: 64, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !4205, file: !4183, line: 365, baseType: !4235, size: 64, offset: 2816)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !4205, file: !4183, line: 366, baseType: !4200, size: 64, offset: 2880)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !4205, file: !4183, line: 367, baseType: !4561, size: 64, offset: 2944)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !4204}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !4205, file: !4183, line: 369, baseType: !384, size: 64, offset: 3008)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !4194, file: !4183, line: 433, baseType: !4525, align: 64, offset: 256)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4182, file: !4183, line: 178, baseType: !223, size: 32, offset: 320)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4179, file: !4172, line: 75, baseType: !7, size: 32, offset: 384)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4179, file: !4172, line: 76, baseType: !4569, size: 64, offset: 448)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4571, line: 11, size: 256, elements: !4572)
!4571 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4572 = !{!4573, !4574, !4575, !4576, !4578, !4579}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4570, file: !4571, line: 12, baseType: !112, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4570, file: !4571, line: 13, baseType: !7, size: 32, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4570, file: !4571, line: 14, baseType: !7, size: 32, offset: 96)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4570, file: !4571, line: 15, baseType: !4577, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !114, line: 149, baseType: !115)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4570, file: !4571, line: 17, baseType: !7, size: 32, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4570, file: !4571, line: 20, baseType: !7, size: 32, offset: 224)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4179, file: !4172, line: 77, baseType: !4548, size: 64, offset: 512)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4179, file: !4172, line: 80, baseType: !111, size: 64, offset: 576)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4179, file: !4172, line: 82, baseType: !4525, align: 64, offset: 640)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4171, file: !4172, line: 254, baseType: !4175, size: 64, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4171, file: !4172, line: 255, baseType: !4175, size: 64, offset: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4171, file: !4172, line: 256, baseType: !4175, size: 64, offset: 192)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4171, file: !4172, line: 257, baseType: !4175, size: 64, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4171, file: !4172, line: 258, baseType: !4588, size: 64, offset: 320)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!272, !4178, !111}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4171, file: !4172, line: 259, baseType: !4592, size: 64, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!272, !4178, !1137}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4171, file: !4172, line: 260, baseType: !4596, size: 64, offset: 448)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!272, !4170, !4542, !7}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4171, file: !4172, line: 263, baseType: !7, size: 32, offset: 512)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "reqsize", scope: !4171, file: !4172, line: 264, baseType: !7, size: 32, offset: 544)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4171, file: !4172, line: 265, baseType: !4194, size: 256, offset: 576)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !4172, line: 70, size: 3136, elements: !4604)
!4604 = !{!4605, !4606, !4607}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4603, file: !4172, line: 70, baseType: !7, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4603, file: !4172, line: 70, baseType: !7, size: 32, offset: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4603, file: !4172, line: 70, baseType: !4205, size: 3072, align: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ahash_instance", file: !4610, line: 32, size: 4352, elements: !4611)
!4610 = !DIFile(filename: "./include/crypto/internal/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed36183aa18097edaf56e7e16397323")
!4611 = !{!4612, !4616}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4609, file: !4610, line: 33, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !4608}
!4616 = !DIDerivedType(tag: DW_TAG_member, scope: !4609, file: !4610, line: 34, baseType: !4617, size: 4288, offset: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4609, file: !4610, line: 34, size: 4288, elements: !4618)
!4618 = !{!4619, !4627}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4617, file: !4610, line: 38, baseType: !4620, size: 4288)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4617, file: !4610, line: 35, size: 4288, elements: !4621)
!4621 = !{!4622, !4626}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4620, file: !4610, line: 36, baseType: !4623, size: 768)
!4623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 768, elements: !4624)
!4624 = !{!4625}
!4625 = !DISubrange(count: 96)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4620, file: !4610, line: 37, baseType: !4486, size: 3520, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4617, file: !4610, line: 39, baseType: !4628, size: 3840)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ahash_alg", file: !4172, line: 158, size: 3840, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4642, !4646, !4650}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4628, file: !4172, line: 159, baseType: !4175, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4628, file: !4172, line: 160, baseType: !4175, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4628, file: !4172, line: 161, baseType: !4175, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4628, file: !4172, line: 162, baseType: !4175, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4628, file: !4172, line: 163, baseType: !4175, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4628, file: !4172, line: 164, baseType: !4588, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4628, file: !4172, line: 165, baseType: !4592, size: 64, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4628, file: !4172, line: 166, baseType: !4596, size: 64, offset: 448)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4628, file: !4172, line: 168, baseType: !4639, size: 64, offset: 512)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!272, !4170}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !4628, file: !4172, line: 169, baseType: !4643, size: 64, offset: 576)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !4170}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !4628, file: !4172, line: 170, baseType: !4647, size: 64, offset: 640)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!272, !4170, !4170}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !4628, file: !4172, line: 172, baseType: !4603, size: 3136, offset: 704)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4653 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !272)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !4172, line: 225, size: 3904, elements: !4659)
!4659 = !{!4660, !4674, !4678, !4682, !4686, !4687, !4691, !4695, !4699, !4703, !4707, !4711, !4712}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4658, file: !4172, line: 226, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!272, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !4172, line: 175, size: 64, elements: !4666)
!4666 = !{!4667, !4673}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !4665, file: !4172, line: 176, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !4172, line: 268, size: 320, elements: !4670)
!4670 = !{!4671, !4672}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4669, file: !4172, line: 269, baseType: !7, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4669, file: !4172, line: 270, baseType: !4194, size: 256, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !4665, file: !4172, line: 177, baseType: !4525, align: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !4658, file: !4172, line: 227, baseType: !4675, size: 64, offset: 64)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!272, !4664, !4542, !7}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !4658, file: !4172, line: 229, baseType: !4679, size: 64, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!272, !4664, !4548}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !4658, file: !4172, line: 230, baseType: !4683, size: 64, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!272, !4664, !4542, !7, !4548}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !4658, file: !4172, line: 232, baseType: !4683, size: 64, offset: 256)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4658, file: !4172, line: 234, baseType: !4688, size: 64, offset: 320)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!272, !4664, !111}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !4658, file: !4172, line: 235, baseType: !4692, size: 64, offset: 384)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!272, !4664, !1137}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !4658, file: !4172, line: 236, baseType: !4696, size: 64, offset: 448)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!272, !4668, !4542, !7}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !4658, file: !4172, line: 238, baseType: !4700, size: 64, offset: 512)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!272, !4668}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !4658, file: !4172, line: 239, baseType: !4704, size: 64, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4668}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !4658, file: !4172, line: 240, baseType: !4708, size: 64, offset: 640)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!272, !4668, !4668}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !4658, file: !4172, line: 242, baseType: !7, size: 32, offset: 704)
!4712 = !DIDerivedType(tag: DW_TAG_member, scope: !4658, file: !4172, line: 244, baseType: !4713, size: 3136, offset: 768)
!4713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4658, file: !4172, line: 244, size: 3136, elements: !4714)
!4714 = !{!4715, !4721}
!4715 = !DIDerivedType(tag: DW_TAG_member, scope: !4713, file: !4172, line: 245, baseType: !4716, size: 3136)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4713, file: !4172, line: 245, size: 3136, elements: !4717)
!4717 = !{!4718, !4719, !4720}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !4716, file: !4172, line: 245, baseType: !7, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !4716, file: !4172, line: 245, baseType: !7, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4716, file: !4172, line: 245, baseType: !4205, size: 3072, align: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !4713, file: !4172, line: 246, baseType: !4603, size: 3136)
!4722 = !{!0, !4723, !4725, !4727, !4729, !4731, !4733, !4735, !4737, !4739, !4741, !4743, !4745, !4747, !4749, !4754, !4756, !4758, !4763, !4768, !4773, !4779, !4782, !4787, !4789, !4794, !4799, !4802, !4805, !4807}
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_hash_walk_first345", scope: !2, file: !3, line: 128, type: !111, isLocal: true, isDefinition: true)
!4725 = !DIGlobalVariableExpression(var: !4726, expr: !DIExpression())
!4726 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_ahash_setkey346", scope: !2, file: !3, line: 184, type: !111, isLocal: true, isDefinition: true)
!4727 = !DIGlobalVariableExpression(var: !4728, expr: !DIExpression())
!4728 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_ahash_final347", scope: !2, file: !3, line: 312, type: !111, isLocal: true, isDefinition: true)
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_ahash_finup348", scope: !2, file: !3, line: 328, type: !111, isLocal: true, isDefinition: true)
!4731 = !DIGlobalVariableExpression(var: !4732, expr: !DIExpression())
!4732 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_ahash_digest349", scope: !2, file: !3, line: 347, type: !111, isLocal: true, isDefinition: true)
!4733 = !DIGlobalVariableExpression(var: !4734, expr: !DIExpression())
!4734 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_grab_ahash350", scope: !2, file: !3, line: 527, type: !111, isLocal: true, isDefinition: true)
!4735 = !DIGlobalVariableExpression(var: !4736, expr: !DIExpression())
!4736 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alloc_ahash351", scope: !2, file: !3, line: 534, type: !111, isLocal: true, isDefinition: true)
!4737 = !DIGlobalVariableExpression(var: !4738, expr: !DIExpression())
!4738 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_has_ahash352", scope: !2, file: !3, line: 540, type: !111, isLocal: true, isDefinition: true)
!4739 = !DIGlobalVariableExpression(var: !4740, expr: !DIExpression())
!4740 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_clone_ahash353", scope: !2, file: !3, line: 592, type: !111, isLocal: true, isDefinition: true)
!4741 = !DIGlobalVariableExpression(var: !4742, expr: !DIExpression())
!4742 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_register_ahash354", scope: !2, file: !3, line: 623, type: !111, isLocal: true, isDefinition: true)
!4743 = !DIGlobalVariableExpression(var: !4744, expr: !DIExpression())
!4744 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_unregister_ahash355", scope: !2, file: !3, line: 629, type: !111, isLocal: true, isDefinition: true)
!4745 = !DIGlobalVariableExpression(var: !4746, expr: !DIExpression())
!4746 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_register_ahashes356", scope: !2, file: !3, line: 649, type: !111, isLocal: true, isDefinition: true)
!4747 = !DIGlobalVariableExpression(var: !4748, expr: !DIExpression())
!4748 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_unregister_ahashes357", scope: !2, file: !3, line: 658, type: !111, isLocal: true, isDefinition: true)
!4749 = !DIGlobalVariableExpression(var: !4750, expr: !DIExpression())
!4750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 665, type: !4751, isLocal: true, isDefinition: true)
!4751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 120, elements: !4752)
!4752 = !{!4753}
!4753 = !DISubrange(count: 15)
!4754 = !DIGlobalVariableExpression(var: !4755, expr: !DIExpression())
!4755 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ahash_register_instance358", scope: !2, file: !3, line: 674, type: !111, isLocal: true, isDefinition: true)
!4756 = !DIGlobalVariableExpression(var: !4757, expr: !DIExpression())
!4757 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_hash_alg_has_setkey359", scope: !2, file: !3, line: 685, type: !111, isLocal: true, isDefinition: true)
!4758 = !DIGlobalVariableExpression(var: !4759, expr: !DIExpression())
!4759 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file360", scope: !2, file: !3, line: 687, type: !4760, isLocal: true, isDefinition: true, align: 8)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 288, elements: !4761)
!4761 = !{!4762}
!4762 = !DISubrange(count: 36)
!4763 = !DIGlobalVariableExpression(var: !4764, expr: !DIExpression())
!4764 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license361", scope: !2, file: !3, line: 687, type: !4765, isLocal: true, isDefinition: true, align: 8)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 24)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description362", scope: !2, file: !3, line: 688, type: !4770, isLocal: true, isDefinition: true, align: 8)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 488, elements: !4771)
!4771 = !{!4772}
!4772 = !DISubrange(count: 61)
!4773 = !DIGlobalVariableExpression(var: !4774, expr: !DIExpression())
!4774 = distinct !DIGlobalVariable(scope: null, file: !4775, line: 206, type: !4776, isLocal: true, isDefinition: true)
!4775 = !DIFile(filename: "crypto/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "30af55952b42d6d15a944aa564f21699")
!4776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 144, elements: !4777)
!4777 = !{!4778}
!4778 = !DISubrange(count: 18)
!4779 = !DIGlobalVariableExpression(var: !4780, expr: !DIExpression())
!4780 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched183", scope: !4781, file: !1370, line: 2104, type: !111, isLocal: true, isDefinition: true)
!4781 = distinct !DISubprogram(name: "_cond_resched", scope: !1370, file: !1370, line: 2102, type: !1740, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4784, isLocal: true, isDefinition: true)
!4784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 168, elements: !4785)
!4785 = !{!4786}
!4786 = !DISubrange(count: 21)
!4787 = !DIGlobalVariableExpression(var: !4788, expr: !DIExpression())
!4788 = distinct !DIGlobalVariable(name: "crypto_ahash_type", scope: !2, file: !3, line: 501, type: !4222, isLocal: true, isDefinition: true)
!4789 = !DIGlobalVariableExpression(var: !4790, expr: !DIExpression())
!4790 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !4791, isLocal: true, isDefinition: true)
!4791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 176, elements: !4792)
!4792 = !{!4793}
!4793 = !DISubrange(count: 22)
!4794 = !DIGlobalVariableExpression(var: !4795, expr: !DIExpression())
!4795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !4796, isLocal: true, isDefinition: true)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 152, elements: !4797)
!4797 = !{!4798}
!4798 = !DISubrange(count: 19)
!4799 = !DIGlobalVariableExpression(var: !4800, expr: !DIExpression())
!4800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !4801, isLocal: true, isDefinition: true)
!4801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 32, elements: !609)
!4802 = !DIGlobalVariableExpression(var: !4803, expr: !DIExpression())
!4803 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !4804, isLocal: true, isDefinition: true)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 24, elements: !438)
!4805 = !DIGlobalVariableExpression(var: !4806, expr: !DIExpression())
!4806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 490, type: !4796, isLocal: true, isDefinition: true)
!4807 = !DIGlobalVariableExpression(var: !4808, expr: !DIExpression())
!4808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !4796, isLocal: true, isDefinition: true)
!4809 = !{i32 7, !"Dwarf Version", i32 5}
!4810 = !{i32 2, !"Debug Info Version", i32 3}
!4811 = !{i32 1, !"wchar_size", i32 2}
!4812 = !{i32 8, !"cf-protection-branch", i32 1}
!4813 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4814 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4815 = !{i32 1, !"Code Model", i32 2}
!4816 = !{i32 1, !"override-stack-alignment", i32 8}
!4817 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4818 = distinct !DISubprogram(name: "crypto_hash_walk_done", scope: !3, file: !3, line: 72, type: !4819, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4832)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!272, !4821, !272}
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_hash_walk", file: !4610, line: 17, size: 384, elements: !4823)
!4823 = !{!4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4822, file: !4610, line: 18, baseType: !335, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4822, file: !4610, line: 20, baseType: !7, size: 32, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "alignmask", scope: !4822, file: !4610, line: 21, baseType: !7, size: 32, offset: 96)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pg", scope: !4822, file: !4610, line: 23, baseType: !120, size: 64, offset: 128)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "entrylen", scope: !4822, file: !4610, line: 24, baseType: !7, size: 32, offset: 192)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !4822, file: !4610, line: 26, baseType: !7, size: 32, offset: 224)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4822, file: !4610, line: 27, baseType: !4569, size: 64, offset: 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4822, file: !4610, line: 29, baseType: !7, size: 32, offset: 320)
!4832 = !{!4833, !4834, !4835, !4836, !4839, !4841}
!4833 = !DILocalVariable(name: "walk", arg: 1, scope: !4818, file: !3, line: 72, type: !4821)
!4834 = !DILocalVariable(name: "err", arg: 2, scope: !4818, file: !3, line: 72, type: !272)
!4835 = !DILocalVariable(name: "alignmask", scope: !4818, file: !3, line: 74, type: !7)
!4836 = !DILocalVariable(name: "nbytes", scope: !4837, file: !3, line: 79, type: !7)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 78, column: 60)
!4838 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 78, column: 6)
!4839 = !DILocalVariable(name: "__UNIQUE_ID___x341", scope: !4840, file: !3, line: 82, type: !7)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 82, column: 12)
!4841 = !DILocalVariable(name: "__UNIQUE_ID___y342", scope: !4840, file: !3, line: 82, type: !7)
!4842 = !DILocation(line: 72, column: 52, scope: !4818)
!4843 = !DILocation(line: 72, column: 62, scope: !4818)
!4844 = !DILocation(line: 74, column: 2, scope: !4818)
!4845 = !DILocation(line: 74, column: 15, scope: !4818)
!4846 = !DILocation(line: 74, column: 27, scope: !4818)
!4847 = !DILocation(line: 74, column: 33, scope: !4818)
!4848 = !DILocation(line: 76, column: 16, scope: !4818)
!4849 = !DILocation(line: 76, column: 22, scope: !4818)
!4850 = !DILocation(line: 76, column: 2, scope: !4818)
!4851 = !DILocation(line: 76, column: 8, scope: !4818)
!4852 = !DILocation(line: 76, column: 13, scope: !4818)
!4853 = !DILocation(line: 78, column: 6, scope: !4838)
!4854 = !DILocation(line: 78, column: 12, scope: !4838)
!4855 = !DILocation(line: 78, column: 21, scope: !4838)
!4856 = !DILocation(line: 78, column: 25, scope: !4838)
!4857 = !DILocation(line: 78, column: 31, scope: !4838)
!4858 = !DILocation(line: 78, column: 40, scope: !4838)
!4859 = !DILocation(line: 78, column: 38, scope: !4838)
!4860 = !DILocation(line: 78, column: 51, scope: !4838)
!4861 = !DILocation(line: 78, column: 55, scope: !4838)
!4862 = !DILocation(line: 78, column: 6, scope: !4818)
!4863 = !DILocation(line: 79, column: 3, scope: !4837)
!4864 = !DILocation(line: 79, column: 16, scope: !4837)
!4865 = !DILocation(line: 81, column: 18, scope: !4837)
!4866 = !DILocation(line: 81, column: 3, scope: !4837)
!4867 = !DILocation(line: 81, column: 9, scope: !4837)
!4868 = !DILocation(line: 81, column: 16, scope: !4837)
!4869 = !DILocation(line: 82, column: 12, scope: !4840)
!4870 = !DILocation(line: 82, column: 12, scope: !4837)
!4871 = !DILocation(line: 82, column: 10, scope: !4837)
!4872 = !DILocation(line: 84, column: 7, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 84, column: 7)
!4874 = !DILocation(line: 84, column: 7, scope: !4837)
!4875 = !DILocation(line: 85, column: 22, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 84, column: 15)
!4877 = !DILocation(line: 85, column: 4, scope: !4876)
!4878 = !DILocation(line: 85, column: 10, scope: !4876)
!4879 = !DILocation(line: 85, column: 19, scope: !4876)
!4880 = !DILocation(line: 86, column: 18, scope: !4876)
!4881 = !DILocation(line: 86, column: 24, scope: !4876)
!4882 = !DILocation(line: 86, column: 4, scope: !4876)
!4883 = !DILocation(line: 86, column: 10, scope: !4876)
!4884 = !DILocation(line: 86, column: 15, scope: !4876)
!4885 = !DILocation(line: 87, column: 11, scope: !4876)
!4886 = !DILocation(line: 87, column: 4, scope: !4876)
!4887 = !DILocation(line: 89, column: 2, scope: !4838)
!4888 = !DILocation(line: 89, column: 2, scope: !4837)
!4889 = !DILocation(line: 91, column: 2, scope: !4818)
!4890 = !DILocation(line: 91, column: 2, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 91, column: 2)
!4892 = !DILocation(line: 91, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 91, column: 2)
!4894 = !DILocation(line: 92, column: 15, scope: !4818)
!4895 = !DILocation(line: 92, column: 21, scope: !4818)
!4896 = !DILocation(line: 92, column: 2, scope: !4818)
!4897 = !DILocation(line: 94, column: 6, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 94, column: 6)
!4899 = !DILocation(line: 94, column: 6, scope: !4818)
!4900 = !DILocation(line: 95, column: 10, scope: !4898)
!4901 = !DILocation(line: 95, column: 3, scope: !4898)
!4902 = !DILocation(line: 97, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 97, column: 6)
!4904 = !DILocation(line: 97, column: 12, scope: !4903)
!4905 = !DILocation(line: 97, column: 6, scope: !4818)
!4906 = !DILocation(line: 98, column: 3, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 97, column: 22)
!4908 = !DILocation(line: 98, column: 9, scope: !4907)
!4909 = !DILocation(line: 98, column: 16, scope: !4907)
!4910 = !DILocation(line: 99, column: 3, scope: !4907)
!4911 = !DILocation(line: 99, column: 9, scope: !4907)
!4912 = !DILocation(line: 99, column: 11, scope: !4907)
!4913 = !DILocation(line: 100, column: 25, scope: !4907)
!4914 = !DILocation(line: 100, column: 10, scope: !4907)
!4915 = !DILocation(line: 100, column: 3, scope: !4907)
!4916 = !DILocation(line: 103, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 103, column: 6)
!4918 = !DILocation(line: 103, column: 13, scope: !4917)
!4919 = !DILocation(line: 103, column: 6, scope: !4818)
!4920 = !DILocation(line: 104, column: 3, scope: !4917)
!4921 = !DILocation(line: 106, column: 21, scope: !4818)
!4922 = !DILocation(line: 106, column: 27, scope: !4818)
!4923 = !DILocation(line: 106, column: 13, scope: !4818)
!4924 = !DILocation(line: 106, column: 2, scope: !4818)
!4925 = !DILocation(line: 106, column: 8, scope: !4818)
!4926 = !DILocation(line: 106, column: 11, scope: !4818)
!4927 = !DILocation(line: 108, column: 29, scope: !4818)
!4928 = !DILocation(line: 108, column: 9, scope: !4818)
!4929 = !DILocation(line: 108, column: 2, scope: !4818)
!4930 = !DILocation(line: 109, column: 1, scope: !4818)
!4931 = distinct !DISubprogram(name: "__kunmap_local", scope: !4932, file: !4932, line: 203, type: !4933, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4935)
!4932 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !1137}
!4935 = !{!4936}
!4936 = !DILocalVariable(name: "addr", arg: 1, scope: !4931, file: !4932, line: 203, type: !1137)
!4937 = !DILocation(line: 203, column: 47, scope: !4931)
!4938 = !DILocation(line: 208, column: 1, scope: !4931)
!4939 = distinct !DISubprogram(name: "crypto_yield", scope: !4775, file: !4775, line: 203, type: !4940, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4942)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !223}
!4942 = !{!4943}
!4943 = !DILocalVariable(name: "flags", arg: 1, scope: !4939, file: !4775, line: 203, type: !223)
!4944 = !DILocation(line: 203, column: 37, scope: !4939)
!4945 = !DILocation(line: 205, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4939, file: !4775, line: 205, column: 6)
!4947 = !DILocation(line: 205, column: 12, scope: !4946)
!4948 = !DILocation(line: 205, column: 6, scope: !4939)
!4949 = !DILocation(line: 206, column: 3, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !4775, line: 206, column: 3)
!4951 = !DILocation(line: 206, column: 3, scope: !4946)
!4952 = !DILocation(line: 207, column: 1, scope: !4939)
!4953 = distinct !DISubprogram(name: "hash_walk_next", scope: !3, file: !3, line: 34, type: !4954, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4956)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!272, !4821}
!4956 = !{!4957, !4958, !4959, !4960, !4961, !4963, !4964}
!4957 = !DILocalVariable(name: "walk", arg: 1, scope: !4953, file: !3, line: 34, type: !4821)
!4958 = !DILocalVariable(name: "alignmask", scope: !4953, file: !3, line: 36, type: !7)
!4959 = !DILocalVariable(name: "offset", scope: !4953, file: !3, line: 37, type: !7)
!4960 = !DILocalVariable(name: "nbytes", scope: !4953, file: !3, line: 38, type: !7)
!4961 = !DILocalVariable(name: "__UNIQUE_ID___x339", scope: !4962, file: !3, line: 38, type: !7)
!4962 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 38, column: 24)
!4963 = !DILocalVariable(name: "__UNIQUE_ID___y340", scope: !4962, file: !3, line: 38, type: !7)
!4964 = !DILocalVariable(name: "unaligned", scope: !4965, file: !3, line: 45, type: !7)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 44, column: 26)
!4966 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 44, column: 6)
!4967 = !DILocation(line: 34, column: 52, scope: !4953)
!4968 = !DILocation(line: 36, column: 2, scope: !4953)
!4969 = !DILocation(line: 36, column: 15, scope: !4953)
!4970 = !DILocation(line: 36, column: 27, scope: !4953)
!4971 = !DILocation(line: 36, column: 33, scope: !4953)
!4972 = !DILocation(line: 37, column: 2, scope: !4953)
!4973 = !DILocation(line: 37, column: 15, scope: !4953)
!4974 = !DILocation(line: 37, column: 24, scope: !4953)
!4975 = !DILocation(line: 37, column: 30, scope: !4953)
!4976 = !DILocation(line: 38, column: 2, scope: !4953)
!4977 = !DILocation(line: 38, column: 15, scope: !4953)
!4978 = !DILocation(line: 38, column: 24, scope: !4962)
!4979 = !DILocation(line: 38, column: 24, scope: !4953)
!4980 = !DILocation(line: 41, column: 31, scope: !4953)
!4981 = !DILocation(line: 41, column: 37, scope: !4953)
!4982 = !DILocation(line: 41, column: 15, scope: !4953)
!4983 = !DILocation(line: 41, column: 2, scope: !4953)
!4984 = !DILocation(line: 41, column: 8, scope: !4953)
!4985 = !DILocation(line: 41, column: 13, scope: !4953)
!4986 = !DILocation(line: 42, column: 16, scope: !4953)
!4987 = !DILocation(line: 42, column: 2, scope: !4953)
!4988 = !DILocation(line: 42, column: 8, scope: !4953)
!4989 = !DILocation(line: 42, column: 13, scope: !4953)
!4990 = !DILocation(line: 44, column: 6, scope: !4966)
!4991 = !DILocation(line: 44, column: 15, scope: !4966)
!4992 = !DILocation(line: 44, column: 13, scope: !4966)
!4993 = !DILocation(line: 44, column: 6, scope: !4953)
!4994 = !DILocation(line: 45, column: 3, scope: !4965)
!4995 = !DILocation(line: 45, column: 16, scope: !4965)
!4996 = !DILocation(line: 45, column: 28, scope: !4965)
!4997 = !DILocation(line: 45, column: 38, scope: !4965)
!4998 = !DILocation(line: 45, column: 45, scope: !4965)
!4999 = !DILocation(line: 45, column: 54, scope: !4965)
!5000 = !DILocation(line: 45, column: 52, scope: !4965)
!5001 = !DILocation(line: 45, column: 42, scope: !4965)
!5002 = !DILocation(line: 47, column: 7, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 47, column: 7)
!5004 = !DILocation(line: 47, column: 16, scope: !5003)
!5005 = !DILocation(line: 47, column: 14, scope: !5003)
!5006 = !DILocation(line: 47, column: 7, scope: !4965)
!5007 = !DILocation(line: 48, column: 13, scope: !5003)
!5008 = !DILocation(line: 48, column: 11, scope: !5003)
!5009 = !DILocation(line: 48, column: 4, scope: !5003)
!5010 = !DILocation(line: 49, column: 2, scope: !4966)
!5011 = !DILocation(line: 49, column: 2, scope: !4965)
!5012 = !DILocation(line: 51, column: 20, scope: !4953)
!5013 = !DILocation(line: 51, column: 2, scope: !4953)
!5014 = !DILocation(line: 51, column: 8, scope: !4953)
!5015 = !DILocation(line: 51, column: 17, scope: !4953)
!5016 = !DILocation(line: 52, column: 9, scope: !4953)
!5017 = !DILocation(line: 53, column: 1, scope: !4953)
!5018 = !DILocation(line: 52, column: 2, scope: !4953)
!5019 = !DISubprogram(name: "sg_next", scope: !4571, file: !4571, line: 421, type: !5020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!4569, !4569}
!5022 = distinct !DISubprogram(name: "hash_walk_new_entry", scope: !3, file: !3, line: 55, type: !4954, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5023)
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "walk", arg: 1, scope: !5022, file: !3, line: 55, type: !4821)
!5025 = !DILocalVariable(name: "sg", scope: !5022, file: !3, line: 57, type: !4569)
!5026 = !DILocation(line: 55, column: 57, scope: !5022)
!5027 = !DILocation(line: 57, column: 2, scope: !5022)
!5028 = !DILocation(line: 57, column: 22, scope: !5022)
!5029 = !DILocation(line: 59, column: 7, scope: !5022)
!5030 = !DILocation(line: 59, column: 13, scope: !5022)
!5031 = !DILocation(line: 59, column: 5, scope: !5022)
!5032 = !DILocation(line: 60, column: 17, scope: !5022)
!5033 = !DILocation(line: 60, column: 21, scope: !5022)
!5034 = !DILocation(line: 60, column: 2, scope: !5022)
!5035 = !DILocation(line: 60, column: 8, scope: !5022)
!5036 = !DILocation(line: 60, column: 15, scope: !5022)
!5037 = !DILocation(line: 61, column: 21, scope: !5022)
!5038 = !DILocation(line: 61, column: 27, scope: !5022)
!5039 = !DILocation(line: 61, column: 13, scope: !5022)
!5040 = !DILocation(line: 61, column: 34, scope: !5022)
!5041 = !DILocation(line: 61, column: 40, scope: !5022)
!5042 = !DILocation(line: 61, column: 47, scope: !5022)
!5043 = !DILocation(line: 61, column: 31, scope: !5022)
!5044 = !DILocation(line: 61, column: 2, scope: !5022)
!5045 = !DILocation(line: 61, column: 8, scope: !5022)
!5046 = !DILocation(line: 61, column: 11, scope: !5022)
!5047 = !DILocation(line: 62, column: 17, scope: !5022)
!5048 = !DILocation(line: 62, column: 2, scope: !5022)
!5049 = !DILocation(line: 62, column: 8, scope: !5022)
!5050 = !DILocation(line: 62, column: 15, scope: !5022)
!5051 = !DILocation(line: 63, column: 19, scope: !5022)
!5052 = !DILocation(line: 63, column: 23, scope: !5022)
!5053 = !DILocation(line: 63, column: 2, scope: !5022)
!5054 = !DILocation(line: 63, column: 8, scope: !5022)
!5055 = !DILocation(line: 63, column: 17, scope: !5022)
!5056 = !DILocation(line: 65, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 65, column: 6)
!5058 = !DILocation(line: 65, column: 12, scope: !5057)
!5059 = !DILocation(line: 65, column: 23, scope: !5057)
!5060 = !DILocation(line: 65, column: 29, scope: !5057)
!5061 = !DILocation(line: 65, column: 21, scope: !5057)
!5062 = !DILocation(line: 65, column: 6, scope: !5022)
!5063 = !DILocation(line: 66, column: 20, scope: !5057)
!5064 = !DILocation(line: 66, column: 26, scope: !5057)
!5065 = !DILocation(line: 66, column: 3, scope: !5057)
!5066 = !DILocation(line: 66, column: 9, scope: !5057)
!5067 = !DILocation(line: 66, column: 18, scope: !5057)
!5068 = !DILocation(line: 67, column: 17, scope: !5022)
!5069 = !DILocation(line: 67, column: 23, scope: !5022)
!5070 = !DILocation(line: 67, column: 2, scope: !5022)
!5071 = !DILocation(line: 67, column: 8, scope: !5022)
!5072 = !DILocation(line: 67, column: 14, scope: !5022)
!5073 = !DILocation(line: 69, column: 24, scope: !5022)
!5074 = !DILocation(line: 69, column: 9, scope: !5022)
!5075 = !DILocation(line: 70, column: 1, scope: !5022)
!5076 = !DILocation(line: 69, column: 2, scope: !5022)
!5077 = distinct !DISubprogram(name: "crypto_hash_walk_first", scope: !3, file: !3, line: 112, type: !5078, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5080)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!272, !4178, !4821}
!5080 = !{!5081, !5082}
!5081 = !DILocalVariable(name: "req", arg: 1, scope: !5077, file: !3, line: 112, type: !4178)
!5082 = !DILocalVariable(name: "walk", arg: 2, scope: !5077, file: !3, line: 113, type: !4821)
!5083 = !DILocation(line: 112, column: 50, scope: !5077)
!5084 = !DILocation(line: 113, column: 32, scope: !5077)
!5085 = !DILocation(line: 115, column: 16, scope: !5077)
!5086 = !DILocation(line: 115, column: 21, scope: !5077)
!5087 = !DILocation(line: 115, column: 2, scope: !5077)
!5088 = !DILocation(line: 115, column: 8, scope: !5077)
!5089 = !DILocation(line: 115, column: 14, scope: !5077)
!5090 = !DILocation(line: 117, column: 7, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 117, column: 6)
!5092 = !DILocation(line: 117, column: 13, scope: !5091)
!5093 = !DILocation(line: 117, column: 6, scope: !5077)
!5094 = !DILocation(line: 118, column: 3, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 117, column: 20)
!5096 = !DILocation(line: 118, column: 9, scope: !5095)
!5097 = !DILocation(line: 118, column: 18, scope: !5095)
!5098 = !DILocation(line: 119, column: 3, scope: !5095)
!5099 = !DILocation(line: 122, column: 63, scope: !5077)
!5100 = !DILocation(line: 122, column: 43, scope: !5077)
!5101 = !DILocation(line: 122, column: 20, scope: !5077)
!5102 = !DILocation(line: 122, column: 2, scope: !5077)
!5103 = !DILocation(line: 122, column: 8, scope: !5077)
!5104 = !DILocation(line: 122, column: 18, scope: !5077)
!5105 = !DILocation(line: 123, column: 13, scope: !5077)
!5106 = !DILocation(line: 123, column: 18, scope: !5077)
!5107 = !DILocation(line: 123, column: 2, scope: !5077)
!5108 = !DILocation(line: 123, column: 8, scope: !5077)
!5109 = !DILocation(line: 123, column: 11, scope: !5077)
!5110 = !DILocation(line: 124, column: 16, scope: !5077)
!5111 = !DILocation(line: 124, column: 21, scope: !5077)
!5112 = !DILocation(line: 124, column: 26, scope: !5077)
!5113 = !DILocation(line: 124, column: 2, scope: !5077)
!5114 = !DILocation(line: 124, column: 8, scope: !5077)
!5115 = !DILocation(line: 124, column: 14, scope: !5077)
!5116 = !DILocation(line: 126, column: 29, scope: !5077)
!5117 = !DILocation(line: 126, column: 9, scope: !5077)
!5118 = !DILocation(line: 126, column: 2, scope: !5077)
!5119 = !DILocation(line: 127, column: 1, scope: !5077)
!5120 = distinct !DISubprogram(name: "crypto_ahash_alignmask", scope: !4172, file: !4172, line: 345, type: !5121, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5123)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!7, !4170}
!5123 = !{!5124}
!5124 = !DILocalVariable(name: "tfm", arg: 1, scope: !5120, file: !4172, line: 346, type: !4170)
!5125 = !DILocation(line: 346, column: 23, scope: !5120)
!5126 = !DILocation(line: 348, column: 51, scope: !5120)
!5127 = !DILocation(line: 348, column: 34, scope: !5120)
!5128 = !DILocation(line: 348, column: 9, scope: !5120)
!5129 = !DILocation(line: 348, column: 2, scope: !5120)
!5130 = distinct !DISubprogram(name: "crypto_ahash_reqtfm", scope: !4172, file: !4172, line: 432, type: !5131, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5133)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!4170, !4178}
!5133 = !{!5134}
!5134 = !DILocalVariable(name: "req", arg: 1, scope: !5130, file: !4172, line: 433, type: !4178)
!5135 = !DILocation(line: 433, column: 24, scope: !5130)
!5136 = !DILocation(line: 435, column: 29, scope: !5130)
!5137 = !DILocation(line: 435, column: 34, scope: !5130)
!5138 = !DILocation(line: 435, column: 39, scope: !5130)
!5139 = !DILocation(line: 435, column: 9, scope: !5130)
!5140 = !DILocation(line: 435, column: 2, scope: !5130)
!5141 = distinct !DISubprogram(name: "crypto_ahash_setkey", scope: !3, file: !3, line: 165, type: !4597, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5142 = !{!5143, !5144, !5145, !5146, !5147}
!5143 = !DILocalVariable(name: "tfm", arg: 1, scope: !5141, file: !3, line: 165, type: !4170)
!5144 = !DILocalVariable(name: "key", arg: 2, scope: !5141, file: !3, line: 165, type: !4542)
!5145 = !DILocalVariable(name: "keylen", arg: 3, scope: !5141, file: !3, line: 166, type: !7)
!5146 = !DILocalVariable(name: "alignmask", scope: !5141, file: !3, line: 168, type: !112)
!5147 = !DILocalVariable(name: "err", scope: !5141, file: !3, line: 169, type: !272)
!5148 = !DILocation(line: 165, column: 46, scope: !5141)
!5149 = !DILocation(line: 165, column: 61, scope: !5141)
!5150 = !DILocation(line: 166, column: 17, scope: !5141)
!5151 = !DILocation(line: 168, column: 2, scope: !5141)
!5152 = !DILocation(line: 168, column: 16, scope: !5141)
!5153 = !DILocation(line: 168, column: 51, scope: !5141)
!5154 = !DILocation(line: 168, column: 28, scope: !5141)
!5155 = !DILocation(line: 169, column: 2, scope: !5141)
!5156 = !DILocation(line: 169, column: 6, scope: !5141)
!5157 = !DILocation(line: 171, column: 21, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 171, column: 6)
!5159 = !DILocation(line: 171, column: 6, scope: !5158)
!5160 = !DILocation(line: 171, column: 27, scope: !5158)
!5161 = !DILocation(line: 171, column: 25, scope: !5158)
!5162 = !DILocation(line: 171, column: 6, scope: !5141)
!5163 = !DILocation(line: 172, column: 32, scope: !5158)
!5164 = !DILocation(line: 172, column: 37, scope: !5158)
!5165 = !DILocation(line: 172, column: 42, scope: !5158)
!5166 = !DILocation(line: 172, column: 9, scope: !5158)
!5167 = !DILocation(line: 172, column: 7, scope: !5158)
!5168 = !DILocation(line: 172, column: 3, scope: !5158)
!5169 = !DILocation(line: 174, column: 9, scope: !5158)
!5170 = !DILocation(line: 174, column: 14, scope: !5158)
!5171 = !DILocation(line: 174, column: 21, scope: !5158)
!5172 = !DILocation(line: 174, column: 26, scope: !5158)
!5173 = !DILocation(line: 174, column: 31, scope: !5158)
!5174 = !DILocation(line: 174, column: 7, scope: !5158)
!5175 = !DILocation(line: 176, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 176, column: 6)
!5177 = !DILocation(line: 176, column: 6, scope: !5141)
!5178 = !DILocation(line: 177, column: 21, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 176, column: 21)
!5180 = !DILocation(line: 177, column: 3, scope: !5179)
!5181 = !DILocation(line: 178, column: 10, scope: !5179)
!5182 = !DILocation(line: 178, column: 3, scope: !5179)
!5183 = !DILocation(line: 181, column: 27, scope: !5141)
!5184 = !DILocation(line: 181, column: 2, scope: !5141)
!5185 = !DILocation(line: 182, column: 2, scope: !5141)
!5186 = !DILocation(line: 183, column: 1, scope: !5141)
!5187 = distinct !DISubprogram(name: "ahash_setkey_unaligned", scope: !3, file: !3, line: 130, type: !4597, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5188)
!5188 = !{!5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196}
!5189 = !DILocalVariable(name: "tfm", arg: 1, scope: !5187, file: !3, line: 130, type: !4170)
!5190 = !DILocalVariable(name: "key", arg: 2, scope: !5187, file: !3, line: 130, type: !4542)
!5191 = !DILocalVariable(name: "keylen", arg: 3, scope: !5187, file: !3, line: 131, type: !7)
!5192 = !DILocalVariable(name: "alignmask", scope: !5187, file: !3, line: 133, type: !112)
!5193 = !DILocalVariable(name: "ret", scope: !5187, file: !3, line: 134, type: !272)
!5194 = !DILocalVariable(name: "buffer", scope: !5187, file: !3, line: 135, type: !4548)
!5195 = !DILocalVariable(name: "alignbuffer", scope: !5187, file: !3, line: 135, type: !4548)
!5196 = !DILocalVariable(name: "absize", scope: !5187, file: !3, line: 136, type: !112)
!5197 = !DILocation(line: 130, column: 56, scope: !5187)
!5198 = !DILocation(line: 130, column: 71, scope: !5187)
!5199 = !DILocation(line: 131, column: 18, scope: !5187)
!5200 = !DILocation(line: 133, column: 2, scope: !5187)
!5201 = !DILocation(line: 133, column: 16, scope: !5187)
!5202 = !DILocation(line: 133, column: 51, scope: !5187)
!5203 = !DILocation(line: 133, column: 28, scope: !5187)
!5204 = !DILocation(line: 134, column: 2, scope: !5187)
!5205 = !DILocation(line: 134, column: 6, scope: !5187)
!5206 = !DILocation(line: 135, column: 2, scope: !5187)
!5207 = !DILocation(line: 135, column: 6, scope: !5187)
!5208 = !DILocation(line: 135, column: 15, scope: !5187)
!5209 = !DILocation(line: 136, column: 2, scope: !5187)
!5210 = !DILocation(line: 136, column: 16, scope: !5187)
!5211 = !DILocation(line: 138, column: 11, scope: !5187)
!5212 = !DILocation(line: 138, column: 20, scope: !5187)
!5213 = !DILocation(line: 138, column: 18, scope: !5187)
!5214 = !DILocation(line: 138, column: 9, scope: !5187)
!5215 = !DILocation(line: 139, column: 19, scope: !5187)
!5216 = !DILocation(line: 139, column: 11, scope: !5187)
!5217 = !DILocation(line: 139, column: 9, scope: !5187)
!5218 = !DILocation(line: 140, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 140, column: 6)
!5220 = !DILocation(line: 140, column: 6, scope: !5187)
!5221 = !DILocation(line: 141, column: 3, scope: !5219)
!5222 = !DILocation(line: 143, column: 22, scope: !5187)
!5223 = !DILocation(line: 143, column: 16, scope: !5187)
!5224 = !DILocation(line: 143, column: 14, scope: !5187)
!5225 = !DILocation(line: 144, column: 9, scope: !5187)
!5226 = !DILocation(line: 144, column: 22, scope: !5187)
!5227 = !DILocation(line: 144, column: 27, scope: !5187)
!5228 = !DILocation(line: 144, column: 2, scope: !5187)
!5229 = !DILocation(line: 145, column: 8, scope: !5187)
!5230 = !DILocation(line: 145, column: 13, scope: !5187)
!5231 = !DILocation(line: 145, column: 20, scope: !5187)
!5232 = !DILocation(line: 145, column: 25, scope: !5187)
!5233 = !DILocation(line: 145, column: 38, scope: !5187)
!5234 = !DILocation(line: 145, column: 6, scope: !5187)
!5235 = !DILocation(line: 146, column: 18, scope: !5187)
!5236 = !DILocation(line: 146, column: 2, scope: !5187)
!5237 = !DILocation(line: 147, column: 9, scope: !5187)
!5238 = !DILocation(line: 147, column: 2, scope: !5187)
!5239 = !DILocation(line: 148, column: 1, scope: !5187)
!5240 = distinct !DISubprogram(name: "ahash_set_needkey", scope: !3, file: !3, line: 156, type: !4644, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5241 = !{!5242, !5243}
!5242 = !DILocalVariable(name: "tfm", arg: 1, scope: !5240, file: !3, line: 156, type: !4170)
!5243 = !DILocalVariable(name: "alg", scope: !5240, file: !3, line: 158, type: !5244)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4603)
!5246 = !DILocation(line: 156, column: 52, scope: !5240)
!5247 = !DILocation(line: 158, column: 2, scope: !5240)
!5248 = !DILocation(line: 158, column: 32, scope: !5240)
!5249 = !DILocation(line: 158, column: 61, scope: !5240)
!5250 = !DILocation(line: 158, column: 38, scope: !5240)
!5251 = !DILocation(line: 160, column: 6, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 160, column: 6)
!5253 = !DILocation(line: 160, column: 11, scope: !5252)
!5254 = !DILocation(line: 160, column: 18, scope: !5252)
!5255 = !DILocation(line: 160, column: 36, scope: !5252)
!5256 = !DILocation(line: 161, column: 8, scope: !5252)
!5257 = !DILocation(line: 161, column: 13, scope: !5252)
!5258 = !DILocation(line: 161, column: 18, scope: !5252)
!5259 = !DILocation(line: 161, column: 28, scope: !5252)
!5260 = !DILocation(line: 160, column: 6, scope: !5240)
!5261 = !DILocation(line: 162, column: 26, scope: !5252)
!5262 = !DILocation(line: 162, column: 3, scope: !5252)
!5263 = !DILocation(line: 163, column: 1, scope: !5240)
!5264 = distinct !DISubprogram(name: "crypto_ahash_clear_flags", scope: !4172, file: !4172, line: 417, type: !5265, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5267)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !4170, !223}
!5267 = !{!5268, !5269}
!5268 = !DILocalVariable(name: "tfm", arg: 1, scope: !5264, file: !4172, line: 417, type: !4170)
!5269 = !DILocalVariable(name: "flags", arg: 2, scope: !5264, file: !4172, line: 417, type: !223)
!5270 = !DILocation(line: 417, column: 66, scope: !5264)
!5271 = !DILocation(line: 417, column: 75, scope: !5264)
!5272 = !DILocation(line: 419, column: 42, scope: !5264)
!5273 = !DILocation(line: 419, column: 25, scope: !5264)
!5274 = !DILocation(line: 419, column: 48, scope: !5264)
!5275 = !DILocation(line: 419, column: 2, scope: !5264)
!5276 = !DILocation(line: 420, column: 1, scope: !5264)
!5277 = distinct !DISubprogram(name: "crypto_ahash_final", scope: !3, file: !3, line: 302, type: !4176, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5278 = !{!5279, !5280, !5281}
!5279 = !DILocalVariable(name: "req", arg: 1, scope: !5277, file: !3, line: 302, type: !4178)
!5280 = !DILocalVariable(name: "tfm", scope: !5277, file: !3, line: 304, type: !4170)
!5281 = !DILocalVariable(name: "alg", scope: !5277, file: !3, line: 305, type: !4602)
!5282 = !DILocation(line: 302, column: 46, scope: !5277)
!5283 = !DILocation(line: 304, column: 2, scope: !5277)
!5284 = !DILocation(line: 304, column: 23, scope: !5277)
!5285 = !DILocation(line: 304, column: 49, scope: !5277)
!5286 = !DILocation(line: 304, column: 29, scope: !5277)
!5287 = !DILocation(line: 305, column: 2, scope: !5277)
!5288 = !DILocation(line: 305, column: 26, scope: !5277)
!5289 = !DILocation(line: 305, column: 55, scope: !5277)
!5290 = !DILocation(line: 305, column: 32, scope: !5277)
!5291 = !DILocation(line: 310, column: 25, scope: !5277)
!5292 = !DILocation(line: 310, column: 30, scope: !5277)
!5293 = !DILocation(line: 310, column: 35, scope: !5277)
!5294 = !DILocation(line: 310, column: 9, scope: !5277)
!5295 = !DILocation(line: 311, column: 1, scope: !5277)
!5296 = !DILocation(line: 310, column: 2, scope: !5277)
!5297 = distinct !DISubprogram(name: "crypto_hash_alg_common", scope: !4172, file: !4172, line: 371, type: !5298, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5300)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!4602, !4170}
!5300 = !{!5301}
!5301 = !DILocalVariable(name: "tfm", arg: 1, scope: !5297, file: !4172, line: 372, type: !4170)
!5302 = !DILocation(line: 372, column: 23, scope: !5297)
!5303 = !DILocation(line: 374, column: 51, scope: !5297)
!5304 = !DILocation(line: 374, column: 34, scope: !5297)
!5305 = !DILocation(line: 374, column: 57, scope: !5297)
!5306 = !DILocation(line: 374, column: 9, scope: !5297)
!5307 = !DILocation(line: 374, column: 2, scope: !5297)
!5308 = distinct !DISubprogram(name: "crypto_ahash_op", scope: !3, file: !3, line: 286, type: !5309, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!272, !4178, !4175, !744}
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317}
!5312 = !DILocalVariable(name: "req", arg: 1, scope: !5308, file: !3, line: 286, type: !4178)
!5313 = !DILocalVariable(name: "op", arg: 2, scope: !5308, file: !3, line: 287, type: !4175)
!5314 = !DILocalVariable(name: "has_state", arg: 3, scope: !5308, file: !3, line: 288, type: !744)
!5315 = !DILocalVariable(name: "tfm", scope: !5308, file: !3, line: 290, type: !4170)
!5316 = !DILocalVariable(name: "alignmask", scope: !5308, file: !3, line: 291, type: !112)
!5317 = !DILocalVariable(name: "err", scope: !5308, file: !3, line: 292, type: !272)
!5318 = !DILocation(line: 286, column: 50, scope: !5308)
!5319 = !DILocation(line: 287, column: 13, scope: !5308)
!5320 = !DILocation(line: 288, column: 12, scope: !5308)
!5321 = !DILocation(line: 290, column: 2, scope: !5308)
!5322 = !DILocation(line: 290, column: 23, scope: !5308)
!5323 = !DILocation(line: 290, column: 49, scope: !5308)
!5324 = !DILocation(line: 290, column: 29, scope: !5308)
!5325 = !DILocation(line: 291, column: 2, scope: !5308)
!5326 = !DILocation(line: 291, column: 16, scope: !5308)
!5327 = !DILocation(line: 291, column: 51, scope: !5308)
!5328 = !DILocation(line: 291, column: 28, scope: !5308)
!5329 = !DILocation(line: 292, column: 2, scope: !5308)
!5330 = !DILocation(line: 292, column: 6, scope: !5308)
!5331 = !DILocation(line: 294, column: 21, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 294, column: 6)
!5333 = !DILocation(line: 294, column: 26, scope: !5332)
!5334 = !DILocation(line: 294, column: 6, scope: !5332)
!5335 = !DILocation(line: 294, column: 35, scope: !5332)
!5336 = !DILocation(line: 294, column: 33, scope: !5332)
!5337 = !DILocation(line: 294, column: 6, scope: !5308)
!5338 = !DILocation(line: 295, column: 28, scope: !5332)
!5339 = !DILocation(line: 295, column: 33, scope: !5332)
!5340 = !DILocation(line: 295, column: 37, scope: !5332)
!5341 = !{i8 0, i8 2}
!5342 = !DILocation(line: 295, column: 9, scope: !5332)
!5343 = !DILocation(line: 295, column: 7, scope: !5332)
!5344 = !DILocation(line: 295, column: 3, scope: !5332)
!5345 = !DILocation(line: 297, column: 9, scope: !5332)
!5346 = !DILocation(line: 297, column: 12, scope: !5332)
!5347 = !DILocation(line: 297, column: 7, scope: !5332)
!5348 = !DILocation(line: 299, column: 52, scope: !5308)
!5349 = !DILocation(line: 299, column: 29, scope: !5308)
!5350 = !DILocation(line: 299, column: 58, scope: !5308)
!5351 = !DILocation(line: 299, column: 9, scope: !5308)
!5352 = !DILocation(line: 300, column: 1, scope: !5308)
!5353 = !DILocation(line: 299, column: 2, scope: !5308)
!5354 = distinct !DISubprogram(name: "crypto_ahash_finup", scope: !3, file: !3, line: 314, type: !4176, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5355 = !{!5356, !5357, !5358}
!5356 = !DILocalVariable(name: "req", arg: 1, scope: !5354, file: !3, line: 314, type: !4178)
!5357 = !DILocalVariable(name: "tfm", scope: !5354, file: !3, line: 316, type: !4170)
!5358 = !DILocalVariable(name: "alg", scope: !5354, file: !3, line: 317, type: !4602)
!5359 = !DILocation(line: 314, column: 46, scope: !5354)
!5360 = !DILocation(line: 316, column: 2, scope: !5354)
!5361 = !DILocation(line: 316, column: 23, scope: !5354)
!5362 = !DILocation(line: 316, column: 49, scope: !5354)
!5363 = !DILocation(line: 316, column: 29, scope: !5354)
!5364 = !DILocation(line: 317, column: 2, scope: !5354)
!5365 = !DILocation(line: 317, column: 26, scope: !5354)
!5366 = !DILocation(line: 317, column: 55, scope: !5354)
!5367 = !DILocation(line: 317, column: 32, scope: !5354)
!5368 = !DILocation(line: 326, column: 25, scope: !5354)
!5369 = !DILocation(line: 326, column: 30, scope: !5354)
!5370 = !DILocation(line: 326, column: 35, scope: !5354)
!5371 = !DILocation(line: 326, column: 9, scope: !5354)
!5372 = !DILocation(line: 327, column: 1, scope: !5354)
!5373 = !DILocation(line: 326, column: 2, scope: !5354)
!5374 = distinct !DISubprogram(name: "crypto_ahash_digest", scope: !3, file: !3, line: 330, type: !4176, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5375 = !{!5376, !5377, !5378}
!5376 = !DILocalVariable(name: "req", arg: 1, scope: !5374, file: !3, line: 330, type: !4178)
!5377 = !DILocalVariable(name: "tfm", scope: !5374, file: !3, line: 332, type: !4170)
!5378 = !DILocalVariable(name: "alg", scope: !5374, file: !3, line: 333, type: !4602)
!5379 = !DILocation(line: 330, column: 47, scope: !5374)
!5380 = !DILocation(line: 332, column: 2, scope: !5374)
!5381 = !DILocation(line: 332, column: 23, scope: !5374)
!5382 = !DILocation(line: 332, column: 49, scope: !5374)
!5383 = !DILocation(line: 332, column: 29, scope: !5374)
!5384 = !DILocation(line: 333, column: 2, scope: !5374)
!5385 = !DILocation(line: 333, column: 26, scope: !5374)
!5386 = !DILocation(line: 333, column: 55, scope: !5374)
!5387 = !DILocation(line: 333, column: 32, scope: !5374)
!5388 = !DILocation(line: 342, column: 29, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 342, column: 6)
!5390 = !DILocation(line: 342, column: 6, scope: !5389)
!5391 = !DILocation(line: 342, column: 34, scope: !5389)
!5392 = !DILocation(line: 342, column: 6, scope: !5374)
!5393 = !DILocation(line: 343, column: 30, scope: !5389)
!5394 = !DILocation(line: 343, column: 10, scope: !5389)
!5395 = !DILocation(line: 343, column: 3, scope: !5389)
!5396 = !DILocation(line: 345, column: 25, scope: !5374)
!5397 = !DILocation(line: 345, column: 30, scope: !5374)
!5398 = !DILocation(line: 345, column: 35, scope: !5374)
!5399 = !DILocation(line: 345, column: 9, scope: !5374)
!5400 = !DILocation(line: 345, column: 2, scope: !5374)
!5401 = !DILocation(line: 346, column: 1, scope: !5374)
!5402 = distinct !DISubprogram(name: "crypto_ahash_get_flags", scope: !4172, file: !4172, line: 407, type: !5403, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5405)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!223, !4170}
!5405 = !{!5406}
!5406 = !DILocalVariable(name: "tfm", arg: 1, scope: !5402, file: !4172, line: 407, type: !4170)
!5407 = !DILocation(line: 407, column: 63, scope: !5402)
!5408 = !DILocation(line: 409, column: 47, scope: !5402)
!5409 = !DILocation(line: 409, column: 30, scope: !5402)
!5410 = !DILocation(line: 409, column: 9, scope: !5402)
!5411 = !DILocation(line: 409, column: 2, scope: !5402)
!5412 = distinct !DISubprogram(name: "crypto_hash_errstat", scope: !4172, file: !4172, line: 579, type: !5413, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5415)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!272, !4602, !272}
!5415 = !{!5416, !5417}
!5416 = !DILocalVariable(name: "alg", arg: 1, scope: !5412, file: !4172, line: 579, type: !4602)
!5417 = !DILocalVariable(name: "err", arg: 2, scope: !5412, file: !4172, line: 579, type: !272)
!5418 = !DILocation(line: 579, column: 63, scope: !5412)
!5419 = !DILocation(line: 579, column: 72, scope: !5412)
!5420 = !DILocation(line: 582, column: 10, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5412, file: !4172, line: 581, column: 6)
!5422 = !DILocation(line: 582, column: 3, scope: !5421)
!5423 = distinct !DISubprogram(name: "crypto_grab_ahash", scope: !3, file: !3, line: 520, type: !5424, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5430)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!272, !5426, !4485, !309, !223, !223}
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ahash_spawn", file: !4610, line: 54, size: 384, elements: !5428)
!5428 = !{!5429}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5427, file: !4610, line: 55, baseType: !4510, size: 384)
!5430 = !{!5431, !5432, !5433, !5434, !5435}
!5431 = !DILocalVariable(name: "spawn", arg: 1, scope: !5423, file: !3, line: 520, type: !5426)
!5432 = !DILocalVariable(name: "inst", arg: 2, scope: !5423, file: !3, line: 521, type: !4485)
!5433 = !DILocalVariable(name: "name", arg: 3, scope: !5423, file: !3, line: 522, type: !309)
!5434 = !DILocalVariable(name: "type", arg: 4, scope: !5423, file: !3, line: 522, type: !223)
!5435 = !DILocalVariable(name: "mask", arg: 5, scope: !5423, file: !3, line: 522, type: !223)
!5436 = !DILocation(line: 520, column: 50, scope: !5423)
!5437 = !DILocation(line: 521, column: 33, scope: !5423)
!5438 = !DILocation(line: 522, column: 21, scope: !5423)
!5439 = !DILocation(line: 522, column: 31, scope: !5423)
!5440 = !DILocation(line: 522, column: 41, scope: !5423)
!5441 = !DILocation(line: 524, column: 2, scope: !5423)
!5442 = !DILocation(line: 524, column: 9, scope: !5423)
!5443 = !DILocation(line: 524, column: 14, scope: !5423)
!5444 = !DILocation(line: 524, column: 23, scope: !5423)
!5445 = !DILocation(line: 525, column: 28, scope: !5423)
!5446 = !DILocation(line: 525, column: 35, scope: !5423)
!5447 = !DILocation(line: 525, column: 41, scope: !5423)
!5448 = !DILocation(line: 525, column: 47, scope: !5423)
!5449 = !DILocation(line: 525, column: 53, scope: !5423)
!5450 = !DILocation(line: 525, column: 59, scope: !5423)
!5451 = !DILocation(line: 525, column: 9, scope: !5423)
!5452 = !DILocation(line: 525, column: 2, scope: !5423)
!5453 = !DISubprogram(name: "crypto_grab_spawn", scope: !4224, file: !4224, line: 158, type: !5454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!272, !4509, !4485, !309, !223, !223}
!5456 = distinct !DISubprogram(name: "crypto_alloc_ahash", scope: !3, file: !3, line: 529, type: !5457, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!4170, !309, !223, !223}
!5459 = !{!5460, !5461, !5462}
!5460 = !DILocalVariable(name: "alg_name", arg: 1, scope: !5456, file: !3, line: 529, type: !309)
!5461 = !DILocalVariable(name: "type", arg: 2, scope: !5456, file: !3, line: 529, type: !223)
!5462 = !DILocalVariable(name: "mask", arg: 3, scope: !5456, file: !3, line: 530, type: !223)
!5463 = !DILocation(line: 529, column: 53, scope: !5456)
!5464 = !DILocation(line: 529, column: 67, scope: !5456)
!5465 = !DILocation(line: 530, column: 10, scope: !5456)
!5466 = !DILocation(line: 532, column: 26, scope: !5456)
!5467 = !DILocation(line: 532, column: 56, scope: !5456)
!5468 = !DILocation(line: 532, column: 62, scope: !5456)
!5469 = !DILocation(line: 532, column: 9, scope: !5456)
!5470 = !DILocation(line: 532, column: 2, scope: !5456)
!5471 = distinct !DISubprogram(name: "crypto_alloc_tfm", scope: !4775, file: !4775, line: 148, type: !5472, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!111, !309, !4221, !223, !223}
!5474 = !{!5475, !5476, !5477, !5478}
!5475 = !DILocalVariable(name: "alg_name", arg: 1, scope: !5471, file: !4775, line: 148, type: !309)
!5476 = !DILocalVariable(name: "frontend", arg: 2, scope: !5471, file: !4775, line: 149, type: !4221)
!5477 = !DILocalVariable(name: "type", arg: 3, scope: !5471, file: !4775, line: 149, type: !223)
!5478 = !DILocalVariable(name: "mask", arg: 4, scope: !5471, file: !4775, line: 149, type: !223)
!5479 = !DILocation(line: 148, column: 50, scope: !5471)
!5480 = !DILocation(line: 149, column: 36, scope: !5471)
!5481 = !DILocation(line: 149, column: 50, scope: !5471)
!5482 = !DILocation(line: 149, column: 60, scope: !5471)
!5483 = !DILocation(line: 151, column: 31, scope: !5471)
!5484 = !DILocation(line: 151, column: 41, scope: !5471)
!5485 = !DILocation(line: 151, column: 51, scope: !5471)
!5486 = !DILocation(line: 151, column: 57, scope: !5471)
!5487 = !DILocation(line: 151, column: 9, scope: !5471)
!5488 = !DILocation(line: 151, column: 2, scope: !5471)
!5489 = distinct !DISubprogram(name: "crypto_has_ahash", scope: !3, file: !3, line: 536, type: !5490, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5492)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!272, !309, !223, !223}
!5492 = !{!5493, !5494, !5495}
!5493 = !DILocalVariable(name: "alg_name", arg: 1, scope: !5489, file: !3, line: 536, type: !309)
!5494 = !DILocalVariable(name: "type", arg: 2, scope: !5489, file: !3, line: 536, type: !223)
!5495 = !DILocalVariable(name: "mask", arg: 3, scope: !5489, file: !3, line: 536, type: !223)
!5496 = !DILocation(line: 536, column: 34, scope: !5489)
!5497 = !DILocation(line: 536, column: 48, scope: !5489)
!5498 = !DILocation(line: 536, column: 58, scope: !5489)
!5499 = !DILocation(line: 538, column: 29, scope: !5489)
!5500 = !DILocation(line: 538, column: 59, scope: !5489)
!5501 = !DILocation(line: 538, column: 65, scope: !5489)
!5502 = !DILocation(line: 538, column: 9, scope: !5489)
!5503 = !DILocation(line: 538, column: 2, scope: !5489)
!5504 = !DISubprogram(name: "crypto_type_has_alg", scope: !4775, file: !4775, line: 158, type: !5505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!272, !309, !4221, !223, !223}
!5507 = distinct !DISubprogram(name: "crypto_clone_ahash", scope: !3, file: !3, line: 542, type: !5508, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!4170, !4170}
!5510 = !{!5511, !5512, !5513, !5514, !5515, !5516, !5517}
!5511 = !DILocalVariable(name: "hash", arg: 1, scope: !5507, file: !3, line: 542, type: !4170)
!5512 = !DILocalVariable(name: "halg", scope: !5507, file: !3, line: 544, type: !4602)
!5513 = !DILocalVariable(name: "tfm", scope: !5507, file: !3, line: 545, type: !4193)
!5514 = !DILocalVariable(name: "nhash", scope: !5507, file: !3, line: 546, type: !4170)
!5515 = !DILocalVariable(name: "alg", scope: !5507, file: !3, line: 547, type: !4656)
!5516 = !DILocalVariable(name: "err", scope: !5507, file: !3, line: 548, type: !272)
!5517 = !DILabel(scope: !5507, name: "out_free_nhash", file: !3, line: 588)
!5518 = !DILocation(line: 542, column: 62, scope: !5507)
!5519 = !DILocation(line: 544, column: 2, scope: !5507)
!5520 = !DILocation(line: 544, column: 26, scope: !5507)
!5521 = !DILocation(line: 544, column: 56, scope: !5507)
!5522 = !DILocation(line: 544, column: 33, scope: !5507)
!5523 = !DILocation(line: 545, column: 2, scope: !5507)
!5524 = !DILocation(line: 545, column: 21, scope: !5507)
!5525 = !DILocation(line: 545, column: 44, scope: !5507)
!5526 = !DILocation(line: 545, column: 27, scope: !5507)
!5527 = !DILocation(line: 546, column: 2, scope: !5507)
!5528 = !DILocation(line: 546, column: 23, scope: !5507)
!5529 = !DILocation(line: 547, column: 2, scope: !5507)
!5530 = !DILocation(line: 547, column: 20, scope: !5507)
!5531 = !DILocation(line: 548, column: 2, scope: !5507)
!5532 = !DILocation(line: 548, column: 6, scope: !5507)
!5533 = !DILocation(line: 550, column: 34, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 550, column: 6)
!5535 = !DILocation(line: 550, column: 7, scope: !5534)
!5536 = !DILocation(line: 550, column: 6, scope: !5507)
!5537 = !DILocation(line: 551, column: 24, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 550, column: 41)
!5539 = !DILocation(line: 551, column: 9, scope: !5538)
!5540 = !DILocation(line: 551, column: 7, scope: !5538)
!5541 = !DILocation(line: 552, column: 14, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 552, column: 7)
!5543 = !DILocation(line: 552, column: 7, scope: !5542)
!5544 = !DILocation(line: 552, column: 7, scope: !5538)
!5545 = !DILocation(line: 553, column: 20, scope: !5542)
!5546 = !DILocation(line: 553, column: 11, scope: !5542)
!5547 = !DILocation(line: 553, column: 4, scope: !5542)
!5548 = !DILocation(line: 555, column: 10, scope: !5538)
!5549 = !DILocation(line: 555, column: 3, scope: !5538)
!5550 = !DILocation(line: 558, column: 47, scope: !5507)
!5551 = !DILocation(line: 558, column: 10, scope: !5507)
!5552 = !DILocation(line: 558, column: 8, scope: !5507)
!5553 = !DILocation(line: 560, column: 13, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 560, column: 6)
!5555 = !DILocation(line: 560, column: 6, scope: !5554)
!5556 = !DILocation(line: 560, column: 6, scope: !5507)
!5557 = !DILocation(line: 561, column: 10, scope: !5554)
!5558 = !DILocation(line: 561, column: 3, scope: !5554)
!5559 = !DILocation(line: 563, column: 16, scope: !5507)
!5560 = !DILocation(line: 563, column: 22, scope: !5507)
!5561 = !DILocation(line: 563, column: 2, scope: !5507)
!5562 = !DILocation(line: 563, column: 9, scope: !5507)
!5563 = !DILocation(line: 563, column: 14, scope: !5507)
!5564 = !DILocation(line: 564, column: 18, scope: !5507)
!5565 = !DILocation(line: 564, column: 24, scope: !5507)
!5566 = !DILocation(line: 564, column: 2, scope: !5507)
!5567 = !DILocation(line: 564, column: 9, scope: !5507)
!5568 = !DILocation(line: 564, column: 16, scope: !5507)
!5569 = !DILocation(line: 565, column: 17, scope: !5507)
!5570 = !DILocation(line: 565, column: 23, scope: !5507)
!5571 = !DILocation(line: 565, column: 2, scope: !5507)
!5572 = !DILocation(line: 565, column: 9, scope: !5507)
!5573 = !DILocation(line: 565, column: 15, scope: !5507)
!5574 = !DILocation(line: 566, column: 17, scope: !5507)
!5575 = !DILocation(line: 566, column: 23, scope: !5507)
!5576 = !DILocation(line: 566, column: 2, scope: !5507)
!5577 = !DILocation(line: 566, column: 9, scope: !5507)
!5578 = !DILocation(line: 566, column: 15, scope: !5507)
!5579 = !DILocation(line: 567, column: 18, scope: !5507)
!5580 = !DILocation(line: 567, column: 24, scope: !5507)
!5581 = !DILocation(line: 567, column: 2, scope: !5507)
!5582 = !DILocation(line: 567, column: 9, scope: !5507)
!5583 = !DILocation(line: 567, column: 16, scope: !5507)
!5584 = !DILocation(line: 568, column: 18, scope: !5507)
!5585 = !DILocation(line: 568, column: 24, scope: !5507)
!5586 = !DILocation(line: 568, column: 2, scope: !5507)
!5587 = !DILocation(line: 568, column: 9, scope: !5507)
!5588 = !DILocation(line: 568, column: 16, scope: !5507)
!5589 = !DILocation(line: 569, column: 18, scope: !5507)
!5590 = !DILocation(line: 569, column: 24, scope: !5507)
!5591 = !DILocation(line: 569, column: 2, scope: !5507)
!5592 = !DILocation(line: 569, column: 9, scope: !5507)
!5593 = !DILocation(line: 569, column: 16, scope: !5507)
!5594 = !DILocation(line: 570, column: 18, scope: !5507)
!5595 = !DILocation(line: 570, column: 24, scope: !5507)
!5596 = !DILocation(line: 570, column: 2, scope: !5507)
!5597 = !DILocation(line: 570, column: 9, scope: !5507)
!5598 = !DILocation(line: 570, column: 16, scope: !5507)
!5599 = !DILocation(line: 571, column: 19, scope: !5507)
!5600 = !DILocation(line: 571, column: 25, scope: !5507)
!5601 = !DILocation(line: 571, column: 2, scope: !5507)
!5602 = !DILocation(line: 571, column: 9, scope: !5507)
!5603 = !DILocation(line: 571, column: 17, scope: !5507)
!5604 = !DILocation(line: 572, column: 21, scope: !5507)
!5605 = !DILocation(line: 572, column: 27, scope: !5507)
!5606 = !DILocation(line: 572, column: 2, scope: !5507)
!5607 = !DILocation(line: 572, column: 9, scope: !5507)
!5608 = !DILocation(line: 572, column: 19, scope: !5507)
!5609 = !DILocation(line: 574, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 574, column: 6)
!5611 = !DILocation(line: 574, column: 11, scope: !5610)
!5612 = !DILocation(line: 574, column: 22, scope: !5610)
!5613 = !DILocation(line: 574, column: 31, scope: !5610)
!5614 = !DILocation(line: 574, column: 6, scope: !5507)
!5615 = !DILocation(line: 575, column: 39, scope: !5610)
!5616 = !DILocation(line: 575, column: 46, scope: !5610)
!5617 = !DILocation(line: 575, column: 10, scope: !5610)
!5618 = !DILocation(line: 575, column: 3, scope: !5610)
!5619 = !DILocation(line: 577, column: 6, scope: !5507)
!5620 = !DILocation(line: 578, column: 25, scope: !5507)
!5621 = !DILocation(line: 578, column: 8, scope: !5507)
!5622 = !DILocation(line: 578, column: 6, scope: !5507)
!5623 = !DILocation(line: 579, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 579, column: 6)
!5625 = !DILocation(line: 579, column: 12, scope: !5624)
!5626 = !DILocation(line: 579, column: 6, scope: !5507)
!5627 = !DILocation(line: 580, column: 3, scope: !5624)
!5628 = !DILocation(line: 582, column: 8, scope: !5507)
!5629 = !DILocation(line: 582, column: 13, scope: !5507)
!5630 = !DILocation(line: 582, column: 23, scope: !5507)
!5631 = !DILocation(line: 582, column: 30, scope: !5507)
!5632 = !DILocation(line: 582, column: 6, scope: !5507)
!5633 = !DILocation(line: 583, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 583, column: 6)
!5635 = !DILocation(line: 583, column: 6, scope: !5507)
!5636 = !DILocation(line: 584, column: 3, scope: !5634)
!5637 = !DILocation(line: 586, column: 9, scope: !5507)
!5638 = !DILocation(line: 586, column: 2, scope: !5507)
!5639 = !DILocation(line: 588, column: 1, scope: !5507)
!5640 = !DILocation(line: 589, column: 20, scope: !5507)
!5641 = !DILocation(line: 589, column: 2, scope: !5507)
!5642 = !DILocation(line: 590, column: 17, scope: !5507)
!5643 = !DILocation(line: 590, column: 9, scope: !5507)
!5644 = !DILocation(line: 590, column: 2, scope: !5507)
!5645 = !DILocation(line: 591, column: 1, scope: !5507)
!5646 = distinct !DISubprogram(name: "crypto_ahash_tfm", scope: !4172, file: !4172, line: 307, type: !5647, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!4193, !4170}
!5649 = !{!5650}
!5650 = !DILocalVariable(name: "tfm", arg: 1, scope: !5646, file: !4172, line: 307, type: !4170)
!5651 = !DILocation(line: 307, column: 72, scope: !5646)
!5652 = !DILocation(line: 309, column: 10, scope: !5646)
!5653 = !DILocation(line: 309, column: 15, scope: !5646)
!5654 = !DILocation(line: 309, column: 2, scope: !5646)
!5655 = distinct !DISubprogram(name: "crypto_hash_alg_has_setkey", scope: !3, file: !3, line: 676, type: !5656, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!744, !4602}
!5658 = !{!5659, !5660}
!5659 = !DILocalVariable(name: "halg", arg: 1, scope: !5655, file: !3, line: 676, type: !4602)
!5660 = !DILocalVariable(name: "alg", scope: !5655, file: !3, line: 678, type: !4204)
!5661 = !DILocation(line: 676, column: 57, scope: !5655)
!5662 = !DILocation(line: 678, column: 2, scope: !5655)
!5663 = !DILocation(line: 678, column: 21, scope: !5655)
!5664 = !DILocation(line: 678, column: 28, scope: !5655)
!5665 = !DILocation(line: 678, column: 34, scope: !5655)
!5666 = !DILocation(line: 680, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 680, column: 6)
!5668 = !DILocation(line: 680, column: 11, scope: !5667)
!5669 = !DILocation(line: 680, column: 20, scope: !5667)
!5670 = !DILocation(line: 680, column: 6, scope: !5655)
!5671 = !DILocation(line: 681, column: 57, scope: !5667)
!5672 = !DILocation(line: 681, column: 38, scope: !5667)
!5673 = !DILocation(line: 681, column: 10, scope: !5667)
!5674 = !DILocation(line: 681, column: 3, scope: !5667)
!5675 = !DILocation(line: 683, column: 28, scope: !5655)
!5676 = !DILocation(line: 683, column: 9, scope: !5655)
!5677 = !DILocation(line: 683, column: 34, scope: !5655)
!5678 = !DILocation(line: 683, column: 41, scope: !5655)
!5679 = !DILocation(line: 683, column: 2, scope: !5655)
!5680 = !DILocation(line: 684, column: 1, scope: !5655)
!5681 = distinct !DISubprogram(name: "crypto_tfm_get", scope: !4775, file: !4775, line: 214, type: !5682, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5684)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!4193, !4193}
!5684 = !{!5685}
!5685 = !DILocalVariable(name: "tfm", arg: 1, scope: !5681, file: !4775, line: 214, type: !4193)
!5686 = !DILocation(line: 214, column: 68, scope: !5681)
!5687 = !DILocation(line: 216, column: 32, scope: !5681)
!5688 = !DILocation(line: 216, column: 37, scope: !5681)
!5689 = !DILocation(line: 216, column: 9, scope: !5681)
!5690 = !DILocation(line: 216, column: 47, scope: !5681)
!5691 = !DILocation(line: 216, column: 53, scope: !5681)
!5692 = !DILocation(line: 216, column: 2, scope: !5681)
!5693 = distinct !DISubprogram(name: "IS_ERR", scope: !5694, file: !5694, line: 59, type: !5695, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5697)
!5694 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!744, !1137}
!5697 = !{!5698}
!5698 = !DILocalVariable(name: "ptr", arg: 1, scope: !5693, file: !5694, line: 59, type: !1137)
!5699 = !DILocation(line: 59, column: 60, scope: !5693)
!5700 = !DILocation(line: 61, column: 9, scope: !5693)
!5701 = !DILocation(line: 61, column: 2, scope: !5693)
!5702 = distinct !DISubprogram(name: "ERR_CAST", scope: !5694, file: !5694, line: 82, type: !5703, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5705)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!111, !1137}
!5705 = !{!5706}
!5706 = !DILocalVariable(name: "ptr", arg: 1, scope: !5702, file: !5694, line: 82, type: !1137)
!5707 = !DILocation(line: 82, column: 64, scope: !5702)
!5708 = !DILocation(line: 85, column: 18, scope: !5702)
!5709 = !DILocation(line: 85, column: 2, scope: !5702)
!5710 = !DISubprogram(name: "crypto_clone_tfm", scope: !4775, file: !4775, line: 127, type: !5711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!111, !4221, !4193}
!5713 = !DISubprogram(name: "crypto_clone_shash_ops_async", scope: !5714, file: !5714, line: 35, type: !5715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5714 = !DIFile(filename: "crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dfd3f51bc126fbe4bf95f1bbfd2bd0bb")
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!4170, !4170, !4170}
!5717 = distinct !DISubprogram(name: "crypto_ahash_alg", scope: !4610, file: !4610, line: 152, type: !5718, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5720)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{!4656, !4170}
!5720 = !{!5721, !5722}
!5721 = !DILocalVariable(name: "hash", arg: 1, scope: !5717, file: !4610, line: 152, type: !4170)
!5722 = !DILocalVariable(name: "__mptr", scope: !5723, file: !4610, line: 154, type: !111)
!5723 = distinct !DILexicalBlock(scope: !5717, file: !4610, line: 154, column: 9)
!5724 = !DILocation(line: 152, column: 71, scope: !5717)
!5725 = !DILocation(line: 154, column: 9, scope: !5723)
!5726 = !DILocation(line: 154, column: 9, scope: !5717)
!5727 = !DILocation(line: 154, column: 2, scope: !5717)
!5728 = distinct !DISubprogram(name: "crypto_free_ahash", scope: !4172, file: !4172, line: 318, type: !4644, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5729)
!5729 = !{!5730}
!5730 = !DILocalVariable(name: "tfm", arg: 1, scope: !5728, file: !4172, line: 318, type: !4170)
!5731 = !DILocation(line: 318, column: 59, scope: !5728)
!5732 = !DILocation(line: 320, column: 21, scope: !5728)
!5733 = !DILocation(line: 320, column: 43, scope: !5728)
!5734 = !DILocation(line: 320, column: 26, scope: !5728)
!5735 = !DILocation(line: 320, column: 2, scope: !5728)
!5736 = !DILocation(line: 321, column: 1, scope: !5728)
!5737 = distinct !DISubprogram(name: "ERR_PTR", scope: !5694, file: !5694, line: 39, type: !5738, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5740)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!111, !472}
!5740 = !{!5741}
!5741 = !DILocalVariable(name: "error", arg: 1, scope: !5737, file: !5694, line: 39, type: !472)
!5742 = !DILocation(line: 39, column: 48, scope: !5737)
!5743 = !DILocation(line: 41, column: 18, scope: !5737)
!5744 = !DILocation(line: 41, column: 9, scope: !5737)
!5745 = !DILocation(line: 41, column: 2, scope: !5737)
!5746 = distinct !DISubprogram(name: "crypto_register_ahash", scope: !3, file: !3, line: 612, type: !5747, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5749)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!272, !4656}
!5749 = !{!5750, !5751, !5752}
!5750 = !DILocalVariable(name: "alg", arg: 1, scope: !5746, file: !3, line: 612, type: !4656)
!5751 = !DILocalVariable(name: "base", scope: !5746, file: !3, line: 614, type: !4204)
!5752 = !DILocalVariable(name: "err", scope: !5746, file: !3, line: 615, type: !272)
!5753 = !DILocation(line: 612, column: 45, scope: !5746)
!5754 = !DILocation(line: 614, column: 2, scope: !5746)
!5755 = !DILocation(line: 614, column: 21, scope: !5746)
!5756 = !DILocation(line: 614, column: 29, scope: !5746)
!5757 = !DILocation(line: 614, column: 34, scope: !5746)
!5758 = !DILocation(line: 614, column: 39, scope: !5746)
!5759 = !DILocation(line: 615, column: 2, scope: !5746)
!5760 = !DILocation(line: 615, column: 6, scope: !5746)
!5761 = !DILocation(line: 617, column: 26, scope: !5746)
!5762 = !DILocation(line: 617, column: 8, scope: !5746)
!5763 = !DILocation(line: 617, column: 6, scope: !5746)
!5764 = !DILocation(line: 618, column: 6, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 618, column: 6)
!5766 = !DILocation(line: 618, column: 6, scope: !5746)
!5767 = !DILocation(line: 619, column: 10, scope: !5765)
!5768 = !DILocation(line: 619, column: 3, scope: !5765)
!5769 = !DILocation(line: 621, column: 29, scope: !5746)
!5770 = !DILocation(line: 621, column: 9, scope: !5746)
!5771 = !DILocation(line: 621, column: 2, scope: !5746)
!5772 = !DILocation(line: 622, column: 1, scope: !5746)
!5773 = distinct !DISubprogram(name: "ahash_prepare_alg", scope: !3, file: !3, line: 594, type: !5747, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5774)
!5774 = !{!5775, !5776, !5777}
!5775 = !DILocalVariable(name: "alg", arg: 1, scope: !5773, file: !3, line: 594, type: !4656)
!5776 = !DILocalVariable(name: "base", scope: !5773, file: !3, line: 596, type: !4204)
!5777 = !DILocalVariable(name: "err", scope: !5773, file: !3, line: 597, type: !272)
!5778 = !DILocation(line: 594, column: 48, scope: !5773)
!5779 = !DILocation(line: 596, column: 2, scope: !5773)
!5780 = !DILocation(line: 596, column: 21, scope: !5773)
!5781 = !DILocation(line: 596, column: 29, scope: !5773)
!5782 = !DILocation(line: 596, column: 34, scope: !5773)
!5783 = !DILocation(line: 596, column: 39, scope: !5773)
!5784 = !DILocation(line: 597, column: 2, scope: !5773)
!5785 = !DILocation(line: 597, column: 6, scope: !5773)
!5786 = !DILocation(line: 599, column: 6, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 599, column: 6)
!5788 = !DILocation(line: 599, column: 11, scope: !5787)
!5789 = !DILocation(line: 599, column: 16, scope: !5787)
!5790 = !DILocation(line: 599, column: 26, scope: !5787)
!5791 = !DILocation(line: 599, column: 6, scope: !5773)
!5792 = !DILocation(line: 600, column: 3, scope: !5787)
!5793 = !DILocation(line: 602, column: 26, scope: !5773)
!5794 = !DILocation(line: 602, column: 31, scope: !5773)
!5795 = !DILocation(line: 602, column: 8, scope: !5773)
!5796 = !DILocation(line: 602, column: 6, scope: !5773)
!5797 = !DILocation(line: 603, column: 6, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 603, column: 6)
!5799 = !DILocation(line: 603, column: 6, scope: !5773)
!5800 = !DILocation(line: 604, column: 10, scope: !5798)
!5801 = !DILocation(line: 604, column: 3, scope: !5798)
!5802 = !DILocation(line: 606, column: 2, scope: !5773)
!5803 = !DILocation(line: 606, column: 8, scope: !5773)
!5804 = !DILocation(line: 606, column: 17, scope: !5773)
!5805 = !DILocation(line: 607, column: 2, scope: !5773)
!5806 = !DILocation(line: 607, column: 8, scope: !5773)
!5807 = !DILocation(line: 607, column: 18, scope: !5773)
!5808 = !DILocation(line: 609, column: 2, scope: !5773)
!5809 = !DILocation(line: 610, column: 1, scope: !5773)
!5810 = !DISubprogram(name: "crypto_register_alg", scope: !4224, file: !4224, line: 141, type: !5811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!272, !4204}
!5813 = distinct !DISubprogram(name: "crypto_unregister_ahash", scope: !3, file: !3, line: 625, type: !5814, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{null, !4656}
!5816 = !{!5817}
!5817 = !DILocalVariable(name: "alg", arg: 1, scope: !5813, file: !3, line: 625, type: !4656)
!5818 = !DILocation(line: 625, column: 48, scope: !5813)
!5819 = !DILocation(line: 627, column: 25, scope: !5813)
!5820 = !DILocation(line: 627, column: 30, scope: !5813)
!5821 = !DILocation(line: 627, column: 35, scope: !5813)
!5822 = !DILocation(line: 627, column: 2, scope: !5813)
!5823 = !DILocation(line: 628, column: 1, scope: !5813)
!5824 = !DISubprogram(name: "crypto_unregister_alg", scope: !4224, file: !4224, line: 142, type: !4562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5825 = distinct !DISubprogram(name: "crypto_register_ahashes", scope: !3, file: !3, line: 631, type: !5826, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!272, !4656, !272}
!5828 = !{!5829, !5830, !5831, !5832, !5833}
!5829 = !DILocalVariable(name: "algs", arg: 1, scope: !5825, file: !3, line: 631, type: !4656)
!5830 = !DILocalVariable(name: "count", arg: 2, scope: !5825, file: !3, line: 631, type: !272)
!5831 = !DILocalVariable(name: "i", scope: !5825, file: !3, line: 633, type: !272)
!5832 = !DILocalVariable(name: "ret", scope: !5825, file: !3, line: 633, type: !272)
!5833 = !DILabel(scope: !5825, name: "err", file: !3, line: 643)
!5834 = !DILocation(line: 631, column: 47, scope: !5825)
!5835 = !DILocation(line: 631, column: 57, scope: !5825)
!5836 = !DILocation(line: 633, column: 2, scope: !5825)
!5837 = !DILocation(line: 633, column: 6, scope: !5825)
!5838 = !DILocation(line: 633, column: 9, scope: !5825)
!5839 = !DILocation(line: 635, column: 9, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 635, column: 2)
!5841 = !DILocation(line: 635, column: 7, scope: !5840)
!5842 = !DILocation(line: 635, column: 14, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 635, column: 2)
!5844 = !DILocation(line: 635, column: 18, scope: !5843)
!5845 = !DILocation(line: 635, column: 16, scope: !5843)
!5846 = !DILocation(line: 635, column: 2, scope: !5840)
!5847 = !DILocation(line: 636, column: 32, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 635, column: 30)
!5849 = !DILocation(line: 636, column: 37, scope: !5848)
!5850 = !DILocation(line: 636, column: 9, scope: !5848)
!5851 = !DILocation(line: 636, column: 7, scope: !5848)
!5852 = !DILocation(line: 637, column: 7, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 637, column: 7)
!5854 = !DILocation(line: 637, column: 7, scope: !5848)
!5855 = !DILocation(line: 638, column: 4, scope: !5853)
!5856 = !DILocation(line: 639, column: 2, scope: !5848)
!5857 = !DILocation(line: 635, column: 26, scope: !5843)
!5858 = !DILocation(line: 635, column: 2, scope: !5843)
!5859 = distinct !{!5859, !5846, !5860, !5861, !5862}
!5860 = !DILocation(line: 639, column: 2, scope: !5840)
!5861 = !{!"llvm.loop.mustprogress"}
!5862 = !{!"llvm.loop.unroll.disable"}
!5863 = !DILocation(line: 641, column: 2, scope: !5825)
!5864 = !DILocation(line: 643, column: 1, scope: !5825)
!5865 = !DILocation(line: 644, column: 7, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 644, column: 2)
!5867 = !DILocation(line: 644, column: 12, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 644, column: 2)
!5869 = !DILocation(line: 644, column: 14, scope: !5868)
!5870 = !DILocation(line: 644, column: 2, scope: !5866)
!5871 = !DILocation(line: 645, column: 28, scope: !5868)
!5872 = !DILocation(line: 645, column: 33, scope: !5868)
!5873 = !DILocation(line: 645, column: 3, scope: !5868)
!5874 = !DILocation(line: 644, column: 20, scope: !5868)
!5875 = !DILocation(line: 644, column: 2, scope: !5868)
!5876 = distinct !{!5876, !5870, !5877, !5861, !5862}
!5877 = !DILocation(line: 645, column: 35, scope: !5866)
!5878 = !DILocation(line: 647, column: 9, scope: !5825)
!5879 = !DILocation(line: 647, column: 2, scope: !5825)
!5880 = !DILocation(line: 648, column: 1, scope: !5825)
!5881 = distinct !DISubprogram(name: "crypto_unregister_ahashes", scope: !3, file: !3, line: 651, type: !5882, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5884)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{null, !4656, !272}
!5884 = !{!5885, !5886, !5887}
!5885 = !DILocalVariable(name: "algs", arg: 1, scope: !5881, file: !3, line: 651, type: !4656)
!5886 = !DILocalVariable(name: "count", arg: 2, scope: !5881, file: !3, line: 651, type: !272)
!5887 = !DILocalVariable(name: "i", scope: !5881, file: !3, line: 653, type: !272)
!5888 = !DILocation(line: 651, column: 50, scope: !5881)
!5889 = !DILocation(line: 651, column: 60, scope: !5881)
!5890 = !DILocation(line: 653, column: 2, scope: !5881)
!5891 = !DILocation(line: 653, column: 6, scope: !5881)
!5892 = !DILocation(line: 655, column: 11, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 655, column: 2)
!5894 = !DILocation(line: 655, column: 17, scope: !5893)
!5895 = !DILocation(line: 655, column: 9, scope: !5893)
!5896 = !DILocation(line: 655, column: 7, scope: !5893)
!5897 = !DILocation(line: 655, column: 22, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 655, column: 2)
!5899 = !DILocation(line: 655, column: 24, scope: !5898)
!5900 = !DILocation(line: 655, column: 2, scope: !5893)
!5901 = !DILocation(line: 656, column: 28, scope: !5898)
!5902 = !DILocation(line: 656, column: 33, scope: !5898)
!5903 = !DILocation(line: 656, column: 3, scope: !5898)
!5904 = !DILocation(line: 655, column: 30, scope: !5898)
!5905 = !DILocation(line: 655, column: 2, scope: !5898)
!5906 = distinct !{!5906, !5900, !5907, !5861, !5862}
!5907 = !DILocation(line: 656, column: 35, scope: !5893)
!5908 = !DILocation(line: 657, column: 1, scope: !5881)
!5909 = distinct !DISubprogram(name: "ahash_register_instance", scope: !3, file: !3, line: 660, type: !5910, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5912)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!272, !4490, !4608}
!5912 = !{!5913, !5914, !5915, !5916, !5919}
!5913 = !DILocalVariable(name: "tmpl", arg: 1, scope: !5909, file: !3, line: 660, type: !4490)
!5914 = !DILocalVariable(name: "inst", arg: 2, scope: !5909, file: !3, line: 661, type: !4608)
!5915 = !DILocalVariable(name: "err", scope: !5909, file: !3, line: 663, type: !272)
!5916 = !DILocalVariable(name: "__ret_warn_on", scope: !5917, file: !3, line: 665, type: !272)
!5917 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 665, column: 6)
!5918 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 665, column: 6)
!5919 = !DILocalVariable(name: "__flags", scope: !5920, file: !3, line: 665, type: !272)
!5920 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 665, column: 6)
!5921 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 665, column: 6)
!5922 = !DILocation(line: 660, column: 53, scope: !5909)
!5923 = !DILocation(line: 661, column: 31, scope: !5909)
!5924 = !DILocation(line: 663, column: 2, scope: !5909)
!5925 = !DILocation(line: 663, column: 6, scope: !5909)
!5926 = !DILocation(line: 665, column: 6, scope: !5917)
!5927 = !DILocation(line: 665, column: 6, scope: !5921)
!5928 = !DILocation(line: 665, column: 6, scope: !5920)
!5929 = !DILocation(line: 665, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 665, column: 6)
!5931 = !DILocation(line: 665, column: 6, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 665, column: 6)
!5933 = !{i64 2155750503, i64 2155750532, i64 2155750578, i64 2155750636, i64 2155750690, i64 2155750744, i64 2155750799, i64 2155750830, i64 2155751138, i64 2155751144, i64 2155751191, i64 2155751214, i64 2155751240}
!5934 = !DILocation(line: 665, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 665, column: 6)
!5936 = !DILocation(line: 665, column: 6, scope: !5918)
!5937 = !DILocation(line: 665, column: 6, scope: !5909)
!5938 = !DILocation(line: 666, column: 3, scope: !5918)
!5939 = !DILocation(line: 668, column: 27, scope: !5909)
!5940 = !DILocation(line: 668, column: 33, scope: !5909)
!5941 = !DILocation(line: 668, column: 8, scope: !5909)
!5942 = !DILocation(line: 668, column: 6, scope: !5909)
!5943 = !DILocation(line: 669, column: 6, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 669, column: 6)
!5945 = !DILocation(line: 669, column: 6, scope: !5909)
!5946 = !DILocation(line: 670, column: 10, scope: !5944)
!5947 = !DILocation(line: 670, column: 3, scope: !5944)
!5948 = !DILocation(line: 672, column: 34, scope: !5909)
!5949 = !DILocation(line: 672, column: 62, scope: !5909)
!5950 = !DILocation(line: 672, column: 40, scope: !5909)
!5951 = !DILocation(line: 672, column: 9, scope: !5909)
!5952 = !DILocation(line: 672, column: 2, scope: !5909)
!5953 = !DILocation(line: 673, column: 1, scope: !5909)
!5954 = !DISubprogram(name: "crypto_register_instance", scope: !4224, file: !4224, line: 154, type: !5955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!272, !4490, !4485}
!5957 = distinct !DISubprogram(name: "ahash_crypto_instance", scope: !4610, file: !4610, line: 177, type: !5958, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5960)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!4485, !4608}
!5960 = !{!5961}
!5961 = !DILocalVariable(name: "inst", arg: 1, scope: !5957, file: !4610, line: 178, type: !4608)
!5962 = !DILocation(line: 178, column: 25, scope: !5957)
!5963 = !DILocation(line: 180, column: 10, scope: !5957)
!5964 = !DILocation(line: 180, column: 16, scope: !5957)
!5965 = !DILocation(line: 180, column: 18, scope: !5957)
!5966 = !DILocation(line: 180, column: 2, scope: !5957)
!5967 = distinct !DISubprogram(name: "crypto_shash_alg_has_setkey", scope: !4610, file: !4610, line: 81, type: !5968, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!744, !4657}
!5970 = !{!5971}
!5971 = !DILocalVariable(name: "alg", arg: 1, scope: !5967, file: !4610, line: 81, type: !4657)
!5972 = !DILocation(line: 81, column: 66, scope: !5967)
!5973 = !DILocation(line: 83, column: 9, scope: !5967)
!5974 = !DILocation(line: 83, column: 14, scope: !5967)
!5975 = !DILocation(line: 83, column: 21, scope: !5967)
!5976 = !DILocation(line: 83, column: 2, scope: !5967)
!5977 = distinct !DISubprogram(name: "__crypto_shash_alg", scope: !4172, file: !4172, line: 821, type: !5978, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!4657, !4204}
!5980 = !{!5981, !5982}
!5981 = !DILocalVariable(name: "alg", arg: 1, scope: !5977, file: !4172, line: 821, type: !4204)
!5982 = !DILocalVariable(name: "__mptr", scope: !5983, file: !4172, line: 823, type: !111)
!5983 = distinct !DILexicalBlock(scope: !5977, file: !4172, line: 823, column: 9)
!5984 = !DILocation(line: 821, column: 71, scope: !5977)
!5985 = !DILocation(line: 823, column: 9, scope: !5983)
!5986 = !DILocation(line: 823, column: 9, scope: !5977)
!5987 = !DILocation(line: 823, column: 2, scope: !5977)
!5988 = distinct !DISubprogram(name: "__crypto_ahash_alg", scope: !4610, file: !4610, line: 146, type: !5989, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5991)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{!4656, !4204}
!5991 = !{!5992, !5993}
!5992 = !DILocalVariable(name: "alg", arg: 1, scope: !5988, file: !4610, line: 146, type: !4204)
!5993 = !DILocalVariable(name: "__mptr", scope: !5994, file: !4610, line: 148, type: !111)
!5994 = distinct !DILexicalBlock(scope: !5988, file: !4610, line: 148, column: 9)
!5995 = !DILocation(line: 146, column: 71, scope: !5988)
!5996 = !DILocation(line: 148, column: 9, scope: !5994)
!5997 = !DILocation(line: 148, column: 9, scope: !5988)
!5998 = !DILocation(line: 148, column: 2, scope: !5988)
!5999 = distinct !DISubprogram(name: "__might_resched", scope: !6000, file: !6000, line: 184, type: !6001, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6003)
!6000 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6001 = !DISubroutineType(types: !6002)
!6002 = !{null, !309, !272, !7}
!6003 = !{!6004, !6005, !6006}
!6004 = !DILocalVariable(name: "file", arg: 1, scope: !5999, file: !6000, line: 184, type: !309)
!6005 = !DILocalVariable(name: "line", arg: 2, scope: !5999, file: !6000, line: 184, type: !272)
!6006 = !DILocalVariable(name: "offsets", arg: 3, scope: !5999, file: !6000, line: 185, type: !7)
!6007 = !DILocation(line: 184, column: 50, scope: !5999)
!6008 = !DILocation(line: 184, column: 60, scope: !5999)
!6009 = !DILocation(line: 185, column: 23, scope: !5999)
!6010 = !DILocation(line: 185, column: 34, scope: !5999)
!6011 = !DILocation(line: 2104, column: 9, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !4781, file: !1370, line: 2104, column: 9)
!6013 = !DILocation(line: 2104, column: 9, scope: !4781)
!6014 = !DILocation(line: 2104, column: 2, scope: !4781)
!6015 = distinct !DISubprogram(name: "kmap_local_page", scope: !4932, file: !4932, line: 183, type: !6016, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!111, !120}
!6018 = !{!6019}
!6019 = !DILocalVariable(name: "page", arg: 1, scope: !6015, file: !4932, line: 183, type: !120)
!6020 = !DILocation(line: 183, column: 50, scope: !6015)
!6021 = !DILocation(line: 185, column: 9, scope: !6015)
!6022 = !DILocation(line: 185, column: 2, scope: !6015)
!6023 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1222, file: !1222, line: 2176, type: !6024, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6028)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!111, !6026}
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!6028 = !{!6029}
!6029 = !DILocalVariable(name: "page", arg: 1, scope: !6023, file: !1222, line: 2176, type: !6026)
!6030 = !DILocation(line: 2176, column: 69, scope: !6023)
!6031 = !DILocation(line: 2178, column: 9, scope: !6023)
!6032 = !DILocation(line: 2178, column: 2, scope: !6023)
!6033 = distinct !DISubprogram(name: "sg_page", scope: !4571, file: !4571, line: 168, type: !6034, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!120, !4569}
!6036 = !{!6037}
!6037 = !DILocalVariable(name: "sg", arg: 1, scope: !6033, file: !4571, line: 168, type: !4569)
!6038 = !DILocation(line: 168, column: 56, scope: !6033)
!6039 = !DILocation(line: 173, column: 26, scope: !6033)
!6040 = !DILocation(line: 173, column: 31, scope: !6033)
!6041 = !DILocation(line: 173, column: 41, scope: !6033)
!6042 = !DILocation(line: 173, column: 9, scope: !6033)
!6043 = !DILocation(line: 173, column: 2, scope: !6033)
!6044 = distinct !DISubprogram(name: "crypto_tfm_alg_alignmask", scope: !4183, file: !4183, line: 470, type: !6045, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!7, !4193}
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "tfm", arg: 1, scope: !6044, file: !4183, line: 470, type: !4193)
!6049 = !DILocation(line: 470, column: 72, scope: !6044)
!6050 = !DILocation(line: 472, column: 9, scope: !6044)
!6051 = !DILocation(line: 472, column: 14, scope: !6044)
!6052 = !DILocation(line: 472, column: 25, scope: !6044)
!6053 = !DILocation(line: 472, column: 2, scope: !6044)
!6054 = distinct !DISubprogram(name: "__crypto_ahash_cast", scope: !4172, file: !4172, line: 283, type: !6055, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6057)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!4170, !4193}
!6057 = !{!6058, !6059}
!6058 = !DILocalVariable(name: "tfm", arg: 1, scope: !6054, file: !4172, line: 283, type: !4193)
!6059 = !DILocalVariable(name: "__mptr", scope: !6060, file: !4172, line: 285, type: !111)
!6060 = distinct !DILexicalBlock(scope: !6054, file: !4172, line: 285, column: 9)
!6061 = !DILocation(line: 283, column: 75, scope: !6054)
!6062 = !DILocation(line: 285, column: 9, scope: !6060)
!6063 = !DILocation(line: 285, column: 9, scope: !6054)
!6064 = !DILocation(line: 285, column: 2, scope: !6054)
!6065 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !6066, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6068)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{!111, !482, !962}
!6068 = !{!6069, !6070, !6071}
!6069 = !DILocalVariable(name: "size", arg: 1, scope: !6065, file: !93, line: 591, type: !482)
!6070 = !DILocalVariable(name: "flags", arg: 2, scope: !6065, file: !93, line: 591, type: !962)
!6071 = !DILocalVariable(name: "index", scope: !6072, file: !93, line: 594, type: !7)
!6072 = distinct !DILexicalBlock(scope: !6073, file: !93, line: 593, column: 42)
!6073 = distinct !DILexicalBlock(scope: !6065, file: !93, line: 593, column: 6)
!6074 = !DILocation(line: 591, column: 61, scope: !6065)
!6075 = !DILocation(line: 591, column: 73, scope: !6065)
!6076 = !DILocation(line: 593, column: 27, scope: !6073)
!6077 = !DILocation(line: 593, column: 6, scope: !6073)
!6078 = !DILocation(line: 593, column: 33, scope: !6073)
!6079 = !DILocation(line: 593, column: 36, scope: !6073)
!6080 = !DILocation(line: 593, column: 6, scope: !6065)
!6081 = !DILocation(line: 594, column: 3, scope: !6072)
!6082 = !DILocation(line: 594, column: 16, scope: !6072)
!6083 = !DILocation(line: 596, column: 7, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6072, file: !93, line: 596, column: 7)
!6085 = !DILocation(line: 596, column: 12, scope: !6084)
!6086 = !DILocation(line: 596, column: 7, scope: !6072)
!6087 = !DILocation(line: 597, column: 25, scope: !6084)
!6088 = !DILocation(line: 597, column: 31, scope: !6084)
!6089 = !DILocation(line: 597, column: 11, scope: !6084)
!6090 = !DILocation(line: 597, column: 4, scope: !6084)
!6091 = !DILocation(line: 599, column: 11, scope: !6072)
!6092 = !DILocation(line: 599, column: 9, scope: !6072)
!6093 = !DILocation(line: 601, column: 33, scope: !6072)
!6094 = !DILocation(line: 601, column: 40, scope: !6072)
!6095 = !DILocation(line: 601, column: 20, scope: !6072)
!6096 = !DILocation(line: 601, column: 5, scope: !6072)
!6097 = !DILocation(line: 601, column: 51, scope: !6072)
!6098 = !DILocation(line: 602, column: 5, scope: !6072)
!6099 = !DILocation(line: 602, column: 12, scope: !6072)
!6100 = !DILocation(line: 600, column: 10, scope: !6072)
!6101 = !DILocation(line: 600, column: 3, scope: !6072)
!6102 = !DILocation(line: 603, column: 2, scope: !6073)
!6103 = !DILocation(line: 604, column: 19, scope: !6065)
!6104 = !DILocation(line: 604, column: 25, scope: !6065)
!6105 = !DILocation(line: 604, column: 9, scope: !6065)
!6106 = !DILocation(line: 604, column: 2, scope: !6065)
!6107 = !DILocation(line: 605, column: 1, scope: !6065)
!6108 = !DISubprogram(name: "kfree_sensitive", scope: !93, file: !93, line: 228, type: !4933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6109 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !6066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6110 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !6111, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6113)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!7, !482, !744}
!6113 = !{!6114, !6115}
!6114 = !DILocalVariable(name: "size", arg: 1, scope: !6110, file: !93, line: 444, type: !482)
!6115 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6110, file: !93, line: 445, type: !744)
!6116 = !DILocation(line: 444, column: 60, scope: !6110)
!6117 = !DILocation(line: 445, column: 16, scope: !6110)
!6118 = !DILocation(line: 447, column: 7, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 447, column: 6)
!6120 = !DILocation(line: 447, column: 6, scope: !6110)
!6121 = !DILocation(line: 448, column: 3, scope: !6119)
!6122 = !DILocation(line: 450, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 450, column: 6)
!6124 = !DILocation(line: 450, column: 11, scope: !6123)
!6125 = !DILocation(line: 450, column: 6, scope: !6110)
!6126 = !DILocation(line: 451, column: 3, scope: !6123)
!6127 = !DILocation(line: 453, column: 32, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 453, column: 6)
!6129 = !DILocation(line: 453, column: 37, scope: !6128)
!6130 = !DILocation(line: 453, column: 42, scope: !6128)
!6131 = !DILocation(line: 453, column: 45, scope: !6128)
!6132 = !DILocation(line: 453, column: 50, scope: !6128)
!6133 = !DILocation(line: 453, column: 6, scope: !6110)
!6134 = !DILocation(line: 454, column: 3, scope: !6128)
!6135 = !DILocation(line: 455, column: 32, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 455, column: 6)
!6137 = !DILocation(line: 455, column: 37, scope: !6136)
!6138 = !DILocation(line: 455, column: 43, scope: !6136)
!6139 = !DILocation(line: 455, column: 46, scope: !6136)
!6140 = !DILocation(line: 455, column: 51, scope: !6136)
!6141 = !DILocation(line: 455, column: 6, scope: !6110)
!6142 = !DILocation(line: 456, column: 3, scope: !6136)
!6143 = !DILocation(line: 457, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 457, column: 6)
!6145 = !DILocation(line: 457, column: 11, scope: !6144)
!6146 = !DILocation(line: 457, column: 6, scope: !6110)
!6147 = !DILocation(line: 457, column: 26, scope: !6144)
!6148 = !DILocation(line: 458, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 458, column: 6)
!6150 = !DILocation(line: 458, column: 11, scope: !6149)
!6151 = !DILocation(line: 458, column: 6, scope: !6110)
!6152 = !DILocation(line: 458, column: 26, scope: !6149)
!6153 = !DILocation(line: 459, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 459, column: 6)
!6155 = !DILocation(line: 459, column: 11, scope: !6154)
!6156 = !DILocation(line: 459, column: 6, scope: !6110)
!6157 = !DILocation(line: 459, column: 26, scope: !6154)
!6158 = !DILocation(line: 460, column: 6, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 460, column: 6)
!6160 = !DILocation(line: 460, column: 11, scope: !6159)
!6161 = !DILocation(line: 460, column: 6, scope: !6110)
!6162 = !DILocation(line: 460, column: 26, scope: !6159)
!6163 = !DILocation(line: 461, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 461, column: 6)
!6165 = !DILocation(line: 461, column: 11, scope: !6164)
!6166 = !DILocation(line: 461, column: 6, scope: !6110)
!6167 = !DILocation(line: 461, column: 26, scope: !6164)
!6168 = !DILocation(line: 462, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 462, column: 6)
!6170 = !DILocation(line: 462, column: 11, scope: !6169)
!6171 = !DILocation(line: 462, column: 6, scope: !6110)
!6172 = !DILocation(line: 462, column: 26, scope: !6169)
!6173 = !DILocation(line: 463, column: 6, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 463, column: 6)
!6175 = !DILocation(line: 463, column: 11, scope: !6174)
!6176 = !DILocation(line: 463, column: 6, scope: !6110)
!6177 = !DILocation(line: 463, column: 26, scope: !6174)
!6178 = !DILocation(line: 464, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 464, column: 6)
!6180 = !DILocation(line: 464, column: 11, scope: !6179)
!6181 = !DILocation(line: 464, column: 6, scope: !6110)
!6182 = !DILocation(line: 464, column: 26, scope: !6179)
!6183 = !DILocation(line: 465, column: 6, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 465, column: 6)
!6185 = !DILocation(line: 465, column: 11, scope: !6184)
!6186 = !DILocation(line: 465, column: 6, scope: !6110)
!6187 = !DILocation(line: 465, column: 26, scope: !6184)
!6188 = !DILocation(line: 466, column: 6, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 466, column: 6)
!6190 = !DILocation(line: 466, column: 11, scope: !6189)
!6191 = !DILocation(line: 466, column: 6, scope: !6110)
!6192 = !DILocation(line: 466, column: 26, scope: !6189)
!6193 = !DILocation(line: 467, column: 6, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 467, column: 6)
!6195 = !DILocation(line: 467, column: 11, scope: !6194)
!6196 = !DILocation(line: 467, column: 6, scope: !6110)
!6197 = !DILocation(line: 467, column: 26, scope: !6194)
!6198 = !DILocation(line: 468, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 468, column: 6)
!6200 = !DILocation(line: 468, column: 11, scope: !6199)
!6201 = !DILocation(line: 468, column: 6, scope: !6110)
!6202 = !DILocation(line: 468, column: 26, scope: !6199)
!6203 = !DILocation(line: 469, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 469, column: 6)
!6205 = !DILocation(line: 469, column: 11, scope: !6204)
!6206 = !DILocation(line: 469, column: 6, scope: !6110)
!6207 = !DILocation(line: 469, column: 26, scope: !6204)
!6208 = !DILocation(line: 470, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 470, column: 6)
!6210 = !DILocation(line: 470, column: 11, scope: !6209)
!6211 = !DILocation(line: 470, column: 6, scope: !6110)
!6212 = !DILocation(line: 470, column: 26, scope: !6209)
!6213 = !DILocation(line: 471, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 471, column: 6)
!6215 = !DILocation(line: 471, column: 11, scope: !6214)
!6216 = !DILocation(line: 471, column: 6, scope: !6110)
!6217 = !DILocation(line: 471, column: 26, scope: !6214)
!6218 = !DILocation(line: 472, column: 6, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 472, column: 6)
!6220 = !DILocation(line: 472, column: 11, scope: !6219)
!6221 = !DILocation(line: 472, column: 6, scope: !6110)
!6222 = !DILocation(line: 472, column: 26, scope: !6219)
!6223 = !DILocation(line: 473, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 473, column: 6)
!6225 = !DILocation(line: 473, column: 11, scope: !6224)
!6226 = !DILocation(line: 473, column: 6, scope: !6110)
!6227 = !DILocation(line: 473, column: 26, scope: !6224)
!6228 = !DILocation(line: 474, column: 6, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 474, column: 6)
!6230 = !DILocation(line: 474, column: 11, scope: !6229)
!6231 = !DILocation(line: 474, column: 6, scope: !6110)
!6232 = !DILocation(line: 474, column: 27, scope: !6229)
!6233 = !DILocation(line: 475, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 475, column: 6)
!6235 = !DILocation(line: 475, column: 11, scope: !6234)
!6236 = !DILocation(line: 475, column: 6, scope: !6110)
!6237 = !DILocation(line: 475, column: 32, scope: !6234)
!6238 = !DILocation(line: 477, column: 50, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6110, file: !93, line: 477, column: 6)
!6240 = !DILocation(line: 477, column: 6, scope: !6110)
!6241 = !DILocation(line: 478, column: 3, scope: !6239)
!6242 = !DILocation(line: 478, column: 3, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6244, file: !93, line: 478, column: 3)
!6244 = distinct !DILexicalBlock(scope: !6239, file: !93, line: 478, column: 3)
!6245 = !{i32 -2143498198}
!6246 = !DILocation(line: 478, column: 3, scope: !6244)
!6247 = !DILocation(line: 480, column: 3, scope: !6239)
!6248 = !DILocation(line: 480, column: 3, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6239, file: !93, line: 480, column: 3)
!6250 = !DILocation(line: 480, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6249, file: !93, line: 480, column: 3)
!6252 = !DILocation(line: 480, column: 3, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6249, file: !93, line: 480, column: 3)
!6254 = !{i64 2151469301, i64 2151469330, i64 2151469376, i64 2151469434, i64 2151469488, i64 2151469542, i64 2151469597, i64 2151469628}
!6255 = !DILocation(line: 483, column: 2, scope: !6110)
!6256 = !DILocation(line: 484, column: 1, scope: !6110)
!6257 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !6258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6258 = !DISubroutineType(types: !6259)
!6259 = !{!111, !6260, !962, !482}
!6260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6261, size: 64)
!6261 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6262, line: 11, flags: DIFlagFwdDecl)
!6262 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6263 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !6264, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6266)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!92, !962, !112}
!6266 = !{!6267, !6268}
!6267 = !DILocalVariable(name: "flags", arg: 1, scope: !6263, file: !93, line: 401, type: !962)
!6268 = !DILocalVariable(name: "caller", arg: 2, scope: !6263, file: !93, line: 401, type: !112)
!6269 = !DILocation(line: 401, column: 67, scope: !6263)
!6270 = !DILocation(line: 401, column: 88, scope: !6263)
!6271 = !DILocation(line: 407, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6263, file: !93, line: 407, column: 6)
!6273 = !DILocation(line: 407, column: 6, scope: !6263)
!6274 = !DILocation(line: 413, column: 3, scope: !6272)
!6275 = !DILocation(line: 423, column: 38, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6263, file: !93, line: 423, column: 6)
!6277 = !DILocation(line: 423, column: 44, scope: !6276)
!6278 = !DILocation(line: 423, column: 6, scope: !6263)
!6279 = !DILocation(line: 424, column: 3, scope: !6276)
!6280 = !DILocation(line: 426, column: 3, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6263, file: !93, line: 425, column: 6)
!6282 = !DILocation(line: 429, column: 1, scope: !6263)
!6283 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !6066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubprogram(name: "__compiletime_assert_117", scope: !93, file: !93, line: 478, type: !1973, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6285 = distinct !DISubprogram(name: "ahash_nosetkey", scope: !3, file: !3, line: 150, type: !4597, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6286)
!6286 = !{!6287, !6288, !6289}
!6287 = !DILocalVariable(name: "tfm", arg: 1, scope: !6285, file: !3, line: 150, type: !4170)
!6288 = !DILocalVariable(name: "key", arg: 2, scope: !6285, file: !3, line: 150, type: !4542)
!6289 = !DILocalVariable(name: "keylen", arg: 3, scope: !6285, file: !3, line: 151, type: !7)
!6290 = !DILocation(line: 150, column: 48, scope: !6285)
!6291 = !DILocation(line: 150, column: 63, scope: !6285)
!6292 = !DILocation(line: 151, column: 19, scope: !6285)
!6293 = !DILocation(line: 153, column: 2, scope: !6285)
!6294 = distinct !DISubprogram(name: "crypto_ahash_set_flags", scope: !4172, file: !4172, line: 412, type: !5265, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6295 = !{!6296, !6297}
!6296 = !DILocalVariable(name: "tfm", arg: 1, scope: !6294, file: !4172, line: 412, type: !4170)
!6297 = !DILocalVariable(name: "flags", arg: 2, scope: !6294, file: !4172, line: 412, type: !223)
!6298 = !DILocation(line: 412, column: 64, scope: !6294)
!6299 = !DILocation(line: 412, column: 73, scope: !6294)
!6300 = !DILocation(line: 414, column: 40, scope: !6294)
!6301 = !DILocation(line: 414, column: 23, scope: !6294)
!6302 = !DILocation(line: 414, column: 46, scope: !6294)
!6303 = !DILocation(line: 414, column: 2, scope: !6294)
!6304 = !DILocation(line: 415, column: 1, scope: !6294)
!6305 = distinct !DISubprogram(name: "crypto_tfm_set_flags", scope: !4183, file: !4183, line: 480, type: !6306, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6308)
!6306 = !DISubroutineType(types: !6307)
!6307 = !{null, !4193, !223}
!6308 = !{!6309, !6310}
!6309 = !DILocalVariable(name: "tfm", arg: 1, scope: !6305, file: !4183, line: 480, type: !4193)
!6310 = !DILocalVariable(name: "flags", arg: 2, scope: !6305, file: !4183, line: 480, type: !223)
!6311 = !DILocation(line: 480, column: 60, scope: !6305)
!6312 = !DILocation(line: 480, column: 69, scope: !6305)
!6313 = !DILocation(line: 482, column: 20, scope: !6305)
!6314 = !DILocation(line: 482, column: 2, scope: !6305)
!6315 = !DILocation(line: 482, column: 7, scope: !6305)
!6316 = !DILocation(line: 482, column: 17, scope: !6305)
!6317 = !DILocation(line: 483, column: 1, scope: !6305)
!6318 = distinct !DISubprogram(name: "crypto_tfm_clear_flags", scope: !4183, file: !4183, line: 485, type: !6306, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6319)
!6319 = !{!6320, !6321}
!6320 = !DILocalVariable(name: "tfm", arg: 1, scope: !6318, file: !4183, line: 485, type: !4193)
!6321 = !DILocalVariable(name: "flags", arg: 2, scope: !6318, file: !4183, line: 485, type: !223)
!6322 = !DILocation(line: 485, column: 62, scope: !6318)
!6323 = !DILocation(line: 485, column: 71, scope: !6318)
!6324 = !DILocation(line: 487, column: 21, scope: !6318)
!6325 = !DILocation(line: 487, column: 20, scope: !6318)
!6326 = !DILocation(line: 487, column: 2, scope: !6318)
!6327 = !DILocation(line: 487, column: 7, scope: !6318)
!6328 = !DILocation(line: 487, column: 17, scope: !6318)
!6329 = !DILocation(line: 488, column: 1, scope: !6318)
!6330 = distinct !DISubprogram(name: "__crypto_hash_alg_common", scope: !4172, file: !4172, line: 365, type: !6331, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6333)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{!4602, !4204}
!6333 = !{!6334, !6335}
!6334 = !DILocalVariable(name: "alg", arg: 1, scope: !6330, file: !4172, line: 366, type: !4204)
!6335 = !DILocalVariable(name: "__mptr", scope: !6336, file: !4172, line: 368, type: !111)
!6336 = distinct !DILexicalBlock(scope: !6330, file: !4172, line: 368, column: 9)
!6337 = !DILocation(line: 366, column: 21, scope: !6330)
!6338 = !DILocation(line: 368, column: 9, scope: !6336)
!6339 = !DILocation(line: 368, column: 9, scope: !6330)
!6340 = !DILocation(line: 368, column: 2, scope: !6330)
!6341 = distinct !DISubprogram(name: "ahash_op_unaligned", scope: !3, file: !3, line: 267, type: !5309, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6342)
!6342 = !{!6343, !6344, !6345, !6346}
!6343 = !DILocalVariable(name: "req", arg: 1, scope: !6341, file: !3, line: 267, type: !4178)
!6344 = !DILocalVariable(name: "op", arg: 2, scope: !6341, file: !3, line: 268, type: !4175)
!6345 = !DILocalVariable(name: "has_state", arg: 3, scope: !6341, file: !3, line: 269, type: !744)
!6346 = !DILocalVariable(name: "err", scope: !6341, file: !3, line: 271, type: !272)
!6347 = !DILocation(line: 267, column: 53, scope: !6341)
!6348 = !DILocation(line: 268, column: 16, scope: !6341)
!6349 = !DILocation(line: 269, column: 15, scope: !6341)
!6350 = !DILocation(line: 271, column: 2, scope: !6341)
!6351 = !DILocation(line: 271, column: 6, scope: !6341)
!6352 = !DILocation(line: 273, column: 23, scope: !6341)
!6353 = !DILocation(line: 273, column: 53, scope: !6341)
!6354 = !DILocation(line: 273, column: 8, scope: !6341)
!6355 = !DILocation(line: 273, column: 6, scope: !6341)
!6356 = !DILocation(line: 274, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 274, column: 6)
!6358 = !DILocation(line: 274, column: 6, scope: !6341)
!6359 = !DILocation(line: 275, column: 10, scope: !6357)
!6360 = !DILocation(line: 275, column: 3, scope: !6357)
!6361 = !DILocation(line: 277, column: 8, scope: !6341)
!6362 = !DILocation(line: 277, column: 11, scope: !6341)
!6363 = !DILocation(line: 277, column: 16, scope: !6341)
!6364 = !DILocation(line: 277, column: 6, scope: !6341)
!6365 = !DILocation(line: 278, column: 6, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 278, column: 6)
!6367 = !DILocation(line: 278, column: 10, scope: !6366)
!6368 = !DILocation(line: 278, column: 26, scope: !6366)
!6369 = !DILocation(line: 278, column: 29, scope: !6366)
!6370 = !DILocation(line: 278, column: 33, scope: !6366)
!6371 = !DILocation(line: 278, column: 6, scope: !6341)
!6372 = !DILocation(line: 279, column: 10, scope: !6366)
!6373 = !DILocation(line: 279, column: 3, scope: !6366)
!6374 = !DILocation(line: 281, column: 20, scope: !6341)
!6375 = !DILocation(line: 281, column: 25, scope: !6341)
!6376 = !DILocation(line: 281, column: 2, scope: !6341)
!6377 = !DILocation(line: 283, column: 9, scope: !6341)
!6378 = !DILocation(line: 283, column: 2, scope: !6341)
!6379 = !DILocation(line: 284, column: 1, scope: !6341)
!6380 = distinct !DISubprogram(name: "ahash_save_req", scope: !3, file: !3, line: 186, type: !6381, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6383)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!272, !4178, !4187, !744}
!6383 = !{!6384, !6385, !6386, !6387, !6388, !6389, !6390, !6391, !6392, !6393, !6394, !6395, !6396}
!6384 = !DILocalVariable(name: "req", arg: 1, scope: !6380, file: !3, line: 186, type: !4178)
!6385 = !DILocalVariable(name: "cplt", arg: 2, scope: !6380, file: !3, line: 186, type: !4187)
!6386 = !DILocalVariable(name: "has_state", arg: 3, scope: !6380, file: !3, line: 187, type: !744)
!6387 = !DILocalVariable(name: "tfm", scope: !6380, file: !3, line: 189, type: !4170)
!6388 = !DILocalVariable(name: "alignmask", scope: !6380, file: !3, line: 190, type: !112)
!6389 = !DILocalVariable(name: "ds", scope: !6380, file: !3, line: 191, type: !7)
!6390 = !DILocalVariable(name: "subreq", scope: !6380, file: !3, line: 192, type: !4178)
!6391 = !DILocalVariable(name: "subreq_size", scope: !6380, file: !3, line: 193, type: !7)
!6392 = !DILocalVariable(name: "reqsize", scope: !6380, file: !3, line: 194, type: !7)
!6393 = !DILocalVariable(name: "result", scope: !6380, file: !3, line: 195, type: !4548)
!6394 = !DILocalVariable(name: "gfp", scope: !6380, file: !3, line: 196, type: !962)
!6395 = !DILocalVariable(name: "flags", scope: !6380, file: !3, line: 197, type: !223)
!6396 = !DILocalVariable(name: "state", scope: !6397, file: !3, line: 221, type: !111)
!6397 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 220, column: 17)
!6398 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 220, column: 6)
!6399 = !DILocation(line: 186, column: 49, scope: !6380)
!6400 = !DILocation(line: 186, column: 74, scope: !6380)
!6401 = !DILocation(line: 187, column: 11, scope: !6380)
!6402 = !DILocation(line: 189, column: 2, scope: !6380)
!6403 = !DILocation(line: 189, column: 23, scope: !6380)
!6404 = !DILocation(line: 189, column: 49, scope: !6380)
!6405 = !DILocation(line: 189, column: 29, scope: !6380)
!6406 = !DILocation(line: 190, column: 2, scope: !6380)
!6407 = !DILocation(line: 190, column: 16, scope: !6380)
!6408 = !DILocation(line: 190, column: 51, scope: !6380)
!6409 = !DILocation(line: 190, column: 28, scope: !6380)
!6410 = !DILocation(line: 191, column: 2, scope: !6380)
!6411 = !DILocation(line: 191, column: 15, scope: !6380)
!6412 = !DILocation(line: 191, column: 44, scope: !6380)
!6413 = !DILocation(line: 191, column: 20, scope: !6380)
!6414 = !DILocation(line: 192, column: 2, scope: !6380)
!6415 = !DILocation(line: 192, column: 24, scope: !6380)
!6416 = !DILocation(line: 193, column: 2, scope: !6380)
!6417 = !DILocation(line: 193, column: 15, scope: !6380)
!6418 = !DILocation(line: 194, column: 2, scope: !6380)
!6419 = !DILocation(line: 194, column: 15, scope: !6380)
!6420 = !DILocation(line: 195, column: 2, scope: !6380)
!6421 = !DILocation(line: 195, column: 6, scope: !6380)
!6422 = !DILocation(line: 196, column: 2, scope: !6380)
!6423 = !DILocation(line: 196, column: 8, scope: !6380)
!6424 = !DILocation(line: 197, column: 2, scope: !6380)
!6425 = !DILocation(line: 197, column: 6, scope: !6380)
!6426 = !DILocation(line: 199, column: 14, scope: !6380)
!6427 = !DILocation(line: 200, column: 33, scope: !6380)
!6428 = !DILocation(line: 200, column: 12, scope: !6380)
!6429 = !DILocation(line: 200, column: 10, scope: !6380)
!6430 = !DILocation(line: 201, column: 12, scope: !6380)
!6431 = !DILocation(line: 201, column: 10, scope: !6380)
!6432 = !DILocation(line: 202, column: 17, scope: !6380)
!6433 = !DILocation(line: 202, column: 14, scope: !6380)
!6434 = !DILocation(line: 203, column: 17, scope: !6380)
!6435 = !DILocation(line: 203, column: 14, scope: !6380)
!6436 = !DILocation(line: 204, column: 17, scope: !6380)
!6437 = !DILocation(line: 204, column: 31, scope: !6380)
!6438 = !DILocation(line: 204, column: 58, scope: !6380)
!6439 = !DILocation(line: 204, column: 29, scope: !6380)
!6440 = !DILocation(line: 204, column: 27, scope: !6380)
!6441 = !DILocation(line: 204, column: 14, scope: !6380)
!6442 = !DILocation(line: 206, column: 30, scope: !6380)
!6443 = !DILocation(line: 206, column: 10, scope: !6380)
!6444 = !DILocation(line: 206, column: 8, scope: !6380)
!6445 = !DILocation(line: 207, column: 9, scope: !6380)
!6446 = !DILocation(line: 207, column: 15, scope: !6380)
!6447 = !DILocation(line: 207, column: 8, scope: !6380)
!6448 = !DILocation(line: 207, column: 6, scope: !6380)
!6449 = !DILocation(line: 208, column: 19, scope: !6380)
!6450 = !DILocation(line: 208, column: 32, scope: !6380)
!6451 = !DILocation(line: 208, column: 11, scope: !6380)
!6452 = !DILocation(line: 208, column: 9, scope: !6380)
!6453 = !DILocation(line: 209, column: 7, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 209, column: 6)
!6455 = !DILocation(line: 209, column: 6, scope: !6380)
!6456 = !DILocation(line: 210, column: 3, scope: !6454)
!6457 = !DILocation(line: 212, column: 24, scope: !6380)
!6458 = !DILocation(line: 212, column: 32, scope: !6380)
!6459 = !DILocation(line: 212, column: 2, scope: !6380)
!6460 = !DILocation(line: 213, column: 29, scope: !6380)
!6461 = !DILocation(line: 213, column: 37, scope: !6380)
!6462 = !DILocation(line: 213, column: 44, scope: !6380)
!6463 = !DILocation(line: 213, column: 50, scope: !6380)
!6464 = !DILocation(line: 213, column: 2, scope: !6380)
!6465 = !DILocation(line: 215, column: 18, scope: !6380)
!6466 = !DILocation(line: 215, column: 25, scope: !6380)
!6467 = !DILocation(line: 215, column: 32, scope: !6380)
!6468 = !DILocation(line: 215, column: 30, scope: !6380)
!6469 = !DILocation(line: 215, column: 9, scope: !6380)
!6470 = !DILocation(line: 216, column: 11, scope: !6380)
!6471 = !DILocation(line: 216, column: 9, scope: !6380)
!6472 = !DILocation(line: 218, column: 26, scope: !6380)
!6473 = !DILocation(line: 218, column: 34, scope: !6380)
!6474 = !DILocation(line: 218, column: 39, scope: !6380)
!6475 = !DILocation(line: 218, column: 44, scope: !6380)
!6476 = !DILocation(line: 218, column: 52, scope: !6380)
!6477 = !DILocation(line: 218, column: 57, scope: !6380)
!6478 = !DILocation(line: 218, column: 2, scope: !6380)
!6479 = !DILocation(line: 220, column: 6, scope: !6398)
!6480 = !DILocation(line: 220, column: 6, scope: !6380)
!6481 = !DILocation(line: 221, column: 3, scope: !6397)
!6482 = !DILocation(line: 221, column: 9, scope: !6397)
!6483 = !DILocation(line: 223, column: 42, scope: !6397)
!6484 = !DILocation(line: 223, column: 19, scope: !6397)
!6485 = !DILocation(line: 223, column: 48, scope: !6397)
!6486 = !DILocation(line: 223, column: 11, scope: !6397)
!6487 = !DILocation(line: 223, column: 9, scope: !6397)
!6488 = !DILocation(line: 224, column: 8, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 224, column: 7)
!6490 = !DILocation(line: 224, column: 7, scope: !6397)
!6491 = !DILocation(line: 225, column: 10, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 224, column: 15)
!6493 = !DILocation(line: 225, column: 4, scope: !6492)
!6494 = !DILocation(line: 226, column: 4, scope: !6492)
!6495 = !DILocation(line: 229, column: 23, scope: !6397)
!6496 = !DILocation(line: 229, column: 28, scope: !6397)
!6497 = !DILocation(line: 229, column: 3, scope: !6397)
!6498 = !DILocation(line: 230, column: 23, scope: !6397)
!6499 = !DILocation(line: 230, column: 31, scope: !6397)
!6500 = !DILocation(line: 230, column: 3, scope: !6397)
!6501 = !DILocation(line: 231, column: 19, scope: !6397)
!6502 = !DILocation(line: 231, column: 3, scope: !6397)
!6503 = !DILocation(line: 232, column: 2, scope: !6398)
!6504 = !DILocation(line: 232, column: 2, scope: !6397)
!6505 = !DILocation(line: 234, column: 14, scope: !6380)
!6506 = !DILocation(line: 234, column: 2, scope: !6380)
!6507 = !DILocation(line: 234, column: 7, scope: !6380)
!6508 = !DILocation(line: 234, column: 12, scope: !6380)
!6509 = !DILocation(line: 236, column: 2, scope: !6380)
!6510 = !DILocation(line: 237, column: 1, scope: !6380)
!6511 = distinct !DISubprogram(name: "ahash_op_unaligned_done", scope: !3, file: !3, line: 252, type: !4189, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6512)
!6512 = !{!6513, !6514, !6515, !6516}
!6513 = !DILocalVariable(name: "data", arg: 1, scope: !6511, file: !3, line: 252, type: !111)
!6514 = !DILocalVariable(name: "err", arg: 2, scope: !6511, file: !3, line: 252, type: !272)
!6515 = !DILocalVariable(name: "areq", scope: !6511, file: !3, line: 254, type: !4178)
!6516 = !DILabel(scope: !6511, name: "out", file: !3, line: 262)
!6517 = !DILocation(line: 252, column: 43, scope: !6511)
!6518 = !DILocation(line: 252, column: 53, scope: !6511)
!6519 = !DILocation(line: 254, column: 2, scope: !6511)
!6520 = !DILocation(line: 254, column: 24, scope: !6511)
!6521 = !DILocation(line: 254, column: 31, scope: !6511)
!6522 = !DILocation(line: 256, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 256, column: 6)
!6524 = !DILocation(line: 256, column: 10, scope: !6523)
!6525 = !DILocation(line: 256, column: 6, scope: !6511)
!6526 = !DILocation(line: 257, column: 3, scope: !6523)
!6527 = !DILocation(line: 260, column: 20, scope: !6511)
!6528 = !DILocation(line: 260, column: 26, scope: !6511)
!6529 = !DILocation(line: 260, column: 2, scope: !6511)
!6530 = !DILocation(line: 262, column: 1, scope: !6511)
!6531 = !DILocation(line: 264, column: 25, scope: !6511)
!6532 = !DILocation(line: 264, column: 31, scope: !6511)
!6533 = !DILocation(line: 264, column: 2, scope: !6511)
!6534 = !DILocation(line: 265, column: 1, scope: !6511)
!6535 = distinct !DISubprogram(name: "ahash_restore_req", scope: !3, file: !3, line: 239, type: !6536, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6536 = !DISubroutineType(types: !6537)
!6537 = !{null, !4178, !272}
!6538 = !{!6539, !6540, !6541}
!6539 = !DILocalVariable(name: "req", arg: 1, scope: !6535, file: !3, line: 239, type: !4178)
!6540 = !DILocalVariable(name: "err", arg: 2, scope: !6535, file: !3, line: 239, type: !272)
!6541 = !DILocalVariable(name: "subreq", scope: !6535, file: !3, line: 241, type: !4178)
!6542 = !DILocation(line: 239, column: 53, scope: !6535)
!6543 = !DILocation(line: 239, column: 62, scope: !6535)
!6544 = !DILocation(line: 241, column: 2, scope: !6535)
!6545 = !DILocation(line: 241, column: 24, scope: !6535)
!6546 = !DILocation(line: 241, column: 33, scope: !6535)
!6547 = !DILocation(line: 241, column: 38, scope: !6535)
!6548 = !DILocation(line: 243, column: 7, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 243, column: 6)
!6550 = !DILocation(line: 243, column: 6, scope: !6535)
!6551 = !DILocation(line: 244, column: 10, scope: !6549)
!6552 = !DILocation(line: 244, column: 15, scope: !6549)
!6553 = !DILocation(line: 244, column: 23, scope: !6549)
!6554 = !DILocation(line: 244, column: 31, scope: !6549)
!6555 = !DILocation(line: 245, column: 54, scope: !6549)
!6556 = !DILocation(line: 245, column: 34, scope: !6549)
!6557 = !DILocation(line: 245, column: 10, scope: !6549)
!6558 = !DILocation(line: 244, column: 3, scope: !6549)
!6559 = !DILocation(line: 247, column: 2, scope: !6535)
!6560 = !DILocation(line: 247, column: 7, scope: !6535)
!6561 = !DILocation(line: 247, column: 12, scope: !6535)
!6562 = !DILocation(line: 249, column: 18, scope: !6535)
!6563 = !DILocation(line: 249, column: 2, scope: !6535)
!6564 = !DILocation(line: 250, column: 1, scope: !6535)
!6565 = distinct !DISubprogram(name: "crypto_ahash_digestsize", scope: !4172, file: !4172, line: 387, type: !5121, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6566)
!6566 = !{!6567}
!6567 = !DILocalVariable(name: "tfm", arg: 1, scope: !6565, file: !4172, line: 387, type: !4170)
!6568 = !DILocation(line: 387, column: 73, scope: !6565)
!6569 = !DILocation(line: 389, column: 32, scope: !6565)
!6570 = !DILocation(line: 389, column: 9, scope: !6565)
!6571 = !DILocation(line: 389, column: 38, scope: !6565)
!6572 = !DILocation(line: 389, column: 2, scope: !6565)
!6573 = distinct !DISubprogram(name: "crypto_ahash_reqsize", scope: !4172, file: !4172, line: 444, type: !5121, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6574)
!6574 = !{!6575}
!6575 = !DILocalVariable(name: "tfm", arg: 1, scope: !6573, file: !4172, line: 444, type: !4170)
!6576 = !DILocation(line: 444, column: 70, scope: !6573)
!6577 = !DILocation(line: 446, column: 9, scope: !6573)
!6578 = !DILocation(line: 446, column: 14, scope: !6573)
!6579 = !DILocation(line: 446, column: 2, scope: !6573)
!6580 = distinct !DISubprogram(name: "crypto_tfm_ctx_alignment", scope: !4183, file: !4183, line: 490, type: !6581, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6583)
!6581 = !DISubroutineType(types: !6582)
!6582 = !{!7}
!6583 = !{!6584}
!6584 = !DILocalVariable(name: "tfm", scope: !6580, file: !4183, line: 492, type: !4193)
!6585 = !DILocation(line: 492, column: 2, scope: !6580)
!6586 = !DILocation(line: 492, column: 21, scope: !6580)
!6587 = !DILocation(line: 494, column: 1, scope: !6580)
!6588 = !DILocation(line: 493, column: 2, scope: !6580)
!6589 = distinct !DISubprogram(name: "ahash_request_flags", scope: !4610, file: !4610, line: 215, type: !6590, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6592)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{!223, !4178}
!6592 = !{!6593}
!6593 = !DILocalVariable(name: "req", arg: 1, scope: !6589, file: !4610, line: 215, type: !4178)
!6594 = !DILocation(line: 215, column: 61, scope: !6589)
!6595 = !DILocation(line: 217, column: 9, scope: !6589)
!6596 = !DILocation(line: 217, column: 14, scope: !6589)
!6597 = !DILocation(line: 217, column: 19, scope: !6589)
!6598 = !DILocation(line: 217, column: 2, scope: !6589)
!6599 = distinct !DISubprogram(name: "ahash_request_set_tfm", scope: !4172, file: !4172, line: 631, type: !6600, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6602)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{null, !4178, !4170}
!6602 = !{!6603, !6604}
!6603 = !DILocalVariable(name: "req", arg: 1, scope: !6599, file: !4172, line: 631, type: !4178)
!6604 = !DILocalVariable(name: "tfm", arg: 2, scope: !6599, file: !4172, line: 632, type: !4170)
!6605 = !DILocation(line: 631, column: 64, scope: !6599)
!6606 = !DILocation(line: 632, column: 28, scope: !6599)
!6607 = !DILocation(line: 634, column: 35, scope: !6599)
!6608 = !DILocation(line: 634, column: 18, scope: !6599)
!6609 = !DILocation(line: 634, column: 2, scope: !6599)
!6610 = !DILocation(line: 634, column: 7, scope: !6599)
!6611 = !DILocation(line: 634, column: 12, scope: !6599)
!6612 = !DILocation(line: 634, column: 16, scope: !6599)
!6613 = !DILocation(line: 635, column: 1, scope: !6599)
!6614 = distinct !DISubprogram(name: "ahash_request_set_callback", scope: !4172, file: !4172, line: 709, type: !6615, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6617)
!6615 = !DISubroutineType(types: !6616)
!6616 = !{null, !4178, !223, !4187, !111}
!6617 = !{!6618, !6619, !6620, !6621}
!6618 = !DILocalVariable(name: "req", arg: 1, scope: !6614, file: !4172, line: 709, type: !4178)
!6619 = !DILocalVariable(name: "flags", arg: 2, scope: !6614, file: !4172, line: 710, type: !223)
!6620 = !DILocalVariable(name: "compl", arg: 3, scope: !6614, file: !4172, line: 711, type: !4187)
!6621 = !DILocalVariable(name: "data", arg: 4, scope: !6614, file: !4172, line: 712, type: !111)
!6622 = !DILocation(line: 709, column: 69, scope: !6614)
!6623 = !DILocation(line: 710, column: 16, scope: !6614)
!6624 = !DILocation(line: 711, column: 32, scope: !6614)
!6625 = !DILocation(line: 712, column: 18, scope: !6614)
!6626 = !DILocation(line: 714, column: 23, scope: !6614)
!6627 = !DILocation(line: 714, column: 2, scope: !6614)
!6628 = !DILocation(line: 714, column: 7, scope: !6614)
!6629 = !DILocation(line: 714, column: 12, scope: !6614)
!6630 = !DILocation(line: 714, column: 21, scope: !6614)
!6631 = !DILocation(line: 715, column: 19, scope: !6614)
!6632 = !DILocation(line: 715, column: 2, scope: !6614)
!6633 = !DILocation(line: 715, column: 7, scope: !6614)
!6634 = !DILocation(line: 715, column: 12, scope: !6614)
!6635 = !DILocation(line: 715, column: 17, scope: !6614)
!6636 = !DILocation(line: 716, column: 20, scope: !6614)
!6637 = !DILocation(line: 716, column: 2, scope: !6614)
!6638 = !DILocation(line: 716, column: 7, scope: !6614)
!6639 = !DILocation(line: 716, column: 12, scope: !6614)
!6640 = !DILocation(line: 716, column: 18, scope: !6614)
!6641 = !DILocation(line: 717, column: 1, scope: !6614)
!6642 = distinct !DISubprogram(name: "ahash_request_set_crypt", scope: !4172, file: !4172, line: 732, type: !6643, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6645)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{null, !4178, !4569, !4548, !7}
!6645 = !{!6646, !6647, !6648, !6649}
!6646 = !DILocalVariable(name: "req", arg: 1, scope: !6642, file: !4172, line: 732, type: !4178)
!6647 = !DILocalVariable(name: "src", arg: 2, scope: !6642, file: !4172, line: 733, type: !4569)
!6648 = !DILocalVariable(name: "result", arg: 3, scope: !6642, file: !4172, line: 733, type: !4548)
!6649 = !DILocalVariable(name: "nbytes", arg: 4, scope: !6642, file: !4172, line: 734, type: !7)
!6650 = !DILocation(line: 732, column: 66, scope: !6642)
!6651 = !DILocation(line: 733, column: 29, scope: !6642)
!6652 = !DILocation(line: 733, column: 38, scope: !6642)
!6653 = !DILocation(line: 734, column: 22, scope: !6642)
!6654 = !DILocation(line: 736, column: 13, scope: !6642)
!6655 = !DILocation(line: 736, column: 2, scope: !6642)
!6656 = !DILocation(line: 736, column: 7, scope: !6642)
!6657 = !DILocation(line: 736, column: 11, scope: !6642)
!6658 = !DILocation(line: 737, column: 16, scope: !6642)
!6659 = !DILocation(line: 737, column: 2, scope: !6642)
!6660 = !DILocation(line: 737, column: 7, scope: !6642)
!6661 = !DILocation(line: 737, column: 14, scope: !6642)
!6662 = !DILocation(line: 738, column: 16, scope: !6642)
!6663 = !DILocation(line: 738, column: 2, scope: !6642)
!6664 = !DILocation(line: 738, column: 7, scope: !6642)
!6665 = !DILocation(line: 738, column: 14, scope: !6642)
!6666 = !DILocation(line: 739, column: 1, scope: !6642)
!6667 = distinct !DISubprogram(name: "crypto_ahash_statesize", scope: !4172, file: !4172, line: 402, type: !5121, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6668)
!6668 = !{!6669}
!6669 = !DILocalVariable(name: "tfm", arg: 1, scope: !6667, file: !4172, line: 402, type: !4170)
!6670 = !DILocation(line: 402, column: 72, scope: !6667)
!6671 = !DILocation(line: 404, column: 9, scope: !6667)
!6672 = !DILocation(line: 404, column: 14, scope: !6667)
!6673 = !DILocation(line: 404, column: 2, scope: !6667)
!6674 = !DISubprogram(name: "kfree", scope: !93, file: !93, line: 227, type: !4933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6675 = distinct !DISubprogram(name: "crypto_ahash_export", scope: !4172, file: !4172, line: 522, type: !4589, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6676)
!6676 = !{!6677, !6678}
!6677 = !DILocalVariable(name: "req", arg: 1, scope: !6675, file: !4172, line: 522, type: !4178)
!6678 = !DILocalVariable(name: "out", arg: 2, scope: !6675, file: !4172, line: 522, type: !111)
!6679 = !DILocation(line: 522, column: 61, scope: !6675)
!6680 = !DILocation(line: 522, column: 72, scope: !6675)
!6681 = !DILocation(line: 524, column: 29, scope: !6675)
!6682 = !DILocation(line: 524, column: 9, scope: !6675)
!6683 = !DILocation(line: 524, column: 35, scope: !6675)
!6684 = !DILocation(line: 524, column: 42, scope: !6675)
!6685 = !DILocation(line: 524, column: 47, scope: !6675)
!6686 = !DILocation(line: 524, column: 2, scope: !6675)
!6687 = distinct !DISubprogram(name: "crypto_ahash_import", scope: !4172, file: !4172, line: 538, type: !4593, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6688)
!6688 = !{!6689, !6690, !6691}
!6689 = !DILocalVariable(name: "req", arg: 1, scope: !6687, file: !4172, line: 538, type: !4178)
!6690 = !DILocalVariable(name: "in", arg: 2, scope: !6687, file: !4172, line: 538, type: !1137)
!6691 = !DILocalVariable(name: "tfm", scope: !6687, file: !4172, line: 540, type: !4170)
!6692 = !DILocation(line: 538, column: 61, scope: !6687)
!6693 = !DILocation(line: 538, column: 78, scope: !6687)
!6694 = !DILocation(line: 540, column: 2, scope: !6687)
!6695 = !DILocation(line: 540, column: 23, scope: !6687)
!6696 = !DILocation(line: 540, column: 49, scope: !6687)
!6697 = !DILocation(line: 540, column: 29, scope: !6687)
!6698 = !DILocation(line: 542, column: 29, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6687, file: !4172, line: 542, column: 6)
!6700 = !DILocation(line: 542, column: 6, scope: !6699)
!6701 = !DILocation(line: 542, column: 34, scope: !6699)
!6702 = !DILocation(line: 542, column: 6, scope: !6687)
!6703 = !DILocation(line: 543, column: 3, scope: !6699)
!6704 = !DILocation(line: 545, column: 9, scope: !6687)
!6705 = !DILocation(line: 545, column: 14, scope: !6687)
!6706 = !DILocation(line: 545, column: 21, scope: !6687)
!6707 = !DILocation(line: 545, column: 26, scope: !6687)
!6708 = !DILocation(line: 545, column: 2, scope: !6687)
!6709 = !DILocation(line: 546, column: 1, scope: !6687)
!6710 = distinct !DISubprogram(name: "ahash_request_complete", scope: !4610, file: !4610, line: 210, type: !6536, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6711)
!6711 = !{!6712, !6713}
!6712 = !DILocalVariable(name: "req", arg: 1, scope: !6710, file: !4610, line: 210, type: !4178)
!6713 = !DILocalVariable(name: "err", arg: 2, scope: !6710, file: !4610, line: 210, type: !272)
!6714 = !DILocation(line: 210, column: 65, scope: !6710)
!6715 = !DILocation(line: 210, column: 74, scope: !6710)
!6716 = !DILocation(line: 212, column: 27, scope: !6710)
!6717 = !DILocation(line: 212, column: 32, scope: !6710)
!6718 = !DILocation(line: 212, column: 38, scope: !6710)
!6719 = !DILocation(line: 212, column: 2, scope: !6710)
!6720 = !DILocation(line: 213, column: 1, scope: !6710)
!6721 = distinct !DISubprogram(name: "crypto_request_complete", scope: !4224, file: !4224, line: 271, type: !6722, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6725)
!6722 = !DISubroutineType(types: !6723)
!6723 = !{null, !6724, !272}
!6724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!6725 = !{!6726, !6727}
!6726 = !DILocalVariable(name: "req", arg: 1, scope: !6721, file: !4224, line: 271, type: !6724)
!6727 = !DILocalVariable(name: "err", arg: 2, scope: !6721, file: !4224, line: 272, type: !272)
!6728 = !DILocation(line: 271, column: 73, scope: !6721)
!6729 = !DILocation(line: 272, column: 13, scope: !6721)
!6730 = !DILocation(line: 274, column: 2, scope: !6721)
!6731 = !DILocation(line: 274, column: 7, scope: !6721)
!6732 = !DILocation(line: 274, column: 16, scope: !6721)
!6733 = !DILocation(line: 274, column: 21, scope: !6721)
!6734 = !DILocation(line: 274, column: 27, scope: !6721)
!6735 = !DILocation(line: 275, column: 1, scope: !6721)
!6736 = distinct !DISubprogram(name: "crypto_tfm_get_flags", scope: !4183, file: !4183, line: 475, type: !6737, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6739)
!6737 = !DISubroutineType(types: !6738)
!6738 = !{!223, !4193}
!6739 = !{!6740}
!6740 = !DILocalVariable(name: "tfm", arg: 1, scope: !6736, file: !4183, line: 475, type: !4193)
!6741 = !DILocation(line: 475, column: 59, scope: !6736)
!6742 = !DILocation(line: 477, column: 9, scope: !6736)
!6743 = !DILocation(line: 477, column: 14, scope: !6736)
!6744 = !DILocation(line: 477, column: 2, scope: !6736)
!6745 = distinct !DISubprogram(name: "crypto_ahash_extsize", scope: !3, file: !3, line: 453, type: !4232, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6746)
!6746 = !{!6747}
!6747 = !DILocalVariable(name: "alg", arg: 1, scope: !6745, file: !3, line: 453, type: !4204)
!6748 = !DILocation(line: 453, column: 61, scope: !6745)
!6749 = !DILocation(line: 455, column: 6, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6745, file: !3, line: 455, column: 6)
!6751 = !DILocation(line: 455, column: 11, scope: !6750)
!6752 = !DILocation(line: 455, column: 20, scope: !6750)
!6753 = !DILocation(line: 455, column: 6, scope: !6745)
!6754 = !DILocation(line: 456, column: 3, scope: !6750)
!6755 = !DILocation(line: 458, column: 28, scope: !6745)
!6756 = !DILocation(line: 458, column: 9, scope: !6745)
!6757 = !DILocation(line: 458, column: 2, scope: !6745)
!6758 = !DILocation(line: 459, column: 1, scope: !6745)
!6759 = distinct !DISubprogram(name: "crypto_ahash_init_tfm", scope: !3, file: !3, line: 422, type: !4236, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6760 = !{!6761, !6762, !6763}
!6761 = !DILocalVariable(name: "tfm", arg: 1, scope: !6759, file: !3, line: 422, type: !4193)
!6762 = !DILocalVariable(name: "hash", scope: !6759, file: !3, line: 424, type: !4170)
!6763 = !DILocalVariable(name: "alg", scope: !6759, file: !3, line: 425, type: !4656)
!6764 = !DILocation(line: 422, column: 53, scope: !6759)
!6765 = !DILocation(line: 424, column: 2, scope: !6759)
!6766 = !DILocation(line: 424, column: 23, scope: !6759)
!6767 = !DILocation(line: 424, column: 50, scope: !6759)
!6768 = !DILocation(line: 424, column: 30, scope: !6759)
!6769 = !DILocation(line: 425, column: 2, scope: !6759)
!6770 = !DILocation(line: 425, column: 20, scope: !6759)
!6771 = !DILocation(line: 425, column: 43, scope: !6759)
!6772 = !DILocation(line: 425, column: 26, scope: !6759)
!6773 = !DILocation(line: 427, column: 2, scope: !6759)
!6774 = !DILocation(line: 427, column: 8, scope: !6759)
!6775 = !DILocation(line: 427, column: 15, scope: !6759)
!6776 = !DILocation(line: 429, column: 29, scope: !6759)
!6777 = !DILocation(line: 429, column: 35, scope: !6759)
!6778 = !DILocation(line: 429, column: 40, scope: !6759)
!6779 = !DILocation(line: 429, column: 45, scope: !6759)
!6780 = !DILocation(line: 429, column: 2, scope: !6759)
!6781 = !DILocation(line: 431, column: 6, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 431, column: 6)
!6783 = !DILocation(line: 431, column: 11, scope: !6782)
!6784 = !DILocation(line: 431, column: 22, scope: !6782)
!6785 = !DILocation(line: 431, column: 31, scope: !6782)
!6786 = !DILocation(line: 431, column: 6, scope: !6759)
!6787 = !DILocation(line: 432, column: 38, scope: !6782)
!6788 = !DILocation(line: 432, column: 10, scope: !6782)
!6789 = !DILocation(line: 432, column: 3, scope: !6782)
!6790 = !DILocation(line: 434, column: 15, scope: !6759)
!6791 = !DILocation(line: 434, column: 20, scope: !6759)
!6792 = !DILocation(line: 434, column: 2, scope: !6759)
!6793 = !DILocation(line: 434, column: 8, scope: !6759)
!6794 = !DILocation(line: 434, column: 13, scope: !6759)
!6795 = !DILocation(line: 435, column: 17, scope: !6759)
!6796 = !DILocation(line: 435, column: 22, scope: !6759)
!6797 = !DILocation(line: 435, column: 2, scope: !6759)
!6798 = !DILocation(line: 435, column: 8, scope: !6759)
!6799 = !DILocation(line: 435, column: 15, scope: !6759)
!6800 = !DILocation(line: 436, column: 16, scope: !6759)
!6801 = !DILocation(line: 436, column: 21, scope: !6759)
!6802 = !DILocation(line: 436, column: 2, scope: !6759)
!6803 = !DILocation(line: 436, column: 8, scope: !6759)
!6804 = !DILocation(line: 436, column: 14, scope: !6759)
!6805 = !DILocation(line: 437, column: 16, scope: !6759)
!6806 = !DILocation(line: 437, column: 21, scope: !6759)
!6807 = !DILocation(line: 437, column: 2, scope: !6759)
!6808 = !DILocation(line: 437, column: 8, scope: !6759)
!6809 = !DILocation(line: 437, column: 14, scope: !6759)
!6810 = !DILocation(line: 438, column: 17, scope: !6759)
!6811 = !DILocation(line: 438, column: 22, scope: !6759)
!6812 = !DILocation(line: 438, column: 2, scope: !6759)
!6813 = !DILocation(line: 438, column: 8, scope: !6759)
!6814 = !DILocation(line: 438, column: 15, scope: !6759)
!6815 = !DILocation(line: 439, column: 17, scope: !6759)
!6816 = !DILocation(line: 439, column: 22, scope: !6759)
!6817 = !DILocation(line: 439, column: 2, scope: !6759)
!6818 = !DILocation(line: 439, column: 8, scope: !6759)
!6819 = !DILocation(line: 439, column: 15, scope: !6759)
!6820 = !DILocation(line: 440, column: 17, scope: !6759)
!6821 = !DILocation(line: 440, column: 22, scope: !6759)
!6822 = !DILocation(line: 440, column: 2, scope: !6759)
!6823 = !DILocation(line: 440, column: 8, scope: !6759)
!6824 = !DILocation(line: 440, column: 15, scope: !6759)
!6825 = !DILocation(line: 442, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 442, column: 6)
!6827 = !DILocation(line: 442, column: 11, scope: !6826)
!6828 = !DILocation(line: 442, column: 6, scope: !6759)
!6829 = !DILocation(line: 443, column: 18, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6826, file: !3, line: 442, column: 19)
!6831 = !DILocation(line: 443, column: 23, scope: !6830)
!6832 = !DILocation(line: 443, column: 3, scope: !6830)
!6833 = !DILocation(line: 443, column: 9, scope: !6830)
!6834 = !DILocation(line: 443, column: 16, scope: !6830)
!6835 = !DILocation(line: 444, column: 21, scope: !6830)
!6836 = !DILocation(line: 444, column: 3, scope: !6830)
!6837 = !DILocation(line: 445, column: 2, scope: !6830)
!6838 = !DILocation(line: 447, column: 6, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 447, column: 6)
!6840 = !DILocation(line: 447, column: 11, scope: !6839)
!6841 = !DILocation(line: 447, column: 6, scope: !6759)
!6842 = !DILocation(line: 448, column: 3, scope: !6839)
!6843 = !DILocation(line: 448, column: 8, scope: !6839)
!6844 = !DILocation(line: 448, column: 13, scope: !6839)
!6845 = !DILocation(line: 450, column: 9, scope: !6759)
!6846 = !DILocation(line: 450, column: 14, scope: !6759)
!6847 = !DILocation(line: 450, column: 25, scope: !6759)
!6848 = !DILocation(line: 450, column: 30, scope: !6759)
!6849 = !DILocation(line: 450, column: 39, scope: !6759)
!6850 = !DILocation(line: 450, column: 2, scope: !6759)
!6851 = !DILocation(line: 451, column: 1, scope: !6759)
!6852 = distinct !DISubprogram(name: "crypto_ahash_show", scope: !3, file: !3, line: 485, type: !4240, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6853)
!6853 = !{!6854, !6855}
!6854 = !DILocalVariable(name: "m", arg: 1, scope: !6852, file: !3, line: 485, type: !1393)
!6855 = !DILocalVariable(name: "alg", arg: 2, scope: !6852, file: !3, line: 485, type: !4204)
!6856 = !DILocation(line: 485, column: 48, scope: !6852)
!6857 = !DILocation(line: 485, column: 70, scope: !6852)
!6858 = !DILocation(line: 487, column: 13, scope: !6852)
!6859 = !DILocation(line: 487, column: 2, scope: !6852)
!6860 = !DILocation(line: 488, column: 13, scope: !6852)
!6861 = !DILocation(line: 488, column: 39, scope: !6852)
!6862 = !DILocation(line: 488, column: 44, scope: !6852)
!6863 = !DILocation(line: 488, column: 54, scope: !6852)
!6864 = !DILocation(line: 488, column: 2, scope: !6852)
!6865 = !DILocation(line: 490, column: 13, scope: !6852)
!6866 = !DILocation(line: 490, column: 39, scope: !6852)
!6867 = !DILocation(line: 490, column: 44, scope: !6852)
!6868 = !DILocation(line: 490, column: 2, scope: !6852)
!6869 = !DILocation(line: 491, column: 13, scope: !6852)
!6870 = !DILocation(line: 492, column: 31, scope: !6852)
!6871 = !DILocation(line: 492, column: 6, scope: !6852)
!6872 = !DILocation(line: 492, column: 37, scope: !6852)
!6873 = !DILocation(line: 491, column: 2, scope: !6852)
!6874 = !DILocation(line: 493, column: 1, scope: !6852)
!6875 = distinct !DISubprogram(name: "crypto_ahash_free_instance", scope: !3, file: !3, line: 461, type: !4483, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6876)
!6876 = !{!6877, !6878}
!6877 = !DILocalVariable(name: "inst", arg: 1, scope: !6875, file: !3, line: 461, type: !4485)
!6878 = !DILocalVariable(name: "ahash", scope: !6875, file: !3, line: 463, type: !4608)
!6879 = !DILocation(line: 461, column: 64, scope: !6875)
!6880 = !DILocation(line: 463, column: 2, scope: !6875)
!6881 = !DILocation(line: 463, column: 25, scope: !6875)
!6882 = !DILocation(line: 463, column: 48, scope: !6875)
!6883 = !DILocation(line: 463, column: 33, scope: !6875)
!6884 = !DILocation(line: 465, column: 2, scope: !6875)
!6885 = !DILocation(line: 465, column: 9, scope: !6875)
!6886 = !DILocation(line: 465, column: 14, scope: !6875)
!6887 = !DILocation(line: 466, column: 1, scope: !6875)
!6888 = !DISubprogram(name: "crypto_alg_extsize", scope: !4775, file: !4775, line: 156, type: !4232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6889 = distinct !DISubprogram(name: "crypto_ahash_set_statesize", scope: !4610, file: !4610, line: 158, type: !6890, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6892)
!6890 = !DISubroutineType(types: !6891)
!6891 = !{null, !4170, !7}
!6892 = !{!6893, !6894}
!6893 = !DILocalVariable(name: "tfm", arg: 1, scope: !6889, file: !4610, line: 158, type: !4170)
!6894 = !DILocalVariable(name: "size", arg: 2, scope: !6889, file: !4610, line: 159, type: !7)
!6895 = !DILocation(line: 158, column: 68, scope: !6889)
!6896 = !DILocation(line: 159, column: 25, scope: !6889)
!6897 = !DILocation(line: 161, column: 19, scope: !6889)
!6898 = !DILocation(line: 161, column: 2, scope: !6889)
!6899 = !DILocation(line: 161, column: 7, scope: !6889)
!6900 = !DILocation(line: 161, column: 17, scope: !6889)
!6901 = !DILocation(line: 162, column: 1, scope: !6889)
!6902 = !DISubprogram(name: "crypto_init_shash_ops_async", scope: !5714, file: !5714, line: 34, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6903 = distinct !DISubprogram(name: "ahash_def_finup", scope: !3, file: !3, line: 398, type: !4176, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6904)
!6904 = !{!6905, !6906, !6907}
!6905 = !DILocalVariable(name: "req", arg: 1, scope: !6903, file: !3, line: 398, type: !4178)
!6906 = !DILocalVariable(name: "tfm", scope: !6903, file: !3, line: 400, type: !4170)
!6907 = !DILocalVariable(name: "err", scope: !6903, file: !3, line: 401, type: !272)
!6908 = !DILocation(line: 398, column: 50, scope: !6903)
!6909 = !DILocation(line: 400, column: 2, scope: !6903)
!6910 = !DILocation(line: 400, column: 23, scope: !6903)
!6911 = !DILocation(line: 400, column: 49, scope: !6903)
!6912 = !DILocation(line: 400, column: 29, scope: !6903)
!6913 = !DILocation(line: 401, column: 2, scope: !6903)
!6914 = !DILocation(line: 401, column: 6, scope: !6903)
!6915 = !DILocation(line: 403, column: 23, scope: !6903)
!6916 = !DILocation(line: 403, column: 8, scope: !6903)
!6917 = !DILocation(line: 403, column: 6, scope: !6903)
!6918 = !DILocation(line: 404, column: 6, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6903, file: !3, line: 404, column: 6)
!6920 = !DILocation(line: 404, column: 6, scope: !6903)
!6921 = !DILocation(line: 405, column: 10, scope: !6919)
!6922 = !DILocation(line: 405, column: 3, scope: !6919)
!6923 = !DILocation(line: 407, column: 8, scope: !6903)
!6924 = !DILocation(line: 407, column: 13, scope: !6903)
!6925 = !DILocation(line: 407, column: 20, scope: !6903)
!6926 = !DILocation(line: 407, column: 25, scope: !6903)
!6927 = !DILocation(line: 407, column: 6, scope: !6903)
!6928 = !DILocation(line: 408, column: 6, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6903, file: !3, line: 408, column: 6)
!6930 = !DILocation(line: 408, column: 10, scope: !6929)
!6931 = !DILocation(line: 408, column: 26, scope: !6929)
!6932 = !DILocation(line: 408, column: 29, scope: !6929)
!6933 = !DILocation(line: 408, column: 33, scope: !6929)
!6934 = !DILocation(line: 408, column: 6, scope: !6903)
!6935 = !DILocation(line: 409, column: 10, scope: !6929)
!6936 = !DILocation(line: 409, column: 3, scope: !6929)
!6937 = !DILocation(line: 411, column: 33, scope: !6903)
!6938 = !DILocation(line: 411, column: 38, scope: !6903)
!6939 = !DILocation(line: 411, column: 9, scope: !6903)
!6940 = !DILocation(line: 411, column: 2, scope: !6903)
!6941 = !DILocation(line: 412, column: 1, scope: !6903)
!6942 = distinct !DISubprogram(name: "crypto_ahash_exit_tfm", scope: !3, file: !3, line: 414, type: !4201, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6943)
!6943 = !{!6944, !6945, !6946}
!6944 = !DILocalVariable(name: "tfm", arg: 1, scope: !6942, file: !3, line: 414, type: !4193)
!6945 = !DILocalVariable(name: "hash", scope: !6942, file: !3, line: 416, type: !4170)
!6946 = !DILocalVariable(name: "alg", scope: !6942, file: !3, line: 417, type: !4656)
!6947 = !DILocation(line: 414, column: 54, scope: !6942)
!6948 = !DILocation(line: 416, column: 2, scope: !6942)
!6949 = !DILocation(line: 416, column: 23, scope: !6942)
!6950 = !DILocation(line: 416, column: 50, scope: !6942)
!6951 = !DILocation(line: 416, column: 30, scope: !6942)
!6952 = !DILocation(line: 417, column: 2, scope: !6942)
!6953 = !DILocation(line: 417, column: 20, scope: !6942)
!6954 = !DILocation(line: 417, column: 43, scope: !6942)
!6955 = !DILocation(line: 417, column: 26, scope: !6942)
!6956 = !DILocation(line: 419, column: 2, scope: !6942)
!6957 = !DILocation(line: 419, column: 7, scope: !6942)
!6958 = !DILocation(line: 419, column: 16, scope: !6942)
!6959 = !DILocation(line: 420, column: 1, scope: !6942)
!6960 = distinct !DISubprogram(name: "ahash_def_finup_done1", scope: !3, file: !3, line: 379, type: !4189, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6961)
!6961 = !{!6962, !6963, !6964, !6965, !6966}
!6962 = !DILocalVariable(name: "data", arg: 1, scope: !6960, file: !3, line: 379, type: !111)
!6963 = !DILocalVariable(name: "err", arg: 2, scope: !6960, file: !3, line: 379, type: !272)
!6964 = !DILocalVariable(name: "areq", scope: !6960, file: !3, line: 381, type: !4178)
!6965 = !DILocalVariable(name: "subreq", scope: !6960, file: !3, line: 382, type: !4178)
!6966 = !DILabel(scope: !6960, name: "out", file: !3, line: 394)
!6967 = !DILocation(line: 379, column: 41, scope: !6960)
!6968 = !DILocation(line: 379, column: 51, scope: !6960)
!6969 = !DILocation(line: 381, column: 2, scope: !6960)
!6970 = !DILocation(line: 381, column: 24, scope: !6960)
!6971 = !DILocation(line: 381, column: 31, scope: !6960)
!6972 = !DILocation(line: 382, column: 2, scope: !6960)
!6973 = !DILocation(line: 382, column: 24, scope: !6960)
!6974 = !DILocation(line: 384, column: 6, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 384, column: 6)
!6976 = !DILocation(line: 384, column: 10, scope: !6975)
!6977 = !DILocation(line: 384, column: 6, scope: !6960)
!6978 = !DILocation(line: 385, column: 3, scope: !6975)
!6979 = !DILocation(line: 387, column: 11, scope: !6960)
!6980 = !DILocation(line: 387, column: 17, scope: !6960)
!6981 = !DILocation(line: 387, column: 9, scope: !6960)
!6982 = !DILocation(line: 388, column: 2, scope: !6960)
!6983 = !DILocation(line: 388, column: 10, scope: !6960)
!6984 = !DILocation(line: 388, column: 15, scope: !6960)
!6985 = !DILocation(line: 388, column: 21, scope: !6960)
!6986 = !DILocation(line: 390, column: 32, scope: !6960)
!6987 = !DILocation(line: 390, column: 38, scope: !6960)
!6988 = !DILocation(line: 390, column: 8, scope: !6960)
!6989 = !DILocation(line: 390, column: 6, scope: !6960)
!6990 = !DILocation(line: 391, column: 6, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 391, column: 6)
!6992 = !DILocation(line: 391, column: 10, scope: !6991)
!6993 = !DILocation(line: 391, column: 26, scope: !6991)
!6994 = !DILocation(line: 391, column: 29, scope: !6991)
!6995 = !DILocation(line: 391, column: 33, scope: !6991)
!6996 = !DILocation(line: 391, column: 6, scope: !6960)
!6997 = !DILocation(line: 392, column: 3, scope: !6991)
!6998 = !DILocation(line: 391, column: 37, scope: !6991)
!6999 = !DILocation(line: 394, column: 1, scope: !6960)
!7000 = !DILocation(line: 395, column: 25, scope: !6960)
!7001 = !DILocation(line: 395, column: 31, scope: !6960)
!7002 = !DILocation(line: 395, column: 2, scope: !6960)
!7003 = !DILocation(line: 396, column: 1, scope: !6960)
!7004 = distinct !DISubprogram(name: "ahash_def_finup_finish1", scope: !3, file: !3, line: 361, type: !7005, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7007)
!7005 = !DISubroutineType(types: !7006)
!7006 = !{!272, !4178, !272}
!7007 = !{!7008, !7009, !7010, !7011}
!7008 = !DILocalVariable(name: "req", arg: 1, scope: !7004, file: !3, line: 361, type: !4178)
!7009 = !DILocalVariable(name: "err", arg: 2, scope: !7004, file: !3, line: 361, type: !272)
!7010 = !DILocalVariable(name: "subreq", scope: !7004, file: !3, line: 363, type: !4178)
!7011 = !DILabel(scope: !7004, name: "out", file: !3, line: 374)
!7012 = !DILocation(line: 361, column: 58, scope: !7004)
!7013 = !DILocation(line: 361, column: 67, scope: !7004)
!7014 = !DILocation(line: 363, column: 2, scope: !7004)
!7015 = !DILocation(line: 363, column: 24, scope: !7004)
!7016 = !DILocation(line: 363, column: 33, scope: !7004)
!7017 = !DILocation(line: 363, column: 38, scope: !7004)
!7018 = !DILocation(line: 365, column: 6, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !7004, file: !3, line: 365, column: 6)
!7020 = !DILocation(line: 365, column: 6, scope: !7004)
!7021 = !DILocation(line: 366, column: 3, scope: !7019)
!7022 = !DILocation(line: 368, column: 2, scope: !7004)
!7023 = !DILocation(line: 368, column: 10, scope: !7004)
!7024 = !DILocation(line: 368, column: 15, scope: !7004)
!7025 = !DILocation(line: 368, column: 24, scope: !7004)
!7026 = !DILocation(line: 370, column: 28, scope: !7004)
!7027 = !DILocation(line: 370, column: 8, scope: !7004)
!7028 = !DILocation(line: 370, column: 34, scope: !7004)
!7029 = !DILocation(line: 370, column: 40, scope: !7004)
!7030 = !DILocation(line: 370, column: 6, scope: !7004)
!7031 = !DILocation(line: 371, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7004, file: !3, line: 371, column: 6)
!7033 = !DILocation(line: 371, column: 10, scope: !7032)
!7034 = !DILocation(line: 371, column: 26, scope: !7032)
!7035 = !DILocation(line: 371, column: 29, scope: !7032)
!7036 = !DILocation(line: 371, column: 33, scope: !7032)
!7037 = !DILocation(line: 371, column: 6, scope: !7004)
!7038 = !DILocation(line: 372, column: 10, scope: !7032)
!7039 = !DILocation(line: 372, column: 3, scope: !7032)
!7040 = !DILocation(line: 371, column: 37, scope: !7032)
!7041 = !DILocation(line: 374, column: 1, scope: !7004)
!7042 = !DILocation(line: 375, column: 20, scope: !7004)
!7043 = !DILocation(line: 375, column: 25, scope: !7004)
!7044 = !DILocation(line: 375, column: 2, scope: !7004)
!7045 = !DILocation(line: 376, column: 9, scope: !7004)
!7046 = !DILocation(line: 376, column: 2, scope: !7004)
!7047 = !DILocation(line: 377, column: 1, scope: !7004)
!7048 = distinct !DISubprogram(name: "ahash_def_finup_done2", scope: !3, file: !3, line: 349, type: !4189, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7049)
!7049 = !{!7050, !7051, !7052}
!7050 = !DILocalVariable(name: "data", arg: 1, scope: !7048, file: !3, line: 349, type: !111)
!7051 = !DILocalVariable(name: "err", arg: 2, scope: !7048, file: !3, line: 349, type: !272)
!7052 = !DILocalVariable(name: "areq", scope: !7048, file: !3, line: 351, type: !4178)
!7053 = !DILocation(line: 349, column: 41, scope: !7048)
!7054 = !DILocation(line: 349, column: 51, scope: !7048)
!7055 = !DILocation(line: 351, column: 2, scope: !7048)
!7056 = !DILocation(line: 351, column: 24, scope: !7048)
!7057 = !DILocation(line: 351, column: 31, scope: !7048)
!7058 = !DILocation(line: 353, column: 6, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !7048, file: !3, line: 353, column: 6)
!7060 = !DILocation(line: 353, column: 10, scope: !7059)
!7061 = !DILocation(line: 353, column: 6, scope: !7048)
!7062 = !DILocation(line: 354, column: 3, scope: !7059)
!7063 = !DILocation(line: 356, column: 20, scope: !7048)
!7064 = !DILocation(line: 356, column: 26, scope: !7048)
!7065 = !DILocation(line: 356, column: 2, scope: !7048)
!7066 = !DILocation(line: 358, column: 25, scope: !7048)
!7067 = !DILocation(line: 358, column: 31, scope: !7048)
!7068 = !DILocation(line: 358, column: 2, scope: !7048)
!7069 = !DILocation(line: 359, column: 1, scope: !7048)
!7070 = !DISubprogram(name: "seq_printf", scope: !1395, file: !1395, line: 119, type: !7071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7071 = !DISubroutineType(types: !7072)
!7072 = !{null, !1393, !309, null}
!7073 = distinct !DISubprogram(name: "ahash_instance", scope: !4610, file: !4610, line: 183, type: !7074, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7076)
!7074 = !DISubroutineType(types: !7075)
!7075 = !{!4608, !4485}
!7076 = !{!7077, !7078}
!7077 = !DILocalVariable(name: "inst", arg: 1, scope: !7073, file: !4610, line: 184, type: !4485)
!7078 = !DILocalVariable(name: "__mptr", scope: !7079, file: !4610, line: 186, type: !111)
!7079 = distinct !DILexicalBlock(scope: !7073, file: !4610, line: 186, column: 9)
!7080 = !DILocation(line: 184, column: 26, scope: !7073)
!7081 = !DILocation(line: 186, column: 9, scope: !7079)
!7082 = !DILocation(line: 186, column: 9, scope: !7073)
!7083 = !DILocation(line: 186, column: 2, scope: !7073)
!7084 = !DISubprogram(name: "crypto_alloc_tfm_node", scope: !4775, file: !4775, line: 144, type: !7085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!111, !309, !4221, !223, !223, !272}
!7087 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !103, file: !103, line: 243, type: !7088, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7091)
!7088 = !DISubroutineType(types: !7089)
!7089 = !{!744, !7090}
!7090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!7091 = !{!7092}
!7092 = !DILocalVariable(name: "r", arg: 1, scope: !7087, file: !103, line: 243, type: !7090)
!7093 = !DILocation(line: 243, column: 67, scope: !7087)
!7094 = !DILocation(line: 245, column: 33, scope: !7087)
!7095 = !DILocation(line: 245, column: 9, scope: !7087)
!7096 = !DILocation(line: 245, column: 2, scope: !7087)
!7097 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !103, file: !103, line: 225, type: !7098, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7100)
!7098 = !DISubroutineType(types: !7099)
!7099 = !{!744, !7090, !1768}
!7100 = !{!7101, !7102}
!7101 = !DILocalVariable(name: "r", arg: 1, scope: !7097, file: !103, line: 225, type: !7090)
!7102 = !DILocalVariable(name: "oldp", arg: 2, scope: !7097, file: !103, line: 225, type: !1768)
!7103 = !DILocation(line: 225, column: 69, scope: !7097)
!7104 = !DILocation(line: 225, column: 77, scope: !7097)
!7105 = !DILocation(line: 227, column: 36, scope: !7097)
!7106 = !DILocation(line: 227, column: 39, scope: !7097)
!7107 = !DILocation(line: 227, column: 9, scope: !7097)
!7108 = !DILocation(line: 227, column: 2, scope: !7097)
!7109 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !103, file: !103, line: 150, type: !7110, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7112)
!7110 = !DISubroutineType(types: !7111)
!7111 = !{!744, !272, !7090, !1768}
!7112 = !{!7113, !7114, !7115, !7116}
!7113 = !DILocalVariable(name: "i", arg: 1, scope: !7109, file: !103, line: 150, type: !272)
!7114 = !DILocalVariable(name: "r", arg: 2, scope: !7109, file: !103, line: 150, type: !7090)
!7115 = !DILocalVariable(name: "oldp", arg: 3, scope: !7109, file: !103, line: 150, type: !1768)
!7116 = !DILocalVariable(name: "old", scope: !7109, file: !103, line: 152, type: !272)
!7117 = !DILocation(line: 150, column: 61, scope: !7109)
!7118 = !DILocation(line: 150, column: 76, scope: !7109)
!7119 = !DILocation(line: 150, column: 84, scope: !7109)
!7120 = !DILocation(line: 152, column: 2, scope: !7109)
!7121 = !DILocation(line: 152, column: 6, scope: !7109)
!7122 = !DILocation(line: 152, column: 26, scope: !7109)
!7123 = !DILocation(line: 152, column: 12, scope: !7109)
!7124 = !DILocation(line: 154, column: 2, scope: !7109)
!7125 = !DILocation(line: 155, column: 8, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7127, file: !103, line: 155, column: 7)
!7127 = distinct !DILexicalBlock(scope: !7109, file: !103, line: 154, column: 5)
!7128 = !DILocation(line: 155, column: 7, scope: !7127)
!7129 = !DILocation(line: 156, column: 4, scope: !7126)
!7130 = !DILocation(line: 157, column: 2, scope: !7127)
!7131 = !DILocation(line: 157, column: 40, scope: !7109)
!7132 = !DILocation(line: 157, column: 43, scope: !7109)
!7133 = !DILocation(line: 157, column: 55, scope: !7109)
!7134 = !DILocation(line: 157, column: 61, scope: !7109)
!7135 = !DILocation(line: 157, column: 59, scope: !7109)
!7136 = !DILocation(line: 157, column: 12, scope: !7109)
!7137 = !DILocation(line: 157, column: 11, scope: !7109)
!7138 = distinct !{!7138, !7124, !7139, !5861, !5862}
!7139 = !DILocation(line: 157, column: 63, scope: !7109)
!7140 = !DILocation(line: 159, column: 6, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7109, file: !103, line: 159, column: 6)
!7142 = !DILocation(line: 159, column: 6, scope: !7109)
!7143 = !DILocation(line: 160, column: 11, scope: !7141)
!7144 = !DILocation(line: 160, column: 4, scope: !7141)
!7145 = !DILocation(line: 160, column: 9, scope: !7141)
!7146 = !DILocation(line: 160, column: 3, scope: !7141)
!7147 = !DILocation(line: 162, column: 6, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7109, file: !103, line: 162, column: 6)
!7149 = !DILocation(line: 162, column: 6, scope: !7109)
!7150 = !DILocation(line: 163, column: 26, scope: !7148)
!7151 = !DILocation(line: 163, column: 3, scope: !7148)
!7152 = !DILocation(line: 165, column: 9, scope: !7109)
!7153 = !DILocation(line: 166, column: 1, scope: !7109)
!7154 = !DILocation(line: 165, column: 2, scope: !7109)
!7155 = distinct !DISubprogram(name: "refcount_read", scope: !103, file: !103, line: 145, type: !7156, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7160)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{!7, !7158}
!7158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7159, size: 64)
!7159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!7160 = !{!7161}
!7161 = !DILocalVariable(name: "r", arg: 1, scope: !7155, file: !103, line: 145, type: !7158)
!7162 = !DILocation(line: 145, column: 60, scope: !7155)
!7163 = !DILocation(line: 147, column: 22, scope: !7155)
!7164 = !DILocation(line: 147, column: 25, scope: !7155)
!7165 = !DILocation(line: 147, column: 9, scope: !7155)
!7166 = !DILocation(line: 147, column: 2, scope: !7155)
!7167 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !7168, file: !7168, line: 1335, type: !7169, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7172)
!7168 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7169 = !DISubroutineType(types: !7170)
!7170 = !{!744, !7171, !1768, !272}
!7171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!7172 = !{!7173, !7174, !7175}
!7173 = !DILocalVariable(name: "v", arg: 1, scope: !7167, file: !7168, line: 1335, type: !7171)
!7174 = !DILocalVariable(name: "old", arg: 2, scope: !7167, file: !7168, line: 1335, type: !1768)
!7175 = !DILocalVariable(name: "new", arg: 3, scope: !7167, file: !7168, line: 1335, type: !272)
!7176 = !DILocation(line: 1335, column: 38, scope: !7167)
!7177 = !DILocation(line: 1335, column: 46, scope: !7167)
!7178 = !DILocation(line: 1335, column: 55, scope: !7167)
!7179 = !DILocation(line: 1337, column: 31, scope: !7167)
!7180 = !DILocation(line: 1337, column: 2, scope: !7167)
!7181 = !DILocation(line: 1338, column: 31, scope: !7167)
!7182 = !DILocation(line: 1338, column: 2, scope: !7167)
!7183 = !DILocation(line: 1339, column: 40, scope: !7167)
!7184 = !DILocation(line: 1339, column: 43, scope: !7167)
!7185 = !DILocation(line: 1339, column: 48, scope: !7167)
!7186 = !DILocation(line: 1339, column: 9, scope: !7167)
!7187 = !DILocation(line: 1339, column: 2, scope: !7167)
!7188 = !DISubprogram(name: "refcount_warn_saturate", scope: !103, file: !103, line: 127, type: !7189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7189 = !DISubroutineType(types: !7190)
!7190 = !{null, !7090, !102}
!7191 = distinct !DISubprogram(name: "atomic_read", scope: !7168, file: !7168, line: 30, type: !7192, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7196)
!7192 = !DISubroutineType(types: !7193)
!7193 = !{!272, !7194}
!7194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7195, size: 64)
!7195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!7196 = !{!7197}
!7197 = !DILocalVariable(name: "v", arg: 1, scope: !7191, file: !7168, line: 30, type: !7194)
!7198 = !DILocation(line: 30, column: 29, scope: !7191)
!7199 = !DILocation(line: 32, column: 25, scope: !7191)
!7200 = !DILocation(line: 32, column: 2, scope: !7191)
!7201 = !DILocation(line: 33, column: 25, scope: !7191)
!7202 = !DILocation(line: 33, column: 9, scope: !7191)
!7203 = !DILocation(line: 33, column: 2, scope: !7191)
!7204 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7205, file: !7205, line: 66, type: !7206, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7211)
!7205 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7206 = !DISubroutineType(types: !7207)
!7207 = !{null, !7208, !482}
!7208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7209, size: 64)
!7209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7210)
!7210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7211 = !{!7212, !7213}
!7212 = !DILocalVariable(name: "v", arg: 1, scope: !7204, file: !7205, line: 66, type: !7208)
!7213 = !DILocalVariable(name: "size", arg: 2, scope: !7204, file: !7205, line: 66, type: !482)
!7214 = !DILocation(line: 66, column: 73, scope: !7204)
!7215 = !DILocation(line: 66, column: 83, scope: !7204)
!7216 = !DILocation(line: 68, column: 19, scope: !7204)
!7217 = !DILocation(line: 68, column: 22, scope: !7204)
!7218 = !DILocation(line: 68, column: 2, scope: !7204)
!7219 = !DILocation(line: 69, column: 2, scope: !7204)
!7220 = !DILocation(line: 70, column: 1, scope: !7204)
!7221 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7222, file: !7222, line: 442, type: !7192, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7223)
!7222 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7223 = !{!7224}
!7224 = !DILocalVariable(name: "v", arg: 1, scope: !7221, file: !7222, line: 442, type: !7194)
!7225 = !DILocation(line: 442, column: 33, scope: !7221)
!7226 = !DILocation(line: 444, column: 26, scope: !7221)
!7227 = !DILocation(line: 444, column: 9, scope: !7221)
!7228 = !DILocation(line: 444, column: 2, scope: !7221)
!7229 = distinct !DISubprogram(name: "kasan_check_read", scope: !7230, file: !7230, line: 40, type: !7231, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7233)
!7230 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7231 = !DISubroutineType(types: !7232)
!7232 = !{!744, !7208, !7}
!7233 = !{!7234, !7235}
!7234 = !DILocalVariable(name: "p", arg: 1, scope: !7229, file: !7230, line: 40, type: !7208)
!7235 = !DILocalVariable(name: "size", arg: 2, scope: !7229, file: !7230, line: 40, type: !7)
!7236 = !DILocation(line: 40, column: 58, scope: !7229)
!7237 = !DILocation(line: 40, column: 74, scope: !7229)
!7238 = !DILocation(line: 42, column: 2, scope: !7229)
!7239 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7240, file: !7240, line: 229, type: !7241, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7243)
!7240 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7241 = !DISubroutineType(types: !7242)
!7242 = !{null, !7208, !482, !272}
!7243 = !{!7244, !7245, !7246}
!7244 = !DILocalVariable(name: "ptr", arg: 1, scope: !7239, file: !7240, line: 229, type: !7208)
!7245 = !DILocalVariable(name: "size", arg: 2, scope: !7239, file: !7240, line: 229, type: !482)
!7246 = !DILocalVariable(name: "type", arg: 3, scope: !7239, file: !7240, line: 230, type: !272)
!7247 = !DILocation(line: 229, column: 60, scope: !7239)
!7248 = !DILocation(line: 229, column: 72, scope: !7239)
!7249 = !DILocation(line: 230, column: 15, scope: !7239)
!7250 = !DILocation(line: 230, column: 23, scope: !7239)
!7251 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7252, file: !7252, line: 17, type: !7192, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7253)
!7252 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7253 = !{!7254}
!7254 = !DILocalVariable(name: "v", arg: 1, scope: !7251, file: !7252, line: 17, type: !7194)
!7255 = !DILocation(line: 17, column: 61, scope: !7251)
!7256 = !DILocation(line: 23, column: 9, scope: !7251)
!7257 = !DILocation(line: 23, column: 2, scope: !7251)
!7258 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7205, file: !7205, line: 94, type: !7206, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7259)
!7259 = !{!7260, !7261}
!7260 = !DILocalVariable(name: "v", arg: 1, scope: !7258, file: !7205, line: 94, type: !7208)
!7261 = !DILocalVariable(name: "size", arg: 2, scope: !7258, file: !7205, line: 94, type: !482)
!7262 = !DILocation(line: 94, column: 79, scope: !7258)
!7263 = !DILocation(line: 94, column: 89, scope: !7258)
!7264 = !DILocation(line: 96, column: 20, scope: !7258)
!7265 = !DILocation(line: 96, column: 23, scope: !7258)
!7266 = !DILocation(line: 96, column: 2, scope: !7258)
!7267 = !DILocation(line: 97, column: 2, scope: !7258)
!7268 = !DILocation(line: 98, column: 1, scope: !7258)
!7269 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !7222, file: !7222, line: 2207, type: !7169, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7270)
!7270 = !{!7271, !7272, !7273}
!7271 = !DILocalVariable(name: "v", arg: 1, scope: !7269, file: !7222, line: 2207, type: !7171)
!7272 = !DILocalVariable(name: "old", arg: 2, scope: !7269, file: !7222, line: 2207, type: !1768)
!7273 = !DILocalVariable(name: "new", arg: 3, scope: !7269, file: !7222, line: 2207, type: !272)
!7274 = !DILocation(line: 2207, column: 42, scope: !7269)
!7275 = !DILocation(line: 2207, column: 50, scope: !7269)
!7276 = !DILocation(line: 2207, column: 59, scope: !7269)
!7277 = !DILocation(line: 2212, column: 33, scope: !7269)
!7278 = !DILocation(line: 2212, column: 36, scope: !7269)
!7279 = !DILocation(line: 2212, column: 41, scope: !7269)
!7280 = !DILocation(line: 2212, column: 9, scope: !7269)
!7281 = !DILocation(line: 2212, column: 2, scope: !7269)
!7282 = distinct !DISubprogram(name: "kasan_check_write", scope: !7230, file: !7230, line: 44, type: !7231, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7283)
!7283 = !{!7284, !7285}
!7284 = !DILocalVariable(name: "p", arg: 1, scope: !7282, file: !7230, line: 44, type: !7208)
!7285 = !DILocalVariable(name: "size", arg: 2, scope: !7282, file: !7230, line: 44, type: !7)
!7286 = !DILocation(line: 44, column: 59, scope: !7282)
!7287 = !DILocation(line: 44, column: 75, scope: !7282)
!7288 = !DILocation(line: 46, column: 2, scope: !7282)
!7289 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !7252, file: !7252, line: 113, type: !7169, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7290)
!7290 = !{!7291, !7292, !7293, !7294, !7296, !7297, !7298, !7299}
!7291 = !DILocalVariable(name: "v", arg: 1, scope: !7289, file: !7252, line: 113, type: !7171)
!7292 = !DILocalVariable(name: "old", arg: 2, scope: !7289, file: !7252, line: 113, type: !1768)
!7293 = !DILocalVariable(name: "new", arg: 3, scope: !7289, file: !7252, line: 113, type: !272)
!7294 = !DILocalVariable(name: "success", scope: !7295, file: !7252, line: 115, type: !744)
!7295 = distinct !DILexicalBlock(scope: !7289, file: !7252, line: 115, column: 9)
!7296 = !DILocalVariable(name: "_old", scope: !7295, file: !7252, line: 115, type: !1768)
!7297 = !DILocalVariable(name: "__old", scope: !7295, file: !7252, line: 115, type: !272)
!7298 = !DILocalVariable(name: "__new", scope: !7295, file: !7252, line: 115, type: !272)
!7299 = !DILocalVariable(name: "__ptr", scope: !7295, file: !7252, line: 115, type: !4654)
!7300 = !DILocation(line: 113, column: 63, scope: !7289)
!7301 = !DILocation(line: 113, column: 71, scope: !7289)
!7302 = !DILocation(line: 113, column: 80, scope: !7289)
!7303 = !DILocation(line: 115, column: 9, scope: !7295)
!7304 = !{i64 2148896707, i64 2148896746, i64 2148896767, i64 2148896804, i64 2148896827, i64 2148896836, i64 2148897134}
!7305 = !DILocation(line: 115, column: 9, scope: !7306)
!7306 = distinct !DILexicalBlock(scope: !7295, file: !7252, line: 115, column: 9)
!7307 = !DILocation(line: 115, column: 9, scope: !7289)
!7308 = !DILocation(line: 115, column: 2, scope: !7289)
!7309 = !DISubprogram(name: "crypto_destroy_tfm", scope: !4183, file: !4183, line: 445, type: !7310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7310 = !DISubroutineType(types: !7311)
!7311 = !{null, !111, !4193}
!7312 = !DISubprogram(name: "hash_prepare_alg", scope: !5714, file: !5714, line: 38, type: !7313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7313 = !DISubroutineType(types: !7314)
!7314 = !{!272, !4602}
