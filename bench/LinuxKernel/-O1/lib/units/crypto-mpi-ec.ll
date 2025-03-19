; ModuleID = 'lib/crypto/mpi/ec.c'
source_filename = "lib/crypto/mpi/ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_point_new: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_point_new ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_point_release: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_point_release ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_point_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_point_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_point_free_parts: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_point_free_parts ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_ec_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_ec_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_ec_deinit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_ec_deinit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_ec_get_affine: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_ec_get_affine ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_ec_add_points: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_ec_add_points ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_ec_mul_point: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_ec_mul_point ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_ec_curve_point: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_ec_curve_point ; .previous"

%struct.field_table = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gcry_mpi_point = type { ptr, ptr, ptr }
%struct.mpi_ec_ctx = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.anon.0, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.anon, i32, ptr, ptr, [11 x ptr] }
%struct.anon = type { i8, [3 x i8] }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_point_new287 = internal global ptr @mpi_point_new, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_mpi_point_release288 = internal global ptr @mpi_point_release, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable_mpi_point_init289 = internal global ptr @mpi_point_init, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_mpi_point_free_parts290 = internal global ptr @mpi_point_free_parts, section ".discard.addressable", align 8, !dbg !51
@mpi_ec_init.use_barrett = internal global i32 -1, align 4, !dbg !53
@bad_points_table = internal global [2 x ptr] [ptr @curve25519_bad_points, ptr @curve448_bad_points], align 16, !dbg !180
@field_table = internal constant [3 x %struct.field_table] [%struct.field_table { ptr @.str.16, ptr @ec_addm_25519, ptr @ec_subm_25519, ptr @ec_mulm_25519, ptr @ec_mul2_25519, ptr @ec_pow2_25519 }, %struct.field_table { ptr @.str.17, ptr @ec_addm_448, ptr @ec_subm_448, ptr @ec_mulm_448, ptr @ec_mul2_448, ptr @ec_pow2_448 }, %struct.field_table zeroinitializer], align 16, !dbg !231
@__UNIQUE_ID___addressable_mpi_ec_init291 = internal global ptr @mpi_ec_init, section ".discard.addressable", align 8, !dbg !150
@__UNIQUE_ID___addressable_mpi_ec_deinit292 = internal global ptr @mpi_ec_deinit, section ".discard.addressable", align 8, !dbg !152
@.str = private unnamed_addr constant [51 x i8] c"\013%s: Getting Y-coordinate on %s is not supported\0A\00", align 1, !dbg !154
@.str.1 = private unnamed_addr constant [18 x i8] c"mpi_ec_get_affine\00", align 1, !dbg !159
@.str.2 = private unnamed_addr constant [11 x i8] c"Montgomery\00", align 1, !dbg !164
@__UNIQUE_ID___addressable_mpi_ec_get_affine293 = internal global ptr @mpi_ec_get_affine, section ".discard.addressable", align 8, !dbg !167
@__UNIQUE_ID___addressable_mpi_ec_add_points294 = internal global ptr @mpi_ec_add_points, section ".discard.addressable", align 8, !dbg !169
@__UNIQUE_ID___addressable_mpi_ec_mul_point295 = internal global ptr @mpi_ec_mul_point, section ".discard.addressable", align 8, !dbg !171
@__UNIQUE_ID___addressable_mpi_ec_curve_point296 = internal global ptr @mpi_ec_curve_point, section ".discard.addressable", align 8, !dbg !173
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !175
@curve25519_bad_points = internal constant [8 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16, !dbg !204
@curve448_bad_points = internal constant [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null], align 16, !dbg !222
@.str.4 = private unnamed_addr constant [67 x i8] c"0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed\00", align 1, !dbg !187
@.str.5 = private unnamed_addr constant [67 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000000\00", align 1, !dbg !192
@.str.6 = private unnamed_addr constant [67 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000001\00", align 1, !dbg !194
@.str.7 = private unnamed_addr constant [67 x i8] c"0x00b8495f16056286fdb1329ceb8d09da6ac49ff1fae35616aeb8413b7c7aebe0\00", align 1, !dbg !196
@.str.8 = private unnamed_addr constant [67 x i8] c"0x57119fd0dd4e22d8868e1c58c45c44045bef839c55b1d0b1248c50a3bc959c5f\00", align 1, !dbg !198
@.str.9 = private unnamed_addr constant [67 x i8] c"0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec\00", align 1, !dbg !200
@.str.10 = private unnamed_addr constant [67 x i8] c"0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffee\00", align 1, !dbg !202
@.str.11 = private unnamed_addr constant [115 x i8] c"0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffff\00", align 1, !dbg !209
@.str.12 = private unnamed_addr constant [115 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1, !dbg !214
@.str.13 = private unnamed_addr constant [115 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1, !dbg !216
@.str.14 = private unnamed_addr constant [115 x i8] c"0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffffffffffffffffffffffffffffffffffffffffffffffffffffe\00", align 1, !dbg !218
@.str.15 = private unnamed_addr constant [115 x i8] c"0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000\00", align 1, !dbg !220
@.str.16 = private unnamed_addr constant [67 x i8] c"0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED\00", align 1, !dbg !227
@.str.17 = private unnamed_addr constant [115 x i8] c"0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1, !dbg !229
@.str.18 = private unnamed_addr constant [29 x i8] c"addm_25519: different sizes\0A\00", align 1, !dbg !245
@.str.19 = private unnamed_addr constant [29 x i8] c"subm_25519: different sizes\0A\00", align 1, !dbg !250
@.str.20 = private unnamed_addr constant [29 x i8] c"mulm_25519: different sizes\0A\00", align 1, !dbg !252
@.str.21 = private unnamed_addr constant [27 x i8] c"addm_448: different sizes\0A\00", align 1, !dbg !254
@.str.22 = private unnamed_addr constant [27 x i8] c"subm_448: different sizes\0A\00", align 1, !dbg !259
@.str.23 = private unnamed_addr constant [27 x i8] c"mulm_448: different sizes\0A\00", align 1, !dbg !261
@.str.24 = private unnamed_addr constant [36 x i8] c"\013ec_invm: inverse does not exist:\0A\00", align 1, !dbg !263
@.str.25 = private unnamed_addr constant [28 x i8] c"\013%s: %s not yet supported\0A\00", align 1, !dbg !268
@.str.26 = private unnamed_addr constant [18 x i8] c"mpi_ec_add_points\00", align 1, !dbg !273
@.str.27 = private unnamed_addr constant [17 x i8] c"mpi_ec_dup_point\00", align 1, !dbg !275
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_point_new287, ptr @__UNIQUE_ID___addressable_mpi_point_release288, ptr @__UNIQUE_ID___addressable_mpi_point_init289, ptr @__UNIQUE_ID___addressable_mpi_point_free_parts290, ptr @__UNIQUE_ID___addressable_mpi_ec_init291, ptr @__UNIQUE_ID___addressable_mpi_ec_deinit292, ptr @__UNIQUE_ID___addressable_mpi_ec_get_affine293, ptr @__UNIQUE_ID___addressable_mpi_ec_add_points294, ptr @__UNIQUE_ID___addressable_mpi_ec_mul_point295, ptr @__UNIQUE_ID___addressable_mpi_ec_curve_point296], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_point_new(i32 noundef %nbits) #0 align 16 !dbg !289 {
entry:
  %nbits.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %p, metadata !294, metadata !DIExpression()), !dbg !297
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !298
  %call = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #16, !dbg !299
  store ptr %call, ptr %p, align 8, !dbg !300
  %1 = load ptr, ptr %p, align 8, !dbg !301
  %tobool = icmp ne ptr %1, null, !dbg !301
  br i1 %tobool, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !304
  call void @mpi_point_init(ptr noundef %2) #17, !dbg !305
  br label %if.end, !dbg !305

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !306
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !307
  ret ptr %3, !dbg !308
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !309 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !317, metadata !DIExpression()), !dbg !322
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !318, metadata !DIExpression()), !dbg !323
  %0 = load i64, ptr %size.addr, align 8, !dbg !324
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !325
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !326

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !327
  %tobool = icmp ne i64 %2, 0, !dbg !327
  br i1 %tobool, label %if.then, label %if.end7, !dbg !328

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %index, metadata !319, metadata !DIExpression()), !dbg !330
  %3 = load i64, ptr %size.addr, align 8, !dbg !331
  %cmp = icmp ugt i64 %3, 8192, !dbg !333
  br i1 %cmp, label %if.then1, label %if.end, !dbg !334

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !335
  %5 = load i32, ptr %flags.addr, align 4, !dbg !336
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !337
  store ptr %call, ptr %retval, align 8, !dbg !338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !338

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !339
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !339
  store i32 %call2, ptr %index, align 4, !dbg !340
  %7 = load i32, ptr %flags.addr, align 4, !dbg !341
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !342
  %9 = ptrtoint ptr %8 to i64, !dbg !342
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !343
  %idxprom = zext i32 %call3 to i64, !dbg !344
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !344
  %10 = load i32, ptr %index, align 4, !dbg !345
  %idxprom4 = zext i32 %10 to i64, !dbg !344
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !344
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !344
  %12 = load i32, ptr %flags.addr, align 4, !dbg !346
  %13 = load i64, ptr %size.addr, align 8, !dbg !347
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !348
  store ptr %call6, ptr %retval, align 8, !dbg !349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !349

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !350
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !351
  %15 = load i32, ptr %flags.addr, align 4, !dbg !352
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !353
  store ptr %call8, ptr %retval, align 8, !dbg !354
  br label %return, !dbg !354

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !355
  ret ptr %16, !dbg !355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_point_init(ptr noundef %p) #0 align 16 !dbg !356 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %call = call ptr @mpi_new(i32 noundef 0) #17, !dbg !362
  %0 = load ptr, ptr %p.addr, align 8, !dbg !363
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 0, !dbg !364
  store ptr %call, ptr %x, align 8, !dbg !365
  %call1 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !366
  %1 = load ptr, ptr %p.addr, align 8, !dbg !367
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1, !dbg !368
  store ptr %call1, ptr %y, align 8, !dbg !369
  %call2 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !370
  %2 = load ptr, ptr %p.addr, align 8, !dbg !371
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2, !dbg !372
  store ptr %call2, ptr %z, align 8, !dbg !373
  ret void, !dbg !374
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_point_release(ptr noundef %p) #0 align 16 !dbg !375 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load ptr, ptr %p.addr, align 8, !dbg !379
  %tobool = icmp ne ptr %0, null, !dbg !379
  br i1 %tobool, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !382
  call void @mpi_point_free_parts(ptr noundef %1) #17, !dbg !384
  %2 = load ptr, ptr %p.addr, align 8, !dbg !385
  call void @kfree(ptr noundef %2) #17, !dbg !386
  br label %if.end, !dbg !387

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_point_free_parts(ptr noundef %p) #0 align 16 !dbg !389 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load ptr, ptr %p.addr, align 8, !dbg !393
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 0, !dbg !394
  %1 = load ptr, ptr %x, align 8, !dbg !394
  call void @mpi_free(ptr noundef %1) #17, !dbg !395
  %2 = load ptr, ptr %p.addr, align 8, !dbg !396
  %x1 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 0, !dbg !397
  store ptr null, ptr %x1, align 8, !dbg !398
  %3 = load ptr, ptr %p.addr, align 8, !dbg !399
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %3, i32 0, i32 1, !dbg !400
  %4 = load ptr, ptr %y, align 8, !dbg !400
  call void @mpi_free(ptr noundef %4) #17, !dbg !401
  %5 = load ptr, ptr %p.addr, align 8, !dbg !402
  %y2 = getelementptr inbounds %struct.gcry_mpi_point, ptr %5, i32 0, i32 1, !dbg !403
  store ptr null, ptr %y2, align 8, !dbg !404
  %6 = load ptr, ptr %p.addr, align 8, !dbg !405
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 2, !dbg !406
  %7 = load ptr, ptr %z, align 8, !dbg !406
  call void @mpi_free(ptr noundef %7) #17, !dbg !407
  %8 = load ptr, ptr %p.addr, align 8, !dbg !408
  %z3 = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2, !dbg !409
  store ptr null, ptr %z3, align 8, !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !412 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mpi_new(i32 noundef %nbits) #5 align 16 !dbg !417 {
entry:
  %nbits.addr = alloca i32, align 4
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !423
  %add = add i32 %0, 64, !dbg !424
  %sub = sub i32 %add, 1, !dbg !425
  %div = udiv i32 %sub, 64, !dbg !426
  %call = call ptr @mpi_alloc(i32 noundef %div) #17, !dbg !427
  ret ptr %call, !dbg !428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !429 dso_local void @mpi_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_ec_init(ptr noundef %ctx, i32 noundef %model, i32 noundef %dialect, i32 noundef %flags, ptr noundef %p, ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !55 {
entry:
  %ctx.addr = alloca ptr, align 8
  %model.addr = alloca i32, align 4
  %dialect.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p_candidate = alloca ptr, align 8
  %match_p = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %f_p = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !130, metadata !DIExpression()), !dbg !432
  store i32 %model, ptr %model.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %model.addr, metadata !131, metadata !DIExpression()), !dbg !433
  store i32 %dialect, ptr %dialect.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dialect.addr, metadata !132, metadata !DIExpression()), !dbg !434
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !133, metadata !DIExpression()), !dbg !435
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !134, metadata !DIExpression()), !dbg !436
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !135, metadata !DIExpression()), !dbg !437
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !136, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %i, metadata !137, metadata !DIExpression()), !dbg !440
  %0 = load ptr, ptr %a.addr, align 8, !dbg !441
  %1 = load ptr, ptr %p.addr, align 8, !dbg !442
  call void @mpi_ec_coefficient_normalize(ptr noundef %0, ptr noundef %1) #17, !dbg !443
  %2 = load ptr, ptr %b.addr, align 8, !dbg !444
  %3 = load ptr, ptr %p.addr, align 8, !dbg !445
  call void @mpi_ec_coefficient_normalize(ptr noundef %2, ptr noundef %3) #17, !dbg !446
  %4 = load i32, ptr %model.addr, align 4, !dbg !447
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !448
  %model1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %5, i32 0, i32 0, !dbg !449
  store i32 %4, ptr %model1, align 8, !dbg !450
  %6 = load i32, ptr %dialect.addr, align 4, !dbg !451
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !452
  %dialect2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %7, i32 0, i32 1, !dbg !453
  store i32 %6, ptr %dialect2, align 4, !dbg !454
  %8 = load i32, ptr %flags.addr, align 4, !dbg !455
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !456
  %flags3 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %9, i32 0, i32 2, !dbg !457
  store i32 %8, ptr %flags3, align 8, !dbg !458
  %10 = load i32, ptr %dialect.addr, align 4, !dbg !459
  %cmp = icmp eq i32 %10, 1, !dbg !461
  br i1 %cmp, label %if.then, label %if.else, !dbg !462

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !463
  %nbits = getelementptr inbounds %struct.mpi_ec_ctx, ptr %11, i32 0, i32 3, !dbg !464
  store i32 256, ptr %nbits, align 4, !dbg !465
  br label %if.end, !dbg !463

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %p.addr, align 8, !dbg !466
  %call = call i32 @mpi_get_nbits(ptr noundef %12) #17, !dbg !467
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !468
  %nbits4 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %13, i32 0, i32 3, !dbg !469
  store i32 %call, ptr %nbits4, align 4, !dbg !470
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %p.addr, align 8, !dbg !471
  %call5 = call ptr @mpi_copy(ptr noundef %14) #17, !dbg !472
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !473
  %p6 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %15, i32 0, i32 4, !dbg !474
  store ptr %call5, ptr %p6, align 8, !dbg !475
  %16 = load ptr, ptr %a.addr, align 8, !dbg !476
  %call7 = call ptr @mpi_copy(ptr noundef %16) #17, !dbg !477
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !478
  %a8 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %17, i32 0, i32 5, !dbg !479
  store ptr %call7, ptr %a8, align 8, !dbg !480
  %18 = load ptr, ptr %b.addr, align 8, !dbg !481
  %call9 = call ptr @mpi_copy(ptr noundef %18) #17, !dbg !482
  %19 = load ptr, ptr %ctx.addr, align 8, !dbg !483
  %b10 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %19, i32 0, i32 6, !dbg !484
  store ptr %call9, ptr %b10, align 8, !dbg !485
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !486
  %d = getelementptr inbounds %struct.mpi_ec_ctx, ptr %20, i32 0, i32 11, !dbg !487
  store ptr null, ptr %d, align 8, !dbg !488
  %21 = load ptr, ptr %ctx.addr, align 8, !dbg !489
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %21, i32 0, i32 13, !dbg !490
  %two_inv_p = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 2, !dbg !491
  store ptr null, ptr %two_inv_p, align 8, !dbg !492
  %22 = load i32, ptr @mpi_ec_init.use_barrett, align 4, !dbg !493
  %cmp11 = icmp sgt i32 %22, 0, !dbg !494
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !493

cond.true:                                        ; preds = %if.end
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !495
  %p12 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %23, i32 0, i32 4, !dbg !496
  %24 = load ptr, ptr %p12, align 8, !dbg !496
  %call13 = call ptr @mpi_barrett_init(ptr noundef %24, i32 noundef 0) #17, !dbg !497
  br label %cond.end, !dbg !493

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call13, %cond.true ], [ null, %cond.false ], !dbg !493
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !498
  %t14 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %25, i32 0, i32 13, !dbg !499
  %p_barrett = getelementptr inbounds %struct.anon.0, ptr %t14, i32 0, i32 3, !dbg !500
  store ptr %cond, ptr %p_barrett, align 8, !dbg !501
  %26 = load ptr, ptr %ctx.addr, align 8, !dbg !502
  call void @mpi_ec_get_reset(ptr noundef %26) #17, !dbg !503
  %27 = load i32, ptr %model.addr, align 4, !dbg !504
  %cmp15 = icmp eq i32 %27, 1, !dbg !505
  br i1 %cmp15, label %if.then16, label %if.else49, !dbg !506

if.then16:                                        ; preds = %cond.end
  store i32 0, ptr %i, align 4, !dbg !507
  br label %for.cond, !dbg !508

for.cond:                                         ; preds = %for.inc46, %if.then16
  %28 = load i32, ptr %i, align 4, !dbg !509
  %conv = sext i32 %28 to i64, !dbg !509
  %cmp17 = icmp ult i64 %conv, 2, !dbg !510
  br i1 %cmp17, label %for.body, label %for.end48, !dbg !511

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_candidate) #15, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %p_candidate, metadata !138, metadata !DIExpression()), !dbg !513
  %29 = load i32, ptr %i, align 4, !dbg !514
  %idxprom = sext i32 %29 to i64, !dbg !515
  %arrayidx = getelementptr [2 x ptr], ptr @bad_points_table, i64 0, i64 %idxprom, !dbg !515
  %30 = load ptr, ptr %arrayidx, align 8, !dbg !515
  %arrayidx19 = getelementptr ptr, ptr %30, i64 0, !dbg !515
  %31 = load ptr, ptr %arrayidx19, align 8, !dbg !515
  %call20 = call ptr @mpi_scanval(ptr noundef %31) #17, !dbg !516
  store ptr %call20, ptr %p_candidate, align 8, !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %match_p) #15, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %match_p, metadata !144, metadata !DIExpression()), !dbg !518
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !519
  %p21 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %32, i32 0, i32 4, !dbg !520
  %33 = load ptr, ptr %p21, align 8, !dbg !520
  %34 = load ptr, ptr %p_candidate, align 8, !dbg !521
  %call22 = call i32 @mpi_cmp(ptr noundef %33, ptr noundef %34) #17, !dbg !522
  %tobool = icmp ne i32 %call22, 0, !dbg !523
  %lnot = xor i1 %tobool, true, !dbg !523
  %lnot.ext = zext i1 %lnot to i32, !dbg !523
  store i32 %lnot.ext, ptr %match_p, align 4, !dbg !518
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %j, metadata !145, metadata !DIExpression()), !dbg !525
  %35 = load ptr, ptr %p_candidate, align 8, !dbg !526
  call void @mpi_free(ptr noundef %35) #17, !dbg !527
  %36 = load i32, ptr %match_p, align 4, !dbg !528
  %tobool23 = icmp ne i32 %36, 0, !dbg !528
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !530

if.then24:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !531

if.end25:                                         ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !532
  br label %for.cond26, !dbg !534

for.cond26:                                       ; preds = %for.inc, %if.end25
  %37 = load i32, ptr %i, align 4, !dbg !535
  %conv27 = sext i32 %37 to i64, !dbg !535
  %cmp28 = icmp ult i64 %conv27, 11, !dbg !537
  br i1 %cmp28, label %land.rhs, label %land.end, !dbg !538

land.rhs:                                         ; preds = %for.cond26
  %38 = load i32, ptr %i, align 4, !dbg !539
  %idxprom30 = sext i32 %38 to i64, !dbg !540
  %arrayidx31 = getelementptr [2 x ptr], ptr @bad_points_table, i64 0, i64 %idxprom30, !dbg !540
  %39 = load ptr, ptr %arrayidx31, align 8, !dbg !540
  %40 = load i32, ptr %j, align 4, !dbg !541
  %idxprom32 = sext i32 %40 to i64, !dbg !540
  %arrayidx33 = getelementptr ptr, ptr %39, i64 %idxprom32, !dbg !540
  %41 = load ptr, ptr %arrayidx33, align 8, !dbg !540
  %tobool34 = icmp ne ptr %41, null, !dbg !538
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond26
  %42 = phi i1 [ false, %for.cond26 ], [ %tobool34, %land.rhs ], !dbg !542
  br i1 %42, label %for.body35, label %for.end, !dbg !543

for.body35:                                       ; preds = %land.end
  %43 = load i32, ptr %i, align 4, !dbg !544
  %idxprom36 = sext i32 %43 to i64, !dbg !545
  %arrayidx37 = getelementptr [2 x ptr], ptr @bad_points_table, i64 0, i64 %idxprom36, !dbg !545
  %44 = load ptr, ptr %arrayidx37, align 8, !dbg !545
  %45 = load i32, ptr %j, align 4, !dbg !546
  %idxprom38 = sext i32 %45 to i64, !dbg !545
  %arrayidx39 = getelementptr ptr, ptr %44, i64 %idxprom38, !dbg !545
  %46 = load ptr, ptr %arrayidx39, align 8, !dbg !545
  %call40 = call ptr @mpi_scanval(ptr noundef %46) #17, !dbg !547
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !548
  %t41 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %47, i32 0, i32 13, !dbg !549
  %scratch = getelementptr inbounds %struct.anon.0, ptr %t41, i32 0, i32 4, !dbg !550
  %48 = load i32, ptr %j, align 4, !dbg !551
  %idxprom42 = sext i32 %48 to i64, !dbg !548
  %arrayidx43 = getelementptr [11 x ptr], ptr %scratch, i64 0, i64 %idxprom42, !dbg !548
  store ptr %call40, ptr %arrayidx43, align 8, !dbg !552
  br label %for.inc, !dbg !548

for.inc:                                          ; preds = %for.body35
  %49 = load i32, ptr %j, align 4, !dbg !553
  %inc = add i32 %49, 1, !dbg !553
  store i32 %inc, ptr %j, align 4, !dbg !553
  br label %for.cond26, !dbg !554, !llvm.loop !555

for.end:                                          ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !559
  br label %cleanup, !dbg !559

cleanup:                                          ; preds = %for.end, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !559
  call void @llvm.lifetime.end.p0(i64 4, ptr %match_p) #15, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_candidate) #15, !dbg !559
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc46
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc46, !dbg !560

for.inc46:                                        ; preds = %cleanup.cont, %cleanup
  %50 = load i32, ptr %i, align 4, !dbg !561
  %inc47 = add i32 %50, 1, !dbg !561
  store i32 %inc47, ptr %i, align 4, !dbg !561
  br label %for.cond, !dbg !562, !llvm.loop !563

for.end48:                                        ; preds = %for.cond
  br label %if.end64, !dbg !565

if.else49:                                        ; preds = %cond.end
  store i32 0, ptr %i, align 4, !dbg !566
  br label %for.cond50, !dbg !569

for.cond50:                                       ; preds = %for.inc61, %if.else49
  %51 = load i32, ptr %i, align 4, !dbg !570
  %conv51 = sext i32 %51 to i64, !dbg !570
  %cmp52 = icmp ult i64 %conv51, 11, !dbg !572
  br i1 %cmp52, label %for.body54, label %for.end63, !dbg !573

for.body54:                                       ; preds = %for.cond50
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !574
  %p55 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %52, i32 0, i32 4, !dbg !575
  %53 = load ptr, ptr %p55, align 8, !dbg !575
  %call56 = call ptr @mpi_alloc_like(ptr noundef %53) #17, !dbg !576
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !577
  %t57 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %54, i32 0, i32 13, !dbg !578
  %scratch58 = getelementptr inbounds %struct.anon.0, ptr %t57, i32 0, i32 4, !dbg !579
  %55 = load i32, ptr %i, align 4, !dbg !580
  %idxprom59 = sext i32 %55 to i64, !dbg !577
  %arrayidx60 = getelementptr [11 x ptr], ptr %scratch58, i64 0, i64 %idxprom59, !dbg !577
  store ptr %call56, ptr %arrayidx60, align 8, !dbg !581
  br label %for.inc61, !dbg !577

for.inc61:                                        ; preds = %for.body54
  %56 = load i32, ptr %i, align 4, !dbg !582
  %inc62 = add i32 %56, 1, !dbg !582
  store i32 %inc62, ptr %i, align 4, !dbg !582
  br label %for.cond50, !dbg !583, !llvm.loop !584

for.end63:                                        ; preds = %for.cond50
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %for.end48
  %57 = load ptr, ptr %ctx.addr, align 8, !dbg !586
  %addm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %57, i32 0, i32 14, !dbg !587
  store ptr @ec_addm, ptr %addm, align 8, !dbg !588
  %58 = load ptr, ptr %ctx.addr, align 8, !dbg !589
  %subm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %58, i32 0, i32 15, !dbg !590
  store ptr @ec_subm, ptr %subm, align 8, !dbg !591
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !592
  %mulm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %59, i32 0, i32 16, !dbg !593
  store ptr @ec_mulm, ptr %mulm, align 8, !dbg !594
  %60 = load ptr, ptr %ctx.addr, align 8, !dbg !595
  %mul2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %60, i32 0, i32 18, !dbg !596
  store ptr @ec_mul2, ptr %mul2, align 8, !dbg !597
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !598
  %pow2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %61, i32 0, i32 17, !dbg !599
  store ptr @ec_pow2, ptr %pow2, align 8, !dbg !600
  store i32 0, ptr %i, align 4, !dbg !601
  br label %for.cond65, !dbg !602

for.cond65:                                       ; preds = %for.inc142, %if.end64
  %62 = load i32, ptr %i, align 4, !dbg !603
  %idxprom66 = sext i32 %62 to i64, !dbg !604
  %arrayidx67 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom66, !dbg !604
  %p68 = getelementptr inbounds %struct.field_table, ptr %arrayidx67, i32 0, i32 0, !dbg !605
  %63 = load ptr, ptr %p68, align 16, !dbg !605
  %tobool69 = icmp ne ptr %63, null, !dbg !606
  br i1 %tobool69, label %for.body70, label %for.end144, !dbg !606

for.body70:                                       ; preds = %for.cond65
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_p) #15, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %f_p, metadata !146, metadata !DIExpression()), !dbg !608
  %64 = load i32, ptr %i, align 4, !dbg !609
  %idxprom71 = sext i32 %64 to i64, !dbg !610
  %arrayidx72 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom71, !dbg !610
  %p73 = getelementptr inbounds %struct.field_table, ptr %arrayidx72, i32 0, i32 0, !dbg !611
  %65 = load ptr, ptr %p73, align 16, !dbg !611
  %call74 = call ptr @mpi_scanval(ptr noundef %65) #17, !dbg !612
  store ptr %call74, ptr %f_p, align 8, !dbg !613
  %66 = load ptr, ptr %f_p, align 8, !dbg !614
  %tobool75 = icmp ne ptr %66, null, !dbg !614
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !616

if.then76:                                        ; preds = %for.body70
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup139, !dbg !617

if.end77:                                         ; preds = %for.body70
  %67 = load ptr, ptr %p.addr, align 8, !dbg !618
  %68 = load ptr, ptr %f_p, align 8, !dbg !620
  %call78 = call i32 @mpi_cmp(ptr noundef %67, ptr noundef %68) #17, !dbg !621
  %tobool79 = icmp ne i32 %call78, 0, !dbg !621
  br i1 %tobool79, label %if.end138, label %if.then80, !dbg !622

if.then80:                                        ; preds = %if.end77
  %69 = load i32, ptr %i, align 4, !dbg !623
  %idxprom81 = sext i32 %69 to i64, !dbg !625
  %arrayidx82 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom81, !dbg !625
  %addm83 = getelementptr inbounds %struct.field_table, ptr %arrayidx82, i32 0, i32 1, !dbg !626
  %70 = load ptr, ptr %addm83, align 8, !dbg !626
  %71 = load ptr, ptr %ctx.addr, align 8, !dbg !627
  %addm84 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %71, i32 0, i32 14, !dbg !628
  store ptr %70, ptr %addm84, align 8, !dbg !629
  %72 = load i32, ptr %i, align 4, !dbg !630
  %idxprom85 = sext i32 %72 to i64, !dbg !631
  %arrayidx86 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom85, !dbg !631
  %subm87 = getelementptr inbounds %struct.field_table, ptr %arrayidx86, i32 0, i32 2, !dbg !632
  %73 = load ptr, ptr %subm87, align 16, !dbg !632
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !633
  %subm88 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %74, i32 0, i32 15, !dbg !634
  store ptr %73, ptr %subm88, align 8, !dbg !635
  %75 = load i32, ptr %i, align 4, !dbg !636
  %idxprom89 = sext i32 %75 to i64, !dbg !637
  %arrayidx90 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom89, !dbg !637
  %mulm91 = getelementptr inbounds %struct.field_table, ptr %arrayidx90, i32 0, i32 3, !dbg !638
  %76 = load ptr, ptr %mulm91, align 8, !dbg !638
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !639
  %mulm92 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %77, i32 0, i32 16, !dbg !640
  store ptr %76, ptr %mulm92, align 8, !dbg !641
  %78 = load i32, ptr %i, align 4, !dbg !642
  %idxprom93 = sext i32 %78 to i64, !dbg !643
  %arrayidx94 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom93, !dbg !643
  %mul295 = getelementptr inbounds %struct.field_table, ptr %arrayidx94, i32 0, i32 4, !dbg !644
  %79 = load ptr, ptr %mul295, align 16, !dbg !644
  %80 = load ptr, ptr %ctx.addr, align 8, !dbg !645
  %mul296 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %80, i32 0, i32 18, !dbg !646
  store ptr %79, ptr %mul296, align 8, !dbg !647
  %81 = load i32, ptr %i, align 4, !dbg !648
  %idxprom97 = sext i32 %81 to i64, !dbg !649
  %arrayidx98 = getelementptr [3 x %struct.field_table], ptr @field_table, i64 0, i64 %idxprom97, !dbg !649
  %pow299 = getelementptr inbounds %struct.field_table, ptr %arrayidx98, i32 0, i32 5, !dbg !650
  %82 = load ptr, ptr %pow299, align 8, !dbg !650
  %83 = load ptr, ptr %ctx.addr, align 8, !dbg !651
  %pow2100 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %83, i32 0, i32 17, !dbg !652
  store ptr %82, ptr %pow2100, align 8, !dbg !653
  %84 = load ptr, ptr %f_p, align 8, !dbg !654
  call void @mpi_free(ptr noundef %84) #17, !dbg !655
  %85 = load ptr, ptr %ctx.addr, align 8, !dbg !656
  %a101 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %85, i32 0, i32 5, !dbg !657
  %86 = load ptr, ptr %a101, align 8, !dbg !657
  %87 = load ptr, ptr %ctx.addr, align 8, !dbg !658
  %p102 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %87, i32 0, i32 4, !dbg !659
  %88 = load ptr, ptr %p102, align 8, !dbg !659
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %88, i32 0, i32 1, !dbg !660
  %89 = load i32, ptr %nlimbs, align 4, !dbg !660
  %call103 = call i32 @mpi_resize(ptr noundef %86, i32 noundef %89) #17, !dbg !661
  %90 = load ptr, ptr %ctx.addr, align 8, !dbg !662
  %p104 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %90, i32 0, i32 4, !dbg !663
  %91 = load ptr, ptr %p104, align 8, !dbg !663
  %nlimbs105 = getelementptr inbounds %struct.gcry_mpi, ptr %91, i32 0, i32 1, !dbg !664
  %92 = load i32, ptr %nlimbs105, align 4, !dbg !664
  %93 = load ptr, ptr %ctx.addr, align 8, !dbg !665
  %a106 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %93, i32 0, i32 5, !dbg !666
  %94 = load ptr, ptr %a106, align 8, !dbg !666
  %nlimbs107 = getelementptr inbounds %struct.gcry_mpi, ptr %94, i32 0, i32 1, !dbg !667
  store i32 %92, ptr %nlimbs107, align 4, !dbg !668
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !669
  %b108 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %95, i32 0, i32 6, !dbg !670
  %96 = load ptr, ptr %b108, align 8, !dbg !670
  %97 = load ptr, ptr %ctx.addr, align 8, !dbg !671
  %p109 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %97, i32 0, i32 4, !dbg !672
  %98 = load ptr, ptr %p109, align 8, !dbg !672
  %nlimbs110 = getelementptr inbounds %struct.gcry_mpi, ptr %98, i32 0, i32 1, !dbg !673
  %99 = load i32, ptr %nlimbs110, align 4, !dbg !673
  %call111 = call i32 @mpi_resize(ptr noundef %96, i32 noundef %99) #17, !dbg !674
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !675
  %p112 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %100, i32 0, i32 4, !dbg !676
  %101 = load ptr, ptr %p112, align 8, !dbg !676
  %nlimbs113 = getelementptr inbounds %struct.gcry_mpi, ptr %101, i32 0, i32 1, !dbg !677
  %102 = load i32, ptr %nlimbs113, align 4, !dbg !677
  %103 = load ptr, ptr %ctx.addr, align 8, !dbg !678
  %b114 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %103, i32 0, i32 6, !dbg !679
  %104 = load ptr, ptr %b114, align 8, !dbg !679
  %nlimbs115 = getelementptr inbounds %struct.gcry_mpi, ptr %104, i32 0, i32 1, !dbg !680
  store i32 %102, ptr %nlimbs115, align 4, !dbg !681
  store i32 0, ptr %i, align 4, !dbg !682
  br label %for.cond116, !dbg !684

for.cond116:                                      ; preds = %for.inc135, %if.then80
  %105 = load i32, ptr %i, align 4, !dbg !685
  %conv117 = sext i32 %105 to i64, !dbg !685
  %cmp118 = icmp ult i64 %conv117, 11, !dbg !687
  br i1 %cmp118, label %land.rhs120, label %land.end126, !dbg !688

land.rhs120:                                      ; preds = %for.cond116
  %106 = load ptr, ptr %ctx.addr, align 8, !dbg !689
  %t121 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %106, i32 0, i32 13, !dbg !690
  %scratch122 = getelementptr inbounds %struct.anon.0, ptr %t121, i32 0, i32 4, !dbg !691
  %107 = load i32, ptr %i, align 4, !dbg !692
  %idxprom123 = sext i32 %107 to i64, !dbg !689
  %arrayidx124 = getelementptr [11 x ptr], ptr %scratch122, i64 0, i64 %idxprom123, !dbg !689
  %108 = load ptr, ptr %arrayidx124, align 8, !dbg !689
  %tobool125 = icmp ne ptr %108, null, !dbg !688
  br label %land.end126

land.end126:                                      ; preds = %land.rhs120, %for.cond116
  %109 = phi i1 [ false, %for.cond116 ], [ %tobool125, %land.rhs120 ], !dbg !693
  br i1 %109, label %for.body127, label %for.end137, !dbg !694

for.body127:                                      ; preds = %land.end126
  %110 = load ptr, ptr %ctx.addr, align 8, !dbg !695
  %p128 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %110, i32 0, i32 4, !dbg !696
  %111 = load ptr, ptr %p128, align 8, !dbg !696
  %nlimbs129 = getelementptr inbounds %struct.gcry_mpi, ptr %111, i32 0, i32 1, !dbg !697
  %112 = load i32, ptr %nlimbs129, align 4, !dbg !697
  %113 = load ptr, ptr %ctx.addr, align 8, !dbg !698
  %t130 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %113, i32 0, i32 13, !dbg !699
  %scratch131 = getelementptr inbounds %struct.anon.0, ptr %t130, i32 0, i32 4, !dbg !700
  %114 = load i32, ptr %i, align 4, !dbg !701
  %idxprom132 = sext i32 %114 to i64, !dbg !698
  %arrayidx133 = getelementptr [11 x ptr], ptr %scratch131, i64 0, i64 %idxprom132, !dbg !698
  %115 = load ptr, ptr %arrayidx133, align 8, !dbg !698
  %nlimbs134 = getelementptr inbounds %struct.gcry_mpi, ptr %115, i32 0, i32 1, !dbg !702
  store i32 %112, ptr %nlimbs134, align 4, !dbg !703
  br label %for.inc135, !dbg !698

for.inc135:                                       ; preds = %for.body127
  %116 = load i32, ptr %i, align 4, !dbg !704
  %inc136 = add i32 %116, 1, !dbg !704
  store i32 %inc136, ptr %i, align 4, !dbg !704
  br label %for.cond116, !dbg !705, !llvm.loop !706

for.end137:                                       ; preds = %land.end126
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup139, !dbg !708

if.end138:                                        ; preds = %if.end77
  %117 = load ptr, ptr %f_p, align 8, !dbg !709
  call void @mpi_free(ptr noundef %117) #17, !dbg !710
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !711
  br label %cleanup139, !dbg !711

cleanup139:                                       ; preds = %if.end138, %for.end137, %if.then76
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_p) #15, !dbg !711
  %cleanup.dest140 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest140, label %unreachable [
    i32 0, label %cleanup.cont141
    i32 11, label %for.end144
  ]

cleanup.cont141:                                  ; preds = %cleanup139
  br label %for.inc142, !dbg !712

for.inc142:                                       ; preds = %cleanup.cont141
  %118 = load i32, ptr %i, align 4, !dbg !713
  %inc143 = add i32 %118, 1, !dbg !713
  store i32 %inc143, ptr %i, align 4, !dbg !713
  br label %for.cond65, !dbg !714, !llvm.loop !715

for.end144:                                       ; preds = %cleanup139, %for.cond65
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !717
  ret void, !dbg !717

unreachable:                                      ; preds = %cleanup139, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mpi_ec_coefficient_normalize(ptr noundef %a, ptr noundef %p) #0 align 16 !dbg !718 {
entry:
  %a.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !722, metadata !DIExpression()), !dbg !724
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !723, metadata !DIExpression()), !dbg !725
  %0 = load ptr, ptr %a.addr, align 8, !dbg !726
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3, !dbg !728
  %1 = load i32, ptr %sign, align 4, !dbg !728
  %tobool = icmp ne i32 %1, 0, !dbg !726
  br i1 %tobool, label %if.then, label %if.end, !dbg !729

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !dbg !730
  %3 = load ptr, ptr %p.addr, align 8, !dbg !732
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !733
  %4 = load i32, ptr %nlimbs, align 4, !dbg !733
  %call = call i32 @mpi_resize(ptr noundef %2, i32 noundef %4) #17, !dbg !734
  %5 = load ptr, ptr %a.addr, align 8, !dbg !735
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 5, !dbg !736
  %6 = load ptr, ptr %d, align 8, !dbg !736
  %7 = load ptr, ptr %p.addr, align 8, !dbg !737
  %d1 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5, !dbg !738
  %8 = load ptr, ptr %d1, align 8, !dbg !738
  %9 = load ptr, ptr %a.addr, align 8, !dbg !739
  %d2 = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 5, !dbg !740
  %10 = load ptr, ptr %d2, align 8, !dbg !740
  %11 = load ptr, ptr %p.addr, align 8, !dbg !741
  %nlimbs3 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 1, !dbg !742
  %12 = load i32, ptr %nlimbs3, align 4, !dbg !742
  %call4 = call i64 @mpihelp_sub_n(ptr noundef %6, ptr noundef %8, ptr noundef %10, i32 noundef %12) #17, !dbg !743
  %13 = load ptr, ptr %p.addr, align 8, !dbg !744
  %nlimbs5 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 1, !dbg !745
  %14 = load i32, ptr %nlimbs5, align 4, !dbg !745
  %15 = load ptr, ptr %a.addr, align 8, !dbg !746
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 1, !dbg !747
  store i32 %14, ptr %nlimbs6, align 4, !dbg !748
  %16 = load ptr, ptr %a.addr, align 8, !dbg !749
  %sign7 = getelementptr inbounds %struct.gcry_mpi, ptr %16, i32 0, i32 3, !dbg !750
  store i32 0, ptr %sign7, align 4, !dbg !751
  br label %if.end, !dbg !752

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !753
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !754 dso_local i32 @mpi_get_nbits(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !757 dso_local ptr @mpi_copy(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !760 dso_local ptr @mpi_barrett_init(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mpi_ec_get_reset(ptr noundef %ec) #0 align 16 !dbg !763 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !769
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, !dbg !770
  %valid = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 0, !dbg !771
  %bf.load = load i8, ptr %valid, align 8, !dbg !772
  %bf.clear = and i8 %bf.load, -2, !dbg !772
  %bf.set = or i8 %bf.clear, 0, !dbg !772
  store i8 %bf.set, ptr %valid, align 8, !dbg !772
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !773
  %t1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 13, !dbg !774
  %valid2 = getelementptr inbounds %struct.anon.0, ptr %t1, i32 0, i32 0, !dbg !775
  %bf.load3 = load i8, ptr %valid2, align 8, !dbg !776
  %bf.clear4 = and i8 %bf.load3, -3, !dbg !776
  %bf.set5 = or i8 %bf.clear4, 0, !dbg !776
  store i8 %bf.set5, ptr %valid2, align 8, !dbg !776
  ret void, !dbg !777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !778 dso_local ptr @mpi_scanval(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !781 dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !784 dso_local ptr @mpi_alloc_like(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_addm(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !785 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !787, metadata !DIExpression()), !dbg !791
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !788, metadata !DIExpression()), !dbg !792
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !789, metadata !DIExpression()), !dbg !793
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !790, metadata !DIExpression()), !dbg !794
  %0 = load ptr, ptr %w.addr, align 8, !dbg !795
  %1 = load ptr, ptr %u.addr, align 8, !dbg !796
  %2 = load ptr, ptr %v.addr, align 8, !dbg !797
  call void @mpi_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !798
  %3 = load ptr, ptr %w.addr, align 8, !dbg !799
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !800
  call void @ec_mod(ptr noundef %3, ptr noundef %4) #17, !dbg !801
  ret void, !dbg !802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_subm(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ec) #0 align 16 !dbg !803 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ec.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !805, metadata !DIExpression()), !dbg !809
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !806, metadata !DIExpression()), !dbg !810
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !807, metadata !DIExpression()), !dbg !811
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !808, metadata !DIExpression()), !dbg !812
  %0 = load ptr, ptr %w.addr, align 8, !dbg !813
  %1 = load ptr, ptr %u.addr, align 8, !dbg !814
  %2 = load ptr, ptr %v.addr, align 8, !dbg !815
  call void @mpi_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !816
  br label %while.cond, !dbg !817

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %w.addr, align 8, !dbg !818
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 3, !dbg !819
  %4 = load i32, ptr %sign, align 4, !dbg !819
  %tobool = icmp ne i32 %4, 0, !dbg !817
  br i1 %tobool, label %while.body, label %while.end, !dbg !817

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %w.addr, align 8, !dbg !820
  %6 = load ptr, ptr %w.addr, align 8, !dbg !821
  %7 = load ptr, ptr %ec.addr, align 8, !dbg !822
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %7, i32 0, i32 4, !dbg !823
  %8 = load ptr, ptr %p, align 8, !dbg !823
  call void @mpi_add(ptr noundef %5, ptr noundef %6, ptr noundef %8) #17, !dbg !824
  br label %while.cond, !dbg !817, !llvm.loop !825

while.end:                                        ; preds = %while.cond
  ret void, !dbg !827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mulm(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !828 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !830, metadata !DIExpression()), !dbg !834
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !831, metadata !DIExpression()), !dbg !835
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !832, metadata !DIExpression()), !dbg !836
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !833, metadata !DIExpression()), !dbg !837
  %0 = load ptr, ptr %w.addr, align 8, !dbg !838
  %1 = load ptr, ptr %u.addr, align 8, !dbg !839
  %2 = load ptr, ptr %v.addr, align 8, !dbg !840
  call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !841
  %3 = load ptr, ptr %w.addr, align 8, !dbg !842
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !843
  call void @ec_mod(ptr noundef %3, ptr noundef %4) #17, !dbg !844
  ret void, !dbg !845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mul2(ptr noundef %w, ptr noundef %u, ptr noundef %ctx) #0 align 16 !dbg !846 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !848, metadata !DIExpression()), !dbg !851
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !849, metadata !DIExpression()), !dbg !852
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !850, metadata !DIExpression()), !dbg !853
  %0 = load ptr, ptr %w.addr, align 8, !dbg !854
  %1 = load ptr, ptr %u.addr, align 8, !dbg !855
  call void @mpi_lshift(ptr noundef %0, ptr noundef %1, i32 noundef 1) #17, !dbg !856
  %2 = load ptr, ptr %w.addr, align 8, !dbg !857
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !858
  call void @ec_mod(ptr noundef %2, ptr noundef %3) #17, !dbg !859
  ret void, !dbg !860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_pow2(ptr noundef %w, ptr noundef %b, ptr noundef %ctx) #0 align 16 !dbg !861 {
entry:
  %w.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !863, metadata !DIExpression()), !dbg !866
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !864, metadata !DIExpression()), !dbg !867
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !865, metadata !DIExpression()), !dbg !868
  %0 = load ptr, ptr %w.addr, align 8, !dbg !869
  %1 = load ptr, ptr %b.addr, align 8, !dbg !870
  %2 = load ptr, ptr %b.addr, align 8, !dbg !871
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !872
  call void @ec_mulm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17, !dbg !873
  ret void, !dbg !874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !875 dso_local i32 @mpi_resize(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_ec_deinit(ptr noundef %ctx) #0 align 16 !dbg !878 {
entry:
  %ctx.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !880, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %i, metadata !881, metadata !DIExpression()), !dbg !884
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !885
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, !dbg !886
  %p_barrett = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 3, !dbg !887
  %1 = load ptr, ptr %p_barrett, align 8, !dbg !887
  call void @mpi_barrett_free(ptr noundef %1) #17, !dbg !888
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !889
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4, !dbg !890
  %3 = load ptr, ptr %p, align 8, !dbg !890
  call void @mpi_free(ptr noundef %3) #17, !dbg !891
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !892
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %4, i32 0, i32 5, !dbg !893
  %5 = load ptr, ptr %a, align 8, !dbg !893
  call void @mpi_free(ptr noundef %5) #17, !dbg !894
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !895
  %b = getelementptr inbounds %struct.mpi_ec_ctx, ptr %6, i32 0, i32 6, !dbg !896
  %7 = load ptr, ptr %b, align 8, !dbg !896
  call void @mpi_free(ptr noundef %7) #17, !dbg !897
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !898
  %G = getelementptr inbounds %struct.mpi_ec_ctx, ptr %8, i32 0, i32 7, !dbg !899
  %9 = load ptr, ptr %G, align 8, !dbg !899
  call void @mpi_point_release(ptr noundef %9) #17, !dbg !900
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !901
  %n = getelementptr inbounds %struct.mpi_ec_ctx, ptr %10, i32 0, i32 8, !dbg !902
  %11 = load ptr, ptr %n, align 8, !dbg !902
  call void @mpi_free(ptr noundef %11) #17, !dbg !903
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !904
  %Q = getelementptr inbounds %struct.mpi_ec_ctx, ptr %12, i32 0, i32 10, !dbg !905
  %13 = load ptr, ptr %Q, align 8, !dbg !905
  call void @mpi_point_release(ptr noundef %13) #17, !dbg !906
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !907
  %d = getelementptr inbounds %struct.mpi_ec_ctx, ptr %14, i32 0, i32 11, !dbg !908
  %15 = load ptr, ptr %d, align 8, !dbg !908
  call void @mpi_free(ptr noundef %15) #17, !dbg !909
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !910
  %t1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %16, i32 0, i32 13, !dbg !911
  %two_inv_p = getelementptr inbounds %struct.anon.0, ptr %t1, i32 0, i32 2, !dbg !912
  %17 = load ptr, ptr %two_inv_p, align 8, !dbg !912
  call void @mpi_free(ptr noundef %17) #17, !dbg !913
  store i32 0, ptr %i, align 4, !dbg !914
  br label %for.cond, !dbg !916

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %i, align 4, !dbg !917
  %conv = sext i32 %18 to i64, !dbg !917
  %cmp = icmp ult i64 %conv, 11, !dbg !919
  br i1 %cmp, label %for.body, label %for.end, !dbg !920

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %ctx.addr, align 8, !dbg !921
  %t3 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %19, i32 0, i32 13, !dbg !922
  %scratch = getelementptr inbounds %struct.anon.0, ptr %t3, i32 0, i32 4, !dbg !923
  %20 = load i32, ptr %i, align 4, !dbg !924
  %idxprom = sext i32 %20 to i64, !dbg !921
  %arrayidx = getelementptr [11 x ptr], ptr %scratch, i64 0, i64 %idxprom, !dbg !921
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !921
  call void @mpi_free(ptr noundef %21) #17, !dbg !925
  br label %for.inc, !dbg !925

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !dbg !926
  %inc = add i32 %22, 1, !dbg !926
  store i32 %inc, ptr %i, align 4, !dbg !926
  br label %for.cond, !dbg !927, !llvm.loop !928

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !930
  ret void, !dbg !930
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !931 dso_local void @mpi_barrett_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_ec_get_affine(ptr noundef %x, ptr noundef %y, ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !934 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %z2 = alloca ptr, align 8
  %z3 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %z25 = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !938, metadata !DIExpression()), !dbg !949
  store ptr %y, ptr %y.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !939, metadata !DIExpression()), !dbg !950
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !940, metadata !DIExpression()), !dbg !951
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !941, metadata !DIExpression()), !dbg !952
  %0 = load ptr, ptr %point.addr, align 8, !dbg !953
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2, !dbg !955
  %1 = load ptr, ptr %z, align 8, !dbg !955
  %call = call i32 @mpi_cmp_ui(ptr noundef %1, i64 noundef 0) #17, !dbg !956
  %tobool = icmp ne i32 %call, 0, !dbg !956
  br i1 %tobool, label %if.end, label %if.then, !dbg !957

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !958
  br label %return, !dbg !958

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !959
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 0, !dbg !960
  %3 = load i32, ptr %model, align 8, !dbg !960
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb24
  ], !dbg !961

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %z1) #15, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %z1, metadata !942, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 8, ptr %z2) #15, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %z2, metadata !945, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 8, ptr %z3) #15, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %z3, metadata !946, metadata !DIExpression()), !dbg !965
  %call1 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !966
  store ptr %call1, ptr %z1, align 8, !dbg !967
  %call2 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !968
  store ptr %call2, ptr %z2, align 8, !dbg !969
  %4 = load ptr, ptr %z1, align 8, !dbg !970
  %5 = load ptr, ptr %point.addr, align 8, !dbg !971
  %z4 = getelementptr inbounds %struct.gcry_mpi_point, ptr %5, i32 0, i32 2, !dbg !972
  %6 = load ptr, ptr %z4, align 8, !dbg !972
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !973
  call void @ec_invm(ptr noundef %4, ptr noundef %6, ptr noundef %7) #17, !dbg !974
  %8 = load ptr, ptr %z2, align 8, !dbg !975
  %9 = load ptr, ptr %z1, align 8, !dbg !976
  %10 = load ptr, ptr %z1, align 8, !dbg !977
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !978
  call void @ec_mulm(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #17, !dbg !979
  %12 = load ptr, ptr %x.addr, align 8, !dbg !980
  %tobool5 = icmp ne ptr %12, null, !dbg !980
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !982

if.then6:                                         ; preds = %sw.bb
  %13 = load ptr, ptr %x.addr, align 8, !dbg !983
  %14 = load ptr, ptr %point.addr, align 8, !dbg !984
  %x7 = getelementptr inbounds %struct.gcry_mpi_point, ptr %14, i32 0, i32 0, !dbg !985
  %15 = load ptr, ptr %x7, align 8, !dbg !985
  %16 = load ptr, ptr %z2, align 8, !dbg !986
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !987
  call void @ec_mulm(ptr noundef %13, ptr noundef %15, ptr noundef %16, ptr noundef %17) #17, !dbg !988
  br label %if.end8, !dbg !988

if.end8:                                          ; preds = %if.then6, %sw.bb
  %18 = load ptr, ptr %y.addr, align 8, !dbg !989
  %tobool9 = icmp ne ptr %18, null, !dbg !989
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !991

if.then10:                                        ; preds = %if.end8
  %call11 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !992
  store ptr %call11, ptr %z3, align 8, !dbg !994
  %19 = load ptr, ptr %z3, align 8, !dbg !995
  %20 = load ptr, ptr %z2, align 8, !dbg !996
  %21 = load ptr, ptr %z1, align 8, !dbg !997
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !998
  call void @ec_mulm(ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22) #17, !dbg !999
  %23 = load ptr, ptr %y.addr, align 8, !dbg !1000
  %24 = load ptr, ptr %point.addr, align 8, !dbg !1001
  %y12 = getelementptr inbounds %struct.gcry_mpi_point, ptr %24, i32 0, i32 1, !dbg !1002
  %25 = load ptr, ptr %y12, align 8, !dbg !1002
  %26 = load ptr, ptr %z3, align 8, !dbg !1003
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !1004
  call void @ec_mulm(ptr noundef %23, ptr noundef %25, ptr noundef %26, ptr noundef %27) #17, !dbg !1005
  %28 = load ptr, ptr %z3, align 8, !dbg !1006
  call void @mpi_free(ptr noundef %28) #17, !dbg !1007
  br label %if.end13, !dbg !1008

if.end13:                                         ; preds = %if.then10, %if.end8
  %29 = load ptr, ptr %z2, align 8, !dbg !1009
  call void @mpi_free(ptr noundef %29) #17, !dbg !1010
  %30 = load ptr, ptr %z1, align 8, !dbg !1011
  call void @mpi_free(ptr noundef %30) #17, !dbg !1012
  call void @llvm.lifetime.end.p0(i64 8, ptr %z3) #15, !dbg !1013
  call void @llvm.lifetime.end.p0(i64 8, ptr %z2) #15, !dbg !1013
  call void @llvm.lifetime.end.p0(i64 8, ptr %z1) #15, !dbg !1013
  store i32 0, ptr %retval, align 4, !dbg !1014
  br label %return, !dbg !1014

sw.bb14:                                          ; preds = %if.end
  %31 = load ptr, ptr %x.addr, align 8, !dbg !1015
  %tobool15 = icmp ne ptr %31, null, !dbg !1015
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !1018

if.then16:                                        ; preds = %sw.bb14
  %32 = load ptr, ptr %x.addr, align 8, !dbg !1019
  %33 = load ptr, ptr %point.addr, align 8, !dbg !1020
  %x17 = getelementptr inbounds %struct.gcry_mpi_point, ptr %33, i32 0, i32 0, !dbg !1021
  %34 = load ptr, ptr %x17, align 8, !dbg !1021
  %call18 = call ptr @mpi_set(ptr noundef %32, ptr noundef %34) #17, !dbg !1022
  br label %if.end19, !dbg !1022

if.end19:                                         ; preds = %if.then16, %sw.bb14
  %35 = load ptr, ptr %y.addr, align 8, !dbg !1023
  %tobool20 = icmp ne ptr %35, null, !dbg !1023
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !1025

if.then21:                                        ; preds = %if.end19
  br label %do.body, !dbg !1026

do.body:                                          ; preds = %if.then21
  br label %do.end, !dbg !1029

do.end:                                           ; preds = %do.body
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2) #19, !dbg !1026
  store i32 %call22, ptr %tmp, align 4, !dbg !1029
  %36 = load i32, ptr %tmp, align 4, !dbg !1026
  store i32 -1, ptr %retval, align 4, !dbg !1031
  br label %return, !dbg !1031

if.end23:                                         ; preds = %if.end19
  store i32 0, ptr %retval, align 4, !dbg !1032
  br label %return, !dbg !1032

sw.bb24:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %z25) #15, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %z25, metadata !947, metadata !DIExpression()), !dbg !1034
  %call26 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !1035
  store ptr %call26, ptr %z25, align 8, !dbg !1036
  %37 = load ptr, ptr %z25, align 8, !dbg !1037
  %38 = load ptr, ptr %point.addr, align 8, !dbg !1038
  %z27 = getelementptr inbounds %struct.gcry_mpi_point, ptr %38, i32 0, i32 2, !dbg !1039
  %39 = load ptr, ptr %z27, align 8, !dbg !1039
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !1040
  call void @ec_invm(ptr noundef %37, ptr noundef %39, ptr noundef %40) #17, !dbg !1041
  %41 = load ptr, ptr %z25, align 8, !dbg !1042
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !1043
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %42, i32 0, i32 4, !dbg !1044
  %43 = load ptr, ptr %p, align 8, !dbg !1044
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %43, i32 0, i32 1, !dbg !1045
  %44 = load i32, ptr %nlimbs, align 4, !dbg !1045
  %call28 = call i32 @mpi_resize(ptr noundef %41, i32 noundef %44) #17, !dbg !1046
  %45 = load ptr, ptr %ctx.addr, align 8, !dbg !1047
  %p29 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %45, i32 0, i32 4, !dbg !1048
  %46 = load ptr, ptr %p29, align 8, !dbg !1048
  %nlimbs30 = getelementptr inbounds %struct.gcry_mpi, ptr %46, i32 0, i32 1, !dbg !1049
  %47 = load i32, ptr %nlimbs30, align 4, !dbg !1049
  %48 = load ptr, ptr %z25, align 8, !dbg !1050
  %nlimbs31 = getelementptr inbounds %struct.gcry_mpi, ptr %48, i32 0, i32 1, !dbg !1051
  store i32 %47, ptr %nlimbs31, align 4, !dbg !1052
  %49 = load ptr, ptr %x.addr, align 8, !dbg !1053
  %tobool32 = icmp ne ptr %49, null, !dbg !1053
  br i1 %tobool32, label %if.then33, label %if.end41, !dbg !1055

if.then33:                                        ; preds = %sw.bb24
  %50 = load ptr, ptr %x.addr, align 8, !dbg !1056
  %51 = load ptr, ptr %ctx.addr, align 8, !dbg !1058
  %p34 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %51, i32 0, i32 4, !dbg !1059
  %52 = load ptr, ptr %p34, align 8, !dbg !1059
  %nlimbs35 = getelementptr inbounds %struct.gcry_mpi, ptr %52, i32 0, i32 1, !dbg !1060
  %53 = load i32, ptr %nlimbs35, align 4, !dbg !1060
  %call36 = call i32 @mpi_resize(ptr noundef %50, i32 noundef %53) #17, !dbg !1061
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !1062
  %p37 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %54, i32 0, i32 4, !dbg !1063
  %55 = load ptr, ptr %p37, align 8, !dbg !1063
  %nlimbs38 = getelementptr inbounds %struct.gcry_mpi, ptr %55, i32 0, i32 1, !dbg !1064
  %56 = load i32, ptr %nlimbs38, align 4, !dbg !1064
  %57 = load ptr, ptr %x.addr, align 8, !dbg !1065
  %nlimbs39 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 1, !dbg !1066
  store i32 %56, ptr %nlimbs39, align 4, !dbg !1067
  %58 = load ptr, ptr %ctx.addr, align 8, !dbg !1068
  %mulm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %58, i32 0, i32 16, !dbg !1069
  %59 = load ptr, ptr %mulm, align 8, !dbg !1069
  %60 = load ptr, ptr %x.addr, align 8, !dbg !1070
  %61 = load ptr, ptr %point.addr, align 8, !dbg !1071
  %x40 = getelementptr inbounds %struct.gcry_mpi_point, ptr %61, i32 0, i32 0, !dbg !1072
  %62 = load ptr, ptr %x40, align 8, !dbg !1072
  %63 = load ptr, ptr %z25, align 8, !dbg !1073
  %64 = load ptr, ptr %ctx.addr, align 8, !dbg !1074
  call void %59(ptr noundef %60, ptr noundef %62, ptr noundef %63, ptr noundef %64) #17, !dbg !1068
  br label %if.end41, !dbg !1075

if.end41:                                         ; preds = %if.then33, %sw.bb24
  %65 = load ptr, ptr %y.addr, align 8, !dbg !1076
  %tobool42 = icmp ne ptr %65, null, !dbg !1076
  br i1 %tobool42, label %if.then43, label %if.end52, !dbg !1078

if.then43:                                        ; preds = %if.end41
  %66 = load ptr, ptr %y.addr, align 8, !dbg !1079
  %67 = load ptr, ptr %ctx.addr, align 8, !dbg !1081
  %p44 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %67, i32 0, i32 4, !dbg !1082
  %68 = load ptr, ptr %p44, align 8, !dbg !1082
  %nlimbs45 = getelementptr inbounds %struct.gcry_mpi, ptr %68, i32 0, i32 1, !dbg !1083
  %69 = load i32, ptr %nlimbs45, align 4, !dbg !1083
  %call46 = call i32 @mpi_resize(ptr noundef %66, i32 noundef %69) #17, !dbg !1084
  %70 = load ptr, ptr %ctx.addr, align 8, !dbg !1085
  %p47 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %70, i32 0, i32 4, !dbg !1086
  %71 = load ptr, ptr %p47, align 8, !dbg !1086
  %nlimbs48 = getelementptr inbounds %struct.gcry_mpi, ptr %71, i32 0, i32 1, !dbg !1087
  %72 = load i32, ptr %nlimbs48, align 4, !dbg !1087
  %73 = load ptr, ptr %y.addr, align 8, !dbg !1088
  %nlimbs49 = getelementptr inbounds %struct.gcry_mpi, ptr %73, i32 0, i32 1, !dbg !1089
  store i32 %72, ptr %nlimbs49, align 4, !dbg !1090
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !1091
  %mulm50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %74, i32 0, i32 16, !dbg !1092
  %75 = load ptr, ptr %mulm50, align 8, !dbg !1092
  %76 = load ptr, ptr %y.addr, align 8, !dbg !1093
  %77 = load ptr, ptr %point.addr, align 8, !dbg !1094
  %y51 = getelementptr inbounds %struct.gcry_mpi_point, ptr %77, i32 0, i32 1, !dbg !1095
  %78 = load ptr, ptr %y51, align 8, !dbg !1095
  %79 = load ptr, ptr %z25, align 8, !dbg !1096
  %80 = load ptr, ptr %ctx.addr, align 8, !dbg !1097
  call void %75(ptr noundef %76, ptr noundef %78, ptr noundef %79, ptr noundef %80) #17, !dbg !1091
  br label %if.end52, !dbg !1098

if.end52:                                         ; preds = %if.then43, %if.end41
  %81 = load ptr, ptr %z25, align 8, !dbg !1099
  call void @mpi_free(ptr noundef %81) #17, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 8, ptr %z25) #15, !dbg !1101
  store i32 0, ptr %retval, align 4, !dbg !1102
  br label %return, !dbg !1102

sw.default:                                       ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1103
  br label %return, !dbg !1103

return:                                           ; preds = %sw.default, %if.end52, %if.end23, %do.end, %if.end13, %if.then
  %82 = load i32, ptr %retval, align 4, !dbg !1104
  ret i32 %82, !dbg !1104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1105 dso_local i32 @mpi_cmp_ui(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_invm(ptr noundef %x, ptr noundef %a, ptr noundef %ctx) #0 align 16 !dbg !1109 {
entry:
  %x.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1111, metadata !DIExpression()), !dbg !1114
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1112, metadata !DIExpression()), !dbg !1115
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1113, metadata !DIExpression()), !dbg !1116
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1117
  %1 = load ptr, ptr %a.addr, align 8, !dbg !1119
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !1120
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4, !dbg !1121
  %3 = load ptr, ptr %p, align 8, !dbg !1121
  %call = call i32 @mpi_invm(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !1122
  %tobool = icmp ne i32 %call, 0, !dbg !1122
  br i1 %tobool, label %if.end, label %if.then, !dbg !1123

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1124

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1126

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24) #19, !dbg !1124
  store i32 %call1, ptr %tmp, align 4, !dbg !1126
  %4 = load i32, ptr %tmp, align 4, !dbg !1124
  br label %if.end, !dbg !1128

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !1129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1130 dso_local ptr @mpi_set(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1133 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_ec_add_points(ptr noundef %result, ptr noundef %p1, ptr noundef %p2, ptr noundef %ctx) #0 align 16 !dbg !1137 {
entry:
  %result.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1141, metadata !DIExpression()), !dbg !1145
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !1142, metadata !DIExpression()), !dbg !1146
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !1143, metadata !DIExpression()), !dbg !1147
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1144, metadata !DIExpression()), !dbg !1148
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !1149
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 0, !dbg !1150
  %1 = load i32, ptr %model, align 8, !dbg !1150
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !1151

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %result.addr, align 8, !dbg !1152
  %3 = load ptr, ptr %p1.addr, align 8, !dbg !1154
  %4 = load ptr, ptr %p2.addr, align 8, !dbg !1155
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !1156
  call void @add_points_weierstrass(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #17, !dbg !1157
  br label %sw.epilog, !dbg !1158

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %result.addr, align 8, !dbg !1159
  %7 = load ptr, ptr %p1.addr, align 8, !dbg !1160
  %8 = load ptr, ptr %p2.addr, align 8, !dbg !1161
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !1162
  call void @add_points_montgomery(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #17, !dbg !1163
  br label %sw.epilog, !dbg !1164

sw.bb2:                                           ; preds = %entry
  %10 = load ptr, ptr %result.addr, align 8, !dbg !1165
  %11 = load ptr, ptr %p1.addr, align 8, !dbg !1166
  %12 = load ptr, ptr %p2.addr, align 8, !dbg !1167
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !1168
  call void @add_points_edwards(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #17, !dbg !1169
  br label %sw.epilog, !dbg !1170

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !1171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_points_weierstrass(ptr noundef %result, ptr noundef %p1, ptr noundef %p2, ptr noundef %ctx) #0 align 16 !dbg !1172 {
entry:
  %result.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %z1_is_one = alloca i32, align 4
  %z2_is_one = alloca i32, align 4
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1174, metadata !DIExpression()), !dbg !1184
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !1175, metadata !DIExpression()), !dbg !1185
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !1176, metadata !DIExpression()), !dbg !1186
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1177, metadata !DIExpression()), !dbg !1187
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !1188
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 0, !dbg !1188
  %1 = load ptr, ptr %x, align 8, !dbg !1188
  %2 = load ptr, ptr %p2.addr, align 8, !dbg !1189
  %x1 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 0, !dbg !1189
  %3 = load ptr, ptr %x1, align 8, !dbg !1189
  %call = call i32 @mpi_cmp(ptr noundef %1, ptr noundef %3) #17, !dbg !1190
  %tobool = icmp ne i32 %call, 0, !dbg !1190
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1191

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %p1.addr, align 8, !dbg !1192
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %4, i32 0, i32 1, !dbg !1192
  %5 = load ptr, ptr %y, align 8, !dbg !1192
  %6 = load ptr, ptr %p2.addr, align 8, !dbg !1193
  %y2 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 1, !dbg !1193
  %7 = load ptr, ptr %y2, align 8, !dbg !1193
  %call3 = call i32 @mpi_cmp(ptr noundef %5, ptr noundef %7) #17, !dbg !1194
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1194
  br i1 %tobool4, label %if.else, label %land.lhs.true5, !dbg !1195

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %p1.addr, align 8, !dbg !1196
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2, !dbg !1196
  %9 = load ptr, ptr %z, align 8, !dbg !1196
  %10 = load ptr, ptr %p2.addr, align 8, !dbg !1197
  %z6 = getelementptr inbounds %struct.gcry_mpi_point, ptr %10, i32 0, i32 2, !dbg !1197
  %11 = load ptr, ptr %z6, align 8, !dbg !1197
  %call7 = call i32 @mpi_cmp(ptr noundef %9, ptr noundef %11) #17, !dbg !1198
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1198
  br i1 %tobool8, label %if.else, label %if.then, !dbg !1199

if.then:                                          ; preds = %land.lhs.true5
  %12 = load ptr, ptr %result.addr, align 8, !dbg !1200
  %13 = load ptr, ptr %p1.addr, align 8, !dbg !1202
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !1203
  call void @mpi_ec_dup_point(ptr noundef %12, ptr noundef %13, ptr noundef %14) #17, !dbg !1204
  br label %if.end249, !dbg !1205

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %15 = load ptr, ptr %p1.addr, align 8, !dbg !1206
  %z9 = getelementptr inbounds %struct.gcry_mpi_point, ptr %15, i32 0, i32 2, !dbg !1206
  %16 = load ptr, ptr %z9, align 8, !dbg !1206
  %call10 = call i32 @mpi_cmp_ui(ptr noundef %16, i64 noundef 0) #17, !dbg !1207
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1207
  br i1 %tobool11, label %if.else22, label %if.then12, !dbg !1208

if.then12:                                        ; preds = %if.else
  %17 = load ptr, ptr %result.addr, align 8, !dbg !1209
  %x13 = getelementptr inbounds %struct.gcry_mpi_point, ptr %17, i32 0, i32 0, !dbg !1209
  %18 = load ptr, ptr %x13, align 8, !dbg !1209
  %19 = load ptr, ptr %p2.addr, align 8, !dbg !1211
  %x14 = getelementptr inbounds %struct.gcry_mpi_point, ptr %19, i32 0, i32 0, !dbg !1212
  %20 = load ptr, ptr %x14, align 8, !dbg !1212
  %call15 = call ptr @mpi_set(ptr noundef %18, ptr noundef %20) #17, !dbg !1213
  %21 = load ptr, ptr %result.addr, align 8, !dbg !1214
  %y16 = getelementptr inbounds %struct.gcry_mpi_point, ptr %21, i32 0, i32 1, !dbg !1214
  %22 = load ptr, ptr %y16, align 8, !dbg !1214
  %23 = load ptr, ptr %p2.addr, align 8, !dbg !1215
  %y17 = getelementptr inbounds %struct.gcry_mpi_point, ptr %23, i32 0, i32 1, !dbg !1216
  %24 = load ptr, ptr %y17, align 8, !dbg !1216
  %call18 = call ptr @mpi_set(ptr noundef %22, ptr noundef %24) #17, !dbg !1217
  %25 = load ptr, ptr %result.addr, align 8, !dbg !1218
  %z19 = getelementptr inbounds %struct.gcry_mpi_point, ptr %25, i32 0, i32 2, !dbg !1218
  %26 = load ptr, ptr %z19, align 8, !dbg !1218
  %27 = load ptr, ptr %p2.addr, align 8, !dbg !1219
  %z20 = getelementptr inbounds %struct.gcry_mpi_point, ptr %27, i32 0, i32 2, !dbg !1220
  %28 = load ptr, ptr %z20, align 8, !dbg !1220
  %call21 = call ptr @mpi_set(ptr noundef %26, ptr noundef %28) #17, !dbg !1221
  br label %if.end248, !dbg !1222

if.else22:                                        ; preds = %if.else
  %29 = load ptr, ptr %p2.addr, align 8, !dbg !1223
  %z23 = getelementptr inbounds %struct.gcry_mpi_point, ptr %29, i32 0, i32 2, !dbg !1223
  %30 = load ptr, ptr %z23, align 8, !dbg !1223
  %call24 = call i32 @mpi_cmp_ui(ptr noundef %30, i64 noundef 0) #17, !dbg !1224
  %tobool25 = icmp ne i32 %call24, 0, !dbg !1224
  br i1 %tobool25, label %if.else36, label %if.then26, !dbg !1225

if.then26:                                        ; preds = %if.else22
  %31 = load ptr, ptr %result.addr, align 8, !dbg !1226
  %x27 = getelementptr inbounds %struct.gcry_mpi_point, ptr %31, i32 0, i32 0, !dbg !1226
  %32 = load ptr, ptr %x27, align 8, !dbg !1226
  %33 = load ptr, ptr %p1.addr, align 8, !dbg !1228
  %x28 = getelementptr inbounds %struct.gcry_mpi_point, ptr %33, i32 0, i32 0, !dbg !1229
  %34 = load ptr, ptr %x28, align 8, !dbg !1229
  %call29 = call ptr @mpi_set(ptr noundef %32, ptr noundef %34) #17, !dbg !1230
  %35 = load ptr, ptr %result.addr, align 8, !dbg !1231
  %y30 = getelementptr inbounds %struct.gcry_mpi_point, ptr %35, i32 0, i32 1, !dbg !1231
  %36 = load ptr, ptr %y30, align 8, !dbg !1231
  %37 = load ptr, ptr %p1.addr, align 8, !dbg !1232
  %y31 = getelementptr inbounds %struct.gcry_mpi_point, ptr %37, i32 0, i32 1, !dbg !1233
  %38 = load ptr, ptr %y31, align 8, !dbg !1233
  %call32 = call ptr @mpi_set(ptr noundef %36, ptr noundef %38) #17, !dbg !1234
  %39 = load ptr, ptr %result.addr, align 8, !dbg !1235
  %z33 = getelementptr inbounds %struct.gcry_mpi_point, ptr %39, i32 0, i32 2, !dbg !1235
  %40 = load ptr, ptr %z33, align 8, !dbg !1235
  %41 = load ptr, ptr %p1.addr, align 8, !dbg !1236
  %z34 = getelementptr inbounds %struct.gcry_mpi_point, ptr %41, i32 0, i32 2, !dbg !1237
  %42 = load ptr, ptr %z34, align 8, !dbg !1237
  %call35 = call ptr @mpi_set(ptr noundef %40, ptr noundef %42) #17, !dbg !1238
  br label %if.end247, !dbg !1239

if.else36:                                        ; preds = %if.else22
  call void @llvm.lifetime.start.p0(i64 4, ptr %z1_is_one) #15, !dbg !1240
  call void @llvm.dbg.declare(metadata ptr %z1_is_one, metadata !1178, metadata !DIExpression()), !dbg !1241
  %43 = load ptr, ptr %p1.addr, align 8, !dbg !1242
  %z37 = getelementptr inbounds %struct.gcry_mpi_point, ptr %43, i32 0, i32 2, !dbg !1242
  %44 = load ptr, ptr %z37, align 8, !dbg !1242
  %call38 = call i32 @mpi_cmp_ui(ptr noundef %44, i64 noundef 1) #17, !dbg !1243
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1244
  %lnot = xor i1 %tobool39, true, !dbg !1244
  %lnot.ext = zext i1 %lnot to i32, !dbg !1244
  store i32 %lnot.ext, ptr %z1_is_one, align 4, !dbg !1241
  call void @llvm.lifetime.start.p0(i64 4, ptr %z2_is_one) #15, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %z2_is_one, metadata !1183, metadata !DIExpression()), !dbg !1246
  %45 = load ptr, ptr %p2.addr, align 8, !dbg !1247
  %z40 = getelementptr inbounds %struct.gcry_mpi_point, ptr %45, i32 0, i32 2, !dbg !1247
  %46 = load ptr, ptr %z40, align 8, !dbg !1247
  %call41 = call i32 @mpi_cmp_ui(ptr noundef %46, i64 noundef 1) #17, !dbg !1248
  %tobool42 = icmp ne i32 %call41, 0, !dbg !1249
  %lnot43 = xor i1 %tobool42, true, !dbg !1249
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !1249
  store i32 %lnot.ext44, ptr %z2_is_one, align 4, !dbg !1246
  %47 = load i32, ptr %z2_is_one, align 4, !dbg !1250
  %tobool45 = icmp ne i32 %47, 0, !dbg !1250
  br i1 %tobool45, label %if.then46, label %if.else49, !dbg !1252

if.then46:                                        ; preds = %if.else36
  %48 = load ptr, ptr %ctx.addr, align 8, !dbg !1253
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %48, i32 0, i32 13, !dbg !1253
  %scratch = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 4, !dbg !1253
  %arrayidx = getelementptr [11 x ptr], ptr %scratch, i64 0, i64 0, !dbg !1253
  %49 = load ptr, ptr %arrayidx, align 8, !dbg !1253
  %50 = load ptr, ptr %p1.addr, align 8, !dbg !1254
  %x47 = getelementptr inbounds %struct.gcry_mpi_point, ptr %50, i32 0, i32 0, !dbg !1254
  %51 = load ptr, ptr %x47, align 8, !dbg !1254
  %call48 = call ptr @mpi_set(ptr noundef %49, ptr noundef %51) #17, !dbg !1255
  br label %if.end, !dbg !1255

if.else49:                                        ; preds = %if.else36
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !1256
  %t50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %52, i32 0, i32 13, !dbg !1256
  %scratch51 = getelementptr inbounds %struct.anon.0, ptr %t50, i32 0, i32 4, !dbg !1256
  %arrayidx52 = getelementptr [11 x ptr], ptr %scratch51, i64 0, i64 0, !dbg !1256
  %53 = load ptr, ptr %arrayidx52, align 8, !dbg !1256
  %54 = load ptr, ptr %p2.addr, align 8, !dbg !1258
  %z53 = getelementptr inbounds %struct.gcry_mpi_point, ptr %54, i32 0, i32 2, !dbg !1258
  %55 = load ptr, ptr %z53, align 8, !dbg !1258
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !1259
  call void @ec_pow2(ptr noundef %53, ptr noundef %55, ptr noundef %56) #17, !dbg !1260
  %57 = load ptr, ptr %ctx.addr, align 8, !dbg !1261
  %t54 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %57, i32 0, i32 13, !dbg !1261
  %scratch55 = getelementptr inbounds %struct.anon.0, ptr %t54, i32 0, i32 4, !dbg !1261
  %arrayidx56 = getelementptr [11 x ptr], ptr %scratch55, i64 0, i64 0, !dbg !1261
  %58 = load ptr, ptr %arrayidx56, align 8, !dbg !1261
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !1262
  %t57 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %59, i32 0, i32 13, !dbg !1262
  %scratch58 = getelementptr inbounds %struct.anon.0, ptr %t57, i32 0, i32 4, !dbg !1262
  %arrayidx59 = getelementptr [11 x ptr], ptr %scratch58, i64 0, i64 0, !dbg !1262
  %60 = load ptr, ptr %arrayidx59, align 8, !dbg !1262
  %61 = load ptr, ptr %p1.addr, align 8, !dbg !1263
  %x60 = getelementptr inbounds %struct.gcry_mpi_point, ptr %61, i32 0, i32 0, !dbg !1263
  %62 = load ptr, ptr %x60, align 8, !dbg !1263
  %63 = load ptr, ptr %ctx.addr, align 8, !dbg !1264
  call void @ec_mulm(ptr noundef %58, ptr noundef %60, ptr noundef %62, ptr noundef %63) #17, !dbg !1265
  br label %if.end

if.end:                                           ; preds = %if.else49, %if.then46
  %64 = load i32, ptr %z1_is_one, align 4, !dbg !1266
  %tobool61 = icmp ne i32 %64, 0, !dbg !1266
  br i1 %tobool61, label %if.then62, label %if.else68, !dbg !1268

if.then62:                                        ; preds = %if.end
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !1269
  %t63 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %65, i32 0, i32 13, !dbg !1269
  %scratch64 = getelementptr inbounds %struct.anon.0, ptr %t63, i32 0, i32 4, !dbg !1269
  %arrayidx65 = getelementptr [11 x ptr], ptr %scratch64, i64 0, i64 1, !dbg !1269
  %66 = load ptr, ptr %arrayidx65, align 8, !dbg !1269
  %67 = load ptr, ptr %p2.addr, align 8, !dbg !1270
  %x66 = getelementptr inbounds %struct.gcry_mpi_point, ptr %67, i32 0, i32 0, !dbg !1270
  %68 = load ptr, ptr %x66, align 8, !dbg !1270
  %call67 = call ptr @mpi_set(ptr noundef %66, ptr noundef %68) #17, !dbg !1271
  br label %if.end80, !dbg !1271

if.else68:                                        ; preds = %if.end
  %69 = load ptr, ptr %ctx.addr, align 8, !dbg !1272
  %t69 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %69, i32 0, i32 13, !dbg !1272
  %scratch70 = getelementptr inbounds %struct.anon.0, ptr %t69, i32 0, i32 4, !dbg !1272
  %arrayidx71 = getelementptr [11 x ptr], ptr %scratch70, i64 0, i64 1, !dbg !1272
  %70 = load ptr, ptr %arrayidx71, align 8, !dbg !1272
  %71 = load ptr, ptr %p1.addr, align 8, !dbg !1274
  %z72 = getelementptr inbounds %struct.gcry_mpi_point, ptr %71, i32 0, i32 2, !dbg !1274
  %72 = load ptr, ptr %z72, align 8, !dbg !1274
  %73 = load ptr, ptr %ctx.addr, align 8, !dbg !1275
  call void @ec_pow2(ptr noundef %70, ptr noundef %72, ptr noundef %73) #17, !dbg !1276
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !1277
  %t73 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %74, i32 0, i32 13, !dbg !1277
  %scratch74 = getelementptr inbounds %struct.anon.0, ptr %t73, i32 0, i32 4, !dbg !1277
  %arrayidx75 = getelementptr [11 x ptr], ptr %scratch74, i64 0, i64 1, !dbg !1277
  %75 = load ptr, ptr %arrayidx75, align 8, !dbg !1277
  %76 = load ptr, ptr %ctx.addr, align 8, !dbg !1278
  %t76 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %76, i32 0, i32 13, !dbg !1278
  %scratch77 = getelementptr inbounds %struct.anon.0, ptr %t76, i32 0, i32 4, !dbg !1278
  %arrayidx78 = getelementptr [11 x ptr], ptr %scratch77, i64 0, i64 1, !dbg !1278
  %77 = load ptr, ptr %arrayidx78, align 8, !dbg !1278
  %78 = load ptr, ptr %p2.addr, align 8, !dbg !1279
  %x79 = getelementptr inbounds %struct.gcry_mpi_point, ptr %78, i32 0, i32 0, !dbg !1279
  %79 = load ptr, ptr %x79, align 8, !dbg !1279
  %80 = load ptr, ptr %ctx.addr, align 8, !dbg !1280
  call void @ec_mulm(ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %80) #17, !dbg !1281
  br label %if.end80

if.end80:                                         ; preds = %if.else68, %if.then62
  %81 = load ptr, ptr %ctx.addr, align 8, !dbg !1282
  %t81 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %81, i32 0, i32 13, !dbg !1282
  %scratch82 = getelementptr inbounds %struct.anon.0, ptr %t81, i32 0, i32 4, !dbg !1282
  %arrayidx83 = getelementptr [11 x ptr], ptr %scratch82, i64 0, i64 2, !dbg !1282
  %82 = load ptr, ptr %arrayidx83, align 8, !dbg !1282
  %83 = load ptr, ptr %ctx.addr, align 8, !dbg !1283
  %t84 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %83, i32 0, i32 13, !dbg !1283
  %scratch85 = getelementptr inbounds %struct.anon.0, ptr %t84, i32 0, i32 4, !dbg !1283
  %arrayidx86 = getelementptr [11 x ptr], ptr %scratch85, i64 0, i64 0, !dbg !1283
  %84 = load ptr, ptr %arrayidx86, align 8, !dbg !1283
  %85 = load ptr, ptr %ctx.addr, align 8, !dbg !1284
  %t87 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %85, i32 0, i32 13, !dbg !1284
  %scratch88 = getelementptr inbounds %struct.anon.0, ptr %t87, i32 0, i32 4, !dbg !1284
  %arrayidx89 = getelementptr [11 x ptr], ptr %scratch88, i64 0, i64 1, !dbg !1284
  %86 = load ptr, ptr %arrayidx89, align 8, !dbg !1284
  %87 = load ptr, ptr %ctx.addr, align 8, !dbg !1285
  call void @ec_subm(ptr noundef %82, ptr noundef %84, ptr noundef %86, ptr noundef %87) #17, !dbg !1286
  %88 = load ptr, ptr %ctx.addr, align 8, !dbg !1287
  %t90 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %88, i32 0, i32 13, !dbg !1287
  %scratch91 = getelementptr inbounds %struct.anon.0, ptr %t90, i32 0, i32 4, !dbg !1287
  %arrayidx92 = getelementptr [11 x ptr], ptr %scratch91, i64 0, i64 3, !dbg !1287
  %89 = load ptr, ptr %arrayidx92, align 8, !dbg !1287
  %90 = load ptr, ptr %p2.addr, align 8, !dbg !1288
  %z93 = getelementptr inbounds %struct.gcry_mpi_point, ptr %90, i32 0, i32 2, !dbg !1288
  %91 = load ptr, ptr %z93, align 8, !dbg !1288
  %call94 = call ptr @mpi_const(i32 noundef 3) #17, !dbg !1289
  %92 = load ptr, ptr %ctx.addr, align 8, !dbg !1290
  call void @ec_powm(ptr noundef %89, ptr noundef %91, ptr noundef %call94, ptr noundef %92) #17, !dbg !1291
  %93 = load ptr, ptr %ctx.addr, align 8, !dbg !1292
  %t95 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %93, i32 0, i32 13, !dbg !1292
  %scratch96 = getelementptr inbounds %struct.anon.0, ptr %t95, i32 0, i32 4, !dbg !1292
  %arrayidx97 = getelementptr [11 x ptr], ptr %scratch96, i64 0, i64 3, !dbg !1292
  %94 = load ptr, ptr %arrayidx97, align 8, !dbg !1292
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !1293
  %t98 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %95, i32 0, i32 13, !dbg !1293
  %scratch99 = getelementptr inbounds %struct.anon.0, ptr %t98, i32 0, i32 4, !dbg !1293
  %arrayidx100 = getelementptr [11 x ptr], ptr %scratch99, i64 0, i64 3, !dbg !1293
  %96 = load ptr, ptr %arrayidx100, align 8, !dbg !1293
  %97 = load ptr, ptr %p1.addr, align 8, !dbg !1294
  %y101 = getelementptr inbounds %struct.gcry_mpi_point, ptr %97, i32 0, i32 1, !dbg !1294
  %98 = load ptr, ptr %y101, align 8, !dbg !1294
  %99 = load ptr, ptr %ctx.addr, align 8, !dbg !1295
  call void @ec_mulm(ptr noundef %94, ptr noundef %96, ptr noundef %98, ptr noundef %99) #17, !dbg !1296
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !1297
  %t102 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %100, i32 0, i32 13, !dbg !1297
  %scratch103 = getelementptr inbounds %struct.anon.0, ptr %t102, i32 0, i32 4, !dbg !1297
  %arrayidx104 = getelementptr [11 x ptr], ptr %scratch103, i64 0, i64 4, !dbg !1297
  %101 = load ptr, ptr %arrayidx104, align 8, !dbg !1297
  %102 = load ptr, ptr %p1.addr, align 8, !dbg !1298
  %z105 = getelementptr inbounds %struct.gcry_mpi_point, ptr %102, i32 0, i32 2, !dbg !1298
  %103 = load ptr, ptr %z105, align 8, !dbg !1298
  %call106 = call ptr @mpi_const(i32 noundef 3) #17, !dbg !1299
  %104 = load ptr, ptr %ctx.addr, align 8, !dbg !1300
  call void @ec_powm(ptr noundef %101, ptr noundef %103, ptr noundef %call106, ptr noundef %104) #17, !dbg !1301
  %105 = load ptr, ptr %ctx.addr, align 8, !dbg !1302
  %t107 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %105, i32 0, i32 13, !dbg !1302
  %scratch108 = getelementptr inbounds %struct.anon.0, ptr %t107, i32 0, i32 4, !dbg !1302
  %arrayidx109 = getelementptr [11 x ptr], ptr %scratch108, i64 0, i64 4, !dbg !1302
  %106 = load ptr, ptr %arrayidx109, align 8, !dbg !1302
  %107 = load ptr, ptr %ctx.addr, align 8, !dbg !1303
  %t110 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %107, i32 0, i32 13, !dbg !1303
  %scratch111 = getelementptr inbounds %struct.anon.0, ptr %t110, i32 0, i32 4, !dbg !1303
  %arrayidx112 = getelementptr [11 x ptr], ptr %scratch111, i64 0, i64 4, !dbg !1303
  %108 = load ptr, ptr %arrayidx112, align 8, !dbg !1303
  %109 = load ptr, ptr %p2.addr, align 8, !dbg !1304
  %y113 = getelementptr inbounds %struct.gcry_mpi_point, ptr %109, i32 0, i32 1, !dbg !1304
  %110 = load ptr, ptr %y113, align 8, !dbg !1304
  %111 = load ptr, ptr %ctx.addr, align 8, !dbg !1305
  call void @ec_mulm(ptr noundef %106, ptr noundef %108, ptr noundef %110, ptr noundef %111) #17, !dbg !1306
  %112 = load ptr, ptr %ctx.addr, align 8, !dbg !1307
  %t114 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %112, i32 0, i32 13, !dbg !1307
  %scratch115 = getelementptr inbounds %struct.anon.0, ptr %t114, i32 0, i32 4, !dbg !1307
  %arrayidx116 = getelementptr [11 x ptr], ptr %scratch115, i64 0, i64 5, !dbg !1307
  %113 = load ptr, ptr %arrayidx116, align 8, !dbg !1307
  %114 = load ptr, ptr %ctx.addr, align 8, !dbg !1308
  %t117 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %114, i32 0, i32 13, !dbg !1308
  %scratch118 = getelementptr inbounds %struct.anon.0, ptr %t117, i32 0, i32 4, !dbg !1308
  %arrayidx119 = getelementptr [11 x ptr], ptr %scratch118, i64 0, i64 3, !dbg !1308
  %115 = load ptr, ptr %arrayidx119, align 8, !dbg !1308
  %116 = load ptr, ptr %ctx.addr, align 8, !dbg !1309
  %t120 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %116, i32 0, i32 13, !dbg !1309
  %scratch121 = getelementptr inbounds %struct.anon.0, ptr %t120, i32 0, i32 4, !dbg !1309
  %arrayidx122 = getelementptr [11 x ptr], ptr %scratch121, i64 0, i64 4, !dbg !1309
  %117 = load ptr, ptr %arrayidx122, align 8, !dbg !1309
  %118 = load ptr, ptr %ctx.addr, align 8, !dbg !1310
  call void @ec_subm(ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %118) #17, !dbg !1311
  %119 = load ptr, ptr %ctx.addr, align 8, !dbg !1312
  %t123 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %119, i32 0, i32 13, !dbg !1312
  %scratch124 = getelementptr inbounds %struct.anon.0, ptr %t123, i32 0, i32 4, !dbg !1312
  %arrayidx125 = getelementptr [11 x ptr], ptr %scratch124, i64 0, i64 2, !dbg !1312
  %120 = load ptr, ptr %arrayidx125, align 8, !dbg !1312
  %call126 = call i32 @mpi_cmp_ui(ptr noundef %120, i64 noundef 0) #17, !dbg !1314
  %tobool127 = icmp ne i32 %call126, 0, !dbg !1314
  br i1 %tobool127, label %if.else143, label %if.then128, !dbg !1315

if.then128:                                       ; preds = %if.end80
  %121 = load ptr, ptr %ctx.addr, align 8, !dbg !1316
  %t129 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %121, i32 0, i32 13, !dbg !1316
  %scratch130 = getelementptr inbounds %struct.anon.0, ptr %t129, i32 0, i32 4, !dbg !1316
  %arrayidx131 = getelementptr [11 x ptr], ptr %scratch130, i64 0, i64 5, !dbg !1316
  %122 = load ptr, ptr %arrayidx131, align 8, !dbg !1316
  %call132 = call i32 @mpi_cmp_ui(ptr noundef %122, i64 noundef 0) #17, !dbg !1319
  %tobool133 = icmp ne i32 %call132, 0, !dbg !1319
  br i1 %tobool133, label %if.else135, label %if.then134, !dbg !1320

if.then134:                                       ; preds = %if.then128
  %123 = load ptr, ptr %result.addr, align 8, !dbg !1321
  %124 = load ptr, ptr %p1.addr, align 8, !dbg !1323
  %125 = load ptr, ptr %ctx.addr, align 8, !dbg !1324
  call void @mpi_ec_dup_point(ptr noundef %123, ptr noundef %124, ptr noundef %125) #17, !dbg !1325
  br label %if.end142, !dbg !1326

if.else135:                                       ; preds = %if.then128
  %126 = load ptr, ptr %result.addr, align 8, !dbg !1327
  %x136 = getelementptr inbounds %struct.gcry_mpi_point, ptr %126, i32 0, i32 0, !dbg !1327
  %127 = load ptr, ptr %x136, align 8, !dbg !1327
  %call137 = call ptr @mpi_set_ui(ptr noundef %127, i64 noundef 1) #17, !dbg !1329
  %128 = load ptr, ptr %result.addr, align 8, !dbg !1330
  %y138 = getelementptr inbounds %struct.gcry_mpi_point, ptr %128, i32 0, i32 1, !dbg !1330
  %129 = load ptr, ptr %y138, align 8, !dbg !1330
  %call139 = call ptr @mpi_set_ui(ptr noundef %129, i64 noundef 1) #17, !dbg !1331
  %130 = load ptr, ptr %result.addr, align 8, !dbg !1332
  %z140 = getelementptr inbounds %struct.gcry_mpi_point, ptr %130, i32 0, i32 2, !dbg !1332
  %131 = load ptr, ptr %z140, align 8, !dbg !1332
  %call141 = call ptr @mpi_set_ui(ptr noundef %131, i64 noundef 0) #17, !dbg !1333
  br label %if.end142

if.end142:                                        ; preds = %if.else135, %if.then134
  br label %if.end246, !dbg !1334

if.else143:                                       ; preds = %if.end80
  %132 = load ptr, ptr %ctx.addr, align 8, !dbg !1335
  %t144 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %132, i32 0, i32 13, !dbg !1335
  %scratch145 = getelementptr inbounds %struct.anon.0, ptr %t144, i32 0, i32 4, !dbg !1335
  %arrayidx146 = getelementptr [11 x ptr], ptr %scratch145, i64 0, i64 6, !dbg !1335
  %133 = load ptr, ptr %arrayidx146, align 8, !dbg !1335
  %134 = load ptr, ptr %ctx.addr, align 8, !dbg !1337
  %t147 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %134, i32 0, i32 13, !dbg !1337
  %scratch148 = getelementptr inbounds %struct.anon.0, ptr %t147, i32 0, i32 4, !dbg !1337
  %arrayidx149 = getelementptr [11 x ptr], ptr %scratch148, i64 0, i64 0, !dbg !1337
  %135 = load ptr, ptr %arrayidx149, align 8, !dbg !1337
  %136 = load ptr, ptr %ctx.addr, align 8, !dbg !1338
  %t150 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %136, i32 0, i32 13, !dbg !1338
  %scratch151 = getelementptr inbounds %struct.anon.0, ptr %t150, i32 0, i32 4, !dbg !1338
  %arrayidx152 = getelementptr [11 x ptr], ptr %scratch151, i64 0, i64 1, !dbg !1338
  %137 = load ptr, ptr %arrayidx152, align 8, !dbg !1338
  %138 = load ptr, ptr %ctx.addr, align 8, !dbg !1339
  call void @ec_addm(ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %138) #17, !dbg !1340
  %139 = load ptr, ptr %ctx.addr, align 8, !dbg !1341
  %t153 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %139, i32 0, i32 13, !dbg !1341
  %scratch154 = getelementptr inbounds %struct.anon.0, ptr %t153, i32 0, i32 4, !dbg !1341
  %arrayidx155 = getelementptr [11 x ptr], ptr %scratch154, i64 0, i64 7, !dbg !1341
  %140 = load ptr, ptr %arrayidx155, align 8, !dbg !1341
  %141 = load ptr, ptr %ctx.addr, align 8, !dbg !1342
  %t156 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %141, i32 0, i32 13, !dbg !1342
  %scratch157 = getelementptr inbounds %struct.anon.0, ptr %t156, i32 0, i32 4, !dbg !1342
  %arrayidx158 = getelementptr [11 x ptr], ptr %scratch157, i64 0, i64 3, !dbg !1342
  %142 = load ptr, ptr %arrayidx158, align 8, !dbg !1342
  %143 = load ptr, ptr %ctx.addr, align 8, !dbg !1343
  %t159 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %143, i32 0, i32 13, !dbg !1343
  %scratch160 = getelementptr inbounds %struct.anon.0, ptr %t159, i32 0, i32 4, !dbg !1343
  %arrayidx161 = getelementptr [11 x ptr], ptr %scratch160, i64 0, i64 4, !dbg !1343
  %144 = load ptr, ptr %arrayidx161, align 8, !dbg !1343
  %145 = load ptr, ptr %ctx.addr, align 8, !dbg !1344
  call void @ec_addm(ptr noundef %140, ptr noundef %142, ptr noundef %144, ptr noundef %145) #17, !dbg !1345
  %146 = load ptr, ptr %result.addr, align 8, !dbg !1346
  %z162 = getelementptr inbounds %struct.gcry_mpi_point, ptr %146, i32 0, i32 2, !dbg !1346
  %147 = load ptr, ptr %z162, align 8, !dbg !1346
  %148 = load ptr, ptr %p1.addr, align 8, !dbg !1347
  %z163 = getelementptr inbounds %struct.gcry_mpi_point, ptr %148, i32 0, i32 2, !dbg !1347
  %149 = load ptr, ptr %z163, align 8, !dbg !1347
  %150 = load ptr, ptr %p2.addr, align 8, !dbg !1348
  %z164 = getelementptr inbounds %struct.gcry_mpi_point, ptr %150, i32 0, i32 2, !dbg !1348
  %151 = load ptr, ptr %z164, align 8, !dbg !1348
  %152 = load ptr, ptr %ctx.addr, align 8, !dbg !1349
  call void @ec_mulm(ptr noundef %147, ptr noundef %149, ptr noundef %151, ptr noundef %152) #17, !dbg !1350
  %153 = load ptr, ptr %result.addr, align 8, !dbg !1351
  %z165 = getelementptr inbounds %struct.gcry_mpi_point, ptr %153, i32 0, i32 2, !dbg !1351
  %154 = load ptr, ptr %z165, align 8, !dbg !1351
  %155 = load ptr, ptr %result.addr, align 8, !dbg !1352
  %z166 = getelementptr inbounds %struct.gcry_mpi_point, ptr %155, i32 0, i32 2, !dbg !1352
  %156 = load ptr, ptr %z166, align 8, !dbg !1352
  %157 = load ptr, ptr %ctx.addr, align 8, !dbg !1353
  %t167 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %157, i32 0, i32 13, !dbg !1353
  %scratch168 = getelementptr inbounds %struct.anon.0, ptr %t167, i32 0, i32 4, !dbg !1353
  %arrayidx169 = getelementptr [11 x ptr], ptr %scratch168, i64 0, i64 2, !dbg !1353
  %158 = load ptr, ptr %arrayidx169, align 8, !dbg !1353
  %159 = load ptr, ptr %ctx.addr, align 8, !dbg !1354
  call void @ec_mulm(ptr noundef %154, ptr noundef %156, ptr noundef %158, ptr noundef %159) #17, !dbg !1355
  %160 = load ptr, ptr %ctx.addr, align 8, !dbg !1356
  %t170 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %160, i32 0, i32 13, !dbg !1356
  %scratch171 = getelementptr inbounds %struct.anon.0, ptr %t170, i32 0, i32 4, !dbg !1356
  %arrayidx172 = getelementptr [11 x ptr], ptr %scratch171, i64 0, i64 9, !dbg !1356
  %161 = load ptr, ptr %arrayidx172, align 8, !dbg !1356
  %162 = load ptr, ptr %ctx.addr, align 8, !dbg !1357
  %t173 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %162, i32 0, i32 13, !dbg !1357
  %scratch174 = getelementptr inbounds %struct.anon.0, ptr %t173, i32 0, i32 4, !dbg !1357
  %arrayidx175 = getelementptr [11 x ptr], ptr %scratch174, i64 0, i64 5, !dbg !1357
  %163 = load ptr, ptr %arrayidx175, align 8, !dbg !1357
  %164 = load ptr, ptr %ctx.addr, align 8, !dbg !1358
  call void @ec_pow2(ptr noundef %161, ptr noundef %163, ptr noundef %164) #17, !dbg !1359
  %165 = load ptr, ptr %ctx.addr, align 8, !dbg !1360
  %t176 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %165, i32 0, i32 13, !dbg !1360
  %scratch177 = getelementptr inbounds %struct.anon.0, ptr %t176, i32 0, i32 4, !dbg !1360
  %arrayidx178 = getelementptr [11 x ptr], ptr %scratch177, i64 0, i64 10, !dbg !1360
  %166 = load ptr, ptr %arrayidx178, align 8, !dbg !1360
  %167 = load ptr, ptr %ctx.addr, align 8, !dbg !1361
  %t179 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %167, i32 0, i32 13, !dbg !1361
  %scratch180 = getelementptr inbounds %struct.anon.0, ptr %t179, i32 0, i32 4, !dbg !1361
  %arrayidx181 = getelementptr [11 x ptr], ptr %scratch180, i64 0, i64 2, !dbg !1361
  %168 = load ptr, ptr %arrayidx181, align 8, !dbg !1361
  %169 = load ptr, ptr %ctx.addr, align 8, !dbg !1362
  call void @ec_pow2(ptr noundef %166, ptr noundef %168, ptr noundef %169) #17, !dbg !1363
  %170 = load ptr, ptr %ctx.addr, align 8, !dbg !1364
  %t182 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %170, i32 0, i32 13, !dbg !1364
  %scratch183 = getelementptr inbounds %struct.anon.0, ptr %t182, i32 0, i32 4, !dbg !1364
  %arrayidx184 = getelementptr [11 x ptr], ptr %scratch183, i64 0, i64 10, !dbg !1364
  %171 = load ptr, ptr %arrayidx184, align 8, !dbg !1364
  %172 = load ptr, ptr %ctx.addr, align 8, !dbg !1365
  %t185 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %172, i32 0, i32 13, !dbg !1365
  %scratch186 = getelementptr inbounds %struct.anon.0, ptr %t185, i32 0, i32 4, !dbg !1365
  %arrayidx187 = getelementptr [11 x ptr], ptr %scratch186, i64 0, i64 10, !dbg !1365
  %173 = load ptr, ptr %arrayidx187, align 8, !dbg !1365
  %174 = load ptr, ptr %ctx.addr, align 8, !dbg !1366
  %t188 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %174, i32 0, i32 13, !dbg !1366
  %scratch189 = getelementptr inbounds %struct.anon.0, ptr %t188, i32 0, i32 4, !dbg !1366
  %arrayidx190 = getelementptr [11 x ptr], ptr %scratch189, i64 0, i64 6, !dbg !1366
  %175 = load ptr, ptr %arrayidx190, align 8, !dbg !1366
  %176 = load ptr, ptr %ctx.addr, align 8, !dbg !1367
  call void @ec_mulm(ptr noundef %171, ptr noundef %173, ptr noundef %175, ptr noundef %176) #17, !dbg !1368
  %177 = load ptr, ptr %result.addr, align 8, !dbg !1369
  %x191 = getelementptr inbounds %struct.gcry_mpi_point, ptr %177, i32 0, i32 0, !dbg !1369
  %178 = load ptr, ptr %x191, align 8, !dbg !1369
  %179 = load ptr, ptr %ctx.addr, align 8, !dbg !1370
  %t192 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %179, i32 0, i32 13, !dbg !1370
  %scratch193 = getelementptr inbounds %struct.anon.0, ptr %t192, i32 0, i32 4, !dbg !1370
  %arrayidx194 = getelementptr [11 x ptr], ptr %scratch193, i64 0, i64 9, !dbg !1370
  %180 = load ptr, ptr %arrayidx194, align 8, !dbg !1370
  %181 = load ptr, ptr %ctx.addr, align 8, !dbg !1371
  %t195 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %181, i32 0, i32 13, !dbg !1371
  %scratch196 = getelementptr inbounds %struct.anon.0, ptr %t195, i32 0, i32 4, !dbg !1371
  %arrayidx197 = getelementptr [11 x ptr], ptr %scratch196, i64 0, i64 10, !dbg !1371
  %182 = load ptr, ptr %arrayidx197, align 8, !dbg !1371
  %183 = load ptr, ptr %ctx.addr, align 8, !dbg !1372
  call void @ec_subm(ptr noundef %178, ptr noundef %180, ptr noundef %182, ptr noundef %183) #17, !dbg !1373
  %184 = load ptr, ptr %ctx.addr, align 8, !dbg !1374
  %t198 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %184, i32 0, i32 13, !dbg !1374
  %scratch199 = getelementptr inbounds %struct.anon.0, ptr %t198, i32 0, i32 4, !dbg !1374
  %arrayidx200 = getelementptr [11 x ptr], ptr %scratch199, i64 0, i64 9, !dbg !1374
  %185 = load ptr, ptr %arrayidx200, align 8, !dbg !1374
  %186 = load ptr, ptr %result.addr, align 8, !dbg !1375
  %x201 = getelementptr inbounds %struct.gcry_mpi_point, ptr %186, i32 0, i32 0, !dbg !1375
  %187 = load ptr, ptr %x201, align 8, !dbg !1375
  %188 = load ptr, ptr %ctx.addr, align 8, !dbg !1376
  call void @ec_mul2(ptr noundef %185, ptr noundef %187, ptr noundef %188) #17, !dbg !1377
  %189 = load ptr, ptr %ctx.addr, align 8, !dbg !1378
  %t202 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %189, i32 0, i32 13, !dbg !1378
  %scratch203 = getelementptr inbounds %struct.anon.0, ptr %t202, i32 0, i32 4, !dbg !1378
  %arrayidx204 = getelementptr [11 x ptr], ptr %scratch203, i64 0, i64 8, !dbg !1378
  %190 = load ptr, ptr %arrayidx204, align 8, !dbg !1378
  %191 = load ptr, ptr %ctx.addr, align 8, !dbg !1379
  %t205 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %191, i32 0, i32 13, !dbg !1379
  %scratch206 = getelementptr inbounds %struct.anon.0, ptr %t205, i32 0, i32 4, !dbg !1379
  %arrayidx207 = getelementptr [11 x ptr], ptr %scratch206, i64 0, i64 10, !dbg !1379
  %192 = load ptr, ptr %arrayidx207, align 8, !dbg !1379
  %193 = load ptr, ptr %ctx.addr, align 8, !dbg !1380
  %t208 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %193, i32 0, i32 13, !dbg !1380
  %scratch209 = getelementptr inbounds %struct.anon.0, ptr %t208, i32 0, i32 4, !dbg !1380
  %arrayidx210 = getelementptr [11 x ptr], ptr %scratch209, i64 0, i64 9, !dbg !1380
  %194 = load ptr, ptr %arrayidx210, align 8, !dbg !1380
  %195 = load ptr, ptr %ctx.addr, align 8, !dbg !1381
  call void @ec_subm(ptr noundef %190, ptr noundef %192, ptr noundef %194, ptr noundef %195) #17, !dbg !1382
  %196 = load ptr, ptr %ctx.addr, align 8, !dbg !1383
  %t211 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %196, i32 0, i32 13, !dbg !1383
  %scratch212 = getelementptr inbounds %struct.anon.0, ptr %t211, i32 0, i32 4, !dbg !1383
  %arrayidx213 = getelementptr [11 x ptr], ptr %scratch212, i64 0, i64 8, !dbg !1383
  %197 = load ptr, ptr %arrayidx213, align 8, !dbg !1383
  %198 = load ptr, ptr %ctx.addr, align 8, !dbg !1384
  %t214 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %198, i32 0, i32 13, !dbg !1384
  %scratch215 = getelementptr inbounds %struct.anon.0, ptr %t214, i32 0, i32 4, !dbg !1384
  %arrayidx216 = getelementptr [11 x ptr], ptr %scratch215, i64 0, i64 8, !dbg !1384
  %199 = load ptr, ptr %arrayidx216, align 8, !dbg !1384
  %200 = load ptr, ptr %ctx.addr, align 8, !dbg !1385
  %t217 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %200, i32 0, i32 13, !dbg !1385
  %scratch218 = getelementptr inbounds %struct.anon.0, ptr %t217, i32 0, i32 4, !dbg !1385
  %arrayidx219 = getelementptr [11 x ptr], ptr %scratch218, i64 0, i64 5, !dbg !1385
  %201 = load ptr, ptr %arrayidx219, align 8, !dbg !1385
  %202 = load ptr, ptr %ctx.addr, align 8, !dbg !1386
  call void @ec_mulm(ptr noundef %197, ptr noundef %199, ptr noundef %201, ptr noundef %202) #17, !dbg !1387
  %203 = load ptr, ptr %ctx.addr, align 8, !dbg !1388
  %t220 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %203, i32 0, i32 13, !dbg !1388
  %scratch221 = getelementptr inbounds %struct.anon.0, ptr %t220, i32 0, i32 4, !dbg !1388
  %arrayidx222 = getelementptr [11 x ptr], ptr %scratch221, i64 0, i64 9, !dbg !1388
  %204 = load ptr, ptr %arrayidx222, align 8, !dbg !1388
  %205 = load ptr, ptr %ctx.addr, align 8, !dbg !1389
  %t223 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %205, i32 0, i32 13, !dbg !1389
  %scratch224 = getelementptr inbounds %struct.anon.0, ptr %t223, i32 0, i32 4, !dbg !1389
  %arrayidx225 = getelementptr [11 x ptr], ptr %scratch224, i64 0, i64 2, !dbg !1389
  %206 = load ptr, ptr %arrayidx225, align 8, !dbg !1389
  %call226 = call ptr @mpi_const(i32 noundef 3) #17, !dbg !1390
  %207 = load ptr, ptr %ctx.addr, align 8, !dbg !1391
  call void @ec_powm(ptr noundef %204, ptr noundef %206, ptr noundef %call226, ptr noundef %207) #17, !dbg !1392
  %208 = load ptr, ptr %ctx.addr, align 8, !dbg !1393
  %t227 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %208, i32 0, i32 13, !dbg !1393
  %scratch228 = getelementptr inbounds %struct.anon.0, ptr %t227, i32 0, i32 4, !dbg !1393
  %arrayidx229 = getelementptr [11 x ptr], ptr %scratch228, i64 0, i64 9, !dbg !1393
  %209 = load ptr, ptr %arrayidx229, align 8, !dbg !1393
  %210 = load ptr, ptr %ctx.addr, align 8, !dbg !1394
  %t230 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %210, i32 0, i32 13, !dbg !1394
  %scratch231 = getelementptr inbounds %struct.anon.0, ptr %t230, i32 0, i32 4, !dbg !1394
  %arrayidx232 = getelementptr [11 x ptr], ptr %scratch231, i64 0, i64 9, !dbg !1394
  %211 = load ptr, ptr %arrayidx232, align 8, !dbg !1394
  %212 = load ptr, ptr %ctx.addr, align 8, !dbg !1395
  %t233 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %212, i32 0, i32 13, !dbg !1395
  %scratch234 = getelementptr inbounds %struct.anon.0, ptr %t233, i32 0, i32 4, !dbg !1395
  %arrayidx235 = getelementptr [11 x ptr], ptr %scratch234, i64 0, i64 7, !dbg !1395
  %213 = load ptr, ptr %arrayidx235, align 8, !dbg !1395
  %214 = load ptr, ptr %ctx.addr, align 8, !dbg !1396
  call void @ec_mulm(ptr noundef %209, ptr noundef %211, ptr noundef %213, ptr noundef %214) #17, !dbg !1397
  %215 = load ptr, ptr %result.addr, align 8, !dbg !1398
  %y236 = getelementptr inbounds %struct.gcry_mpi_point, ptr %215, i32 0, i32 1, !dbg !1398
  %216 = load ptr, ptr %y236, align 8, !dbg !1398
  %217 = load ptr, ptr %ctx.addr, align 8, !dbg !1399
  %t237 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %217, i32 0, i32 13, !dbg !1399
  %scratch238 = getelementptr inbounds %struct.anon.0, ptr %t237, i32 0, i32 4, !dbg !1399
  %arrayidx239 = getelementptr [11 x ptr], ptr %scratch238, i64 0, i64 8, !dbg !1399
  %218 = load ptr, ptr %arrayidx239, align 8, !dbg !1399
  %219 = load ptr, ptr %ctx.addr, align 8, !dbg !1400
  %t240 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %219, i32 0, i32 13, !dbg !1400
  %scratch241 = getelementptr inbounds %struct.anon.0, ptr %t240, i32 0, i32 4, !dbg !1400
  %arrayidx242 = getelementptr [11 x ptr], ptr %scratch241, i64 0, i64 9, !dbg !1400
  %220 = load ptr, ptr %arrayidx242, align 8, !dbg !1400
  %221 = load ptr, ptr %ctx.addr, align 8, !dbg !1401
  call void @ec_subm(ptr noundef %216, ptr noundef %218, ptr noundef %220, ptr noundef %221) #17, !dbg !1402
  %222 = load ptr, ptr %result.addr, align 8, !dbg !1403
  %y243 = getelementptr inbounds %struct.gcry_mpi_point, ptr %222, i32 0, i32 1, !dbg !1403
  %223 = load ptr, ptr %y243, align 8, !dbg !1403
  %224 = load ptr, ptr %result.addr, align 8, !dbg !1404
  %y244 = getelementptr inbounds %struct.gcry_mpi_point, ptr %224, i32 0, i32 1, !dbg !1404
  %225 = load ptr, ptr %y244, align 8, !dbg !1404
  %226 = load ptr, ptr %ctx.addr, align 8, !dbg !1405
  %call245 = call ptr @ec_get_two_inv_p(ptr noundef %226) #17, !dbg !1406
  %227 = load ptr, ptr %ctx.addr, align 8, !dbg !1407
  call void @ec_mulm(ptr noundef %223, ptr noundef %225, ptr noundef %call245, ptr noundef %227) #17, !dbg !1408
  br label %if.end246

if.end246:                                        ; preds = %if.else143, %if.end142
  call void @llvm.lifetime.end.p0(i64 4, ptr %z2_is_one) #15, !dbg !1409
  call void @llvm.lifetime.end.p0(i64 4, ptr %z1_is_one) #15, !dbg !1409
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.then26
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then12
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.then
  ret void, !dbg !1410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_points_montgomery(ptr noundef %result, ptr noundef %p1, ptr noundef %p2, ptr noundef %ctx) #0 align 16 !dbg !1411 {
entry:
  %result.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1413, metadata !DIExpression()), !dbg !1417
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !1414, metadata !DIExpression()), !dbg !1418
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !1415, metadata !DIExpression()), !dbg !1419
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1416, metadata !DIExpression()), !dbg !1420
  %0 = load ptr, ptr %result.addr, align 8, !dbg !1421
  %1 = load ptr, ptr %p1.addr, align 8, !dbg !1422
  %2 = load ptr, ptr %p2.addr, align 8, !dbg !1423
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !1424
  br label %do.body, !dbg !1425

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1427

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, ptr noundef @.str.26, ptr noundef @.str.2) #19, !dbg !1425
  store i32 %call, ptr %tmp, align 4, !dbg !1427
  %4 = load i32, ptr %tmp, align 4, !dbg !1425
  ret void, !dbg !1429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_points_edwards(ptr noundef %result, ptr noundef %p1, ptr noundef %p2, ptr noundef %ctx) #0 align 16 !dbg !1430 {
entry:
  %result.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1432, metadata !DIExpression()), !dbg !1436
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !1433, metadata !DIExpression()), !dbg !1437
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !1434, metadata !DIExpression()), !dbg !1438
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1435, metadata !DIExpression()), !dbg !1439
  %0 = load ptr, ptr %result.addr, align 8, !dbg !1440
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !1441
  call void @point_resize(ptr noundef %0, ptr noundef %1) #17, !dbg !1442
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !1443
  %mulm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 16, !dbg !1444
  %3 = load ptr, ptr %mulm, align 8, !dbg !1444
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !1445
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %4, i32 0, i32 13, !dbg !1445
  %scratch = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 4, !dbg !1445
  %arrayidx = getelementptr [11 x ptr], ptr %scratch, i64 0, i64 0, !dbg !1445
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1445
  %6 = load ptr, ptr %p1.addr, align 8, !dbg !1446
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 2, !dbg !1446
  %7 = load ptr, ptr %z, align 8, !dbg !1446
  %8 = load ptr, ptr %p2.addr, align 8, !dbg !1447
  %z1 = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2, !dbg !1447
  %9 = load ptr, ptr %z1, align 8, !dbg !1447
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !1448
  call void %3(ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %10) #17, !dbg !1443
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !1449
  %pow2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %11, i32 0, i32 17, !dbg !1450
  %12 = load ptr, ptr %pow2, align 8, !dbg !1450
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !1451
  %t2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %13, i32 0, i32 13, !dbg !1451
  %scratch3 = getelementptr inbounds %struct.anon.0, ptr %t2, i32 0, i32 4, !dbg !1451
  %arrayidx4 = getelementptr [11 x ptr], ptr %scratch3, i64 0, i64 1, !dbg !1451
  %14 = load ptr, ptr %arrayidx4, align 8, !dbg !1451
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !1452
  %t5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %15, i32 0, i32 13, !dbg !1452
  %scratch6 = getelementptr inbounds %struct.anon.0, ptr %t5, i32 0, i32 4, !dbg !1452
  %arrayidx7 = getelementptr [11 x ptr], ptr %scratch6, i64 0, i64 0, !dbg !1452
  %16 = load ptr, ptr %arrayidx7, align 8, !dbg !1452
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !1453
  call void %12(ptr noundef %14, ptr noundef %16, ptr noundef %17) #17, !dbg !1449
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !1454
  %mulm8 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %18, i32 0, i32 16, !dbg !1455
  %19 = load ptr, ptr %mulm8, align 8, !dbg !1455
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !1456
  %t9 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %20, i32 0, i32 13, !dbg !1456
  %scratch10 = getelementptr inbounds %struct.anon.0, ptr %t9, i32 0, i32 4, !dbg !1456
  %arrayidx11 = getelementptr [11 x ptr], ptr %scratch10, i64 0, i64 2, !dbg !1456
  %21 = load ptr, ptr %arrayidx11, align 8, !dbg !1456
  %22 = load ptr, ptr %p1.addr, align 8, !dbg !1457
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %22, i32 0, i32 0, !dbg !1457
  %23 = load ptr, ptr %x, align 8, !dbg !1457
  %24 = load ptr, ptr %p2.addr, align 8, !dbg !1458
  %x12 = getelementptr inbounds %struct.gcry_mpi_point, ptr %24, i32 0, i32 0, !dbg !1458
  %25 = load ptr, ptr %x12, align 8, !dbg !1458
  %26 = load ptr, ptr %ctx.addr, align 8, !dbg !1459
  call void %19(ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %26) #17, !dbg !1454
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !1460
  %mulm13 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %27, i32 0, i32 16, !dbg !1461
  %28 = load ptr, ptr %mulm13, align 8, !dbg !1461
  %29 = load ptr, ptr %ctx.addr, align 8, !dbg !1462
  %t14 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %29, i32 0, i32 13, !dbg !1462
  %scratch15 = getelementptr inbounds %struct.anon.0, ptr %t14, i32 0, i32 4, !dbg !1462
  %arrayidx16 = getelementptr [11 x ptr], ptr %scratch15, i64 0, i64 3, !dbg !1462
  %30 = load ptr, ptr %arrayidx16, align 8, !dbg !1462
  %31 = load ptr, ptr %p1.addr, align 8, !dbg !1463
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %31, i32 0, i32 1, !dbg !1463
  %32 = load ptr, ptr %y, align 8, !dbg !1463
  %33 = load ptr, ptr %p2.addr, align 8, !dbg !1464
  %y17 = getelementptr inbounds %struct.gcry_mpi_point, ptr %33, i32 0, i32 1, !dbg !1464
  %34 = load ptr, ptr %y17, align 8, !dbg !1464
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !1465
  call void %28(ptr noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %35) #17, !dbg !1460
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !1466
  %mulm18 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %36, i32 0, i32 16, !dbg !1467
  %37 = load ptr, ptr %mulm18, align 8, !dbg !1467
  %38 = load ptr, ptr %ctx.addr, align 8, !dbg !1468
  %t19 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %38, i32 0, i32 13, !dbg !1468
  %scratch20 = getelementptr inbounds %struct.anon.0, ptr %t19, i32 0, i32 4, !dbg !1468
  %arrayidx21 = getelementptr [11 x ptr], ptr %scratch20, i64 0, i64 4, !dbg !1468
  %39 = load ptr, ptr %arrayidx21, align 8, !dbg !1468
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !1469
  %b = getelementptr inbounds %struct.mpi_ec_ctx, ptr %40, i32 0, i32 6, !dbg !1470
  %41 = load ptr, ptr %b, align 8, !dbg !1470
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !1471
  %t22 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %42, i32 0, i32 13, !dbg !1471
  %scratch23 = getelementptr inbounds %struct.anon.0, ptr %t22, i32 0, i32 4, !dbg !1471
  %arrayidx24 = getelementptr [11 x ptr], ptr %scratch23, i64 0, i64 2, !dbg !1471
  %43 = load ptr, ptr %arrayidx24, align 8, !dbg !1471
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !1472
  call void %37(ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %44) #17, !dbg !1466
  %45 = load ptr, ptr %ctx.addr, align 8, !dbg !1473
  %mulm25 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %45, i32 0, i32 16, !dbg !1474
  %46 = load ptr, ptr %mulm25, align 8, !dbg !1474
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !1475
  %t26 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %47, i32 0, i32 13, !dbg !1475
  %scratch27 = getelementptr inbounds %struct.anon.0, ptr %t26, i32 0, i32 4, !dbg !1475
  %arrayidx28 = getelementptr [11 x ptr], ptr %scratch27, i64 0, i64 4, !dbg !1475
  %48 = load ptr, ptr %arrayidx28, align 8, !dbg !1475
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !1476
  %t29 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %49, i32 0, i32 13, !dbg !1476
  %scratch30 = getelementptr inbounds %struct.anon.0, ptr %t29, i32 0, i32 4, !dbg !1476
  %arrayidx31 = getelementptr [11 x ptr], ptr %scratch30, i64 0, i64 4, !dbg !1476
  %50 = load ptr, ptr %arrayidx31, align 8, !dbg !1476
  %51 = load ptr, ptr %ctx.addr, align 8, !dbg !1477
  %t32 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %51, i32 0, i32 13, !dbg !1477
  %scratch33 = getelementptr inbounds %struct.anon.0, ptr %t32, i32 0, i32 4, !dbg !1477
  %arrayidx34 = getelementptr [11 x ptr], ptr %scratch33, i64 0, i64 3, !dbg !1477
  %52 = load ptr, ptr %arrayidx34, align 8, !dbg !1477
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !1478
  call void %46(ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %53) #17, !dbg !1473
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !1479
  %subm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %54, i32 0, i32 15, !dbg !1480
  %55 = load ptr, ptr %subm, align 8, !dbg !1480
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !1481
  %t35 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %56, i32 0, i32 13, !dbg !1481
  %scratch36 = getelementptr inbounds %struct.anon.0, ptr %t35, i32 0, i32 4, !dbg !1481
  %arrayidx37 = getelementptr [11 x ptr], ptr %scratch36, i64 0, i64 5, !dbg !1481
  %57 = load ptr, ptr %arrayidx37, align 8, !dbg !1481
  %58 = load ptr, ptr %ctx.addr, align 8, !dbg !1482
  %t38 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %58, i32 0, i32 13, !dbg !1482
  %scratch39 = getelementptr inbounds %struct.anon.0, ptr %t38, i32 0, i32 4, !dbg !1482
  %arrayidx40 = getelementptr [11 x ptr], ptr %scratch39, i64 0, i64 1, !dbg !1482
  %59 = load ptr, ptr %arrayidx40, align 8, !dbg !1482
  %60 = load ptr, ptr %ctx.addr, align 8, !dbg !1483
  %t41 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %60, i32 0, i32 13, !dbg !1483
  %scratch42 = getelementptr inbounds %struct.anon.0, ptr %t41, i32 0, i32 4, !dbg !1483
  %arrayidx43 = getelementptr [11 x ptr], ptr %scratch42, i64 0, i64 4, !dbg !1483
  %61 = load ptr, ptr %arrayidx43, align 8, !dbg !1483
  %62 = load ptr, ptr %ctx.addr, align 8, !dbg !1484
  call void %55(ptr noundef %57, ptr noundef %59, ptr noundef %61, ptr noundef %62) #17, !dbg !1479
  %63 = load ptr, ptr %ctx.addr, align 8, !dbg !1485
  %addm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %63, i32 0, i32 14, !dbg !1486
  %64 = load ptr, ptr %addm, align 8, !dbg !1486
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !1487
  %t44 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %65, i32 0, i32 13, !dbg !1487
  %scratch45 = getelementptr inbounds %struct.anon.0, ptr %t44, i32 0, i32 4, !dbg !1487
  %arrayidx46 = getelementptr [11 x ptr], ptr %scratch45, i64 0, i64 6, !dbg !1487
  %66 = load ptr, ptr %arrayidx46, align 8, !dbg !1487
  %67 = load ptr, ptr %ctx.addr, align 8, !dbg !1488
  %t47 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %67, i32 0, i32 13, !dbg !1488
  %scratch48 = getelementptr inbounds %struct.anon.0, ptr %t47, i32 0, i32 4, !dbg !1488
  %arrayidx49 = getelementptr [11 x ptr], ptr %scratch48, i64 0, i64 1, !dbg !1488
  %68 = load ptr, ptr %arrayidx49, align 8, !dbg !1488
  %69 = load ptr, ptr %ctx.addr, align 8, !dbg !1489
  %t50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %69, i32 0, i32 13, !dbg !1489
  %scratch51 = getelementptr inbounds %struct.anon.0, ptr %t50, i32 0, i32 4, !dbg !1489
  %arrayidx52 = getelementptr [11 x ptr], ptr %scratch51, i64 0, i64 4, !dbg !1489
  %70 = load ptr, ptr %arrayidx52, align 8, !dbg !1489
  %71 = load ptr, ptr %ctx.addr, align 8, !dbg !1490
  call void %64(ptr noundef %66, ptr noundef %68, ptr noundef %70, ptr noundef %71) #17, !dbg !1485
  %72 = load ptr, ptr %ctx.addr, align 8, !dbg !1491
  %addm53 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %72, i32 0, i32 14, !dbg !1492
  %73 = load ptr, ptr %addm53, align 8, !dbg !1492
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !1493
  %t54 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %74, i32 0, i32 13, !dbg !1493
  %scratch55 = getelementptr inbounds %struct.anon.0, ptr %t54, i32 0, i32 4, !dbg !1493
  %arrayidx56 = getelementptr [11 x ptr], ptr %scratch55, i64 0, i64 7, !dbg !1493
  %75 = load ptr, ptr %arrayidx56, align 8, !dbg !1493
  %76 = load ptr, ptr %p1.addr, align 8, !dbg !1494
  %x57 = getelementptr inbounds %struct.gcry_mpi_point, ptr %76, i32 0, i32 0, !dbg !1494
  %77 = load ptr, ptr %x57, align 8, !dbg !1494
  %78 = load ptr, ptr %p1.addr, align 8, !dbg !1495
  %y58 = getelementptr inbounds %struct.gcry_mpi_point, ptr %78, i32 0, i32 1, !dbg !1495
  %79 = load ptr, ptr %y58, align 8, !dbg !1495
  %80 = load ptr, ptr %ctx.addr, align 8, !dbg !1496
  call void %73(ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %80) #17, !dbg !1491
  %81 = load ptr, ptr %ctx.addr, align 8, !dbg !1497
  %addm59 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %81, i32 0, i32 14, !dbg !1498
  %82 = load ptr, ptr %addm59, align 8, !dbg !1498
  %83 = load ptr, ptr %result.addr, align 8, !dbg !1499
  %x60 = getelementptr inbounds %struct.gcry_mpi_point, ptr %83, i32 0, i32 0, !dbg !1499
  %84 = load ptr, ptr %x60, align 8, !dbg !1499
  %85 = load ptr, ptr %p2.addr, align 8, !dbg !1500
  %x61 = getelementptr inbounds %struct.gcry_mpi_point, ptr %85, i32 0, i32 0, !dbg !1500
  %86 = load ptr, ptr %x61, align 8, !dbg !1500
  %87 = load ptr, ptr %p2.addr, align 8, !dbg !1501
  %y62 = getelementptr inbounds %struct.gcry_mpi_point, ptr %87, i32 0, i32 1, !dbg !1501
  %88 = load ptr, ptr %y62, align 8, !dbg !1501
  %89 = load ptr, ptr %ctx.addr, align 8, !dbg !1502
  call void %82(ptr noundef %84, ptr noundef %86, ptr noundef %88, ptr noundef %89) #17, !dbg !1497
  %90 = load ptr, ptr %ctx.addr, align 8, !dbg !1503
  %mulm63 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %90, i32 0, i32 16, !dbg !1504
  %91 = load ptr, ptr %mulm63, align 8, !dbg !1504
  %92 = load ptr, ptr %result.addr, align 8, !dbg !1505
  %x64 = getelementptr inbounds %struct.gcry_mpi_point, ptr %92, i32 0, i32 0, !dbg !1505
  %93 = load ptr, ptr %x64, align 8, !dbg !1505
  %94 = load ptr, ptr %result.addr, align 8, !dbg !1506
  %x65 = getelementptr inbounds %struct.gcry_mpi_point, ptr %94, i32 0, i32 0, !dbg !1506
  %95 = load ptr, ptr %x65, align 8, !dbg !1506
  %96 = load ptr, ptr %ctx.addr, align 8, !dbg !1507
  %t66 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %96, i32 0, i32 13, !dbg !1507
  %scratch67 = getelementptr inbounds %struct.anon.0, ptr %t66, i32 0, i32 4, !dbg !1507
  %arrayidx68 = getelementptr [11 x ptr], ptr %scratch67, i64 0, i64 7, !dbg !1507
  %97 = load ptr, ptr %arrayidx68, align 8, !dbg !1507
  %98 = load ptr, ptr %ctx.addr, align 8, !dbg !1508
  call void %91(ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %98) #17, !dbg !1503
  %99 = load ptr, ptr %ctx.addr, align 8, !dbg !1509
  %subm69 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %99, i32 0, i32 15, !dbg !1510
  %100 = load ptr, ptr %subm69, align 8, !dbg !1510
  %101 = load ptr, ptr %result.addr, align 8, !dbg !1511
  %x70 = getelementptr inbounds %struct.gcry_mpi_point, ptr %101, i32 0, i32 0, !dbg !1511
  %102 = load ptr, ptr %x70, align 8, !dbg !1511
  %103 = load ptr, ptr %result.addr, align 8, !dbg !1512
  %x71 = getelementptr inbounds %struct.gcry_mpi_point, ptr %103, i32 0, i32 0, !dbg !1512
  %104 = load ptr, ptr %x71, align 8, !dbg !1512
  %105 = load ptr, ptr %ctx.addr, align 8, !dbg !1513
  %t72 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %105, i32 0, i32 13, !dbg !1513
  %scratch73 = getelementptr inbounds %struct.anon.0, ptr %t72, i32 0, i32 4, !dbg !1513
  %arrayidx74 = getelementptr [11 x ptr], ptr %scratch73, i64 0, i64 2, !dbg !1513
  %106 = load ptr, ptr %arrayidx74, align 8, !dbg !1513
  %107 = load ptr, ptr %ctx.addr, align 8, !dbg !1514
  call void %100(ptr noundef %102, ptr noundef %104, ptr noundef %106, ptr noundef %107) #17, !dbg !1509
  %108 = load ptr, ptr %ctx.addr, align 8, !dbg !1515
  %subm75 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %108, i32 0, i32 15, !dbg !1516
  %109 = load ptr, ptr %subm75, align 8, !dbg !1516
  %110 = load ptr, ptr %result.addr, align 8, !dbg !1517
  %x76 = getelementptr inbounds %struct.gcry_mpi_point, ptr %110, i32 0, i32 0, !dbg !1517
  %111 = load ptr, ptr %x76, align 8, !dbg !1517
  %112 = load ptr, ptr %result.addr, align 8, !dbg !1518
  %x77 = getelementptr inbounds %struct.gcry_mpi_point, ptr %112, i32 0, i32 0, !dbg !1518
  %113 = load ptr, ptr %x77, align 8, !dbg !1518
  %114 = load ptr, ptr %ctx.addr, align 8, !dbg !1519
  %t78 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %114, i32 0, i32 13, !dbg !1519
  %scratch79 = getelementptr inbounds %struct.anon.0, ptr %t78, i32 0, i32 4, !dbg !1519
  %arrayidx80 = getelementptr [11 x ptr], ptr %scratch79, i64 0, i64 3, !dbg !1519
  %115 = load ptr, ptr %arrayidx80, align 8, !dbg !1519
  %116 = load ptr, ptr %ctx.addr, align 8, !dbg !1520
  call void %109(ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %116) #17, !dbg !1515
  %117 = load ptr, ptr %ctx.addr, align 8, !dbg !1521
  %mulm81 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %117, i32 0, i32 16, !dbg !1522
  %118 = load ptr, ptr %mulm81, align 8, !dbg !1522
  %119 = load ptr, ptr %result.addr, align 8, !dbg !1523
  %x82 = getelementptr inbounds %struct.gcry_mpi_point, ptr %119, i32 0, i32 0, !dbg !1523
  %120 = load ptr, ptr %x82, align 8, !dbg !1523
  %121 = load ptr, ptr %result.addr, align 8, !dbg !1524
  %x83 = getelementptr inbounds %struct.gcry_mpi_point, ptr %121, i32 0, i32 0, !dbg !1524
  %122 = load ptr, ptr %x83, align 8, !dbg !1524
  %123 = load ptr, ptr %ctx.addr, align 8, !dbg !1525
  %t84 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %123, i32 0, i32 13, !dbg !1525
  %scratch85 = getelementptr inbounds %struct.anon.0, ptr %t84, i32 0, i32 4, !dbg !1525
  %arrayidx86 = getelementptr [11 x ptr], ptr %scratch85, i64 0, i64 5, !dbg !1525
  %124 = load ptr, ptr %arrayidx86, align 8, !dbg !1525
  %125 = load ptr, ptr %ctx.addr, align 8, !dbg !1526
  call void %118(ptr noundef %120, ptr noundef %122, ptr noundef %124, ptr noundef %125) #17, !dbg !1521
  %126 = load ptr, ptr %ctx.addr, align 8, !dbg !1527
  %mulm87 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %126, i32 0, i32 16, !dbg !1528
  %127 = load ptr, ptr %mulm87, align 8, !dbg !1528
  %128 = load ptr, ptr %result.addr, align 8, !dbg !1529
  %x88 = getelementptr inbounds %struct.gcry_mpi_point, ptr %128, i32 0, i32 0, !dbg !1529
  %129 = load ptr, ptr %x88, align 8, !dbg !1529
  %130 = load ptr, ptr %result.addr, align 8, !dbg !1530
  %x89 = getelementptr inbounds %struct.gcry_mpi_point, ptr %130, i32 0, i32 0, !dbg !1530
  %131 = load ptr, ptr %x89, align 8, !dbg !1530
  %132 = load ptr, ptr %ctx.addr, align 8, !dbg !1531
  %t90 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %132, i32 0, i32 13, !dbg !1531
  %scratch91 = getelementptr inbounds %struct.anon.0, ptr %t90, i32 0, i32 4, !dbg !1531
  %arrayidx92 = getelementptr [11 x ptr], ptr %scratch91, i64 0, i64 0, !dbg !1531
  %133 = load ptr, ptr %arrayidx92, align 8, !dbg !1531
  %134 = load ptr, ptr %ctx.addr, align 8, !dbg !1532
  call void %127(ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %134) #17, !dbg !1527
  %135 = load ptr, ptr %ctx.addr, align 8, !dbg !1533
  %dialect = getelementptr inbounds %struct.mpi_ec_ctx, ptr %135, i32 0, i32 1, !dbg !1535
  %136 = load i32, ptr %dialect, align 4, !dbg !1535
  %cmp = icmp eq i32 %136, 1, !dbg !1536
  br i1 %cmp, label %if.then, label %if.else, !dbg !1537

if.then:                                          ; preds = %entry
  %137 = load ptr, ptr %ctx.addr, align 8, !dbg !1538
  %addm93 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %137, i32 0, i32 14, !dbg !1540
  %138 = load ptr, ptr %addm93, align 8, !dbg !1540
  %139 = load ptr, ptr %result.addr, align 8, !dbg !1541
  %y94 = getelementptr inbounds %struct.gcry_mpi_point, ptr %139, i32 0, i32 1, !dbg !1541
  %140 = load ptr, ptr %y94, align 8, !dbg !1541
  %141 = load ptr, ptr %ctx.addr, align 8, !dbg !1542
  %t95 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %141, i32 0, i32 13, !dbg !1542
  %scratch96 = getelementptr inbounds %struct.anon.0, ptr %t95, i32 0, i32 4, !dbg !1542
  %arrayidx97 = getelementptr [11 x ptr], ptr %scratch96, i64 0, i64 3, !dbg !1542
  %142 = load ptr, ptr %arrayidx97, align 8, !dbg !1542
  %143 = load ptr, ptr %ctx.addr, align 8, !dbg !1543
  %t98 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %143, i32 0, i32 13, !dbg !1543
  %scratch99 = getelementptr inbounds %struct.anon.0, ptr %t98, i32 0, i32 4, !dbg !1543
  %arrayidx100 = getelementptr [11 x ptr], ptr %scratch99, i64 0, i64 2, !dbg !1543
  %144 = load ptr, ptr %arrayidx100, align 8, !dbg !1543
  %145 = load ptr, ptr %ctx.addr, align 8, !dbg !1544
  call void %138(ptr noundef %140, ptr noundef %142, ptr noundef %144, ptr noundef %145) #17, !dbg !1538
  br label %if.end, !dbg !1545

if.else:                                          ; preds = %entry
  %146 = load ptr, ptr %ctx.addr, align 8, !dbg !1546
  %mulm101 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %146, i32 0, i32 16, !dbg !1548
  %147 = load ptr, ptr %mulm101, align 8, !dbg !1548
  %148 = load ptr, ptr %result.addr, align 8, !dbg !1549
  %y102 = getelementptr inbounds %struct.gcry_mpi_point, ptr %148, i32 0, i32 1, !dbg !1549
  %149 = load ptr, ptr %y102, align 8, !dbg !1549
  %150 = load ptr, ptr %ctx.addr, align 8, !dbg !1550
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %150, i32 0, i32 5, !dbg !1551
  %151 = load ptr, ptr %a, align 8, !dbg !1551
  %152 = load ptr, ptr %ctx.addr, align 8, !dbg !1552
  %t103 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %152, i32 0, i32 13, !dbg !1552
  %scratch104 = getelementptr inbounds %struct.anon.0, ptr %t103, i32 0, i32 4, !dbg !1552
  %arrayidx105 = getelementptr [11 x ptr], ptr %scratch104, i64 0, i64 2, !dbg !1552
  %153 = load ptr, ptr %arrayidx105, align 8, !dbg !1552
  %154 = load ptr, ptr %ctx.addr, align 8, !dbg !1553
  call void %147(ptr noundef %149, ptr noundef %151, ptr noundef %153, ptr noundef %154) #17, !dbg !1546
  %155 = load ptr, ptr %ctx.addr, align 8, !dbg !1554
  %subm106 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %155, i32 0, i32 15, !dbg !1555
  %156 = load ptr, ptr %subm106, align 8, !dbg !1555
  %157 = load ptr, ptr %result.addr, align 8, !dbg !1556
  %y107 = getelementptr inbounds %struct.gcry_mpi_point, ptr %157, i32 0, i32 1, !dbg !1556
  %158 = load ptr, ptr %y107, align 8, !dbg !1556
  %159 = load ptr, ptr %ctx.addr, align 8, !dbg !1557
  %t108 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %159, i32 0, i32 13, !dbg !1557
  %scratch109 = getelementptr inbounds %struct.anon.0, ptr %t108, i32 0, i32 4, !dbg !1557
  %arrayidx110 = getelementptr [11 x ptr], ptr %scratch109, i64 0, i64 3, !dbg !1557
  %160 = load ptr, ptr %arrayidx110, align 8, !dbg !1557
  %161 = load ptr, ptr %result.addr, align 8, !dbg !1558
  %y111 = getelementptr inbounds %struct.gcry_mpi_point, ptr %161, i32 0, i32 1, !dbg !1558
  %162 = load ptr, ptr %y111, align 8, !dbg !1558
  %163 = load ptr, ptr %ctx.addr, align 8, !dbg !1559
  call void %156(ptr noundef %158, ptr noundef %160, ptr noundef %162, ptr noundef %163) #17, !dbg !1554
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %164 = load ptr, ptr %ctx.addr, align 8, !dbg !1560
  %mulm112 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %164, i32 0, i32 16, !dbg !1561
  %165 = load ptr, ptr %mulm112, align 8, !dbg !1561
  %166 = load ptr, ptr %result.addr, align 8, !dbg !1562
  %y113 = getelementptr inbounds %struct.gcry_mpi_point, ptr %166, i32 0, i32 1, !dbg !1562
  %167 = load ptr, ptr %y113, align 8, !dbg !1562
  %168 = load ptr, ptr %result.addr, align 8, !dbg !1563
  %y114 = getelementptr inbounds %struct.gcry_mpi_point, ptr %168, i32 0, i32 1, !dbg !1563
  %169 = load ptr, ptr %y114, align 8, !dbg !1563
  %170 = load ptr, ptr %ctx.addr, align 8, !dbg !1564
  %t115 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %170, i32 0, i32 13, !dbg !1564
  %scratch116 = getelementptr inbounds %struct.anon.0, ptr %t115, i32 0, i32 4, !dbg !1564
  %arrayidx117 = getelementptr [11 x ptr], ptr %scratch116, i64 0, i64 6, !dbg !1564
  %171 = load ptr, ptr %arrayidx117, align 8, !dbg !1564
  %172 = load ptr, ptr %ctx.addr, align 8, !dbg !1565
  call void %165(ptr noundef %167, ptr noundef %169, ptr noundef %171, ptr noundef %172) #17, !dbg !1560
  %173 = load ptr, ptr %ctx.addr, align 8, !dbg !1566
  %mulm118 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %173, i32 0, i32 16, !dbg !1567
  %174 = load ptr, ptr %mulm118, align 8, !dbg !1567
  %175 = load ptr, ptr %result.addr, align 8, !dbg !1568
  %y119 = getelementptr inbounds %struct.gcry_mpi_point, ptr %175, i32 0, i32 1, !dbg !1568
  %176 = load ptr, ptr %y119, align 8, !dbg !1568
  %177 = load ptr, ptr %result.addr, align 8, !dbg !1569
  %y120 = getelementptr inbounds %struct.gcry_mpi_point, ptr %177, i32 0, i32 1, !dbg !1569
  %178 = load ptr, ptr %y120, align 8, !dbg !1569
  %179 = load ptr, ptr %ctx.addr, align 8, !dbg !1570
  %t121 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %179, i32 0, i32 13, !dbg !1570
  %scratch122 = getelementptr inbounds %struct.anon.0, ptr %t121, i32 0, i32 4, !dbg !1570
  %arrayidx123 = getelementptr [11 x ptr], ptr %scratch122, i64 0, i64 0, !dbg !1570
  %180 = load ptr, ptr %arrayidx123, align 8, !dbg !1570
  %181 = load ptr, ptr %ctx.addr, align 8, !dbg !1571
  call void %174(ptr noundef %176, ptr noundef %178, ptr noundef %180, ptr noundef %181) #17, !dbg !1566
  %182 = load ptr, ptr %ctx.addr, align 8, !dbg !1572
  %mulm124 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %182, i32 0, i32 16, !dbg !1573
  %183 = load ptr, ptr %mulm124, align 8, !dbg !1573
  %184 = load ptr, ptr %result.addr, align 8, !dbg !1574
  %z125 = getelementptr inbounds %struct.gcry_mpi_point, ptr %184, i32 0, i32 2, !dbg !1574
  %185 = load ptr, ptr %z125, align 8, !dbg !1574
  %186 = load ptr, ptr %ctx.addr, align 8, !dbg !1575
  %t126 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %186, i32 0, i32 13, !dbg !1575
  %scratch127 = getelementptr inbounds %struct.anon.0, ptr %t126, i32 0, i32 4, !dbg !1575
  %arrayidx128 = getelementptr [11 x ptr], ptr %scratch127, i64 0, i64 5, !dbg !1575
  %187 = load ptr, ptr %arrayidx128, align 8, !dbg !1575
  %188 = load ptr, ptr %ctx.addr, align 8, !dbg !1576
  %t129 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %188, i32 0, i32 13, !dbg !1576
  %scratch130 = getelementptr inbounds %struct.anon.0, ptr %t129, i32 0, i32 4, !dbg !1576
  %arrayidx131 = getelementptr [11 x ptr], ptr %scratch130, i64 0, i64 6, !dbg !1576
  %189 = load ptr, ptr %arrayidx131, align 8, !dbg !1576
  %190 = load ptr, ptr %ctx.addr, align 8, !dbg !1577
  call void %183(ptr noundef %185, ptr noundef %187, ptr noundef %189, ptr noundef %190) #17, !dbg !1572
  ret void, !dbg !1578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_ec_mul_point(ptr noundef %result, ptr noundef %scalar, ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !1579 {
entry:
  %result.addr = alloca ptr, align 8
  %scalar.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %k = alloca ptr, align 8
  %h = alloca ptr, align 8
  %yy = alloca ptr, align 8
  %i = alloca i32, align 4
  %loops = alloca i32, align 4
  %p1 = alloca %struct.gcry_mpi_point, align 8
  %p2 = alloca %struct.gcry_mpi_point, align 8
  %p1inv = alloca %struct.gcry_mpi_point, align 8
  %nbits = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nbits17 = alloca i32, align 4
  %j18 = alloca i32, align 4
  %p1_ = alloca %struct.gcry_mpi_point, align 8
  %p2_ = alloca %struct.gcry_mpi_point, align 8
  %q1 = alloca ptr, align 8
  %q2 = alloca ptr, align 8
  %prd = alloca ptr, align 8
  %sum = alloca ptr, align 8
  %sw = alloca i64, align 8
  %rsize = alloca i32, align 4
  %t = alloca ptr, align 8
  %z2 = alloca ptr, align 8
  %z3 = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1583, metadata !DIExpression()), !dbg !1624
  store ptr %scalar, ptr %scalar.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scalar.addr, metadata !1584, metadata !DIExpression()), !dbg !1625
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !1585, metadata !DIExpression()), !dbg !1626
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1586, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #15, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %x1, metadata !1587, metadata !DIExpression()), !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #15, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %y1, metadata !1588, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 8, ptr %z1) #15, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %z1, metadata !1589, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #15, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1590, metadata !DIExpression()), !dbg !1632
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #15, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %h, metadata !1591, metadata !DIExpression()), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy) #15, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %yy, metadata !1592, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1593, metadata !DIExpression()), !dbg !1636
  call void @llvm.lifetime.start.p0(i64 4, ptr %loops) #15, !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %loops, metadata !1594, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 24, ptr %p1) #15, !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %p1, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 24, ptr %p2) #15, !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %p2, metadata !1596, metadata !DIExpression()), !dbg !1640
  call void @llvm.lifetime.start.p0(i64 24, ptr %p1inv) #15, !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %p1inv, metadata !1597, metadata !DIExpression()), !dbg !1641
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !1642
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 0, !dbg !1643
  %1 = load i32, ptr %model, align 8, !dbg !1643
  %cmp = icmp eq i32 %1, 2, !dbg !1644
  br i1 %cmp, label %if.then, label %if.else13, !dbg !1645

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbits) #15, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %nbits, metadata !1598, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !1648
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1601, metadata !DIExpression()), !dbg !1649
  %2 = load ptr, ptr %scalar.addr, align 8, !dbg !1650
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !1652
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4, !dbg !1653
  %4 = load ptr, ptr %p, align 8, !dbg !1653
  %call = call i32 @mpi_cmp(ptr noundef %2, ptr noundef %4) #17, !dbg !1654
  %cmp1 = icmp sge i32 %call, 0, !dbg !1655
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1656

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %scalar.addr, align 8, !dbg !1657
  %call3 = call i32 @mpi_get_nbits(ptr noundef %5) #17, !dbg !1658
  store i32 %call3, ptr %nbits, align 4, !dbg !1659
  br label %if.end, !dbg !1660

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !1661
  %p4 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %6, i32 0, i32 4, !dbg !1662
  %7 = load ptr, ptr %p4, align 8, !dbg !1662
  %call5 = call i32 @mpi_get_nbits(ptr noundef %7) #17, !dbg !1663
  store i32 %call5, ptr %nbits, align 4, !dbg !1664
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %result.addr, align 8, !dbg !1665
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 0, !dbg !1666
  %9 = load ptr, ptr %x, align 8, !dbg !1666
  %call6 = call ptr @mpi_set_ui(ptr noundef %9, i64 noundef 0) #17, !dbg !1667
  %10 = load ptr, ptr %result.addr, align 8, !dbg !1668
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %10, i32 0, i32 1, !dbg !1669
  %11 = load ptr, ptr %y, align 8, !dbg !1669
  %call7 = call ptr @mpi_set_ui(ptr noundef %11, i64 noundef 1) #17, !dbg !1670
  %12 = load ptr, ptr %result.addr, align 8, !dbg !1671
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %12, i32 0, i32 2, !dbg !1672
  %13 = load ptr, ptr %z, align 8, !dbg !1672
  %call8 = call ptr @mpi_set_ui(ptr noundef %13, i64 noundef 1) #17, !dbg !1673
  %14 = load ptr, ptr %point.addr, align 8, !dbg !1674
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !1675
  call void @point_resize(ptr noundef %14, ptr noundef %15) #17, !dbg !1676
  %16 = load ptr, ptr %result.addr, align 8, !dbg !1677
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !1678
  call void @point_resize(ptr noundef %16, ptr noundef %17) #17, !dbg !1679
  %18 = load ptr, ptr %point.addr, align 8, !dbg !1680
  %19 = load ptr, ptr %ctx.addr, align 8, !dbg !1681
  call void @point_resize(ptr noundef %18, ptr noundef %19) #17, !dbg !1682
  %20 = load i32, ptr %nbits, align 4, !dbg !1683
  %sub = sub i32 %20, 1, !dbg !1685
  store i32 %sub, ptr %j, align 4, !dbg !1686
  br label %for.cond, !dbg !1687

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, ptr %j, align 4, !dbg !1688
  %cmp9 = icmp sge i32 %21, 0, !dbg !1690
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1691

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %result.addr, align 8, !dbg !1692
  %23 = load ptr, ptr %result.addr, align 8, !dbg !1694
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !1695
  call void @mpi_ec_dup_point(ptr noundef %22, ptr noundef %23, ptr noundef %24) #17, !dbg !1696
  %25 = load ptr, ptr %scalar.addr, align 8, !dbg !1697
  %26 = load i32, ptr %j, align 4, !dbg !1699
  %call10 = call i32 @mpi_test_bit(ptr noundef %25, i32 noundef %26) #17, !dbg !1700
  %tobool = icmp ne i32 %call10, 0, !dbg !1700
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !1701

if.then11:                                        ; preds = %for.body
  %27 = load ptr, ptr %result.addr, align 8, !dbg !1702
  %28 = load ptr, ptr %result.addr, align 8, !dbg !1703
  %29 = load ptr, ptr %point.addr, align 8, !dbg !1704
  %30 = load ptr, ptr %ctx.addr, align 8, !dbg !1705
  call void @mpi_ec_add_points(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30) #17, !dbg !1706
  br label %if.end12, !dbg !1706

if.end12:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !1707

for.inc:                                          ; preds = %if.end12
  %31 = load i32, ptr %j, align 4, !dbg !1708
  %dec = add i32 %31, -1, !dbg !1708
  store i32 %dec, ptr %j, align 4, !dbg !1708
  br label %for.cond, !dbg !1709, !llvm.loop !1710

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !1712
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbits) #15, !dbg !1712
  br label %cleanup

if.else13:                                        ; preds = %entry
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !1713
  %model14 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %32, i32 0, i32 0, !dbg !1714
  %33 = load i32, ptr %model14, align 8, !dbg !1714
  %cmp15 = icmp eq i32 %33, 1, !dbg !1715
  br i1 %cmp15, label %if.then16, label %if.end71, !dbg !1716

if.then16:                                        ; preds = %if.else13
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbits17) #15, !dbg !1717
  call void @llvm.dbg.declare(metadata ptr %nbits17, metadata !1602, metadata !DIExpression()), !dbg !1718
  call void @llvm.lifetime.start.p0(i64 4, ptr %j18) #15, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %j18, metadata !1605, metadata !DIExpression()), !dbg !1720
  call void @llvm.lifetime.start.p0(i64 24, ptr %p1_) #15, !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %p1_, metadata !1606, metadata !DIExpression()), !dbg !1722
  call void @llvm.lifetime.start.p0(i64 24, ptr %p2_) #15, !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %p2_, metadata !1607, metadata !DIExpression()), !dbg !1723
  call void @llvm.lifetime.start.p0(i64 8, ptr %q1) #15, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %q1, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.lifetime.start.p0(i64 8, ptr %q2) #15, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %q2, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.lifetime.start.p0(i64 8, ptr %prd) #15, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %prd, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #15, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !1611, metadata !DIExpression()), !dbg !1728
  call void @llvm.lifetime.start.p0(i64 8, ptr %sw) #15, !dbg !1729
  call void @llvm.dbg.declare(metadata ptr %sw, metadata !1612, metadata !DIExpression()), !dbg !1730
  call void @llvm.lifetime.start.p0(i64 4, ptr %rsize) #15, !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %rsize, metadata !1613, metadata !DIExpression()), !dbg !1732
  %34 = load ptr, ptr %scalar.addr, align 8, !dbg !1733
  %call19 = call i32 @mpi_get_nbits(ptr noundef %34) #17, !dbg !1734
  store i32 %call19, ptr %nbits17, align 4, !dbg !1735
  call void @mpi_point_init(ptr noundef %p1) #17, !dbg !1736
  call void @mpi_point_init(ptr noundef %p2) #17, !dbg !1737
  call void @mpi_point_init(ptr noundef %p1_) #17, !dbg !1738
  call void @mpi_point_init(ptr noundef %p2_) #17, !dbg !1739
  %x20 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 0, !dbg !1740
  %35 = load ptr, ptr %x20, align 8, !dbg !1740
  %call21 = call ptr @mpi_set_ui(ptr noundef %35, i64 noundef 1) #17, !dbg !1741
  %x22 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p2, i32 0, i32 0, !dbg !1742
  %36 = load ptr, ptr %x22, align 8, !dbg !1742
  call void @mpi_free(ptr noundef %36) #17, !dbg !1743
  %37 = load ptr, ptr %point.addr, align 8, !dbg !1744
  %x23 = getelementptr inbounds %struct.gcry_mpi_point, ptr %37, i32 0, i32 0, !dbg !1745
  %38 = load ptr, ptr %x23, align 8, !dbg !1745
  %call24 = call ptr @mpi_copy(ptr noundef %38) #17, !dbg !1746
  %x25 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p2, i32 0, i32 0, !dbg !1747
  store ptr %call24, ptr %x25, align 8, !dbg !1748
  %z26 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p2, i32 0, i32 2, !dbg !1749
  %39 = load ptr, ptr %z26, align 8, !dbg !1749
  %call27 = call ptr @mpi_set_ui(ptr noundef %39, i64 noundef 1) #17, !dbg !1750
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !1751
  call void @point_resize(ptr noundef %p1, ptr noundef %40) #17, !dbg !1752
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !1753
  call void @point_resize(ptr noundef %p2, ptr noundef %41) #17, !dbg !1754
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !1755
  call void @point_resize(ptr noundef %p1_, ptr noundef %42) #17, !dbg !1756
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !1757
  call void @point_resize(ptr noundef %p2_, ptr noundef %43) #17, !dbg !1758
  %44 = load ptr, ptr %point.addr, align 8, !dbg !1759
  %x28 = getelementptr inbounds %struct.gcry_mpi_point, ptr %44, i32 0, i32 0, !dbg !1760
  %45 = load ptr, ptr %x28, align 8, !dbg !1760
  %46 = load ptr, ptr %ctx.addr, align 8, !dbg !1761
  %p29 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %46, i32 0, i32 4, !dbg !1762
  %47 = load ptr, ptr %p29, align 8, !dbg !1762
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %47, i32 0, i32 1, !dbg !1763
  %48 = load i32, ptr %nlimbs, align 4, !dbg !1763
  %call30 = call i32 @mpi_resize(ptr noundef %45, i32 noundef %48) #17, !dbg !1764
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !1765
  %p31 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %49, i32 0, i32 4, !dbg !1766
  %50 = load ptr, ptr %p31, align 8, !dbg !1766
  %nlimbs32 = getelementptr inbounds %struct.gcry_mpi, ptr %50, i32 0, i32 1, !dbg !1767
  %51 = load i32, ptr %nlimbs32, align 4, !dbg !1767
  %52 = load ptr, ptr %point.addr, align 8, !dbg !1768
  %x33 = getelementptr inbounds %struct.gcry_mpi_point, ptr %52, i32 0, i32 0, !dbg !1769
  %53 = load ptr, ptr %x33, align 8, !dbg !1769
  %nlimbs34 = getelementptr inbounds %struct.gcry_mpi, ptr %53, i32 0, i32 1, !dbg !1770
  store i32 %51, ptr %nlimbs34, align 4, !dbg !1771
  store ptr %p1, ptr %q1, align 8, !dbg !1772
  store ptr %p2, ptr %q2, align 8, !dbg !1773
  store ptr %p1_, ptr %prd, align 8, !dbg !1774
  store ptr %p2_, ptr %sum, align 8, !dbg !1775
  %54 = load i32, ptr %nbits17, align 4, !dbg !1776
  %sub35 = sub i32 %54, 1, !dbg !1777
  store i32 %sub35, ptr %j18, align 4, !dbg !1778
  br label %for.cond36, !dbg !1779

for.cond36:                                       ; preds = %for.inc41, %if.then16
  %55 = load i32, ptr %j18, align 4, !dbg !1780
  %cmp37 = icmp sge i32 %55, 0, !dbg !1781
  br i1 %cmp37, label %for.body38, label %for.end43, !dbg !1782

for.body38:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1616, metadata !DIExpression()), !dbg !1784
  %56 = load ptr, ptr %scalar.addr, align 8, !dbg !1785
  %57 = load i32, ptr %j18, align 4, !dbg !1786
  %call39 = call i32 @mpi_test_bit(ptr noundef %56, i32 noundef %57) #17, !dbg !1787
  %conv = sext i32 %call39 to i64, !dbg !1787
  store i64 %conv, ptr %sw, align 8, !dbg !1788
  %58 = load ptr, ptr %q1, align 8, !dbg !1789
  %59 = load ptr, ptr %q2, align 8, !dbg !1790
  %60 = load i64, ptr %sw, align 8, !dbg !1791
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !1792
  call void @point_swap_cond(ptr noundef %58, ptr noundef %59, i64 noundef %60, ptr noundef %61) #17, !dbg !1793
  %62 = load ptr, ptr %prd, align 8, !dbg !1794
  %63 = load ptr, ptr %sum, align 8, !dbg !1795
  %64 = load ptr, ptr %q1, align 8, !dbg !1796
  %65 = load ptr, ptr %q2, align 8, !dbg !1797
  %66 = load ptr, ptr %point.addr, align 8, !dbg !1798
  %x40 = getelementptr inbounds %struct.gcry_mpi_point, ptr %66, i32 0, i32 0, !dbg !1799
  %67 = load ptr, ptr %x40, align 8, !dbg !1799
  %68 = load ptr, ptr %ctx.addr, align 8, !dbg !1800
  call void @montgomery_ladder(ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %67, ptr noundef %68) #17, !dbg !1801
  %69 = load ptr, ptr %prd, align 8, !dbg !1802
  %70 = load ptr, ptr %sum, align 8, !dbg !1803
  %71 = load i64, ptr %sw, align 8, !dbg !1804
  %72 = load ptr, ptr %ctx.addr, align 8, !dbg !1805
  call void @point_swap_cond(ptr noundef %69, ptr noundef %70, i64 noundef %71, ptr noundef %72) #17, !dbg !1806
  %73 = load ptr, ptr %q1, align 8, !dbg !1807
  store ptr %73, ptr %t, align 8, !dbg !1808
  %74 = load ptr, ptr %prd, align 8, !dbg !1809
  store ptr %74, ptr %q1, align 8, !dbg !1810
  %75 = load ptr, ptr %t, align 8, !dbg !1811
  store ptr %75, ptr %prd, align 8, !dbg !1812
  %76 = load ptr, ptr %q2, align 8, !dbg !1813
  store ptr %76, ptr %t, align 8, !dbg !1814
  %77 = load ptr, ptr %sum, align 8, !dbg !1815
  store ptr %77, ptr %q2, align 8, !dbg !1816
  %78 = load ptr, ptr %t, align 8, !dbg !1817
  store ptr %78, ptr %sum, align 8, !dbg !1818
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !1819
  br label %for.inc41, !dbg !1820

for.inc41:                                        ; preds = %for.body38
  %79 = load i32, ptr %j18, align 4, !dbg !1821
  %dec42 = add i32 %79, -1, !dbg !1821
  store i32 %dec42, ptr %j18, align 4, !dbg !1821
  br label %for.cond36, !dbg !1822, !llvm.loop !1823

for.end43:                                        ; preds = %for.cond36
  %80 = load ptr, ptr %result.addr, align 8, !dbg !1825
  %y44 = getelementptr inbounds %struct.gcry_mpi_point, ptr %80, i32 0, i32 1, !dbg !1826
  %81 = load ptr, ptr %y44, align 8, !dbg !1826
  call void @mpi_clear(ptr noundef %81) #17, !dbg !1827
  %82 = load i32, ptr %nbits17, align 4, !dbg !1828
  %and = and i32 %82, 1, !dbg !1829
  %conv45 = zext i32 %and to i64, !dbg !1830
  store i64 %conv45, ptr %sw, align 8, !dbg !1831
  %83 = load i64, ptr %sw, align 8, !dbg !1832
  %84 = load ptr, ptr %ctx.addr, align 8, !dbg !1833
  call void @point_swap_cond(ptr noundef %p1, ptr noundef %p1_, i64 noundef %83, ptr noundef %84) #17, !dbg !1834
  %z46 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 2, !dbg !1835
  %85 = load ptr, ptr %z46, align 8, !dbg !1835
  %nlimbs47 = getelementptr inbounds %struct.gcry_mpi, ptr %85, i32 0, i32 1, !dbg !1836
  %86 = load i32, ptr %nlimbs47, align 4, !dbg !1836
  store i32 %86, ptr %rsize, align 4, !dbg !1837
  br label %do.body, !dbg !1838

do.body:                                          ; preds = %for.end43
  br label %while.cond, !dbg !1839

while.cond:                                       ; preds = %if.end54, %do.body
  %87 = load i32, ptr %rsize, align 4, !dbg !1839
  %cmp48 = icmp sgt i32 %87, 0, !dbg !1839
  br i1 %cmp48, label %while.body, label %while.end, !dbg !1839

while.body:                                       ; preds = %while.cond
  %z50 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 2, !dbg !1841
  %88 = load ptr, ptr %z50, align 8, !dbg !1841
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %88, i32 0, i32 5, !dbg !1841
  %89 = load ptr, ptr %d, align 8, !dbg !1841
  %90 = load i32, ptr %rsize, align 4, !dbg !1841
  %sub51 = sub i32 %90, 1, !dbg !1841
  %idxprom = sext i32 %sub51 to i64, !dbg !1841
  %arrayidx = getelementptr i64, ptr %89, i64 %idxprom, !dbg !1841
  %91 = load i64, ptr %arrayidx, align 8, !dbg !1841
  %tobool52 = icmp ne i64 %91, 0, !dbg !1841
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !1844

if.then53:                                        ; preds = %while.body
  br label %while.end, !dbg !1841

if.end54:                                         ; preds = %while.body
  %92 = load i32, ptr %rsize, align 4, !dbg !1844
  %dec55 = add i32 %92, -1, !dbg !1844
  store i32 %dec55, ptr %rsize, align 4, !dbg !1844
  br label %while.cond, !dbg !1839, !llvm.loop !1845

while.end:                                        ; preds = %if.then53, %while.cond
  br label %do.cond, !dbg !1839

do.cond:                                          ; preds = %while.end
  br label %do.end, !dbg !1839

do.end:                                           ; preds = %do.cond
  %93 = load i32, ptr %rsize, align 4, !dbg !1846
  %cmp56 = icmp eq i32 %93, 0, !dbg !1848
  br i1 %cmp56, label %if.then58, label %if.else63, !dbg !1849

if.then58:                                        ; preds = %do.end
  %94 = load ptr, ptr %result.addr, align 8, !dbg !1850
  %x59 = getelementptr inbounds %struct.gcry_mpi_point, ptr %94, i32 0, i32 0, !dbg !1852
  %95 = load ptr, ptr %x59, align 8, !dbg !1852
  %call60 = call ptr @mpi_set_ui(ptr noundef %95, i64 noundef 1) #17, !dbg !1853
  %96 = load ptr, ptr %result.addr, align 8, !dbg !1854
  %z61 = getelementptr inbounds %struct.gcry_mpi_point, ptr %96, i32 0, i32 2, !dbg !1855
  %97 = load ptr, ptr %z61, align 8, !dbg !1855
  %call62 = call ptr @mpi_set_ui(ptr noundef %97, i64 noundef 0) #17, !dbg !1856
  br label %if.end70, !dbg !1857

if.else63:                                        ; preds = %do.end
  %call64 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !1858
  store ptr %call64, ptr %z1, align 8, !dbg !1860
  %98 = load ptr, ptr %z1, align 8, !dbg !1861
  %z65 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 2, !dbg !1862
  %99 = load ptr, ptr %z65, align 8, !dbg !1862
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !1863
  call void @ec_invm(ptr noundef %98, ptr noundef %99, ptr noundef %100) #17, !dbg !1864
  %101 = load ptr, ptr %result.addr, align 8, !dbg !1865
  %x66 = getelementptr inbounds %struct.gcry_mpi_point, ptr %101, i32 0, i32 0, !dbg !1866
  %102 = load ptr, ptr %x66, align 8, !dbg !1866
  %x67 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 0, !dbg !1867
  %103 = load ptr, ptr %x67, align 8, !dbg !1867
  %104 = load ptr, ptr %z1, align 8, !dbg !1868
  %105 = load ptr, ptr %ctx.addr, align 8, !dbg !1869
  call void @ec_mulm(ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105) #17, !dbg !1870
  %106 = load ptr, ptr %result.addr, align 8, !dbg !1871
  %z68 = getelementptr inbounds %struct.gcry_mpi_point, ptr %106, i32 0, i32 2, !dbg !1872
  %107 = load ptr, ptr %z68, align 8, !dbg !1872
  %call69 = call ptr @mpi_set_ui(ptr noundef %107, i64 noundef 1) #17, !dbg !1873
  %108 = load ptr, ptr %z1, align 8, !dbg !1874
  call void @mpi_free(ptr noundef %108) #17, !dbg !1875
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.then58
  call void @mpi_point_free_parts(ptr noundef %p1) #17, !dbg !1876
  call void @mpi_point_free_parts(ptr noundef %p2) #17, !dbg !1877
  call void @mpi_point_free_parts(ptr noundef %p1_) #17, !dbg !1878
  call void @mpi_point_free_parts(ptr noundef %p2_) #17, !dbg !1879
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rsize) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr %sw) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr %prd) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr %q2) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr %q1) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 24, ptr %p2_) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 24, ptr %p1_) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 4, ptr %j18) #15, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbits17) #15, !dbg !1880
  br label %cleanup

if.end71:                                         ; preds = %if.else13
  br label %if.end72

if.end72:                                         ; preds = %if.end71
  %109 = load ptr, ptr %ctx.addr, align 8, !dbg !1881
  %p73 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %109, i32 0, i32 4, !dbg !1882
  %110 = load ptr, ptr %p73, align 8, !dbg !1882
  %call74 = call ptr @mpi_alloc_like(ptr noundef %110) #17, !dbg !1883
  store ptr %call74, ptr %x1, align 8, !dbg !1884
  %111 = load ptr, ptr %ctx.addr, align 8, !dbg !1885
  %p75 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %111, i32 0, i32 4, !dbg !1886
  %112 = load ptr, ptr %p75, align 8, !dbg !1886
  %call76 = call ptr @mpi_alloc_like(ptr noundef %112) #17, !dbg !1887
  store ptr %call76, ptr %y1, align 8, !dbg !1888
  %113 = load ptr, ptr %ctx.addr, align 8, !dbg !1889
  %p77 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %113, i32 0, i32 4, !dbg !1890
  %114 = load ptr, ptr %p77, align 8, !dbg !1890
  %call78 = call ptr @mpi_alloc_like(ptr noundef %114) #17, !dbg !1891
  store ptr %call78, ptr %h, align 8, !dbg !1892
  %115 = load ptr, ptr %scalar.addr, align 8, !dbg !1893
  %call79 = call ptr @mpi_copy(ptr noundef %115) #17, !dbg !1894
  store ptr %call79, ptr %k, align 8, !dbg !1895
  %116 = load ptr, ptr %point.addr, align 8, !dbg !1896
  %y80 = getelementptr inbounds %struct.gcry_mpi_point, ptr %116, i32 0, i32 1, !dbg !1897
  %117 = load ptr, ptr %y80, align 8, !dbg !1897
  %call81 = call ptr @mpi_copy(ptr noundef %117) #17, !dbg !1898
  store ptr %call81, ptr %yy, align 8, !dbg !1899
  %118 = load ptr, ptr %k, align 8, !dbg !1900
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %118, i32 0, i32 3, !dbg !1900
  %119 = load i32, ptr %sign, align 4, !dbg !1900
  %tobool82 = icmp ne i32 %119, 0, !dbg !1900
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !1902

if.then83:                                        ; preds = %if.end72
  %120 = load ptr, ptr %k, align 8, !dbg !1903
  %sign84 = getelementptr inbounds %struct.gcry_mpi, ptr %120, i32 0, i32 3, !dbg !1905
  store i32 0, ptr %sign84, align 4, !dbg !1906
  %121 = load ptr, ptr %yy, align 8, !dbg !1907
  %122 = load ptr, ptr %yy, align 8, !dbg !1908
  %123 = load ptr, ptr %ctx.addr, align 8, !dbg !1909
  call void @ec_invm(ptr noundef %121, ptr noundef %122, ptr noundef %123) #17, !dbg !1910
  br label %if.end85, !dbg !1911

if.end85:                                         ; preds = %if.then83, %if.end72
  %124 = load ptr, ptr %point.addr, align 8, !dbg !1912
  %z86 = getelementptr inbounds %struct.gcry_mpi_point, ptr %124, i32 0, i32 2, !dbg !1913
  %125 = load ptr, ptr %z86, align 8, !dbg !1913
  %call87 = call i32 @mpi_cmp_ui(ptr noundef %125, i64 noundef 1) #17, !dbg !1914
  %tobool88 = icmp ne i32 %call87, 0, !dbg !1914
  br i1 %tobool88, label %if.else93, label %if.then89, !dbg !1915

if.then89:                                        ; preds = %if.end85
  %126 = load ptr, ptr %x1, align 8, !dbg !1916
  %127 = load ptr, ptr %point.addr, align 8, !dbg !1918
  %x90 = getelementptr inbounds %struct.gcry_mpi_point, ptr %127, i32 0, i32 0, !dbg !1919
  %128 = load ptr, ptr %x90, align 8, !dbg !1919
  %call91 = call ptr @mpi_set(ptr noundef %126, ptr noundef %128) #17, !dbg !1920
  %129 = load ptr, ptr %y1, align 8, !dbg !1921
  %130 = load ptr, ptr %yy, align 8, !dbg !1922
  %call92 = call ptr @mpi_set(ptr noundef %129, ptr noundef %130) #17, !dbg !1923
  br label %if.end102, !dbg !1924

if.else93:                                        ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %z2) #15, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %z2, metadata !1620, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.start.p0(i64 8, ptr %z3) #15, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %z3, metadata !1623, metadata !DIExpression()), !dbg !1927
  %131 = load ptr, ptr %ctx.addr, align 8, !dbg !1928
  %p94 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %131, i32 0, i32 4, !dbg !1929
  %132 = load ptr, ptr %p94, align 8, !dbg !1929
  %call95 = call ptr @mpi_alloc_like(ptr noundef %132) #17, !dbg !1930
  store ptr %call95, ptr %z2, align 8, !dbg !1931
  %133 = load ptr, ptr %ctx.addr, align 8, !dbg !1932
  %p96 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %133, i32 0, i32 4, !dbg !1933
  %134 = load ptr, ptr %p96, align 8, !dbg !1933
  %call97 = call ptr @mpi_alloc_like(ptr noundef %134) #17, !dbg !1934
  store ptr %call97, ptr %z3, align 8, !dbg !1935
  %135 = load ptr, ptr %z2, align 8, !dbg !1936
  %136 = load ptr, ptr %point.addr, align 8, !dbg !1937
  %z98 = getelementptr inbounds %struct.gcry_mpi_point, ptr %136, i32 0, i32 2, !dbg !1938
  %137 = load ptr, ptr %z98, align 8, !dbg !1938
  %138 = load ptr, ptr %point.addr, align 8, !dbg !1939
  %z99 = getelementptr inbounds %struct.gcry_mpi_point, ptr %138, i32 0, i32 2, !dbg !1940
  %139 = load ptr, ptr %z99, align 8, !dbg !1940
  %140 = load ptr, ptr %ctx.addr, align 8, !dbg !1941
  call void @ec_mulm(ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %140) #17, !dbg !1942
  %141 = load ptr, ptr %z3, align 8, !dbg !1943
  %142 = load ptr, ptr %point.addr, align 8, !dbg !1944
  %z100 = getelementptr inbounds %struct.gcry_mpi_point, ptr %142, i32 0, i32 2, !dbg !1945
  %143 = load ptr, ptr %z100, align 8, !dbg !1945
  %144 = load ptr, ptr %z2, align 8, !dbg !1946
  %145 = load ptr, ptr %ctx.addr, align 8, !dbg !1947
  call void @ec_mulm(ptr noundef %141, ptr noundef %143, ptr noundef %144, ptr noundef %145) #17, !dbg !1948
  %146 = load ptr, ptr %z2, align 8, !dbg !1949
  %147 = load ptr, ptr %z2, align 8, !dbg !1950
  %148 = load ptr, ptr %ctx.addr, align 8, !dbg !1951
  call void @ec_invm(ptr noundef %146, ptr noundef %147, ptr noundef %148) #17, !dbg !1952
  %149 = load ptr, ptr %x1, align 8, !dbg !1953
  %150 = load ptr, ptr %point.addr, align 8, !dbg !1954
  %x101 = getelementptr inbounds %struct.gcry_mpi_point, ptr %150, i32 0, i32 0, !dbg !1955
  %151 = load ptr, ptr %x101, align 8, !dbg !1955
  %152 = load ptr, ptr %z2, align 8, !dbg !1956
  %153 = load ptr, ptr %ctx.addr, align 8, !dbg !1957
  call void @ec_mulm(ptr noundef %149, ptr noundef %151, ptr noundef %152, ptr noundef %153) #17, !dbg !1958
  %154 = load ptr, ptr %z3, align 8, !dbg !1959
  %155 = load ptr, ptr %z3, align 8, !dbg !1960
  %156 = load ptr, ptr %ctx.addr, align 8, !dbg !1961
  call void @ec_invm(ptr noundef %154, ptr noundef %155, ptr noundef %156) #17, !dbg !1962
  %157 = load ptr, ptr %y1, align 8, !dbg !1963
  %158 = load ptr, ptr %yy, align 8, !dbg !1964
  %159 = load ptr, ptr %z3, align 8, !dbg !1965
  %160 = load ptr, ptr %ctx.addr, align 8, !dbg !1966
  call void @ec_mulm(ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160) #17, !dbg !1967
  %161 = load ptr, ptr %z2, align 8, !dbg !1968
  call void @mpi_free(ptr noundef %161) #17, !dbg !1969
  %162 = load ptr, ptr %z3, align 8, !dbg !1970
  call void @mpi_free(ptr noundef %162) #17, !dbg !1971
  call void @llvm.lifetime.end.p0(i64 8, ptr %z3) #15, !dbg !1972
  call void @llvm.lifetime.end.p0(i64 8, ptr %z2) #15, !dbg !1972
  br label %if.end102

if.end102:                                        ; preds = %if.else93, %if.then89
  %call103 = call ptr @mpi_const(i32 noundef 1) #17, !dbg !1973
  %call104 = call ptr @mpi_copy(ptr noundef %call103) #17, !dbg !1974
  store ptr %call104, ptr %z1, align 8, !dbg !1975
  %163 = load ptr, ptr %h, align 8, !dbg !1976
  %164 = load ptr, ptr %k, align 8, !dbg !1977
  %call105 = call ptr @mpi_const(i32 noundef 3) #17, !dbg !1978
  call void @mpi_mul(ptr noundef %163, ptr noundef %164, ptr noundef %call105) #17, !dbg !1979
  %165 = load ptr, ptr %h, align 8, !dbg !1980
  %call106 = call i32 @mpi_get_nbits(ptr noundef %165) #17, !dbg !1981
  store i32 %call106, ptr %loops, align 4, !dbg !1982
  %166 = load i32, ptr %loops, align 4, !dbg !1983
  %cmp107 = icmp ult i32 %166, 2, !dbg !1985
  br i1 %cmp107, label %if.then109, label %if.else113, !dbg !1986

if.then109:                                       ; preds = %if.end102
  store i32 2, ptr %loops, align 4, !dbg !1987
  %167 = load ptr, ptr %result.addr, align 8, !dbg !1989
  %x110 = getelementptr inbounds %struct.gcry_mpi_point, ptr %167, i32 0, i32 0, !dbg !1990
  %168 = load ptr, ptr %x110, align 8, !dbg !1990
  call void @mpi_clear(ptr noundef %168) #17, !dbg !1991
  %169 = load ptr, ptr %result.addr, align 8, !dbg !1992
  %y111 = getelementptr inbounds %struct.gcry_mpi_point, ptr %169, i32 0, i32 1, !dbg !1993
  %170 = load ptr, ptr %y111, align 8, !dbg !1993
  call void @mpi_clear(ptr noundef %170) #17, !dbg !1994
  %171 = load ptr, ptr %result.addr, align 8, !dbg !1995
  %z112 = getelementptr inbounds %struct.gcry_mpi_point, ptr %171, i32 0, i32 2, !dbg !1996
  %172 = load ptr, ptr %z112, align 8, !dbg !1996
  call void @mpi_clear(ptr noundef %172) #17, !dbg !1997
  br label %if.end122, !dbg !1998

if.else113:                                       ; preds = %if.end102
  %173 = load ptr, ptr %result.addr, align 8, !dbg !1999
  %x114 = getelementptr inbounds %struct.gcry_mpi_point, ptr %173, i32 0, i32 0, !dbg !2001
  %174 = load ptr, ptr %x114, align 8, !dbg !2001
  %175 = load ptr, ptr %point.addr, align 8, !dbg !2002
  %x115 = getelementptr inbounds %struct.gcry_mpi_point, ptr %175, i32 0, i32 0, !dbg !2003
  %176 = load ptr, ptr %x115, align 8, !dbg !2003
  %call116 = call ptr @mpi_set(ptr noundef %174, ptr noundef %176) #17, !dbg !2004
  %177 = load ptr, ptr %result.addr, align 8, !dbg !2005
  %y117 = getelementptr inbounds %struct.gcry_mpi_point, ptr %177, i32 0, i32 1, !dbg !2006
  %178 = load ptr, ptr %y117, align 8, !dbg !2006
  %179 = load ptr, ptr %yy, align 8, !dbg !2007
  %call118 = call ptr @mpi_set(ptr noundef %178, ptr noundef %179) #17, !dbg !2008
  %180 = load ptr, ptr %result.addr, align 8, !dbg !2009
  %z119 = getelementptr inbounds %struct.gcry_mpi_point, ptr %180, i32 0, i32 2, !dbg !2010
  %181 = load ptr, ptr %z119, align 8, !dbg !2010
  %182 = load ptr, ptr %point.addr, align 8, !dbg !2011
  %z120 = getelementptr inbounds %struct.gcry_mpi_point, ptr %182, i32 0, i32 2, !dbg !2012
  %183 = load ptr, ptr %z120, align 8, !dbg !2012
  %call121 = call ptr @mpi_set(ptr noundef %181, ptr noundef %183) #17, !dbg !2013
  br label %if.end122

if.end122:                                        ; preds = %if.else113, %if.then109
  %184 = load ptr, ptr %yy, align 8, !dbg !2014
  call void @mpi_free(ptr noundef %184) #17, !dbg !2015
  store ptr null, ptr %yy, align 8, !dbg !2016
  %185 = load ptr, ptr %x1, align 8, !dbg !2017
  %x123 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 0, !dbg !2018
  store ptr %185, ptr %x123, align 8, !dbg !2019
  store ptr null, ptr %x1, align 8, !dbg !2020
  %186 = load ptr, ptr %y1, align 8, !dbg !2021
  %y124 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 1, !dbg !2022
  store ptr %186, ptr %y124, align 8, !dbg !2023
  store ptr null, ptr %y1, align 8, !dbg !2024
  %187 = load ptr, ptr %z1, align 8, !dbg !2025
  %z125 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1, i32 0, i32 2, !dbg !2026
  store ptr %187, ptr %z125, align 8, !dbg !2027
  store ptr null, ptr %z1, align 8, !dbg !2028
  call void @mpi_point_init(ptr noundef %p2) #17, !dbg !2029
  call void @mpi_point_init(ptr noundef %p1inv) #17, !dbg !2030
  call void @point_set(ptr noundef %p1inv, ptr noundef %p1) #17, !dbg !2031
  %y126 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1inv, i32 0, i32 1, !dbg !2032
  %188 = load ptr, ptr %y126, align 8, !dbg !2032
  %189 = load ptr, ptr %ctx.addr, align 8, !dbg !2033
  %p127 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %189, i32 0, i32 4, !dbg !2034
  %190 = load ptr, ptr %p127, align 8, !dbg !2034
  %y128 = getelementptr inbounds %struct.gcry_mpi_point, ptr %p1inv, i32 0, i32 1, !dbg !2035
  %191 = load ptr, ptr %y128, align 8, !dbg !2035
  %192 = load ptr, ptr %ctx.addr, align 8, !dbg !2036
  call void @ec_subm(ptr noundef %188, ptr noundef %190, ptr noundef %191, ptr noundef %192) #17, !dbg !2037
  %193 = load i32, ptr %loops, align 4, !dbg !2038
  %sub129 = sub i32 %193, 2, !dbg !2040
  store i32 %sub129, ptr %i, align 4, !dbg !2041
  br label %for.cond130, !dbg !2042

for.cond130:                                      ; preds = %for.inc151, %if.end122
  %194 = load i32, ptr %i, align 4, !dbg !2043
  %cmp131 = icmp ugt i32 %194, 0, !dbg !2045
  br i1 %cmp131, label %for.body133, label %for.end153, !dbg !2046

for.body133:                                      ; preds = %for.cond130
  %195 = load ptr, ptr %result.addr, align 8, !dbg !2047
  %196 = load ptr, ptr %result.addr, align 8, !dbg !2049
  %197 = load ptr, ptr %ctx.addr, align 8, !dbg !2050
  call void @mpi_ec_dup_point(ptr noundef %195, ptr noundef %196, ptr noundef %197) #17, !dbg !2051
  %198 = load ptr, ptr %h, align 8, !dbg !2052
  %199 = load i32, ptr %i, align 4, !dbg !2054
  %call134 = call i32 @mpi_test_bit(ptr noundef %198, i32 noundef %199) #17, !dbg !2055
  %cmp135 = icmp eq i32 %call134, 1, !dbg !2056
  br i1 %cmp135, label %land.lhs.true, label %if.end141, !dbg !2057

land.lhs.true:                                    ; preds = %for.body133
  %200 = load ptr, ptr %k, align 8, !dbg !2058
  %201 = load i32, ptr %i, align 4, !dbg !2059
  %call137 = call i32 @mpi_test_bit(ptr noundef %200, i32 noundef %201) #17, !dbg !2060
  %cmp138 = icmp eq i32 %call137, 0, !dbg !2061
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !2062

if.then140:                                       ; preds = %land.lhs.true
  %202 = load ptr, ptr %result.addr, align 8, !dbg !2063
  call void @point_set(ptr noundef %p2, ptr noundef %202) #17, !dbg !2065
  %203 = load ptr, ptr %result.addr, align 8, !dbg !2066
  %204 = load ptr, ptr %ctx.addr, align 8, !dbg !2067
  call void @mpi_ec_add_points(ptr noundef %203, ptr noundef %p2, ptr noundef %p1, ptr noundef %204) #17, !dbg !2068
  br label %if.end141, !dbg !2069

if.end141:                                        ; preds = %if.then140, %land.lhs.true, %for.body133
  %205 = load ptr, ptr %h, align 8, !dbg !2070
  %206 = load i32, ptr %i, align 4, !dbg !2072
  %call142 = call i32 @mpi_test_bit(ptr noundef %205, i32 noundef %206) #17, !dbg !2073
  %cmp143 = icmp eq i32 %call142, 0, !dbg !2074
  br i1 %cmp143, label %land.lhs.true145, label %if.end150, !dbg !2075

land.lhs.true145:                                 ; preds = %if.end141
  %207 = load ptr, ptr %k, align 8, !dbg !2076
  %208 = load i32, ptr %i, align 4, !dbg !2077
  %call146 = call i32 @mpi_test_bit(ptr noundef %207, i32 noundef %208) #17, !dbg !2078
  %cmp147 = icmp eq i32 %call146, 1, !dbg !2079
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !2080

if.then149:                                       ; preds = %land.lhs.true145
  %209 = load ptr, ptr %result.addr, align 8, !dbg !2081
  call void @point_set(ptr noundef %p2, ptr noundef %209) #17, !dbg !2083
  %210 = load ptr, ptr %result.addr, align 8, !dbg !2084
  %211 = load ptr, ptr %ctx.addr, align 8, !dbg !2085
  call void @mpi_ec_add_points(ptr noundef %210, ptr noundef %p2, ptr noundef %p1inv, ptr noundef %211) #17, !dbg !2086
  br label %if.end150, !dbg !2087

if.end150:                                        ; preds = %if.then149, %land.lhs.true145, %if.end141
  br label %for.inc151, !dbg !2088

for.inc151:                                       ; preds = %if.end150
  %212 = load i32, ptr %i, align 4, !dbg !2089
  %dec152 = add i32 %212, -1, !dbg !2089
  store i32 %dec152, ptr %i, align 4, !dbg !2089
  br label %for.cond130, !dbg !2090, !llvm.loop !2091

for.end153:                                       ; preds = %for.cond130
  call void @mpi_point_free_parts(ptr noundef %p1) #17, !dbg !2093
  call void @mpi_point_free_parts(ptr noundef %p2) #17, !dbg !2094
  call void @mpi_point_free_parts(ptr noundef %p1inv) #17, !dbg !2095
  %213 = load ptr, ptr %h, align 8, !dbg !2096
  call void @mpi_free(ptr noundef %213) #17, !dbg !2097
  %214 = load ptr, ptr %k, align 8, !dbg !2098
  call void @mpi_free(ptr noundef %214) #17, !dbg !2099
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2100
  br label %cleanup, !dbg !2100

cleanup:                                          ; preds = %for.end153, %if.end70, %for.end
  call void @llvm.lifetime.end.p0(i64 24, ptr %p1inv) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 24, ptr %p2) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 24, ptr %p1) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 4, ptr %loops) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %z1) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #15, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #15, !dbg !2100
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2100

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2101 dso_local ptr @mpi_set_ui(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @point_resize(ptr noundef %p, ptr noundef %ctx) #0 align 16 !dbg !2104 {
entry:
  %p.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %nlimbs = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2108, metadata !DIExpression()), !dbg !2111
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2109, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlimbs) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %nlimbs, metadata !2110, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2115
  %p1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 4, !dbg !2116
  %1 = load ptr, ptr %p1, align 8, !dbg !2116
  %nlimbs2 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1, !dbg !2117
  %2 = load i32, ptr %nlimbs2, align 4, !dbg !2117
  %conv = sext i32 %2 to i64, !dbg !2115
  store i64 %conv, ptr %nlimbs, align 8, !dbg !2114
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2118
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %3, i32 0, i32 0, !dbg !2119
  %4 = load ptr, ptr %x, align 8, !dbg !2119
  %5 = load i64, ptr %nlimbs, align 8, !dbg !2120
  %conv3 = trunc i64 %5 to i32, !dbg !2120
  %call = call i32 @mpi_resize(ptr noundef %4, i32 noundef %conv3) #17, !dbg !2121
  %6 = load i64, ptr %nlimbs, align 8, !dbg !2122
  %conv4 = trunc i64 %6 to i32, !dbg !2122
  %7 = load ptr, ptr %p.addr, align 8, !dbg !2123
  %x5 = getelementptr inbounds %struct.gcry_mpi_point, ptr %7, i32 0, i32 0, !dbg !2124
  %8 = load ptr, ptr %x5, align 8, !dbg !2124
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 1, !dbg !2125
  store i32 %conv4, ptr %nlimbs6, align 4, !dbg !2126
  %9 = load ptr, ptr %p.addr, align 8, !dbg !2127
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %9, i32 0, i32 2, !dbg !2128
  %10 = load ptr, ptr %z, align 8, !dbg !2128
  %11 = load i64, ptr %nlimbs, align 8, !dbg !2129
  %conv7 = trunc i64 %11 to i32, !dbg !2129
  %call8 = call i32 @mpi_resize(ptr noundef %10, i32 noundef %conv7) #17, !dbg !2130
  %12 = load i64, ptr %nlimbs, align 8, !dbg !2131
  %conv9 = trunc i64 %12 to i32, !dbg !2131
  %13 = load ptr, ptr %p.addr, align 8, !dbg !2132
  %z10 = getelementptr inbounds %struct.gcry_mpi_point, ptr %13, i32 0, i32 2, !dbg !2133
  %14 = load ptr, ptr %z10, align 8, !dbg !2133
  %nlimbs11 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 1, !dbg !2134
  store i32 %conv9, ptr %nlimbs11, align 4, !dbg !2135
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !2136
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %15, i32 0, i32 0, !dbg !2138
  %16 = load i32, ptr %model, align 8, !dbg !2138
  %cmp = icmp ne i32 %16, 1, !dbg !2139
  br i1 %cmp, label %if.then, label %if.end, !dbg !2140

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %p.addr, align 8, !dbg !2141
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %17, i32 0, i32 1, !dbg !2143
  %18 = load ptr, ptr %y, align 8, !dbg !2143
  %19 = load i64, ptr %nlimbs, align 8, !dbg !2144
  %conv13 = trunc i64 %19 to i32, !dbg !2144
  %call14 = call i32 @mpi_resize(ptr noundef %18, i32 noundef %conv13) #17, !dbg !2145
  %20 = load i64, ptr %nlimbs, align 8, !dbg !2146
  %conv15 = trunc i64 %20 to i32, !dbg !2146
  %21 = load ptr, ptr %p.addr, align 8, !dbg !2147
  %y16 = getelementptr inbounds %struct.gcry_mpi_point, ptr %21, i32 0, i32 1, !dbg !2148
  %22 = load ptr, ptr %y16, align 8, !dbg !2148
  %nlimbs17 = getelementptr inbounds %struct.gcry_mpi, ptr %22, i32 0, i32 1, !dbg !2149
  store i32 %conv15, ptr %nlimbs17, align 4, !dbg !2150
  br label %if.end, !dbg !2151

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlimbs) #15, !dbg !2152
  ret void, !dbg !2152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mpi_ec_dup_point(ptr noundef %result, ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !2153 {
entry:
  %result.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !2157, metadata !DIExpression()), !dbg !2160
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !2158, metadata !DIExpression()), !dbg !2161
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2159, metadata !DIExpression()), !dbg !2162
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2163
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 0, !dbg !2164
  %1 = load i32, ptr %model, align 8, !dbg !2164
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !2165

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %result.addr, align 8, !dbg !2166
  %3 = load ptr, ptr %point.addr, align 8, !dbg !2168
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !2169
  call void @dup_point_weierstrass(ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !dbg !2170
  br label %sw.epilog, !dbg !2171

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %result.addr, align 8, !dbg !2172
  %6 = load ptr, ptr %point.addr, align 8, !dbg !2173
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !2174
  call void @dup_point_montgomery(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17, !dbg !2175
  br label %sw.epilog, !dbg !2176

sw.bb2:                                           ; preds = %entry
  %8 = load ptr, ptr %result.addr, align 8, !dbg !2177
  %9 = load ptr, ptr %point.addr, align 8, !dbg !2178
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !2179
  call void @dup_point_edwards(ptr noundef %8, ptr noundef %9, ptr noundef %10) #17, !dbg !2180
  br label %sw.epilog, !dbg !2181

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !2182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2183 dso_local i32 @mpi_test_bit(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @point_swap_cond(ptr noundef %d, ptr noundef %s, i64 noundef %swap, ptr noundef %ctx) #0 align 16 !dbg !2184 {
entry:
  %d.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %swap.addr = alloca i64, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2188, metadata !DIExpression()), !dbg !2192
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2189, metadata !DIExpression()), !dbg !2193
  store i64 %swap, ptr %swap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %swap.addr, metadata !2190, metadata !DIExpression()), !dbg !2194
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2191, metadata !DIExpression()), !dbg !2195
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2196
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 0, !dbg !2197
  %1 = load ptr, ptr %x, align 8, !dbg !2197
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2198
  %x1 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 0, !dbg !2199
  %3 = load ptr, ptr %x1, align 8, !dbg !2199
  %4 = load i64, ptr %swap.addr, align 8, !dbg !2200
  call void @mpi_swap_cond(ptr noundef %1, ptr noundef %3, i64 noundef %4) #17, !dbg !2201
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !2202
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %5, i32 0, i32 0, !dbg !2204
  %6 = load i32, ptr %model, align 8, !dbg !2204
  %cmp = icmp ne i32 %6, 1, !dbg !2205
  br i1 %cmp, label %if.then, label %if.end, !dbg !2206

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %d.addr, align 8, !dbg !2207
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %7, i32 0, i32 1, !dbg !2208
  %8 = load ptr, ptr %y, align 8, !dbg !2208
  %9 = load ptr, ptr %s.addr, align 8, !dbg !2209
  %y2 = getelementptr inbounds %struct.gcry_mpi_point, ptr %9, i32 0, i32 1, !dbg !2210
  %10 = load ptr, ptr %y2, align 8, !dbg !2210
  %11 = load i64, ptr %swap.addr, align 8, !dbg !2211
  call void @mpi_swap_cond(ptr noundef %8, ptr noundef %10, i64 noundef %11) #17, !dbg !2212
  br label %if.end, !dbg !2212

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %d.addr, align 8, !dbg !2213
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %12, i32 0, i32 2, !dbg !2214
  %13 = load ptr, ptr %z, align 8, !dbg !2214
  %14 = load ptr, ptr %s.addr, align 8, !dbg !2215
  %z3 = getelementptr inbounds %struct.gcry_mpi_point, ptr %14, i32 0, i32 2, !dbg !2216
  %15 = load ptr, ptr %z3, align 8, !dbg !2216
  %16 = load i64, ptr %swap.addr, align 8, !dbg !2217
  call void @mpi_swap_cond(ptr noundef %13, ptr noundef %15, i64 noundef %16) #17, !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @montgomery_ladder(ptr noundef %prd, ptr noundef %sum, ptr noundef %p1, ptr noundef %p2, ptr noundef %dif_x, ptr noundef %ctx) #0 align 16 !dbg !2220 {
entry:
  %prd.addr = alloca ptr, align 8
  %sum.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %dif_x.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %prd, ptr %prd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prd.addr, metadata !2224, metadata !DIExpression()), !dbg !2230
  store ptr %sum, ptr %sum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !2225, metadata !DIExpression()), !dbg !2231
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2226, metadata !DIExpression()), !dbg !2232
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !2227, metadata !DIExpression()), !dbg !2233
  store ptr %dif_x, ptr %dif_x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dif_x.addr, metadata !2228, metadata !DIExpression()), !dbg !2234
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2229, metadata !DIExpression()), !dbg !2235
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2236
  %addm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 14, !dbg !2237
  %1 = load ptr, ptr %addm, align 8, !dbg !2237
  %2 = load ptr, ptr %sum.addr, align 8, !dbg !2238
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 0, !dbg !2239
  %3 = load ptr, ptr %x, align 8, !dbg !2239
  %4 = load ptr, ptr %p2.addr, align 8, !dbg !2240
  %x1 = getelementptr inbounds %struct.gcry_mpi_point, ptr %4, i32 0, i32 0, !dbg !2241
  %5 = load ptr, ptr %x1, align 8, !dbg !2241
  %6 = load ptr, ptr %p2.addr, align 8, !dbg !2242
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 2, !dbg !2243
  %7 = load ptr, ptr %z, align 8, !dbg !2243
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !2244
  call void %1(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %8) #17, !dbg !2236
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !2245
  %subm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %9, i32 0, i32 15, !dbg !2246
  %10 = load ptr, ptr %subm, align 8, !dbg !2246
  %11 = load ptr, ptr %p2.addr, align 8, !dbg !2247
  %z2 = getelementptr inbounds %struct.gcry_mpi_point, ptr %11, i32 0, i32 2, !dbg !2248
  %12 = load ptr, ptr %z2, align 8, !dbg !2248
  %13 = load ptr, ptr %p2.addr, align 8, !dbg !2249
  %x3 = getelementptr inbounds %struct.gcry_mpi_point, ptr %13, i32 0, i32 0, !dbg !2250
  %14 = load ptr, ptr %x3, align 8, !dbg !2250
  %15 = load ptr, ptr %p2.addr, align 8, !dbg !2251
  %z4 = getelementptr inbounds %struct.gcry_mpi_point, ptr %15, i32 0, i32 2, !dbg !2252
  %16 = load ptr, ptr %z4, align 8, !dbg !2252
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !2253
  call void %10(ptr noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %17) #17, !dbg !2245
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !2254
  %addm5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %18, i32 0, i32 14, !dbg !2255
  %19 = load ptr, ptr %addm5, align 8, !dbg !2255
  %20 = load ptr, ptr %prd.addr, align 8, !dbg !2256
  %x6 = getelementptr inbounds %struct.gcry_mpi_point, ptr %20, i32 0, i32 0, !dbg !2257
  %21 = load ptr, ptr %x6, align 8, !dbg !2257
  %22 = load ptr, ptr %p1.addr, align 8, !dbg !2258
  %x7 = getelementptr inbounds %struct.gcry_mpi_point, ptr %22, i32 0, i32 0, !dbg !2259
  %23 = load ptr, ptr %x7, align 8, !dbg !2259
  %24 = load ptr, ptr %p1.addr, align 8, !dbg !2260
  %z8 = getelementptr inbounds %struct.gcry_mpi_point, ptr %24, i32 0, i32 2, !dbg !2261
  %25 = load ptr, ptr %z8, align 8, !dbg !2261
  %26 = load ptr, ptr %ctx.addr, align 8, !dbg !2262
  call void %19(ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %26) #17, !dbg !2254
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !2263
  %subm9 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %27, i32 0, i32 15, !dbg !2264
  %28 = load ptr, ptr %subm9, align 8, !dbg !2264
  %29 = load ptr, ptr %p1.addr, align 8, !dbg !2265
  %z10 = getelementptr inbounds %struct.gcry_mpi_point, ptr %29, i32 0, i32 2, !dbg !2266
  %30 = load ptr, ptr %z10, align 8, !dbg !2266
  %31 = load ptr, ptr %p1.addr, align 8, !dbg !2267
  %x11 = getelementptr inbounds %struct.gcry_mpi_point, ptr %31, i32 0, i32 0, !dbg !2268
  %32 = load ptr, ptr %x11, align 8, !dbg !2268
  %33 = load ptr, ptr %p1.addr, align 8, !dbg !2269
  %z12 = getelementptr inbounds %struct.gcry_mpi_point, ptr %33, i32 0, i32 2, !dbg !2270
  %34 = load ptr, ptr %z12, align 8, !dbg !2270
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !2271
  call void %28(ptr noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %35) #17, !dbg !2263
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !2272
  %mulm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %36, i32 0, i32 16, !dbg !2273
  %37 = load ptr, ptr %mulm, align 8, !dbg !2273
  %38 = load ptr, ptr %p2.addr, align 8, !dbg !2274
  %x13 = getelementptr inbounds %struct.gcry_mpi_point, ptr %38, i32 0, i32 0, !dbg !2275
  %39 = load ptr, ptr %x13, align 8, !dbg !2275
  %40 = load ptr, ptr %p1.addr, align 8, !dbg !2276
  %z14 = getelementptr inbounds %struct.gcry_mpi_point, ptr %40, i32 0, i32 2, !dbg !2277
  %41 = load ptr, ptr %z14, align 8, !dbg !2277
  %42 = load ptr, ptr %sum.addr, align 8, !dbg !2278
  %x15 = getelementptr inbounds %struct.gcry_mpi_point, ptr %42, i32 0, i32 0, !dbg !2279
  %43 = load ptr, ptr %x15, align 8, !dbg !2279
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !2280
  call void %37(ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %44) #17, !dbg !2272
  %45 = load ptr, ptr %ctx.addr, align 8, !dbg !2281
  %mulm16 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %45, i32 0, i32 16, !dbg !2282
  %46 = load ptr, ptr %mulm16, align 8, !dbg !2282
  %47 = load ptr, ptr %p2.addr, align 8, !dbg !2283
  %z17 = getelementptr inbounds %struct.gcry_mpi_point, ptr %47, i32 0, i32 2, !dbg !2284
  %48 = load ptr, ptr %z17, align 8, !dbg !2284
  %49 = load ptr, ptr %prd.addr, align 8, !dbg !2285
  %x18 = getelementptr inbounds %struct.gcry_mpi_point, ptr %49, i32 0, i32 0, !dbg !2286
  %50 = load ptr, ptr %x18, align 8, !dbg !2286
  %51 = load ptr, ptr %p2.addr, align 8, !dbg !2287
  %z19 = getelementptr inbounds %struct.gcry_mpi_point, ptr %51, i32 0, i32 2, !dbg !2288
  %52 = load ptr, ptr %z19, align 8, !dbg !2288
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !2289
  call void %46(ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %53) #17, !dbg !2281
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !2290
  %pow2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %54, i32 0, i32 17, !dbg !2291
  %55 = load ptr, ptr %pow2, align 8, !dbg !2291
  %56 = load ptr, ptr %p1.addr, align 8, !dbg !2292
  %x20 = getelementptr inbounds %struct.gcry_mpi_point, ptr %56, i32 0, i32 0, !dbg !2293
  %57 = load ptr, ptr %x20, align 8, !dbg !2293
  %58 = load ptr, ptr %prd.addr, align 8, !dbg !2294
  %x21 = getelementptr inbounds %struct.gcry_mpi_point, ptr %58, i32 0, i32 0, !dbg !2295
  %59 = load ptr, ptr %x21, align 8, !dbg !2295
  %60 = load ptr, ptr %ctx.addr, align 8, !dbg !2296
  call void %55(ptr noundef %57, ptr noundef %59, ptr noundef %60) #17, !dbg !2290
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !2297
  %pow222 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %61, i32 0, i32 17, !dbg !2298
  %62 = load ptr, ptr %pow222, align 8, !dbg !2298
  %63 = load ptr, ptr %p1.addr, align 8, !dbg !2299
  %z23 = getelementptr inbounds %struct.gcry_mpi_point, ptr %63, i32 0, i32 2, !dbg !2300
  %64 = load ptr, ptr %z23, align 8, !dbg !2300
  %65 = load ptr, ptr %p1.addr, align 8, !dbg !2301
  %z24 = getelementptr inbounds %struct.gcry_mpi_point, ptr %65, i32 0, i32 2, !dbg !2302
  %66 = load ptr, ptr %z24, align 8, !dbg !2302
  %67 = load ptr, ptr %ctx.addr, align 8, !dbg !2303
  call void %62(ptr noundef %64, ptr noundef %66, ptr noundef %67) #17, !dbg !2297
  %68 = load ptr, ptr %ctx.addr, align 8, !dbg !2304
  %addm25 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %68, i32 0, i32 14, !dbg !2305
  %69 = load ptr, ptr %addm25, align 8, !dbg !2305
  %70 = load ptr, ptr %sum.addr, align 8, !dbg !2306
  %x26 = getelementptr inbounds %struct.gcry_mpi_point, ptr %70, i32 0, i32 0, !dbg !2307
  %71 = load ptr, ptr %x26, align 8, !dbg !2307
  %72 = load ptr, ptr %p2.addr, align 8, !dbg !2308
  %x27 = getelementptr inbounds %struct.gcry_mpi_point, ptr %72, i32 0, i32 0, !dbg !2309
  %73 = load ptr, ptr %x27, align 8, !dbg !2309
  %74 = load ptr, ptr %p2.addr, align 8, !dbg !2310
  %z28 = getelementptr inbounds %struct.gcry_mpi_point, ptr %74, i32 0, i32 2, !dbg !2311
  %75 = load ptr, ptr %z28, align 8, !dbg !2311
  %76 = load ptr, ptr %ctx.addr, align 8, !dbg !2312
  call void %69(ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %76) #17, !dbg !2304
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !2313
  %subm29 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %77, i32 0, i32 15, !dbg !2314
  %78 = load ptr, ptr %subm29, align 8, !dbg !2314
  %79 = load ptr, ptr %p2.addr, align 8, !dbg !2315
  %z30 = getelementptr inbounds %struct.gcry_mpi_point, ptr %79, i32 0, i32 2, !dbg !2316
  %80 = load ptr, ptr %z30, align 8, !dbg !2316
  %81 = load ptr, ptr %p2.addr, align 8, !dbg !2317
  %x31 = getelementptr inbounds %struct.gcry_mpi_point, ptr %81, i32 0, i32 0, !dbg !2318
  %82 = load ptr, ptr %x31, align 8, !dbg !2318
  %83 = load ptr, ptr %p2.addr, align 8, !dbg !2319
  %z32 = getelementptr inbounds %struct.gcry_mpi_point, ptr %83, i32 0, i32 2, !dbg !2320
  %84 = load ptr, ptr %z32, align 8, !dbg !2320
  %85 = load ptr, ptr %ctx.addr, align 8, !dbg !2321
  call void %78(ptr noundef %80, ptr noundef %82, ptr noundef %84, ptr noundef %85) #17, !dbg !2313
  %86 = load ptr, ptr %ctx.addr, align 8, !dbg !2322
  %mulm33 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %86, i32 0, i32 16, !dbg !2323
  %87 = load ptr, ptr %mulm33, align 8, !dbg !2323
  %88 = load ptr, ptr %prd.addr, align 8, !dbg !2324
  %x34 = getelementptr inbounds %struct.gcry_mpi_point, ptr %88, i32 0, i32 0, !dbg !2325
  %89 = load ptr, ptr %x34, align 8, !dbg !2325
  %90 = load ptr, ptr %p1.addr, align 8, !dbg !2326
  %x35 = getelementptr inbounds %struct.gcry_mpi_point, ptr %90, i32 0, i32 0, !dbg !2327
  %91 = load ptr, ptr %x35, align 8, !dbg !2327
  %92 = load ptr, ptr %p1.addr, align 8, !dbg !2328
  %z36 = getelementptr inbounds %struct.gcry_mpi_point, ptr %92, i32 0, i32 2, !dbg !2329
  %93 = load ptr, ptr %z36, align 8, !dbg !2329
  %94 = load ptr, ptr %ctx.addr, align 8, !dbg !2330
  call void %87(ptr noundef %89, ptr noundef %91, ptr noundef %93, ptr noundef %94) #17, !dbg !2322
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !2331
  %subm37 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %95, i32 0, i32 15, !dbg !2332
  %96 = load ptr, ptr %subm37, align 8, !dbg !2332
  %97 = load ptr, ptr %p1.addr, align 8, !dbg !2333
  %z38 = getelementptr inbounds %struct.gcry_mpi_point, ptr %97, i32 0, i32 2, !dbg !2334
  %98 = load ptr, ptr %z38, align 8, !dbg !2334
  %99 = load ptr, ptr %p1.addr, align 8, !dbg !2335
  %x39 = getelementptr inbounds %struct.gcry_mpi_point, ptr %99, i32 0, i32 0, !dbg !2336
  %100 = load ptr, ptr %x39, align 8, !dbg !2336
  %101 = load ptr, ptr %p1.addr, align 8, !dbg !2337
  %z40 = getelementptr inbounds %struct.gcry_mpi_point, ptr %101, i32 0, i32 2, !dbg !2338
  %102 = load ptr, ptr %z40, align 8, !dbg !2338
  %103 = load ptr, ptr %ctx.addr, align 8, !dbg !2339
  call void %96(ptr noundef %98, ptr noundef %100, ptr noundef %102, ptr noundef %103) #17, !dbg !2331
  %104 = load ptr, ptr %ctx.addr, align 8, !dbg !2340
  %pow241 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %104, i32 0, i32 17, !dbg !2341
  %105 = load ptr, ptr %pow241, align 8, !dbg !2341
  %106 = load ptr, ptr %sum.addr, align 8, !dbg !2342
  %x42 = getelementptr inbounds %struct.gcry_mpi_point, ptr %106, i32 0, i32 0, !dbg !2343
  %107 = load ptr, ptr %x42, align 8, !dbg !2343
  %108 = load ptr, ptr %sum.addr, align 8, !dbg !2344
  %x43 = getelementptr inbounds %struct.gcry_mpi_point, ptr %108, i32 0, i32 0, !dbg !2345
  %109 = load ptr, ptr %x43, align 8, !dbg !2345
  %110 = load ptr, ptr %ctx.addr, align 8, !dbg !2346
  call void %105(ptr noundef %107, ptr noundef %109, ptr noundef %110) #17, !dbg !2340
  %111 = load ptr, ptr %ctx.addr, align 8, !dbg !2347
  %pow244 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %111, i32 0, i32 17, !dbg !2348
  %112 = load ptr, ptr %pow244, align 8, !dbg !2348
  %113 = load ptr, ptr %sum.addr, align 8, !dbg !2349
  %z45 = getelementptr inbounds %struct.gcry_mpi_point, ptr %113, i32 0, i32 2, !dbg !2350
  %114 = load ptr, ptr %z45, align 8, !dbg !2350
  %115 = load ptr, ptr %p2.addr, align 8, !dbg !2351
  %z46 = getelementptr inbounds %struct.gcry_mpi_point, ptr %115, i32 0, i32 2, !dbg !2352
  %116 = load ptr, ptr %z46, align 8, !dbg !2352
  %117 = load ptr, ptr %ctx.addr, align 8, !dbg !2353
  call void %112(ptr noundef %114, ptr noundef %116, ptr noundef %117) #17, !dbg !2347
  %118 = load ptr, ptr %ctx.addr, align 8, !dbg !2354
  %mulm47 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %118, i32 0, i32 16, !dbg !2355
  %119 = load ptr, ptr %mulm47, align 8, !dbg !2355
  %120 = load ptr, ptr %prd.addr, align 8, !dbg !2356
  %z48 = getelementptr inbounds %struct.gcry_mpi_point, ptr %120, i32 0, i32 2, !dbg !2357
  %121 = load ptr, ptr %z48, align 8, !dbg !2357
  %122 = load ptr, ptr %p1.addr, align 8, !dbg !2358
  %z49 = getelementptr inbounds %struct.gcry_mpi_point, ptr %122, i32 0, i32 2, !dbg !2359
  %123 = load ptr, ptr %z49, align 8, !dbg !2359
  %124 = load ptr, ptr %ctx.addr, align 8, !dbg !2360
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %124, i32 0, i32 5, !dbg !2361
  %125 = load ptr, ptr %a, align 8, !dbg !2361
  %126 = load ptr, ptr %ctx.addr, align 8, !dbg !2362
  call void %119(ptr noundef %121, ptr noundef %123, ptr noundef %125, ptr noundef %126) #17, !dbg !2354
  %127 = load ptr, ptr %ctx.addr, align 8, !dbg !2363
  %mulm50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %127, i32 0, i32 16, !dbg !2364
  %128 = load ptr, ptr %mulm50, align 8, !dbg !2364
  %129 = load ptr, ptr %sum.addr, align 8, !dbg !2365
  %z51 = getelementptr inbounds %struct.gcry_mpi_point, ptr %129, i32 0, i32 2, !dbg !2366
  %130 = load ptr, ptr %z51, align 8, !dbg !2366
  %131 = load ptr, ptr %sum.addr, align 8, !dbg !2367
  %z52 = getelementptr inbounds %struct.gcry_mpi_point, ptr %131, i32 0, i32 2, !dbg !2368
  %132 = load ptr, ptr %z52, align 8, !dbg !2368
  %133 = load ptr, ptr %dif_x.addr, align 8, !dbg !2369
  %134 = load ptr, ptr %ctx.addr, align 8, !dbg !2370
  call void %128(ptr noundef %130, ptr noundef %132, ptr noundef %133, ptr noundef %134) #17, !dbg !2363
  %135 = load ptr, ptr %ctx.addr, align 8, !dbg !2371
  %addm53 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %135, i32 0, i32 14, !dbg !2372
  %136 = load ptr, ptr %addm53, align 8, !dbg !2372
  %137 = load ptr, ptr %prd.addr, align 8, !dbg !2373
  %z54 = getelementptr inbounds %struct.gcry_mpi_point, ptr %137, i32 0, i32 2, !dbg !2374
  %138 = load ptr, ptr %z54, align 8, !dbg !2374
  %139 = load ptr, ptr %p1.addr, align 8, !dbg !2375
  %x55 = getelementptr inbounds %struct.gcry_mpi_point, ptr %139, i32 0, i32 0, !dbg !2376
  %140 = load ptr, ptr %x55, align 8, !dbg !2376
  %141 = load ptr, ptr %prd.addr, align 8, !dbg !2377
  %z56 = getelementptr inbounds %struct.gcry_mpi_point, ptr %141, i32 0, i32 2, !dbg !2378
  %142 = load ptr, ptr %z56, align 8, !dbg !2378
  %143 = load ptr, ptr %ctx.addr, align 8, !dbg !2379
  call void %136(ptr noundef %138, ptr noundef %140, ptr noundef %142, ptr noundef %143) #17, !dbg !2371
  %144 = load ptr, ptr %ctx.addr, align 8, !dbg !2380
  %mulm57 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %144, i32 0, i32 16, !dbg !2381
  %145 = load ptr, ptr %mulm57, align 8, !dbg !2381
  %146 = load ptr, ptr %prd.addr, align 8, !dbg !2382
  %z58 = getelementptr inbounds %struct.gcry_mpi_point, ptr %146, i32 0, i32 2, !dbg !2383
  %147 = load ptr, ptr %z58, align 8, !dbg !2383
  %148 = load ptr, ptr %prd.addr, align 8, !dbg !2384
  %z59 = getelementptr inbounds %struct.gcry_mpi_point, ptr %148, i32 0, i32 2, !dbg !2385
  %149 = load ptr, ptr %z59, align 8, !dbg !2385
  %150 = load ptr, ptr %p1.addr, align 8, !dbg !2386
  %z60 = getelementptr inbounds %struct.gcry_mpi_point, ptr %150, i32 0, i32 2, !dbg !2387
  %151 = load ptr, ptr %z60, align 8, !dbg !2387
  %152 = load ptr, ptr %ctx.addr, align 8, !dbg !2388
  call void %145(ptr noundef %147, ptr noundef %149, ptr noundef %151, ptr noundef %152) #17, !dbg !2380
  ret void, !dbg !2389
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2390 dso_local void @mpi_clear(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2391 dso_local ptr @mpi_const(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2394 dso_local void @mpi_mul(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @point_set(ptr noundef %d, ptr noundef %s) #0 align 16 !dbg !2397 {
entry:
  %d.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2401, metadata !DIExpression()), !dbg !2403
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2402, metadata !DIExpression()), !dbg !2404
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2405
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 0, !dbg !2406
  %1 = load ptr, ptr %x, align 8, !dbg !2406
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2407
  %x1 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 0, !dbg !2408
  %3 = load ptr, ptr %x1, align 8, !dbg !2408
  %call = call ptr @mpi_set(ptr noundef %1, ptr noundef %3) #17, !dbg !2409
  %4 = load ptr, ptr %d.addr, align 8, !dbg !2410
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %4, i32 0, i32 1, !dbg !2411
  %5 = load ptr, ptr %y, align 8, !dbg !2411
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2412
  %y2 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 1, !dbg !2413
  %7 = load ptr, ptr %y2, align 8, !dbg !2413
  %call3 = call ptr @mpi_set(ptr noundef %5, ptr noundef %7) #17, !dbg !2414
  %8 = load ptr, ptr %d.addr, align 8, !dbg !2415
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2, !dbg !2416
  %9 = load ptr, ptr %z, align 8, !dbg !2416
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2417
  %z4 = getelementptr inbounds %struct.gcry_mpi_point, ptr %10, i32 0, i32 2, !dbg !2418
  %11 = load ptr, ptr %z4, align 8, !dbg !2418
  %call5 = call ptr @mpi_set(ptr noundef %9, ptr noundef %11) #17, !dbg !2419
  ret void, !dbg !2420
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_ec_curve_point(ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !2421 {
entry:
  %retval = alloca i32, align 4
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %w = alloca ptr, align 8
  %xxx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !2425, metadata !DIExpression()), !dbg !2435
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2426, metadata !DIExpression()), !dbg !2436
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #15, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2427, metadata !DIExpression()), !dbg !2438
  store i32 0, ptr %res, align 4, !dbg !2438
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #15, !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %x, metadata !2428, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #15, !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %y, metadata !2429, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #15, !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %w, metadata !2430, metadata !DIExpression()), !dbg !2442
  %call = call ptr @mpi_new(i32 noundef 0) #17, !dbg !2443
  store ptr %call, ptr %x, align 8, !dbg !2444
  %call1 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !2445
  store ptr %call1, ptr %y, align 8, !dbg !2446
  %call2 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !2447
  store ptr %call2, ptr %w, align 8, !dbg !2448
  %0 = load ptr, ptr %point.addr, align 8, !dbg !2449
  %x3 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 0, !dbg !2451
  %1 = load ptr, ptr %x3, align 8, !dbg !2451
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !2452
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4, !dbg !2453
  %3 = load ptr, ptr %p, align 8, !dbg !2453
  %call4 = call i32 @mpi_cmpabs(ptr noundef %1, ptr noundef %3) #17, !dbg !2454
  %cmp = icmp sge i32 %call4, 0, !dbg !2455
  br i1 %cmp, label %if.then, label %if.end, !dbg !2456

if.then:                                          ; preds = %entry
  br label %leave, !dbg !2457

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %point.addr, align 8, !dbg !2458
  %y5 = getelementptr inbounds %struct.gcry_mpi_point, ptr %4, i32 0, i32 1, !dbg !2460
  %5 = load ptr, ptr %y5, align 8, !dbg !2460
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !2461
  %p6 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %6, i32 0, i32 4, !dbg !2462
  %7 = load ptr, ptr %p6, align 8, !dbg !2462
  %call7 = call i32 @mpi_cmpabs(ptr noundef %5, ptr noundef %7) #17, !dbg !2463
  %cmp8 = icmp sge i32 %call7, 0, !dbg !2464
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2465

if.then9:                                         ; preds = %if.end
  br label %leave, !dbg !2466

if.end10:                                         ; preds = %if.end
  %8 = load ptr, ptr %point.addr, align 8, !dbg !2467
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2, !dbg !2469
  %9 = load ptr, ptr %z, align 8, !dbg !2469
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !2470
  %p11 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %10, i32 0, i32 4, !dbg !2471
  %11 = load ptr, ptr %p11, align 8, !dbg !2471
  %call12 = call i32 @mpi_cmpabs(ptr noundef %9, ptr noundef %11) #17, !dbg !2472
  %cmp13 = icmp sge i32 %call12, 0, !dbg !2473
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2474

if.then14:                                        ; preds = %if.end10
  br label %leave, !dbg !2475

if.end15:                                         ; preds = %if.end10
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !2476
  %model = getelementptr inbounds %struct.mpi_ec_ctx, ptr %12, i32 0, i32 0, !dbg !2477
  %13 = load i32, ptr %model, align 8, !dbg !2477
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 2, label %sw.bb38
  ], !dbg !2478

sw.bb:                                            ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %xxx) #15, !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %xxx, metadata !2431, metadata !DIExpression()), !dbg !2480
  %14 = load ptr, ptr %x, align 8, !dbg !2481
  %15 = load ptr, ptr %y, align 8, !dbg !2483
  %16 = load ptr, ptr %point.addr, align 8, !dbg !2484
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !2485
  %call16 = call i32 @mpi_ec_get_affine(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17) #17, !dbg !2486
  %tobool = icmp ne i32 %call16, 0, !dbg !2486
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !2487

if.then17:                                        ; preds = %sw.bb
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2488

if.end18:                                         ; preds = %sw.bb
  %call19 = call ptr @mpi_new(i32 noundef 0) #17, !dbg !2489
  store ptr %call19, ptr %xxx, align 8, !dbg !2490
  %18 = load ptr, ptr %y, align 8, !dbg !2491
  %19 = load ptr, ptr %y, align 8, !dbg !2492
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !2493
  call void @ec_pow2(ptr noundef %18, ptr noundef %19, ptr noundef %20) #17, !dbg !2494
  %21 = load ptr, ptr %xxx, align 8, !dbg !2495
  %22 = load ptr, ptr %x, align 8, !dbg !2496
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !2497
  call void @ec_pow3(ptr noundef %21, ptr noundef %22, ptr noundef %23) #17, !dbg !2498
  %24 = load ptr, ptr %w, align 8, !dbg !2499
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !2500
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %25, i32 0, i32 5, !dbg !2501
  %26 = load ptr, ptr %a, align 8, !dbg !2501
  %27 = load ptr, ptr %x, align 8, !dbg !2502
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !2503
  call void @ec_mulm(ptr noundef %24, ptr noundef %26, ptr noundef %27, ptr noundef %28) #17, !dbg !2504
  %29 = load ptr, ptr %w, align 8, !dbg !2505
  %30 = load ptr, ptr %w, align 8, !dbg !2506
  %31 = load ptr, ptr %ctx.addr, align 8, !dbg !2507
  %b = getelementptr inbounds %struct.mpi_ec_ctx, ptr %31, i32 0, i32 6, !dbg !2508
  %32 = load ptr, ptr %b, align 8, !dbg !2508
  %33 = load ptr, ptr %ctx.addr, align 8, !dbg !2509
  call void @ec_addm(ptr noundef %29, ptr noundef %30, ptr noundef %32, ptr noundef %33) #17, !dbg !2510
  %34 = load ptr, ptr %w, align 8, !dbg !2511
  %35 = load ptr, ptr %w, align 8, !dbg !2512
  %36 = load ptr, ptr %xxx, align 8, !dbg !2513
  %37 = load ptr, ptr %ctx.addr, align 8, !dbg !2514
  call void @ec_addm(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37) #17, !dbg !2515
  %38 = load ptr, ptr %y, align 8, !dbg !2516
  %39 = load ptr, ptr %w, align 8, !dbg !2518
  %call20 = call i32 @mpi_cmp(ptr noundef %38, ptr noundef %39) #17, !dbg !2519
  %tobool21 = icmp ne i32 %call20, 0, !dbg !2519
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !2520

if.then22:                                        ; preds = %if.end18
  store i32 1, ptr %res, align 4, !dbg !2521
  br label %if.end23, !dbg !2522

if.end23:                                         ; preds = %if.then22, %if.end18
  %40 = load ptr, ptr %xxx, align 8, !dbg !2523
  call void @mpi_free(ptr noundef %40) #17, !dbg !2524
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2525
  br label %cleanup, !dbg !2525

cleanup:                                          ; preds = %if.then17, %if.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %xxx) #15, !dbg !2525
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup62 [
    i32 0, label %cleanup.cont
    i32 2, label %leave
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog, !dbg !2526

sw.bb24:                                          ; preds = %if.end15
  %41 = load ptr, ptr %x, align 8, !dbg !2527
  %42 = load ptr, ptr %point.addr, align 8, !dbg !2530
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !2531
  %call25 = call i32 @mpi_ec_get_affine(ptr noundef %41, ptr noundef null, ptr noundef %42, ptr noundef %43) #17, !dbg !2532
  %tobool26 = icmp ne i32 %call25, 0, !dbg !2532
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2533

if.then27:                                        ; preds = %sw.bb24
  br label %leave, !dbg !2534

if.end28:                                         ; preds = %sw.bb24
  %44 = load ptr, ptr %w, align 8, !dbg !2535
  %45 = load ptr, ptr %ctx.addr, align 8, !dbg !2536
  %a29 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %45, i32 0, i32 5, !dbg !2537
  %46 = load ptr, ptr %a29, align 8, !dbg !2537
  %call30 = call ptr @mpi_const(i32 noundef 4) #17, !dbg !2538
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !2539
  call void @ec_mulm(ptr noundef %44, ptr noundef %46, ptr noundef %call30, ptr noundef %47) #17, !dbg !2540
  %48 = load ptr, ptr %w, align 8, !dbg !2541
  %49 = load ptr, ptr %w, align 8, !dbg !2542
  %call31 = call ptr @mpi_const(i32 noundef 2) #17, !dbg !2543
  %50 = load ptr, ptr %ctx.addr, align 8, !dbg !2544
  call void @ec_addm(ptr noundef %48, ptr noundef %49, ptr noundef %call31, ptr noundef %50) #17, !dbg !2545
  %51 = load ptr, ptr %w, align 8, !dbg !2546
  %52 = load ptr, ptr %w, align 8, !dbg !2547
  %53 = load ptr, ptr %x, align 8, !dbg !2548
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !2549
  call void @ec_mulm(ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54) #17, !dbg !2550
  %55 = load ptr, ptr %y, align 8, !dbg !2551
  %56 = load ptr, ptr %x, align 8, !dbg !2552
  %57 = load ptr, ptr %ctx.addr, align 8, !dbg !2553
  call void @ec_pow2(ptr noundef %55, ptr noundef %56, ptr noundef %57) #17, !dbg !2554
  %58 = load ptr, ptr %w, align 8, !dbg !2555
  %59 = load ptr, ptr %w, align 8, !dbg !2556
  %60 = load ptr, ptr %y, align 8, !dbg !2557
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !2558
  call void @ec_addm(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61) #17, !dbg !2559
  %62 = load ptr, ptr %w, align 8, !dbg !2560
  %63 = load ptr, ptr %w, align 8, !dbg !2561
  %call32 = call ptr @mpi_const(i32 noundef 1) #17, !dbg !2562
  %64 = load ptr, ptr %ctx.addr, align 8, !dbg !2563
  call void @ec_addm(ptr noundef %62, ptr noundef %63, ptr noundef %call32, ptr noundef %64) #17, !dbg !2564
  %65 = load ptr, ptr %w, align 8, !dbg !2565
  %66 = load ptr, ptr %w, align 8, !dbg !2566
  %67 = load ptr, ptr %x, align 8, !dbg !2567
  %68 = load ptr, ptr %ctx.addr, align 8, !dbg !2568
  call void @ec_mulm(ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68) #17, !dbg !2569
  %69 = load ptr, ptr %w, align 8, !dbg !2570
  %70 = load ptr, ptr %w, align 8, !dbg !2571
  %71 = load ptr, ptr %ctx.addr, align 8, !dbg !2572
  %b33 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %71, i32 0, i32 6, !dbg !2573
  %72 = load ptr, ptr %b33, align 8, !dbg !2573
  %73 = load ptr, ptr %ctx.addr, align 8, !dbg !2574
  call void @ec_mulm(ptr noundef %69, ptr noundef %70, ptr noundef %72, ptr noundef %73) #17, !dbg !2575
  %74 = load ptr, ptr %y, align 8, !dbg !2576
  %75 = load ptr, ptr %ctx.addr, align 8, !dbg !2577
  %p34 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %75, i32 0, i32 4, !dbg !2578
  %76 = load ptr, ptr %p34, align 8, !dbg !2578
  %call35 = call ptr @mpi_const(i32 noundef 1) #17, !dbg !2579
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !2580
  call void @ec_subm(ptr noundef %74, ptr noundef %76, ptr noundef %call35, ptr noundef %77) #17, !dbg !2581
  %78 = load ptr, ptr %y, align 8, !dbg !2582
  %79 = load ptr, ptr %y, align 8, !dbg !2583
  call void @mpi_rshift(ptr noundef %78, ptr noundef %79, i32 noundef 1) #17, !dbg !2584
  %80 = load ptr, ptr %w, align 8, !dbg !2585
  %81 = load ptr, ptr %w, align 8, !dbg !2586
  %82 = load ptr, ptr %y, align 8, !dbg !2587
  %83 = load ptr, ptr %ctx.addr, align 8, !dbg !2588
  call void @ec_powm(ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83) #17, !dbg !2589
  %84 = load ptr, ptr %w, align 8, !dbg !2590
  %call36 = call i32 @mpi_cmp_ui(ptr noundef %84, i64 noundef 1) #17, !dbg !2591
  %tobool37 = icmp ne i32 %call36, 0, !dbg !2592
  %lnot = xor i1 %tobool37, true, !dbg !2592
  %lnot.ext = zext i1 %lnot to i32, !dbg !2592
  store i32 %lnot.ext, ptr %res, align 4, !dbg !2593
  br label %sw.epilog, !dbg !2594

sw.bb38:                                          ; preds = %if.end15
  %85 = load ptr, ptr %x, align 8, !dbg !2595
  %86 = load ptr, ptr %y, align 8, !dbg !2598
  %87 = load ptr, ptr %point.addr, align 8, !dbg !2599
  %88 = load ptr, ptr %ctx.addr, align 8, !dbg !2600
  %call39 = call i32 @mpi_ec_get_affine(ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88) #17, !dbg !2601
  %tobool40 = icmp ne i32 %call39, 0, !dbg !2601
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2602

if.then41:                                        ; preds = %sw.bb38
  br label %leave, !dbg !2603

if.end42:                                         ; preds = %sw.bb38
  %89 = load ptr, ptr %w, align 8, !dbg !2604
  %90 = load ptr, ptr %ctx.addr, align 8, !dbg !2605
  %p43 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %90, i32 0, i32 4, !dbg !2606
  %91 = load ptr, ptr %p43, align 8, !dbg !2606
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %91, i32 0, i32 1, !dbg !2607
  %92 = load i32, ptr %nlimbs, align 4, !dbg !2607
  %call44 = call i32 @mpi_resize(ptr noundef %89, i32 noundef %92) #17, !dbg !2608
  %93 = load ptr, ptr %ctx.addr, align 8, !dbg !2609
  %p45 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %93, i32 0, i32 4, !dbg !2610
  %94 = load ptr, ptr %p45, align 8, !dbg !2610
  %nlimbs46 = getelementptr inbounds %struct.gcry_mpi, ptr %94, i32 0, i32 1, !dbg !2611
  %95 = load i32, ptr %nlimbs46, align 4, !dbg !2611
  %96 = load ptr, ptr %w, align 8, !dbg !2612
  %nlimbs47 = getelementptr inbounds %struct.gcry_mpi, ptr %96, i32 0, i32 1, !dbg !2613
  store i32 %95, ptr %nlimbs47, align 4, !dbg !2614
  %97 = load ptr, ptr %ctx.addr, align 8, !dbg !2615
  %pow2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %97, i32 0, i32 17, !dbg !2616
  %98 = load ptr, ptr %pow2, align 8, !dbg !2616
  %99 = load ptr, ptr %x, align 8, !dbg !2617
  %100 = load ptr, ptr %x, align 8, !dbg !2618
  %101 = load ptr, ptr %ctx.addr, align 8, !dbg !2619
  call void %98(ptr noundef %99, ptr noundef %100, ptr noundef %101) #17, !dbg !2615
  %102 = load ptr, ptr %ctx.addr, align 8, !dbg !2620
  %pow248 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %102, i32 0, i32 17, !dbg !2621
  %103 = load ptr, ptr %pow248, align 8, !dbg !2621
  %104 = load ptr, ptr %y, align 8, !dbg !2622
  %105 = load ptr, ptr %y, align 8, !dbg !2623
  %106 = load ptr, ptr %ctx.addr, align 8, !dbg !2624
  call void %103(ptr noundef %104, ptr noundef %105, ptr noundef %106) #17, !dbg !2620
  %107 = load ptr, ptr %ctx.addr, align 8, !dbg !2625
  %dialect = getelementptr inbounds %struct.mpi_ec_ctx, ptr %107, i32 0, i32 1, !dbg !2627
  %108 = load i32, ptr %dialect, align 4, !dbg !2627
  %cmp49 = icmp eq i32 %108, 1, !dbg !2628
  br i1 %cmp49, label %if.then50, label %if.else, !dbg !2629

if.then50:                                        ; preds = %if.end42
  %109 = load ptr, ptr %ctx.addr, align 8, !dbg !2630
  %subm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %109, i32 0, i32 15, !dbg !2631
  %110 = load ptr, ptr %subm, align 8, !dbg !2631
  %111 = load ptr, ptr %w, align 8, !dbg !2632
  %112 = load ptr, ptr %ctx.addr, align 8, !dbg !2633
  %p51 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %112, i32 0, i32 4, !dbg !2634
  %113 = load ptr, ptr %p51, align 8, !dbg !2634
  %114 = load ptr, ptr %x, align 8, !dbg !2635
  %115 = load ptr, ptr %ctx.addr, align 8, !dbg !2636
  call void %110(ptr noundef %111, ptr noundef %113, ptr noundef %114, ptr noundef %115) #17, !dbg !2630
  br label %if.end53, !dbg !2630

if.else:                                          ; preds = %if.end42
  %116 = load ptr, ptr %ctx.addr, align 8, !dbg !2637
  %mulm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %116, i32 0, i32 16, !dbg !2638
  %117 = load ptr, ptr %mulm, align 8, !dbg !2638
  %118 = load ptr, ptr %w, align 8, !dbg !2639
  %119 = load ptr, ptr %ctx.addr, align 8, !dbg !2640
  %a52 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %119, i32 0, i32 5, !dbg !2641
  %120 = load ptr, ptr %a52, align 8, !dbg !2641
  %121 = load ptr, ptr %x, align 8, !dbg !2642
  %122 = load ptr, ptr %ctx.addr, align 8, !dbg !2643
  call void %117(ptr noundef %118, ptr noundef %120, ptr noundef %121, ptr noundef %122) #17, !dbg !2637
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then50
  %123 = load ptr, ptr %ctx.addr, align 8, !dbg !2644
  %addm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %123, i32 0, i32 14, !dbg !2645
  %124 = load ptr, ptr %addm, align 8, !dbg !2645
  %125 = load ptr, ptr %w, align 8, !dbg !2646
  %126 = load ptr, ptr %w, align 8, !dbg !2647
  %127 = load ptr, ptr %y, align 8, !dbg !2648
  %128 = load ptr, ptr %ctx.addr, align 8, !dbg !2649
  call void %124(ptr noundef %125, ptr noundef %126, ptr noundef %127, ptr noundef %128) #17, !dbg !2644
  %129 = load ptr, ptr %ctx.addr, align 8, !dbg !2650
  %mulm54 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %129, i32 0, i32 16, !dbg !2651
  %130 = load ptr, ptr %mulm54, align 8, !dbg !2651
  %131 = load ptr, ptr %x, align 8, !dbg !2652
  %132 = load ptr, ptr %x, align 8, !dbg !2653
  %133 = load ptr, ptr %y, align 8, !dbg !2654
  %134 = load ptr, ptr %ctx.addr, align 8, !dbg !2655
  call void %130(ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134) #17, !dbg !2650
  %135 = load ptr, ptr %ctx.addr, align 8, !dbg !2656
  %mulm55 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %135, i32 0, i32 16, !dbg !2657
  %136 = load ptr, ptr %mulm55, align 8, !dbg !2657
  %137 = load ptr, ptr %x, align 8, !dbg !2658
  %138 = load ptr, ptr %x, align 8, !dbg !2659
  %139 = load ptr, ptr %ctx.addr, align 8, !dbg !2660
  %b56 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %139, i32 0, i32 6, !dbg !2661
  %140 = load ptr, ptr %b56, align 8, !dbg !2661
  %141 = load ptr, ptr %ctx.addr, align 8, !dbg !2662
  call void %136(ptr noundef %137, ptr noundef %138, ptr noundef %140, ptr noundef %141) #17, !dbg !2656
  %142 = load ptr, ptr %ctx.addr, align 8, !dbg !2663
  %subm57 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %142, i32 0, i32 15, !dbg !2664
  %143 = load ptr, ptr %subm57, align 8, !dbg !2664
  %144 = load ptr, ptr %w, align 8, !dbg !2665
  %145 = load ptr, ptr %w, align 8, !dbg !2666
  %146 = load ptr, ptr %x, align 8, !dbg !2667
  %147 = load ptr, ptr %ctx.addr, align 8, !dbg !2668
  call void %143(ptr noundef %144, ptr noundef %145, ptr noundef %146, ptr noundef %147) #17, !dbg !2663
  %148 = load ptr, ptr %w, align 8, !dbg !2669
  %call58 = call i32 @mpi_cmp_ui(ptr noundef %148, i64 noundef 1) #17, !dbg !2671
  %tobool59 = icmp ne i32 %call58, 0, !dbg !2671
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !2672

if.then60:                                        ; preds = %if.end53
  store i32 1, ptr %res, align 4, !dbg !2673
  br label %if.end61, !dbg !2674

if.end61:                                         ; preds = %if.then60, %if.end53
  br label %sw.epilog, !dbg !2675

sw.epilog:                                        ; preds = %if.end15, %if.end61, %if.end28, %cleanup.cont
  br label %leave, !dbg !2676

leave:                                            ; preds = %sw.epilog, %cleanup, %if.then41, %if.then27, %if.then14, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !2434), !dbg !2677
  %149 = load ptr, ptr %w, align 8, !dbg !2678
  call void @mpi_free(ptr noundef %149) #17, !dbg !2679
  %150 = load ptr, ptr %x, align 8, !dbg !2680
  call void @mpi_free(ptr noundef %150) #17, !dbg !2681
  %151 = load ptr, ptr %y, align 8, !dbg !2682
  call void @mpi_free(ptr noundef %151) #17, !dbg !2683
  %152 = load i32, ptr %res, align 4, !dbg !2684
  store i32 %152, ptr %retval, align 4, !dbg !2685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62, !dbg !2685

cleanup62:                                        ; preds = %leave, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #15, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #15, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #15, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #15, !dbg !2686
  %153 = load i32, ptr %retval, align 4, !dbg !2686
  ret i32 %153, !dbg !2686
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2687 dso_local i32 @mpi_cmpabs(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_pow3(ptr noundef %w, ptr noundef %b, ptr noundef %ctx) #0 align 16 !dbg !2688 {
entry:
  %w.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2690, metadata !DIExpression()), !dbg !2693
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2691, metadata !DIExpression()), !dbg !2694
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2692, metadata !DIExpression()), !dbg !2695
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2696
  %1 = load ptr, ptr %b.addr, align 8, !dbg !2697
  %call = call ptr @mpi_const(i32 noundef 3) #17, !dbg !2698
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !2699
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4, !dbg !2700
  %3 = load ptr, ptr %p, align 8, !dbg !2700
  %call1 = call i32 @mpi_powm(ptr noundef %0, ptr noundef %1, ptr noundef %call, ptr noundef %3) #17, !dbg !2701
  ret void, !dbg !2702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2703 dso_local void @mpi_rshift(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_powm(ptr noundef %w, ptr noundef %b, ptr noundef %e, ptr noundef %ctx) #0 align 16 !dbg !2706 {
entry:
  %w.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2710, metadata !DIExpression()), !dbg !2714
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2711, metadata !DIExpression()), !dbg !2715
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !2712, metadata !DIExpression()), !dbg !2716
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2713, metadata !DIExpression()), !dbg !2717
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2718
  %1 = load ptr, ptr %b.addr, align 8, !dbg !2719
  %2 = load ptr, ptr %e.addr, align 8, !dbg !2720
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !2721
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4, !dbg !2722
  %4 = load ptr, ptr %p, align 8, !dbg !2722
  %call = call i32 @mpi_powm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4) #17, !dbg !2723
  ret void, !dbg !2724
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2725 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2726 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2732, metadata !DIExpression()), !dbg !2734
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2733, metadata !DIExpression()), !dbg !2735
  %0 = load i64, ptr %size.addr, align 8, !dbg !2736
  %tobool = icmp ne i64 %0, 0, !dbg !2736
  br i1 %tobool, label %if.end, label %if.then, !dbg !2738

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2739
  br label %return, !dbg !2739

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2740
  %cmp = icmp ule i64 %1, 8, !dbg !2742
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2743

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2744
  br label %return, !dbg !2744

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2745
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2747
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2748

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2749
  %cmp4 = icmp ule i64 %3, 96, !dbg !2750
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2751

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2752
  br label %return, !dbg !2752

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2753
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2755
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2756

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2757
  %cmp9 = icmp ule i64 %5, 192, !dbg !2758
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2759

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2760
  br label %return, !dbg !2760

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2761
  %cmp12 = icmp ule i64 %6, 8, !dbg !2763
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2764

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2765
  br label %return, !dbg !2765

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2766
  %cmp15 = icmp ule i64 %7, 16, !dbg !2768
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2769

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2770
  br label %return, !dbg !2770

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2771
  %cmp18 = icmp ule i64 %8, 32, !dbg !2773
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2774

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2775
  br label %return, !dbg !2775

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2776
  %cmp21 = icmp ule i64 %9, 64, !dbg !2778
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2779

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2780
  br label %return, !dbg !2780

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2781
  %cmp24 = icmp ule i64 %10, 128, !dbg !2783
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2784

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2785
  br label %return, !dbg !2785

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2786
  %cmp27 = icmp ule i64 %11, 256, !dbg !2788
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2789

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2790
  br label %return, !dbg !2790

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2791
  %cmp30 = icmp ule i64 %12, 512, !dbg !2793
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2794

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2795
  br label %return, !dbg !2795

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2796
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2798
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2799

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2800
  br label %return, !dbg !2800

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2801
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2803
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2804

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2805
  br label %return, !dbg !2805

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2806
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2808
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2809

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2810
  br label %return, !dbg !2810

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2811
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2813
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2814

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2815
  br label %return, !dbg !2815

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2816
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2818
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2819

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2820
  br label %return, !dbg !2820

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2821
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2823
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2824

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2825
  br label %return, !dbg !2825

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2826
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2828
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2829

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2830
  br label %return, !dbg !2830

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2831
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2833
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2834

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2835
  br label %return, !dbg !2835

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2836
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2838
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2839

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2840
  br label %return, !dbg !2840

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2841
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2843
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2844

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2845
  br label %return, !dbg !2845

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2846
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2848
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2849

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2850
  br label %return, !dbg !2850

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2851
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2853
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2854

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2855
  br label %return, !dbg !2855

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2856, !range !2858, !noundef !2859
  %tobool69 = trunc i8 %25 to i1, !dbg !2856
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2860

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2861

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #20, !dbg !2862, !srcloc !2865
  unreachable, !dbg !2862

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2866

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2867

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2868

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2870

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2868

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !2872, !srcloc !2874
  br label %do.end75, !dbg !2872

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2868

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2875
  br label %return, !dbg !2875

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2876
  ret i32 %26, !dbg !2876
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2877 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2883 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2887, metadata !DIExpression()), !dbg !2889
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2888, metadata !DIExpression()), !dbg !2890
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2891
  %and = and i32 %0, 17, !dbg !2891
  %cmp = icmp eq i32 %and, 0, !dbg !2891
  %lnot = xor i1 %cmp, true, !dbg !2891
  %lnot1 = xor i1 %lnot, true, !dbg !2891
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2891
  %conv = sext i32 %lnot.ext to i64, !dbg !2891
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2891
  %tobool = icmp ne i64 %expval, 0, !dbg !2891
  br i1 %tobool, label %if.then, label %if.end, !dbg !2893

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2894
  br label %return, !dbg !2894

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2895
  %and2 = and i32 %1, 1, !dbg !2897
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2897
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2898

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2899
  br label %return, !dbg !2899

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2900
  br label %return, !dbg !2900

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2902
  ret i32 %2, !dbg !2902
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2903 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2904 dso_local void @__compiletime_assert_196() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2907 dso_local ptr @mpi_alloc(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2908 dso_local i64 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2912 dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mod(ptr noundef %w, ptr noundef %ec) #0 align 16 !dbg !2913 {
entry:
  %w.addr = alloca ptr, align 8
  %ec.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2917, metadata !DIExpression()), !dbg !2919
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !2918, metadata !DIExpression()), !dbg !2920
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !2921
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, !dbg !2923
  %p_barrett = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 3, !dbg !2924
  %1 = load ptr, ptr %p_barrett, align 8, !dbg !2924
  %tobool = icmp ne ptr %1, null, !dbg !2921
  br i1 %tobool, label %if.then, label %if.else, !dbg !2925

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !2926
  %3 = load ptr, ptr %w.addr, align 8, !dbg !2927
  %4 = load ptr, ptr %ec.addr, align 8, !dbg !2928
  %t1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %4, i32 0, i32 13, !dbg !2929
  %p_barrett2 = getelementptr inbounds %struct.anon.0, ptr %t1, i32 0, i32 3, !dbg !2930
  %5 = load ptr, ptr %p_barrett2, align 8, !dbg !2930
  call void @mpi_mod_barrett(ptr noundef %2, ptr noundef %3, ptr noundef %5) #17, !dbg !2931
  br label %if.end, !dbg !2931

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %w.addr, align 8, !dbg !2932
  %7 = load ptr, ptr %w.addr, align 8, !dbg !2933
  %8 = load ptr, ptr %ec.addr, align 8, !dbg !2934
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %8, i32 0, i32 4, !dbg !2935
  %9 = load ptr, ptr %p, align 8, !dbg !2935
  call void @mpi_mod(ptr noundef %6, ptr noundef %7, ptr noundef %9) #17, !dbg !2936
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2938 dso_local void @mpi_mod_barrett(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2941 dso_local void @mpi_mod(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2942 dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2943 dso_local void @mpi_lshift(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_addm_25519(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !2944 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %n = alloca [4 x i64], align 16
  %borrow = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2946, metadata !DIExpression()), !dbg !2959
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !2947, metadata !DIExpression()), !dbg !2960
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2948, metadata !DIExpression()), !dbg !2961
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2949, metadata !DIExpression()), !dbg !2962
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #15, !dbg !2963
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !2950, metadata !DIExpression()), !dbg !2964
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #15, !dbg !2963
  call void @llvm.dbg.declare(metadata ptr %up, metadata !2951, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #15, !dbg !2963
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !2952, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #15, !dbg !2967
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !2953, metadata !DIExpression()), !dbg !2968
  store i32 4, ptr %wsize, align 4, !dbg !2968
  call void @llvm.lifetime.start.p0(i64 32, ptr %n) #15, !dbg !2969
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2954, metadata !DIExpression()), !dbg !2970
  call void @llvm.lifetime.start.p0(i64 8, ptr %borrow) #15, !dbg !2971
  call void @llvm.dbg.declare(metadata ptr %borrow, metadata !2958, metadata !DIExpression()), !dbg !2972
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2973
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !2975
  %1 = load i32, ptr %nlimbs, align 4, !dbg !2975
  %2 = load i32, ptr %wsize, align 4, !dbg !2976
  %cmp = icmp ne i32 %1, %2, !dbg !2977
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2978

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %u.addr, align 8, !dbg !2979
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !2980
  %4 = load i32, ptr %nlimbs1, align 4, !dbg !2980
  %5 = load i32, ptr %wsize, align 4, !dbg !2981
  %cmp2 = icmp ne i32 %4, %5, !dbg !2982
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !2983

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %v.addr, align 8, !dbg !2984
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !2985
  %7 = load i32, ptr %nlimbs4, align 4, !dbg !2985
  %8 = load i32, ptr %wsize, align 4, !dbg !2986
  %cmp5 = icmp ne i32 %7, %8, !dbg !2987
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2988

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %do.body, !dbg !2989

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2991

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2991

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #19, !dbg !2989
  store i32 %call, ptr %tmp, align 4, !dbg !2991
  %9 = load i32, ptr %tmp, align 4, !dbg !2989
  br label %if.end, !dbg !2993

if.end:                                           ; preds = %do.end, %lor.lhs.false3
  %arraydecay = getelementptr inbounds [4 x i64], ptr %n, i64 0, i64 0, !dbg !2994
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 32, i1 false), !dbg !2994
  %10 = load ptr, ptr %u.addr, align 8, !dbg !2995
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !2996
  %11 = load ptr, ptr %d, align 8, !dbg !2996
  store ptr %11, ptr %up, align 8, !dbg !2997
  %12 = load ptr, ptr %v.addr, align 8, !dbg !2998
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !2999
  %13 = load ptr, ptr %d6, align 8, !dbg !2999
  store ptr %13, ptr %vp, align 8, !dbg !3000
  %14 = load ptr, ptr %w.addr, align 8, !dbg !3001
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !3002
  %15 = load ptr, ptr %d7, align 8, !dbg !3002
  store ptr %15, ptr %wp, align 8, !dbg !3003
  %16 = load ptr, ptr %wp, align 8, !dbg !3004
  %17 = load ptr, ptr %up, align 8, !dbg !3005
  %18 = load ptr, ptr %vp, align 8, !dbg !3006
  %19 = load i32, ptr %wsize, align 4, !dbg !3007
  %call8 = call i64 @mpihelp_add_n(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19) #17, !dbg !3008
  %20 = load ptr, ptr %wp, align 8, !dbg !3009
  %21 = load ptr, ptr %wp, align 8, !dbg !3010
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !3011
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %22, i32 0, i32 4, !dbg !3012
  %23 = load ptr, ptr %p, align 8, !dbg !3012
  %d9 = getelementptr inbounds %struct.gcry_mpi, ptr %23, i32 0, i32 5, !dbg !3013
  %24 = load ptr, ptr %d9, align 8, !dbg !3013
  %25 = load i32, ptr %wsize, align 4, !dbg !3014
  %call10 = call i64 @mpihelp_sub_n(ptr noundef %20, ptr noundef %21, ptr noundef %24, i32 noundef %25) #17, !dbg !3015
  store i64 %call10, ptr %borrow, align 8, !dbg !3016
  %arraydecay11 = getelementptr inbounds [4 x i64], ptr %n, i64 0, i64 0, !dbg !3017
  %26 = load ptr, ptr %ctx.addr, align 8, !dbg !3018
  %p12 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %26, i32 0, i32 4, !dbg !3019
  %27 = load ptr, ptr %p12, align 8, !dbg !3019
  %d13 = getelementptr inbounds %struct.gcry_mpi, ptr %27, i32 0, i32 5, !dbg !3020
  %28 = load ptr, ptr %d13, align 8, !dbg !3020
  %29 = load i32, ptr %wsize, align 4, !dbg !3021
  %30 = load i64, ptr %borrow, align 8, !dbg !3022
  %cmp14 = icmp ne i64 %30, 0, !dbg !3023
  %conv = zext i1 %cmp14 to i32, !dbg !3023
  %conv15 = sext i32 %conv to i64, !dbg !3024
  call void @mpih_set_cond(ptr noundef %arraydecay11, ptr noundef %28, i32 noundef %29, i64 noundef %conv15) #17, !dbg !3025
  %31 = load ptr, ptr %wp, align 8, !dbg !3026
  %32 = load ptr, ptr %wp, align 8, !dbg !3027
  %arraydecay16 = getelementptr inbounds [4 x i64], ptr %n, i64 0, i64 0, !dbg !3028
  %33 = load i32, ptr %wsize, align 4, !dbg !3029
  %call17 = call i64 @mpihelp_add_n(ptr noundef %31, ptr noundef %32, ptr noundef %arraydecay16, i32 noundef %33) #17, !dbg !3030
  %34 = load ptr, ptr %wp, align 8, !dbg !3031
  %arrayidx = getelementptr i64, ptr %34, i64 3, !dbg !3031
  %35 = load i64, ptr %arrayidx, align 8, !dbg !3032
  %and = and i64 %35, 9223372036854775807, !dbg !3032
  store i64 %and, ptr %arrayidx, align 8, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 8, ptr %borrow) #15, !dbg !3033
  call void @llvm.lifetime.end.p0(i64 32, ptr %n) #15, !dbg !3033
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #15, !dbg !3033
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #15, !dbg !3033
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #15, !dbg !3033
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #15, !dbg !3033
  ret void, !dbg !3033
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_subm_25519(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !3034 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %n = alloca [4 x i64], align 16
  %borrow = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3036, metadata !DIExpression()), !dbg !3046
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3037, metadata !DIExpression()), !dbg !3047
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3038, metadata !DIExpression()), !dbg !3048
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3039, metadata !DIExpression()), !dbg !3049
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #15, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !3040, metadata !DIExpression()), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #15, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %up, metadata !3041, metadata !DIExpression()), !dbg !3052
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #15, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !3042, metadata !DIExpression()), !dbg !3053
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #15, !dbg !3054
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !3043, metadata !DIExpression()), !dbg !3055
  store i32 4, ptr %wsize, align 4, !dbg !3055
  call void @llvm.lifetime.start.p0(i64 32, ptr %n) #15, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3044, metadata !DIExpression()), !dbg !3057
  call void @llvm.lifetime.start.p0(i64 8, ptr %borrow) #15, !dbg !3058
  call void @llvm.dbg.declare(metadata ptr %borrow, metadata !3045, metadata !DIExpression()), !dbg !3059
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3060
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !3062
  %1 = load i32, ptr %nlimbs, align 4, !dbg !3062
  %2 = load i32, ptr %wsize, align 4, !dbg !3063
  %cmp = icmp ne i32 %1, %2, !dbg !3064
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3065

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %u.addr, align 8, !dbg !3066
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !3067
  %4 = load i32, ptr %nlimbs1, align 4, !dbg !3067
  %5 = load i32, ptr %wsize, align 4, !dbg !3068
  %cmp2 = icmp ne i32 %4, %5, !dbg !3069
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !3070

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %v.addr, align 8, !dbg !3071
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !3072
  %7 = load i32, ptr %nlimbs4, align 4, !dbg !3072
  %8 = load i32, ptr %wsize, align 4, !dbg !3073
  %cmp5 = icmp ne i32 %7, %8, !dbg !3074
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3075

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %do.body, !dbg !3076

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3078

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3078

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #19, !dbg !3076
  store i32 %call, ptr %tmp, align 4, !dbg !3078
  %9 = load i32, ptr %tmp, align 4, !dbg !3076
  br label %if.end, !dbg !3080

if.end:                                           ; preds = %do.end, %lor.lhs.false3
  %arraydecay = getelementptr inbounds [4 x i64], ptr %n, i64 0, i64 0, !dbg !3081
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 32, i1 false), !dbg !3081
  %10 = load ptr, ptr %u.addr, align 8, !dbg !3082
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !3083
  %11 = load ptr, ptr %d, align 8, !dbg !3083
  store ptr %11, ptr %up, align 8, !dbg !3084
  %12 = load ptr, ptr %v.addr, align 8, !dbg !3085
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !3086
  %13 = load ptr, ptr %d6, align 8, !dbg !3086
  store ptr %13, ptr %vp, align 8, !dbg !3087
  %14 = load ptr, ptr %w.addr, align 8, !dbg !3088
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !3089
  %15 = load ptr, ptr %d7, align 8, !dbg !3089
  store ptr %15, ptr %wp, align 8, !dbg !3090
  %16 = load ptr, ptr %wp, align 8, !dbg !3091
  %17 = load ptr, ptr %up, align 8, !dbg !3092
  %18 = load ptr, ptr %vp, align 8, !dbg !3093
  %19 = load i32, ptr %wsize, align 4, !dbg !3094
  %call8 = call i64 @mpihelp_sub_n(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19) #17, !dbg !3095
  store i64 %call8, ptr %borrow, align 8, !dbg !3096
  %arraydecay9 = getelementptr inbounds [4 x i64], ptr %n, i64 0, i64 0, !dbg !3097
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !3098
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %20, i32 0, i32 4, !dbg !3099
  %21 = load ptr, ptr %p, align 8, !dbg !3099
  %d10 = getelementptr inbounds %struct.gcry_mpi, ptr %21, i32 0, i32 5, !dbg !3100
  %22 = load ptr, ptr %d10, align 8, !dbg !3100
  %23 = load i32, ptr %wsize, align 4, !dbg !3101
  %24 = load i64, ptr %borrow, align 8, !dbg !3102
  %cmp11 = icmp ne i64 %24, 0, !dbg !3103
  %conv = zext i1 %cmp11 to i32, !dbg !3103
  %conv12 = sext i32 %conv to i64, !dbg !3104
  call void @mpih_set_cond(ptr noundef %arraydecay9, ptr noundef %22, i32 noundef %23, i64 noundef %conv12) #17, !dbg !3105
  %25 = load ptr, ptr %wp, align 8, !dbg !3106
  %26 = load ptr, ptr %wp, align 8, !dbg !3107
  %arraydecay13 = getelementptr inbounds [4 x i64], ptr %n, i64 0, i64 0, !dbg !3108
  %27 = load i32, ptr %wsize, align 4, !dbg !3109
  %call14 = call i64 @mpihelp_add_n(ptr noundef %25, ptr noundef %26, ptr noundef %arraydecay13, i32 noundef %27) #17, !dbg !3110
  %28 = load ptr, ptr %wp, align 8, !dbg !3111
  %arrayidx = getelementptr i64, ptr %28, i64 3, !dbg !3111
  %29 = load i64, ptr %arrayidx, align 8, !dbg !3112
  %and = and i64 %29, 9223372036854775807, !dbg !3112
  store i64 %and, ptr %arrayidx, align 8, !dbg !3112
  call void @llvm.lifetime.end.p0(i64 8, ptr %borrow) #15, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 32, ptr %n) #15, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #15, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #15, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #15, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #15, !dbg !3113
  ret void, !dbg !3113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mulm_25519(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !3114 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %n = alloca [8 x i64], align 16
  %m = alloca [5 x i64], align 16
  %cy = alloca i64, align 8
  %msb = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3116, metadata !DIExpression()), !dbg !3132
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3117, metadata !DIExpression()), !dbg !3133
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3118, metadata !DIExpression()), !dbg !3134
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3119, metadata !DIExpression()), !dbg !3135
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #15, !dbg !3136
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !3120, metadata !DIExpression()), !dbg !3137
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #15, !dbg !3136
  call void @llvm.dbg.declare(metadata ptr %up, metadata !3121, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #15, !dbg !3136
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !3122, metadata !DIExpression()), !dbg !3139
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #15, !dbg !3140
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !3123, metadata !DIExpression()), !dbg !3141
  store i32 4, ptr %wsize, align 4, !dbg !3141
  call void @llvm.lifetime.start.p0(i64 64, ptr %n) #15, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3124, metadata !DIExpression()), !dbg !3143
  call void @llvm.lifetime.start.p0(i64 40, ptr %m) #15, !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %m, metadata !3126, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #15, !dbg !3146
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !3130, metadata !DIExpression()), !dbg !3147
  call void @llvm.lifetime.start.p0(i64 4, ptr %msb) #15, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %msb, metadata !3131, metadata !DIExpression()), !dbg !3149
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3150
  %1 = load ptr, ptr %w.addr, align 8, !dbg !3151
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1, !dbg !3153
  %2 = load i32, ptr %nlimbs, align 4, !dbg !3153
  %3 = load i32, ptr %wsize, align 4, !dbg !3154
  %cmp = icmp ne i32 %2, %3, !dbg !3155
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3156

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %u.addr, align 8, !dbg !3157
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1, !dbg !3158
  %5 = load i32, ptr %nlimbs1, align 4, !dbg !3158
  %6 = load i32, ptr %wsize, align 4, !dbg !3159
  %cmp2 = icmp ne i32 %5, %6, !dbg !3160
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !3161

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %v.addr, align 8, !dbg !3162
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1, !dbg !3163
  %8 = load i32, ptr %nlimbs4, align 4, !dbg !3163
  %9 = load i32, ptr %wsize, align 4, !dbg !3164
  %cmp5 = icmp ne i32 %8, %9, !dbg !3165
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3166

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %do.body, !dbg !3167

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3169

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3169

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #19, !dbg !3167
  store i32 %call, ptr %tmp, align 4, !dbg !3169
  %10 = load i32, ptr %tmp, align 4, !dbg !3167
  br label %if.end, !dbg !3171

if.end:                                           ; preds = %do.end, %lor.lhs.false3
  %11 = load ptr, ptr %u.addr, align 8, !dbg !3172
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 5, !dbg !3173
  %12 = load ptr, ptr %d, align 8, !dbg !3173
  store ptr %12, ptr %up, align 8, !dbg !3174
  %13 = load ptr, ptr %v.addr, align 8, !dbg !3175
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 5, !dbg !3176
  %14 = load ptr, ptr %d6, align 8, !dbg !3176
  store ptr %14, ptr %vp, align 8, !dbg !3177
  %15 = load ptr, ptr %w.addr, align 8, !dbg !3178
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 5, !dbg !3179
  %16 = load ptr, ptr %d7, align 8, !dbg !3179
  store ptr %16, ptr %wp, align 8, !dbg !3180
  %arraydecay = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3181
  %17 = load ptr, ptr %up, align 8, !dbg !3182
  %18 = load ptr, ptr %vp, align 8, !dbg !3183
  %19 = load i32, ptr %wsize, align 4, !dbg !3184
  call void @mpihelp_mul_n(ptr noundef %arraydecay, ptr noundef %17, ptr noundef %18, i32 noundef %19) #17, !dbg !3185
  %20 = load ptr, ptr %wp, align 8, !dbg !3186
  %arraydecay8 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3187
  %21 = load i32, ptr %wsize, align 4, !dbg !3188
  %mul = mul i32 %21, 8, !dbg !3189
  %conv = sext i32 %mul to i64, !dbg !3188
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 16 %arraydecay8, i64 %conv, i1 false), !dbg !3187
  %22 = load ptr, ptr %wp, align 8, !dbg !3190
  %arrayidx = getelementptr i64, ptr %22, i64 3, !dbg !3190
  %23 = load i64, ptr %arrayidx, align 8, !dbg !3191
  %and = and i64 %23, 9223372036854775807, !dbg !3191
  store i64 %and, ptr %arrayidx, align 8, !dbg !3191
  %arraydecay9 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3192
  %arraydecay10 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3193
  %add.ptr = getelementptr i64, ptr %arraydecay10, i64 4, !dbg !3194
  %add.ptr11 = getelementptr i64, ptr %add.ptr, i64 -1, !dbg !3195
  %24 = load i32, ptr %wsize, align 4, !dbg !3196
  %add = add i32 %24, 1, !dbg !3197
  %mul12 = mul i32 %add, 8, !dbg !3198
  %conv13 = sext i32 %mul12 to i64, !dbg !3199
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay9, ptr align 8 %add.ptr11, i64 %conv13, i1 false), !dbg !3192
  %arraydecay14 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3200
  %arraydecay15 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3201
  %call16 = call i64 @mpihelp_rshift(ptr noundef %arraydecay14, ptr noundef %arraydecay15, i32 noundef 5, i32 noundef 63) #17, !dbg !3202
  %arraydecay17 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3203
  %arraydecay18 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3203
  %25 = load i32, ptr %wsize, align 4, !dbg !3204
  %mul19 = mul i32 %25, 8, !dbg !3205
  %conv20 = sext i32 %mul19 to i64, !dbg !3204
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay17, ptr align 16 %arraydecay18, i64 %conv20, i1 false), !dbg !3203
  %arraydecay21 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3206
  %arraydecay22 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3207
  %call23 = call i64 @mpihelp_lshift(ptr noundef %arraydecay21, ptr noundef %arraydecay22, i32 noundef 4, i32 noundef 4) #17, !dbg !3208
  store i64 %call23, ptr %cy, align 8, !dbg !3209
  %26 = load i64, ptr %cy, align 8, !dbg !3210
  %arrayidx24 = getelementptr [5 x i64], ptr %m, i64 0, i64 4, !dbg !3211
  store i64 %26, ptr %arrayidx24, align 16, !dbg !3212
  %arraydecay25 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3213
  %arraydecay26 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3214
  %arraydecay27 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3215
  %27 = load i32, ptr %wsize, align 4, !dbg !3216
  %call28 = call i64 @mpihelp_add_n(ptr noundef %arraydecay25, ptr noundef %arraydecay26, ptr noundef %arraydecay27, i32 noundef %27) #17, !dbg !3217
  store i64 %call28, ptr %cy, align 8, !dbg !3218
  %28 = load i64, ptr %cy, align 8, !dbg !3219
  %arrayidx29 = getelementptr [5 x i64], ptr %m, i64 0, i64 4, !dbg !3220
  %29 = load i64, ptr %arrayidx29, align 16, !dbg !3221
  %add30 = add i64 %29, %28, !dbg !3221
  store i64 %add30, ptr %arrayidx29, align 16, !dbg !3221
  %arraydecay31 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3222
  %arraydecay32 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3223
  %arraydecay33 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3224
  %30 = load i32, ptr %wsize, align 4, !dbg !3225
  %call34 = call i64 @mpihelp_add_n(ptr noundef %arraydecay31, ptr noundef %arraydecay32, ptr noundef %arraydecay33, i32 noundef %30) #17, !dbg !3226
  store i64 %call34, ptr %cy, align 8, !dbg !3227
  %31 = load i64, ptr %cy, align 8, !dbg !3228
  %arrayidx35 = getelementptr [5 x i64], ptr %m, i64 0, i64 4, !dbg !3229
  %32 = load i64, ptr %arrayidx35, align 16, !dbg !3230
  %add36 = add i64 %32, %31, !dbg !3230
  store i64 %add36, ptr %arrayidx35, align 16, !dbg !3230
  %arraydecay37 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3231
  %arraydecay38 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3232
  %arraydecay39 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 0, !dbg !3233
  %33 = load i32, ptr %wsize, align 4, !dbg !3234
  %call40 = call i64 @mpihelp_add_n(ptr noundef %arraydecay37, ptr noundef %arraydecay38, ptr noundef %arraydecay39, i32 noundef %33) #17, !dbg !3235
  store i64 %call40, ptr %cy, align 8, !dbg !3236
  %34 = load i64, ptr %cy, align 8, !dbg !3237
  %arrayidx41 = getelementptr [5 x i64], ptr %m, i64 0, i64 4, !dbg !3238
  %35 = load i64, ptr %arrayidx41, align 16, !dbg !3239
  %add42 = add i64 %35, %34, !dbg !3239
  store i64 %add42, ptr %arrayidx41, align 16, !dbg !3239
  %36 = load ptr, ptr %wp, align 8, !dbg !3240
  %37 = load ptr, ptr %wp, align 8, !dbg !3241
  %arraydecay43 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3242
  %38 = load i32, ptr %wsize, align 4, !dbg !3243
  %call44 = call i64 @mpihelp_add_n(ptr noundef %36, ptr noundef %37, ptr noundef %arraydecay43, i32 noundef %38) #17, !dbg !3244
  store i64 %call44, ptr %cy, align 8, !dbg !3245
  %39 = load i64, ptr %cy, align 8, !dbg !3246
  %arrayidx45 = getelementptr [5 x i64], ptr %m, i64 0, i64 4, !dbg !3247
  %40 = load i64, ptr %arrayidx45, align 16, !dbg !3248
  %add46 = add i64 %40, %39, !dbg !3248
  store i64 %add46, ptr %arrayidx45, align 16, !dbg !3248
  %arraydecay47 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3249
  %41 = load i32, ptr %wsize, align 4, !dbg !3250
  %mul48 = mul i32 %41, 8, !dbg !3251
  %conv49 = sext i32 %mul48 to i64, !dbg !3250
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay47, i8 0, i64 %conv49, i1 false), !dbg !3249
  %42 = load ptr, ptr %wp, align 8, !dbg !3252
  %arrayidx50 = getelementptr i64, ptr %42, i64 3, !dbg !3252
  %43 = load i64, ptr %arrayidx50, align 8, !dbg !3252
  %shr = lshr i64 %43, 63, !dbg !3253
  %conv51 = trunc i64 %shr to i32, !dbg !3254
  store i32 %conv51, ptr %msb, align 4, !dbg !3255
  %arrayidx52 = getelementptr [5 x i64], ptr %m, i64 0, i64 4, !dbg !3256
  %44 = load i64, ptr %arrayidx52, align 16, !dbg !3256
  %mul53 = mul i64 %44, 2, !dbg !3257
  %45 = load i32, ptr %msb, align 4, !dbg !3258
  %conv54 = sext i32 %45 to i64, !dbg !3258
  %add55 = add i64 %mul53, %conv54, !dbg !3259
  %mul56 = mul i64 %add55, 19, !dbg !3260
  %arrayidx57 = getelementptr [5 x i64], ptr %m, i64 0, i64 0, !dbg !3261
  store i64 %mul56, ptr %arrayidx57, align 16, !dbg !3262
  %46 = load ptr, ptr %wp, align 8, !dbg !3263
  %arrayidx58 = getelementptr i64, ptr %46, i64 3, !dbg !3263
  %47 = load i64, ptr %arrayidx58, align 8, !dbg !3264
  %and59 = and i64 %47, 9223372036854775807, !dbg !3264
  store i64 %and59, ptr %arrayidx58, align 8, !dbg !3264
  %48 = load ptr, ptr %wp, align 8, !dbg !3265
  %49 = load ptr, ptr %wp, align 8, !dbg !3266
  %arraydecay60 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3267
  %50 = load i32, ptr %wsize, align 4, !dbg !3268
  %call61 = call i64 @mpihelp_add_n(ptr noundef %48, ptr noundef %49, ptr noundef %arraydecay60, i32 noundef %50) #17, !dbg !3269
  %arrayidx62 = getelementptr [5 x i64], ptr %m, i64 0, i64 0, !dbg !3270
  store i64 0, ptr %arrayidx62, align 16, !dbg !3271
  %51 = load ptr, ptr %wp, align 8, !dbg !3272
  %52 = load ptr, ptr %wp, align 8, !dbg !3273
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !3274
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %53, i32 0, i32 4, !dbg !3275
  %54 = load ptr, ptr %p, align 8, !dbg !3275
  %d63 = getelementptr inbounds %struct.gcry_mpi, ptr %54, i32 0, i32 5, !dbg !3276
  %55 = load ptr, ptr %d63, align 8, !dbg !3276
  %56 = load i32, ptr %wsize, align 4, !dbg !3277
  %call64 = call i64 @mpihelp_sub_n(ptr noundef %51, ptr noundef %52, ptr noundef %55, i32 noundef %56) #17, !dbg !3278
  store i64 %call64, ptr %cy, align 8, !dbg !3279
  %arraydecay65 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3280
  %57 = load ptr, ptr %ctx.addr, align 8, !dbg !3281
  %p66 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %57, i32 0, i32 4, !dbg !3282
  %58 = load ptr, ptr %p66, align 8, !dbg !3282
  %d67 = getelementptr inbounds %struct.gcry_mpi, ptr %58, i32 0, i32 5, !dbg !3283
  %59 = load ptr, ptr %d67, align 8, !dbg !3283
  %60 = load i32, ptr %wsize, align 4, !dbg !3284
  %61 = load i64, ptr %cy, align 8, !dbg !3285
  %cmp68 = icmp ne i64 %61, 0, !dbg !3286
  %conv69 = zext i1 %cmp68 to i32, !dbg !3286
  %conv70 = sext i32 %conv69 to i64, !dbg !3287
  call void @mpih_set_cond(ptr noundef %arraydecay65, ptr noundef %59, i32 noundef %60, i64 noundef %conv70) #17, !dbg !3288
  %62 = load ptr, ptr %wp, align 8, !dbg !3289
  %63 = load ptr, ptr %wp, align 8, !dbg !3290
  %arraydecay71 = getelementptr inbounds [5 x i64], ptr %m, i64 0, i64 0, !dbg !3291
  %64 = load i32, ptr %wsize, align 4, !dbg !3292
  %call72 = call i64 @mpihelp_add_n(ptr noundef %62, ptr noundef %63, ptr noundef %arraydecay71, i32 noundef %64) #17, !dbg !3293
  call void @llvm.lifetime.end.p0(i64 4, ptr %msb) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 40, ptr %m) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 64, ptr %n) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #15, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #15, !dbg !3294
  ret void, !dbg !3294
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mul2_25519(ptr noundef %w, ptr noundef %u, ptr noundef %ctx) #0 align 16 !dbg !3295 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3297, metadata !DIExpression()), !dbg !3300
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3298, metadata !DIExpression()), !dbg !3301
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3299, metadata !DIExpression()), !dbg !3302
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3303
  %1 = load ptr, ptr %u.addr, align 8, !dbg !3304
  %2 = load ptr, ptr %u.addr, align 8, !dbg !3305
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3306
  call void @ec_addm_25519(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17, !dbg !3307
  ret void, !dbg !3308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_pow2_25519(ptr noundef %w, ptr noundef %b, ptr noundef %ctx) #0 align 16 !dbg !3309 {
entry:
  %w.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3311, metadata !DIExpression()), !dbg !3314
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !3312, metadata !DIExpression()), !dbg !3315
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3313, metadata !DIExpression()), !dbg !3316
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3317
  %1 = load ptr, ptr %b.addr, align 8, !dbg !3318
  %2 = load ptr, ptr %b.addr, align 8, !dbg !3319
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3320
  call void @ec_mulm_25519(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17, !dbg !3321
  ret void, !dbg !3322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_addm_448(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !3323 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %n = alloca [7 x i64], align 16
  %cy = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3325, metadata !DIExpression()), !dbg !3338
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3326, metadata !DIExpression()), !dbg !3339
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3327, metadata !DIExpression()), !dbg !3340
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3328, metadata !DIExpression()), !dbg !3341
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #15, !dbg !3342
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !3329, metadata !DIExpression()), !dbg !3343
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #15, !dbg !3342
  call void @llvm.dbg.declare(metadata ptr %up, metadata !3330, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #15, !dbg !3342
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !3331, metadata !DIExpression()), !dbg !3345
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #15, !dbg !3346
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !3332, metadata !DIExpression()), !dbg !3347
  store i32 7, ptr %wsize, align 4, !dbg !3347
  call void @llvm.lifetime.start.p0(i64 56, ptr %n) #15, !dbg !3348
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3333, metadata !DIExpression()), !dbg !3349
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #15, !dbg !3350
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !3337, metadata !DIExpression()), !dbg !3351
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3352
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !3354
  %1 = load i32, ptr %nlimbs, align 4, !dbg !3354
  %2 = load i32, ptr %wsize, align 4, !dbg !3355
  %cmp = icmp ne i32 %1, %2, !dbg !3356
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3357

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %u.addr, align 8, !dbg !3358
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !3359
  %4 = load i32, ptr %nlimbs1, align 4, !dbg !3359
  %5 = load i32, ptr %wsize, align 4, !dbg !3360
  %cmp2 = icmp ne i32 %4, %5, !dbg !3361
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !3362

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %v.addr, align 8, !dbg !3363
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !3364
  %7 = load i32, ptr %nlimbs4, align 4, !dbg !3364
  %8 = load i32, ptr %wsize, align 4, !dbg !3365
  %cmp5 = icmp ne i32 %7, %8, !dbg !3366
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3367

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %do.body, !dbg !3368

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3370

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3370

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.21) #19, !dbg !3368
  store i32 %call, ptr %tmp, align 4, !dbg !3370
  %9 = load i32, ptr %tmp, align 4, !dbg !3368
  br label %if.end, !dbg !3372

if.end:                                           ; preds = %do.end, %lor.lhs.false3
  %arraydecay = getelementptr inbounds [7 x i64], ptr %n, i64 0, i64 0, !dbg !3373
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 56, i1 false), !dbg !3373
  %10 = load ptr, ptr %u.addr, align 8, !dbg !3374
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !3375
  %11 = load ptr, ptr %d, align 8, !dbg !3375
  store ptr %11, ptr %up, align 8, !dbg !3376
  %12 = load ptr, ptr %v.addr, align 8, !dbg !3377
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !3378
  %13 = load ptr, ptr %d6, align 8, !dbg !3378
  store ptr %13, ptr %vp, align 8, !dbg !3379
  %14 = load ptr, ptr %w.addr, align 8, !dbg !3380
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !3381
  %15 = load ptr, ptr %d7, align 8, !dbg !3381
  store ptr %15, ptr %wp, align 8, !dbg !3382
  %16 = load ptr, ptr %wp, align 8, !dbg !3383
  %17 = load ptr, ptr %up, align 8, !dbg !3384
  %18 = load ptr, ptr %vp, align 8, !dbg !3385
  %19 = load i32, ptr %wsize, align 4, !dbg !3386
  %call8 = call i64 @mpihelp_add_n(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19) #17, !dbg !3387
  store i64 %call8, ptr %cy, align 8, !dbg !3388
  %arraydecay9 = getelementptr inbounds [7 x i64], ptr %n, i64 0, i64 0, !dbg !3389
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !3390
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %20, i32 0, i32 4, !dbg !3391
  %21 = load ptr, ptr %p, align 8, !dbg !3391
  %d10 = getelementptr inbounds %struct.gcry_mpi, ptr %21, i32 0, i32 5, !dbg !3392
  %22 = load ptr, ptr %d10, align 8, !dbg !3392
  %23 = load i32, ptr %wsize, align 4, !dbg !3393
  %24 = load i64, ptr %cy, align 8, !dbg !3394
  %cmp11 = icmp ne i64 %24, 0, !dbg !3395
  %conv = zext i1 %cmp11 to i32, !dbg !3395
  %conv12 = sext i32 %conv to i64, !dbg !3396
  call void @mpih_set_cond(ptr noundef %arraydecay9, ptr noundef %22, i32 noundef %23, i64 noundef %conv12) #17, !dbg !3397
  %25 = load ptr, ptr %wp, align 8, !dbg !3398
  %26 = load ptr, ptr %wp, align 8, !dbg !3399
  %arraydecay13 = getelementptr inbounds [7 x i64], ptr %n, i64 0, i64 0, !dbg !3400
  %27 = load i32, ptr %wsize, align 4, !dbg !3401
  %call14 = call i64 @mpihelp_sub_n(ptr noundef %25, ptr noundef %26, ptr noundef %arraydecay13, i32 noundef %27) #17, !dbg !3402
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #15, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 56, ptr %n) #15, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #15, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #15, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #15, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #15, !dbg !3403
  ret void, !dbg !3403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_subm_448(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !3404 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %n = alloca [7 x i64], align 16
  %borrow = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3406, metadata !DIExpression()), !dbg !3416
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3407, metadata !DIExpression()), !dbg !3417
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3408, metadata !DIExpression()), !dbg !3418
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3409, metadata !DIExpression()), !dbg !3419
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #15, !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !3410, metadata !DIExpression()), !dbg !3421
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #15, !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %up, metadata !3411, metadata !DIExpression()), !dbg !3422
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #15, !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !3412, metadata !DIExpression()), !dbg !3423
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #15, !dbg !3424
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !3413, metadata !DIExpression()), !dbg !3425
  store i32 7, ptr %wsize, align 4, !dbg !3425
  call void @llvm.lifetime.start.p0(i64 56, ptr %n) #15, !dbg !3426
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3414, metadata !DIExpression()), !dbg !3427
  call void @llvm.lifetime.start.p0(i64 8, ptr %borrow) #15, !dbg !3428
  call void @llvm.dbg.declare(metadata ptr %borrow, metadata !3415, metadata !DIExpression()), !dbg !3429
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3430
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !3432
  %1 = load i32, ptr %nlimbs, align 4, !dbg !3432
  %2 = load i32, ptr %wsize, align 4, !dbg !3433
  %cmp = icmp ne i32 %1, %2, !dbg !3434
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3435

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %u.addr, align 8, !dbg !3436
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !3437
  %4 = load i32, ptr %nlimbs1, align 4, !dbg !3437
  %5 = load i32, ptr %wsize, align 4, !dbg !3438
  %cmp2 = icmp ne i32 %4, %5, !dbg !3439
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !3440

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %v.addr, align 8, !dbg !3441
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !3442
  %7 = load i32, ptr %nlimbs4, align 4, !dbg !3442
  %8 = load i32, ptr %wsize, align 4, !dbg !3443
  %cmp5 = icmp ne i32 %7, %8, !dbg !3444
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3445

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %do.body, !dbg !3446

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3448

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3448

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #19, !dbg !3446
  store i32 %call, ptr %tmp, align 4, !dbg !3448
  %9 = load i32, ptr %tmp, align 4, !dbg !3446
  br label %if.end, !dbg !3450

if.end:                                           ; preds = %do.end, %lor.lhs.false3
  %arraydecay = getelementptr inbounds [7 x i64], ptr %n, i64 0, i64 0, !dbg !3451
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 56, i1 false), !dbg !3451
  %10 = load ptr, ptr %u.addr, align 8, !dbg !3452
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !3453
  %11 = load ptr, ptr %d, align 8, !dbg !3453
  store ptr %11, ptr %up, align 8, !dbg !3454
  %12 = load ptr, ptr %v.addr, align 8, !dbg !3455
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !3456
  %13 = load ptr, ptr %d6, align 8, !dbg !3456
  store ptr %13, ptr %vp, align 8, !dbg !3457
  %14 = load ptr, ptr %w.addr, align 8, !dbg !3458
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !3459
  %15 = load ptr, ptr %d7, align 8, !dbg !3459
  store ptr %15, ptr %wp, align 8, !dbg !3460
  %16 = load ptr, ptr %wp, align 8, !dbg !3461
  %17 = load ptr, ptr %up, align 8, !dbg !3462
  %18 = load ptr, ptr %vp, align 8, !dbg !3463
  %19 = load i32, ptr %wsize, align 4, !dbg !3464
  %call8 = call i64 @mpihelp_sub_n(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19) #17, !dbg !3465
  store i64 %call8, ptr %borrow, align 8, !dbg !3466
  %arraydecay9 = getelementptr inbounds [7 x i64], ptr %n, i64 0, i64 0, !dbg !3467
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !3468
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %20, i32 0, i32 4, !dbg !3469
  %21 = load ptr, ptr %p, align 8, !dbg !3469
  %d10 = getelementptr inbounds %struct.gcry_mpi, ptr %21, i32 0, i32 5, !dbg !3470
  %22 = load ptr, ptr %d10, align 8, !dbg !3470
  %23 = load i32, ptr %wsize, align 4, !dbg !3471
  %24 = load i64, ptr %borrow, align 8, !dbg !3472
  %cmp11 = icmp ne i64 %24, 0, !dbg !3473
  %conv = zext i1 %cmp11 to i32, !dbg !3473
  %conv12 = sext i32 %conv to i64, !dbg !3474
  call void @mpih_set_cond(ptr noundef %arraydecay9, ptr noundef %22, i32 noundef %23, i64 noundef %conv12) #17, !dbg !3475
  %25 = load ptr, ptr %wp, align 8, !dbg !3476
  %26 = load ptr, ptr %wp, align 8, !dbg !3477
  %arraydecay13 = getelementptr inbounds [7 x i64], ptr %n, i64 0, i64 0, !dbg !3478
  %27 = load i32, ptr %wsize, align 4, !dbg !3479
  %call14 = call i64 @mpihelp_add_n(ptr noundef %25, ptr noundef %26, ptr noundef %arraydecay13, i32 noundef %27) #17, !dbg !3480
  call void @llvm.lifetime.end.p0(i64 8, ptr %borrow) #15, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 56, ptr %n) #15, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #15, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #15, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #15, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #15, !dbg !3481
  ret void, !dbg !3481
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mulm_448(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !3482 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %n = alloca [14 x i64], align 16
  %a2 = alloca [4 x i64], align 16
  %a3 = alloca [4 x i64], align 16
  %b0 = alloca [4 x i64], align 16
  %b1 = alloca [4 x i64], align 16
  %cy = alloca i64, align 8
  %i = alloca i32, align 4
  %b1_rest = alloca i64, align 8
  %a3_rest = alloca i64, align 8
  %tmp = alloca i32, align 4
  %b1v = alloca i64, align 8
  %a3v = alloca i64, align 8
  %b1v101 = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3484, metadata !DIExpression()), !dbg !3513
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3485, metadata !DIExpression()), !dbg !3514
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3486, metadata !DIExpression()), !dbg !3515
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3487, metadata !DIExpression()), !dbg !3516
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #15, !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !3488, metadata !DIExpression()), !dbg !3518
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #15, !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %up, metadata !3489, metadata !DIExpression()), !dbg !3519
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #15, !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !3490, metadata !DIExpression()), !dbg !3520
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #15, !dbg !3521
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !3491, metadata !DIExpression()), !dbg !3522
  store i32 7, ptr %wsize, align 4, !dbg !3522
  call void @llvm.lifetime.start.p0(i64 112, ptr %n) #15, !dbg !3523
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3492, metadata !DIExpression()), !dbg !3524
  call void @llvm.lifetime.start.p0(i64 32, ptr %a2) #15, !dbg !3525
  call void @llvm.dbg.declare(metadata ptr %a2, metadata !3496, metadata !DIExpression()), !dbg !3526
  call void @llvm.lifetime.start.p0(i64 32, ptr %a3) #15, !dbg !3527
  call void @llvm.dbg.declare(metadata ptr %a3, metadata !3497, metadata !DIExpression()), !dbg !3528
  call void @llvm.lifetime.start.p0(i64 32, ptr %b0) #15, !dbg !3529
  call void @llvm.dbg.declare(metadata ptr %b0, metadata !3498, metadata !DIExpression()), !dbg !3530
  call void @llvm.lifetime.start.p0(i64 32, ptr %b1) #15, !dbg !3531
  call void @llvm.dbg.declare(metadata ptr %b1, metadata !3499, metadata !DIExpression()), !dbg !3532
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #15, !dbg !3533
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !3500, metadata !DIExpression()), !dbg !3534
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3535
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3501, metadata !DIExpression()), !dbg !3536
  call void @llvm.lifetime.start.p0(i64 8, ptr %b1_rest) #15, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %b1_rest, metadata !3502, metadata !DIExpression()), !dbg !3538
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3_rest) #15, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %a3_rest, metadata !3503, metadata !DIExpression()), !dbg !3539
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3540
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !3542
  %1 = load i32, ptr %nlimbs, align 4, !dbg !3542
  %2 = load i32, ptr %wsize, align 4, !dbg !3543
  %cmp = icmp ne i32 %1, %2, !dbg !3544
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3545

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %u.addr, align 8, !dbg !3546
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !3547
  %4 = load i32, ptr %nlimbs1, align 4, !dbg !3547
  %5 = load i32, ptr %wsize, align 4, !dbg !3548
  %cmp2 = icmp ne i32 %4, %5, !dbg !3549
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !3550

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %v.addr, align 8, !dbg !3551
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !3552
  %7 = load i32, ptr %nlimbs4, align 4, !dbg !3552
  %8 = load i32, ptr %wsize, align 4, !dbg !3553
  %cmp5 = icmp ne i32 %7, %8, !dbg !3554
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3555

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %do.body, !dbg !3556

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3558

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3558

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.23) #19, !dbg !3556
  store i32 %call, ptr %tmp, align 4, !dbg !3558
  %9 = load i32, ptr %tmp, align 4, !dbg !3556
  br label %if.end, !dbg !3560

if.end:                                           ; preds = %do.end, %lor.lhs.false3
  %10 = load ptr, ptr %u.addr, align 8, !dbg !3561
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !3562
  %11 = load ptr, ptr %d, align 8, !dbg !3562
  store ptr %11, ptr %up, align 8, !dbg !3563
  %12 = load ptr, ptr %v.addr, align 8, !dbg !3564
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !3565
  %13 = load ptr, ptr %d6, align 8, !dbg !3565
  store ptr %13, ptr %vp, align 8, !dbg !3566
  %14 = load ptr, ptr %w.addr, align 8, !dbg !3567
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !3568
  %15 = load ptr, ptr %d7, align 8, !dbg !3568
  store ptr %15, ptr %wp, align 8, !dbg !3569
  %arraydecay = getelementptr inbounds [14 x i64], ptr %n, i64 0, i64 0, !dbg !3570
  %16 = load ptr, ptr %up, align 8, !dbg !3571
  %17 = load ptr, ptr %vp, align 8, !dbg !3572
  %18 = load i32, ptr %wsize, align 4, !dbg !3573
  call void @mpihelp_mul_n(ptr noundef %arraydecay, ptr noundef %16, ptr noundef %17, i32 noundef %18) #17, !dbg !3574
  store i32 0, ptr %i, align 4, !dbg !3575
  br label %for.cond, !dbg !3577

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, ptr %i, align 4, !dbg !3578
  %20 = load i32, ptr %wsize, align 4, !dbg !3580
  %add = add i32 %20, 1, !dbg !3581
  %div = sdiv i32 %add, 2, !dbg !3582
  %cmp8 = icmp slt i32 %19, %div, !dbg !3583
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3584

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %i, align 4, !dbg !3585
  %idxprom = sext i32 %21 to i64, !dbg !3587
  %arrayidx = getelementptr [14 x i64], ptr %n, i64 0, i64 %idxprom, !dbg !3587
  %22 = load i64, ptr %arrayidx, align 8, !dbg !3587
  %23 = load i32, ptr %i, align 4, !dbg !3588
  %idxprom9 = sext i32 %23 to i64, !dbg !3589
  %arrayidx10 = getelementptr [4 x i64], ptr %b0, i64 0, i64 %idxprom9, !dbg !3589
  store i64 %22, ptr %arrayidx10, align 8, !dbg !3590
  %24 = load i32, ptr %i, align 4, !dbg !3591
  %25 = load i32, ptr %wsize, align 4, !dbg !3592
  %div11 = sdiv i32 %25, 2, !dbg !3593
  %add12 = add i32 %24, %div11, !dbg !3594
  %idxprom13 = sext i32 %add12 to i64, !dbg !3595
  %arrayidx14 = getelementptr [14 x i64], ptr %n, i64 0, i64 %idxprom13, !dbg !3595
  %26 = load i64, ptr %arrayidx14, align 8, !dbg !3595
  %27 = load i32, ptr %i, align 4, !dbg !3596
  %idxprom15 = sext i32 %27 to i64, !dbg !3597
  %arrayidx16 = getelementptr [4 x i64], ptr %b1, i64 0, i64 %idxprom15, !dbg !3597
  store i64 %26, ptr %arrayidx16, align 8, !dbg !3598
  %28 = load i32, ptr %i, align 4, !dbg !3599
  %29 = load i32, ptr %wsize, align 4, !dbg !3600
  %add17 = add i32 %28, %29, !dbg !3601
  %idxprom18 = sext i32 %add17 to i64, !dbg !3602
  %arrayidx19 = getelementptr [14 x i64], ptr %n, i64 0, i64 %idxprom18, !dbg !3602
  %30 = load i64, ptr %arrayidx19, align 8, !dbg !3602
  %31 = load i32, ptr %i, align 4, !dbg !3603
  %idxprom20 = sext i32 %31 to i64, !dbg !3604
  %arrayidx21 = getelementptr [4 x i64], ptr %a2, i64 0, i64 %idxprom20, !dbg !3604
  store i64 %30, ptr %arrayidx21, align 8, !dbg !3605
  %32 = load i32, ptr %i, align 4, !dbg !3606
  %33 = load i32, ptr %wsize, align 4, !dbg !3607
  %add22 = add i32 %32, %33, !dbg !3608
  %34 = load i32, ptr %wsize, align 4, !dbg !3609
  %div23 = sdiv i32 %34, 2, !dbg !3610
  %add24 = add i32 %add22, %div23, !dbg !3611
  %idxprom25 = sext i32 %add24 to i64, !dbg !3612
  %arrayidx26 = getelementptr [14 x i64], ptr %n, i64 0, i64 %idxprom25, !dbg !3612
  %35 = load i64, ptr %arrayidx26, align 8, !dbg !3612
  %36 = load i32, ptr %i, align 4, !dbg !3613
  %idxprom27 = sext i32 %36 to i64, !dbg !3614
  %arrayidx28 = getelementptr [4 x i64], ptr %a3, i64 0, i64 %idxprom27, !dbg !3614
  store i64 %35, ptr %arrayidx28, align 8, !dbg !3615
  br label %for.inc, !dbg !3616

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !dbg !3617
  %inc = add i32 %37, 1, !dbg !3617
  store i32 %inc, ptr %i, align 4, !dbg !3617
  br label %for.cond, !dbg !3618, !llvm.loop !3619

for.end:                                          ; preds = %for.cond
  %arrayidx29 = getelementptr [4 x i64], ptr %b0, i64 0, i64 3, !dbg !3621
  %38 = load i64, ptr %arrayidx29, align 8, !dbg !3622
  %and = and i64 %38, 4294967295, !dbg !3622
  store i64 %and, ptr %arrayidx29, align 8, !dbg !3622
  %arrayidx30 = getelementptr [4 x i64], ptr %a2, i64 0, i64 3, !dbg !3623
  %39 = load i64, ptr %arrayidx30, align 8, !dbg !3624
  %and31 = and i64 %39, 4294967295, !dbg !3624
  store i64 %and31, ptr %arrayidx30, align 8, !dbg !3624
  store i64 0, ptr %b1_rest, align 8, !dbg !3625
  store i64 0, ptr %a3_rest, align 8, !dbg !3626
  %40 = load i32, ptr %wsize, align 4, !dbg !3627
  %add32 = add i32 %40, 1, !dbg !3628
  %div33 = sdiv i32 %add32, 2, !dbg !3629
  %sub = sub i32 %div33, 1, !dbg !3630
  store i32 %sub, ptr %i, align 4, !dbg !3631
  br label %for.cond34, !dbg !3632

for.cond34:                                       ; preds = %for.inc50, %for.end
  %41 = load i32, ptr %i, align 4, !dbg !3633
  %cmp35 = icmp sge i32 %41, 0, !dbg !3634
  br i1 %cmp35, label %for.body36, label %for.end51, !dbg !3635

for.body36:                                       ; preds = %for.cond34
  call void @llvm.lifetime.start.p0(i64 8, ptr %b1v) #15, !dbg !3636
  call void @llvm.dbg.declare(metadata ptr %b1v, metadata !3504, metadata !DIExpression()), !dbg !3637
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3v) #15, !dbg !3636
  call void @llvm.dbg.declare(metadata ptr %a3v, metadata !3508, metadata !DIExpression()), !dbg !3638
  %42 = load i32, ptr %i, align 4, !dbg !3639
  %idxprom37 = sext i32 %42 to i64, !dbg !3640
  %arrayidx38 = getelementptr [4 x i64], ptr %b1, i64 0, i64 %idxprom37, !dbg !3640
  %43 = load i64, ptr %arrayidx38, align 8, !dbg !3640
  store i64 %43, ptr %b1v, align 8, !dbg !3641
  %44 = load i32, ptr %i, align 4, !dbg !3642
  %idxprom39 = sext i32 %44 to i64, !dbg !3643
  %arrayidx40 = getelementptr [4 x i64], ptr %a3, i64 0, i64 %idxprom39, !dbg !3643
  %45 = load i64, ptr %arrayidx40, align 8, !dbg !3643
  store i64 %45, ptr %a3v, align 8, !dbg !3644
  %46 = load i64, ptr %b1_rest, align 8, !dbg !3645
  %shl = shl i64 %46, 32, !dbg !3646
  %47 = load i64, ptr %b1v, align 8, !dbg !3647
  %shr = lshr i64 %47, 32, !dbg !3648
  %or = or i64 %shl, %shr, !dbg !3649
  %48 = load i32, ptr %i, align 4, !dbg !3650
  %idxprom41 = sext i32 %48 to i64, !dbg !3651
  %arrayidx42 = getelementptr [4 x i64], ptr %b1, i64 0, i64 %idxprom41, !dbg !3651
  store i64 %or, ptr %arrayidx42, align 8, !dbg !3652
  %49 = load i64, ptr %a3_rest, align 8, !dbg !3653
  %shl43 = shl i64 %49, 32, !dbg !3654
  %50 = load i64, ptr %a3v, align 8, !dbg !3655
  %shr44 = lshr i64 %50, 32, !dbg !3656
  %or45 = or i64 %shl43, %shr44, !dbg !3657
  %51 = load i32, ptr %i, align 4, !dbg !3658
  %idxprom46 = sext i32 %51 to i64, !dbg !3659
  %arrayidx47 = getelementptr [4 x i64], ptr %a3, i64 0, i64 %idxprom46, !dbg !3659
  store i64 %or45, ptr %arrayidx47, align 8, !dbg !3660
  %52 = load i64, ptr %b1v, align 8, !dbg !3661
  %and48 = and i64 %52, 4294967295, !dbg !3662
  store i64 %and48, ptr %b1_rest, align 8, !dbg !3663
  %53 = load i64, ptr %a3v, align 8, !dbg !3664
  %and49 = and i64 %53, 4294967295, !dbg !3665
  store i64 %and49, ptr %a3_rest, align 8, !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3v) #15, !dbg !3667
  call void @llvm.lifetime.end.p0(i64 8, ptr %b1v) #15, !dbg !3667
  br label %for.inc50, !dbg !3668

for.inc50:                                        ; preds = %for.body36
  %54 = load i32, ptr %i, align 4, !dbg !3669
  %dec = add i32 %54, -1, !dbg !3669
  store i32 %dec, ptr %i, align 4, !dbg !3669
  br label %for.cond34, !dbg !3670, !llvm.loop !3671

for.end51:                                        ; preds = %for.cond34
  %arraydecay52 = getelementptr inbounds [4 x i64], ptr %b0, i64 0, i64 0, !dbg !3673
  %arraydecay53 = getelementptr inbounds [4 x i64], ptr %b0, i64 0, i64 0, !dbg !3674
  %arraydecay54 = getelementptr inbounds [4 x i64], ptr %a2, i64 0, i64 0, !dbg !3675
  %call55 = call i64 @mpihelp_add_n(ptr noundef %arraydecay52, ptr noundef %arraydecay53, ptr noundef %arraydecay54, i32 noundef 4) #17, !dbg !3676
  store i64 %call55, ptr %cy, align 8, !dbg !3677
  %arraydecay56 = getelementptr inbounds [4 x i64], ptr %b0, i64 0, i64 0, !dbg !3678
  %arraydecay57 = getelementptr inbounds [4 x i64], ptr %b0, i64 0, i64 0, !dbg !3679
  %arraydecay58 = getelementptr inbounds [4 x i64], ptr %a3, i64 0, i64 0, !dbg !3680
  %call59 = call i64 @mpihelp_add_n(ptr noundef %arraydecay56, ptr noundef %arraydecay57, ptr noundef %arraydecay58, i32 noundef 4) #17, !dbg !3681
  %55 = load i64, ptr %cy, align 8, !dbg !3682
  %add60 = add i64 %55, %call59, !dbg !3682
  store i64 %add60, ptr %cy, align 8, !dbg !3682
  store i32 0, ptr %i, align 4, !dbg !3683
  br label %for.cond61, !dbg !3685

for.cond61:                                       ; preds = %for.inc70, %for.end51
  %56 = load i32, ptr %i, align 4, !dbg !3686
  %57 = load i32, ptr %wsize, align 4, !dbg !3688
  %add62 = add i32 %57, 1, !dbg !3689
  %div63 = sdiv i32 %add62, 2, !dbg !3690
  %cmp64 = icmp slt i32 %56, %div63, !dbg !3691
  br i1 %cmp64, label %for.body65, label %for.end72, !dbg !3692

for.body65:                                       ; preds = %for.cond61
  %58 = load i32, ptr %i, align 4, !dbg !3693
  %idxprom66 = sext i32 %58 to i64, !dbg !3694
  %arrayidx67 = getelementptr [4 x i64], ptr %b0, i64 0, i64 %idxprom66, !dbg !3694
  %59 = load i64, ptr %arrayidx67, align 8, !dbg !3694
  %60 = load ptr, ptr %wp, align 8, !dbg !3695
  %61 = load i32, ptr %i, align 4, !dbg !3696
  %idxprom68 = sext i32 %61 to i64, !dbg !3695
  %arrayidx69 = getelementptr i64, ptr %60, i64 %idxprom68, !dbg !3695
  store i64 %59, ptr %arrayidx69, align 8, !dbg !3697
  br label %for.inc70, !dbg !3695

for.inc70:                                        ; preds = %for.body65
  %62 = load i32, ptr %i, align 4, !dbg !3698
  %inc71 = add i32 %62, 1, !dbg !3698
  store i32 %inc71, ptr %i, align 4, !dbg !3698
  br label %for.cond61, !dbg !3699, !llvm.loop !3700

for.end72:                                        ; preds = %for.cond61
  %63 = load ptr, ptr %wp, align 8, !dbg !3702
  %arrayidx73 = getelementptr i64, ptr %63, i64 3, !dbg !3702
  %64 = load i64, ptr %arrayidx73, align 8, !dbg !3703
  %and74 = and i64 %64, 4294967295, !dbg !3703
  store i64 %and74, ptr %arrayidx73, align 8, !dbg !3703
  %arrayidx75 = getelementptr [4 x i64], ptr %b0, i64 0, i64 3, !dbg !3704
  %65 = load i64, ptr %arrayidx75, align 8, !dbg !3704
  %shr76 = lshr i64 %65, 32, !dbg !3705
  store i64 %shr76, ptr %cy, align 8, !dbg !3706
  %arraydecay77 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3707
  %arraydecay78 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3708
  %66 = load i64, ptr %cy, align 8, !dbg !3709
  %call79 = call i64 @mpihelp_add_1(ptr noundef %arraydecay77, ptr noundef %arraydecay78, i32 noundef 4, i64 noundef %66) #17, !dbg !3710
  store i64 %call79, ptr %cy, align 8, !dbg !3711
  %arraydecay80 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3712
  %arraydecay81 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3713
  %arraydecay82 = getelementptr inbounds [4 x i64], ptr %a2, i64 0, i64 0, !dbg !3714
  %call83 = call i64 @mpihelp_add_n(ptr noundef %arraydecay80, ptr noundef %arraydecay81, ptr noundef %arraydecay82, i32 noundef 4) #17, !dbg !3715
  %67 = load i64, ptr %cy, align 8, !dbg !3716
  %add84 = add i64 %67, %call83, !dbg !3716
  store i64 %add84, ptr %cy, align 8, !dbg !3716
  %arraydecay85 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3717
  %arraydecay86 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3718
  %arraydecay87 = getelementptr inbounds [4 x i64], ptr %a3, i64 0, i64 0, !dbg !3719
  %call88 = call i64 @mpihelp_add_n(ptr noundef %arraydecay85, ptr noundef %arraydecay86, ptr noundef %arraydecay87, i32 noundef 4) #17, !dbg !3720
  %68 = load i64, ptr %cy, align 8, !dbg !3721
  %add89 = add i64 %68, %call88, !dbg !3721
  store i64 %add89, ptr %cy, align 8, !dbg !3721
  %arraydecay90 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3722
  %arraydecay91 = getelementptr inbounds [4 x i64], ptr %b1, i64 0, i64 0, !dbg !3723
  %arraydecay92 = getelementptr inbounds [4 x i64], ptr %a3, i64 0, i64 0, !dbg !3724
  %call93 = call i64 @mpihelp_add_n(ptr noundef %arraydecay90, ptr noundef %arraydecay91, ptr noundef %arraydecay92, i32 noundef 4) #17, !dbg !3725
  %69 = load i64, ptr %cy, align 8, !dbg !3726
  %add94 = add i64 %69, %call93, !dbg !3726
  store i64 %add94, ptr %cy, align 8, !dbg !3726
  store i64 0, ptr %b1_rest, align 8, !dbg !3727
  %70 = load i32, ptr %wsize, align 4, !dbg !3728
  %add95 = add i32 %70, 1, !dbg !3729
  %div96 = sdiv i32 %add95, 2, !dbg !3730
  %sub97 = sub i32 %div96, 1, !dbg !3731
  store i32 %sub97, ptr %i, align 4, !dbg !3732
  br label %for.cond98, !dbg !3733

for.cond98:                                       ; preds = %for.inc110, %for.end72
  %71 = load i32, ptr %i, align 4, !dbg !3734
  %cmp99 = icmp sge i32 %71, 0, !dbg !3735
  br i1 %cmp99, label %for.body100, label %for.end112, !dbg !3736

for.body100:                                      ; preds = %for.cond98
  call void @llvm.lifetime.start.p0(i64 8, ptr %b1v101) #15, !dbg !3737
  call void @llvm.dbg.declare(metadata ptr %b1v101, metadata !3509, metadata !DIExpression()), !dbg !3738
  %72 = load i32, ptr %i, align 4, !dbg !3739
  %idxprom102 = sext i32 %72 to i64, !dbg !3740
  %arrayidx103 = getelementptr [4 x i64], ptr %b1, i64 0, i64 %idxprom102, !dbg !3740
  %73 = load i64, ptr %arrayidx103, align 8, !dbg !3740
  store i64 %73, ptr %b1v101, align 8, !dbg !3738
  %74 = load i64, ptr %b1_rest, align 8, !dbg !3741
  %shl104 = shl i64 %74, 32, !dbg !3742
  %75 = load i64, ptr %b1v101, align 8, !dbg !3743
  %shr105 = lshr i64 %75, 32, !dbg !3744
  %or106 = or i64 %shl104, %shr105, !dbg !3745
  %76 = load i32, ptr %i, align 4, !dbg !3746
  %idxprom107 = sext i32 %76 to i64, !dbg !3747
  %arrayidx108 = getelementptr [4 x i64], ptr %b1, i64 0, i64 %idxprom107, !dbg !3747
  store i64 %or106, ptr %arrayidx108, align 8, !dbg !3748
  %77 = load i64, ptr %b1v101, align 8, !dbg !3749
  %and109 = and i64 %77, 4294967295, !dbg !3750
  store i64 %and109, ptr %b1_rest, align 8, !dbg !3751
  call void @llvm.lifetime.end.p0(i64 8, ptr %b1v101) #15, !dbg !3752
  br label %for.inc110, !dbg !3753

for.inc110:                                       ; preds = %for.body100
  %78 = load i32, ptr %i, align 4, !dbg !3754
  %dec111 = add i32 %78, -1, !dbg !3754
  store i32 %dec111, ptr %i, align 4, !dbg !3754
  br label %for.cond98, !dbg !3755, !llvm.loop !3756

for.end112:                                       ; preds = %for.cond98
  %79 = load i64, ptr %b1_rest, align 8, !dbg !3758
  %shl113 = shl i64 %79, 32, !dbg !3759
  %80 = load ptr, ptr %wp, align 8, !dbg !3760
  %arrayidx114 = getelementptr i64, ptr %80, i64 3, !dbg !3760
  %81 = load i64, ptr %arrayidx114, align 8, !dbg !3761
  %or115 = or i64 %81, %shl113, !dbg !3761
  store i64 %or115, ptr %arrayidx114, align 8, !dbg !3761
  store i32 0, ptr %i, align 4, !dbg !3762
  br label %for.cond116, !dbg !3764

for.cond116:                                      ; preds = %for.inc127, %for.end112
  %82 = load i32, ptr %i, align 4, !dbg !3765
  %83 = load i32, ptr %wsize, align 4, !dbg !3767
  %div117 = sdiv i32 %83, 2, !dbg !3768
  %cmp118 = icmp slt i32 %82, %div117, !dbg !3769
  br i1 %cmp118, label %for.body119, label %for.end129, !dbg !3770

for.body119:                                      ; preds = %for.cond116
  %84 = load i32, ptr %i, align 4, !dbg !3771
  %idxprom120 = sext i32 %84 to i64, !dbg !3772
  %arrayidx121 = getelementptr [4 x i64], ptr %b1, i64 0, i64 %idxprom120, !dbg !3772
  %85 = load i64, ptr %arrayidx121, align 8, !dbg !3772
  %86 = load ptr, ptr %wp, align 8, !dbg !3773
  %87 = load i32, ptr %i, align 4, !dbg !3774
  %88 = load i32, ptr %wsize, align 4, !dbg !3775
  %add122 = add i32 %88, 1, !dbg !3776
  %div123 = sdiv i32 %add122, 2, !dbg !3777
  %add124 = add i32 %87, %div123, !dbg !3778
  %idxprom125 = sext i32 %add124 to i64, !dbg !3773
  %arrayidx126 = getelementptr i64, ptr %86, i64 %idxprom125, !dbg !3773
  store i64 %85, ptr %arrayidx126, align 8, !dbg !3779
  br label %for.inc127, !dbg !3773

for.inc127:                                       ; preds = %for.body119
  %89 = load i32, ptr %i, align 4, !dbg !3780
  %inc128 = add i32 %89, 1, !dbg !3780
  store i32 %inc128, ptr %i, align 4, !dbg !3780
  br label %for.cond116, !dbg !3781, !llvm.loop !3782

for.end129:                                       ; preds = %for.cond116
  %arrayidx130 = getelementptr [4 x i64], ptr %b1, i64 0, i64 3, !dbg !3784
  %90 = load i64, ptr %arrayidx130, align 8, !dbg !3784
  store i64 %90, ptr %cy, align 8, !dbg !3785
  %arraydecay131 = getelementptr inbounds [14 x i64], ptr %n, i64 0, i64 0, !dbg !3786
  %91 = load i32, ptr %wsize, align 4, !dbg !3787
  %mul = mul i32 %91, 8, !dbg !3788
  %conv = sext i32 %mul to i64, !dbg !3787
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay131, i8 0, i64 %conv, i1 false), !dbg !3786
  %92 = load i64, ptr %cy, align 8, !dbg !3789
  %shl132 = shl i64 %92, 32, !dbg !3790
  %arrayidx133 = getelementptr [14 x i64], ptr %n, i64 0, i64 3, !dbg !3791
  store i64 %shl132, ptr %arrayidx133, align 8, !dbg !3792
  %93 = load i64, ptr %cy, align 8, !dbg !3793
  %arrayidx134 = getelementptr [14 x i64], ptr %n, i64 0, i64 0, !dbg !3794
  store i64 %93, ptr %arrayidx134, align 16, !dbg !3795
  %94 = load ptr, ptr %wp, align 8, !dbg !3796
  %95 = load ptr, ptr %wp, align 8, !dbg !3797
  %arraydecay135 = getelementptr inbounds [14 x i64], ptr %n, i64 0, i64 0, !dbg !3798
  %96 = load i32, ptr %wsize, align 4, !dbg !3799
  %call136 = call i64 @mpihelp_add_n(ptr noundef %94, ptr noundef %95, ptr noundef %arraydecay135, i32 noundef %96) #17, !dbg !3800
  %arraydecay137 = getelementptr inbounds [14 x i64], ptr %n, i64 0, i64 0, !dbg !3801
  %97 = load i32, ptr %wsize, align 4, !dbg !3802
  %mul138 = mul i32 %97, 8, !dbg !3803
  %conv139 = sext i32 %mul138 to i64, !dbg !3802
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay137, i8 0, i64 %conv139, i1 false), !dbg !3801
  %98 = load ptr, ptr %wp, align 8, !dbg !3804
  %99 = load ptr, ptr %wp, align 8, !dbg !3805
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !3806
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %100, i32 0, i32 4, !dbg !3807
  %101 = load ptr, ptr %p, align 8, !dbg !3807
  %d140 = getelementptr inbounds %struct.gcry_mpi, ptr %101, i32 0, i32 5, !dbg !3808
  %102 = load ptr, ptr %d140, align 8, !dbg !3808
  %103 = load i32, ptr %wsize, align 4, !dbg !3809
  %call141 = call i64 @mpihelp_sub_n(ptr noundef %98, ptr noundef %99, ptr noundef %102, i32 noundef %103) #17, !dbg !3810
  store i64 %call141, ptr %cy, align 8, !dbg !3811
  %arraydecay142 = getelementptr inbounds [14 x i64], ptr %n, i64 0, i64 0, !dbg !3812
  %104 = load ptr, ptr %ctx.addr, align 8, !dbg !3813
  %p143 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %104, i32 0, i32 4, !dbg !3814
  %105 = load ptr, ptr %p143, align 8, !dbg !3814
  %d144 = getelementptr inbounds %struct.gcry_mpi, ptr %105, i32 0, i32 5, !dbg !3815
  %106 = load ptr, ptr %d144, align 8, !dbg !3815
  %107 = load i32, ptr %wsize, align 4, !dbg !3816
  %108 = load i64, ptr %cy, align 8, !dbg !3817
  %cmp145 = icmp ne i64 %108, 0, !dbg !3818
  %conv146 = zext i1 %cmp145 to i32, !dbg !3818
  %conv147 = sext i32 %conv146 to i64, !dbg !3819
  call void @mpih_set_cond(ptr noundef %arraydecay142, ptr noundef %106, i32 noundef %107, i64 noundef %conv147) #17, !dbg !3820
  %109 = load ptr, ptr %wp, align 8, !dbg !3821
  %110 = load ptr, ptr %wp, align 8, !dbg !3822
  %arraydecay148 = getelementptr inbounds [14 x i64], ptr %n, i64 0, i64 0, !dbg !3823
  %111 = load i32, ptr %wsize, align 4, !dbg !3824
  %call149 = call i64 @mpihelp_add_n(ptr noundef %109, ptr noundef %110, ptr noundef %arraydecay148, i32 noundef %111) #17, !dbg !3825
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3_rest) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %b1_rest) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 32, ptr %b1) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 32, ptr %b0) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 32, ptr %a3) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 32, ptr %a2) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 112, ptr %n) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #15, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #15, !dbg !3826
  ret void, !dbg !3826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_mul2_448(ptr noundef %w, ptr noundef %u, ptr noundef %ctx) #0 align 16 !dbg !3827 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3829, metadata !DIExpression()), !dbg !3832
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !3830, metadata !DIExpression()), !dbg !3833
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3831, metadata !DIExpression()), !dbg !3834
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3835
  %1 = load ptr, ptr %u.addr, align 8, !dbg !3836
  %2 = load ptr, ptr %u.addr, align 8, !dbg !3837
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3838
  call void @ec_addm_448(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17, !dbg !3839
  ret void, !dbg !3840
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ec_pow2_448(ptr noundef %w, ptr noundef %b, ptr noundef %ctx) #0 align 16 !dbg !3841 {
entry:
  %w.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3843, metadata !DIExpression()), !dbg !3846
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !3844, metadata !DIExpression()), !dbg !3847
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3845, metadata !DIExpression()), !dbg !3848
  %0 = load ptr, ptr %w.addr, align 8, !dbg !3849
  %1 = load ptr, ptr %b.addr, align 8, !dbg !3850
  %2 = load ptr, ptr %b.addr, align 8, !dbg !3851
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3852
  call void @ec_mulm_448(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17, !dbg !3853
  ret void, !dbg !3854
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3855 dso_local i64 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mpih_set_cond(ptr noundef %wp, ptr noundef %up, i32 noundef %usize, i64 noundef %set) #0 align 16 !dbg !3856 {
entry:
  %wp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %usize.addr = alloca i32, align 4
  %set.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %mask = alloca i64, align 8
  %x = alloca i64, align 8
  store ptr %wp, ptr %wp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wp.addr, metadata !3860, metadata !DIExpression()), !dbg !3867
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !3861, metadata !DIExpression()), !dbg !3868
  store i32 %usize, ptr %usize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !3862, metadata !DIExpression()), !dbg !3869
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3863, metadata !DIExpression()), !dbg !3870
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3864, metadata !DIExpression()), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !3873
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3865, metadata !DIExpression()), !dbg !3874
  %0 = load i64, ptr %set.addr, align 8, !dbg !3875
  %sub = sub i64 0, %0, !dbg !3876
  store i64 %sub, ptr %mask, align 8, !dbg !3874
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #15, !dbg !3877
  call void @llvm.dbg.declare(metadata ptr %x, metadata !3866, metadata !DIExpression()), !dbg !3878
  store i32 0, ptr %i, align 4, !dbg !3879
  br label %for.cond, !dbg !3881

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !3882
  %2 = load i32, ptr %usize.addr, align 4, !dbg !3884
  %cmp = icmp slt i32 %1, %2, !dbg !3885
  br i1 %cmp, label %for.body, label %for.end, !dbg !3886

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %mask, align 8, !dbg !3887
  %4 = load ptr, ptr %wp.addr, align 8, !dbg !3889
  %5 = load i32, ptr %i, align 4, !dbg !3890
  %idxprom = sext i32 %5 to i64, !dbg !3889
  %arrayidx = getelementptr i64, ptr %4, i64 %idxprom, !dbg !3889
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3889
  %7 = load ptr, ptr %up.addr, align 8, !dbg !3891
  %8 = load i32, ptr %i, align 4, !dbg !3892
  %idxprom1 = sext i32 %8 to i64, !dbg !3891
  %arrayidx2 = getelementptr i64, ptr %7, i64 %idxprom1, !dbg !3891
  %9 = load i64, ptr %arrayidx2, align 8, !dbg !3891
  %xor = xor i64 %6, %9, !dbg !3893
  %and = and i64 %3, %xor, !dbg !3894
  store i64 %and, ptr %x, align 8, !dbg !3895
  %10 = load ptr, ptr %wp.addr, align 8, !dbg !3896
  %11 = load i32, ptr %i, align 4, !dbg !3897
  %idxprom3 = sext i32 %11 to i64, !dbg !3896
  %arrayidx4 = getelementptr i64, ptr %10, i64 %idxprom3, !dbg !3896
  %12 = load i64, ptr %arrayidx4, align 8, !dbg !3896
  %13 = load i64, ptr %x, align 8, !dbg !3898
  %xor5 = xor i64 %12, %13, !dbg !3899
  %14 = load ptr, ptr %wp.addr, align 8, !dbg !3900
  %15 = load i32, ptr %i, align 4, !dbg !3901
  %idxprom6 = sext i32 %15 to i64, !dbg !3900
  %arrayidx7 = getelementptr i64, ptr %14, i64 %idxprom6, !dbg !3900
  store i64 %xor5, ptr %arrayidx7, align 8, !dbg !3902
  br label %for.inc, !dbg !3903

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !3904
  %inc = add i32 %16, 1, !dbg !3904
  store i32 %inc, ptr %i, align 4, !dbg !3904
  br label %for.cond, !dbg !3905, !llvm.loop !3906

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #15, !dbg !3908
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !3908
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3908
  ret void, !dbg !3908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3909 dso_local void @mpihelp_mul_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3912 dso_local i64 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3915 dso_local i64 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_add_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #5 align 16 !dbg !3916 {
entry:
  %retval = alloca i64, align 8
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_limb.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !3921, metadata !DIExpression()), !dbg !3930
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !3922, metadata !DIExpression()), !dbg !3931
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !3923, metadata !DIExpression()), !dbg !3932
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !3924, metadata !DIExpression()), !dbg !3933
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #15, !dbg !3934
  call void @llvm.dbg.declare(metadata ptr %x, metadata !3925, metadata !DIExpression()), !dbg !3935
  %0 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !3936
  %incdec.ptr = getelementptr i64, ptr %0, i32 1, !dbg !3936
  store ptr %incdec.ptr, ptr %s1_ptr.addr, align 8, !dbg !3936
  %1 = load i64, ptr %0, align 8, !dbg !3937
  store i64 %1, ptr %x, align 8, !dbg !3938
  %2 = load i64, ptr %x, align 8, !dbg !3939
  %3 = load i64, ptr %s2_limb.addr, align 8, !dbg !3940
  %add = add i64 %3, %2, !dbg !3940
  store i64 %add, ptr %s2_limb.addr, align 8, !dbg !3940
  %4 = load i64, ptr %s2_limb.addr, align 8, !dbg !3941
  %5 = load ptr, ptr %res_ptr.addr, align 8, !dbg !3942
  %incdec.ptr1 = getelementptr i64, ptr %5, i32 1, !dbg !3942
  store ptr %incdec.ptr1, ptr %res_ptr.addr, align 8, !dbg !3942
  store i64 %4, ptr %5, align 8, !dbg !3943
  %6 = load i64, ptr %s2_limb.addr, align 8, !dbg !3944
  %7 = load i64, ptr %x, align 8, !dbg !3946
  %cmp = icmp ult i64 %6, %7, !dbg !3947
  br i1 %cmp, label %if.then, label %if.end7, !dbg !3948

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !3949

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %s1_size.addr, align 4, !dbg !3951
  %dec = add i32 %8, -1, !dbg !3951
  store i32 %dec, ptr %s1_size.addr, align 4, !dbg !3951
  %tobool = icmp ne i32 %dec, 0, !dbg !3949
  br i1 %tobool, label %while.body, label %while.end, !dbg !3949

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !3952
  %incdec.ptr2 = getelementptr i64, ptr %9, i32 1, !dbg !3952
  store ptr %incdec.ptr2, ptr %s1_ptr.addr, align 8, !dbg !3952
  %10 = load i64, ptr %9, align 8, !dbg !3954
  %add3 = add i64 %10, 1, !dbg !3955
  store i64 %add3, ptr %x, align 8, !dbg !3956
  %11 = load i64, ptr %x, align 8, !dbg !3957
  %12 = load ptr, ptr %res_ptr.addr, align 8, !dbg !3958
  %incdec.ptr4 = getelementptr i64, ptr %12, i32 1, !dbg !3958
  store ptr %incdec.ptr4, ptr %res_ptr.addr, align 8, !dbg !3958
  store i64 %11, ptr %12, align 8, !dbg !3959
  %13 = load i64, ptr %x, align 8, !dbg !3960
  %tobool5 = icmp ne i64 %13, 0, !dbg !3960
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !3962

if.then6:                                         ; preds = %while.body
  br label %leave, !dbg !3963

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !3949, !llvm.loop !3964

while.end:                                        ; preds = %while.cond
  store i64 1, ptr %retval, align 8, !dbg !3966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3966

if.end7:                                          ; preds = %entry
  br label %leave, !dbg !3946

leave:                                            ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !3926), !dbg !3967
  %14 = load ptr, ptr %res_ptr.addr, align 8, !dbg !3968
  %15 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !3969
  %cmp8 = icmp ne ptr %14, %15, !dbg !3970
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !3971

if.then9:                                         ; preds = %leave
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3927, metadata !DIExpression()), !dbg !3973
  store i32 0, ptr %i, align 4, !dbg !3974
  br label %for.cond, !dbg !3976

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !3977
  %17 = load i32, ptr %s1_size.addr, align 4, !dbg !3979
  %sub = sub i32 %17, 1, !dbg !3980
  %cmp10 = icmp slt i32 %16, %sub, !dbg !3981
  br i1 %cmp10, label %for.body, label %for.end, !dbg !3982

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !3983
  %19 = load i32, ptr %i, align 4, !dbg !3984
  %idxprom = sext i32 %19 to i64, !dbg !3983
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !3983
  %20 = load i64, ptr %arrayidx, align 8, !dbg !3983
  %21 = load ptr, ptr %res_ptr.addr, align 8, !dbg !3985
  %22 = load i32, ptr %i, align 4, !dbg !3986
  %idxprom11 = sext i32 %22 to i64, !dbg !3985
  %arrayidx12 = getelementptr i64, ptr %21, i64 %idxprom11, !dbg !3985
  store i64 %20, ptr %arrayidx12, align 8, !dbg !3987
  br label %for.inc, !dbg !3985

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !3988
  %inc = add i32 %23, 1, !dbg !3988
  store i32 %inc, ptr %i, align 4, !dbg !3988
  br label %for.cond, !dbg !3989, !llvm.loop !3990

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3992
  br label %if.end13, !dbg !3993

if.end13:                                         ; preds = %for.end, %leave
  store i64 0, ptr %retval, align 8, !dbg !3994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3994

cleanup:                                          ; preds = %if.end13, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #15, !dbg !3995
  %24 = load i64, ptr %retval, align 8, !dbg !3995
  ret i64 %24, !dbg !3995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3996 dso_local i32 @mpi_invm(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ec_get_two_inv_p(ptr noundef %ec) #0 align 16 !dbg !3999 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !4003, metadata !DIExpression()), !dbg !4004
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !4005
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, !dbg !4007
  %valid = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 0, !dbg !4008
  %bf.load = load i8, ptr %valid, align 8, !dbg !4009
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4009
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4009
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4009
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4005
  br i1 %tobool, label %if.end13, label %if.then, !dbg !4010

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !4011
  %t1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 13, !dbg !4013
  %valid2 = getelementptr inbounds %struct.anon.0, ptr %t1, i32 0, i32 0, !dbg !4014
  %bf.load3 = load i8, ptr %valid2, align 8, !dbg !4015
  %bf.clear4 = and i8 %bf.load3, -3, !dbg !4015
  %bf.set = or i8 %bf.clear4, 2, !dbg !4015
  store i8 %bf.set, ptr %valid2, align 8, !dbg !4015
  %2 = load ptr, ptr %ec.addr, align 8, !dbg !4016
  %t5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, !dbg !4018
  %two_inv_p = getelementptr inbounds %struct.anon.0, ptr %t5, i32 0, i32 2, !dbg !4019
  %3 = load ptr, ptr %two_inv_p, align 8, !dbg !4019
  %tobool6 = icmp ne ptr %3, null, !dbg !4016
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !4020

if.then7:                                         ; preds = %if.then
  %call = call ptr @mpi_alloc(i32 noundef 0) #17, !dbg !4021
  %4 = load ptr, ptr %ec.addr, align 8, !dbg !4022
  %t8 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %4, i32 0, i32 13, !dbg !4023
  %two_inv_p9 = getelementptr inbounds %struct.anon.0, ptr %t8, i32 0, i32 2, !dbg !4024
  store ptr %call, ptr %two_inv_p9, align 8, !dbg !4025
  br label %if.end, !dbg !4022

if.end:                                           ; preds = %if.then7, %if.then
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !4026
  %t10 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %5, i32 0, i32 13, !dbg !4027
  %two_inv_p11 = getelementptr inbounds %struct.anon.0, ptr %t10, i32 0, i32 2, !dbg !4028
  %6 = load ptr, ptr %two_inv_p11, align 8, !dbg !4028
  %call12 = call ptr @mpi_const(i32 noundef 2) #17, !dbg !4029
  %7 = load ptr, ptr %ec.addr, align 8, !dbg !4030
  call void @ec_invm(ptr noundef %6, ptr noundef %call12, ptr noundef %7) #17, !dbg !4031
  br label %if.end13, !dbg !4032

if.end13:                                         ; preds = %if.end, %entry
  %8 = load ptr, ptr %ec.addr, align 8, !dbg !4033
  %t14 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %8, i32 0, i32 13, !dbg !4034
  %two_inv_p15 = getelementptr inbounds %struct.anon.0, ptr %t14, i32 0, i32 2, !dbg !4035
  %9 = load ptr, ptr %two_inv_p15, align 8, !dbg !4035
  ret ptr %9, !dbg !4036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dup_point_weierstrass(ptr noundef %result, ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !4037 {
entry:
  %result.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !4039, metadata !DIExpression()), !dbg !4042
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !4040, metadata !DIExpression()), !dbg !4043
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4041, metadata !DIExpression()), !dbg !4044
  %0 = load ptr, ptr %point.addr, align 8, !dbg !4045
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1, !dbg !4047
  %1 = load ptr, ptr %y, align 8, !dbg !4047
  %call = call i32 @mpi_cmp_ui(ptr noundef %1, i64 noundef 0) #17, !dbg !4048
  %tobool = icmp ne i32 %call, 0, !dbg !4048
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4049

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %point.addr, align 8, !dbg !4050
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2, !dbg !4051
  %3 = load ptr, ptr %z, align 8, !dbg !4051
  %call1 = call i32 @mpi_cmp_ui(ptr noundef %3, i64 noundef 0) #17, !dbg !4052
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4052
  br i1 %tobool2, label %if.else, label %if.then, !dbg !4053

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %result.addr, align 8, !dbg !4054
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %4, i32 0, i32 0, !dbg !4054
  %5 = load ptr, ptr %x, align 8, !dbg !4054
  %call3 = call ptr @mpi_set_ui(ptr noundef %5, i64 noundef 1) #17, !dbg !4056
  %6 = load ptr, ptr %result.addr, align 8, !dbg !4057
  %y4 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 1, !dbg !4057
  %7 = load ptr, ptr %y4, align 8, !dbg !4057
  %call5 = call ptr @mpi_set_ui(ptr noundef %7, i64 noundef 1) #17, !dbg !4058
  %8 = load ptr, ptr %result.addr, align 8, !dbg !4059
  %z6 = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2, !dbg !4059
  %9 = load ptr, ptr %z6, align 8, !dbg !4059
  %call7 = call ptr @mpi_set_ui(ptr noundef %9, i64 noundef 0) #17, !dbg !4060
  br label %if.end140, !dbg !4061

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !4062
  %call8 = call i32 @ec_get_a_is_pminus3(ptr noundef %10) #17, !dbg !4065
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4065
  br i1 %tobool9, label %if.then10, label %if.else42, !dbg !4066

if.then10:                                        ; preds = %if.else
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !4067
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %11, i32 0, i32 13, !dbg !4067
  %scratch = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 4, !dbg !4067
  %arrayidx = getelementptr [11 x ptr], ptr %scratch, i64 0, i64 0, !dbg !4067
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !4067
  %13 = load ptr, ptr %point.addr, align 8, !dbg !4069
  %z11 = getelementptr inbounds %struct.gcry_mpi_point, ptr %13, i32 0, i32 2, !dbg !4070
  %14 = load ptr, ptr %z11, align 8, !dbg !4070
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !4071
  call void @ec_pow2(ptr noundef %12, ptr noundef %14, ptr noundef %15) #17, !dbg !4072
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !4073
  %t12 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %16, i32 0, i32 13, !dbg !4073
  %scratch13 = getelementptr inbounds %struct.anon.0, ptr %t12, i32 0, i32 4, !dbg !4073
  %arrayidx14 = getelementptr [11 x ptr], ptr %scratch13, i64 0, i64 3, !dbg !4073
  %17 = load ptr, ptr %arrayidx14, align 8, !dbg !4073
  %18 = load ptr, ptr %point.addr, align 8, !dbg !4074
  %x15 = getelementptr inbounds %struct.gcry_mpi_point, ptr %18, i32 0, i32 0, !dbg !4075
  %19 = load ptr, ptr %x15, align 8, !dbg !4075
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !4076
  %t16 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %20, i32 0, i32 13, !dbg !4076
  %scratch17 = getelementptr inbounds %struct.anon.0, ptr %t16, i32 0, i32 4, !dbg !4076
  %arrayidx18 = getelementptr [11 x ptr], ptr %scratch17, i64 0, i64 0, !dbg !4076
  %21 = load ptr, ptr %arrayidx18, align 8, !dbg !4076
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !4077
  call void @ec_subm(ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %22) #17, !dbg !4078
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !4079
  %t19 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %23, i32 0, i32 13, !dbg !4079
  %scratch20 = getelementptr inbounds %struct.anon.0, ptr %t19, i32 0, i32 4, !dbg !4079
  %arrayidx21 = getelementptr [11 x ptr], ptr %scratch20, i64 0, i64 3, !dbg !4079
  %24 = load ptr, ptr %arrayidx21, align 8, !dbg !4079
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !4080
  %t22 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %25, i32 0, i32 13, !dbg !4080
  %scratch23 = getelementptr inbounds %struct.anon.0, ptr %t22, i32 0, i32 4, !dbg !4080
  %arrayidx24 = getelementptr [11 x ptr], ptr %scratch23, i64 0, i64 3, !dbg !4080
  %26 = load ptr, ptr %arrayidx24, align 8, !dbg !4080
  %call25 = call ptr @mpi_const(i32 noundef 3) #17, !dbg !4081
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !4082
  call void @ec_mulm(ptr noundef %24, ptr noundef %26, ptr noundef %call25, ptr noundef %27) #17, !dbg !4083
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !4084
  %t26 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %28, i32 0, i32 13, !dbg !4084
  %scratch27 = getelementptr inbounds %struct.anon.0, ptr %t26, i32 0, i32 4, !dbg !4084
  %arrayidx28 = getelementptr [11 x ptr], ptr %scratch27, i64 0, i64 1, !dbg !4084
  %29 = load ptr, ptr %arrayidx28, align 8, !dbg !4084
  %30 = load ptr, ptr %point.addr, align 8, !dbg !4085
  %x29 = getelementptr inbounds %struct.gcry_mpi_point, ptr %30, i32 0, i32 0, !dbg !4086
  %31 = load ptr, ptr %x29, align 8, !dbg !4086
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !4087
  %t30 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %32, i32 0, i32 13, !dbg !4087
  %scratch31 = getelementptr inbounds %struct.anon.0, ptr %t30, i32 0, i32 4, !dbg !4087
  %arrayidx32 = getelementptr [11 x ptr], ptr %scratch31, i64 0, i64 0, !dbg !4087
  %33 = load ptr, ptr %arrayidx32, align 8, !dbg !4087
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !4088
  call void @ec_addm(ptr noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %34) #17, !dbg !4089
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !4090
  %t33 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %35, i32 0, i32 13, !dbg !4090
  %scratch34 = getelementptr inbounds %struct.anon.0, ptr %t33, i32 0, i32 4, !dbg !4090
  %arrayidx35 = getelementptr [11 x ptr], ptr %scratch34, i64 0, i64 3, !dbg !4090
  %36 = load ptr, ptr %arrayidx35, align 8, !dbg !4090
  %37 = load ptr, ptr %ctx.addr, align 8, !dbg !4091
  %t36 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %37, i32 0, i32 13, !dbg !4091
  %scratch37 = getelementptr inbounds %struct.anon.0, ptr %t36, i32 0, i32 4, !dbg !4091
  %arrayidx38 = getelementptr [11 x ptr], ptr %scratch37, i64 0, i64 3, !dbg !4091
  %38 = load ptr, ptr %arrayidx38, align 8, !dbg !4091
  %39 = load ptr, ptr %ctx.addr, align 8, !dbg !4092
  %t39 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %39, i32 0, i32 13, !dbg !4092
  %scratch40 = getelementptr inbounds %struct.anon.0, ptr %t39, i32 0, i32 4, !dbg !4092
  %arrayidx41 = getelementptr [11 x ptr], ptr %scratch40, i64 0, i64 1, !dbg !4092
  %40 = load ptr, ptr %arrayidx41, align 8, !dbg !4092
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !4093
  call void @ec_mulm(ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef %41) #17, !dbg !4094
  br label %if.end, !dbg !4095

if.else42:                                        ; preds = %if.else
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !4096
  %t43 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %42, i32 0, i32 13, !dbg !4096
  %scratch44 = getelementptr inbounds %struct.anon.0, ptr %t43, i32 0, i32 4, !dbg !4096
  %arrayidx45 = getelementptr [11 x ptr], ptr %scratch44, i64 0, i64 3, !dbg !4096
  %43 = load ptr, ptr %arrayidx45, align 8, !dbg !4096
  %44 = load ptr, ptr %point.addr, align 8, !dbg !4098
  %x46 = getelementptr inbounds %struct.gcry_mpi_point, ptr %44, i32 0, i32 0, !dbg !4099
  %45 = load ptr, ptr %x46, align 8, !dbg !4099
  %46 = load ptr, ptr %ctx.addr, align 8, !dbg !4100
  call void @ec_pow2(ptr noundef %43, ptr noundef %45, ptr noundef %46) #17, !dbg !4101
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !4102
  %t47 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %47, i32 0, i32 13, !dbg !4102
  %scratch48 = getelementptr inbounds %struct.anon.0, ptr %t47, i32 0, i32 4, !dbg !4102
  %arrayidx49 = getelementptr [11 x ptr], ptr %scratch48, i64 0, i64 3, !dbg !4102
  %48 = load ptr, ptr %arrayidx49, align 8, !dbg !4102
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !4103
  %t50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %49, i32 0, i32 13, !dbg !4103
  %scratch51 = getelementptr inbounds %struct.anon.0, ptr %t50, i32 0, i32 4, !dbg !4103
  %arrayidx52 = getelementptr [11 x ptr], ptr %scratch51, i64 0, i64 3, !dbg !4103
  %50 = load ptr, ptr %arrayidx52, align 8, !dbg !4103
  %call53 = call ptr @mpi_const(i32 noundef 3) #17, !dbg !4104
  %51 = load ptr, ptr %ctx.addr, align 8, !dbg !4105
  call void @ec_mulm(ptr noundef %48, ptr noundef %50, ptr noundef %call53, ptr noundef %51) #17, !dbg !4106
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !4107
  %t54 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %52, i32 0, i32 13, !dbg !4107
  %scratch55 = getelementptr inbounds %struct.anon.0, ptr %t54, i32 0, i32 4, !dbg !4107
  %arrayidx56 = getelementptr [11 x ptr], ptr %scratch55, i64 0, i64 0, !dbg !4107
  %53 = load ptr, ptr %arrayidx56, align 8, !dbg !4107
  %54 = load ptr, ptr %point.addr, align 8, !dbg !4108
  %z57 = getelementptr inbounds %struct.gcry_mpi_point, ptr %54, i32 0, i32 2, !dbg !4109
  %55 = load ptr, ptr %z57, align 8, !dbg !4109
  %call58 = call ptr @mpi_const(i32 noundef 4) #17, !dbg !4110
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !4111
  call void @ec_powm(ptr noundef %53, ptr noundef %55, ptr noundef %call58, ptr noundef %56) #17, !dbg !4112
  %57 = load ptr, ptr %ctx.addr, align 8, !dbg !4113
  %t59 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %57, i32 0, i32 13, !dbg !4113
  %scratch60 = getelementptr inbounds %struct.anon.0, ptr %t59, i32 0, i32 4, !dbg !4113
  %arrayidx61 = getelementptr [11 x ptr], ptr %scratch60, i64 0, i64 0, !dbg !4113
  %58 = load ptr, ptr %arrayidx61, align 8, !dbg !4113
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !4114
  %t62 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %59, i32 0, i32 13, !dbg !4114
  %scratch63 = getelementptr inbounds %struct.anon.0, ptr %t62, i32 0, i32 4, !dbg !4114
  %arrayidx64 = getelementptr [11 x ptr], ptr %scratch63, i64 0, i64 0, !dbg !4114
  %60 = load ptr, ptr %arrayidx64, align 8, !dbg !4114
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !4115
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %61, i32 0, i32 5, !dbg !4116
  %62 = load ptr, ptr %a, align 8, !dbg !4116
  %63 = load ptr, ptr %ctx.addr, align 8, !dbg !4117
  call void @ec_mulm(ptr noundef %58, ptr noundef %60, ptr noundef %62, ptr noundef %63) #17, !dbg !4118
  %64 = load ptr, ptr %ctx.addr, align 8, !dbg !4119
  %t65 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %64, i32 0, i32 13, !dbg !4119
  %scratch66 = getelementptr inbounds %struct.anon.0, ptr %t65, i32 0, i32 4, !dbg !4119
  %arrayidx67 = getelementptr [11 x ptr], ptr %scratch66, i64 0, i64 3, !dbg !4119
  %65 = load ptr, ptr %arrayidx67, align 8, !dbg !4119
  %66 = load ptr, ptr %ctx.addr, align 8, !dbg !4120
  %t68 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %66, i32 0, i32 13, !dbg !4120
  %scratch69 = getelementptr inbounds %struct.anon.0, ptr %t68, i32 0, i32 4, !dbg !4120
  %arrayidx70 = getelementptr [11 x ptr], ptr %scratch69, i64 0, i64 3, !dbg !4120
  %67 = load ptr, ptr %arrayidx70, align 8, !dbg !4120
  %68 = load ptr, ptr %ctx.addr, align 8, !dbg !4121
  %t71 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %68, i32 0, i32 13, !dbg !4121
  %scratch72 = getelementptr inbounds %struct.anon.0, ptr %t71, i32 0, i32 4, !dbg !4121
  %arrayidx73 = getelementptr [11 x ptr], ptr %scratch72, i64 0, i64 0, !dbg !4121
  %69 = load ptr, ptr %arrayidx73, align 8, !dbg !4121
  %70 = load ptr, ptr %ctx.addr, align 8, !dbg !4122
  call void @ec_addm(ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %70) #17, !dbg !4123
  br label %if.end

if.end:                                           ; preds = %if.else42, %if.then10
  %71 = load ptr, ptr %result.addr, align 8, !dbg !4124
  %z74 = getelementptr inbounds %struct.gcry_mpi_point, ptr %71, i32 0, i32 2, !dbg !4124
  %72 = load ptr, ptr %z74, align 8, !dbg !4124
  %73 = load ptr, ptr %point.addr, align 8, !dbg !4125
  %y75 = getelementptr inbounds %struct.gcry_mpi_point, ptr %73, i32 0, i32 1, !dbg !4126
  %74 = load ptr, ptr %y75, align 8, !dbg !4126
  %75 = load ptr, ptr %point.addr, align 8, !dbg !4127
  %z76 = getelementptr inbounds %struct.gcry_mpi_point, ptr %75, i32 0, i32 2, !dbg !4128
  %76 = load ptr, ptr %z76, align 8, !dbg !4128
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !4129
  call void @ec_mulm(ptr noundef %72, ptr noundef %74, ptr noundef %76, ptr noundef %77) #17, !dbg !4130
  %78 = load ptr, ptr %result.addr, align 8, !dbg !4131
  %z77 = getelementptr inbounds %struct.gcry_mpi_point, ptr %78, i32 0, i32 2, !dbg !4131
  %79 = load ptr, ptr %z77, align 8, !dbg !4131
  %80 = load ptr, ptr %result.addr, align 8, !dbg !4132
  %z78 = getelementptr inbounds %struct.gcry_mpi_point, ptr %80, i32 0, i32 2, !dbg !4132
  %81 = load ptr, ptr %z78, align 8, !dbg !4132
  %82 = load ptr, ptr %ctx.addr, align 8, !dbg !4133
  call void @ec_mul2(ptr noundef %79, ptr noundef %81, ptr noundef %82) #17, !dbg !4134
  %83 = load ptr, ptr %ctx.addr, align 8, !dbg !4135
  %t79 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %83, i32 0, i32 13, !dbg !4135
  %scratch80 = getelementptr inbounds %struct.anon.0, ptr %t79, i32 0, i32 4, !dbg !4135
  %arrayidx81 = getelementptr [11 x ptr], ptr %scratch80, i64 0, i64 1, !dbg !4135
  %84 = load ptr, ptr %arrayidx81, align 8, !dbg !4135
  %85 = load ptr, ptr %point.addr, align 8, !dbg !4136
  %y82 = getelementptr inbounds %struct.gcry_mpi_point, ptr %85, i32 0, i32 1, !dbg !4137
  %86 = load ptr, ptr %y82, align 8, !dbg !4137
  %87 = load ptr, ptr %ctx.addr, align 8, !dbg !4138
  call void @ec_pow2(ptr noundef %84, ptr noundef %86, ptr noundef %87) #17, !dbg !4139
  %88 = load ptr, ptr %ctx.addr, align 8, !dbg !4140
  %t83 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %88, i32 0, i32 13, !dbg !4140
  %scratch84 = getelementptr inbounds %struct.anon.0, ptr %t83, i32 0, i32 4, !dbg !4140
  %arrayidx85 = getelementptr [11 x ptr], ptr %scratch84, i64 0, i64 4, !dbg !4140
  %89 = load ptr, ptr %arrayidx85, align 8, !dbg !4140
  %90 = load ptr, ptr %ctx.addr, align 8, !dbg !4141
  %t86 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %90, i32 0, i32 13, !dbg !4141
  %scratch87 = getelementptr inbounds %struct.anon.0, ptr %t86, i32 0, i32 4, !dbg !4141
  %arrayidx88 = getelementptr [11 x ptr], ptr %scratch87, i64 0, i64 1, !dbg !4141
  %91 = load ptr, ptr %arrayidx88, align 8, !dbg !4141
  %92 = load ptr, ptr %point.addr, align 8, !dbg !4142
  %x89 = getelementptr inbounds %struct.gcry_mpi_point, ptr %92, i32 0, i32 0, !dbg !4143
  %93 = load ptr, ptr %x89, align 8, !dbg !4143
  %94 = load ptr, ptr %ctx.addr, align 8, !dbg !4144
  call void @ec_mulm(ptr noundef %89, ptr noundef %91, ptr noundef %93, ptr noundef %94) #17, !dbg !4145
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !4146
  %t90 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %95, i32 0, i32 13, !dbg !4146
  %scratch91 = getelementptr inbounds %struct.anon.0, ptr %t90, i32 0, i32 4, !dbg !4146
  %arrayidx92 = getelementptr [11 x ptr], ptr %scratch91, i64 0, i64 4, !dbg !4146
  %96 = load ptr, ptr %arrayidx92, align 8, !dbg !4146
  %97 = load ptr, ptr %ctx.addr, align 8, !dbg !4147
  %t93 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %97, i32 0, i32 13, !dbg !4147
  %scratch94 = getelementptr inbounds %struct.anon.0, ptr %t93, i32 0, i32 4, !dbg !4147
  %arrayidx95 = getelementptr [11 x ptr], ptr %scratch94, i64 0, i64 4, !dbg !4147
  %98 = load ptr, ptr %arrayidx95, align 8, !dbg !4147
  %call96 = call ptr @mpi_const(i32 noundef 4) #17, !dbg !4148
  %99 = load ptr, ptr %ctx.addr, align 8, !dbg !4149
  call void @ec_mulm(ptr noundef %96, ptr noundef %98, ptr noundef %call96, ptr noundef %99) #17, !dbg !4150
  %100 = load ptr, ptr %result.addr, align 8, !dbg !4151
  %x97 = getelementptr inbounds %struct.gcry_mpi_point, ptr %100, i32 0, i32 0, !dbg !4151
  %101 = load ptr, ptr %x97, align 8, !dbg !4151
  %102 = load ptr, ptr %ctx.addr, align 8, !dbg !4152
  %t98 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %102, i32 0, i32 13, !dbg !4152
  %scratch99 = getelementptr inbounds %struct.anon.0, ptr %t98, i32 0, i32 4, !dbg !4152
  %arrayidx100 = getelementptr [11 x ptr], ptr %scratch99, i64 0, i64 3, !dbg !4152
  %103 = load ptr, ptr %arrayidx100, align 8, !dbg !4152
  %104 = load ptr, ptr %ctx.addr, align 8, !dbg !4153
  call void @ec_pow2(ptr noundef %101, ptr noundef %103, ptr noundef %104) #17, !dbg !4154
  %105 = load ptr, ptr %ctx.addr, align 8, !dbg !4155
  %t101 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %105, i32 0, i32 13, !dbg !4155
  %scratch102 = getelementptr inbounds %struct.anon.0, ptr %t101, i32 0, i32 4, !dbg !4155
  %arrayidx103 = getelementptr [11 x ptr], ptr %scratch102, i64 0, i64 0, !dbg !4155
  %106 = load ptr, ptr %arrayidx103, align 8, !dbg !4155
  %107 = load ptr, ptr %ctx.addr, align 8, !dbg !4156
  %t104 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %107, i32 0, i32 13, !dbg !4156
  %scratch105 = getelementptr inbounds %struct.anon.0, ptr %t104, i32 0, i32 4, !dbg !4156
  %arrayidx106 = getelementptr [11 x ptr], ptr %scratch105, i64 0, i64 4, !dbg !4156
  %108 = load ptr, ptr %arrayidx106, align 8, !dbg !4156
  %109 = load ptr, ptr %ctx.addr, align 8, !dbg !4157
  call void @ec_mul2(ptr noundef %106, ptr noundef %108, ptr noundef %109) #17, !dbg !4158
  %110 = load ptr, ptr %result.addr, align 8, !dbg !4159
  %x107 = getelementptr inbounds %struct.gcry_mpi_point, ptr %110, i32 0, i32 0, !dbg !4159
  %111 = load ptr, ptr %x107, align 8, !dbg !4159
  %112 = load ptr, ptr %result.addr, align 8, !dbg !4160
  %x108 = getelementptr inbounds %struct.gcry_mpi_point, ptr %112, i32 0, i32 0, !dbg !4160
  %113 = load ptr, ptr %x108, align 8, !dbg !4160
  %114 = load ptr, ptr %ctx.addr, align 8, !dbg !4161
  %t109 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %114, i32 0, i32 13, !dbg !4161
  %scratch110 = getelementptr inbounds %struct.anon.0, ptr %t109, i32 0, i32 4, !dbg !4161
  %arrayidx111 = getelementptr [11 x ptr], ptr %scratch110, i64 0, i64 0, !dbg !4161
  %115 = load ptr, ptr %arrayidx111, align 8, !dbg !4161
  %116 = load ptr, ptr %ctx.addr, align 8, !dbg !4162
  call void @ec_subm(ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %116) #17, !dbg !4163
  %117 = load ptr, ptr %ctx.addr, align 8, !dbg !4164
  %t112 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %117, i32 0, i32 13, !dbg !4164
  %scratch113 = getelementptr inbounds %struct.anon.0, ptr %t112, i32 0, i32 4, !dbg !4164
  %arrayidx114 = getelementptr [11 x ptr], ptr %scratch113, i64 0, i64 1, !dbg !4164
  %118 = load ptr, ptr %arrayidx114, align 8, !dbg !4164
  %119 = load ptr, ptr %ctx.addr, align 8, !dbg !4165
  %t115 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %119, i32 0, i32 13, !dbg !4165
  %scratch116 = getelementptr inbounds %struct.anon.0, ptr %t115, i32 0, i32 4, !dbg !4165
  %arrayidx117 = getelementptr [11 x ptr], ptr %scratch116, i64 0, i64 1, !dbg !4165
  %120 = load ptr, ptr %arrayidx117, align 8, !dbg !4165
  %121 = load ptr, ptr %ctx.addr, align 8, !dbg !4166
  call void @ec_pow2(ptr noundef %118, ptr noundef %120, ptr noundef %121) #17, !dbg !4167
  %122 = load ptr, ptr %ctx.addr, align 8, !dbg !4168
  %t118 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %122, i32 0, i32 13, !dbg !4168
  %scratch119 = getelementptr inbounds %struct.anon.0, ptr %t118, i32 0, i32 4, !dbg !4168
  %arrayidx120 = getelementptr [11 x ptr], ptr %scratch119, i64 0, i64 5, !dbg !4168
  %123 = load ptr, ptr %arrayidx120, align 8, !dbg !4168
  %124 = load ptr, ptr %ctx.addr, align 8, !dbg !4169
  %t121 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %124, i32 0, i32 13, !dbg !4169
  %scratch122 = getelementptr inbounds %struct.anon.0, ptr %t121, i32 0, i32 4, !dbg !4169
  %arrayidx123 = getelementptr [11 x ptr], ptr %scratch122, i64 0, i64 1, !dbg !4169
  %125 = load ptr, ptr %arrayidx123, align 8, !dbg !4169
  %call124 = call ptr @mpi_const(i32 noundef 5) #17, !dbg !4170
  %126 = load ptr, ptr %ctx.addr, align 8, !dbg !4171
  call void @ec_mulm(ptr noundef %123, ptr noundef %125, ptr noundef %call124, ptr noundef %126) #17, !dbg !4172
  %127 = load ptr, ptr %result.addr, align 8, !dbg !4173
  %y125 = getelementptr inbounds %struct.gcry_mpi_point, ptr %127, i32 0, i32 1, !dbg !4173
  %128 = load ptr, ptr %y125, align 8, !dbg !4173
  %129 = load ptr, ptr %ctx.addr, align 8, !dbg !4174
  %t126 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %129, i32 0, i32 13, !dbg !4174
  %scratch127 = getelementptr inbounds %struct.anon.0, ptr %t126, i32 0, i32 4, !dbg !4174
  %arrayidx128 = getelementptr [11 x ptr], ptr %scratch127, i64 0, i64 4, !dbg !4174
  %130 = load ptr, ptr %arrayidx128, align 8, !dbg !4174
  %131 = load ptr, ptr %result.addr, align 8, !dbg !4175
  %x129 = getelementptr inbounds %struct.gcry_mpi_point, ptr %131, i32 0, i32 0, !dbg !4175
  %132 = load ptr, ptr %x129, align 8, !dbg !4175
  %133 = load ptr, ptr %ctx.addr, align 8, !dbg !4176
  call void @ec_subm(ptr noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %133) #17, !dbg !4177
  %134 = load ptr, ptr %result.addr, align 8, !dbg !4178
  %y130 = getelementptr inbounds %struct.gcry_mpi_point, ptr %134, i32 0, i32 1, !dbg !4178
  %135 = load ptr, ptr %y130, align 8, !dbg !4178
  %136 = load ptr, ptr %result.addr, align 8, !dbg !4179
  %y131 = getelementptr inbounds %struct.gcry_mpi_point, ptr %136, i32 0, i32 1, !dbg !4179
  %137 = load ptr, ptr %y131, align 8, !dbg !4179
  %138 = load ptr, ptr %ctx.addr, align 8, !dbg !4180
  %t132 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %138, i32 0, i32 13, !dbg !4180
  %scratch133 = getelementptr inbounds %struct.anon.0, ptr %t132, i32 0, i32 4, !dbg !4180
  %arrayidx134 = getelementptr [11 x ptr], ptr %scratch133, i64 0, i64 3, !dbg !4180
  %139 = load ptr, ptr %arrayidx134, align 8, !dbg !4180
  %140 = load ptr, ptr %ctx.addr, align 8, !dbg !4181
  call void @ec_mulm(ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %140) #17, !dbg !4182
  %141 = load ptr, ptr %result.addr, align 8, !dbg !4183
  %y135 = getelementptr inbounds %struct.gcry_mpi_point, ptr %141, i32 0, i32 1, !dbg !4183
  %142 = load ptr, ptr %y135, align 8, !dbg !4183
  %143 = load ptr, ptr %result.addr, align 8, !dbg !4184
  %y136 = getelementptr inbounds %struct.gcry_mpi_point, ptr %143, i32 0, i32 1, !dbg !4184
  %144 = load ptr, ptr %y136, align 8, !dbg !4184
  %145 = load ptr, ptr %ctx.addr, align 8, !dbg !4185
  %t137 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %145, i32 0, i32 13, !dbg !4185
  %scratch138 = getelementptr inbounds %struct.anon.0, ptr %t137, i32 0, i32 4, !dbg !4185
  %arrayidx139 = getelementptr [11 x ptr], ptr %scratch138, i64 0, i64 5, !dbg !4185
  %146 = load ptr, ptr %arrayidx139, align 8, !dbg !4185
  %147 = load ptr, ptr %ctx.addr, align 8, !dbg !4186
  call void @ec_subm(ptr noundef %142, ptr noundef %144, ptr noundef %146, ptr noundef %147) #17, !dbg !4187
  br label %if.end140

if.end140:                                        ; preds = %if.end, %if.then
  ret void, !dbg !4188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dup_point_montgomery(ptr noundef %result, ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !4189 {
entry:
  %result.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !4191, metadata !DIExpression()), !dbg !4194
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !4192, metadata !DIExpression()), !dbg !4195
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4193, metadata !DIExpression()), !dbg !4196
  %0 = load ptr, ptr %result.addr, align 8, !dbg !4197
  %1 = load ptr, ptr %point.addr, align 8, !dbg !4198
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !4199
  br label %do.body, !dbg !4200

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4202

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, ptr noundef @.str.27, ptr noundef @.str.2) #19, !dbg !4200
  store i32 %call, ptr %tmp, align 4, !dbg !4202
  %3 = load i32, ptr %tmp, align 4, !dbg !4200
  ret void, !dbg !4204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dup_point_edwards(ptr noundef %result, ptr noundef %point, ptr noundef %ctx) #0 align 16 !dbg !4205 {
entry:
  %result.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !4207, metadata !DIExpression()), !dbg !4210
  store ptr %point, ptr %point.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %point.addr, metadata !4208, metadata !DIExpression()), !dbg !4211
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4209, metadata !DIExpression()), !dbg !4212
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4213
  %addm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 14, !dbg !4214
  %1 = load ptr, ptr %addm, align 8, !dbg !4214
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !4215
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, !dbg !4215
  %scratch = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 4, !dbg !4215
  %arrayidx = getelementptr [11 x ptr], ptr %scratch, i64 0, i64 0, !dbg !4215
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !4215
  %4 = load ptr, ptr %point.addr, align 8, !dbg !4216
  %x = getelementptr inbounds %struct.gcry_mpi_point, ptr %4, i32 0, i32 0, !dbg !4216
  %5 = load ptr, ptr %x, align 8, !dbg !4216
  %6 = load ptr, ptr %point.addr, align 8, !dbg !4217
  %y = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 1, !dbg !4217
  %7 = load ptr, ptr %y, align 8, !dbg !4217
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !4218
  call void %1(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %8) #17, !dbg !4213
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !4219
  %pow2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %9, i32 0, i32 17, !dbg !4220
  %10 = load ptr, ptr %pow2, align 8, !dbg !4220
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !4221
  %t1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %11, i32 0, i32 13, !dbg !4221
  %scratch2 = getelementptr inbounds %struct.anon.0, ptr %t1, i32 0, i32 4, !dbg !4221
  %arrayidx3 = getelementptr [11 x ptr], ptr %scratch2, i64 0, i64 0, !dbg !4221
  %12 = load ptr, ptr %arrayidx3, align 8, !dbg !4221
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !4222
  %t4 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %13, i32 0, i32 13, !dbg !4222
  %scratch5 = getelementptr inbounds %struct.anon.0, ptr %t4, i32 0, i32 4, !dbg !4222
  %arrayidx6 = getelementptr [11 x ptr], ptr %scratch5, i64 0, i64 0, !dbg !4222
  %14 = load ptr, ptr %arrayidx6, align 8, !dbg !4222
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !4223
  call void %10(ptr noundef %12, ptr noundef %14, ptr noundef %15) #17, !dbg !4219
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !4224
  %pow27 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %16, i32 0, i32 17, !dbg !4225
  %17 = load ptr, ptr %pow27, align 8, !dbg !4225
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !4226
  %t8 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %18, i32 0, i32 13, !dbg !4226
  %scratch9 = getelementptr inbounds %struct.anon.0, ptr %t8, i32 0, i32 4, !dbg !4226
  %arrayidx10 = getelementptr [11 x ptr], ptr %scratch9, i64 0, i64 1, !dbg !4226
  %19 = load ptr, ptr %arrayidx10, align 8, !dbg !4226
  %20 = load ptr, ptr %point.addr, align 8, !dbg !4227
  %x11 = getelementptr inbounds %struct.gcry_mpi_point, ptr %20, i32 0, i32 0, !dbg !4227
  %21 = load ptr, ptr %x11, align 8, !dbg !4227
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !4228
  call void %17(ptr noundef %19, ptr noundef %21, ptr noundef %22) #17, !dbg !4224
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !4229
  %pow212 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %23, i32 0, i32 17, !dbg !4230
  %24 = load ptr, ptr %pow212, align 8, !dbg !4230
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !4231
  %t13 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %25, i32 0, i32 13, !dbg !4231
  %scratch14 = getelementptr inbounds %struct.anon.0, ptr %t13, i32 0, i32 4, !dbg !4231
  %arrayidx15 = getelementptr [11 x ptr], ptr %scratch14, i64 0, i64 2, !dbg !4231
  %26 = load ptr, ptr %arrayidx15, align 8, !dbg !4231
  %27 = load ptr, ptr %point.addr, align 8, !dbg !4232
  %y16 = getelementptr inbounds %struct.gcry_mpi_point, ptr %27, i32 0, i32 1, !dbg !4232
  %28 = load ptr, ptr %y16, align 8, !dbg !4232
  %29 = load ptr, ptr %ctx.addr, align 8, !dbg !4233
  call void %24(ptr noundef %26, ptr noundef %28, ptr noundef %29) #17, !dbg !4229
  %30 = load ptr, ptr %ctx.addr, align 8, !dbg !4234
  %dialect = getelementptr inbounds %struct.mpi_ec_ctx, ptr %30, i32 0, i32 1, !dbg !4236
  %31 = load i32, ptr %dialect, align 4, !dbg !4236
  %cmp = icmp eq i32 %31, 1, !dbg !4237
  br i1 %cmp, label %if.then, label %if.else, !dbg !4238

if.then:                                          ; preds = %entry
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !4239
  %subm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %32, i32 0, i32 15, !dbg !4240
  %33 = load ptr, ptr %subm, align 8, !dbg !4240
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !4241
  %t17 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %34, i32 0, i32 13, !dbg !4241
  %scratch18 = getelementptr inbounds %struct.anon.0, ptr %t17, i32 0, i32 4, !dbg !4241
  %arrayidx19 = getelementptr [11 x ptr], ptr %scratch18, i64 0, i64 3, !dbg !4241
  %35 = load ptr, ptr %arrayidx19, align 8, !dbg !4241
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !4242
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %36, i32 0, i32 4, !dbg !4243
  %37 = load ptr, ptr %p, align 8, !dbg !4243
  %38 = load ptr, ptr %ctx.addr, align 8, !dbg !4244
  %t20 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %38, i32 0, i32 13, !dbg !4244
  %scratch21 = getelementptr inbounds %struct.anon.0, ptr %t20, i32 0, i32 4, !dbg !4244
  %arrayidx22 = getelementptr [11 x ptr], ptr %scratch21, i64 0, i64 1, !dbg !4244
  %39 = load ptr, ptr %arrayidx22, align 8, !dbg !4244
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !4245
  call void %33(ptr noundef %35, ptr noundef %37, ptr noundef %39, ptr noundef %40) #17, !dbg !4239
  br label %if.end, !dbg !4239

if.else:                                          ; preds = %entry
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !4246
  %mulm = getelementptr inbounds %struct.mpi_ec_ctx, ptr %41, i32 0, i32 16, !dbg !4247
  %42 = load ptr, ptr %mulm, align 8, !dbg !4247
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !4248
  %t23 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %43, i32 0, i32 13, !dbg !4248
  %scratch24 = getelementptr inbounds %struct.anon.0, ptr %t23, i32 0, i32 4, !dbg !4248
  %arrayidx25 = getelementptr [11 x ptr], ptr %scratch24, i64 0, i64 3, !dbg !4248
  %44 = load ptr, ptr %arrayidx25, align 8, !dbg !4248
  %45 = load ptr, ptr %ctx.addr, align 8, !dbg !4249
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %45, i32 0, i32 5, !dbg !4250
  %46 = load ptr, ptr %a, align 8, !dbg !4250
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !4251
  %t26 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %47, i32 0, i32 13, !dbg !4251
  %scratch27 = getelementptr inbounds %struct.anon.0, ptr %t26, i32 0, i32 4, !dbg !4251
  %arrayidx28 = getelementptr [11 x ptr], ptr %scratch27, i64 0, i64 1, !dbg !4251
  %48 = load ptr, ptr %arrayidx28, align 8, !dbg !4251
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !4252
  call void %42(ptr noundef %44, ptr noundef %46, ptr noundef %48, ptr noundef %49) #17, !dbg !4246
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %50 = load ptr, ptr %ctx.addr, align 8, !dbg !4253
  %addm29 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %50, i32 0, i32 14, !dbg !4254
  %51 = load ptr, ptr %addm29, align 8, !dbg !4254
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !4255
  %t30 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %52, i32 0, i32 13, !dbg !4255
  %scratch31 = getelementptr inbounds %struct.anon.0, ptr %t30, i32 0, i32 4, !dbg !4255
  %arrayidx32 = getelementptr [11 x ptr], ptr %scratch31, i64 0, i64 4, !dbg !4255
  %53 = load ptr, ptr %arrayidx32, align 8, !dbg !4255
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !4256
  %t33 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %54, i32 0, i32 13, !dbg !4256
  %scratch34 = getelementptr inbounds %struct.anon.0, ptr %t33, i32 0, i32 4, !dbg !4256
  %arrayidx35 = getelementptr [11 x ptr], ptr %scratch34, i64 0, i64 3, !dbg !4256
  %55 = load ptr, ptr %arrayidx35, align 8, !dbg !4256
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !4257
  %t36 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %56, i32 0, i32 13, !dbg !4257
  %scratch37 = getelementptr inbounds %struct.anon.0, ptr %t36, i32 0, i32 4, !dbg !4257
  %arrayidx38 = getelementptr [11 x ptr], ptr %scratch37, i64 0, i64 2, !dbg !4257
  %57 = load ptr, ptr %arrayidx38, align 8, !dbg !4257
  %58 = load ptr, ptr %ctx.addr, align 8, !dbg !4258
  call void %51(ptr noundef %53, ptr noundef %55, ptr noundef %57, ptr noundef %58) #17, !dbg !4253
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !4259
  %pow239 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %59, i32 0, i32 17, !dbg !4260
  %60 = load ptr, ptr %pow239, align 8, !dbg !4260
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !4261
  %t40 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %61, i32 0, i32 13, !dbg !4261
  %scratch41 = getelementptr inbounds %struct.anon.0, ptr %t40, i32 0, i32 4, !dbg !4261
  %arrayidx42 = getelementptr [11 x ptr], ptr %scratch41, i64 0, i64 5, !dbg !4261
  %62 = load ptr, ptr %arrayidx42, align 8, !dbg !4261
  %63 = load ptr, ptr %point.addr, align 8, !dbg !4262
  %z = getelementptr inbounds %struct.gcry_mpi_point, ptr %63, i32 0, i32 2, !dbg !4262
  %64 = load ptr, ptr %z, align 8, !dbg !4262
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !4263
  call void %60(ptr noundef %62, ptr noundef %64, ptr noundef %65) #17, !dbg !4259
  %66 = load ptr, ptr %ctx.addr, align 8, !dbg !4264
  %mul2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %66, i32 0, i32 18, !dbg !4265
  %67 = load ptr, ptr %mul2, align 8, !dbg !4265
  %68 = load ptr, ptr %ctx.addr, align 8, !dbg !4266
  %t43 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %68, i32 0, i32 13, !dbg !4266
  %scratch44 = getelementptr inbounds %struct.anon.0, ptr %t43, i32 0, i32 4, !dbg !4266
  %arrayidx45 = getelementptr [11 x ptr], ptr %scratch44, i64 0, i64 6, !dbg !4266
  %69 = load ptr, ptr %arrayidx45, align 8, !dbg !4266
  %70 = load ptr, ptr %ctx.addr, align 8, !dbg !4267
  %t46 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %70, i32 0, i32 13, !dbg !4267
  %scratch47 = getelementptr inbounds %struct.anon.0, ptr %t46, i32 0, i32 4, !dbg !4267
  %arrayidx48 = getelementptr [11 x ptr], ptr %scratch47, i64 0, i64 5, !dbg !4267
  %71 = load ptr, ptr %arrayidx48, align 8, !dbg !4267
  %72 = load ptr, ptr %ctx.addr, align 8, !dbg !4268
  call void %67(ptr noundef %69, ptr noundef %71, ptr noundef %72) #17, !dbg !4264
  %73 = load ptr, ptr %ctx.addr, align 8, !dbg !4269
  %subm49 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %73, i32 0, i32 15, !dbg !4270
  %74 = load ptr, ptr %subm49, align 8, !dbg !4270
  %75 = load ptr, ptr %ctx.addr, align 8, !dbg !4271
  %t50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %75, i32 0, i32 13, !dbg !4271
  %scratch51 = getelementptr inbounds %struct.anon.0, ptr %t50, i32 0, i32 4, !dbg !4271
  %arrayidx52 = getelementptr [11 x ptr], ptr %scratch51, i64 0, i64 6, !dbg !4271
  %76 = load ptr, ptr %arrayidx52, align 8, !dbg !4271
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !4272
  %t53 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %77, i32 0, i32 13, !dbg !4272
  %scratch54 = getelementptr inbounds %struct.anon.0, ptr %t53, i32 0, i32 4, !dbg !4272
  %arrayidx55 = getelementptr [11 x ptr], ptr %scratch54, i64 0, i64 4, !dbg !4272
  %78 = load ptr, ptr %arrayidx55, align 8, !dbg !4272
  %79 = load ptr, ptr %ctx.addr, align 8, !dbg !4273
  %t56 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %79, i32 0, i32 13, !dbg !4273
  %scratch57 = getelementptr inbounds %struct.anon.0, ptr %t56, i32 0, i32 4, !dbg !4273
  %arrayidx58 = getelementptr [11 x ptr], ptr %scratch57, i64 0, i64 6, !dbg !4273
  %80 = load ptr, ptr %arrayidx58, align 8, !dbg !4273
  %81 = load ptr, ptr %ctx.addr, align 8, !dbg !4274
  call void %74(ptr noundef %76, ptr noundef %78, ptr noundef %80, ptr noundef %81) #17, !dbg !4269
  %82 = load ptr, ptr %ctx.addr, align 8, !dbg !4275
  %subm59 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %82, i32 0, i32 15, !dbg !4276
  %83 = load ptr, ptr %subm59, align 8, !dbg !4276
  %84 = load ptr, ptr %result.addr, align 8, !dbg !4277
  %x60 = getelementptr inbounds %struct.gcry_mpi_point, ptr %84, i32 0, i32 0, !dbg !4277
  %85 = load ptr, ptr %x60, align 8, !dbg !4277
  %86 = load ptr, ptr %ctx.addr, align 8, !dbg !4278
  %t61 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %86, i32 0, i32 13, !dbg !4278
  %scratch62 = getelementptr inbounds %struct.anon.0, ptr %t61, i32 0, i32 4, !dbg !4278
  %arrayidx63 = getelementptr [11 x ptr], ptr %scratch62, i64 0, i64 0, !dbg !4278
  %87 = load ptr, ptr %arrayidx63, align 8, !dbg !4278
  %88 = load ptr, ptr %ctx.addr, align 8, !dbg !4279
  %t64 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %88, i32 0, i32 13, !dbg !4279
  %scratch65 = getelementptr inbounds %struct.anon.0, ptr %t64, i32 0, i32 4, !dbg !4279
  %arrayidx66 = getelementptr [11 x ptr], ptr %scratch65, i64 0, i64 1, !dbg !4279
  %89 = load ptr, ptr %arrayidx66, align 8, !dbg !4279
  %90 = load ptr, ptr %ctx.addr, align 8, !dbg !4280
  call void %83(ptr noundef %85, ptr noundef %87, ptr noundef %89, ptr noundef %90) #17, !dbg !4275
  %91 = load ptr, ptr %ctx.addr, align 8, !dbg !4281
  %subm67 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %91, i32 0, i32 15, !dbg !4282
  %92 = load ptr, ptr %subm67, align 8, !dbg !4282
  %93 = load ptr, ptr %result.addr, align 8, !dbg !4283
  %x68 = getelementptr inbounds %struct.gcry_mpi_point, ptr %93, i32 0, i32 0, !dbg !4283
  %94 = load ptr, ptr %x68, align 8, !dbg !4283
  %95 = load ptr, ptr %result.addr, align 8, !dbg !4284
  %x69 = getelementptr inbounds %struct.gcry_mpi_point, ptr %95, i32 0, i32 0, !dbg !4284
  %96 = load ptr, ptr %x69, align 8, !dbg !4284
  %97 = load ptr, ptr %ctx.addr, align 8, !dbg !4285
  %t70 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %97, i32 0, i32 13, !dbg !4285
  %scratch71 = getelementptr inbounds %struct.anon.0, ptr %t70, i32 0, i32 4, !dbg !4285
  %arrayidx72 = getelementptr [11 x ptr], ptr %scratch71, i64 0, i64 2, !dbg !4285
  %98 = load ptr, ptr %arrayidx72, align 8, !dbg !4285
  %99 = load ptr, ptr %ctx.addr, align 8, !dbg !4286
  call void %92(ptr noundef %94, ptr noundef %96, ptr noundef %98, ptr noundef %99) #17, !dbg !4281
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !4287
  %mulm73 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %100, i32 0, i32 16, !dbg !4288
  %101 = load ptr, ptr %mulm73, align 8, !dbg !4288
  %102 = load ptr, ptr %result.addr, align 8, !dbg !4289
  %x74 = getelementptr inbounds %struct.gcry_mpi_point, ptr %102, i32 0, i32 0, !dbg !4289
  %103 = load ptr, ptr %x74, align 8, !dbg !4289
  %104 = load ptr, ptr %result.addr, align 8, !dbg !4290
  %x75 = getelementptr inbounds %struct.gcry_mpi_point, ptr %104, i32 0, i32 0, !dbg !4290
  %105 = load ptr, ptr %x75, align 8, !dbg !4290
  %106 = load ptr, ptr %ctx.addr, align 8, !dbg !4291
  %t76 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %106, i32 0, i32 13, !dbg !4291
  %scratch77 = getelementptr inbounds %struct.anon.0, ptr %t76, i32 0, i32 4, !dbg !4291
  %arrayidx78 = getelementptr [11 x ptr], ptr %scratch77, i64 0, i64 6, !dbg !4291
  %107 = load ptr, ptr %arrayidx78, align 8, !dbg !4291
  %108 = load ptr, ptr %ctx.addr, align 8, !dbg !4292
  call void %101(ptr noundef %103, ptr noundef %105, ptr noundef %107, ptr noundef %108) #17, !dbg !4287
  %109 = load ptr, ptr %ctx.addr, align 8, !dbg !4293
  %subm79 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %109, i32 0, i32 15, !dbg !4294
  %110 = load ptr, ptr %subm79, align 8, !dbg !4294
  %111 = load ptr, ptr %result.addr, align 8, !dbg !4295
  %y80 = getelementptr inbounds %struct.gcry_mpi_point, ptr %111, i32 0, i32 1, !dbg !4295
  %112 = load ptr, ptr %y80, align 8, !dbg !4295
  %113 = load ptr, ptr %ctx.addr, align 8, !dbg !4296
  %t81 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %113, i32 0, i32 13, !dbg !4296
  %scratch82 = getelementptr inbounds %struct.anon.0, ptr %t81, i32 0, i32 4, !dbg !4296
  %arrayidx83 = getelementptr [11 x ptr], ptr %scratch82, i64 0, i64 3, !dbg !4296
  %114 = load ptr, ptr %arrayidx83, align 8, !dbg !4296
  %115 = load ptr, ptr %ctx.addr, align 8, !dbg !4297
  %t84 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %115, i32 0, i32 13, !dbg !4297
  %scratch85 = getelementptr inbounds %struct.anon.0, ptr %t84, i32 0, i32 4, !dbg !4297
  %arrayidx86 = getelementptr [11 x ptr], ptr %scratch85, i64 0, i64 2, !dbg !4297
  %116 = load ptr, ptr %arrayidx86, align 8, !dbg !4297
  %117 = load ptr, ptr %ctx.addr, align 8, !dbg !4298
  call void %110(ptr noundef %112, ptr noundef %114, ptr noundef %116, ptr noundef %117) #17, !dbg !4293
  %118 = load ptr, ptr %ctx.addr, align 8, !dbg !4299
  %mulm87 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %118, i32 0, i32 16, !dbg !4300
  %119 = load ptr, ptr %mulm87, align 8, !dbg !4300
  %120 = load ptr, ptr %result.addr, align 8, !dbg !4301
  %y88 = getelementptr inbounds %struct.gcry_mpi_point, ptr %120, i32 0, i32 1, !dbg !4301
  %121 = load ptr, ptr %y88, align 8, !dbg !4301
  %122 = load ptr, ptr %result.addr, align 8, !dbg !4302
  %y89 = getelementptr inbounds %struct.gcry_mpi_point, ptr %122, i32 0, i32 1, !dbg !4302
  %123 = load ptr, ptr %y89, align 8, !dbg !4302
  %124 = load ptr, ptr %ctx.addr, align 8, !dbg !4303
  %t90 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %124, i32 0, i32 13, !dbg !4303
  %scratch91 = getelementptr inbounds %struct.anon.0, ptr %t90, i32 0, i32 4, !dbg !4303
  %arrayidx92 = getelementptr [11 x ptr], ptr %scratch91, i64 0, i64 4, !dbg !4303
  %125 = load ptr, ptr %arrayidx92, align 8, !dbg !4303
  %126 = load ptr, ptr %ctx.addr, align 8, !dbg !4304
  call void %119(ptr noundef %121, ptr noundef %123, ptr noundef %125, ptr noundef %126) #17, !dbg !4299
  %127 = load ptr, ptr %ctx.addr, align 8, !dbg !4305
  %mulm93 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %127, i32 0, i32 16, !dbg !4306
  %128 = load ptr, ptr %mulm93, align 8, !dbg !4306
  %129 = load ptr, ptr %result.addr, align 8, !dbg !4307
  %z94 = getelementptr inbounds %struct.gcry_mpi_point, ptr %129, i32 0, i32 2, !dbg !4307
  %130 = load ptr, ptr %z94, align 8, !dbg !4307
  %131 = load ptr, ptr %ctx.addr, align 8, !dbg !4308
  %t95 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %131, i32 0, i32 13, !dbg !4308
  %scratch96 = getelementptr inbounds %struct.anon.0, ptr %t95, i32 0, i32 4, !dbg !4308
  %arrayidx97 = getelementptr [11 x ptr], ptr %scratch96, i64 0, i64 4, !dbg !4308
  %132 = load ptr, ptr %arrayidx97, align 8, !dbg !4308
  %133 = load ptr, ptr %ctx.addr, align 8, !dbg !4309
  %t98 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %133, i32 0, i32 13, !dbg !4309
  %scratch99 = getelementptr inbounds %struct.anon.0, ptr %t98, i32 0, i32 4, !dbg !4309
  %arrayidx100 = getelementptr [11 x ptr], ptr %scratch99, i64 0, i64 6, !dbg !4309
  %134 = load ptr, ptr %arrayidx100, align 8, !dbg !4309
  %135 = load ptr, ptr %ctx.addr, align 8, !dbg !4310
  call void %128(ptr noundef %130, ptr noundef %132, ptr noundef %134, ptr noundef %135) #17, !dbg !4305
  ret void, !dbg !4311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ec_get_a_is_pminus3(ptr noundef %ec) #0 align 16 !dbg !4312 {
entry:
  %ec.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4317, metadata !DIExpression()), !dbg !4320
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !4321
  %t = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, !dbg !4323
  %valid = getelementptr inbounds %struct.anon.0, ptr %t, i32 0, i32 0, !dbg !4324
  %bf.load = load i8, ptr %valid, align 8, !dbg !4325
  %bf.clear = and i8 %bf.load, 1, !dbg !4325
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4325
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4321
  br i1 %tobool, label %if.end, label %if.then, !dbg !4326

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !4327
  %t1 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 13, !dbg !4329
  %valid2 = getelementptr inbounds %struct.anon.0, ptr %t1, i32 0, i32 0, !dbg !4330
  %bf.load3 = load i8, ptr %valid2, align 8, !dbg !4331
  %bf.clear4 = and i8 %bf.load3, -2, !dbg !4331
  %bf.set = or i8 %bf.clear4, 1, !dbg !4331
  store i8 %bf.set, ptr %valid2, align 8, !dbg !4331
  %2 = load ptr, ptr %ec.addr, align 8, !dbg !4332
  %p = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4, !dbg !4333
  %3 = load ptr, ptr %p, align 8, !dbg !4333
  %call = call ptr @mpi_alloc_like(ptr noundef %3) #17, !dbg !4334
  store ptr %call, ptr %tmp, align 8, !dbg !4335
  %4 = load ptr, ptr %tmp, align 8, !dbg !4336
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !4337
  %p5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %5, i32 0, i32 4, !dbg !4338
  %6 = load ptr, ptr %p5, align 8, !dbg !4338
  %call6 = call i32 @mpi_sub_ui(ptr noundef %4, ptr noundef %6, i64 noundef 3) #17, !dbg !4339
  %7 = load ptr, ptr %ec.addr, align 8, !dbg !4340
  %a = getelementptr inbounds %struct.mpi_ec_ctx, ptr %7, i32 0, i32 5, !dbg !4341
  %8 = load ptr, ptr %a, align 8, !dbg !4341
  %9 = load ptr, ptr %tmp, align 8, !dbg !4342
  %call7 = call i32 @mpi_cmp(ptr noundef %8, ptr noundef %9) #17, !dbg !4343
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4344
  %lnot = xor i1 %tobool8, true, !dbg !4344
  %lnot.ext = zext i1 %lnot to i32, !dbg !4344
  %10 = load ptr, ptr %ec.addr, align 8, !dbg !4345
  %t9 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %10, i32 0, i32 13, !dbg !4346
  %a_is_pminus3 = getelementptr inbounds %struct.anon.0, ptr %t9, i32 0, i32 1, !dbg !4347
  store i32 %lnot.ext, ptr %a_is_pminus3, align 4, !dbg !4348
  %11 = load ptr, ptr %tmp, align 8, !dbg !4349
  call void @mpi_free(ptr noundef %11) #17, !dbg !4350
  br label %if.end, !dbg !4351

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %ec.addr, align 8, !dbg !4352
  %t10 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %12, i32 0, i32 13, !dbg !4353
  %a_is_pminus311 = getelementptr inbounds %struct.anon.0, ptr %t10, i32 0, i32 1, !dbg !4354
  %13 = load i32, ptr %a_is_pminus311, align 4, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !4355
  ret i32 %13, !dbg !4356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4357 dso_local i32 @mpi_sub_ui(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4360 dso_local void @mpi_swap_cond(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4363 dso_local i32 @mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_point_new287", scope: !2, file: !3, line: 48, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.ec.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22ec\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/ec.ll lib/crypto/mpi/ec.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/ec.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0dd7d8b1f3508fdfe01b7dc36f115883")
!4 = !{!5, !12, !17, !25, !30}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gcry_mpi_ec_models", file: !6, line: 172, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "MPI_EC_WEIERSTRASS", value: 0)
!10 = !DIEnumerator(name: "MPI_EC_MONTGOMERY", value: 1)
!11 = !DIEnumerator(name: "MPI_EC_EDWARDS", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ecc_dialects", file: !6, line: 189, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "ECC_DIALECT_STANDARD", value: 0)
!15 = !DIEnumerator(name: "ECC_DIALECT_ED25519", value: 1)
!16 = !DIEnumerator(name: "ECC_DIALECT_SAFECURVE", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gcry_mpi_constants", file: !6, line: 68, baseType: !7, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DIEnumerator(name: "MPI_C_ZERO", value: 0)
!20 = !DIEnumerator(name: "MPI_C_ONE", value: 1)
!21 = !DIEnumerator(name: "MPI_C_TWO", value: 2)
!22 = !DIEnumerator(name: "MPI_C_THREE", value: 3)
!23 = !DIEnumerator(name: "MPI_C_FOUR", value: 4)
!24 = !DIEnumerator(name: "MPI_C_EIGHT", value: 5)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 10, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "false", value: 0)
!29 = !DIEnumerator(name: "true", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !31, line: 364, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!32 = !{!33, !34, !35, !36, !37, !38, !39}
!33 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!36 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!37 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!38 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!39 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!40 = !{!41, !43, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !42, line: 154, baseType: !7)
!42 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !6, line: 26, baseType: !44)
!46 = !{!0, !47, !49, !51, !53, !150, !152, !154, !159, !164, !167, !169, !171, !173, !175, !180, !187, !192, !194, !196, !198, !200, !202, !204, !209, !214, !216, !218, !220, !222, !227, !229, !231, !245, !250, !252, !254, !259, !261, !263, !268, !273, !275}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_point_release288", scope: !2, file: !3, line: 58, type: !43, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_point_init289", scope: !2, file: !3, line: 69, type: !43, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_point_free_parts290", scope: !2, file: !3, line: 78, type: !43, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "use_barrett", scope: !55, file: !3, line: 569, type: !64, isLocal: true, isDefinition: true)
!55 = distinct !DISubprogram(name: "mpi_ec_init", scope: !3, file: !3, line: 564, type: !56, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !5, !12, !64, !67, !67, !67}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpi_ec_ctx", file: !6, line: 196, size: 1920, elements: !60)
!60 = !{!61, !62, !63, !65, !66, !78, !79, !80, !88, !89, !90, !91, !92, !96, !114, !118, !119, !120, !125}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !59, file: !6, line: 197, baseType: !5, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dialect", scope: !59, file: !6, line: 198, baseType: !12, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !6, line: 199, baseType: !64, size: 32, offset: 64)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !59, file: !6, line: 200, baseType: !7, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !59, file: !6, line: 205, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !6, line: 40, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !6, line: 29, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !69, file: !6, line: 30, baseType: !64, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !69, file: !6, line: 31, baseType: !64, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !69, file: !6, line: 32, baseType: !64, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !69, file: !6, line: 33, baseType: !64, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !6, line: 34, baseType: !7, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !69, file: !6, line: 37, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !59, file: !6, line: 206, baseType: !67, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !59, file: !6, line: 207, baseType: !67, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "G", scope: !59, file: !6, line: 208, baseType: !81, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI_POINT", file: !6, line: 169, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi_point", file: !6, line: 163, size: 192, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !83, file: !6, line: 164, baseType: !67, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !83, file: !6, line: 165, baseType: !67, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !83, file: !6, line: 166, baseType: !67, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !59, file: !6, line: 209, baseType: !67, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !59, file: !6, line: 210, baseType: !7, size: 32, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Q", scope: !59, file: !6, line: 213, baseType: !81, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !59, file: !6, line: 214, baseType: !67, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !6, line: 216, baseType: !93, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !59, file: !6, line: 238, baseType: !97, size: 896, offset: 704)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !6, line: 219, size: 896, elements: !98)
!98 = !{!99, !104, !105, !106, !110}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !97, file: !6, line: 223, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !6, line: 220, size: 32, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a_is_pminus3", scope: !100, file: !6, line: 221, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "two_inv_p", scope: !100, file: !6, line: 222, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "a_is_pminus3", scope: !97, file: !6, line: 225, baseType: !64, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "two_inv_p", scope: !97, file: !6, line: 227, baseType: !67, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "p_barrett", scope: !97, file: !6, line: 229, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_barrett_t", file: !6, line: 110, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "barrett_ctx_s", file: !6, line: 109, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !97, file: !6, line: 232, baseType: !111, size: 704, offset: 192)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 704, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 11)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "addm", scope: !59, file: !6, line: 241, baseType: !115, size: 64, offset: 1600)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !67, !67, !67, !58}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "subm", scope: !59, file: !6, line: 242, baseType: !115, size: 64, offset: 1664)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "mulm", scope: !59, file: !6, line: 243, baseType: !115, size: 64, offset: 1728)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pow2", scope: !59, file: !6, line: 244, baseType: !121, size: 64, offset: 1792)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !67, !124, !58}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "mul2", scope: !59, file: !6, line: 245, baseType: !126, size: 64, offset: 1856)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !67, !67, !58}
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !144, !145, !146}
!130 = !DILocalVariable(name: "ctx", arg: 1, scope: !55, file: !3, line: 564, type: !58)
!131 = !DILocalVariable(name: "model", arg: 2, scope: !55, file: !3, line: 564, type: !5)
!132 = !DILocalVariable(name: "dialect", arg: 3, scope: !55, file: !3, line: 565, type: !12)
!133 = !DILocalVariable(name: "flags", arg: 4, scope: !55, file: !3, line: 566, type: !64)
!134 = !DILocalVariable(name: "p", arg: 5, scope: !55, file: !3, line: 566, type: !67)
!135 = !DILocalVariable(name: "a", arg: 6, scope: !55, file: !3, line: 566, type: !67)
!136 = !DILocalVariable(name: "b", arg: 7, scope: !55, file: !3, line: 566, type: !67)
!137 = !DILocalVariable(name: "i", scope: !55, file: !3, line: 568, type: !64)
!138 = !DILocalVariable(name: "p_candidate", scope: !139, file: !3, line: 596, type: !67)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 595, column: 47)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 595, column: 3)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 595, column: 3)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 594, column: 34)
!143 = distinct !DILexicalBlock(scope: !55, file: !3, line: 594, column: 6)
!144 = !DILocalVariable(name: "match_p", scope: !139, file: !3, line: 597, type: !64)
!145 = !DILocalVariable(name: "j", scope: !139, file: !3, line: 598, type: !64)
!146 = !DILocalVariable(name: "f_p", scope: !147, file: !3, line: 620, type: !67)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 619, column: 37)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 619, column: 2)
!149 = distinct !DILexicalBlock(scope: !55, file: !3, line: 619, column: 2)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_ec_init291", scope: !2, file: !3, line: 649, type: !43, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_ec_deinit292", scope: !2, file: !3, line: 674, type: !43, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 408, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 51)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 144, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 18)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 88, elements: !112)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_ec_get_affine293", scope: !2, file: !3, line: 753, type: !43, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_ec_add_points294", scope: !2, file: !3, line: 1207, type: !43, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_ec_mul_point295", scope: !2, file: !3, line: 1398, type: !43, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_ec_curve_point296", scope: !2, file: !3, line: 1509, type: !43, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !31, line: 480, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 168, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 21)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "bad_points_table", scope: !2, file: !3, line: 545, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, elements: !185)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!185 = !{!186}
!186 = !DISubrange(count: 2)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 521, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 536, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 67)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !189, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 523, type: !189, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !189, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 525, type: !189, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !189, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 527, type: !189, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "curve25519_bad_points", scope: !2, file: !3, line: 520, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 512, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 8)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 920, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 115)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !211, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 536, type: !211, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 538, type: !211, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 540, type: !211, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "curve448_bad_points", scope: !2, file: !3, line: 531, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 384, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 6)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 466, type: !189, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !211, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "field_table", scope: !2, file: !3, line: 464, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1152, elements: !243)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_table", file: !3, line: 453, size: 384, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !235, file: !3, line: 454, baseType: !93, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "addm", scope: !235, file: !3, line: 457, baseType: !115, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "subm", scope: !235, file: !3, line: 458, baseType: !115, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mulm", scope: !235, file: !3, line: 459, baseType: !115, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mul2", scope: !235, file: !3, line: 460, baseType: !126, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pow2", scope: !235, file: !3, line: 461, baseType: !121, size: 64, offset: 320)
!243 = !{!244}
!244 = !DISubrange(count: 3)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 232, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 29)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !247, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !247, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 216, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 27)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !256, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !256, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 288, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 36)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1067, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 224, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 28)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1067, type: !161, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 840, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 136, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 17)
!280 = !{i32 7, !"Dwarf Version", i32 5}
!281 = !{i32 2, !"Debug Info Version", i32 3}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 8, !"cf-protection-branch", i32 1}
!284 = !{i32 4, !"function_return_thunk_extern", i32 1}
!285 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!286 = !{i32 1, !"Code Model", i32 2}
!287 = !{i32 1, !"override-stack-alignment", i32 8}
!288 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!289 = distinct !DISubprogram(name: "mpi_point_new", scope: !3, file: !3, line: 37, type: !290, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!81, !7}
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "nbits", arg: 1, scope: !289, file: !3, line: 37, type: !7)
!294 = !DILocalVariable(name: "p", scope: !289, file: !3, line: 39, type: !81)
!295 = !DILocation(line: 37, column: 38, scope: !289)
!296 = !DILocation(line: 39, column: 2, scope: !289)
!297 = !DILocation(line: 39, column: 12, scope: !289)
!298 = !DILocation(line: 41, column: 8, scope: !289)
!299 = !DILocation(line: 43, column: 6, scope: !289)
!300 = !DILocation(line: 43, column: 4, scope: !289)
!301 = !DILocation(line: 44, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !289, file: !3, line: 44, column: 6)
!303 = !DILocation(line: 44, column: 6, scope: !289)
!304 = !DILocation(line: 45, column: 18, scope: !302)
!305 = !DILocation(line: 45, column: 3, scope: !302)
!306 = !DILocation(line: 46, column: 9, scope: !289)
!307 = !DILocation(line: 47, column: 1, scope: !289)
!308 = !DILocation(line: 46, column: 2, scope: !289)
!309 = distinct !DISubprogram(name: "kmalloc", scope: !31, file: !31, line: 591, type: !310, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!310 = !DISubroutineType(types: !311)
!311 = !{!43, !312, !41}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 61, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !314, line: 72, baseType: !315)
!314 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !314, line: 16, baseType: !44)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "size", arg: 1, scope: !309, file: !31, line: 591, type: !312)
!318 = !DILocalVariable(name: "flags", arg: 2, scope: !309, file: !31, line: 591, type: !41)
!319 = !DILocalVariable(name: "index", scope: !320, file: !31, line: 594, type: !7)
!320 = distinct !DILexicalBlock(scope: !321, file: !31, line: 593, column: 42)
!321 = distinct !DILexicalBlock(scope: !309, file: !31, line: 593, column: 6)
!322 = !DILocation(line: 591, column: 61, scope: !309)
!323 = !DILocation(line: 591, column: 73, scope: !309)
!324 = !DILocation(line: 593, column: 27, scope: !321)
!325 = !DILocation(line: 593, column: 6, scope: !321)
!326 = !DILocation(line: 593, column: 33, scope: !321)
!327 = !DILocation(line: 593, column: 36, scope: !321)
!328 = !DILocation(line: 593, column: 6, scope: !309)
!329 = !DILocation(line: 594, column: 3, scope: !320)
!330 = !DILocation(line: 594, column: 16, scope: !320)
!331 = !DILocation(line: 596, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !320, file: !31, line: 596, column: 7)
!333 = !DILocation(line: 596, column: 12, scope: !332)
!334 = !DILocation(line: 596, column: 7, scope: !320)
!335 = !DILocation(line: 597, column: 25, scope: !332)
!336 = !DILocation(line: 597, column: 31, scope: !332)
!337 = !DILocation(line: 597, column: 11, scope: !332)
!338 = !DILocation(line: 597, column: 4, scope: !332)
!339 = !DILocation(line: 599, column: 11, scope: !320)
!340 = !DILocation(line: 599, column: 9, scope: !320)
!341 = !DILocation(line: 601, column: 33, scope: !320)
!342 = !DILocation(line: 601, column: 40, scope: !320)
!343 = !DILocation(line: 601, column: 20, scope: !320)
!344 = !DILocation(line: 601, column: 5, scope: !320)
!345 = !DILocation(line: 601, column: 51, scope: !320)
!346 = !DILocation(line: 602, column: 5, scope: !320)
!347 = !DILocation(line: 602, column: 12, scope: !320)
!348 = !DILocation(line: 600, column: 10, scope: !320)
!349 = !DILocation(line: 600, column: 3, scope: !320)
!350 = !DILocation(line: 603, column: 2, scope: !321)
!351 = !DILocation(line: 604, column: 19, scope: !309)
!352 = !DILocation(line: 604, column: 25, scope: !309)
!353 = !DILocation(line: 604, column: 9, scope: !309)
!354 = !DILocation(line: 604, column: 2, scope: !309)
!355 = !DILocation(line: 605, column: 1, scope: !309)
!356 = distinct !DISubprogram(name: "mpi_point_init", scope: !3, file: !3, line: 63, type: !357, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !81}
!359 = !{!360}
!360 = !DILocalVariable(name: "p", arg: 1, scope: !356, file: !3, line: 63, type: !81)
!361 = !DILocation(line: 63, column: 31, scope: !356)
!362 = !DILocation(line: 65, column: 9, scope: !356)
!363 = !DILocation(line: 65, column: 2, scope: !356)
!364 = !DILocation(line: 65, column: 5, scope: !356)
!365 = !DILocation(line: 65, column: 7, scope: !356)
!366 = !DILocation(line: 66, column: 9, scope: !356)
!367 = !DILocation(line: 66, column: 2, scope: !356)
!368 = !DILocation(line: 66, column: 5, scope: !356)
!369 = !DILocation(line: 66, column: 7, scope: !356)
!370 = !DILocation(line: 67, column: 9, scope: !356)
!371 = !DILocation(line: 67, column: 2, scope: !356)
!372 = !DILocation(line: 67, column: 5, scope: !356)
!373 = !DILocation(line: 67, column: 7, scope: !356)
!374 = !DILocation(line: 68, column: 1, scope: !356)
!375 = distinct !DISubprogram(name: "mpi_point_release", scope: !3, file: !3, line: 51, type: !357, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!376 = !{!377}
!377 = !DILocalVariable(name: "p", arg: 1, scope: !375, file: !3, line: 51, type: !81)
!378 = !DILocation(line: 51, column: 34, scope: !375)
!379 = !DILocation(line: 53, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !3, line: 53, column: 6)
!381 = !DILocation(line: 53, column: 6, scope: !375)
!382 = !DILocation(line: 54, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 53, column: 9)
!384 = !DILocation(line: 54, column: 3, scope: !383)
!385 = !DILocation(line: 55, column: 9, scope: !383)
!386 = !DILocation(line: 55, column: 3, scope: !383)
!387 = !DILocation(line: 56, column: 2, scope: !383)
!388 = !DILocation(line: 57, column: 1, scope: !375)
!389 = distinct !DISubprogram(name: "mpi_point_free_parts", scope: !3, file: !3, line: 72, type: !357, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!390 = !{!391}
!391 = !DILocalVariable(name: "p", arg: 1, scope: !389, file: !3, line: 72, type: !81)
!392 = !DILocation(line: 72, column: 37, scope: !389)
!393 = !DILocation(line: 74, column: 11, scope: !389)
!394 = !DILocation(line: 74, column: 14, scope: !389)
!395 = !DILocation(line: 74, column: 2, scope: !389)
!396 = !DILocation(line: 74, column: 18, scope: !389)
!397 = !DILocation(line: 74, column: 21, scope: !389)
!398 = !DILocation(line: 74, column: 23, scope: !389)
!399 = !DILocation(line: 75, column: 11, scope: !389)
!400 = !DILocation(line: 75, column: 14, scope: !389)
!401 = !DILocation(line: 75, column: 2, scope: !389)
!402 = !DILocation(line: 75, column: 18, scope: !389)
!403 = !DILocation(line: 75, column: 21, scope: !389)
!404 = !DILocation(line: 75, column: 23, scope: !389)
!405 = !DILocation(line: 76, column: 11, scope: !389)
!406 = !DILocation(line: 76, column: 14, scope: !389)
!407 = !DILocation(line: 76, column: 2, scope: !389)
!408 = !DILocation(line: 76, column: 18, scope: !389)
!409 = !DILocation(line: 76, column: 21, scope: !389)
!410 = !DILocation(line: 76, column: 23, scope: !389)
!411 = !DILocation(line: 77, column: 1, scope: !389)
!412 = !DISubprogram(name: "kfree", scope: !31, file: !31, line: 227, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!417 = distinct !DISubprogram(name: "mpi_new", scope: !6, file: !6, line: 51, type: !418, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!67, !7}
!420 = !{!421}
!421 = !DILocalVariable(name: "nbits", arg: 1, scope: !417, file: !6, line: 51, type: !7)
!422 = !DILocation(line: 51, column: 40, scope: !417)
!423 = !DILocation(line: 53, column: 20, scope: !417)
!424 = !DILocation(line: 53, column: 26, scope: !417)
!425 = !DILocation(line: 53, column: 46, scope: !417)
!426 = !DILocation(line: 53, column: 51, scope: !417)
!427 = !DILocation(line: 53, column: 9, scope: !417)
!428 = !DILocation(line: 53, column: 2, scope: !417)
!429 = !DISubprogram(name: "mpi_free", scope: !6, file: !6, line: 48, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !67}
!432 = !DILocation(line: 564, column: 37, scope: !55)
!433 = !DILocation(line: 564, column: 66, scope: !55)
!434 = !DILocation(line: 565, column: 22, scope: !55)
!435 = !DILocation(line: 566, column: 8, scope: !55)
!436 = !DILocation(line: 566, column: 19, scope: !55)
!437 = !DILocation(line: 566, column: 26, scope: !55)
!438 = !DILocation(line: 566, column: 33, scope: !55)
!439 = !DILocation(line: 568, column: 2, scope: !55)
!440 = !DILocation(line: 568, column: 6, scope: !55)
!441 = !DILocation(line: 571, column: 31, scope: !55)
!442 = !DILocation(line: 571, column: 34, scope: !55)
!443 = !DILocation(line: 571, column: 2, scope: !55)
!444 = !DILocation(line: 572, column: 31, scope: !55)
!445 = !DILocation(line: 572, column: 34, scope: !55)
!446 = !DILocation(line: 572, column: 2, scope: !55)
!447 = !DILocation(line: 576, column: 15, scope: !55)
!448 = !DILocation(line: 576, column: 2, scope: !55)
!449 = !DILocation(line: 576, column: 7, scope: !55)
!450 = !DILocation(line: 576, column: 13, scope: !55)
!451 = !DILocation(line: 577, column: 17, scope: !55)
!452 = !DILocation(line: 577, column: 2, scope: !55)
!453 = !DILocation(line: 577, column: 7, scope: !55)
!454 = !DILocation(line: 577, column: 15, scope: !55)
!455 = !DILocation(line: 578, column: 15, scope: !55)
!456 = !DILocation(line: 578, column: 2, scope: !55)
!457 = !DILocation(line: 578, column: 7, scope: !55)
!458 = !DILocation(line: 578, column: 13, scope: !55)
!459 = !DILocation(line: 579, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !55, file: !3, line: 579, column: 6)
!461 = !DILocation(line: 579, column: 14, scope: !460)
!462 = !DILocation(line: 579, column: 6, scope: !55)
!463 = !DILocation(line: 580, column: 3, scope: !460)
!464 = !DILocation(line: 580, column: 8, scope: !460)
!465 = !DILocation(line: 580, column: 14, scope: !460)
!466 = !DILocation(line: 582, column: 30, scope: !460)
!467 = !DILocation(line: 582, column: 16, scope: !460)
!468 = !DILocation(line: 582, column: 3, scope: !460)
!469 = !DILocation(line: 582, column: 8, scope: !460)
!470 = !DILocation(line: 582, column: 14, scope: !460)
!471 = !DILocation(line: 583, column: 20, scope: !55)
!472 = !DILocation(line: 583, column: 11, scope: !55)
!473 = !DILocation(line: 583, column: 2, scope: !55)
!474 = !DILocation(line: 583, column: 7, scope: !55)
!475 = !DILocation(line: 583, column: 9, scope: !55)
!476 = !DILocation(line: 584, column: 20, scope: !55)
!477 = !DILocation(line: 584, column: 11, scope: !55)
!478 = !DILocation(line: 584, column: 2, scope: !55)
!479 = !DILocation(line: 584, column: 7, scope: !55)
!480 = !DILocation(line: 584, column: 9, scope: !55)
!481 = !DILocation(line: 585, column: 20, scope: !55)
!482 = !DILocation(line: 585, column: 11, scope: !55)
!483 = !DILocation(line: 585, column: 2, scope: !55)
!484 = !DILocation(line: 585, column: 7, scope: !55)
!485 = !DILocation(line: 585, column: 9, scope: !55)
!486 = !DILocation(line: 587, column: 2, scope: !55)
!487 = !DILocation(line: 587, column: 7, scope: !55)
!488 = !DILocation(line: 587, column: 9, scope: !55)
!489 = !DILocation(line: 588, column: 2, scope: !55)
!490 = !DILocation(line: 588, column: 7, scope: !55)
!491 = !DILocation(line: 588, column: 9, scope: !55)
!492 = !DILocation(line: 588, column: 19, scope: !55)
!493 = !DILocation(line: 590, column: 21, scope: !55)
!494 = !DILocation(line: 590, column: 33, scope: !55)
!495 = !DILocation(line: 590, column: 56, scope: !55)
!496 = !DILocation(line: 590, column: 61, scope: !55)
!497 = !DILocation(line: 590, column: 39, scope: !55)
!498 = !DILocation(line: 590, column: 2, scope: !55)
!499 = !DILocation(line: 590, column: 7, scope: !55)
!500 = !DILocation(line: 590, column: 9, scope: !55)
!501 = !DILocation(line: 590, column: 19, scope: !55)
!502 = !DILocation(line: 592, column: 19, scope: !55)
!503 = !DILocation(line: 592, column: 2, scope: !55)
!504 = !DILocation(line: 594, column: 6, scope: !143)
!505 = !DILocation(line: 594, column: 12, scope: !143)
!506 = !DILocation(line: 594, column: 6, scope: !55)
!507 = !DILocation(line: 595, column: 10, scope: !141)
!508 = !DILocation(line: 595, column: 8, scope: !141)
!509 = !DILocation(line: 595, column: 15, scope: !140)
!510 = !DILocation(line: 595, column: 17, scope: !140)
!511 = !DILocation(line: 595, column: 3, scope: !141)
!512 = !DILocation(line: 596, column: 4, scope: !139)
!513 = !DILocation(line: 596, column: 8, scope: !139)
!514 = !DILocation(line: 596, column: 51, scope: !139)
!515 = !DILocation(line: 596, column: 34, scope: !139)
!516 = !DILocation(line: 596, column: 22, scope: !139)
!517 = !DILocation(line: 597, column: 4, scope: !139)
!518 = !DILocation(line: 597, column: 8, scope: !139)
!519 = !DILocation(line: 597, column: 27, scope: !139)
!520 = !DILocation(line: 597, column: 32, scope: !139)
!521 = !DILocation(line: 597, column: 35, scope: !139)
!522 = !DILocation(line: 597, column: 19, scope: !139)
!523 = !DILocation(line: 597, column: 18, scope: !139)
!524 = !DILocation(line: 598, column: 4, scope: !139)
!525 = !DILocation(line: 598, column: 8, scope: !139)
!526 = !DILocation(line: 600, column: 13, scope: !139)
!527 = !DILocation(line: 600, column: 4, scope: !139)
!528 = !DILocation(line: 601, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !139, file: !3, line: 601, column: 8)
!530 = !DILocation(line: 601, column: 8, scope: !139)
!531 = !DILocation(line: 602, column: 5, scope: !529)
!532 = !DILocation(line: 604, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !139, file: !3, line: 604, column: 4)
!534 = !DILocation(line: 604, column: 9, scope: !533)
!535 = !DILocation(line: 604, column: 16, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 604, column: 4)
!537 = !DILocation(line: 604, column: 18, scope: !536)
!538 = !DILocation(line: 604, column: 40, scope: !536)
!539 = !DILocation(line: 604, column: 60, scope: !536)
!540 = !DILocation(line: 604, column: 43, scope: !536)
!541 = !DILocation(line: 604, column: 63, scope: !536)
!542 = !DILocation(line: 0, scope: !536)
!543 = !DILocation(line: 604, column: 4, scope: !533)
!544 = !DILocation(line: 605, column: 54, scope: !536)
!545 = !DILocation(line: 605, column: 37, scope: !536)
!546 = !DILocation(line: 605, column: 57, scope: !536)
!547 = !DILocation(line: 605, column: 25, scope: !536)
!548 = !DILocation(line: 605, column: 5, scope: !536)
!549 = !DILocation(line: 605, column: 10, scope: !536)
!550 = !DILocation(line: 605, column: 12, scope: !536)
!551 = !DILocation(line: 605, column: 20, scope: !536)
!552 = !DILocation(line: 605, column: 23, scope: !536)
!553 = !DILocation(line: 604, column: 68, scope: !536)
!554 = !DILocation(line: 604, column: 4, scope: !536)
!555 = distinct !{!555, !543, !556, !557, !558}
!556 = !DILocation(line: 605, column: 59, scope: !533)
!557 = !{!"llvm.loop.mustprogress"}
!558 = !{!"llvm.loop.unroll.disable"}
!559 = !DILocation(line: 606, column: 3, scope: !140)
!560 = !DILocation(line: 606, column: 3, scope: !139)
!561 = !DILocation(line: 595, column: 43, scope: !140)
!562 = !DILocation(line: 595, column: 3, scope: !140)
!563 = distinct !{!563, !511, !564, !557, !558}
!564 = !DILocation(line: 606, column: 3, scope: !141)
!565 = !DILocation(line: 607, column: 2, scope: !142)
!566 = !DILocation(line: 609, column: 10, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 609, column: 3)
!568 = distinct !DILexicalBlock(scope: !143, file: !3, line: 607, column: 9)
!569 = !DILocation(line: 609, column: 8, scope: !567)
!570 = !DILocation(line: 609, column: 15, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !3, line: 609, column: 3)
!572 = !DILocation(line: 609, column: 17, scope: !571)
!573 = !DILocation(line: 609, column: 3, scope: !567)
!574 = !DILocation(line: 610, column: 39, scope: !571)
!575 = !DILocation(line: 610, column: 44, scope: !571)
!576 = !DILocation(line: 610, column: 24, scope: !571)
!577 = !DILocation(line: 610, column: 4, scope: !571)
!578 = !DILocation(line: 610, column: 9, scope: !571)
!579 = !DILocation(line: 610, column: 11, scope: !571)
!580 = !DILocation(line: 610, column: 19, scope: !571)
!581 = !DILocation(line: 610, column: 22, scope: !571)
!582 = !DILocation(line: 609, column: 41, scope: !571)
!583 = !DILocation(line: 609, column: 3, scope: !571)
!584 = distinct !{!584, !573, !585, !557, !558}
!585 = !DILocation(line: 610, column: 45, scope: !567)
!586 = !DILocation(line: 613, column: 2, scope: !55)
!587 = !DILocation(line: 613, column: 7, scope: !55)
!588 = !DILocation(line: 613, column: 12, scope: !55)
!589 = !DILocation(line: 614, column: 2, scope: !55)
!590 = !DILocation(line: 614, column: 7, scope: !55)
!591 = !DILocation(line: 614, column: 12, scope: !55)
!592 = !DILocation(line: 615, column: 2, scope: !55)
!593 = !DILocation(line: 615, column: 7, scope: !55)
!594 = !DILocation(line: 615, column: 12, scope: !55)
!595 = !DILocation(line: 616, column: 2, scope: !55)
!596 = !DILocation(line: 616, column: 7, scope: !55)
!597 = !DILocation(line: 616, column: 12, scope: !55)
!598 = !DILocation(line: 617, column: 2, scope: !55)
!599 = !DILocation(line: 617, column: 7, scope: !55)
!600 = !DILocation(line: 617, column: 12, scope: !55)
!601 = !DILocation(line: 619, column: 9, scope: !149)
!602 = !DILocation(line: 619, column: 7, scope: !149)
!603 = !DILocation(line: 619, column: 26, scope: !148)
!604 = !DILocation(line: 619, column: 14, scope: !148)
!605 = !DILocation(line: 619, column: 29, scope: !148)
!606 = !DILocation(line: 619, column: 2, scope: !149)
!607 = !DILocation(line: 620, column: 3, scope: !147)
!608 = !DILocation(line: 620, column: 7, scope: !147)
!609 = !DILocation(line: 622, column: 33, scope: !147)
!610 = !DILocation(line: 622, column: 21, scope: !147)
!611 = !DILocation(line: 622, column: 36, scope: !147)
!612 = !DILocation(line: 622, column: 9, scope: !147)
!613 = !DILocation(line: 622, column: 7, scope: !147)
!614 = !DILocation(line: 623, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !147, file: !3, line: 623, column: 7)
!616 = !DILocation(line: 623, column: 7, scope: !147)
!617 = !DILocation(line: 624, column: 4, scope: !615)
!618 = !DILocation(line: 626, column: 16, scope: !619)
!619 = distinct !DILexicalBlock(scope: !147, file: !3, line: 626, column: 7)
!620 = !DILocation(line: 626, column: 19, scope: !619)
!621 = !DILocation(line: 626, column: 8, scope: !619)
!622 = !DILocation(line: 626, column: 7, scope: !147)
!623 = !DILocation(line: 627, column: 28, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !3, line: 626, column: 25)
!625 = !DILocation(line: 627, column: 16, scope: !624)
!626 = !DILocation(line: 627, column: 31, scope: !624)
!627 = !DILocation(line: 627, column: 4, scope: !624)
!628 = !DILocation(line: 627, column: 9, scope: !624)
!629 = !DILocation(line: 627, column: 14, scope: !624)
!630 = !DILocation(line: 628, column: 28, scope: !624)
!631 = !DILocation(line: 628, column: 16, scope: !624)
!632 = !DILocation(line: 628, column: 31, scope: !624)
!633 = !DILocation(line: 628, column: 4, scope: !624)
!634 = !DILocation(line: 628, column: 9, scope: !624)
!635 = !DILocation(line: 628, column: 14, scope: !624)
!636 = !DILocation(line: 629, column: 28, scope: !624)
!637 = !DILocation(line: 629, column: 16, scope: !624)
!638 = !DILocation(line: 629, column: 31, scope: !624)
!639 = !DILocation(line: 629, column: 4, scope: !624)
!640 = !DILocation(line: 629, column: 9, scope: !624)
!641 = !DILocation(line: 629, column: 14, scope: !624)
!642 = !DILocation(line: 630, column: 28, scope: !624)
!643 = !DILocation(line: 630, column: 16, scope: !624)
!644 = !DILocation(line: 630, column: 31, scope: !624)
!645 = !DILocation(line: 630, column: 4, scope: !624)
!646 = !DILocation(line: 630, column: 9, scope: !624)
!647 = !DILocation(line: 630, column: 14, scope: !624)
!648 = !DILocation(line: 631, column: 28, scope: !624)
!649 = !DILocation(line: 631, column: 16, scope: !624)
!650 = !DILocation(line: 631, column: 31, scope: !624)
!651 = !DILocation(line: 631, column: 4, scope: !624)
!652 = !DILocation(line: 631, column: 9, scope: !624)
!653 = !DILocation(line: 631, column: 14, scope: !624)
!654 = !DILocation(line: 632, column: 13, scope: !624)
!655 = !DILocation(line: 632, column: 4, scope: !624)
!656 = !DILocation(line: 634, column: 15, scope: !624)
!657 = !DILocation(line: 634, column: 20, scope: !624)
!658 = !DILocation(line: 634, column: 23, scope: !624)
!659 = !DILocation(line: 634, column: 28, scope: !624)
!660 = !DILocation(line: 634, column: 31, scope: !624)
!661 = !DILocation(line: 634, column: 4, scope: !624)
!662 = !DILocation(line: 635, column: 21, scope: !624)
!663 = !DILocation(line: 635, column: 26, scope: !624)
!664 = !DILocation(line: 635, column: 29, scope: !624)
!665 = !DILocation(line: 635, column: 4, scope: !624)
!666 = !DILocation(line: 635, column: 9, scope: !624)
!667 = !DILocation(line: 635, column: 12, scope: !624)
!668 = !DILocation(line: 635, column: 19, scope: !624)
!669 = !DILocation(line: 637, column: 15, scope: !624)
!670 = !DILocation(line: 637, column: 20, scope: !624)
!671 = !DILocation(line: 637, column: 23, scope: !624)
!672 = !DILocation(line: 637, column: 28, scope: !624)
!673 = !DILocation(line: 637, column: 31, scope: !624)
!674 = !DILocation(line: 637, column: 4, scope: !624)
!675 = !DILocation(line: 638, column: 21, scope: !624)
!676 = !DILocation(line: 638, column: 26, scope: !624)
!677 = !DILocation(line: 638, column: 29, scope: !624)
!678 = !DILocation(line: 638, column: 4, scope: !624)
!679 = !DILocation(line: 638, column: 9, scope: !624)
!680 = !DILocation(line: 638, column: 12, scope: !624)
!681 = !DILocation(line: 638, column: 19, scope: !624)
!682 = !DILocation(line: 640, column: 11, scope: !683)
!683 = distinct !DILexicalBlock(scope: !624, file: !3, line: 640, column: 4)
!684 = !DILocation(line: 640, column: 9, scope: !683)
!685 = !DILocation(line: 640, column: 16, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 640, column: 4)
!687 = !DILocation(line: 640, column: 18, scope: !686)
!688 = !DILocation(line: 640, column: 40, scope: !686)
!689 = !DILocation(line: 640, column: 43, scope: !686)
!690 = !DILocation(line: 640, column: 48, scope: !686)
!691 = !DILocation(line: 640, column: 50, scope: !686)
!692 = !DILocation(line: 640, column: 58, scope: !686)
!693 = !DILocation(line: 0, scope: !686)
!694 = !DILocation(line: 640, column: 4, scope: !683)
!695 = !DILocation(line: 641, column: 33, scope: !686)
!696 = !DILocation(line: 641, column: 38, scope: !686)
!697 = !DILocation(line: 641, column: 41, scope: !686)
!698 = !DILocation(line: 641, column: 5, scope: !686)
!699 = !DILocation(line: 641, column: 10, scope: !686)
!700 = !DILocation(line: 641, column: 12, scope: !686)
!701 = !DILocation(line: 641, column: 20, scope: !686)
!702 = !DILocation(line: 641, column: 24, scope: !686)
!703 = !DILocation(line: 641, column: 31, scope: !686)
!704 = !DILocation(line: 640, column: 63, scope: !686)
!705 = !DILocation(line: 640, column: 4, scope: !686)
!706 = distinct !{!706, !694, !707, !557, !558}
!707 = !DILocation(line: 641, column: 41, scope: !683)
!708 = !DILocation(line: 643, column: 4, scope: !624)
!709 = !DILocation(line: 646, column: 12, scope: !147)
!710 = !DILocation(line: 646, column: 3, scope: !147)
!711 = !DILocation(line: 647, column: 2, scope: !148)
!712 = !DILocation(line: 647, column: 2, scope: !147)
!713 = !DILocation(line: 619, column: 33, scope: !148)
!714 = !DILocation(line: 619, column: 2, scope: !148)
!715 = distinct !{!715, !606, !716, !557, !558}
!716 = !DILocation(line: 647, column: 2, scope: !149)
!717 = !DILocation(line: 648, column: 1, scope: !55)
!718 = distinct !DISubprogram(name: "mpi_ec_coefficient_normalize", scope: !3, file: !3, line: 550, type: !719, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !67, !67}
!721 = !{!722, !723}
!722 = !DILocalVariable(name: "a", arg: 1, scope: !718, file: !3, line: 550, type: !67)
!723 = !DILocalVariable(name: "p", arg: 2, scope: !718, file: !3, line: 550, type: !67)
!724 = !DILocation(line: 550, column: 46, scope: !718)
!725 = !DILocation(line: 550, column: 53, scope: !718)
!726 = !DILocation(line: 552, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !718, file: !3, line: 552, column: 6)
!728 = !DILocation(line: 552, column: 9, scope: !727)
!729 = !DILocation(line: 552, column: 6, scope: !718)
!730 = !DILocation(line: 553, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 552, column: 15)
!732 = !DILocation(line: 553, column: 17, scope: !731)
!733 = !DILocation(line: 553, column: 20, scope: !731)
!734 = !DILocation(line: 553, column: 3, scope: !731)
!735 = !DILocation(line: 554, column: 17, scope: !731)
!736 = !DILocation(line: 554, column: 20, scope: !731)
!737 = !DILocation(line: 554, column: 23, scope: !731)
!738 = !DILocation(line: 554, column: 26, scope: !731)
!739 = !DILocation(line: 554, column: 29, scope: !731)
!740 = !DILocation(line: 554, column: 32, scope: !731)
!741 = !DILocation(line: 554, column: 35, scope: !731)
!742 = !DILocation(line: 554, column: 38, scope: !731)
!743 = !DILocation(line: 554, column: 3, scope: !731)
!744 = !DILocation(line: 555, column: 15, scope: !731)
!745 = !DILocation(line: 555, column: 18, scope: !731)
!746 = !DILocation(line: 555, column: 3, scope: !731)
!747 = !DILocation(line: 555, column: 6, scope: !731)
!748 = !DILocation(line: 555, column: 13, scope: !731)
!749 = !DILocation(line: 556, column: 3, scope: !731)
!750 = !DILocation(line: 556, column: 6, scope: !731)
!751 = !DILocation(line: 556, column: 11, scope: !731)
!752 = !DILocation(line: 557, column: 2, scope: !731)
!753 = !DILocation(line: 558, column: 1, scope: !718)
!754 = !DISubprogram(name: "mpi_get_nbits", scope: !6, file: !6, line: 130, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DISubroutineType(types: !756)
!756 = !{!7, !67}
!757 = !DISubprogram(name: "mpi_copy", scope: !6, file: !6, line: 56, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!67, !67}
!760 = !DISubprogram(name: "mpi_barrett_init", scope: !6, file: !6, line: 112, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{!107, !67, !64}
!763 = distinct !DISubprogram(name: "mpi_ec_get_reset", scope: !3, file: !3, line: 486, type: !764, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !58}
!766 = !{!767}
!767 = !DILocalVariable(name: "ec", arg: 1, scope: !763, file: !3, line: 486, type: !58)
!768 = !DILocation(line: 486, column: 49, scope: !763)
!769 = !DILocation(line: 488, column: 2, scope: !763)
!770 = !DILocation(line: 488, column: 6, scope: !763)
!771 = !DILocation(line: 488, column: 8, scope: !763)
!772 = !DILocation(line: 488, column: 27, scope: !763)
!773 = !DILocation(line: 489, column: 2, scope: !763)
!774 = !DILocation(line: 489, column: 6, scope: !763)
!775 = !DILocation(line: 489, column: 8, scope: !763)
!776 = !DILocation(line: 489, column: 24, scope: !763)
!777 = !DILocation(line: 490, column: 1, scope: !763)
!778 = !DISubprogram(name: "mpi_scanval", scope: !6, file: !6, line: 95, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubroutineType(types: !780)
!780 = !{!67, !93}
!781 = !DISubprogram(name: "mpi_cmp", scope: !6, file: !6, line: 122, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubroutineType(types: !783)
!783 = !{!64, !67, !67}
!784 = !DISubprogram(name: "mpi_alloc_like", scope: !6, file: !6, line: 57, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!785 = distinct !DISubprogram(name: "ec_addm", scope: !3, file: !3, line: 122, type: !116, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "w", arg: 1, scope: !785, file: !3, line: 122, type: !67)
!788 = !DILocalVariable(name: "u", arg: 2, scope: !785, file: !3, line: 122, type: !67)
!789 = !DILocalVariable(name: "v", arg: 3, scope: !785, file: !3, line: 122, type: !67)
!790 = !DILocalVariable(name: "ctx", arg: 4, scope: !785, file: !3, line: 122, type: !58)
!791 = !DILocation(line: 122, column: 25, scope: !785)
!792 = !DILocation(line: 122, column: 32, scope: !785)
!793 = !DILocation(line: 122, column: 39, scope: !785)
!794 = !DILocation(line: 122, column: 61, scope: !785)
!795 = !DILocation(line: 124, column: 10, scope: !785)
!796 = !DILocation(line: 124, column: 13, scope: !785)
!797 = !DILocation(line: 124, column: 16, scope: !785)
!798 = !DILocation(line: 124, column: 2, scope: !785)
!799 = !DILocation(line: 125, column: 9, scope: !785)
!800 = !DILocation(line: 125, column: 12, scope: !785)
!801 = !DILocation(line: 125, column: 2, scope: !785)
!802 = !DILocation(line: 126, column: 1, scope: !785)
!803 = distinct !DISubprogram(name: "ec_subm", scope: !3, file: !3, line: 128, type: !116, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!804 = !{!805, !806, !807, !808}
!805 = !DILocalVariable(name: "w", arg: 1, scope: !803, file: !3, line: 128, type: !67)
!806 = !DILocalVariable(name: "u", arg: 2, scope: !803, file: !3, line: 128, type: !67)
!807 = !DILocalVariable(name: "v", arg: 3, scope: !803, file: !3, line: 128, type: !67)
!808 = !DILocalVariable(name: "ec", arg: 4, scope: !803, file: !3, line: 128, type: !58)
!809 = !DILocation(line: 128, column: 25, scope: !803)
!810 = !DILocation(line: 128, column: 32, scope: !803)
!811 = !DILocation(line: 128, column: 39, scope: !803)
!812 = !DILocation(line: 128, column: 61, scope: !803)
!813 = !DILocation(line: 130, column: 10, scope: !803)
!814 = !DILocation(line: 130, column: 13, scope: !803)
!815 = !DILocation(line: 130, column: 16, scope: !803)
!816 = !DILocation(line: 130, column: 2, scope: !803)
!817 = !DILocation(line: 131, column: 2, scope: !803)
!818 = !DILocation(line: 131, column: 9, scope: !803)
!819 = !DILocation(line: 131, column: 12, scope: !803)
!820 = !DILocation(line: 132, column: 11, scope: !803)
!821 = !DILocation(line: 132, column: 14, scope: !803)
!822 = !DILocation(line: 132, column: 17, scope: !803)
!823 = !DILocation(line: 132, column: 21, scope: !803)
!824 = !DILocation(line: 132, column: 3, scope: !803)
!825 = distinct !{!825, !817, !826, !557, !558}
!826 = !DILocation(line: 132, column: 22, scope: !803)
!827 = !DILocation(line: 134, column: 1, scope: !803)
!828 = distinct !DISubprogram(name: "ec_mulm", scope: !3, file: !3, line: 136, type: !116, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!829 = !{!830, !831, !832, !833}
!830 = !DILocalVariable(name: "w", arg: 1, scope: !828, file: !3, line: 136, type: !67)
!831 = !DILocalVariable(name: "u", arg: 2, scope: !828, file: !3, line: 136, type: !67)
!832 = !DILocalVariable(name: "v", arg: 3, scope: !828, file: !3, line: 136, type: !67)
!833 = !DILocalVariable(name: "ctx", arg: 4, scope: !828, file: !3, line: 136, type: !58)
!834 = !DILocation(line: 136, column: 25, scope: !828)
!835 = !DILocation(line: 136, column: 32, scope: !828)
!836 = !DILocation(line: 136, column: 39, scope: !828)
!837 = !DILocation(line: 136, column: 61, scope: !828)
!838 = !DILocation(line: 138, column: 10, scope: !828)
!839 = !DILocation(line: 138, column: 13, scope: !828)
!840 = !DILocation(line: 138, column: 16, scope: !828)
!841 = !DILocation(line: 138, column: 2, scope: !828)
!842 = !DILocation(line: 139, column: 9, scope: !828)
!843 = !DILocation(line: 139, column: 12, scope: !828)
!844 = !DILocation(line: 139, column: 2, scope: !828)
!845 = !DILocation(line: 140, column: 1, scope: !828)
!846 = distinct !DISubprogram(name: "ec_mul2", scope: !3, file: !3, line: 143, type: !127, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !847)
!847 = !{!848, !849, !850}
!848 = !DILocalVariable(name: "w", arg: 1, scope: !846, file: !3, line: 143, type: !67)
!849 = !DILocalVariable(name: "u", arg: 2, scope: !846, file: !3, line: 143, type: !67)
!850 = !DILocalVariable(name: "ctx", arg: 3, scope: !846, file: !3, line: 143, type: !58)
!851 = !DILocation(line: 143, column: 25, scope: !846)
!852 = !DILocation(line: 143, column: 32, scope: !846)
!853 = !DILocation(line: 143, column: 54, scope: !846)
!854 = !DILocation(line: 145, column: 13, scope: !846)
!855 = !DILocation(line: 145, column: 16, scope: !846)
!856 = !DILocation(line: 145, column: 2, scope: !846)
!857 = !DILocation(line: 146, column: 9, scope: !846)
!858 = !DILocation(line: 146, column: 12, scope: !846)
!859 = !DILocation(line: 146, column: 2, scope: !846)
!860 = !DILocation(line: 147, column: 1, scope: !846)
!861 = distinct !DISubprogram(name: "ec_pow2", scope: !3, file: !3, line: 160, type: !122, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !862)
!862 = !{!863, !864, !865}
!863 = !DILocalVariable(name: "w", arg: 1, scope: !861, file: !3, line: 160, type: !67)
!864 = !DILocalVariable(name: "b", arg: 2, scope: !861, file: !3, line: 160, type: !124)
!865 = !DILocalVariable(name: "ctx", arg: 3, scope: !861, file: !3, line: 160, type: !58)
!866 = !DILocation(line: 160, column: 25, scope: !861)
!867 = !DILocation(line: 160, column: 38, scope: !861)
!868 = !DILocation(line: 160, column: 60, scope: !861)
!869 = !DILocation(line: 164, column: 10, scope: !861)
!870 = !DILocation(line: 164, column: 13, scope: !861)
!871 = !DILocation(line: 164, column: 16, scope: !861)
!872 = !DILocation(line: 164, column: 19, scope: !861)
!873 = !DILocation(line: 164, column: 2, scope: !861)
!874 = !DILocation(line: 165, column: 1, scope: !861)
!875 = !DISubprogram(name: "mpi_resize", scope: !6, file: !6, line: 49, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DISubroutineType(types: !877)
!877 = !{!64, !67, !7}
!878 = distinct !DISubprogram(name: "mpi_ec_deinit", scope: !3, file: !3, line: 651, type: !764, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!879 = !{!880, !881}
!880 = !DILocalVariable(name: "ctx", arg: 1, scope: !878, file: !3, line: 651, type: !58)
!881 = !DILocalVariable(name: "i", scope: !878, file: !3, line: 653, type: !64)
!882 = !DILocation(line: 651, column: 39, scope: !878)
!883 = !DILocation(line: 653, column: 2, scope: !878)
!884 = !DILocation(line: 653, column: 6, scope: !878)
!885 = !DILocation(line: 655, column: 19, scope: !878)
!886 = !DILocation(line: 655, column: 24, scope: !878)
!887 = !DILocation(line: 655, column: 26, scope: !878)
!888 = !DILocation(line: 655, column: 2, scope: !878)
!889 = !DILocation(line: 658, column: 11, scope: !878)
!890 = !DILocation(line: 658, column: 16, scope: !878)
!891 = !DILocation(line: 658, column: 2, scope: !878)
!892 = !DILocation(line: 659, column: 11, scope: !878)
!893 = !DILocation(line: 659, column: 16, scope: !878)
!894 = !DILocation(line: 659, column: 2, scope: !878)
!895 = !DILocation(line: 660, column: 11, scope: !878)
!896 = !DILocation(line: 660, column: 16, scope: !878)
!897 = !DILocation(line: 660, column: 2, scope: !878)
!898 = !DILocation(line: 661, column: 20, scope: !878)
!899 = !DILocation(line: 661, column: 25, scope: !878)
!900 = !DILocation(line: 661, column: 2, scope: !878)
!901 = !DILocation(line: 662, column: 11, scope: !878)
!902 = !DILocation(line: 662, column: 16, scope: !878)
!903 = !DILocation(line: 662, column: 2, scope: !878)
!904 = !DILocation(line: 665, column: 20, scope: !878)
!905 = !DILocation(line: 665, column: 25, scope: !878)
!906 = !DILocation(line: 665, column: 2, scope: !878)
!907 = !DILocation(line: 666, column: 11, scope: !878)
!908 = !DILocation(line: 666, column: 16, scope: !878)
!909 = !DILocation(line: 666, column: 2, scope: !878)
!910 = !DILocation(line: 669, column: 11, scope: !878)
!911 = !DILocation(line: 669, column: 16, scope: !878)
!912 = !DILocation(line: 669, column: 18, scope: !878)
!913 = !DILocation(line: 669, column: 2, scope: !878)
!914 = !DILocation(line: 671, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !878, file: !3, line: 671, column: 2)
!916 = !DILocation(line: 671, column: 7, scope: !915)
!917 = !DILocation(line: 671, column: 14, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 671, column: 2)
!919 = !DILocation(line: 671, column: 16, scope: !918)
!920 = !DILocation(line: 671, column: 2, scope: !915)
!921 = !DILocation(line: 672, column: 12, scope: !918)
!922 = !DILocation(line: 672, column: 17, scope: !918)
!923 = !DILocation(line: 672, column: 19, scope: !918)
!924 = !DILocation(line: 672, column: 27, scope: !918)
!925 = !DILocation(line: 672, column: 3, scope: !918)
!926 = !DILocation(line: 671, column: 40, scope: !918)
!927 = !DILocation(line: 671, column: 2, scope: !918)
!928 = distinct !{!928, !920, !929, !557, !558}
!929 = !DILocation(line: 672, column: 29, scope: !915)
!930 = !DILocation(line: 673, column: 1, scope: !878)
!931 = !DISubprogram(name: "mpi_barrett_free", scope: !6, file: !6, line: 113, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !107}
!934 = distinct !DISubprogram(name: "mpi_ec_get_affine", scope: !3, file: !3, line: 681, type: !935, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!64, !67, !67, !81, !58}
!937 = !{!938, !939, !940, !941, !942, !945, !946, !947}
!938 = !DILocalVariable(name: "x", arg: 1, scope: !934, file: !3, line: 681, type: !67)
!939 = !DILocalVariable(name: "y", arg: 2, scope: !934, file: !3, line: 681, type: !67)
!940 = !DILocalVariable(name: "point", arg: 3, scope: !934, file: !3, line: 681, type: !81)
!941 = !DILocalVariable(name: "ctx", arg: 4, scope: !934, file: !3, line: 681, type: !58)
!942 = !DILocalVariable(name: "z1", scope: !943, file: !3, line: 689, type: !67)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 688, column: 3)
!944 = distinct !DILexicalBlock(scope: !934, file: !3, line: 686, column: 22)
!945 = !DILocalVariable(name: "z2", scope: !943, file: !3, line: 689, type: !67)
!946 = !DILocalVariable(name: "z3", scope: !943, file: !3, line: 689, type: !67)
!947 = !DILocalVariable(name: "z", scope: !948, file: !3, line: 726, type: !67)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 725, column: 3)
!949 = !DILocation(line: 681, column: 27, scope: !934)
!950 = !DILocation(line: 681, column: 34, scope: !934)
!951 = !DILocation(line: 681, column: 47, scope: !934)
!952 = !DILocation(line: 681, column: 73, scope: !934)
!953 = !DILocation(line: 683, column: 18, scope: !954)
!954 = distinct !DILexicalBlock(scope: !934, file: !3, line: 683, column: 6)
!955 = !DILocation(line: 683, column: 25, scope: !954)
!956 = !DILocation(line: 683, column: 7, scope: !954)
!957 = !DILocation(line: 683, column: 6, scope: !934)
!958 = !DILocation(line: 684, column: 3, scope: !954)
!959 = !DILocation(line: 686, column: 10, scope: !934)
!960 = !DILocation(line: 686, column: 15, scope: !934)
!961 = !DILocation(line: 686, column: 2, scope: !934)
!962 = !DILocation(line: 689, column: 4, scope: !943)
!963 = !DILocation(line: 689, column: 8, scope: !943)
!964 = !DILocation(line: 689, column: 12, scope: !943)
!965 = !DILocation(line: 689, column: 16, scope: !943)
!966 = !DILocation(line: 691, column: 9, scope: !943)
!967 = !DILocation(line: 691, column: 7, scope: !943)
!968 = !DILocation(line: 692, column: 9, scope: !943)
!969 = !DILocation(line: 692, column: 7, scope: !943)
!970 = !DILocation(line: 693, column: 12, scope: !943)
!971 = !DILocation(line: 693, column: 16, scope: !943)
!972 = !DILocation(line: 693, column: 23, scope: !943)
!973 = !DILocation(line: 693, column: 26, scope: !943)
!974 = !DILocation(line: 693, column: 4, scope: !943)
!975 = !DILocation(line: 694, column: 12, scope: !943)
!976 = !DILocation(line: 694, column: 16, scope: !943)
!977 = !DILocation(line: 694, column: 20, scope: !943)
!978 = !DILocation(line: 694, column: 24, scope: !943)
!979 = !DILocation(line: 694, column: 4, scope: !943)
!980 = !DILocation(line: 696, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !943, file: !3, line: 696, column: 8)
!982 = !DILocation(line: 696, column: 8, scope: !943)
!983 = !DILocation(line: 697, column: 13, scope: !981)
!984 = !DILocation(line: 697, column: 16, scope: !981)
!985 = !DILocation(line: 697, column: 23, scope: !981)
!986 = !DILocation(line: 697, column: 26, scope: !981)
!987 = !DILocation(line: 697, column: 30, scope: !981)
!988 = !DILocation(line: 697, column: 5, scope: !981)
!989 = !DILocation(line: 699, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !943, file: !3, line: 699, column: 8)
!991 = !DILocation(line: 699, column: 8, scope: !943)
!992 = !DILocation(line: 700, column: 10, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 699, column: 11)
!994 = !DILocation(line: 700, column: 8, scope: !993)
!995 = !DILocation(line: 701, column: 13, scope: !993)
!996 = !DILocation(line: 701, column: 17, scope: !993)
!997 = !DILocation(line: 701, column: 21, scope: !993)
!998 = !DILocation(line: 701, column: 25, scope: !993)
!999 = !DILocation(line: 701, column: 5, scope: !993)
!1000 = !DILocation(line: 702, column: 13, scope: !993)
!1001 = !DILocation(line: 702, column: 16, scope: !993)
!1002 = !DILocation(line: 702, column: 23, scope: !993)
!1003 = !DILocation(line: 702, column: 26, scope: !993)
!1004 = !DILocation(line: 702, column: 30, scope: !993)
!1005 = !DILocation(line: 702, column: 5, scope: !993)
!1006 = !DILocation(line: 703, column: 14, scope: !993)
!1007 = !DILocation(line: 703, column: 5, scope: !993)
!1008 = !DILocation(line: 704, column: 4, scope: !993)
!1009 = !DILocation(line: 706, column: 13, scope: !943)
!1010 = !DILocation(line: 706, column: 4, scope: !943)
!1011 = !DILocation(line: 707, column: 13, scope: !943)
!1012 = !DILocation(line: 707, column: 4, scope: !943)
!1013 = !DILocation(line: 708, column: 3, scope: !944)
!1014 = !DILocation(line: 709, column: 3, scope: !944)
!1015 = !DILocation(line: 713, column: 8, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 713, column: 8)
!1017 = distinct !DILexicalBlock(scope: !944, file: !3, line: 712, column: 3)
!1018 = !DILocation(line: 713, column: 8, scope: !1017)
!1019 = !DILocation(line: 714, column: 13, scope: !1016)
!1020 = !DILocation(line: 714, column: 16, scope: !1016)
!1021 = !DILocation(line: 714, column: 23, scope: !1016)
!1022 = !DILocation(line: 714, column: 5, scope: !1016)
!1023 = !DILocation(line: 716, column: 8, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 716, column: 8)
!1025 = !DILocation(line: 716, column: 8, scope: !1017)
!1026 = !DILocation(line: 717, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 717, column: 5)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 716, column: 11)
!1029 = !DILocation(line: 717, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 717, column: 5)
!1031 = !DILocation(line: 719, column: 5, scope: !1028)
!1032 = !DILocation(line: 722, column: 3, scope: !944)
!1033 = !DILocation(line: 726, column: 4, scope: !948)
!1034 = !DILocation(line: 726, column: 8, scope: !948)
!1035 = !DILocation(line: 728, column: 8, scope: !948)
!1036 = !DILocation(line: 728, column: 6, scope: !948)
!1037 = !DILocation(line: 729, column: 12, scope: !948)
!1038 = !DILocation(line: 729, column: 15, scope: !948)
!1039 = !DILocation(line: 729, column: 22, scope: !948)
!1040 = !DILocation(line: 729, column: 25, scope: !948)
!1041 = !DILocation(line: 729, column: 4, scope: !948)
!1042 = !DILocation(line: 731, column: 15, scope: !948)
!1043 = !DILocation(line: 731, column: 18, scope: !948)
!1044 = !DILocation(line: 731, column: 23, scope: !948)
!1045 = !DILocation(line: 731, column: 26, scope: !948)
!1046 = !DILocation(line: 731, column: 4, scope: !948)
!1047 = !DILocation(line: 732, column: 16, scope: !948)
!1048 = !DILocation(line: 732, column: 21, scope: !948)
!1049 = !DILocation(line: 732, column: 24, scope: !948)
!1050 = !DILocation(line: 732, column: 4, scope: !948)
!1051 = !DILocation(line: 732, column: 7, scope: !948)
!1052 = !DILocation(line: 732, column: 14, scope: !948)
!1053 = !DILocation(line: 734, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !948, file: !3, line: 734, column: 8)
!1055 = !DILocation(line: 734, column: 8, scope: !948)
!1056 = !DILocation(line: 735, column: 16, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 734, column: 11)
!1058 = !DILocation(line: 735, column: 19, scope: !1057)
!1059 = !DILocation(line: 735, column: 24, scope: !1057)
!1060 = !DILocation(line: 735, column: 27, scope: !1057)
!1061 = !DILocation(line: 735, column: 5, scope: !1057)
!1062 = !DILocation(line: 736, column: 17, scope: !1057)
!1063 = !DILocation(line: 736, column: 22, scope: !1057)
!1064 = !DILocation(line: 736, column: 25, scope: !1057)
!1065 = !DILocation(line: 736, column: 5, scope: !1057)
!1066 = !DILocation(line: 736, column: 8, scope: !1057)
!1067 = !DILocation(line: 736, column: 15, scope: !1057)
!1068 = !DILocation(line: 737, column: 5, scope: !1057)
!1069 = !DILocation(line: 737, column: 10, scope: !1057)
!1070 = !DILocation(line: 737, column: 15, scope: !1057)
!1071 = !DILocation(line: 737, column: 18, scope: !1057)
!1072 = !DILocation(line: 737, column: 25, scope: !1057)
!1073 = !DILocation(line: 737, column: 28, scope: !1057)
!1074 = !DILocation(line: 737, column: 31, scope: !1057)
!1075 = !DILocation(line: 738, column: 4, scope: !1057)
!1076 = !DILocation(line: 739, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !948, file: !3, line: 739, column: 8)
!1078 = !DILocation(line: 739, column: 8, scope: !948)
!1079 = !DILocation(line: 740, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 739, column: 11)
!1081 = !DILocation(line: 740, column: 19, scope: !1080)
!1082 = !DILocation(line: 740, column: 24, scope: !1080)
!1083 = !DILocation(line: 740, column: 27, scope: !1080)
!1084 = !DILocation(line: 740, column: 5, scope: !1080)
!1085 = !DILocation(line: 741, column: 17, scope: !1080)
!1086 = !DILocation(line: 741, column: 22, scope: !1080)
!1087 = !DILocation(line: 741, column: 25, scope: !1080)
!1088 = !DILocation(line: 741, column: 5, scope: !1080)
!1089 = !DILocation(line: 741, column: 8, scope: !1080)
!1090 = !DILocation(line: 741, column: 15, scope: !1080)
!1091 = !DILocation(line: 742, column: 5, scope: !1080)
!1092 = !DILocation(line: 742, column: 10, scope: !1080)
!1093 = !DILocation(line: 742, column: 15, scope: !1080)
!1094 = !DILocation(line: 742, column: 18, scope: !1080)
!1095 = !DILocation(line: 742, column: 25, scope: !1080)
!1096 = !DILocation(line: 742, column: 28, scope: !1080)
!1097 = !DILocation(line: 742, column: 31, scope: !1080)
!1098 = !DILocation(line: 743, column: 4, scope: !1080)
!1099 = !DILocation(line: 745, column: 13, scope: !948)
!1100 = !DILocation(line: 745, column: 4, scope: !948)
!1101 = !DILocation(line: 746, column: 3, scope: !944)
!1102 = !DILocation(line: 747, column: 3, scope: !944)
!1103 = !DILocation(line: 750, column: 3, scope: !944)
!1104 = !DILocation(line: 752, column: 1, scope: !934)
!1105 = !DISubprogram(name: "mpi_cmp_ui", scope: !6, file: !6, line: 121, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!64, !67, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong", file: !42, line: 94, baseType: !44)
!1109 = distinct !DISubprogram(name: "ec_invm", scope: !3, file: !3, line: 176, type: !127, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DILocalVariable(name: "x", arg: 1, scope: !1109, file: !3, line: 176, type: !67)
!1112 = !DILocalVariable(name: "a", arg: 2, scope: !1109, file: !3, line: 176, type: !67)
!1113 = !DILocalVariable(name: "ctx", arg: 3, scope: !1109, file: !3, line: 176, type: !58)
!1114 = !DILocation(line: 176, column: 25, scope: !1109)
!1115 = !DILocation(line: 176, column: 32, scope: !1109)
!1116 = !DILocation(line: 176, column: 54, scope: !1109)
!1117 = !DILocation(line: 178, column: 16, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 178, column: 6)
!1119 = !DILocation(line: 178, column: 19, scope: !1118)
!1120 = !DILocation(line: 178, column: 22, scope: !1118)
!1121 = !DILocation(line: 178, column: 27, scope: !1118)
!1122 = !DILocation(line: 178, column: 7, scope: !1118)
!1123 = !DILocation(line: 178, column: 6, scope: !1109)
!1124 = !DILocation(line: 179, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 179, column: 3)
!1126 = !DILocation(line: 179, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 179, column: 3)
!1128 = !DILocation(line: 179, column: 3, scope: !1118)
!1129 = !DILocation(line: 180, column: 1, scope: !1109)
!1130 = !DISubprogram(name: "mpi_set", scope: !6, file: !6, line: 59, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!67, !67, !67}
!1133 = !DISubprogram(name: "_printk", scope: !1134, file: !1134, line: 153, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!64, !93, null}
!1137 = distinct !DISubprogram(name: "mpi_ec_add_points", scope: !3, file: !3, line: 1191, type: !1138, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !81, !81, !81, !58}
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DILocalVariable(name: "result", arg: 1, scope: !1137, file: !3, line: 1191, type: !81)
!1142 = !DILocalVariable(name: "p1", arg: 2, scope: !1137, file: !3, line: 1192, type: !81)
!1143 = !DILocalVariable(name: "p2", arg: 3, scope: !1137, file: !3, line: 1192, type: !81)
!1144 = !DILocalVariable(name: "ctx", arg: 4, scope: !1137, file: !3, line: 1193, type: !58)
!1145 = !DILocation(line: 1191, column: 34, scope: !1137)
!1146 = !DILocation(line: 1192, column: 13, scope: !1137)
!1147 = !DILocation(line: 1192, column: 27, scope: !1137)
!1148 = !DILocation(line: 1193, column: 22, scope: !1137)
!1149 = !DILocation(line: 1195, column: 10, scope: !1137)
!1150 = !DILocation(line: 1195, column: 15, scope: !1137)
!1151 = !DILocation(line: 1195, column: 2, scope: !1137)
!1152 = !DILocation(line: 1197, column: 26, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1195, column: 22)
!1154 = !DILocation(line: 1197, column: 34, scope: !1153)
!1155 = !DILocation(line: 1197, column: 38, scope: !1153)
!1156 = !DILocation(line: 1197, column: 42, scope: !1153)
!1157 = !DILocation(line: 1197, column: 3, scope: !1153)
!1158 = !DILocation(line: 1198, column: 3, scope: !1153)
!1159 = !DILocation(line: 1200, column: 25, scope: !1153)
!1160 = !DILocation(line: 1200, column: 33, scope: !1153)
!1161 = !DILocation(line: 1200, column: 37, scope: !1153)
!1162 = !DILocation(line: 1200, column: 41, scope: !1153)
!1163 = !DILocation(line: 1200, column: 3, scope: !1153)
!1164 = !DILocation(line: 1201, column: 3, scope: !1153)
!1165 = !DILocation(line: 1203, column: 22, scope: !1153)
!1166 = !DILocation(line: 1203, column: 30, scope: !1153)
!1167 = !DILocation(line: 1203, column: 34, scope: !1153)
!1168 = !DILocation(line: 1203, column: 38, scope: !1153)
!1169 = !DILocation(line: 1203, column: 3, scope: !1153)
!1170 = !DILocation(line: 1204, column: 3, scope: !1153)
!1171 = !DILocation(line: 1206, column: 1, scope: !1137)
!1172 = distinct !DISubprogram(name: "add_points_weierstrass", scope: !3, file: !3, line: 934, type: !1138, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1183}
!1174 = !DILocalVariable(name: "result", arg: 1, scope: !1172, file: !3, line: 934, type: !81)
!1175 = !DILocalVariable(name: "p1", arg: 2, scope: !1172, file: !3, line: 935, type: !81)
!1176 = !DILocalVariable(name: "p2", arg: 3, scope: !1172, file: !3, line: 935, type: !81)
!1177 = !DILocalVariable(name: "ctx", arg: 4, scope: !1172, file: !3, line: 936, type: !58)
!1178 = !DILocalVariable(name: "z1_is_one", scope: !1179, file: !3, line: 973, type: !64)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 972, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 967, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 962, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 959, column: 6)
!1183 = !DILocalVariable(name: "z2_is_one", scope: !1179, file: !3, line: 974, type: !64)
!1184 = !DILocation(line: 934, column: 46, scope: !1172)
!1185 = !DILocation(line: 935, column: 13, scope: !1172)
!1186 = !DILocation(line: 935, column: 27, scope: !1172)
!1187 = !DILocation(line: 936, column: 22, scope: !1172)
!1188 = !DILocation(line: 959, column: 16, scope: !1182)
!1189 = !DILocation(line: 959, column: 20, scope: !1182)
!1190 = !DILocation(line: 959, column: 8, scope: !1182)
!1191 = !DILocation(line: 959, column: 25, scope: !1182)
!1192 = !DILocation(line: 959, column: 38, scope: !1182)
!1193 = !DILocation(line: 959, column: 42, scope: !1182)
!1194 = !DILocation(line: 959, column: 30, scope: !1182)
!1195 = !DILocation(line: 959, column: 47, scope: !1182)
!1196 = !DILocation(line: 959, column: 60, scope: !1182)
!1197 = !DILocation(line: 959, column: 64, scope: !1182)
!1198 = !DILocation(line: 959, column: 52, scope: !1182)
!1199 = !DILocation(line: 959, column: 6, scope: !1172)
!1200 = !DILocation(line: 961, column: 20, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 959, column: 70)
!1202 = !DILocation(line: 961, column: 28, scope: !1201)
!1203 = !DILocation(line: 961, column: 32, scope: !1201)
!1204 = !DILocation(line: 961, column: 3, scope: !1201)
!1205 = !DILocation(line: 962, column: 2, scope: !1201)
!1206 = !DILocation(line: 962, column: 25, scope: !1181)
!1207 = !DILocation(line: 962, column: 14, scope: !1181)
!1208 = !DILocation(line: 962, column: 13, scope: !1182)
!1209 = !DILocation(line: 964, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 962, column: 33)
!1211 = !DILocation(line: 964, column: 15, scope: !1210)
!1212 = !DILocation(line: 964, column: 19, scope: !1210)
!1213 = !DILocation(line: 964, column: 3, scope: !1210)
!1214 = !DILocation(line: 965, column: 11, scope: !1210)
!1215 = !DILocation(line: 965, column: 15, scope: !1210)
!1216 = !DILocation(line: 965, column: 19, scope: !1210)
!1217 = !DILocation(line: 965, column: 3, scope: !1210)
!1218 = !DILocation(line: 966, column: 11, scope: !1210)
!1219 = !DILocation(line: 966, column: 15, scope: !1210)
!1220 = !DILocation(line: 966, column: 19, scope: !1210)
!1221 = !DILocation(line: 966, column: 3, scope: !1210)
!1222 = !DILocation(line: 967, column: 2, scope: !1210)
!1223 = !DILocation(line: 967, column: 25, scope: !1180)
!1224 = !DILocation(line: 967, column: 14, scope: !1180)
!1225 = !DILocation(line: 967, column: 13, scope: !1181)
!1226 = !DILocation(line: 969, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 967, column: 33)
!1228 = !DILocation(line: 969, column: 15, scope: !1227)
!1229 = !DILocation(line: 969, column: 19, scope: !1227)
!1230 = !DILocation(line: 969, column: 3, scope: !1227)
!1231 = !DILocation(line: 970, column: 11, scope: !1227)
!1232 = !DILocation(line: 970, column: 15, scope: !1227)
!1233 = !DILocation(line: 970, column: 19, scope: !1227)
!1234 = !DILocation(line: 970, column: 3, scope: !1227)
!1235 = !DILocation(line: 971, column: 11, scope: !1227)
!1236 = !DILocation(line: 971, column: 15, scope: !1227)
!1237 = !DILocation(line: 971, column: 19, scope: !1227)
!1238 = !DILocation(line: 971, column: 3, scope: !1227)
!1239 = !DILocation(line: 972, column: 2, scope: !1227)
!1240 = !DILocation(line: 973, column: 3, scope: !1179)
!1241 = !DILocation(line: 973, column: 7, scope: !1179)
!1242 = !DILocation(line: 973, column: 31, scope: !1179)
!1243 = !DILocation(line: 973, column: 20, scope: !1179)
!1244 = !DILocation(line: 973, column: 19, scope: !1179)
!1245 = !DILocation(line: 974, column: 3, scope: !1179)
!1246 = !DILocation(line: 974, column: 7, scope: !1179)
!1247 = !DILocation(line: 974, column: 31, scope: !1179)
!1248 = !DILocation(line: 974, column: 20, scope: !1179)
!1249 = !DILocation(line: 974, column: 19, scope: !1179)
!1250 = !DILocation(line: 978, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 978, column: 7)
!1252 = !DILocation(line: 978, column: 7, scope: !1179)
!1253 = !DILocation(line: 979, column: 12, scope: !1251)
!1254 = !DILocation(line: 979, column: 16, scope: !1251)
!1255 = !DILocation(line: 979, column: 4, scope: !1251)
!1256 = !DILocation(line: 981, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 980, column: 8)
!1258 = !DILocation(line: 981, column: 16, scope: !1257)
!1259 = !DILocation(line: 981, column: 20, scope: !1257)
!1260 = !DILocation(line: 981, column: 4, scope: !1257)
!1261 = !DILocation(line: 982, column: 12, scope: !1257)
!1262 = !DILocation(line: 982, column: 16, scope: !1257)
!1263 = !DILocation(line: 982, column: 20, scope: !1257)
!1264 = !DILocation(line: 982, column: 24, scope: !1257)
!1265 = !DILocation(line: 982, column: 4, scope: !1257)
!1266 = !DILocation(line: 984, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 984, column: 7)
!1268 = !DILocation(line: 984, column: 7, scope: !1179)
!1269 = !DILocation(line: 985, column: 12, scope: !1267)
!1270 = !DILocation(line: 985, column: 16, scope: !1267)
!1271 = !DILocation(line: 985, column: 4, scope: !1267)
!1272 = !DILocation(line: 987, column: 12, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 986, column: 8)
!1274 = !DILocation(line: 987, column: 16, scope: !1273)
!1275 = !DILocation(line: 987, column: 20, scope: !1273)
!1276 = !DILocation(line: 987, column: 4, scope: !1273)
!1277 = !DILocation(line: 988, column: 12, scope: !1273)
!1278 = !DILocation(line: 988, column: 16, scope: !1273)
!1279 = !DILocation(line: 988, column: 20, scope: !1273)
!1280 = !DILocation(line: 988, column: 24, scope: !1273)
!1281 = !DILocation(line: 988, column: 4, scope: !1273)
!1282 = !DILocation(line: 991, column: 11, scope: !1179)
!1283 = !DILocation(line: 991, column: 15, scope: !1179)
!1284 = !DILocation(line: 991, column: 19, scope: !1179)
!1285 = !DILocation(line: 991, column: 23, scope: !1179)
!1286 = !DILocation(line: 991, column: 3, scope: !1179)
!1287 = !DILocation(line: 993, column: 11, scope: !1179)
!1288 = !DILocation(line: 993, column: 15, scope: !1179)
!1289 = !DILocation(line: 993, column: 19, scope: !1179)
!1290 = !DILocation(line: 993, column: 43, scope: !1179)
!1291 = !DILocation(line: 993, column: 3, scope: !1179)
!1292 = !DILocation(line: 994, column: 11, scope: !1179)
!1293 = !DILocation(line: 994, column: 15, scope: !1179)
!1294 = !DILocation(line: 994, column: 19, scope: !1179)
!1295 = !DILocation(line: 994, column: 23, scope: !1179)
!1296 = !DILocation(line: 994, column: 3, scope: !1179)
!1297 = !DILocation(line: 996, column: 11, scope: !1179)
!1298 = !DILocation(line: 996, column: 15, scope: !1179)
!1299 = !DILocation(line: 996, column: 19, scope: !1179)
!1300 = !DILocation(line: 996, column: 43, scope: !1179)
!1301 = !DILocation(line: 996, column: 3, scope: !1179)
!1302 = !DILocation(line: 997, column: 11, scope: !1179)
!1303 = !DILocation(line: 997, column: 15, scope: !1179)
!1304 = !DILocation(line: 997, column: 19, scope: !1179)
!1305 = !DILocation(line: 997, column: 23, scope: !1179)
!1306 = !DILocation(line: 997, column: 3, scope: !1179)
!1307 = !DILocation(line: 999, column: 11, scope: !1179)
!1308 = !DILocation(line: 999, column: 15, scope: !1179)
!1309 = !DILocation(line: 999, column: 19, scope: !1179)
!1310 = !DILocation(line: 999, column: 23, scope: !1179)
!1311 = !DILocation(line: 999, column: 3, scope: !1179)
!1312 = !DILocation(line: 1001, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1001, column: 7)
!1314 = !DILocation(line: 1001, column: 8, scope: !1313)
!1315 = !DILocation(line: 1001, column: 7, scope: !1179)
!1316 = !DILocation(line: 1002, column: 20, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1002, column: 8)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1001, column: 27)
!1319 = !DILocation(line: 1002, column: 9, scope: !1317)
!1320 = !DILocation(line: 1002, column: 8, scope: !1318)
!1321 = !DILocation(line: 1004, column: 22, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1002, column: 28)
!1323 = !DILocation(line: 1004, column: 30, scope: !1322)
!1324 = !DILocation(line: 1004, column: 34, scope: !1322)
!1325 = !DILocation(line: 1004, column: 5, scope: !1322)
!1326 = !DILocation(line: 1005, column: 4, scope: !1322)
!1327 = !DILocation(line: 1007, column: 16, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1005, column: 11)
!1329 = !DILocation(line: 1007, column: 5, scope: !1328)
!1330 = !DILocation(line: 1008, column: 16, scope: !1328)
!1331 = !DILocation(line: 1008, column: 5, scope: !1328)
!1332 = !DILocation(line: 1009, column: 16, scope: !1328)
!1333 = !DILocation(line: 1009, column: 5, scope: !1328)
!1334 = !DILocation(line: 1011, column: 3, scope: !1318)
!1335 = !DILocation(line: 1013, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1011, column: 10)
!1337 = !DILocation(line: 1013, column: 16, scope: !1336)
!1338 = !DILocation(line: 1013, column: 20, scope: !1336)
!1339 = !DILocation(line: 1013, column: 24, scope: !1336)
!1340 = !DILocation(line: 1013, column: 4, scope: !1336)
!1341 = !DILocation(line: 1015, column: 12, scope: !1336)
!1342 = !DILocation(line: 1015, column: 16, scope: !1336)
!1343 = !DILocation(line: 1015, column: 20, scope: !1336)
!1344 = !DILocation(line: 1015, column: 24, scope: !1336)
!1345 = !DILocation(line: 1015, column: 4, scope: !1336)
!1346 = !DILocation(line: 1017, column: 12, scope: !1336)
!1347 = !DILocation(line: 1017, column: 16, scope: !1336)
!1348 = !DILocation(line: 1017, column: 20, scope: !1336)
!1349 = !DILocation(line: 1017, column: 24, scope: !1336)
!1350 = !DILocation(line: 1017, column: 4, scope: !1336)
!1351 = !DILocation(line: 1018, column: 12, scope: !1336)
!1352 = !DILocation(line: 1018, column: 16, scope: !1336)
!1353 = !DILocation(line: 1018, column: 20, scope: !1336)
!1354 = !DILocation(line: 1018, column: 24, scope: !1336)
!1355 = !DILocation(line: 1018, column: 4, scope: !1336)
!1356 = !DILocation(line: 1020, column: 12, scope: !1336)
!1357 = !DILocation(line: 1020, column: 16, scope: !1336)
!1358 = !DILocation(line: 1020, column: 20, scope: !1336)
!1359 = !DILocation(line: 1020, column: 4, scope: !1336)
!1360 = !DILocation(line: 1021, column: 12, scope: !1336)
!1361 = !DILocation(line: 1021, column: 16, scope: !1336)
!1362 = !DILocation(line: 1021, column: 20, scope: !1336)
!1363 = !DILocation(line: 1021, column: 4, scope: !1336)
!1364 = !DILocation(line: 1022, column: 12, scope: !1336)
!1365 = !DILocation(line: 1022, column: 16, scope: !1336)
!1366 = !DILocation(line: 1022, column: 20, scope: !1336)
!1367 = !DILocation(line: 1022, column: 24, scope: !1336)
!1368 = !DILocation(line: 1022, column: 4, scope: !1336)
!1369 = !DILocation(line: 1023, column: 12, scope: !1336)
!1370 = !DILocation(line: 1023, column: 16, scope: !1336)
!1371 = !DILocation(line: 1023, column: 20, scope: !1336)
!1372 = !DILocation(line: 1023, column: 24, scope: !1336)
!1373 = !DILocation(line: 1023, column: 4, scope: !1336)
!1374 = !DILocation(line: 1025, column: 12, scope: !1336)
!1375 = !DILocation(line: 1025, column: 16, scope: !1336)
!1376 = !DILocation(line: 1025, column: 20, scope: !1336)
!1377 = !DILocation(line: 1025, column: 4, scope: !1336)
!1378 = !DILocation(line: 1026, column: 12, scope: !1336)
!1379 = !DILocation(line: 1026, column: 16, scope: !1336)
!1380 = !DILocation(line: 1026, column: 20, scope: !1336)
!1381 = !DILocation(line: 1026, column: 24, scope: !1336)
!1382 = !DILocation(line: 1026, column: 4, scope: !1336)
!1383 = !DILocation(line: 1028, column: 12, scope: !1336)
!1384 = !DILocation(line: 1028, column: 16, scope: !1336)
!1385 = !DILocation(line: 1028, column: 20, scope: !1336)
!1386 = !DILocation(line: 1028, column: 24, scope: !1336)
!1387 = !DILocation(line: 1028, column: 4, scope: !1336)
!1388 = !DILocation(line: 1029, column: 12, scope: !1336)
!1389 = !DILocation(line: 1029, column: 16, scope: !1336)
!1390 = !DILocation(line: 1029, column: 20, scope: !1336)
!1391 = !DILocation(line: 1029, column: 44, scope: !1336)
!1392 = !DILocation(line: 1029, column: 4, scope: !1336)
!1393 = !DILocation(line: 1030, column: 12, scope: !1336)
!1394 = !DILocation(line: 1030, column: 16, scope: !1336)
!1395 = !DILocation(line: 1030, column: 20, scope: !1336)
!1396 = !DILocation(line: 1030, column: 24, scope: !1336)
!1397 = !DILocation(line: 1030, column: 4, scope: !1336)
!1398 = !DILocation(line: 1031, column: 12, scope: !1336)
!1399 = !DILocation(line: 1031, column: 16, scope: !1336)
!1400 = !DILocation(line: 1031, column: 20, scope: !1336)
!1401 = !DILocation(line: 1031, column: 24, scope: !1336)
!1402 = !DILocation(line: 1031, column: 4, scope: !1336)
!1403 = !DILocation(line: 1032, column: 12, scope: !1336)
!1404 = !DILocation(line: 1032, column: 16, scope: !1336)
!1405 = !DILocation(line: 1032, column: 37, scope: !1336)
!1406 = !DILocation(line: 1032, column: 20, scope: !1336)
!1407 = !DILocation(line: 1032, column: 43, scope: !1336)
!1408 = !DILocation(line: 1032, column: 4, scope: !1336)
!1409 = !DILocation(line: 1034, column: 2, scope: !1180)
!1410 = !DILocation(line: 1056, column: 1, scope: !1172)
!1411 = distinct !DISubprogram(name: "add_points_montgomery", scope: !3, file: !3, line: 1059, type: !1138, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1412)
!1412 = !{!1413, !1414, !1415, !1416}
!1413 = !DILocalVariable(name: "result", arg: 1, scope: !1411, file: !3, line: 1059, type: !81)
!1414 = !DILocalVariable(name: "p1", arg: 2, scope: !1411, file: !3, line: 1060, type: !81)
!1415 = !DILocalVariable(name: "p2", arg: 3, scope: !1411, file: !3, line: 1060, type: !81)
!1416 = !DILocalVariable(name: "ctx", arg: 4, scope: !1411, file: !3, line: 1061, type: !58)
!1417 = !DILocation(line: 1059, column: 45, scope: !1411)
!1418 = !DILocation(line: 1060, column: 13, scope: !1411)
!1419 = !DILocation(line: 1060, column: 27, scope: !1411)
!1420 = !DILocation(line: 1061, column: 22, scope: !1411)
!1421 = !DILocation(line: 1063, column: 8, scope: !1411)
!1422 = !DILocation(line: 1064, column: 8, scope: !1411)
!1423 = !DILocation(line: 1065, column: 8, scope: !1411)
!1424 = !DILocation(line: 1066, column: 8, scope: !1411)
!1425 = !DILocation(line: 1067, column: 2, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1067, column: 2)
!1427 = !DILocation(line: 1067, column: 2, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1067, column: 2)
!1429 = !DILocation(line: 1069, column: 1, scope: !1411)
!1430 = distinct !DISubprogram(name: "add_points_edwards", scope: !3, file: !3, line: 1072, type: !1138, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1431)
!1431 = !{!1432, !1433, !1434, !1435}
!1432 = !DILocalVariable(name: "result", arg: 1, scope: !1430, file: !3, line: 1072, type: !81)
!1433 = !DILocalVariable(name: "p1", arg: 2, scope: !1430, file: !3, line: 1073, type: !81)
!1434 = !DILocalVariable(name: "p2", arg: 3, scope: !1430, file: !3, line: 1073, type: !81)
!1435 = !DILocalVariable(name: "ctx", arg: 4, scope: !1430, file: !3, line: 1074, type: !58)
!1436 = !DILocation(line: 1072, column: 42, scope: !1430)
!1437 = !DILocation(line: 1073, column: 13, scope: !1430)
!1438 = !DILocation(line: 1073, column: 27, scope: !1430)
!1439 = !DILocation(line: 1074, column: 22, scope: !1430)
!1440 = !DILocation(line: 1094, column: 15, scope: !1430)
!1441 = !DILocation(line: 1094, column: 23, scope: !1430)
!1442 = !DILocation(line: 1094, column: 2, scope: !1430)
!1443 = !DILocation(line: 1099, column: 2, scope: !1430)
!1444 = !DILocation(line: 1099, column: 7, scope: !1430)
!1445 = !DILocation(line: 1099, column: 12, scope: !1430)
!1446 = !DILocation(line: 1099, column: 15, scope: !1430)
!1447 = !DILocation(line: 1099, column: 19, scope: !1430)
!1448 = !DILocation(line: 1099, column: 23, scope: !1430)
!1449 = !DILocation(line: 1102, column: 2, scope: !1430)
!1450 = !DILocation(line: 1102, column: 7, scope: !1430)
!1451 = !DILocation(line: 1102, column: 12, scope: !1430)
!1452 = !DILocation(line: 1102, column: 15, scope: !1430)
!1453 = !DILocation(line: 1102, column: 18, scope: !1430)
!1454 = !DILocation(line: 1105, column: 2, scope: !1430)
!1455 = !DILocation(line: 1105, column: 7, scope: !1430)
!1456 = !DILocation(line: 1105, column: 12, scope: !1430)
!1457 = !DILocation(line: 1105, column: 15, scope: !1430)
!1458 = !DILocation(line: 1105, column: 19, scope: !1430)
!1459 = !DILocation(line: 1105, column: 23, scope: !1430)
!1460 = !DILocation(line: 1108, column: 2, scope: !1430)
!1461 = !DILocation(line: 1108, column: 7, scope: !1430)
!1462 = !DILocation(line: 1108, column: 12, scope: !1430)
!1463 = !DILocation(line: 1108, column: 15, scope: !1430)
!1464 = !DILocation(line: 1108, column: 19, scope: !1430)
!1465 = !DILocation(line: 1108, column: 23, scope: !1430)
!1466 = !DILocation(line: 1111, column: 2, scope: !1430)
!1467 = !DILocation(line: 1111, column: 7, scope: !1430)
!1468 = !DILocation(line: 1111, column: 12, scope: !1430)
!1469 = !DILocation(line: 1111, column: 15, scope: !1430)
!1470 = !DILocation(line: 1111, column: 20, scope: !1430)
!1471 = !DILocation(line: 1111, column: 23, scope: !1430)
!1472 = !DILocation(line: 1111, column: 26, scope: !1430)
!1473 = !DILocation(line: 1112, column: 2, scope: !1430)
!1474 = !DILocation(line: 1112, column: 7, scope: !1430)
!1475 = !DILocation(line: 1112, column: 12, scope: !1430)
!1476 = !DILocation(line: 1112, column: 15, scope: !1430)
!1477 = !DILocation(line: 1112, column: 18, scope: !1430)
!1478 = !DILocation(line: 1112, column: 21, scope: !1430)
!1479 = !DILocation(line: 1115, column: 2, scope: !1430)
!1480 = !DILocation(line: 1115, column: 7, scope: !1430)
!1481 = !DILocation(line: 1115, column: 12, scope: !1430)
!1482 = !DILocation(line: 1115, column: 15, scope: !1430)
!1483 = !DILocation(line: 1115, column: 18, scope: !1430)
!1484 = !DILocation(line: 1115, column: 21, scope: !1430)
!1485 = !DILocation(line: 1118, column: 2, scope: !1430)
!1486 = !DILocation(line: 1118, column: 7, scope: !1430)
!1487 = !DILocation(line: 1118, column: 12, scope: !1430)
!1488 = !DILocation(line: 1118, column: 15, scope: !1430)
!1489 = !DILocation(line: 1118, column: 18, scope: !1430)
!1490 = !DILocation(line: 1118, column: 21, scope: !1430)
!1491 = !DILocation(line: 1121, column: 2, scope: !1430)
!1492 = !DILocation(line: 1121, column: 7, scope: !1430)
!1493 = !DILocation(line: 1121, column: 12, scope: !1430)
!1494 = !DILocation(line: 1121, column: 17, scope: !1430)
!1495 = !DILocation(line: 1121, column: 21, scope: !1430)
!1496 = !DILocation(line: 1121, column: 25, scope: !1430)
!1497 = !DILocation(line: 1122, column: 2, scope: !1430)
!1498 = !DILocation(line: 1122, column: 7, scope: !1430)
!1499 = !DILocation(line: 1122, column: 12, scope: !1430)
!1500 = !DILocation(line: 1122, column: 16, scope: !1430)
!1501 = !DILocation(line: 1122, column: 20, scope: !1430)
!1502 = !DILocation(line: 1122, column: 24, scope: !1430)
!1503 = !DILocation(line: 1123, column: 2, scope: !1430)
!1504 = !DILocation(line: 1123, column: 7, scope: !1430)
!1505 = !DILocation(line: 1123, column: 12, scope: !1430)
!1506 = !DILocation(line: 1123, column: 16, scope: !1430)
!1507 = !DILocation(line: 1123, column: 20, scope: !1430)
!1508 = !DILocation(line: 1123, column: 25, scope: !1430)
!1509 = !DILocation(line: 1124, column: 2, scope: !1430)
!1510 = !DILocation(line: 1124, column: 7, scope: !1430)
!1511 = !DILocation(line: 1124, column: 12, scope: !1430)
!1512 = !DILocation(line: 1124, column: 16, scope: !1430)
!1513 = !DILocation(line: 1124, column: 20, scope: !1430)
!1514 = !DILocation(line: 1124, column: 23, scope: !1430)
!1515 = !DILocation(line: 1125, column: 2, scope: !1430)
!1516 = !DILocation(line: 1125, column: 7, scope: !1430)
!1517 = !DILocation(line: 1125, column: 12, scope: !1430)
!1518 = !DILocation(line: 1125, column: 16, scope: !1430)
!1519 = !DILocation(line: 1125, column: 20, scope: !1430)
!1520 = !DILocation(line: 1125, column: 23, scope: !1430)
!1521 = !DILocation(line: 1126, column: 2, scope: !1430)
!1522 = !DILocation(line: 1126, column: 7, scope: !1430)
!1523 = !DILocation(line: 1126, column: 12, scope: !1430)
!1524 = !DILocation(line: 1126, column: 16, scope: !1430)
!1525 = !DILocation(line: 1126, column: 20, scope: !1430)
!1526 = !DILocation(line: 1126, column: 23, scope: !1430)
!1527 = !DILocation(line: 1127, column: 2, scope: !1430)
!1528 = !DILocation(line: 1127, column: 7, scope: !1430)
!1529 = !DILocation(line: 1127, column: 12, scope: !1430)
!1530 = !DILocation(line: 1127, column: 16, scope: !1430)
!1531 = !DILocation(line: 1127, column: 20, scope: !1430)
!1532 = !DILocation(line: 1127, column: 23, scope: !1430)
!1533 = !DILocation(line: 1130, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 1130, column: 6)
!1535 = !DILocation(line: 1130, column: 11, scope: !1534)
!1536 = !DILocation(line: 1130, column: 19, scope: !1534)
!1537 = !DILocation(line: 1130, column: 6, scope: !1430)
!1538 = !DILocation(line: 1131, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1130, column: 43)
!1540 = !DILocation(line: 1131, column: 8, scope: !1539)
!1541 = !DILocation(line: 1131, column: 13, scope: !1539)
!1542 = !DILocation(line: 1131, column: 17, scope: !1539)
!1543 = !DILocation(line: 1131, column: 20, scope: !1539)
!1544 = !DILocation(line: 1131, column: 23, scope: !1539)
!1545 = !DILocation(line: 1132, column: 2, scope: !1539)
!1546 = !DILocation(line: 1133, column: 3, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1132, column: 9)
!1548 = !DILocation(line: 1133, column: 8, scope: !1547)
!1549 = !DILocation(line: 1133, column: 13, scope: !1547)
!1550 = !DILocation(line: 1133, column: 17, scope: !1547)
!1551 = !DILocation(line: 1133, column: 22, scope: !1547)
!1552 = !DILocation(line: 1133, column: 25, scope: !1547)
!1553 = !DILocation(line: 1133, column: 28, scope: !1547)
!1554 = !DILocation(line: 1134, column: 3, scope: !1547)
!1555 = !DILocation(line: 1134, column: 8, scope: !1547)
!1556 = !DILocation(line: 1134, column: 13, scope: !1547)
!1557 = !DILocation(line: 1134, column: 17, scope: !1547)
!1558 = !DILocation(line: 1134, column: 20, scope: !1547)
!1559 = !DILocation(line: 1134, column: 24, scope: !1547)
!1560 = !DILocation(line: 1136, column: 2, scope: !1430)
!1561 = !DILocation(line: 1136, column: 7, scope: !1430)
!1562 = !DILocation(line: 1136, column: 12, scope: !1430)
!1563 = !DILocation(line: 1136, column: 16, scope: !1430)
!1564 = !DILocation(line: 1136, column: 20, scope: !1430)
!1565 = !DILocation(line: 1136, column: 23, scope: !1430)
!1566 = !DILocation(line: 1137, column: 2, scope: !1430)
!1567 = !DILocation(line: 1137, column: 7, scope: !1430)
!1568 = !DILocation(line: 1137, column: 12, scope: !1430)
!1569 = !DILocation(line: 1137, column: 16, scope: !1430)
!1570 = !DILocation(line: 1137, column: 20, scope: !1430)
!1571 = !DILocation(line: 1137, column: 23, scope: !1430)
!1572 = !DILocation(line: 1140, column: 2, scope: !1430)
!1573 = !DILocation(line: 1140, column: 7, scope: !1430)
!1574 = !DILocation(line: 1140, column: 12, scope: !1430)
!1575 = !DILocation(line: 1140, column: 16, scope: !1430)
!1576 = !DILocation(line: 1140, column: 19, scope: !1430)
!1577 = !DILocation(line: 1140, column: 22, scope: !1430)
!1578 = !DILocation(line: 1160, column: 1, scope: !1430)
!1579 = distinct !DISubprogram(name: "mpi_ec_mul_point", scope: !3, file: !3, line: 1213, type: !1580, scopeLine: 1216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !81, !67, !81, !58}
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1601, !1602, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1616, !1620, !1623}
!1583 = !DILocalVariable(name: "result", arg: 1, scope: !1579, file: !3, line: 1213, type: !81)
!1584 = !DILocalVariable(name: "scalar", arg: 2, scope: !1579, file: !3, line: 1214, type: !67)
!1585 = !DILocalVariable(name: "point", arg: 3, scope: !1579, file: !3, line: 1214, type: !81)
!1586 = !DILocalVariable(name: "ctx", arg: 4, scope: !1579, file: !3, line: 1215, type: !58)
!1587 = !DILocalVariable(name: "x1", scope: !1579, file: !3, line: 1217, type: !67)
!1588 = !DILocalVariable(name: "y1", scope: !1579, file: !3, line: 1217, type: !67)
!1589 = !DILocalVariable(name: "z1", scope: !1579, file: !3, line: 1217, type: !67)
!1590 = !DILocalVariable(name: "k", scope: !1579, file: !3, line: 1217, type: !67)
!1591 = !DILocalVariable(name: "h", scope: !1579, file: !3, line: 1217, type: !67)
!1592 = !DILocalVariable(name: "yy", scope: !1579, file: !3, line: 1217, type: !67)
!1593 = !DILocalVariable(name: "i", scope: !1579, file: !3, line: 1218, type: !7)
!1594 = !DILocalVariable(name: "loops", scope: !1579, file: !3, line: 1218, type: !7)
!1595 = !DILocalVariable(name: "p1", scope: !1579, file: !3, line: 1219, type: !83)
!1596 = !DILocalVariable(name: "p2", scope: !1579, file: !3, line: 1219, type: !83)
!1597 = !DILocalVariable(name: "p1inv", scope: !1579, file: !3, line: 1219, type: !83)
!1598 = !DILocalVariable(name: "nbits", scope: !1599, file: !3, line: 1229, type: !7)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1221, column: 36)
!1600 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1221, column: 6)
!1601 = !DILocalVariable(name: "j", scope: !1599, file: !3, line: 1230, type: !64)
!1602 = !DILocalVariable(name: "nbits", scope: !1603, file: !3, line: 1252, type: !7)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1251, column: 46)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1251, column: 13)
!1605 = !DILocalVariable(name: "j", scope: !1603, file: !3, line: 1253, type: !64)
!1606 = !DILocalVariable(name: "p1_", scope: !1603, file: !3, line: 1254, type: !83)
!1607 = !DILocalVariable(name: "p2_", scope: !1603, file: !3, line: 1254, type: !83)
!1608 = !DILocalVariable(name: "q1", scope: !1603, file: !3, line: 1255, type: !81)
!1609 = !DILocalVariable(name: "q2", scope: !1603, file: !3, line: 1255, type: !81)
!1610 = !DILocalVariable(name: "prd", scope: !1603, file: !3, line: 1255, type: !81)
!1611 = !DILocalVariable(name: "sum", scope: !1603, file: !3, line: 1255, type: !81)
!1612 = !DILocalVariable(name: "sw", scope: !1603, file: !3, line: 1256, type: !44)
!1613 = !DILocalVariable(name: "rsize", scope: !1603, file: !3, line: 1257, type: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !1615, line: 53, baseType: !64)
!1615 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!1616 = !DILocalVariable(name: "t", scope: !1617, file: !3, line: 1288, type: !81)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1287, column: 34)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1287, column: 3)
!1619 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1287, column: 3)
!1620 = !DILocalVariable(name: "z2", scope: !1621, file: !3, line: 1337, type: !67)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1336, column: 9)
!1622 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1333, column: 6)
!1623 = !DILocalVariable(name: "z3", scope: !1621, file: !3, line: 1337, type: !67)
!1624 = !DILocation(line: 1213, column: 33, scope: !1579)
!1625 = !DILocation(line: 1214, column: 8, scope: !1579)
!1626 = !DILocation(line: 1214, column: 26, scope: !1579)
!1627 = !DILocation(line: 1215, column: 23, scope: !1579)
!1628 = !DILocation(line: 1217, column: 2, scope: !1579)
!1629 = !DILocation(line: 1217, column: 6, scope: !1579)
!1630 = !DILocation(line: 1217, column: 10, scope: !1579)
!1631 = !DILocation(line: 1217, column: 14, scope: !1579)
!1632 = !DILocation(line: 1217, column: 18, scope: !1579)
!1633 = !DILocation(line: 1217, column: 21, scope: !1579)
!1634 = !DILocation(line: 1217, column: 24, scope: !1579)
!1635 = !DILocation(line: 1218, column: 2, scope: !1579)
!1636 = !DILocation(line: 1218, column: 15, scope: !1579)
!1637 = !DILocation(line: 1218, column: 18, scope: !1579)
!1638 = !DILocation(line: 1219, column: 2, scope: !1579)
!1639 = !DILocation(line: 1219, column: 24, scope: !1579)
!1640 = !DILocation(line: 1219, column: 28, scope: !1579)
!1641 = !DILocation(line: 1219, column: 32, scope: !1579)
!1642 = !DILocation(line: 1221, column: 6, scope: !1600)
!1643 = !DILocation(line: 1221, column: 11, scope: !1600)
!1644 = !DILocation(line: 1221, column: 17, scope: !1600)
!1645 = !DILocation(line: 1221, column: 6, scope: !1579)
!1646 = !DILocation(line: 1229, column: 3, scope: !1599)
!1647 = !DILocation(line: 1229, column: 16, scope: !1599)
!1648 = !DILocation(line: 1230, column: 3, scope: !1599)
!1649 = !DILocation(line: 1230, column: 7, scope: !1599)
!1650 = !DILocation(line: 1232, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1232, column: 7)
!1652 = !DILocation(line: 1232, column: 23, scope: !1651)
!1653 = !DILocation(line: 1232, column: 28, scope: !1651)
!1654 = !DILocation(line: 1232, column: 7, scope: !1651)
!1655 = !DILocation(line: 1232, column: 31, scope: !1651)
!1656 = !DILocation(line: 1232, column: 7, scope: !1599)
!1657 = !DILocation(line: 1233, column: 26, scope: !1651)
!1658 = !DILocation(line: 1233, column: 12, scope: !1651)
!1659 = !DILocation(line: 1233, column: 10, scope: !1651)
!1660 = !DILocation(line: 1233, column: 4, scope: !1651)
!1661 = !DILocation(line: 1235, column: 26, scope: !1651)
!1662 = !DILocation(line: 1235, column: 31, scope: !1651)
!1663 = !DILocation(line: 1235, column: 12, scope: !1651)
!1664 = !DILocation(line: 1235, column: 10, scope: !1651)
!1665 = !DILocation(line: 1237, column: 14, scope: !1599)
!1666 = !DILocation(line: 1237, column: 22, scope: !1599)
!1667 = !DILocation(line: 1237, column: 3, scope: !1599)
!1668 = !DILocation(line: 1238, column: 14, scope: !1599)
!1669 = !DILocation(line: 1238, column: 22, scope: !1599)
!1670 = !DILocation(line: 1238, column: 3, scope: !1599)
!1671 = !DILocation(line: 1239, column: 14, scope: !1599)
!1672 = !DILocation(line: 1239, column: 22, scope: !1599)
!1673 = !DILocation(line: 1239, column: 3, scope: !1599)
!1674 = !DILocation(line: 1240, column: 16, scope: !1599)
!1675 = !DILocation(line: 1240, column: 23, scope: !1599)
!1676 = !DILocation(line: 1240, column: 3, scope: !1599)
!1677 = !DILocation(line: 1242, column: 16, scope: !1599)
!1678 = !DILocation(line: 1242, column: 24, scope: !1599)
!1679 = !DILocation(line: 1242, column: 3, scope: !1599)
!1680 = !DILocation(line: 1243, column: 16, scope: !1599)
!1681 = !DILocation(line: 1243, column: 23, scope: !1599)
!1682 = !DILocation(line: 1243, column: 3, scope: !1599)
!1683 = !DILocation(line: 1245, column: 12, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1245, column: 3)
!1685 = !DILocation(line: 1245, column: 17, scope: !1684)
!1686 = !DILocation(line: 1245, column: 10, scope: !1684)
!1687 = !DILocation(line: 1245, column: 8, scope: !1684)
!1688 = !DILocation(line: 1245, column: 21, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1245, column: 3)
!1690 = !DILocation(line: 1245, column: 23, scope: !1689)
!1691 = !DILocation(line: 1245, column: 3, scope: !1684)
!1692 = !DILocation(line: 1246, column: 21, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 1245, column: 34)
!1694 = !DILocation(line: 1246, column: 29, scope: !1693)
!1695 = !DILocation(line: 1246, column: 37, scope: !1693)
!1696 = !DILocation(line: 1246, column: 4, scope: !1693)
!1697 = !DILocation(line: 1247, column: 21, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1247, column: 8)
!1699 = !DILocation(line: 1247, column: 29, scope: !1698)
!1700 = !DILocation(line: 1247, column: 8, scope: !1698)
!1701 = !DILocation(line: 1247, column: 8, scope: !1693)
!1702 = !DILocation(line: 1248, column: 23, scope: !1698)
!1703 = !DILocation(line: 1248, column: 31, scope: !1698)
!1704 = !DILocation(line: 1248, column: 39, scope: !1698)
!1705 = !DILocation(line: 1248, column: 46, scope: !1698)
!1706 = !DILocation(line: 1248, column: 5, scope: !1698)
!1707 = !DILocation(line: 1249, column: 3, scope: !1693)
!1708 = !DILocation(line: 1245, column: 30, scope: !1689)
!1709 = !DILocation(line: 1245, column: 3, scope: !1689)
!1710 = distinct !{!1710, !1691, !1711, !557, !558}
!1711 = !DILocation(line: 1249, column: 3, scope: !1684)
!1712 = !DILocation(line: 1251, column: 2, scope: !1600)
!1713 = !DILocation(line: 1251, column: 13, scope: !1604)
!1714 = !DILocation(line: 1251, column: 18, scope: !1604)
!1715 = !DILocation(line: 1251, column: 24, scope: !1604)
!1716 = !DILocation(line: 1251, column: 13, scope: !1600)
!1717 = !DILocation(line: 1252, column: 3, scope: !1603)
!1718 = !DILocation(line: 1252, column: 16, scope: !1603)
!1719 = !DILocation(line: 1253, column: 3, scope: !1603)
!1720 = !DILocation(line: 1253, column: 7, scope: !1603)
!1721 = !DILocation(line: 1254, column: 3, scope: !1603)
!1722 = !DILocation(line: 1254, column: 25, scope: !1603)
!1723 = !DILocation(line: 1254, column: 30, scope: !1603)
!1724 = !DILocation(line: 1255, column: 3, scope: !1603)
!1725 = !DILocation(line: 1255, column: 13, scope: !1603)
!1726 = !DILocation(line: 1255, column: 17, scope: !1603)
!1727 = !DILocation(line: 1255, column: 21, scope: !1603)
!1728 = !DILocation(line: 1255, column: 26, scope: !1603)
!1729 = !DILocation(line: 1256, column: 3, scope: !1603)
!1730 = !DILocation(line: 1256, column: 17, scope: !1603)
!1731 = !DILocation(line: 1257, column: 3, scope: !1603)
!1732 = !DILocation(line: 1257, column: 14, scope: !1603)
!1733 = !DILocation(line: 1264, column: 25, scope: !1603)
!1734 = !DILocation(line: 1264, column: 11, scope: !1603)
!1735 = !DILocation(line: 1264, column: 9, scope: !1603)
!1736 = !DILocation(line: 1265, column: 3, scope: !1603)
!1737 = !DILocation(line: 1266, column: 3, scope: !1603)
!1738 = !DILocation(line: 1267, column: 3, scope: !1603)
!1739 = !DILocation(line: 1268, column: 3, scope: !1603)
!1740 = !DILocation(line: 1269, column: 17, scope: !1603)
!1741 = !DILocation(line: 1269, column: 3, scope: !1603)
!1742 = !DILocation(line: 1270, column: 15, scope: !1603)
!1743 = !DILocation(line: 1270, column: 3, scope: !1603)
!1744 = !DILocation(line: 1271, column: 19, scope: !1603)
!1745 = !DILocation(line: 1271, column: 26, scope: !1603)
!1746 = !DILocation(line: 1271, column: 10, scope: !1603)
!1747 = !DILocation(line: 1271, column: 6, scope: !1603)
!1748 = !DILocation(line: 1271, column: 8, scope: !1603)
!1749 = !DILocation(line: 1272, column: 17, scope: !1603)
!1750 = !DILocation(line: 1272, column: 3, scope: !1603)
!1751 = !DILocation(line: 1274, column: 21, scope: !1603)
!1752 = !DILocation(line: 1274, column: 3, scope: !1603)
!1753 = !DILocation(line: 1275, column: 21, scope: !1603)
!1754 = !DILocation(line: 1275, column: 3, scope: !1603)
!1755 = !DILocation(line: 1276, column: 22, scope: !1603)
!1756 = !DILocation(line: 1276, column: 3, scope: !1603)
!1757 = !DILocation(line: 1277, column: 22, scope: !1603)
!1758 = !DILocation(line: 1277, column: 3, scope: !1603)
!1759 = !DILocation(line: 1279, column: 14, scope: !1603)
!1760 = !DILocation(line: 1279, column: 21, scope: !1603)
!1761 = !DILocation(line: 1279, column: 24, scope: !1603)
!1762 = !DILocation(line: 1279, column: 29, scope: !1603)
!1763 = !DILocation(line: 1279, column: 32, scope: !1603)
!1764 = !DILocation(line: 1279, column: 3, scope: !1603)
!1765 = !DILocation(line: 1280, column: 22, scope: !1603)
!1766 = !DILocation(line: 1280, column: 27, scope: !1603)
!1767 = !DILocation(line: 1280, column: 30, scope: !1603)
!1768 = !DILocation(line: 1280, column: 3, scope: !1603)
!1769 = !DILocation(line: 1280, column: 10, scope: !1603)
!1770 = !DILocation(line: 1280, column: 13, scope: !1603)
!1771 = !DILocation(line: 1280, column: 20, scope: !1603)
!1772 = !DILocation(line: 1282, column: 6, scope: !1603)
!1773 = !DILocation(line: 1283, column: 6, scope: !1603)
!1774 = !DILocation(line: 1284, column: 7, scope: !1603)
!1775 = !DILocation(line: 1285, column: 7, scope: !1603)
!1776 = !DILocation(line: 1287, column: 12, scope: !1619)
!1777 = !DILocation(line: 1287, column: 17, scope: !1619)
!1778 = !DILocation(line: 1287, column: 10, scope: !1619)
!1779 = !DILocation(line: 1287, column: 8, scope: !1619)
!1780 = !DILocation(line: 1287, column: 21, scope: !1618)
!1781 = !DILocation(line: 1287, column: 23, scope: !1618)
!1782 = !DILocation(line: 1287, column: 3, scope: !1619)
!1783 = !DILocation(line: 1288, column: 4, scope: !1617)
!1784 = !DILocation(line: 1288, column: 14, scope: !1617)
!1785 = !DILocation(line: 1290, column: 22, scope: !1617)
!1786 = !DILocation(line: 1290, column: 30, scope: !1617)
!1787 = !DILocation(line: 1290, column: 9, scope: !1617)
!1788 = !DILocation(line: 1290, column: 7, scope: !1617)
!1789 = !DILocation(line: 1291, column: 20, scope: !1617)
!1790 = !DILocation(line: 1291, column: 24, scope: !1617)
!1791 = !DILocation(line: 1291, column: 28, scope: !1617)
!1792 = !DILocation(line: 1291, column: 32, scope: !1617)
!1793 = !DILocation(line: 1291, column: 4, scope: !1617)
!1794 = !DILocation(line: 1292, column: 22, scope: !1617)
!1795 = !DILocation(line: 1292, column: 27, scope: !1617)
!1796 = !DILocation(line: 1292, column: 32, scope: !1617)
!1797 = !DILocation(line: 1292, column: 36, scope: !1617)
!1798 = !DILocation(line: 1292, column: 40, scope: !1617)
!1799 = !DILocation(line: 1292, column: 47, scope: !1617)
!1800 = !DILocation(line: 1292, column: 50, scope: !1617)
!1801 = !DILocation(line: 1292, column: 4, scope: !1617)
!1802 = !DILocation(line: 1293, column: 20, scope: !1617)
!1803 = !DILocation(line: 1293, column: 25, scope: !1617)
!1804 = !DILocation(line: 1293, column: 30, scope: !1617)
!1805 = !DILocation(line: 1293, column: 34, scope: !1617)
!1806 = !DILocation(line: 1293, column: 4, scope: !1617)
!1807 = !DILocation(line: 1294, column: 8, scope: !1617)
!1808 = !DILocation(line: 1294, column: 6, scope: !1617)
!1809 = !DILocation(line: 1294, column: 18, scope: !1617)
!1810 = !DILocation(line: 1294, column: 16, scope: !1617)
!1811 = !DILocation(line: 1294, column: 30, scope: !1617)
!1812 = !DILocation(line: 1294, column: 28, scope: !1617)
!1813 = !DILocation(line: 1295, column: 8, scope: !1617)
!1814 = !DILocation(line: 1295, column: 6, scope: !1617)
!1815 = !DILocation(line: 1295, column: 18, scope: !1617)
!1816 = !DILocation(line: 1295, column: 16, scope: !1617)
!1817 = !DILocation(line: 1295, column: 30, scope: !1617)
!1818 = !DILocation(line: 1295, column: 28, scope: !1617)
!1819 = !DILocation(line: 1296, column: 3, scope: !1618)
!1820 = !DILocation(line: 1296, column: 3, scope: !1617)
!1821 = !DILocation(line: 1287, column: 30, scope: !1618)
!1822 = !DILocation(line: 1287, column: 3, scope: !1618)
!1823 = distinct !{!1823, !1782, !1824, !557, !558}
!1824 = !DILocation(line: 1296, column: 3, scope: !1619)
!1825 = !DILocation(line: 1298, column: 13, scope: !1603)
!1826 = !DILocation(line: 1298, column: 21, scope: !1603)
!1827 = !DILocation(line: 1298, column: 3, scope: !1603)
!1828 = !DILocation(line: 1299, column: 9, scope: !1603)
!1829 = !DILocation(line: 1299, column: 15, scope: !1603)
!1830 = !DILocation(line: 1299, column: 8, scope: !1603)
!1831 = !DILocation(line: 1299, column: 6, scope: !1603)
!1832 = !DILocation(line: 1300, column: 30, scope: !1603)
!1833 = !DILocation(line: 1300, column: 34, scope: !1603)
!1834 = !DILocation(line: 1300, column: 3, scope: !1603)
!1835 = !DILocation(line: 1302, column: 14, scope: !1603)
!1836 = !DILocation(line: 1302, column: 17, scope: !1603)
!1837 = !DILocation(line: 1302, column: 9, scope: !1603)
!1838 = !DILocation(line: 1303, column: 3, scope: !1603)
!1839 = !DILocation(line: 1303, column: 3, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1303, column: 3)
!1841 = !DILocation(line: 1303, column: 3, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1303, column: 3)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 1303, column: 3)
!1844 = !DILocation(line: 1303, column: 3, scope: !1843)
!1845 = distinct !{!1845, !1839, !1839, !557, !558}
!1846 = !DILocation(line: 1304, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1304, column: 7)
!1848 = !DILocation(line: 1304, column: 13, scope: !1847)
!1849 = !DILocation(line: 1304, column: 7, scope: !1603)
!1850 = !DILocation(line: 1305, column: 15, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 1304, column: 19)
!1852 = !DILocation(line: 1305, column: 23, scope: !1851)
!1853 = !DILocation(line: 1305, column: 4, scope: !1851)
!1854 = !DILocation(line: 1306, column: 15, scope: !1851)
!1855 = !DILocation(line: 1306, column: 23, scope: !1851)
!1856 = !DILocation(line: 1306, column: 4, scope: !1851)
!1857 = !DILocation(line: 1307, column: 3, scope: !1851)
!1858 = !DILocation(line: 1308, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 1307, column: 10)
!1860 = !DILocation(line: 1308, column: 7, scope: !1859)
!1861 = !DILocation(line: 1309, column: 12, scope: !1859)
!1862 = !DILocation(line: 1309, column: 19, scope: !1859)
!1863 = !DILocation(line: 1309, column: 22, scope: !1859)
!1864 = !DILocation(line: 1309, column: 4, scope: !1859)
!1865 = !DILocation(line: 1310, column: 12, scope: !1859)
!1866 = !DILocation(line: 1310, column: 20, scope: !1859)
!1867 = !DILocation(line: 1310, column: 26, scope: !1859)
!1868 = !DILocation(line: 1310, column: 29, scope: !1859)
!1869 = !DILocation(line: 1310, column: 33, scope: !1859)
!1870 = !DILocation(line: 1310, column: 4, scope: !1859)
!1871 = !DILocation(line: 1311, column: 15, scope: !1859)
!1872 = !DILocation(line: 1311, column: 23, scope: !1859)
!1873 = !DILocation(line: 1311, column: 4, scope: !1859)
!1874 = !DILocation(line: 1312, column: 13, scope: !1859)
!1875 = !DILocation(line: 1312, column: 4, scope: !1859)
!1876 = !DILocation(line: 1315, column: 3, scope: !1603)
!1877 = !DILocation(line: 1316, column: 3, scope: !1603)
!1878 = !DILocation(line: 1317, column: 3, scope: !1603)
!1879 = !DILocation(line: 1318, column: 3, scope: !1603)
!1880 = !DILocation(line: 1320, column: 2, scope: !1604)
!1881 = !DILocation(line: 1322, column: 22, scope: !1579)
!1882 = !DILocation(line: 1322, column: 27, scope: !1579)
!1883 = !DILocation(line: 1322, column: 7, scope: !1579)
!1884 = !DILocation(line: 1322, column: 5, scope: !1579)
!1885 = !DILocation(line: 1323, column: 22, scope: !1579)
!1886 = !DILocation(line: 1323, column: 27, scope: !1579)
!1887 = !DILocation(line: 1323, column: 7, scope: !1579)
!1888 = !DILocation(line: 1323, column: 5, scope: !1579)
!1889 = !DILocation(line: 1324, column: 22, scope: !1579)
!1890 = !DILocation(line: 1324, column: 27, scope: !1579)
!1891 = !DILocation(line: 1324, column: 7, scope: !1579)
!1892 = !DILocation(line: 1324, column: 5, scope: !1579)
!1893 = !DILocation(line: 1325, column: 16, scope: !1579)
!1894 = !DILocation(line: 1325, column: 7, scope: !1579)
!1895 = !DILocation(line: 1325, column: 5, scope: !1579)
!1896 = !DILocation(line: 1326, column: 16, scope: !1579)
!1897 = !DILocation(line: 1326, column: 23, scope: !1579)
!1898 = !DILocation(line: 1326, column: 7, scope: !1579)
!1899 = !DILocation(line: 1326, column: 5, scope: !1579)
!1900 = !DILocation(line: 1328, column: 6, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1328, column: 6)
!1902 = !DILocation(line: 1328, column: 6, scope: !1579)
!1903 = !DILocation(line: 1329, column: 3, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1328, column: 23)
!1905 = !DILocation(line: 1329, column: 6, scope: !1904)
!1906 = !DILocation(line: 1329, column: 11, scope: !1904)
!1907 = !DILocation(line: 1330, column: 11, scope: !1904)
!1908 = !DILocation(line: 1330, column: 15, scope: !1904)
!1909 = !DILocation(line: 1330, column: 19, scope: !1904)
!1910 = !DILocation(line: 1330, column: 3, scope: !1904)
!1911 = !DILocation(line: 1331, column: 2, scope: !1904)
!1912 = !DILocation(line: 1333, column: 18, scope: !1622)
!1913 = !DILocation(line: 1333, column: 25, scope: !1622)
!1914 = !DILocation(line: 1333, column: 7, scope: !1622)
!1915 = !DILocation(line: 1333, column: 6, scope: !1579)
!1916 = !DILocation(line: 1334, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1333, column: 32)
!1918 = !DILocation(line: 1334, column: 15, scope: !1917)
!1919 = !DILocation(line: 1334, column: 22, scope: !1917)
!1920 = !DILocation(line: 1334, column: 3, scope: !1917)
!1921 = !DILocation(line: 1335, column: 11, scope: !1917)
!1922 = !DILocation(line: 1335, column: 15, scope: !1917)
!1923 = !DILocation(line: 1335, column: 3, scope: !1917)
!1924 = !DILocation(line: 1336, column: 2, scope: !1917)
!1925 = !DILocation(line: 1337, column: 3, scope: !1621)
!1926 = !DILocation(line: 1337, column: 7, scope: !1621)
!1927 = !DILocation(line: 1337, column: 11, scope: !1621)
!1928 = !DILocation(line: 1339, column: 23, scope: !1621)
!1929 = !DILocation(line: 1339, column: 28, scope: !1621)
!1930 = !DILocation(line: 1339, column: 8, scope: !1621)
!1931 = !DILocation(line: 1339, column: 6, scope: !1621)
!1932 = !DILocation(line: 1340, column: 23, scope: !1621)
!1933 = !DILocation(line: 1340, column: 28, scope: !1621)
!1934 = !DILocation(line: 1340, column: 8, scope: !1621)
!1935 = !DILocation(line: 1340, column: 6, scope: !1621)
!1936 = !DILocation(line: 1341, column: 11, scope: !1621)
!1937 = !DILocation(line: 1341, column: 15, scope: !1621)
!1938 = !DILocation(line: 1341, column: 22, scope: !1621)
!1939 = !DILocation(line: 1341, column: 25, scope: !1621)
!1940 = !DILocation(line: 1341, column: 32, scope: !1621)
!1941 = !DILocation(line: 1341, column: 35, scope: !1621)
!1942 = !DILocation(line: 1341, column: 3, scope: !1621)
!1943 = !DILocation(line: 1342, column: 11, scope: !1621)
!1944 = !DILocation(line: 1342, column: 15, scope: !1621)
!1945 = !DILocation(line: 1342, column: 22, scope: !1621)
!1946 = !DILocation(line: 1342, column: 25, scope: !1621)
!1947 = !DILocation(line: 1342, column: 29, scope: !1621)
!1948 = !DILocation(line: 1342, column: 3, scope: !1621)
!1949 = !DILocation(line: 1343, column: 11, scope: !1621)
!1950 = !DILocation(line: 1343, column: 15, scope: !1621)
!1951 = !DILocation(line: 1343, column: 19, scope: !1621)
!1952 = !DILocation(line: 1343, column: 3, scope: !1621)
!1953 = !DILocation(line: 1344, column: 11, scope: !1621)
!1954 = !DILocation(line: 1344, column: 15, scope: !1621)
!1955 = !DILocation(line: 1344, column: 22, scope: !1621)
!1956 = !DILocation(line: 1344, column: 25, scope: !1621)
!1957 = !DILocation(line: 1344, column: 29, scope: !1621)
!1958 = !DILocation(line: 1344, column: 3, scope: !1621)
!1959 = !DILocation(line: 1345, column: 11, scope: !1621)
!1960 = !DILocation(line: 1345, column: 15, scope: !1621)
!1961 = !DILocation(line: 1345, column: 19, scope: !1621)
!1962 = !DILocation(line: 1345, column: 3, scope: !1621)
!1963 = !DILocation(line: 1346, column: 11, scope: !1621)
!1964 = !DILocation(line: 1346, column: 15, scope: !1621)
!1965 = !DILocation(line: 1346, column: 19, scope: !1621)
!1966 = !DILocation(line: 1346, column: 23, scope: !1621)
!1967 = !DILocation(line: 1346, column: 3, scope: !1621)
!1968 = !DILocation(line: 1347, column: 12, scope: !1621)
!1969 = !DILocation(line: 1347, column: 3, scope: !1621)
!1970 = !DILocation(line: 1348, column: 12, scope: !1621)
!1971 = !DILocation(line: 1348, column: 3, scope: !1621)
!1972 = !DILocation(line: 1349, column: 2, scope: !1622)
!1973 = !DILocation(line: 1350, column: 16, scope: !1579)
!1974 = !DILocation(line: 1350, column: 7, scope: !1579)
!1975 = !DILocation(line: 1350, column: 5, scope: !1579)
!1976 = !DILocation(line: 1352, column: 10, scope: !1579)
!1977 = !DILocation(line: 1352, column: 13, scope: !1579)
!1978 = !DILocation(line: 1352, column: 16, scope: !1579)
!1979 = !DILocation(line: 1352, column: 2, scope: !1579)
!1980 = !DILocation(line: 1353, column: 24, scope: !1579)
!1981 = !DILocation(line: 1353, column: 10, scope: !1579)
!1982 = !DILocation(line: 1353, column: 8, scope: !1579)
!1983 = !DILocation(line: 1354, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1354, column: 6)
!1985 = !DILocation(line: 1354, column: 12, scope: !1984)
!1986 = !DILocation(line: 1354, column: 6, scope: !1579)
!1987 = !DILocation(line: 1359, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1354, column: 17)
!1989 = !DILocation(line: 1360, column: 13, scope: !1988)
!1990 = !DILocation(line: 1360, column: 21, scope: !1988)
!1991 = !DILocation(line: 1360, column: 3, scope: !1988)
!1992 = !DILocation(line: 1361, column: 13, scope: !1988)
!1993 = !DILocation(line: 1361, column: 21, scope: !1988)
!1994 = !DILocation(line: 1361, column: 3, scope: !1988)
!1995 = !DILocation(line: 1362, column: 13, scope: !1988)
!1996 = !DILocation(line: 1362, column: 21, scope: !1988)
!1997 = !DILocation(line: 1362, column: 3, scope: !1988)
!1998 = !DILocation(line: 1363, column: 2, scope: !1988)
!1999 = !DILocation(line: 1364, column: 11, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1363, column: 9)
!2001 = !DILocation(line: 1364, column: 19, scope: !2000)
!2002 = !DILocation(line: 1364, column: 22, scope: !2000)
!2003 = !DILocation(line: 1364, column: 29, scope: !2000)
!2004 = !DILocation(line: 1364, column: 3, scope: !2000)
!2005 = !DILocation(line: 1365, column: 11, scope: !2000)
!2006 = !DILocation(line: 1365, column: 19, scope: !2000)
!2007 = !DILocation(line: 1365, column: 22, scope: !2000)
!2008 = !DILocation(line: 1365, column: 3, scope: !2000)
!2009 = !DILocation(line: 1366, column: 11, scope: !2000)
!2010 = !DILocation(line: 1366, column: 19, scope: !2000)
!2011 = !DILocation(line: 1366, column: 22, scope: !2000)
!2012 = !DILocation(line: 1366, column: 29, scope: !2000)
!2013 = !DILocation(line: 1366, column: 3, scope: !2000)
!2014 = !DILocation(line: 1368, column: 11, scope: !1579)
!2015 = !DILocation(line: 1368, column: 2, scope: !1579)
!2016 = !DILocation(line: 1368, column: 19, scope: !1579)
!2017 = !DILocation(line: 1370, column: 9, scope: !1579)
!2018 = !DILocation(line: 1370, column: 5, scope: !1579)
!2019 = !DILocation(line: 1370, column: 7, scope: !1579)
!2020 = !DILocation(line: 1370, column: 16, scope: !1579)
!2021 = !DILocation(line: 1371, column: 9, scope: !1579)
!2022 = !DILocation(line: 1371, column: 5, scope: !1579)
!2023 = !DILocation(line: 1371, column: 7, scope: !1579)
!2024 = !DILocation(line: 1371, column: 16, scope: !1579)
!2025 = !DILocation(line: 1372, column: 9, scope: !1579)
!2026 = !DILocation(line: 1372, column: 5, scope: !1579)
!2027 = !DILocation(line: 1372, column: 7, scope: !1579)
!2028 = !DILocation(line: 1372, column: 16, scope: !1579)
!2029 = !DILocation(line: 1373, column: 2, scope: !1579)
!2030 = !DILocation(line: 1374, column: 2, scope: !1579)
!2031 = !DILocation(line: 1377, column: 2, scope: !1579)
!2032 = !DILocation(line: 1378, column: 16, scope: !1579)
!2033 = !DILocation(line: 1378, column: 19, scope: !1579)
!2034 = !DILocation(line: 1378, column: 24, scope: !1579)
!2035 = !DILocation(line: 1378, column: 33, scope: !1579)
!2036 = !DILocation(line: 1378, column: 36, scope: !1579)
!2037 = !DILocation(line: 1378, column: 2, scope: !1579)
!2038 = !DILocation(line: 1380, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1380, column: 2)
!2040 = !DILocation(line: 1380, column: 16, scope: !2039)
!2041 = !DILocation(line: 1380, column: 9, scope: !2039)
!2042 = !DILocation(line: 1380, column: 7, scope: !2039)
!2043 = !DILocation(line: 1380, column: 20, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1380, column: 2)
!2045 = !DILocation(line: 1380, column: 22, scope: !2044)
!2046 = !DILocation(line: 1380, column: 2, scope: !2039)
!2047 = !DILocation(line: 1381, column: 20, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1380, column: 32)
!2049 = !DILocation(line: 1381, column: 28, scope: !2048)
!2050 = !DILocation(line: 1381, column: 36, scope: !2048)
!2051 = !DILocation(line: 1381, column: 3, scope: !2048)
!2052 = !DILocation(line: 1382, column: 20, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1382, column: 7)
!2054 = !DILocation(line: 1382, column: 23, scope: !2053)
!2055 = !DILocation(line: 1382, column: 7, scope: !2053)
!2056 = !DILocation(line: 1382, column: 26, scope: !2053)
!2057 = !DILocation(line: 1382, column: 31, scope: !2053)
!2058 = !DILocation(line: 1382, column: 47, scope: !2053)
!2059 = !DILocation(line: 1382, column: 50, scope: !2053)
!2060 = !DILocation(line: 1382, column: 34, scope: !2053)
!2061 = !DILocation(line: 1382, column: 53, scope: !2053)
!2062 = !DILocation(line: 1382, column: 7, scope: !2048)
!2063 = !DILocation(line: 1383, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1382, column: 59)
!2065 = !DILocation(line: 1383, column: 4, scope: !2064)
!2066 = !DILocation(line: 1384, column: 22, scope: !2064)
!2067 = !DILocation(line: 1384, column: 40, scope: !2064)
!2068 = !DILocation(line: 1384, column: 4, scope: !2064)
!2069 = !DILocation(line: 1385, column: 3, scope: !2064)
!2070 = !DILocation(line: 1386, column: 20, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1386, column: 7)
!2072 = !DILocation(line: 1386, column: 23, scope: !2071)
!2073 = !DILocation(line: 1386, column: 7, scope: !2071)
!2074 = !DILocation(line: 1386, column: 26, scope: !2071)
!2075 = !DILocation(line: 1386, column: 31, scope: !2071)
!2076 = !DILocation(line: 1386, column: 47, scope: !2071)
!2077 = !DILocation(line: 1386, column: 50, scope: !2071)
!2078 = !DILocation(line: 1386, column: 34, scope: !2071)
!2079 = !DILocation(line: 1386, column: 53, scope: !2071)
!2080 = !DILocation(line: 1386, column: 7, scope: !2048)
!2081 = !DILocation(line: 1387, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 1386, column: 59)
!2083 = !DILocation(line: 1387, column: 4, scope: !2082)
!2084 = !DILocation(line: 1388, column: 22, scope: !2082)
!2085 = !DILocation(line: 1388, column: 43, scope: !2082)
!2086 = !DILocation(line: 1388, column: 4, scope: !2082)
!2087 = !DILocation(line: 1389, column: 3, scope: !2082)
!2088 = !DILocation(line: 1390, column: 2, scope: !2048)
!2089 = !DILocation(line: 1380, column: 28, scope: !2044)
!2090 = !DILocation(line: 1380, column: 2, scope: !2044)
!2091 = distinct !{!2091, !2046, !2092, !557, !558}
!2092 = !DILocation(line: 1390, column: 2, scope: !2039)
!2093 = !DILocation(line: 1392, column: 2, scope: !1579)
!2094 = !DILocation(line: 1393, column: 2, scope: !1579)
!2095 = !DILocation(line: 1394, column: 2, scope: !1579)
!2096 = !DILocation(line: 1395, column: 11, scope: !1579)
!2097 = !DILocation(line: 1395, column: 2, scope: !1579)
!2098 = !DILocation(line: 1396, column: 11, scope: !1579)
!2099 = !DILocation(line: 1396, column: 2, scope: !1579)
!2100 = !DILocation(line: 1397, column: 1, scope: !1579)
!2101 = !DISubprogram(name: "mpi_set_ui", scope: !6, file: !6, line: 60, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!67, !67, !44}
!2104 = distinct !DISubprogram(name: "point_resize", scope: !3, file: !3, line: 88, type: !2105, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !81, !58}
!2107 = !{!2108, !2109, !2110}
!2108 = !DILocalVariable(name: "p", arg: 1, scope: !2104, file: !3, line: 88, type: !81)
!2109 = !DILocalVariable(name: "ctx", arg: 2, scope: !2104, file: !3, line: 88, type: !58)
!2110 = !DILocalVariable(name: "nlimbs", scope: !2104, file: !3, line: 90, type: !312)
!2111 = !DILocation(line: 88, column: 36, scope: !2104)
!2112 = !DILocation(line: 88, column: 58, scope: !2104)
!2113 = !DILocation(line: 90, column: 2, scope: !2104)
!2114 = !DILocation(line: 90, column: 9, scope: !2104)
!2115 = !DILocation(line: 90, column: 18, scope: !2104)
!2116 = !DILocation(line: 90, column: 23, scope: !2104)
!2117 = !DILocation(line: 90, column: 26, scope: !2104)
!2118 = !DILocation(line: 92, column: 13, scope: !2104)
!2119 = !DILocation(line: 92, column: 16, scope: !2104)
!2120 = !DILocation(line: 92, column: 19, scope: !2104)
!2121 = !DILocation(line: 92, column: 2, scope: !2104)
!2122 = !DILocation(line: 93, column: 17, scope: !2104)
!2123 = !DILocation(line: 93, column: 2, scope: !2104)
!2124 = !DILocation(line: 93, column: 5, scope: !2104)
!2125 = !DILocation(line: 93, column: 8, scope: !2104)
!2126 = !DILocation(line: 93, column: 15, scope: !2104)
!2127 = !DILocation(line: 94, column: 13, scope: !2104)
!2128 = !DILocation(line: 94, column: 16, scope: !2104)
!2129 = !DILocation(line: 94, column: 19, scope: !2104)
!2130 = !DILocation(line: 94, column: 2, scope: !2104)
!2131 = !DILocation(line: 95, column: 17, scope: !2104)
!2132 = !DILocation(line: 95, column: 2, scope: !2104)
!2133 = !DILocation(line: 95, column: 5, scope: !2104)
!2134 = !DILocation(line: 95, column: 8, scope: !2104)
!2135 = !DILocation(line: 95, column: 15, scope: !2104)
!2136 = !DILocation(line: 97, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 97, column: 6)
!2138 = !DILocation(line: 97, column: 11, scope: !2137)
!2139 = !DILocation(line: 97, column: 17, scope: !2137)
!2140 = !DILocation(line: 97, column: 6, scope: !2104)
!2141 = !DILocation(line: 98, column: 14, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 97, column: 39)
!2143 = !DILocation(line: 98, column: 17, scope: !2142)
!2144 = !DILocation(line: 98, column: 20, scope: !2142)
!2145 = !DILocation(line: 98, column: 3, scope: !2142)
!2146 = !DILocation(line: 99, column: 18, scope: !2142)
!2147 = !DILocation(line: 99, column: 3, scope: !2142)
!2148 = !DILocation(line: 99, column: 6, scope: !2142)
!2149 = !DILocation(line: 99, column: 9, scope: !2142)
!2150 = !DILocation(line: 99, column: 16, scope: !2142)
!2151 = !DILocation(line: 100, column: 2, scope: !2142)
!2152 = !DILocation(line: 101, column: 1, scope: !2104)
!2153 = distinct !DISubprogram(name: "mpi_ec_dup_point", scope: !3, file: !3, line: 918, type: !2154, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !81, !81, !58}
!2156 = !{!2157, !2158, !2159}
!2157 = !DILocalVariable(name: "result", arg: 1, scope: !2153, file: !3, line: 918, type: !81)
!2158 = !DILocalVariable(name: "point", arg: 2, scope: !2153, file: !3, line: 918, type: !81)
!2159 = !DILocalVariable(name: "ctx", arg: 3, scope: !2153, file: !3, line: 918, type: !58)
!2160 = !DILocation(line: 918, column: 28, scope: !2153)
!2161 = !DILocation(line: 918, column: 46, scope: !2153)
!2162 = !DILocation(line: 918, column: 72, scope: !2153)
!2163 = !DILocation(line: 920, column: 10, scope: !2153)
!2164 = !DILocation(line: 920, column: 15, scope: !2153)
!2165 = !DILocation(line: 920, column: 2, scope: !2153)
!2166 = !DILocation(line: 922, column: 25, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 920, column: 22)
!2168 = !DILocation(line: 922, column: 33, scope: !2167)
!2169 = !DILocation(line: 922, column: 40, scope: !2167)
!2170 = !DILocation(line: 922, column: 3, scope: !2167)
!2171 = !DILocation(line: 923, column: 3, scope: !2167)
!2172 = !DILocation(line: 925, column: 24, scope: !2167)
!2173 = !DILocation(line: 925, column: 32, scope: !2167)
!2174 = !DILocation(line: 925, column: 39, scope: !2167)
!2175 = !DILocation(line: 925, column: 3, scope: !2167)
!2176 = !DILocation(line: 926, column: 3, scope: !2167)
!2177 = !DILocation(line: 928, column: 21, scope: !2167)
!2178 = !DILocation(line: 928, column: 29, scope: !2167)
!2179 = !DILocation(line: 928, column: 36, scope: !2167)
!2180 = !DILocation(line: 928, column: 3, scope: !2167)
!2181 = !DILocation(line: 929, column: 3, scope: !2167)
!2182 = !DILocation(line: 931, column: 1, scope: !2153)
!2183 = !DISubprogram(name: "mpi_test_bit", scope: !6, file: !6, line: 131, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2184 = distinct !DISubprogram(name: "point_swap_cond", scope: !3, file: !3, line: 103, type: !2185, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !81, !81, !44, !58}
!2187 = !{!2188, !2189, !2190, !2191}
!2188 = !DILocalVariable(name: "d", arg: 1, scope: !2184, file: !3, line: 103, type: !81)
!2189 = !DILocalVariable(name: "s", arg: 2, scope: !2184, file: !3, line: 103, type: !81)
!2190 = !DILocalVariable(name: "swap", arg: 3, scope: !2184, file: !3, line: 103, type: !44)
!2191 = !DILocalVariable(name: "ctx", arg: 4, scope: !2184, file: !3, line: 104, type: !58)
!2192 = !DILocation(line: 103, column: 39, scope: !2184)
!2193 = !DILocation(line: 103, column: 52, scope: !2184)
!2194 = !DILocation(line: 103, column: 69, scope: !2184)
!2195 = !DILocation(line: 104, column: 22, scope: !2184)
!2196 = !DILocation(line: 106, column: 16, scope: !2184)
!2197 = !DILocation(line: 106, column: 19, scope: !2184)
!2198 = !DILocation(line: 106, column: 22, scope: !2184)
!2199 = !DILocation(line: 106, column: 25, scope: !2184)
!2200 = !DILocation(line: 106, column: 28, scope: !2184)
!2201 = !DILocation(line: 106, column: 2, scope: !2184)
!2202 = !DILocation(line: 107, column: 6, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 107, column: 6)
!2204 = !DILocation(line: 107, column: 11, scope: !2203)
!2205 = !DILocation(line: 107, column: 17, scope: !2203)
!2206 = !DILocation(line: 107, column: 6, scope: !2184)
!2207 = !DILocation(line: 108, column: 17, scope: !2203)
!2208 = !DILocation(line: 108, column: 20, scope: !2203)
!2209 = !DILocation(line: 108, column: 23, scope: !2203)
!2210 = !DILocation(line: 108, column: 26, scope: !2203)
!2211 = !DILocation(line: 108, column: 29, scope: !2203)
!2212 = !DILocation(line: 108, column: 3, scope: !2203)
!2213 = !DILocation(line: 109, column: 16, scope: !2184)
!2214 = !DILocation(line: 109, column: 19, scope: !2184)
!2215 = !DILocation(line: 109, column: 22, scope: !2184)
!2216 = !DILocation(line: 109, column: 25, scope: !2184)
!2217 = !DILocation(line: 109, column: 28, scope: !2184)
!2218 = !DILocation(line: 109, column: 2, scope: !2184)
!2219 = !DILocation(line: 110, column: 1, scope: !2184)
!2220 = distinct !DISubprogram(name: "montgomery_ladder", scope: !3, file: !3, line: 1166, type: !2221, scopeLine: 1169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !81, !81, !81, !81, !67, !58}
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229}
!2224 = !DILocalVariable(name: "prd", arg: 1, scope: !2220, file: !3, line: 1166, type: !81)
!2225 = !DILocalVariable(name: "sum", arg: 2, scope: !2220, file: !3, line: 1166, type: !81)
!2226 = !DILocalVariable(name: "p1", arg: 3, scope: !2220, file: !3, line: 1167, type: !81)
!2227 = !DILocalVariable(name: "p2", arg: 4, scope: !2220, file: !3, line: 1167, type: !81)
!2228 = !DILocalVariable(name: "dif_x", arg: 5, scope: !2220, file: !3, line: 1167, type: !67)
!2229 = !DILocalVariable(name: "ctx", arg: 6, scope: !2220, file: !3, line: 1168, type: !58)
!2230 = !DILocation(line: 1166, column: 41, scope: !2220)
!2231 = !DILocation(line: 1166, column: 56, scope: !2220)
!2232 = !DILocation(line: 1167, column: 13, scope: !2220)
!2233 = !DILocation(line: 1167, column: 27, scope: !2220)
!2234 = !DILocation(line: 1167, column: 35, scope: !2220)
!2235 = !DILocation(line: 1168, column: 22, scope: !2220)
!2236 = !DILocation(line: 1170, column: 2, scope: !2220)
!2237 = !DILocation(line: 1170, column: 7, scope: !2220)
!2238 = !DILocation(line: 1170, column: 12, scope: !2220)
!2239 = !DILocation(line: 1170, column: 17, scope: !2220)
!2240 = !DILocation(line: 1170, column: 20, scope: !2220)
!2241 = !DILocation(line: 1170, column: 24, scope: !2220)
!2242 = !DILocation(line: 1170, column: 27, scope: !2220)
!2243 = !DILocation(line: 1170, column: 31, scope: !2220)
!2244 = !DILocation(line: 1170, column: 34, scope: !2220)
!2245 = !DILocation(line: 1171, column: 2, scope: !2220)
!2246 = !DILocation(line: 1171, column: 7, scope: !2220)
!2247 = !DILocation(line: 1171, column: 12, scope: !2220)
!2248 = !DILocation(line: 1171, column: 16, scope: !2220)
!2249 = !DILocation(line: 1171, column: 19, scope: !2220)
!2250 = !DILocation(line: 1171, column: 23, scope: !2220)
!2251 = !DILocation(line: 1171, column: 26, scope: !2220)
!2252 = !DILocation(line: 1171, column: 30, scope: !2220)
!2253 = !DILocation(line: 1171, column: 33, scope: !2220)
!2254 = !DILocation(line: 1172, column: 2, scope: !2220)
!2255 = !DILocation(line: 1172, column: 7, scope: !2220)
!2256 = !DILocation(line: 1172, column: 12, scope: !2220)
!2257 = !DILocation(line: 1172, column: 17, scope: !2220)
!2258 = !DILocation(line: 1172, column: 20, scope: !2220)
!2259 = !DILocation(line: 1172, column: 24, scope: !2220)
!2260 = !DILocation(line: 1172, column: 27, scope: !2220)
!2261 = !DILocation(line: 1172, column: 31, scope: !2220)
!2262 = !DILocation(line: 1172, column: 34, scope: !2220)
!2263 = !DILocation(line: 1173, column: 2, scope: !2220)
!2264 = !DILocation(line: 1173, column: 7, scope: !2220)
!2265 = !DILocation(line: 1173, column: 12, scope: !2220)
!2266 = !DILocation(line: 1173, column: 16, scope: !2220)
!2267 = !DILocation(line: 1173, column: 19, scope: !2220)
!2268 = !DILocation(line: 1173, column: 23, scope: !2220)
!2269 = !DILocation(line: 1173, column: 26, scope: !2220)
!2270 = !DILocation(line: 1173, column: 30, scope: !2220)
!2271 = !DILocation(line: 1173, column: 33, scope: !2220)
!2272 = !DILocation(line: 1174, column: 2, scope: !2220)
!2273 = !DILocation(line: 1174, column: 7, scope: !2220)
!2274 = !DILocation(line: 1174, column: 12, scope: !2220)
!2275 = !DILocation(line: 1174, column: 16, scope: !2220)
!2276 = !DILocation(line: 1174, column: 19, scope: !2220)
!2277 = !DILocation(line: 1174, column: 23, scope: !2220)
!2278 = !DILocation(line: 1174, column: 26, scope: !2220)
!2279 = !DILocation(line: 1174, column: 31, scope: !2220)
!2280 = !DILocation(line: 1174, column: 34, scope: !2220)
!2281 = !DILocation(line: 1175, column: 2, scope: !2220)
!2282 = !DILocation(line: 1175, column: 7, scope: !2220)
!2283 = !DILocation(line: 1175, column: 12, scope: !2220)
!2284 = !DILocation(line: 1175, column: 16, scope: !2220)
!2285 = !DILocation(line: 1175, column: 19, scope: !2220)
!2286 = !DILocation(line: 1175, column: 24, scope: !2220)
!2287 = !DILocation(line: 1175, column: 27, scope: !2220)
!2288 = !DILocation(line: 1175, column: 31, scope: !2220)
!2289 = !DILocation(line: 1175, column: 34, scope: !2220)
!2290 = !DILocation(line: 1176, column: 2, scope: !2220)
!2291 = !DILocation(line: 1176, column: 7, scope: !2220)
!2292 = !DILocation(line: 1176, column: 12, scope: !2220)
!2293 = !DILocation(line: 1176, column: 16, scope: !2220)
!2294 = !DILocation(line: 1176, column: 19, scope: !2220)
!2295 = !DILocation(line: 1176, column: 24, scope: !2220)
!2296 = !DILocation(line: 1176, column: 27, scope: !2220)
!2297 = !DILocation(line: 1177, column: 2, scope: !2220)
!2298 = !DILocation(line: 1177, column: 7, scope: !2220)
!2299 = !DILocation(line: 1177, column: 12, scope: !2220)
!2300 = !DILocation(line: 1177, column: 16, scope: !2220)
!2301 = !DILocation(line: 1177, column: 19, scope: !2220)
!2302 = !DILocation(line: 1177, column: 23, scope: !2220)
!2303 = !DILocation(line: 1177, column: 26, scope: !2220)
!2304 = !DILocation(line: 1178, column: 2, scope: !2220)
!2305 = !DILocation(line: 1178, column: 7, scope: !2220)
!2306 = !DILocation(line: 1178, column: 12, scope: !2220)
!2307 = !DILocation(line: 1178, column: 17, scope: !2220)
!2308 = !DILocation(line: 1178, column: 20, scope: !2220)
!2309 = !DILocation(line: 1178, column: 24, scope: !2220)
!2310 = !DILocation(line: 1178, column: 27, scope: !2220)
!2311 = !DILocation(line: 1178, column: 31, scope: !2220)
!2312 = !DILocation(line: 1178, column: 34, scope: !2220)
!2313 = !DILocation(line: 1179, column: 2, scope: !2220)
!2314 = !DILocation(line: 1179, column: 7, scope: !2220)
!2315 = !DILocation(line: 1179, column: 12, scope: !2220)
!2316 = !DILocation(line: 1179, column: 16, scope: !2220)
!2317 = !DILocation(line: 1179, column: 19, scope: !2220)
!2318 = !DILocation(line: 1179, column: 23, scope: !2220)
!2319 = !DILocation(line: 1179, column: 26, scope: !2220)
!2320 = !DILocation(line: 1179, column: 30, scope: !2220)
!2321 = !DILocation(line: 1179, column: 33, scope: !2220)
!2322 = !DILocation(line: 1180, column: 2, scope: !2220)
!2323 = !DILocation(line: 1180, column: 7, scope: !2220)
!2324 = !DILocation(line: 1180, column: 12, scope: !2220)
!2325 = !DILocation(line: 1180, column: 17, scope: !2220)
!2326 = !DILocation(line: 1180, column: 20, scope: !2220)
!2327 = !DILocation(line: 1180, column: 24, scope: !2220)
!2328 = !DILocation(line: 1180, column: 27, scope: !2220)
!2329 = !DILocation(line: 1180, column: 31, scope: !2220)
!2330 = !DILocation(line: 1180, column: 34, scope: !2220)
!2331 = !DILocation(line: 1181, column: 2, scope: !2220)
!2332 = !DILocation(line: 1181, column: 7, scope: !2220)
!2333 = !DILocation(line: 1181, column: 12, scope: !2220)
!2334 = !DILocation(line: 1181, column: 16, scope: !2220)
!2335 = !DILocation(line: 1181, column: 19, scope: !2220)
!2336 = !DILocation(line: 1181, column: 23, scope: !2220)
!2337 = !DILocation(line: 1181, column: 26, scope: !2220)
!2338 = !DILocation(line: 1181, column: 30, scope: !2220)
!2339 = !DILocation(line: 1181, column: 33, scope: !2220)
!2340 = !DILocation(line: 1182, column: 2, scope: !2220)
!2341 = !DILocation(line: 1182, column: 7, scope: !2220)
!2342 = !DILocation(line: 1182, column: 12, scope: !2220)
!2343 = !DILocation(line: 1182, column: 17, scope: !2220)
!2344 = !DILocation(line: 1182, column: 20, scope: !2220)
!2345 = !DILocation(line: 1182, column: 25, scope: !2220)
!2346 = !DILocation(line: 1182, column: 28, scope: !2220)
!2347 = !DILocation(line: 1183, column: 2, scope: !2220)
!2348 = !DILocation(line: 1183, column: 7, scope: !2220)
!2349 = !DILocation(line: 1183, column: 12, scope: !2220)
!2350 = !DILocation(line: 1183, column: 17, scope: !2220)
!2351 = !DILocation(line: 1183, column: 20, scope: !2220)
!2352 = !DILocation(line: 1183, column: 24, scope: !2220)
!2353 = !DILocation(line: 1183, column: 27, scope: !2220)
!2354 = !DILocation(line: 1184, column: 2, scope: !2220)
!2355 = !DILocation(line: 1184, column: 7, scope: !2220)
!2356 = !DILocation(line: 1184, column: 12, scope: !2220)
!2357 = !DILocation(line: 1184, column: 17, scope: !2220)
!2358 = !DILocation(line: 1184, column: 20, scope: !2220)
!2359 = !DILocation(line: 1184, column: 24, scope: !2220)
!2360 = !DILocation(line: 1184, column: 27, scope: !2220)
!2361 = !DILocation(line: 1184, column: 32, scope: !2220)
!2362 = !DILocation(line: 1184, column: 35, scope: !2220)
!2363 = !DILocation(line: 1185, column: 2, scope: !2220)
!2364 = !DILocation(line: 1185, column: 7, scope: !2220)
!2365 = !DILocation(line: 1185, column: 12, scope: !2220)
!2366 = !DILocation(line: 1185, column: 17, scope: !2220)
!2367 = !DILocation(line: 1185, column: 20, scope: !2220)
!2368 = !DILocation(line: 1185, column: 25, scope: !2220)
!2369 = !DILocation(line: 1185, column: 28, scope: !2220)
!2370 = !DILocation(line: 1185, column: 35, scope: !2220)
!2371 = !DILocation(line: 1186, column: 2, scope: !2220)
!2372 = !DILocation(line: 1186, column: 7, scope: !2220)
!2373 = !DILocation(line: 1186, column: 12, scope: !2220)
!2374 = !DILocation(line: 1186, column: 17, scope: !2220)
!2375 = !DILocation(line: 1186, column: 20, scope: !2220)
!2376 = !DILocation(line: 1186, column: 24, scope: !2220)
!2377 = !DILocation(line: 1186, column: 27, scope: !2220)
!2378 = !DILocation(line: 1186, column: 32, scope: !2220)
!2379 = !DILocation(line: 1186, column: 35, scope: !2220)
!2380 = !DILocation(line: 1187, column: 2, scope: !2220)
!2381 = !DILocation(line: 1187, column: 7, scope: !2220)
!2382 = !DILocation(line: 1187, column: 12, scope: !2220)
!2383 = !DILocation(line: 1187, column: 17, scope: !2220)
!2384 = !DILocation(line: 1187, column: 20, scope: !2220)
!2385 = !DILocation(line: 1187, column: 25, scope: !2220)
!2386 = !DILocation(line: 1187, column: 28, scope: !2220)
!2387 = !DILocation(line: 1187, column: 32, scope: !2220)
!2388 = !DILocation(line: 1187, column: 35, scope: !2220)
!2389 = !DILocation(line: 1188, column: 1, scope: !2220)
!2390 = !DISubprogram(name: "mpi_clear", scope: !6, file: !6, line: 47, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2391 = !DISubprogram(name: "mpi_const", scope: !6, file: !6, line: 77, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!67, !17}
!2394 = !DISubprogram(name: "mpi_mul", scope: !6, file: !6, line: 149, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !67, !67, !67}
!2397 = distinct !DISubprogram(name: "point_set", scope: !3, file: !3, line: 81, type: !2398, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !81, !81}
!2400 = !{!2401, !2402}
!2401 = !DILocalVariable(name: "d", arg: 1, scope: !2397, file: !3, line: 81, type: !81)
!2402 = !DILocalVariable(name: "s", arg: 2, scope: !2397, file: !3, line: 81, type: !81)
!2403 = !DILocation(line: 81, column: 33, scope: !2397)
!2404 = !DILocation(line: 81, column: 46, scope: !2397)
!2405 = !DILocation(line: 83, column: 10, scope: !2397)
!2406 = !DILocation(line: 83, column: 13, scope: !2397)
!2407 = !DILocation(line: 83, column: 16, scope: !2397)
!2408 = !DILocation(line: 83, column: 19, scope: !2397)
!2409 = !DILocation(line: 83, column: 2, scope: !2397)
!2410 = !DILocation(line: 84, column: 10, scope: !2397)
!2411 = !DILocation(line: 84, column: 13, scope: !2397)
!2412 = !DILocation(line: 84, column: 16, scope: !2397)
!2413 = !DILocation(line: 84, column: 19, scope: !2397)
!2414 = !DILocation(line: 84, column: 2, scope: !2397)
!2415 = !DILocation(line: 85, column: 10, scope: !2397)
!2416 = !DILocation(line: 85, column: 13, scope: !2397)
!2417 = !DILocation(line: 85, column: 16, scope: !2397)
!2418 = !DILocation(line: 85, column: 19, scope: !2397)
!2419 = !DILocation(line: 85, column: 2, scope: !2397)
!2420 = !DILocation(line: 86, column: 1, scope: !2397)
!2421 = distinct !DISubprogram(name: "mpi_ec_curve_point", scope: !3, file: !3, line: 1401, type: !2422, scopeLine: 1402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!64, !81, !58}
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2434}
!2425 = !DILocalVariable(name: "point", arg: 1, scope: !2421, file: !3, line: 1401, type: !81)
!2426 = !DILocalVariable(name: "ctx", arg: 2, scope: !2421, file: !3, line: 1401, type: !58)
!2427 = !DILocalVariable(name: "res", scope: !2421, file: !3, line: 1403, type: !64)
!2428 = !DILocalVariable(name: "x", scope: !2421, file: !3, line: 1404, type: !67)
!2429 = !DILocalVariable(name: "y", scope: !2421, file: !3, line: 1404, type: !67)
!2430 = !DILocalVariable(name: "w", scope: !2421, file: !3, line: 1404, type: !67)
!2431 = !DILocalVariable(name: "xxx", scope: !2432, file: !3, line: 1423, type: !67)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1422, column: 3)
!2433 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1420, column: 22)
!2434 = !DILabel(scope: !2421, name: "leave", file: !3, line: 1502)
!2435 = !DILocation(line: 1401, column: 34, scope: !2421)
!2436 = !DILocation(line: 1401, column: 60, scope: !2421)
!2437 = !DILocation(line: 1403, column: 2, scope: !2421)
!2438 = !DILocation(line: 1403, column: 6, scope: !2421)
!2439 = !DILocation(line: 1404, column: 2, scope: !2421)
!2440 = !DILocation(line: 1404, column: 6, scope: !2421)
!2441 = !DILocation(line: 1404, column: 9, scope: !2421)
!2442 = !DILocation(line: 1404, column: 12, scope: !2421)
!2443 = !DILocation(line: 1406, column: 6, scope: !2421)
!2444 = !DILocation(line: 1406, column: 4, scope: !2421)
!2445 = !DILocation(line: 1407, column: 6, scope: !2421)
!2446 = !DILocation(line: 1407, column: 4, scope: !2421)
!2447 = !DILocation(line: 1408, column: 6, scope: !2421)
!2448 = !DILocation(line: 1408, column: 4, scope: !2421)
!2449 = !DILocation(line: 1413, column: 17, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1413, column: 6)
!2451 = !DILocation(line: 1413, column: 24, scope: !2450)
!2452 = !DILocation(line: 1413, column: 27, scope: !2450)
!2453 = !DILocation(line: 1413, column: 32, scope: !2450)
!2454 = !DILocation(line: 1413, column: 6, scope: !2450)
!2455 = !DILocation(line: 1413, column: 35, scope: !2450)
!2456 = !DILocation(line: 1413, column: 6, scope: !2421)
!2457 = !DILocation(line: 1414, column: 3, scope: !2450)
!2458 = !DILocation(line: 1415, column: 17, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1415, column: 6)
!2460 = !DILocation(line: 1415, column: 24, scope: !2459)
!2461 = !DILocation(line: 1415, column: 27, scope: !2459)
!2462 = !DILocation(line: 1415, column: 32, scope: !2459)
!2463 = !DILocation(line: 1415, column: 6, scope: !2459)
!2464 = !DILocation(line: 1415, column: 35, scope: !2459)
!2465 = !DILocation(line: 1415, column: 6, scope: !2421)
!2466 = !DILocation(line: 1416, column: 3, scope: !2459)
!2467 = !DILocation(line: 1417, column: 17, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1417, column: 6)
!2469 = !DILocation(line: 1417, column: 24, scope: !2468)
!2470 = !DILocation(line: 1417, column: 27, scope: !2468)
!2471 = !DILocation(line: 1417, column: 32, scope: !2468)
!2472 = !DILocation(line: 1417, column: 6, scope: !2468)
!2473 = !DILocation(line: 1417, column: 35, scope: !2468)
!2474 = !DILocation(line: 1417, column: 6, scope: !2421)
!2475 = !DILocation(line: 1418, column: 3, scope: !2468)
!2476 = !DILocation(line: 1420, column: 10, scope: !2421)
!2477 = !DILocation(line: 1420, column: 15, scope: !2421)
!2478 = !DILocation(line: 1420, column: 2, scope: !2421)
!2479 = !DILocation(line: 1423, column: 4, scope: !2432)
!2480 = !DILocation(line: 1423, column: 8, scope: !2432)
!2481 = !DILocation(line: 1425, column: 26, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1425, column: 8)
!2483 = !DILocation(line: 1425, column: 29, scope: !2482)
!2484 = !DILocation(line: 1425, column: 32, scope: !2482)
!2485 = !DILocation(line: 1425, column: 39, scope: !2482)
!2486 = !DILocation(line: 1425, column: 8, scope: !2482)
!2487 = !DILocation(line: 1425, column: 8, scope: !2432)
!2488 = !DILocation(line: 1426, column: 5, scope: !2482)
!2489 = !DILocation(line: 1428, column: 10, scope: !2432)
!2490 = !DILocation(line: 1428, column: 8, scope: !2432)
!2491 = !DILocation(line: 1431, column: 12, scope: !2432)
!2492 = !DILocation(line: 1431, column: 15, scope: !2432)
!2493 = !DILocation(line: 1431, column: 18, scope: !2432)
!2494 = !DILocation(line: 1431, column: 4, scope: !2432)
!2495 = !DILocation(line: 1433, column: 12, scope: !2432)
!2496 = !DILocation(line: 1433, column: 17, scope: !2432)
!2497 = !DILocation(line: 1433, column: 20, scope: !2432)
!2498 = !DILocation(line: 1433, column: 4, scope: !2432)
!2499 = !DILocation(line: 1434, column: 12, scope: !2432)
!2500 = !DILocation(line: 1434, column: 15, scope: !2432)
!2501 = !DILocation(line: 1434, column: 20, scope: !2432)
!2502 = !DILocation(line: 1434, column: 23, scope: !2432)
!2503 = !DILocation(line: 1434, column: 26, scope: !2432)
!2504 = !DILocation(line: 1434, column: 4, scope: !2432)
!2505 = !DILocation(line: 1435, column: 12, scope: !2432)
!2506 = !DILocation(line: 1435, column: 15, scope: !2432)
!2507 = !DILocation(line: 1435, column: 18, scope: !2432)
!2508 = !DILocation(line: 1435, column: 23, scope: !2432)
!2509 = !DILocation(line: 1435, column: 26, scope: !2432)
!2510 = !DILocation(line: 1435, column: 4, scope: !2432)
!2511 = !DILocation(line: 1436, column: 12, scope: !2432)
!2512 = !DILocation(line: 1436, column: 15, scope: !2432)
!2513 = !DILocation(line: 1436, column: 18, scope: !2432)
!2514 = !DILocation(line: 1436, column: 23, scope: !2432)
!2515 = !DILocation(line: 1436, column: 4, scope: !2432)
!2516 = !DILocation(line: 1438, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1438, column: 8)
!2518 = !DILocation(line: 1438, column: 20, scope: !2517)
!2519 = !DILocation(line: 1438, column: 9, scope: !2517)
!2520 = !DILocation(line: 1438, column: 8, scope: !2432)
!2521 = !DILocation(line: 1439, column: 9, scope: !2517)
!2522 = !DILocation(line: 1439, column: 5, scope: !2517)
!2523 = !DILocation(line: 1441, column: 13, scope: !2432)
!2524 = !DILocation(line: 1441, column: 4, scope: !2432)
!2525 = !DILocation(line: 1442, column: 3, scope: !2433)
!2526 = !DILocation(line: 1443, column: 3, scope: !2433)
!2527 = !DILocation(line: 1449, column: 26, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1449, column: 8)
!2529 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1446, column: 3)
!2530 = !DILocation(line: 1449, column: 35, scope: !2528)
!2531 = !DILocation(line: 1449, column: 42, scope: !2528)
!2532 = !DILocation(line: 1449, column: 8, scope: !2528)
!2533 = !DILocation(line: 1449, column: 8, scope: !2529)
!2534 = !DILocation(line: 1450, column: 5, scope: !2528)
!2535 = !DILocation(line: 1457, column: 12, scope: !2529)
!2536 = !DILocation(line: 1457, column: 15, scope: !2529)
!2537 = !DILocation(line: 1457, column: 20, scope: !2529)
!2538 = !DILocation(line: 1457, column: 23, scope: !2529)
!2539 = !DILocation(line: 1457, column: 46, scope: !2529)
!2540 = !DILocation(line: 1457, column: 4, scope: !2529)
!2541 = !DILocation(line: 1458, column: 12, scope: !2529)
!2542 = !DILocation(line: 1458, column: 15, scope: !2529)
!2543 = !DILocation(line: 1458, column: 18, scope: !2529)
!2544 = !DILocation(line: 1458, column: 40, scope: !2529)
!2545 = !DILocation(line: 1458, column: 4, scope: !2529)
!2546 = !DILocation(line: 1459, column: 12, scope: !2529)
!2547 = !DILocation(line: 1459, column: 15, scope: !2529)
!2548 = !DILocation(line: 1459, column: 18, scope: !2529)
!2549 = !DILocation(line: 1459, column: 21, scope: !2529)
!2550 = !DILocation(line: 1459, column: 4, scope: !2529)
!2551 = !DILocation(line: 1460, column: 12, scope: !2529)
!2552 = !DILocation(line: 1460, column: 16, scope: !2529)
!2553 = !DILocation(line: 1460, column: 19, scope: !2529)
!2554 = !DILocation(line: 1460, column: 4, scope: !2529)
!2555 = !DILocation(line: 1461, column: 12, scope: !2529)
!2556 = !DILocation(line: 1461, column: 15, scope: !2529)
!2557 = !DILocation(line: 1461, column: 18, scope: !2529)
!2558 = !DILocation(line: 1461, column: 22, scope: !2529)
!2559 = !DILocation(line: 1461, column: 4, scope: !2529)
!2560 = !DILocation(line: 1462, column: 12, scope: !2529)
!2561 = !DILocation(line: 1462, column: 15, scope: !2529)
!2562 = !DILocation(line: 1462, column: 18, scope: !2529)
!2563 = !DILocation(line: 1462, column: 40, scope: !2529)
!2564 = !DILocation(line: 1462, column: 4, scope: !2529)
!2565 = !DILocation(line: 1463, column: 12, scope: !2529)
!2566 = !DILocation(line: 1463, column: 15, scope: !2529)
!2567 = !DILocation(line: 1463, column: 18, scope: !2529)
!2568 = !DILocation(line: 1463, column: 21, scope: !2529)
!2569 = !DILocation(line: 1463, column: 4, scope: !2529)
!2570 = !DILocation(line: 1464, column: 12, scope: !2529)
!2571 = !DILocation(line: 1464, column: 15, scope: !2529)
!2572 = !DILocation(line: 1464, column: 18, scope: !2529)
!2573 = !DILocation(line: 1464, column: 23, scope: !2529)
!2574 = !DILocation(line: 1464, column: 26, scope: !2529)
!2575 = !DILocation(line: 1464, column: 4, scope: !2529)
!2576 = !DILocation(line: 1468, column: 12, scope: !2529)
!2577 = !DILocation(line: 1468, column: 22, scope: !2529)
!2578 = !DILocation(line: 1468, column: 27, scope: !2529)
!2579 = !DILocation(line: 1468, column: 30, scope: !2529)
!2580 = !DILocation(line: 1468, column: 52, scope: !2529)
!2581 = !DILocation(line: 1468, column: 4, scope: !2529)
!2582 = !DILocation(line: 1469, column: 15, scope: !2529)
!2583 = !DILocation(line: 1469, column: 25, scope: !2529)
!2584 = !DILocation(line: 1469, column: 4, scope: !2529)
!2585 = !DILocation(line: 1470, column: 12, scope: !2529)
!2586 = !DILocation(line: 1470, column: 15, scope: !2529)
!2587 = !DILocation(line: 1470, column: 18, scope: !2529)
!2588 = !DILocation(line: 1470, column: 28, scope: !2529)
!2589 = !DILocation(line: 1470, column: 4, scope: !2529)
!2590 = !DILocation(line: 1472, column: 22, scope: !2529)
!2591 = !DILocation(line: 1472, column: 11, scope: !2529)
!2592 = !DILocation(line: 1472, column: 10, scope: !2529)
!2593 = !DILocation(line: 1472, column: 8, scope: !2529)
!2594 = !DILocation(line: 1475, column: 3, scope: !2433)
!2595 = !DILocation(line: 1479, column: 26, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1479, column: 8)
!2597 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1478, column: 3)
!2598 = !DILocation(line: 1479, column: 29, scope: !2596)
!2599 = !DILocation(line: 1479, column: 32, scope: !2596)
!2600 = !DILocation(line: 1479, column: 39, scope: !2596)
!2601 = !DILocation(line: 1479, column: 8, scope: !2596)
!2602 = !DILocation(line: 1479, column: 8, scope: !2597)
!2603 = !DILocation(line: 1480, column: 5, scope: !2596)
!2604 = !DILocation(line: 1482, column: 15, scope: !2597)
!2605 = !DILocation(line: 1482, column: 18, scope: !2597)
!2606 = !DILocation(line: 1482, column: 23, scope: !2597)
!2607 = !DILocation(line: 1482, column: 26, scope: !2597)
!2608 = !DILocation(line: 1482, column: 4, scope: !2597)
!2609 = !DILocation(line: 1483, column: 16, scope: !2597)
!2610 = !DILocation(line: 1483, column: 21, scope: !2597)
!2611 = !DILocation(line: 1483, column: 24, scope: !2597)
!2612 = !DILocation(line: 1483, column: 4, scope: !2597)
!2613 = !DILocation(line: 1483, column: 7, scope: !2597)
!2614 = !DILocation(line: 1483, column: 14, scope: !2597)
!2615 = !DILocation(line: 1486, column: 4, scope: !2597)
!2616 = !DILocation(line: 1486, column: 9, scope: !2597)
!2617 = !DILocation(line: 1486, column: 14, scope: !2597)
!2618 = !DILocation(line: 1486, column: 17, scope: !2597)
!2619 = !DILocation(line: 1486, column: 20, scope: !2597)
!2620 = !DILocation(line: 1487, column: 4, scope: !2597)
!2621 = !DILocation(line: 1487, column: 9, scope: !2597)
!2622 = !DILocation(line: 1487, column: 14, scope: !2597)
!2623 = !DILocation(line: 1487, column: 17, scope: !2597)
!2624 = !DILocation(line: 1487, column: 20, scope: !2597)
!2625 = !DILocation(line: 1488, column: 8, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1488, column: 8)
!2627 = !DILocation(line: 1488, column: 13, scope: !2626)
!2628 = !DILocation(line: 1488, column: 21, scope: !2626)
!2629 = !DILocation(line: 1488, column: 8, scope: !2597)
!2630 = !DILocation(line: 1489, column: 5, scope: !2626)
!2631 = !DILocation(line: 1489, column: 10, scope: !2626)
!2632 = !DILocation(line: 1489, column: 15, scope: !2626)
!2633 = !DILocation(line: 1489, column: 18, scope: !2626)
!2634 = !DILocation(line: 1489, column: 23, scope: !2626)
!2635 = !DILocation(line: 1489, column: 26, scope: !2626)
!2636 = !DILocation(line: 1489, column: 29, scope: !2626)
!2637 = !DILocation(line: 1491, column: 5, scope: !2626)
!2638 = !DILocation(line: 1491, column: 10, scope: !2626)
!2639 = !DILocation(line: 1491, column: 15, scope: !2626)
!2640 = !DILocation(line: 1491, column: 18, scope: !2626)
!2641 = !DILocation(line: 1491, column: 23, scope: !2626)
!2642 = !DILocation(line: 1491, column: 26, scope: !2626)
!2643 = !DILocation(line: 1491, column: 29, scope: !2626)
!2644 = !DILocation(line: 1492, column: 4, scope: !2597)
!2645 = !DILocation(line: 1492, column: 9, scope: !2597)
!2646 = !DILocation(line: 1492, column: 14, scope: !2597)
!2647 = !DILocation(line: 1492, column: 17, scope: !2597)
!2648 = !DILocation(line: 1492, column: 20, scope: !2597)
!2649 = !DILocation(line: 1492, column: 23, scope: !2597)
!2650 = !DILocation(line: 1493, column: 4, scope: !2597)
!2651 = !DILocation(line: 1493, column: 9, scope: !2597)
!2652 = !DILocation(line: 1493, column: 14, scope: !2597)
!2653 = !DILocation(line: 1493, column: 17, scope: !2597)
!2654 = !DILocation(line: 1493, column: 20, scope: !2597)
!2655 = !DILocation(line: 1493, column: 23, scope: !2597)
!2656 = !DILocation(line: 1494, column: 4, scope: !2597)
!2657 = !DILocation(line: 1494, column: 9, scope: !2597)
!2658 = !DILocation(line: 1494, column: 14, scope: !2597)
!2659 = !DILocation(line: 1494, column: 17, scope: !2597)
!2660 = !DILocation(line: 1494, column: 20, scope: !2597)
!2661 = !DILocation(line: 1494, column: 25, scope: !2597)
!2662 = !DILocation(line: 1494, column: 28, scope: !2597)
!2663 = !DILocation(line: 1495, column: 4, scope: !2597)
!2664 = !DILocation(line: 1495, column: 9, scope: !2597)
!2665 = !DILocation(line: 1495, column: 14, scope: !2597)
!2666 = !DILocation(line: 1495, column: 17, scope: !2597)
!2667 = !DILocation(line: 1495, column: 20, scope: !2597)
!2668 = !DILocation(line: 1495, column: 23, scope: !2597)
!2669 = !DILocation(line: 1496, column: 20, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1496, column: 8)
!2671 = !DILocation(line: 1496, column: 9, scope: !2670)
!2672 = !DILocation(line: 1496, column: 8, scope: !2597)
!2673 = !DILocation(line: 1497, column: 9, scope: !2670)
!2674 = !DILocation(line: 1497, column: 5, scope: !2670)
!2675 = !DILocation(line: 1499, column: 3, scope: !2433)
!2676 = !DILocation(line: 1500, column: 2, scope: !2433)
!2677 = !DILocation(line: 1502, column: 1, scope: !2421)
!2678 = !DILocation(line: 1503, column: 11, scope: !2421)
!2679 = !DILocation(line: 1503, column: 2, scope: !2421)
!2680 = !DILocation(line: 1504, column: 11, scope: !2421)
!2681 = !DILocation(line: 1504, column: 2, scope: !2421)
!2682 = !DILocation(line: 1505, column: 11, scope: !2421)
!2683 = !DILocation(line: 1505, column: 2, scope: !2421)
!2684 = !DILocation(line: 1507, column: 9, scope: !2421)
!2685 = !DILocation(line: 1507, column: 2, scope: !2421)
!2686 = !DILocation(line: 1508, column: 1, scope: !2421)
!2687 = !DISubprogram(name: "mpi_cmpabs", scope: !6, file: !6, line: 123, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2688 = distinct !DISubprogram(name: "ec_pow3", scope: !3, file: !3, line: 171, type: !122, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2689 = !{!2690, !2691, !2692}
!2690 = !DILocalVariable(name: "w", arg: 1, scope: !2688, file: !3, line: 171, type: !67)
!2691 = !DILocalVariable(name: "b", arg: 2, scope: !2688, file: !3, line: 171, type: !124)
!2692 = !DILocalVariable(name: "ctx", arg: 3, scope: !2688, file: !3, line: 171, type: !58)
!2693 = !DILocation(line: 171, column: 25, scope: !2688)
!2694 = !DILocation(line: 171, column: 38, scope: !2688)
!2695 = !DILocation(line: 171, column: 60, scope: !2688)
!2696 = !DILocation(line: 173, column: 11, scope: !2688)
!2697 = !DILocation(line: 173, column: 14, scope: !2688)
!2698 = !DILocation(line: 173, column: 17, scope: !2688)
!2699 = !DILocation(line: 173, column: 41, scope: !2688)
!2700 = !DILocation(line: 173, column: 46, scope: !2688)
!2701 = !DILocation(line: 173, column: 2, scope: !2688)
!2702 = !DILocation(line: 174, column: 1, scope: !2688)
!2703 = !DISubprogram(name: "mpi_rshift", scope: !6, file: !6, line: 137, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !67, !67, !7}
!2706 = distinct !DISubprogram(name: "ec_powm", scope: !3, file: !3, line: 149, type: !2707, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !67, !124, !124, !58}
!2709 = !{!2710, !2711, !2712, !2713}
!2710 = !DILocalVariable(name: "w", arg: 1, scope: !2706, file: !3, line: 149, type: !67)
!2711 = !DILocalVariable(name: "b", arg: 2, scope: !2706, file: !3, line: 149, type: !124)
!2712 = !DILocalVariable(name: "e", arg: 3, scope: !2706, file: !3, line: 149, type: !124)
!2713 = !DILocalVariable(name: "ctx", arg: 4, scope: !2706, file: !3, line: 150, type: !58)
!2714 = !DILocation(line: 149, column: 25, scope: !2706)
!2715 = !DILocation(line: 149, column: 38, scope: !2706)
!2716 = !DILocation(line: 149, column: 51, scope: !2706)
!2717 = !DILocation(line: 150, column: 22, scope: !2706)
!2718 = !DILocation(line: 152, column: 11, scope: !2706)
!2719 = !DILocation(line: 152, column: 14, scope: !2706)
!2720 = !DILocation(line: 152, column: 17, scope: !2706)
!2721 = !DILocation(line: 152, column: 20, scope: !2706)
!2722 = !DILocation(line: 152, column: 25, scope: !2706)
!2723 = !DILocation(line: 152, column: 2, scope: !2706)
!2724 = !DILocation(line: 154, column: 1, scope: !2706)
!2725 = !DISubprogram(name: "kmalloc_large", scope: !31, file: !31, line: 531, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2726 = distinct !DISubprogram(name: "__kmalloc_index", scope: !31, file: !31, line: 444, type: !2727, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2731)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!7, !312, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !42, line: 35, baseType: !2730)
!2730 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2731 = !{!2732, !2733}
!2732 = !DILocalVariable(name: "size", arg: 1, scope: !2726, file: !31, line: 444, type: !312)
!2733 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2726, file: !31, line: 445, type: !2729)
!2734 = !DILocation(line: 444, column: 60, scope: !2726)
!2735 = !DILocation(line: 445, column: 16, scope: !2726)
!2736 = !DILocation(line: 447, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 447, column: 6)
!2738 = !DILocation(line: 447, column: 6, scope: !2726)
!2739 = !DILocation(line: 448, column: 3, scope: !2737)
!2740 = !DILocation(line: 450, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 450, column: 6)
!2742 = !DILocation(line: 450, column: 11, scope: !2741)
!2743 = !DILocation(line: 450, column: 6, scope: !2726)
!2744 = !DILocation(line: 451, column: 3, scope: !2741)
!2745 = !DILocation(line: 453, column: 32, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 453, column: 6)
!2747 = !DILocation(line: 453, column: 37, scope: !2746)
!2748 = !DILocation(line: 453, column: 42, scope: !2746)
!2749 = !DILocation(line: 453, column: 45, scope: !2746)
!2750 = !DILocation(line: 453, column: 50, scope: !2746)
!2751 = !DILocation(line: 453, column: 6, scope: !2726)
!2752 = !DILocation(line: 454, column: 3, scope: !2746)
!2753 = !DILocation(line: 455, column: 32, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 455, column: 6)
!2755 = !DILocation(line: 455, column: 37, scope: !2754)
!2756 = !DILocation(line: 455, column: 43, scope: !2754)
!2757 = !DILocation(line: 455, column: 46, scope: !2754)
!2758 = !DILocation(line: 455, column: 51, scope: !2754)
!2759 = !DILocation(line: 455, column: 6, scope: !2726)
!2760 = !DILocation(line: 456, column: 3, scope: !2754)
!2761 = !DILocation(line: 457, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 457, column: 6)
!2763 = !DILocation(line: 457, column: 11, scope: !2762)
!2764 = !DILocation(line: 457, column: 6, scope: !2726)
!2765 = !DILocation(line: 457, column: 26, scope: !2762)
!2766 = !DILocation(line: 458, column: 6, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 458, column: 6)
!2768 = !DILocation(line: 458, column: 11, scope: !2767)
!2769 = !DILocation(line: 458, column: 6, scope: !2726)
!2770 = !DILocation(line: 458, column: 26, scope: !2767)
!2771 = !DILocation(line: 459, column: 6, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 459, column: 6)
!2773 = !DILocation(line: 459, column: 11, scope: !2772)
!2774 = !DILocation(line: 459, column: 6, scope: !2726)
!2775 = !DILocation(line: 459, column: 26, scope: !2772)
!2776 = !DILocation(line: 460, column: 6, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 460, column: 6)
!2778 = !DILocation(line: 460, column: 11, scope: !2777)
!2779 = !DILocation(line: 460, column: 6, scope: !2726)
!2780 = !DILocation(line: 460, column: 26, scope: !2777)
!2781 = !DILocation(line: 461, column: 6, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 461, column: 6)
!2783 = !DILocation(line: 461, column: 11, scope: !2782)
!2784 = !DILocation(line: 461, column: 6, scope: !2726)
!2785 = !DILocation(line: 461, column: 26, scope: !2782)
!2786 = !DILocation(line: 462, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 462, column: 6)
!2788 = !DILocation(line: 462, column: 11, scope: !2787)
!2789 = !DILocation(line: 462, column: 6, scope: !2726)
!2790 = !DILocation(line: 462, column: 26, scope: !2787)
!2791 = !DILocation(line: 463, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 463, column: 6)
!2793 = !DILocation(line: 463, column: 11, scope: !2792)
!2794 = !DILocation(line: 463, column: 6, scope: !2726)
!2795 = !DILocation(line: 463, column: 26, scope: !2792)
!2796 = !DILocation(line: 464, column: 6, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 464, column: 6)
!2798 = !DILocation(line: 464, column: 11, scope: !2797)
!2799 = !DILocation(line: 464, column: 6, scope: !2726)
!2800 = !DILocation(line: 464, column: 26, scope: !2797)
!2801 = !DILocation(line: 465, column: 6, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 465, column: 6)
!2803 = !DILocation(line: 465, column: 11, scope: !2802)
!2804 = !DILocation(line: 465, column: 6, scope: !2726)
!2805 = !DILocation(line: 465, column: 26, scope: !2802)
!2806 = !DILocation(line: 466, column: 6, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 466, column: 6)
!2808 = !DILocation(line: 466, column: 11, scope: !2807)
!2809 = !DILocation(line: 466, column: 6, scope: !2726)
!2810 = !DILocation(line: 466, column: 26, scope: !2807)
!2811 = !DILocation(line: 467, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 467, column: 6)
!2813 = !DILocation(line: 467, column: 11, scope: !2812)
!2814 = !DILocation(line: 467, column: 6, scope: !2726)
!2815 = !DILocation(line: 467, column: 26, scope: !2812)
!2816 = !DILocation(line: 468, column: 6, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 468, column: 6)
!2818 = !DILocation(line: 468, column: 11, scope: !2817)
!2819 = !DILocation(line: 468, column: 6, scope: !2726)
!2820 = !DILocation(line: 468, column: 26, scope: !2817)
!2821 = !DILocation(line: 469, column: 6, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 469, column: 6)
!2823 = !DILocation(line: 469, column: 11, scope: !2822)
!2824 = !DILocation(line: 469, column: 6, scope: !2726)
!2825 = !DILocation(line: 469, column: 26, scope: !2822)
!2826 = !DILocation(line: 470, column: 6, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 470, column: 6)
!2828 = !DILocation(line: 470, column: 11, scope: !2827)
!2829 = !DILocation(line: 470, column: 6, scope: !2726)
!2830 = !DILocation(line: 470, column: 26, scope: !2827)
!2831 = !DILocation(line: 471, column: 6, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 471, column: 6)
!2833 = !DILocation(line: 471, column: 11, scope: !2832)
!2834 = !DILocation(line: 471, column: 6, scope: !2726)
!2835 = !DILocation(line: 471, column: 26, scope: !2832)
!2836 = !DILocation(line: 472, column: 6, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 472, column: 6)
!2838 = !DILocation(line: 472, column: 11, scope: !2837)
!2839 = !DILocation(line: 472, column: 6, scope: !2726)
!2840 = !DILocation(line: 472, column: 26, scope: !2837)
!2841 = !DILocation(line: 473, column: 6, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 473, column: 6)
!2843 = !DILocation(line: 473, column: 11, scope: !2842)
!2844 = !DILocation(line: 473, column: 6, scope: !2726)
!2845 = !DILocation(line: 473, column: 26, scope: !2842)
!2846 = !DILocation(line: 474, column: 6, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 474, column: 6)
!2848 = !DILocation(line: 474, column: 11, scope: !2847)
!2849 = !DILocation(line: 474, column: 6, scope: !2726)
!2850 = !DILocation(line: 474, column: 27, scope: !2847)
!2851 = !DILocation(line: 475, column: 6, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 475, column: 6)
!2853 = !DILocation(line: 475, column: 11, scope: !2852)
!2854 = !DILocation(line: 475, column: 6, scope: !2726)
!2855 = !DILocation(line: 475, column: 32, scope: !2852)
!2856 = !DILocation(line: 477, column: 50, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2726, file: !31, line: 477, column: 6)
!2858 = !{i8 0, i8 2}
!2859 = !{}
!2860 = !DILocation(line: 477, column: 6, scope: !2726)
!2861 = !DILocation(line: 478, column: 3, scope: !2857)
!2862 = !DILocation(line: 478, column: 3, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !31, line: 478, column: 3)
!2864 = distinct !DILexicalBlock(scope: !2857, file: !31, line: 478, column: 3)
!2865 = !{i32 -2142561473}
!2866 = !DILocation(line: 478, column: 3, scope: !2864)
!2867 = !DILocation(line: 480, column: 3, scope: !2857)
!2868 = !DILocation(line: 480, column: 3, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2857, file: !31, line: 480, column: 3)
!2870 = !DILocation(line: 480, column: 3, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2869, file: !31, line: 480, column: 3)
!2872 = !DILocation(line: 480, column: 3, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !31, line: 480, column: 3)
!2874 = !{i64 2152406026, i64 2152406055, i64 2152406101, i64 2152406159, i64 2152406213, i64 2152406267, i64 2152406322, i64 2152406353}
!2875 = !DILocation(line: 483, column: 2, scope: !2726)
!2876 = !DILocation(line: 484, column: 1, scope: !2726)
!2877 = !DISubprogram(name: "kmalloc_trace", scope: !31, file: !31, line: 525, type: !2878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!43, !2880, !41, !312}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2882, line: 11, flags: DIFlagFwdDecl)
!2882 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2883 = distinct !DISubprogram(name: "kmalloc_type", scope: !31, file: !31, line: 401, type: !2884, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!30, !41, !44}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "flags", arg: 1, scope: !2883, file: !31, line: 401, type: !41)
!2888 = !DILocalVariable(name: "caller", arg: 2, scope: !2883, file: !31, line: 401, type: !44)
!2889 = !DILocation(line: 401, column: 67, scope: !2883)
!2890 = !DILocation(line: 401, column: 88, scope: !2883)
!2891 = !DILocation(line: 407, column: 6, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2883, file: !31, line: 407, column: 6)
!2893 = !DILocation(line: 407, column: 6, scope: !2883)
!2894 = !DILocation(line: 413, column: 3, scope: !2892)
!2895 = !DILocation(line: 423, column: 38, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2883, file: !31, line: 423, column: 6)
!2897 = !DILocation(line: 423, column: 44, scope: !2896)
!2898 = !DILocation(line: 423, column: 6, scope: !2883)
!2899 = !DILocation(line: 424, column: 3, scope: !2896)
!2900 = !DILocation(line: 426, column: 3, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2883, file: !31, line: 425, column: 6)
!2902 = !DILocation(line: 429, column: 1, scope: !2883)
!2903 = !DISubprogram(name: "__kmalloc", scope: !31, file: !31, line: 488, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = !DISubprogram(name: "__compiletime_assert_196", scope: !31, file: !31, line: 478, type: !2905, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null}
!2907 = !DISubprogram(name: "mpi_alloc", scope: !6, file: !6, line: 46, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2908 = !DISubprogram(name: "mpihelp_sub_n", scope: !1615, file: !1615, line: 155, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!45, !2911, !2911, !2911, !1614}
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !1615, line: 52, baseType: !77)
!2912 = !DISubprogram(name: "mpi_add", scope: !6, file: !6, line: 143, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2913 = distinct !DISubprogram(name: "ec_mod", scope: !3, file: !3, line: 114, type: !2914, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !67, !58}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "w", arg: 1, scope: !2913, file: !3, line: 114, type: !67)
!2918 = !DILocalVariable(name: "ec", arg: 2, scope: !2913, file: !3, line: 114, type: !58)
!2919 = !DILocation(line: 114, column: 24, scope: !2913)
!2920 = !DILocation(line: 114, column: 46, scope: !2913)
!2921 = !DILocation(line: 116, column: 6, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 116, column: 6)
!2923 = !DILocation(line: 116, column: 10, scope: !2922)
!2924 = !DILocation(line: 116, column: 12, scope: !2922)
!2925 = !DILocation(line: 116, column: 6, scope: !2913)
!2926 = !DILocation(line: 117, column: 19, scope: !2922)
!2927 = !DILocation(line: 117, column: 22, scope: !2922)
!2928 = !DILocation(line: 117, column: 25, scope: !2922)
!2929 = !DILocation(line: 117, column: 29, scope: !2922)
!2930 = !DILocation(line: 117, column: 31, scope: !2922)
!2931 = !DILocation(line: 117, column: 3, scope: !2922)
!2932 = !DILocation(line: 119, column: 11, scope: !2922)
!2933 = !DILocation(line: 119, column: 14, scope: !2922)
!2934 = !DILocation(line: 119, column: 17, scope: !2922)
!2935 = !DILocation(line: 119, column: 21, scope: !2922)
!2936 = !DILocation(line: 119, column: 3, scope: !2922)
!2937 = !DILocation(line: 120, column: 1, scope: !2913)
!2938 = !DISubprogram(name: "mpi_mod_barrett", scope: !6, file: !6, line: 114, type: !2939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !67, !67, !107}
!2941 = !DISubprogram(name: "mpi_mod", scope: !6, file: !6, line: 106, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2942 = !DISubprogram(name: "mpi_sub", scope: !6, file: !6, line: 144, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2943 = !DISubprogram(name: "mpi_lshift", scope: !6, file: !6, line: 139, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2944 = distinct !DISubprogram(name: "ec_addm_25519", scope: !3, file: !3, line: 199, type: !116, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2958}
!2946 = !DILocalVariable(name: "w", arg: 1, scope: !2944, file: !3, line: 199, type: !67)
!2947 = !DILocalVariable(name: "u", arg: 2, scope: !2944, file: !3, line: 199, type: !67)
!2948 = !DILocalVariable(name: "v", arg: 3, scope: !2944, file: !3, line: 199, type: !67)
!2949 = !DILocalVariable(name: "ctx", arg: 4, scope: !2944, file: !3, line: 199, type: !58)
!2950 = !DILocalVariable(name: "wp", scope: !2944, file: !3, line: 201, type: !2911)
!2951 = !DILocalVariable(name: "up", scope: !2944, file: !3, line: 201, type: !2911)
!2952 = !DILocalVariable(name: "vp", scope: !2944, file: !3, line: 201, type: !2911)
!2953 = !DILocalVariable(name: "wsize", scope: !2944, file: !3, line: 202, type: !1614)
!2954 = !DILocalVariable(name: "n", scope: !2944, file: !3, line: 203, type: !2955)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !2956)
!2956 = !{!2957}
!2957 = !DISubrange(count: 4)
!2958 = !DILocalVariable(name: "borrow", scope: !2944, file: !3, line: 204, type: !45)
!2959 = !DILocation(line: 199, column: 31, scope: !2944)
!2960 = !DILocation(line: 199, column: 38, scope: !2944)
!2961 = !DILocation(line: 199, column: 45, scope: !2944)
!2962 = !DILocation(line: 199, column: 67, scope: !2944)
!2963 = !DILocation(line: 201, column: 2, scope: !2944)
!2964 = !DILocation(line: 201, column: 12, scope: !2944)
!2965 = !DILocation(line: 201, column: 16, scope: !2944)
!2966 = !DILocation(line: 201, column: 20, scope: !2944)
!2967 = !DILocation(line: 202, column: 2, scope: !2944)
!2968 = !DILocation(line: 202, column: 13, scope: !2944)
!2969 = !DILocation(line: 203, column: 2, scope: !2944)
!2970 = !DILocation(line: 203, column: 13, scope: !2944)
!2971 = !DILocation(line: 204, column: 2, scope: !2944)
!2972 = !DILocation(line: 204, column: 13, scope: !2944)
!2973 = !DILocation(line: 206, column: 6, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 206, column: 6)
!2975 = !DILocation(line: 206, column: 9, scope: !2974)
!2976 = !DILocation(line: 206, column: 19, scope: !2974)
!2977 = !DILocation(line: 206, column: 16, scope: !2974)
!2978 = !DILocation(line: 206, column: 25, scope: !2974)
!2979 = !DILocation(line: 206, column: 28, scope: !2974)
!2980 = !DILocation(line: 206, column: 31, scope: !2974)
!2981 = !DILocation(line: 206, column: 41, scope: !2974)
!2982 = !DILocation(line: 206, column: 38, scope: !2974)
!2983 = !DILocation(line: 206, column: 47, scope: !2974)
!2984 = !DILocation(line: 206, column: 50, scope: !2974)
!2985 = !DILocation(line: 206, column: 53, scope: !2974)
!2986 = !DILocation(line: 206, column: 63, scope: !2974)
!2987 = !DILocation(line: 206, column: 60, scope: !2974)
!2988 = !DILocation(line: 206, column: 6, scope: !2944)
!2989 = !DILocation(line: 207, column: 3, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 207, column: 3)
!2991 = !DILocation(line: 207, column: 3, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 207, column: 3)
!2993 = !DILocation(line: 207, column: 3, scope: !2974)
!2994 = !DILocation(line: 209, column: 2, scope: !2944)
!2995 = !DILocation(line: 210, column: 7, scope: !2944)
!2996 = !DILocation(line: 210, column: 10, scope: !2944)
!2997 = !DILocation(line: 210, column: 5, scope: !2944)
!2998 = !DILocation(line: 211, column: 7, scope: !2944)
!2999 = !DILocation(line: 211, column: 10, scope: !2944)
!3000 = !DILocation(line: 211, column: 5, scope: !2944)
!3001 = !DILocation(line: 212, column: 7, scope: !2944)
!3002 = !DILocation(line: 212, column: 10, scope: !2944)
!3003 = !DILocation(line: 212, column: 5, scope: !2944)
!3004 = !DILocation(line: 214, column: 16, scope: !2944)
!3005 = !DILocation(line: 214, column: 20, scope: !2944)
!3006 = !DILocation(line: 214, column: 24, scope: !2944)
!3007 = !DILocation(line: 214, column: 28, scope: !2944)
!3008 = !DILocation(line: 214, column: 2, scope: !2944)
!3009 = !DILocation(line: 215, column: 25, scope: !2944)
!3010 = !DILocation(line: 215, column: 29, scope: !2944)
!3011 = !DILocation(line: 215, column: 33, scope: !2944)
!3012 = !DILocation(line: 215, column: 38, scope: !2944)
!3013 = !DILocation(line: 215, column: 41, scope: !2944)
!3014 = !DILocation(line: 215, column: 44, scope: !2944)
!3015 = !DILocation(line: 215, column: 11, scope: !2944)
!3016 = !DILocation(line: 215, column: 9, scope: !2944)
!3017 = !DILocation(line: 216, column: 16, scope: !2944)
!3018 = !DILocation(line: 216, column: 19, scope: !2944)
!3019 = !DILocation(line: 216, column: 24, scope: !2944)
!3020 = !DILocation(line: 216, column: 27, scope: !2944)
!3021 = !DILocation(line: 216, column: 30, scope: !2944)
!3022 = !DILocation(line: 216, column: 38, scope: !2944)
!3023 = !DILocation(line: 216, column: 45, scope: !2944)
!3024 = !DILocation(line: 216, column: 37, scope: !2944)
!3025 = !DILocation(line: 216, column: 2, scope: !2944)
!3026 = !DILocation(line: 217, column: 16, scope: !2944)
!3027 = !DILocation(line: 217, column: 20, scope: !2944)
!3028 = !DILocation(line: 217, column: 24, scope: !2944)
!3029 = !DILocation(line: 217, column: 27, scope: !2944)
!3030 = !DILocation(line: 217, column: 2, scope: !2944)
!3031 = !DILocation(line: 218, column: 2, scope: !2944)
!3032 = !DILocation(line: 218, column: 24, scope: !2944)
!3033 = !DILocation(line: 219, column: 1, scope: !2944)
!3034 = distinct !DISubprogram(name: "ec_subm_25519", scope: !3, file: !3, line: 221, type: !116, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045}
!3036 = !DILocalVariable(name: "w", arg: 1, scope: !3034, file: !3, line: 221, type: !67)
!3037 = !DILocalVariable(name: "u", arg: 2, scope: !3034, file: !3, line: 221, type: !67)
!3038 = !DILocalVariable(name: "v", arg: 3, scope: !3034, file: !3, line: 221, type: !67)
!3039 = !DILocalVariable(name: "ctx", arg: 4, scope: !3034, file: !3, line: 221, type: !58)
!3040 = !DILocalVariable(name: "wp", scope: !3034, file: !3, line: 223, type: !2911)
!3041 = !DILocalVariable(name: "up", scope: !3034, file: !3, line: 223, type: !2911)
!3042 = !DILocalVariable(name: "vp", scope: !3034, file: !3, line: 223, type: !2911)
!3043 = !DILocalVariable(name: "wsize", scope: !3034, file: !3, line: 224, type: !1614)
!3044 = !DILocalVariable(name: "n", scope: !3034, file: !3, line: 225, type: !2955)
!3045 = !DILocalVariable(name: "borrow", scope: !3034, file: !3, line: 226, type: !45)
!3046 = !DILocation(line: 221, column: 31, scope: !3034)
!3047 = !DILocation(line: 221, column: 38, scope: !3034)
!3048 = !DILocation(line: 221, column: 45, scope: !3034)
!3049 = !DILocation(line: 221, column: 67, scope: !3034)
!3050 = !DILocation(line: 223, column: 2, scope: !3034)
!3051 = !DILocation(line: 223, column: 12, scope: !3034)
!3052 = !DILocation(line: 223, column: 16, scope: !3034)
!3053 = !DILocation(line: 223, column: 20, scope: !3034)
!3054 = !DILocation(line: 224, column: 2, scope: !3034)
!3055 = !DILocation(line: 224, column: 13, scope: !3034)
!3056 = !DILocation(line: 225, column: 2, scope: !3034)
!3057 = !DILocation(line: 225, column: 13, scope: !3034)
!3058 = !DILocation(line: 226, column: 2, scope: !3034)
!3059 = !DILocation(line: 226, column: 13, scope: !3034)
!3060 = !DILocation(line: 228, column: 6, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 228, column: 6)
!3062 = !DILocation(line: 228, column: 9, scope: !3061)
!3063 = !DILocation(line: 228, column: 19, scope: !3061)
!3064 = !DILocation(line: 228, column: 16, scope: !3061)
!3065 = !DILocation(line: 228, column: 25, scope: !3061)
!3066 = !DILocation(line: 228, column: 28, scope: !3061)
!3067 = !DILocation(line: 228, column: 31, scope: !3061)
!3068 = !DILocation(line: 228, column: 41, scope: !3061)
!3069 = !DILocation(line: 228, column: 38, scope: !3061)
!3070 = !DILocation(line: 228, column: 47, scope: !3061)
!3071 = !DILocation(line: 228, column: 50, scope: !3061)
!3072 = !DILocation(line: 228, column: 53, scope: !3061)
!3073 = !DILocation(line: 228, column: 63, scope: !3061)
!3074 = !DILocation(line: 228, column: 60, scope: !3061)
!3075 = !DILocation(line: 228, column: 6, scope: !3034)
!3076 = !DILocation(line: 229, column: 3, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 229, column: 3)
!3078 = !DILocation(line: 229, column: 3, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 229, column: 3)
!3080 = !DILocation(line: 229, column: 3, scope: !3061)
!3081 = !DILocation(line: 231, column: 2, scope: !3034)
!3082 = !DILocation(line: 232, column: 7, scope: !3034)
!3083 = !DILocation(line: 232, column: 10, scope: !3034)
!3084 = !DILocation(line: 232, column: 5, scope: !3034)
!3085 = !DILocation(line: 233, column: 7, scope: !3034)
!3086 = !DILocation(line: 233, column: 10, scope: !3034)
!3087 = !DILocation(line: 233, column: 5, scope: !3034)
!3088 = !DILocation(line: 234, column: 7, scope: !3034)
!3089 = !DILocation(line: 234, column: 10, scope: !3034)
!3090 = !DILocation(line: 234, column: 5, scope: !3034)
!3091 = !DILocation(line: 236, column: 25, scope: !3034)
!3092 = !DILocation(line: 236, column: 29, scope: !3034)
!3093 = !DILocation(line: 236, column: 33, scope: !3034)
!3094 = !DILocation(line: 236, column: 37, scope: !3034)
!3095 = !DILocation(line: 236, column: 11, scope: !3034)
!3096 = !DILocation(line: 236, column: 9, scope: !3034)
!3097 = !DILocation(line: 237, column: 16, scope: !3034)
!3098 = !DILocation(line: 237, column: 19, scope: !3034)
!3099 = !DILocation(line: 237, column: 24, scope: !3034)
!3100 = !DILocation(line: 237, column: 27, scope: !3034)
!3101 = !DILocation(line: 237, column: 30, scope: !3034)
!3102 = !DILocation(line: 237, column: 38, scope: !3034)
!3103 = !DILocation(line: 237, column: 45, scope: !3034)
!3104 = !DILocation(line: 237, column: 37, scope: !3034)
!3105 = !DILocation(line: 237, column: 2, scope: !3034)
!3106 = !DILocation(line: 238, column: 16, scope: !3034)
!3107 = !DILocation(line: 238, column: 20, scope: !3034)
!3108 = !DILocation(line: 238, column: 24, scope: !3034)
!3109 = !DILocation(line: 238, column: 27, scope: !3034)
!3110 = !DILocation(line: 238, column: 2, scope: !3034)
!3111 = !DILocation(line: 239, column: 2, scope: !3034)
!3112 = !DILocation(line: 239, column: 24, scope: !3034)
!3113 = !DILocation(line: 240, column: 1, scope: !3034)
!3114 = distinct !DISubprogram(name: "ec_mulm_25519", scope: !3, file: !3, line: 242, type: !116, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3126, !3130, !3131}
!3116 = !DILocalVariable(name: "w", arg: 1, scope: !3114, file: !3, line: 242, type: !67)
!3117 = !DILocalVariable(name: "u", arg: 2, scope: !3114, file: !3, line: 242, type: !67)
!3118 = !DILocalVariable(name: "v", arg: 3, scope: !3114, file: !3, line: 242, type: !67)
!3119 = !DILocalVariable(name: "ctx", arg: 4, scope: !3114, file: !3, line: 242, type: !58)
!3120 = !DILocalVariable(name: "wp", scope: !3114, file: !3, line: 244, type: !2911)
!3121 = !DILocalVariable(name: "up", scope: !3114, file: !3, line: 244, type: !2911)
!3122 = !DILocalVariable(name: "vp", scope: !3114, file: !3, line: 244, type: !2911)
!3123 = !DILocalVariable(name: "wsize", scope: !3114, file: !3, line: 245, type: !1614)
!3124 = !DILocalVariable(name: "n", scope: !3114, file: !3, line: 246, type: !3125)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !207)
!3126 = !DILocalVariable(name: "m", scope: !3114, file: !3, line: 247, type: !3127)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, elements: !3128)
!3128 = !{!3129}
!3129 = !DISubrange(count: 5)
!3130 = !DILocalVariable(name: "cy", scope: !3114, file: !3, line: 248, type: !45)
!3131 = !DILocalVariable(name: "msb", scope: !3114, file: !3, line: 249, type: !64)
!3132 = !DILocation(line: 242, column: 31, scope: !3114)
!3133 = !DILocation(line: 242, column: 38, scope: !3114)
!3134 = !DILocation(line: 242, column: 45, scope: !3114)
!3135 = !DILocation(line: 242, column: 67, scope: !3114)
!3136 = !DILocation(line: 244, column: 2, scope: !3114)
!3137 = !DILocation(line: 244, column: 12, scope: !3114)
!3138 = !DILocation(line: 244, column: 16, scope: !3114)
!3139 = !DILocation(line: 244, column: 20, scope: !3114)
!3140 = !DILocation(line: 245, column: 2, scope: !3114)
!3141 = !DILocation(line: 245, column: 13, scope: !3114)
!3142 = !DILocation(line: 246, column: 2, scope: !3114)
!3143 = !DILocation(line: 246, column: 13, scope: !3114)
!3144 = !DILocation(line: 247, column: 2, scope: !3114)
!3145 = !DILocation(line: 247, column: 13, scope: !3114)
!3146 = !DILocation(line: 248, column: 2, scope: !3114)
!3147 = !DILocation(line: 248, column: 13, scope: !3114)
!3148 = !DILocation(line: 249, column: 2, scope: !3114)
!3149 = !DILocation(line: 249, column: 6, scope: !3114)
!3150 = !DILocation(line: 251, column: 8, scope: !3114)
!3151 = !DILocation(line: 252, column: 6, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 252, column: 6)
!3153 = !DILocation(line: 252, column: 9, scope: !3152)
!3154 = !DILocation(line: 252, column: 19, scope: !3152)
!3155 = !DILocation(line: 252, column: 16, scope: !3152)
!3156 = !DILocation(line: 252, column: 25, scope: !3152)
!3157 = !DILocation(line: 252, column: 28, scope: !3152)
!3158 = !DILocation(line: 252, column: 31, scope: !3152)
!3159 = !DILocation(line: 252, column: 41, scope: !3152)
!3160 = !DILocation(line: 252, column: 38, scope: !3152)
!3161 = !DILocation(line: 252, column: 47, scope: !3152)
!3162 = !DILocation(line: 252, column: 50, scope: !3152)
!3163 = !DILocation(line: 252, column: 53, scope: !3152)
!3164 = !DILocation(line: 252, column: 63, scope: !3152)
!3165 = !DILocation(line: 252, column: 60, scope: !3152)
!3166 = !DILocation(line: 252, column: 6, scope: !3114)
!3167 = !DILocation(line: 253, column: 3, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 253, column: 3)
!3169 = !DILocation(line: 253, column: 3, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 253, column: 3)
!3171 = !DILocation(line: 253, column: 3, scope: !3152)
!3172 = !DILocation(line: 255, column: 7, scope: !3114)
!3173 = !DILocation(line: 255, column: 10, scope: !3114)
!3174 = !DILocation(line: 255, column: 5, scope: !3114)
!3175 = !DILocation(line: 256, column: 7, scope: !3114)
!3176 = !DILocation(line: 256, column: 10, scope: !3114)
!3177 = !DILocation(line: 256, column: 5, scope: !3114)
!3178 = !DILocation(line: 257, column: 7, scope: !3114)
!3179 = !DILocation(line: 257, column: 10, scope: !3114)
!3180 = !DILocation(line: 257, column: 5, scope: !3114)
!3181 = !DILocation(line: 259, column: 16, scope: !3114)
!3182 = !DILocation(line: 259, column: 19, scope: !3114)
!3183 = !DILocation(line: 259, column: 23, scope: !3114)
!3184 = !DILocation(line: 259, column: 27, scope: !3114)
!3185 = !DILocation(line: 259, column: 2, scope: !3114)
!3186 = !DILocation(line: 260, column: 9, scope: !3114)
!3187 = !DILocation(line: 260, column: 2, scope: !3114)
!3188 = !DILocation(line: 260, column: 16, scope: !3114)
!3189 = !DILocation(line: 260, column: 22, scope: !3114)
!3190 = !DILocation(line: 261, column: 2, scope: !3114)
!3191 = !DILocation(line: 261, column: 24, scope: !3114)
!3192 = !DILocation(line: 263, column: 2, scope: !3114)
!3193 = !DILocation(line: 263, column: 12, scope: !3114)
!3194 = !DILocation(line: 263, column: 13, scope: !3114)
!3195 = !DILocation(line: 263, column: 29, scope: !3114)
!3196 = !DILocation(line: 263, column: 34, scope: !3114)
!3197 = !DILocation(line: 263, column: 39, scope: !3114)
!3198 = !DILocation(line: 263, column: 43, scope: !3114)
!3199 = !DILocation(line: 263, column: 33, scope: !3114)
!3200 = !DILocation(line: 264, column: 17, scope: !3114)
!3201 = !DILocation(line: 264, column: 20, scope: !3114)
!3202 = !DILocation(line: 264, column: 2, scope: !3114)
!3203 = !DILocation(line: 266, column: 2, scope: !3114)
!3204 = !DILocation(line: 266, column: 15, scope: !3114)
!3205 = !DILocation(line: 266, column: 21, scope: !3114)
!3206 = !DILocation(line: 267, column: 22, scope: !3114)
!3207 = !DILocation(line: 267, column: 25, scope: !3114)
!3208 = !DILocation(line: 267, column: 7, scope: !3114)
!3209 = !DILocation(line: 267, column: 5, scope: !3114)
!3210 = !DILocation(line: 268, column: 23, scope: !3114)
!3211 = !DILocation(line: 268, column: 2, scope: !3114)
!3212 = !DILocation(line: 268, column: 21, scope: !3114)
!3213 = !DILocation(line: 269, column: 21, scope: !3114)
!3214 = !DILocation(line: 269, column: 24, scope: !3114)
!3215 = !DILocation(line: 269, column: 27, scope: !3114)
!3216 = !DILocation(line: 269, column: 30, scope: !3114)
!3217 = !DILocation(line: 269, column: 7, scope: !3114)
!3218 = !DILocation(line: 269, column: 5, scope: !3114)
!3219 = !DILocation(line: 270, column: 24, scope: !3114)
!3220 = !DILocation(line: 270, column: 2, scope: !3114)
!3221 = !DILocation(line: 270, column: 21, scope: !3114)
!3222 = !DILocation(line: 271, column: 21, scope: !3114)
!3223 = !DILocation(line: 271, column: 24, scope: !3114)
!3224 = !DILocation(line: 271, column: 27, scope: !3114)
!3225 = !DILocation(line: 271, column: 30, scope: !3114)
!3226 = !DILocation(line: 271, column: 7, scope: !3114)
!3227 = !DILocation(line: 271, column: 5, scope: !3114)
!3228 = !DILocation(line: 272, column: 24, scope: !3114)
!3229 = !DILocation(line: 272, column: 2, scope: !3114)
!3230 = !DILocation(line: 272, column: 21, scope: !3114)
!3231 = !DILocation(line: 273, column: 21, scope: !3114)
!3232 = !DILocation(line: 273, column: 24, scope: !3114)
!3233 = !DILocation(line: 273, column: 27, scope: !3114)
!3234 = !DILocation(line: 273, column: 30, scope: !3114)
!3235 = !DILocation(line: 273, column: 7, scope: !3114)
!3236 = !DILocation(line: 273, column: 5, scope: !3114)
!3237 = !DILocation(line: 274, column: 24, scope: !3114)
!3238 = !DILocation(line: 274, column: 2, scope: !3114)
!3239 = !DILocation(line: 274, column: 21, scope: !3114)
!3240 = !DILocation(line: 276, column: 21, scope: !3114)
!3241 = !DILocation(line: 276, column: 25, scope: !3114)
!3242 = !DILocation(line: 276, column: 29, scope: !3114)
!3243 = !DILocation(line: 276, column: 32, scope: !3114)
!3244 = !DILocation(line: 276, column: 7, scope: !3114)
!3245 = !DILocation(line: 276, column: 5, scope: !3114)
!3246 = !DILocation(line: 277, column: 24, scope: !3114)
!3247 = !DILocation(line: 277, column: 2, scope: !3114)
!3248 = !DILocation(line: 277, column: 21, scope: !3114)
!3249 = !DILocation(line: 279, column: 2, scope: !3114)
!3250 = !DILocation(line: 279, column: 15, scope: !3114)
!3251 = !DILocation(line: 279, column: 21, scope: !3114)
!3252 = !DILocation(line: 280, column: 9, scope: !3114)
!3253 = !DILocation(line: 280, column: 31, scope: !3114)
!3254 = !DILocation(line: 280, column: 8, scope: !3114)
!3255 = !DILocation(line: 280, column: 6, scope: !3114)
!3256 = !DILocation(line: 281, column: 10, scope: !3114)
!3257 = !DILocation(line: 281, column: 29, scope: !3114)
!3258 = !DILocation(line: 281, column: 35, scope: !3114)
!3259 = !DILocation(line: 281, column: 33, scope: !3114)
!3260 = !DILocation(line: 281, column: 40, scope: !3114)
!3261 = !DILocation(line: 281, column: 2, scope: !3114)
!3262 = !DILocation(line: 281, column: 7, scope: !3114)
!3263 = !DILocation(line: 282, column: 2, scope: !3114)
!3264 = !DILocation(line: 282, column: 24, scope: !3114)
!3265 = !DILocation(line: 283, column: 16, scope: !3114)
!3266 = !DILocation(line: 283, column: 20, scope: !3114)
!3267 = !DILocation(line: 283, column: 24, scope: !3114)
!3268 = !DILocation(line: 283, column: 27, scope: !3114)
!3269 = !DILocation(line: 283, column: 2, scope: !3114)
!3270 = !DILocation(line: 285, column: 2, scope: !3114)
!3271 = !DILocation(line: 285, column: 7, scope: !3114)
!3272 = !DILocation(line: 286, column: 21, scope: !3114)
!3273 = !DILocation(line: 286, column: 25, scope: !3114)
!3274 = !DILocation(line: 286, column: 29, scope: !3114)
!3275 = !DILocation(line: 286, column: 34, scope: !3114)
!3276 = !DILocation(line: 286, column: 37, scope: !3114)
!3277 = !DILocation(line: 286, column: 40, scope: !3114)
!3278 = !DILocation(line: 286, column: 7, scope: !3114)
!3279 = !DILocation(line: 286, column: 5, scope: !3114)
!3280 = !DILocation(line: 287, column: 16, scope: !3114)
!3281 = !DILocation(line: 287, column: 19, scope: !3114)
!3282 = !DILocation(line: 287, column: 24, scope: !3114)
!3283 = !DILocation(line: 287, column: 27, scope: !3114)
!3284 = !DILocation(line: 287, column: 30, scope: !3114)
!3285 = !DILocation(line: 287, column: 38, scope: !3114)
!3286 = !DILocation(line: 287, column: 41, scope: !3114)
!3287 = !DILocation(line: 287, column: 37, scope: !3114)
!3288 = !DILocation(line: 287, column: 2, scope: !3114)
!3289 = !DILocation(line: 288, column: 16, scope: !3114)
!3290 = !DILocation(line: 288, column: 20, scope: !3114)
!3291 = !DILocation(line: 288, column: 24, scope: !3114)
!3292 = !DILocation(line: 288, column: 27, scope: !3114)
!3293 = !DILocation(line: 288, column: 2, scope: !3114)
!3294 = !DILocation(line: 289, column: 1, scope: !3114)
!3295 = distinct !DISubprogram(name: "ec_mul2_25519", scope: !3, file: !3, line: 291, type: !127, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3296)
!3296 = !{!3297, !3298, !3299}
!3297 = !DILocalVariable(name: "w", arg: 1, scope: !3295, file: !3, line: 291, type: !67)
!3298 = !DILocalVariable(name: "u", arg: 2, scope: !3295, file: !3, line: 291, type: !67)
!3299 = !DILocalVariable(name: "ctx", arg: 3, scope: !3295, file: !3, line: 291, type: !58)
!3300 = !DILocation(line: 291, column: 31, scope: !3295)
!3301 = !DILocation(line: 291, column: 38, scope: !3295)
!3302 = !DILocation(line: 291, column: 60, scope: !3295)
!3303 = !DILocation(line: 293, column: 16, scope: !3295)
!3304 = !DILocation(line: 293, column: 19, scope: !3295)
!3305 = !DILocation(line: 293, column: 22, scope: !3295)
!3306 = !DILocation(line: 293, column: 25, scope: !3295)
!3307 = !DILocation(line: 293, column: 2, scope: !3295)
!3308 = !DILocation(line: 294, column: 1, scope: !3295)
!3309 = distinct !DISubprogram(name: "ec_pow2_25519", scope: !3, file: !3, line: 296, type: !122, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "w", arg: 1, scope: !3309, file: !3, line: 296, type: !67)
!3312 = !DILocalVariable(name: "b", arg: 2, scope: !3309, file: !3, line: 296, type: !124)
!3313 = !DILocalVariable(name: "ctx", arg: 3, scope: !3309, file: !3, line: 296, type: !58)
!3314 = !DILocation(line: 296, column: 31, scope: !3309)
!3315 = !DILocation(line: 296, column: 44, scope: !3309)
!3316 = !DILocation(line: 296, column: 66, scope: !3309)
!3317 = !DILocation(line: 298, column: 16, scope: !3309)
!3318 = !DILocation(line: 298, column: 19, scope: !3309)
!3319 = !DILocation(line: 298, column: 22, scope: !3309)
!3320 = !DILocation(line: 298, column: 25, scope: !3309)
!3321 = !DILocation(line: 298, column: 2, scope: !3309)
!3322 = !DILocation(line: 299, column: 1, scope: !3309)
!3323 = distinct !DISubprogram(name: "ec_addm_448", scope: !3, file: !3, line: 306, type: !116, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3337}
!3325 = !DILocalVariable(name: "w", arg: 1, scope: !3323, file: !3, line: 306, type: !67)
!3326 = !DILocalVariable(name: "u", arg: 2, scope: !3323, file: !3, line: 306, type: !67)
!3327 = !DILocalVariable(name: "v", arg: 3, scope: !3323, file: !3, line: 306, type: !67)
!3328 = !DILocalVariable(name: "ctx", arg: 4, scope: !3323, file: !3, line: 306, type: !58)
!3329 = !DILocalVariable(name: "wp", scope: !3323, file: !3, line: 308, type: !2911)
!3330 = !DILocalVariable(name: "up", scope: !3323, file: !3, line: 308, type: !2911)
!3331 = !DILocalVariable(name: "vp", scope: !3323, file: !3, line: 308, type: !2911)
!3332 = !DILocalVariable(name: "wsize", scope: !3323, file: !3, line: 309, type: !1614)
!3333 = !DILocalVariable(name: "n", scope: !3323, file: !3, line: 310, type: !3334)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 448, elements: !3335)
!3335 = !{!3336}
!3336 = !DISubrange(count: 7)
!3337 = !DILocalVariable(name: "cy", scope: !3323, file: !3, line: 311, type: !45)
!3338 = !DILocation(line: 306, column: 29, scope: !3323)
!3339 = !DILocation(line: 306, column: 36, scope: !3323)
!3340 = !DILocation(line: 306, column: 43, scope: !3323)
!3341 = !DILocation(line: 306, column: 65, scope: !3323)
!3342 = !DILocation(line: 308, column: 2, scope: !3323)
!3343 = !DILocation(line: 308, column: 12, scope: !3323)
!3344 = !DILocation(line: 308, column: 16, scope: !3323)
!3345 = !DILocation(line: 308, column: 20, scope: !3323)
!3346 = !DILocation(line: 309, column: 2, scope: !3323)
!3347 = !DILocation(line: 309, column: 13, scope: !3323)
!3348 = !DILocation(line: 310, column: 2, scope: !3323)
!3349 = !DILocation(line: 310, column: 13, scope: !3323)
!3350 = !DILocation(line: 311, column: 2, scope: !3323)
!3351 = !DILocation(line: 311, column: 13, scope: !3323)
!3352 = !DILocation(line: 313, column: 6, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 313, column: 6)
!3354 = !DILocation(line: 313, column: 9, scope: !3353)
!3355 = !DILocation(line: 313, column: 19, scope: !3353)
!3356 = !DILocation(line: 313, column: 16, scope: !3353)
!3357 = !DILocation(line: 313, column: 25, scope: !3353)
!3358 = !DILocation(line: 313, column: 28, scope: !3353)
!3359 = !DILocation(line: 313, column: 31, scope: !3353)
!3360 = !DILocation(line: 313, column: 41, scope: !3353)
!3361 = !DILocation(line: 313, column: 38, scope: !3353)
!3362 = !DILocation(line: 313, column: 47, scope: !3353)
!3363 = !DILocation(line: 313, column: 50, scope: !3353)
!3364 = !DILocation(line: 313, column: 53, scope: !3353)
!3365 = !DILocation(line: 313, column: 63, scope: !3353)
!3366 = !DILocation(line: 313, column: 60, scope: !3353)
!3367 = !DILocation(line: 313, column: 6, scope: !3323)
!3368 = !DILocation(line: 314, column: 3, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 314, column: 3)
!3370 = !DILocation(line: 314, column: 3, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 314, column: 3)
!3372 = !DILocation(line: 314, column: 3, scope: !3353)
!3373 = !DILocation(line: 316, column: 2, scope: !3323)
!3374 = !DILocation(line: 317, column: 7, scope: !3323)
!3375 = !DILocation(line: 317, column: 10, scope: !3323)
!3376 = !DILocation(line: 317, column: 5, scope: !3323)
!3377 = !DILocation(line: 318, column: 7, scope: !3323)
!3378 = !DILocation(line: 318, column: 10, scope: !3323)
!3379 = !DILocation(line: 318, column: 5, scope: !3323)
!3380 = !DILocation(line: 319, column: 7, scope: !3323)
!3381 = !DILocation(line: 319, column: 10, scope: !3323)
!3382 = !DILocation(line: 319, column: 5, scope: !3323)
!3383 = !DILocation(line: 321, column: 21, scope: !3323)
!3384 = !DILocation(line: 321, column: 25, scope: !3323)
!3385 = !DILocation(line: 321, column: 29, scope: !3323)
!3386 = !DILocation(line: 321, column: 33, scope: !3323)
!3387 = !DILocation(line: 321, column: 7, scope: !3323)
!3388 = !DILocation(line: 321, column: 5, scope: !3323)
!3389 = !DILocation(line: 322, column: 16, scope: !3323)
!3390 = !DILocation(line: 322, column: 19, scope: !3323)
!3391 = !DILocation(line: 322, column: 24, scope: !3323)
!3392 = !DILocation(line: 322, column: 27, scope: !3323)
!3393 = !DILocation(line: 322, column: 30, scope: !3323)
!3394 = !DILocation(line: 322, column: 38, scope: !3323)
!3395 = !DILocation(line: 322, column: 41, scope: !3323)
!3396 = !DILocation(line: 322, column: 37, scope: !3323)
!3397 = !DILocation(line: 322, column: 2, scope: !3323)
!3398 = !DILocation(line: 323, column: 16, scope: !3323)
!3399 = !DILocation(line: 323, column: 20, scope: !3323)
!3400 = !DILocation(line: 323, column: 24, scope: !3323)
!3401 = !DILocation(line: 323, column: 27, scope: !3323)
!3402 = !DILocation(line: 323, column: 2, scope: !3323)
!3403 = !DILocation(line: 324, column: 1, scope: !3323)
!3404 = distinct !DISubprogram(name: "ec_subm_448", scope: !3, file: !3, line: 326, type: !116, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3406 = !DILocalVariable(name: "w", arg: 1, scope: !3404, file: !3, line: 326, type: !67)
!3407 = !DILocalVariable(name: "u", arg: 2, scope: !3404, file: !3, line: 326, type: !67)
!3408 = !DILocalVariable(name: "v", arg: 3, scope: !3404, file: !3, line: 326, type: !67)
!3409 = !DILocalVariable(name: "ctx", arg: 4, scope: !3404, file: !3, line: 326, type: !58)
!3410 = !DILocalVariable(name: "wp", scope: !3404, file: !3, line: 328, type: !2911)
!3411 = !DILocalVariable(name: "up", scope: !3404, file: !3, line: 328, type: !2911)
!3412 = !DILocalVariable(name: "vp", scope: !3404, file: !3, line: 328, type: !2911)
!3413 = !DILocalVariable(name: "wsize", scope: !3404, file: !3, line: 329, type: !1614)
!3414 = !DILocalVariable(name: "n", scope: !3404, file: !3, line: 330, type: !3334)
!3415 = !DILocalVariable(name: "borrow", scope: !3404, file: !3, line: 331, type: !45)
!3416 = !DILocation(line: 326, column: 29, scope: !3404)
!3417 = !DILocation(line: 326, column: 36, scope: !3404)
!3418 = !DILocation(line: 326, column: 43, scope: !3404)
!3419 = !DILocation(line: 326, column: 65, scope: !3404)
!3420 = !DILocation(line: 328, column: 2, scope: !3404)
!3421 = !DILocation(line: 328, column: 12, scope: !3404)
!3422 = !DILocation(line: 328, column: 16, scope: !3404)
!3423 = !DILocation(line: 328, column: 20, scope: !3404)
!3424 = !DILocation(line: 329, column: 2, scope: !3404)
!3425 = !DILocation(line: 329, column: 13, scope: !3404)
!3426 = !DILocation(line: 330, column: 2, scope: !3404)
!3427 = !DILocation(line: 330, column: 13, scope: !3404)
!3428 = !DILocation(line: 331, column: 2, scope: !3404)
!3429 = !DILocation(line: 331, column: 13, scope: !3404)
!3430 = !DILocation(line: 333, column: 6, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 333, column: 6)
!3432 = !DILocation(line: 333, column: 9, scope: !3431)
!3433 = !DILocation(line: 333, column: 19, scope: !3431)
!3434 = !DILocation(line: 333, column: 16, scope: !3431)
!3435 = !DILocation(line: 333, column: 25, scope: !3431)
!3436 = !DILocation(line: 333, column: 28, scope: !3431)
!3437 = !DILocation(line: 333, column: 31, scope: !3431)
!3438 = !DILocation(line: 333, column: 41, scope: !3431)
!3439 = !DILocation(line: 333, column: 38, scope: !3431)
!3440 = !DILocation(line: 333, column: 47, scope: !3431)
!3441 = !DILocation(line: 333, column: 50, scope: !3431)
!3442 = !DILocation(line: 333, column: 53, scope: !3431)
!3443 = !DILocation(line: 333, column: 63, scope: !3431)
!3444 = !DILocation(line: 333, column: 60, scope: !3431)
!3445 = !DILocation(line: 333, column: 6, scope: !3404)
!3446 = !DILocation(line: 334, column: 3, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 334, column: 3)
!3448 = !DILocation(line: 334, column: 3, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 334, column: 3)
!3450 = !DILocation(line: 334, column: 3, scope: !3431)
!3451 = !DILocation(line: 336, column: 2, scope: !3404)
!3452 = !DILocation(line: 337, column: 7, scope: !3404)
!3453 = !DILocation(line: 337, column: 10, scope: !3404)
!3454 = !DILocation(line: 337, column: 5, scope: !3404)
!3455 = !DILocation(line: 338, column: 7, scope: !3404)
!3456 = !DILocation(line: 338, column: 10, scope: !3404)
!3457 = !DILocation(line: 338, column: 5, scope: !3404)
!3458 = !DILocation(line: 339, column: 7, scope: !3404)
!3459 = !DILocation(line: 339, column: 10, scope: !3404)
!3460 = !DILocation(line: 339, column: 5, scope: !3404)
!3461 = !DILocation(line: 341, column: 25, scope: !3404)
!3462 = !DILocation(line: 341, column: 29, scope: !3404)
!3463 = !DILocation(line: 341, column: 33, scope: !3404)
!3464 = !DILocation(line: 341, column: 37, scope: !3404)
!3465 = !DILocation(line: 341, column: 11, scope: !3404)
!3466 = !DILocation(line: 341, column: 9, scope: !3404)
!3467 = !DILocation(line: 342, column: 16, scope: !3404)
!3468 = !DILocation(line: 342, column: 19, scope: !3404)
!3469 = !DILocation(line: 342, column: 24, scope: !3404)
!3470 = !DILocation(line: 342, column: 27, scope: !3404)
!3471 = !DILocation(line: 342, column: 30, scope: !3404)
!3472 = !DILocation(line: 342, column: 38, scope: !3404)
!3473 = !DILocation(line: 342, column: 45, scope: !3404)
!3474 = !DILocation(line: 342, column: 37, scope: !3404)
!3475 = !DILocation(line: 342, column: 2, scope: !3404)
!3476 = !DILocation(line: 343, column: 16, scope: !3404)
!3477 = !DILocation(line: 343, column: 20, scope: !3404)
!3478 = !DILocation(line: 343, column: 24, scope: !3404)
!3479 = !DILocation(line: 343, column: 27, scope: !3404)
!3480 = !DILocation(line: 343, column: 2, scope: !3404)
!3481 = !DILocation(line: 344, column: 1, scope: !3404)
!3482 = distinct !DISubprogram(name: "ec_mulm_448", scope: !3, file: !3, line: 346, type: !116, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3508, !3509}
!3484 = !DILocalVariable(name: "w", arg: 1, scope: !3482, file: !3, line: 346, type: !67)
!3485 = !DILocalVariable(name: "u", arg: 2, scope: !3482, file: !3, line: 346, type: !67)
!3486 = !DILocalVariable(name: "v", arg: 3, scope: !3482, file: !3, line: 346, type: !67)
!3487 = !DILocalVariable(name: "ctx", arg: 4, scope: !3482, file: !3, line: 346, type: !58)
!3488 = !DILocalVariable(name: "wp", scope: !3482, file: !3, line: 348, type: !2911)
!3489 = !DILocalVariable(name: "up", scope: !3482, file: !3, line: 348, type: !2911)
!3490 = !DILocalVariable(name: "vp", scope: !3482, file: !3, line: 348, type: !2911)
!3491 = !DILocalVariable(name: "wsize", scope: !3482, file: !3, line: 349, type: !1614)
!3492 = !DILocalVariable(name: "n", scope: !3482, file: !3, line: 350, type: !3493)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 896, elements: !3494)
!3494 = !{!3495}
!3495 = !DISubrange(count: 14)
!3496 = !DILocalVariable(name: "a2", scope: !3482, file: !3, line: 351, type: !2955)
!3497 = !DILocalVariable(name: "a3", scope: !3482, file: !3, line: 352, type: !2955)
!3498 = !DILocalVariable(name: "b0", scope: !3482, file: !3, line: 353, type: !2955)
!3499 = !DILocalVariable(name: "b1", scope: !3482, file: !3, line: 354, type: !2955)
!3500 = !DILocalVariable(name: "cy", scope: !3482, file: !3, line: 355, type: !45)
!3501 = !DILocalVariable(name: "i", scope: !3482, file: !3, line: 356, type: !64)
!3502 = !DILocalVariable(name: "b1_rest", scope: !3482, file: !3, line: 358, type: !45)
!3503 = !DILocalVariable(name: "a3_rest", scope: !3482, file: !3, line: 358, type: !45)
!3504 = !DILocalVariable(name: "b1v", scope: !3505, file: !3, line: 385, type: !45)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 384, column: 45)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 384, column: 2)
!3507 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 384, column: 2)
!3508 = !DILocalVariable(name: "a3v", scope: !3505, file: !3, line: 385, type: !45)
!3509 = !DILocalVariable(name: "b1v", scope: !3510, file: !3, line: 414, type: !45)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 413, column: 45)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 413, column: 2)
!3512 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 413, column: 2)
!3513 = !DILocation(line: 346, column: 29, scope: !3482)
!3514 = !DILocation(line: 346, column: 36, scope: !3482)
!3515 = !DILocation(line: 346, column: 43, scope: !3482)
!3516 = !DILocation(line: 346, column: 65, scope: !3482)
!3517 = !DILocation(line: 348, column: 2, scope: !3482)
!3518 = !DILocation(line: 348, column: 12, scope: !3482)
!3519 = !DILocation(line: 348, column: 16, scope: !3482)
!3520 = !DILocation(line: 348, column: 20, scope: !3482)
!3521 = !DILocation(line: 349, column: 2, scope: !3482)
!3522 = !DILocation(line: 349, column: 13, scope: !3482)
!3523 = !DILocation(line: 350, column: 2, scope: !3482)
!3524 = !DILocation(line: 350, column: 13, scope: !3482)
!3525 = !DILocation(line: 351, column: 2, scope: !3482)
!3526 = !DILocation(line: 351, column: 13, scope: !3482)
!3527 = !DILocation(line: 352, column: 2, scope: !3482)
!3528 = !DILocation(line: 352, column: 13, scope: !3482)
!3529 = !DILocation(line: 353, column: 2, scope: !3482)
!3530 = !DILocation(line: 353, column: 13, scope: !3482)
!3531 = !DILocation(line: 354, column: 2, scope: !3482)
!3532 = !DILocation(line: 354, column: 13, scope: !3482)
!3533 = !DILocation(line: 355, column: 2, scope: !3482)
!3534 = !DILocation(line: 355, column: 13, scope: !3482)
!3535 = !DILocation(line: 356, column: 2, scope: !3482)
!3536 = !DILocation(line: 356, column: 6, scope: !3482)
!3537 = !DILocation(line: 358, column: 2, scope: !3482)
!3538 = !DILocation(line: 358, column: 13, scope: !3482)
!3539 = !DILocation(line: 358, column: 22, scope: !3482)
!3540 = !DILocation(line: 361, column: 6, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 361, column: 6)
!3542 = !DILocation(line: 361, column: 9, scope: !3541)
!3543 = !DILocation(line: 361, column: 19, scope: !3541)
!3544 = !DILocation(line: 361, column: 16, scope: !3541)
!3545 = !DILocation(line: 361, column: 25, scope: !3541)
!3546 = !DILocation(line: 361, column: 28, scope: !3541)
!3547 = !DILocation(line: 361, column: 31, scope: !3541)
!3548 = !DILocation(line: 361, column: 41, scope: !3541)
!3549 = !DILocation(line: 361, column: 38, scope: !3541)
!3550 = !DILocation(line: 361, column: 47, scope: !3541)
!3551 = !DILocation(line: 361, column: 50, scope: !3541)
!3552 = !DILocation(line: 361, column: 53, scope: !3541)
!3553 = !DILocation(line: 361, column: 63, scope: !3541)
!3554 = !DILocation(line: 361, column: 60, scope: !3541)
!3555 = !DILocation(line: 361, column: 6, scope: !3482)
!3556 = !DILocation(line: 362, column: 3, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 362, column: 3)
!3558 = !DILocation(line: 362, column: 3, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 362, column: 3)
!3560 = !DILocation(line: 362, column: 3, scope: !3541)
!3561 = !DILocation(line: 364, column: 7, scope: !3482)
!3562 = !DILocation(line: 364, column: 10, scope: !3482)
!3563 = !DILocation(line: 364, column: 5, scope: !3482)
!3564 = !DILocation(line: 365, column: 7, scope: !3482)
!3565 = !DILocation(line: 365, column: 10, scope: !3482)
!3566 = !DILocation(line: 365, column: 5, scope: !3482)
!3567 = !DILocation(line: 366, column: 7, scope: !3482)
!3568 = !DILocation(line: 366, column: 10, scope: !3482)
!3569 = !DILocation(line: 366, column: 5, scope: !3482)
!3570 = !DILocation(line: 368, column: 16, scope: !3482)
!3571 = !DILocation(line: 368, column: 19, scope: !3482)
!3572 = !DILocation(line: 368, column: 23, scope: !3482)
!3573 = !DILocation(line: 368, column: 27, scope: !3482)
!3574 = !DILocation(line: 368, column: 2, scope: !3482)
!3575 = !DILocation(line: 370, column: 9, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 370, column: 2)
!3577 = !DILocation(line: 370, column: 7, scope: !3576)
!3578 = !DILocation(line: 370, column: 14, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 370, column: 2)
!3580 = !DILocation(line: 370, column: 19, scope: !3579)
!3581 = !DILocation(line: 370, column: 25, scope: !3579)
!3582 = !DILocation(line: 370, column: 30, scope: !3579)
!3583 = !DILocation(line: 370, column: 16, scope: !3579)
!3584 = !DILocation(line: 370, column: 2, scope: !3576)
!3585 = !DILocation(line: 371, column: 13, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 370, column: 40)
!3587 = !DILocation(line: 371, column: 11, scope: !3586)
!3588 = !DILocation(line: 371, column: 6, scope: !3586)
!3589 = !DILocation(line: 371, column: 3, scope: !3586)
!3590 = !DILocation(line: 371, column: 9, scope: !3586)
!3591 = !DILocation(line: 372, column: 13, scope: !3586)
!3592 = !DILocation(line: 372, column: 15, scope: !3586)
!3593 = !DILocation(line: 372, column: 20, scope: !3586)
!3594 = !DILocation(line: 372, column: 14, scope: !3586)
!3595 = !DILocation(line: 372, column: 11, scope: !3586)
!3596 = !DILocation(line: 372, column: 6, scope: !3586)
!3597 = !DILocation(line: 372, column: 3, scope: !3586)
!3598 = !DILocation(line: 372, column: 9, scope: !3586)
!3599 = !DILocation(line: 373, column: 13, scope: !3586)
!3600 = !DILocation(line: 373, column: 15, scope: !3586)
!3601 = !DILocation(line: 373, column: 14, scope: !3586)
!3602 = !DILocation(line: 373, column: 11, scope: !3586)
!3603 = !DILocation(line: 373, column: 6, scope: !3586)
!3604 = !DILocation(line: 373, column: 3, scope: !3586)
!3605 = !DILocation(line: 373, column: 9, scope: !3586)
!3606 = !DILocation(line: 374, column: 13, scope: !3586)
!3607 = !DILocation(line: 374, column: 15, scope: !3586)
!3608 = !DILocation(line: 374, column: 14, scope: !3586)
!3609 = !DILocation(line: 374, column: 21, scope: !3586)
!3610 = !DILocation(line: 374, column: 26, scope: !3586)
!3611 = !DILocation(line: 374, column: 20, scope: !3586)
!3612 = !DILocation(line: 374, column: 11, scope: !3586)
!3613 = !DILocation(line: 374, column: 6, scope: !3586)
!3614 = !DILocation(line: 374, column: 3, scope: !3586)
!3615 = !DILocation(line: 374, column: 9, scope: !3586)
!3616 = !DILocation(line: 375, column: 2, scope: !3586)
!3617 = !DILocation(line: 370, column: 36, scope: !3579)
!3618 = !DILocation(line: 370, column: 2, scope: !3579)
!3619 = distinct !{!3619, !3584, !3620, !557, !558}
!3620 = !DILocation(line: 375, column: 2, scope: !3576)
!3621 = !DILocation(line: 378, column: 2, scope: !3482)
!3622 = !DILocation(line: 378, column: 27, scope: !3482)
!3623 = !DILocation(line: 379, column: 2, scope: !3482)
!3624 = !DILocation(line: 379, column: 27, scope: !3482)
!3625 = !DILocation(line: 381, column: 10, scope: !3482)
!3626 = !DILocation(line: 382, column: 10, scope: !3482)
!3627 = !DILocation(line: 384, column: 12, scope: !3507)
!3628 = !DILocation(line: 384, column: 18, scope: !3507)
!3629 = !DILocation(line: 384, column: 23, scope: !3507)
!3630 = !DILocation(line: 384, column: 27, scope: !3507)
!3631 = !DILocation(line: 384, column: 9, scope: !3507)
!3632 = !DILocation(line: 384, column: 7, scope: !3507)
!3633 = !DILocation(line: 384, column: 32, scope: !3506)
!3634 = !DILocation(line: 384, column: 34, scope: !3506)
!3635 = !DILocation(line: 384, column: 2, scope: !3507)
!3636 = !DILocation(line: 385, column: 3, scope: !3505)
!3637 = !DILocation(line: 385, column: 14, scope: !3505)
!3638 = !DILocation(line: 385, column: 19, scope: !3505)
!3639 = !DILocation(line: 386, column: 12, scope: !3505)
!3640 = !DILocation(line: 386, column: 9, scope: !3505)
!3641 = !DILocation(line: 386, column: 7, scope: !3505)
!3642 = !DILocation(line: 387, column: 12, scope: !3505)
!3643 = !DILocation(line: 387, column: 9, scope: !3505)
!3644 = !DILocation(line: 387, column: 7, scope: !3505)
!3645 = !DILocation(line: 388, column: 12, scope: !3505)
!3646 = !DILocation(line: 388, column: 20, scope: !3505)
!3647 = !DILocation(line: 388, column: 30, scope: !3505)
!3648 = !DILocation(line: 388, column: 34, scope: !3505)
!3649 = !DILocation(line: 388, column: 27, scope: !3505)
!3650 = !DILocation(line: 388, column: 6, scope: !3505)
!3651 = !DILocation(line: 388, column: 3, scope: !3505)
!3652 = !DILocation(line: 388, column: 9, scope: !3505)
!3653 = !DILocation(line: 389, column: 12, scope: !3505)
!3654 = !DILocation(line: 389, column: 20, scope: !3505)
!3655 = !DILocation(line: 389, column: 30, scope: !3505)
!3656 = !DILocation(line: 389, column: 34, scope: !3505)
!3657 = !DILocation(line: 389, column: 27, scope: !3505)
!3658 = !DILocation(line: 389, column: 6, scope: !3505)
!3659 = !DILocation(line: 389, column: 3, scope: !3505)
!3660 = !DILocation(line: 389, column: 9, scope: !3505)
!3661 = !DILocation(line: 390, column: 13, scope: !3505)
!3662 = !DILocation(line: 390, column: 17, scope: !3505)
!3663 = !DILocation(line: 390, column: 11, scope: !3505)
!3664 = !DILocation(line: 391, column: 13, scope: !3505)
!3665 = !DILocation(line: 391, column: 17, scope: !3505)
!3666 = !DILocation(line: 391, column: 11, scope: !3505)
!3667 = !DILocation(line: 392, column: 2, scope: !3506)
!3668 = !DILocation(line: 392, column: 2, scope: !3505)
!3669 = !DILocation(line: 384, column: 41, scope: !3506)
!3670 = !DILocation(line: 384, column: 2, scope: !3506)
!3671 = distinct !{!3671, !3635, !3672, !557, !558}
!3672 = !DILocation(line: 392, column: 2, scope: !3507)
!3673 = !DILocation(line: 395, column: 21, scope: !3482)
!3674 = !DILocation(line: 395, column: 25, scope: !3482)
!3675 = !DILocation(line: 395, column: 29, scope: !3482)
!3676 = !DILocation(line: 395, column: 7, scope: !3482)
!3677 = !DILocation(line: 395, column: 5, scope: !3482)
!3678 = !DILocation(line: 396, column: 22, scope: !3482)
!3679 = !DILocation(line: 396, column: 26, scope: !3482)
!3680 = !DILocation(line: 396, column: 30, scope: !3482)
!3681 = !DILocation(line: 396, column: 8, scope: !3482)
!3682 = !DILocation(line: 396, column: 5, scope: !3482)
!3683 = !DILocation(line: 397, column: 9, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 397, column: 2)
!3685 = !DILocation(line: 397, column: 7, scope: !3684)
!3686 = !DILocation(line: 397, column: 14, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 397, column: 2)
!3688 = !DILocation(line: 397, column: 19, scope: !3687)
!3689 = !DILocation(line: 397, column: 25, scope: !3687)
!3690 = !DILocation(line: 397, column: 30, scope: !3687)
!3691 = !DILocation(line: 397, column: 16, scope: !3687)
!3692 = !DILocation(line: 397, column: 2, scope: !3684)
!3693 = !DILocation(line: 398, column: 14, scope: !3687)
!3694 = !DILocation(line: 398, column: 11, scope: !3687)
!3695 = !DILocation(line: 398, column: 3, scope: !3687)
!3696 = !DILocation(line: 398, column: 6, scope: !3687)
!3697 = !DILocation(line: 398, column: 9, scope: !3687)
!3698 = !DILocation(line: 397, column: 36, scope: !3687)
!3699 = !DILocation(line: 397, column: 2, scope: !3687)
!3700 = distinct !{!3700, !3692, !3701, !557, !558}
!3701 = !DILocation(line: 398, column: 15, scope: !3684)
!3702 = !DILocation(line: 400, column: 2, scope: !3482)
!3703 = !DILocation(line: 400, column: 27, scope: !3482)
!3704 = !DILocation(line: 404, column: 7, scope: !3482)
!3705 = !DILocation(line: 404, column: 32, scope: !3482)
!3706 = !DILocation(line: 404, column: 5, scope: !3482)
!3707 = !DILocation(line: 407, column: 21, scope: !3482)
!3708 = !DILocation(line: 407, column: 25, scope: !3482)
!3709 = !DILocation(line: 407, column: 49, scope: !3482)
!3710 = !DILocation(line: 407, column: 7, scope: !3482)
!3711 = !DILocation(line: 407, column: 5, scope: !3482)
!3712 = !DILocation(line: 408, column: 22, scope: !3482)
!3713 = !DILocation(line: 408, column: 26, scope: !3482)
!3714 = !DILocation(line: 408, column: 30, scope: !3482)
!3715 = !DILocation(line: 408, column: 8, scope: !3482)
!3716 = !DILocation(line: 408, column: 5, scope: !3482)
!3717 = !DILocation(line: 409, column: 22, scope: !3482)
!3718 = !DILocation(line: 409, column: 26, scope: !3482)
!3719 = !DILocation(line: 409, column: 30, scope: !3482)
!3720 = !DILocation(line: 409, column: 8, scope: !3482)
!3721 = !DILocation(line: 409, column: 5, scope: !3482)
!3722 = !DILocation(line: 410, column: 22, scope: !3482)
!3723 = !DILocation(line: 410, column: 26, scope: !3482)
!3724 = !DILocation(line: 410, column: 30, scope: !3482)
!3725 = !DILocation(line: 410, column: 8, scope: !3482)
!3726 = !DILocation(line: 410, column: 5, scope: !3482)
!3727 = !DILocation(line: 412, column: 10, scope: !3482)
!3728 = !DILocation(line: 413, column: 12, scope: !3512)
!3729 = !DILocation(line: 413, column: 18, scope: !3512)
!3730 = !DILocation(line: 413, column: 23, scope: !3512)
!3731 = !DILocation(line: 413, column: 27, scope: !3512)
!3732 = !DILocation(line: 413, column: 9, scope: !3512)
!3733 = !DILocation(line: 413, column: 7, scope: !3512)
!3734 = !DILocation(line: 413, column: 32, scope: !3511)
!3735 = !DILocation(line: 413, column: 34, scope: !3511)
!3736 = !DILocation(line: 413, column: 2, scope: !3512)
!3737 = !DILocation(line: 414, column: 3, scope: !3510)
!3738 = !DILocation(line: 414, column: 14, scope: !3510)
!3739 = !DILocation(line: 414, column: 23, scope: !3510)
!3740 = !DILocation(line: 414, column: 20, scope: !3510)
!3741 = !DILocation(line: 415, column: 12, scope: !3510)
!3742 = !DILocation(line: 415, column: 20, scope: !3510)
!3743 = !DILocation(line: 415, column: 30, scope: !3510)
!3744 = !DILocation(line: 415, column: 34, scope: !3510)
!3745 = !DILocation(line: 415, column: 27, scope: !3510)
!3746 = !DILocation(line: 415, column: 6, scope: !3510)
!3747 = !DILocation(line: 415, column: 3, scope: !3510)
!3748 = !DILocation(line: 415, column: 9, scope: !3510)
!3749 = !DILocation(line: 416, column: 13, scope: !3510)
!3750 = !DILocation(line: 416, column: 17, scope: !3510)
!3751 = !DILocation(line: 416, column: 11, scope: !3510)
!3752 = !DILocation(line: 417, column: 2, scope: !3511)
!3753 = !DILocation(line: 417, column: 2, scope: !3510)
!3754 = !DILocation(line: 413, column: 41, scope: !3511)
!3755 = !DILocation(line: 413, column: 2, scope: !3511)
!3756 = distinct !{!3756, !3736, !3757, !557, !558}
!3757 = !DILocation(line: 417, column: 2, scope: !3512)
!3758 = !DILocation(line: 418, column: 31, scope: !3482)
!3759 = !DILocation(line: 418, column: 39, scope: !3482)
!3760 = !DILocation(line: 418, column: 2, scope: !3482)
!3761 = !DILocation(line: 418, column: 27, scope: !3482)
!3762 = !DILocation(line: 420, column: 9, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 420, column: 2)
!3764 = !DILocation(line: 420, column: 7, scope: !3763)
!3765 = !DILocation(line: 420, column: 14, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 420, column: 2)
!3767 = !DILocation(line: 420, column: 18, scope: !3766)
!3768 = !DILocation(line: 420, column: 24, scope: !3766)
!3769 = !DILocation(line: 420, column: 16, scope: !3766)
!3770 = !DILocation(line: 420, column: 2, scope: !3763)
!3771 = !DILocation(line: 421, column: 30, scope: !3766)
!3772 = !DILocation(line: 421, column: 27, scope: !3766)
!3773 = !DILocation(line: 421, column: 3, scope: !3766)
!3774 = !DILocation(line: 421, column: 6, scope: !3766)
!3775 = !DILocation(line: 421, column: 9, scope: !3766)
!3776 = !DILocation(line: 421, column: 15, scope: !3766)
!3777 = !DILocation(line: 421, column: 20, scope: !3766)
!3778 = !DILocation(line: 421, column: 7, scope: !3766)
!3779 = !DILocation(line: 421, column: 25, scope: !3766)
!3780 = !DILocation(line: 420, column: 30, scope: !3766)
!3781 = !DILocation(line: 420, column: 2, scope: !3766)
!3782 = distinct !{!3782, !3770, !3783, !557, !558}
!3783 = !DILocation(line: 421, column: 31, scope: !3763)
!3784 = !DILocation(line: 424, column: 7, scope: !3482)
!3785 = !DILocation(line: 424, column: 5, scope: !3482)
!3786 = !DILocation(line: 427, column: 2, scope: !3482)
!3787 = !DILocation(line: 427, column: 15, scope: !3482)
!3788 = !DILocation(line: 427, column: 21, scope: !3482)
!3789 = !DILocation(line: 430, column: 28, scope: !3482)
!3790 = !DILocation(line: 430, column: 31, scope: !3482)
!3791 = !DILocation(line: 430, column: 2, scope: !3482)
!3792 = !DILocation(line: 430, column: 26, scope: !3482)
!3793 = !DILocation(line: 434, column: 9, scope: !3482)
!3794 = !DILocation(line: 434, column: 2, scope: !3482)
!3795 = !DILocation(line: 434, column: 7, scope: !3482)
!3796 = !DILocation(line: 435, column: 16, scope: !3482)
!3797 = !DILocation(line: 435, column: 20, scope: !3482)
!3798 = !DILocation(line: 435, column: 24, scope: !3482)
!3799 = !DILocation(line: 435, column: 27, scope: !3482)
!3800 = !DILocation(line: 435, column: 2, scope: !3482)
!3801 = !DILocation(line: 437, column: 2, scope: !3482)
!3802 = !DILocation(line: 437, column: 15, scope: !3482)
!3803 = !DILocation(line: 437, column: 21, scope: !3482)
!3804 = !DILocation(line: 438, column: 21, scope: !3482)
!3805 = !DILocation(line: 438, column: 25, scope: !3482)
!3806 = !DILocation(line: 438, column: 29, scope: !3482)
!3807 = !DILocation(line: 438, column: 34, scope: !3482)
!3808 = !DILocation(line: 438, column: 37, scope: !3482)
!3809 = !DILocation(line: 438, column: 40, scope: !3482)
!3810 = !DILocation(line: 438, column: 7, scope: !3482)
!3811 = !DILocation(line: 438, column: 5, scope: !3482)
!3812 = !DILocation(line: 439, column: 16, scope: !3482)
!3813 = !DILocation(line: 439, column: 19, scope: !3482)
!3814 = !DILocation(line: 439, column: 24, scope: !3482)
!3815 = !DILocation(line: 439, column: 27, scope: !3482)
!3816 = !DILocation(line: 439, column: 30, scope: !3482)
!3817 = !DILocation(line: 439, column: 38, scope: !3482)
!3818 = !DILocation(line: 439, column: 41, scope: !3482)
!3819 = !DILocation(line: 439, column: 37, scope: !3482)
!3820 = !DILocation(line: 439, column: 2, scope: !3482)
!3821 = !DILocation(line: 440, column: 16, scope: !3482)
!3822 = !DILocation(line: 440, column: 20, scope: !3482)
!3823 = !DILocation(line: 440, column: 24, scope: !3482)
!3824 = !DILocation(line: 440, column: 27, scope: !3482)
!3825 = !DILocation(line: 440, column: 2, scope: !3482)
!3826 = !DILocation(line: 441, column: 1, scope: !3482)
!3827 = distinct !DISubprogram(name: "ec_mul2_448", scope: !3, file: !3, line: 443, type: !127, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3828 = !{!3829, !3830, !3831}
!3829 = !DILocalVariable(name: "w", arg: 1, scope: !3827, file: !3, line: 443, type: !67)
!3830 = !DILocalVariable(name: "u", arg: 2, scope: !3827, file: !3, line: 443, type: !67)
!3831 = !DILocalVariable(name: "ctx", arg: 3, scope: !3827, file: !3, line: 443, type: !58)
!3832 = !DILocation(line: 443, column: 29, scope: !3827)
!3833 = !DILocation(line: 443, column: 36, scope: !3827)
!3834 = !DILocation(line: 443, column: 58, scope: !3827)
!3835 = !DILocation(line: 445, column: 14, scope: !3827)
!3836 = !DILocation(line: 445, column: 17, scope: !3827)
!3837 = !DILocation(line: 445, column: 20, scope: !3827)
!3838 = !DILocation(line: 445, column: 23, scope: !3827)
!3839 = !DILocation(line: 445, column: 2, scope: !3827)
!3840 = !DILocation(line: 446, column: 1, scope: !3827)
!3841 = distinct !DISubprogram(name: "ec_pow2_448", scope: !3, file: !3, line: 448, type: !122, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3842)
!3842 = !{!3843, !3844, !3845}
!3843 = !DILocalVariable(name: "w", arg: 1, scope: !3841, file: !3, line: 448, type: !67)
!3844 = !DILocalVariable(name: "b", arg: 2, scope: !3841, file: !3, line: 448, type: !124)
!3845 = !DILocalVariable(name: "ctx", arg: 3, scope: !3841, file: !3, line: 448, type: !58)
!3846 = !DILocation(line: 448, column: 29, scope: !3841)
!3847 = !DILocation(line: 448, column: 42, scope: !3841)
!3848 = !DILocation(line: 448, column: 64, scope: !3841)
!3849 = !DILocation(line: 450, column: 14, scope: !3841)
!3850 = !DILocation(line: 450, column: 17, scope: !3841)
!3851 = !DILocation(line: 450, column: 20, scope: !3841)
!3852 = !DILocation(line: 450, column: 23, scope: !3841)
!3853 = !DILocation(line: 450, column: 2, scope: !3841)
!3854 = !DILocation(line: 451, column: 1, scope: !3841)
!3855 = !DISubprogram(name: "mpihelp_add_n", scope: !1615, file: !1615, line: 148, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3856 = distinct !DISubprogram(name: "mpih_set_cond", scope: !3, file: !3, line: 182, type: !3857, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !2911, !2911, !1614, !44}
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866}
!3860 = !DILocalVariable(name: "wp", arg: 1, scope: !3856, file: !3, line: 182, type: !2911)
!3861 = !DILocalVariable(name: "up", arg: 2, scope: !3856, file: !3, line: 182, type: !2911)
!3862 = !DILocalVariable(name: "usize", arg: 3, scope: !3856, file: !3, line: 183, type: !1614)
!3863 = !DILocalVariable(name: "set", arg: 4, scope: !3856, file: !3, line: 183, type: !44)
!3864 = !DILocalVariable(name: "i", scope: !3856, file: !3, line: 185, type: !1614)
!3865 = !DILocalVariable(name: "mask", scope: !3856, file: !3, line: 186, type: !45)
!3866 = !DILocalVariable(name: "x", scope: !3856, file: !3, line: 187, type: !45)
!3867 = !DILocation(line: 182, column: 37, scope: !3856)
!3868 = !DILocation(line: 182, column: 51, scope: !3856)
!3869 = !DILocation(line: 183, column: 14, scope: !3856)
!3870 = !DILocation(line: 183, column: 35, scope: !3856)
!3871 = !DILocation(line: 185, column: 2, scope: !3856)
!3872 = !DILocation(line: 185, column: 13, scope: !3856)
!3873 = !DILocation(line: 186, column: 2, scope: !3856)
!3874 = !DILocation(line: 186, column: 13, scope: !3856)
!3875 = !DILocation(line: 186, column: 38, scope: !3856)
!3876 = !DILocation(line: 186, column: 36, scope: !3856)
!3877 = !DILocation(line: 187, column: 2, scope: !3856)
!3878 = !DILocation(line: 187, column: 13, scope: !3856)
!3879 = !DILocation(line: 189, column: 9, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 189, column: 2)
!3881 = !DILocation(line: 189, column: 7, scope: !3880)
!3882 = !DILocation(line: 189, column: 14, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 189, column: 2)
!3884 = !DILocation(line: 189, column: 18, scope: !3883)
!3885 = !DILocation(line: 189, column: 16, scope: !3883)
!3886 = !DILocation(line: 189, column: 2, scope: !3880)
!3887 = !DILocation(line: 190, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 189, column: 30)
!3889 = !DILocation(line: 190, column: 15, scope: !3888)
!3890 = !DILocation(line: 190, column: 18, scope: !3888)
!3891 = !DILocation(line: 190, column: 23, scope: !3888)
!3892 = !DILocation(line: 190, column: 26, scope: !3888)
!3893 = !DILocation(line: 190, column: 21, scope: !3888)
!3894 = !DILocation(line: 190, column: 12, scope: !3888)
!3895 = !DILocation(line: 190, column: 5, scope: !3888)
!3896 = !DILocation(line: 191, column: 11, scope: !3888)
!3897 = !DILocation(line: 191, column: 14, scope: !3888)
!3898 = !DILocation(line: 191, column: 19, scope: !3888)
!3899 = !DILocation(line: 191, column: 17, scope: !3888)
!3900 = !DILocation(line: 191, column: 3, scope: !3888)
!3901 = !DILocation(line: 191, column: 6, scope: !3888)
!3902 = !DILocation(line: 191, column: 9, scope: !3888)
!3903 = !DILocation(line: 192, column: 2, scope: !3888)
!3904 = !DILocation(line: 189, column: 26, scope: !3883)
!3905 = !DILocation(line: 189, column: 2, scope: !3883)
!3906 = distinct !{!3906, !3886, !3907, !557, !558}
!3907 = !DILocation(line: 192, column: 2, scope: !3880)
!3908 = !DILocation(line: 193, column: 1, scope: !3856)
!3909 = !DISubprogram(name: "mpihelp_mul_n", scope: !1615, file: !1615, line: 184, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !2911, !2911, !2911, !1614}
!3912 = !DISubprogram(name: "mpihelp_rshift", scope: !1615, file: !1615, line: 209, type: !3913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!45, !2911, !2911, !1614, !7}
!3915 = !DISubprogram(name: "mpihelp_lshift", scope: !1615, file: !1615, line: 207, type: !3913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3916 = distinct !DISubprogram(name: "mpihelp_add_1", scope: !3917, file: !3917, line: 24, type: !3918, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3920)
!3917 = !DIFile(filename: "lib/crypto/mpi/mpi-inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1eb4d706cf80b7747a30df77860dc8e1")
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!45, !2911, !2911, !1614, !45}
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3921 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !3916, file: !3917, line: 24, type: !2911)
!3922 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !3916, file: !3917, line: 24, type: !2911)
!3923 = !DILocalVariable(name: "s1_size", arg: 3, scope: !3916, file: !3917, line: 25, type: !1614)
!3924 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !3916, file: !3917, line: 25, type: !45)
!3925 = !DILocalVariable(name: "x", scope: !3916, file: !3917, line: 27, type: !45)
!3926 = !DILabel(scope: !3916, name: "leave", file: !3917, line: 42)
!3927 = !DILocalVariable(name: "i", scope: !3928, file: !3917, line: 44, type: !1614)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3917, line: 43, column: 25)
!3929 = distinct !DILexicalBlock(scope: !3916, file: !3917, line: 43, column: 6)
!3930 = !DILocation(line: 24, column: 25, scope: !3916)
!3931 = !DILocation(line: 24, column: 44, scope: !3916)
!3932 = !DILocation(line: 25, column: 19, scope: !3916)
!3933 = !DILocation(line: 25, column: 39, scope: !3916)
!3934 = !DILocation(line: 27, column: 2, scope: !3916)
!3935 = !DILocation(line: 27, column: 13, scope: !3916)
!3936 = !DILocation(line: 29, column: 13, scope: !3916)
!3937 = !DILocation(line: 29, column: 6, scope: !3916)
!3938 = !DILocation(line: 29, column: 4, scope: !3916)
!3939 = !DILocation(line: 30, column: 13, scope: !3916)
!3940 = !DILocation(line: 30, column: 10, scope: !3916)
!3941 = !DILocation(line: 31, column: 15, scope: !3916)
!3942 = !DILocation(line: 31, column: 10, scope: !3916)
!3943 = !DILocation(line: 31, column: 13, scope: !3916)
!3944 = !DILocation(line: 32, column: 6, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3916, file: !3917, line: 32, column: 6)
!3946 = !DILocation(line: 32, column: 16, scope: !3945)
!3947 = !DILocation(line: 32, column: 14, scope: !3945)
!3948 = !DILocation(line: 32, column: 6, scope: !3916)
!3949 = !DILocation(line: 33, column: 3, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3945, file: !3917, line: 32, column: 19)
!3951 = !DILocation(line: 33, column: 10, scope: !3950)
!3952 = !DILocation(line: 34, column: 15, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3950, file: !3917, line: 33, column: 21)
!3954 = !DILocation(line: 34, column: 8, scope: !3953)
!3955 = !DILocation(line: 34, column: 18, scope: !3953)
!3956 = !DILocation(line: 34, column: 6, scope: !3953)
!3957 = !DILocation(line: 35, column: 17, scope: !3953)
!3958 = !DILocation(line: 35, column: 12, scope: !3953)
!3959 = !DILocation(line: 35, column: 15, scope: !3953)
!3960 = !DILocation(line: 36, column: 8, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3953, file: !3917, line: 36, column: 8)
!3962 = !DILocation(line: 36, column: 8, scope: !3953)
!3963 = !DILocation(line: 37, column: 5, scope: !3961)
!3964 = distinct !{!3964, !3949, !3965, !557, !558}
!3965 = !DILocation(line: 38, column: 3, scope: !3950)
!3966 = !DILocation(line: 39, column: 3, scope: !3950)
!3967 = !DILocation(line: 42, column: 1, scope: !3916)
!3968 = !DILocation(line: 43, column: 6, scope: !3929)
!3969 = !DILocation(line: 43, column: 17, scope: !3929)
!3970 = !DILocation(line: 43, column: 14, scope: !3929)
!3971 = !DILocation(line: 43, column: 6, scope: !3916)
!3972 = !DILocation(line: 44, column: 3, scope: !3928)
!3973 = !DILocation(line: 44, column: 14, scope: !3928)
!3974 = !DILocation(line: 45, column: 10, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3928, file: !3917, line: 45, column: 3)
!3976 = !DILocation(line: 45, column: 8, scope: !3975)
!3977 = !DILocation(line: 45, column: 15, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !3917, line: 45, column: 3)
!3979 = !DILocation(line: 45, column: 19, scope: !3978)
!3980 = !DILocation(line: 45, column: 27, scope: !3978)
!3981 = !DILocation(line: 45, column: 17, scope: !3978)
!3982 = !DILocation(line: 45, column: 3, scope: !3975)
!3983 = !DILocation(line: 46, column: 17, scope: !3978)
!3984 = !DILocation(line: 46, column: 24, scope: !3978)
!3985 = !DILocation(line: 46, column: 4, scope: !3978)
!3986 = !DILocation(line: 46, column: 12, scope: !3978)
!3987 = !DILocation(line: 46, column: 15, scope: !3978)
!3988 = !DILocation(line: 45, column: 33, scope: !3978)
!3989 = !DILocation(line: 45, column: 3, scope: !3978)
!3990 = distinct !{!3990, !3982, !3991, !557, !558}
!3991 = !DILocation(line: 46, column: 25, scope: !3975)
!3992 = !DILocation(line: 47, column: 2, scope: !3929)
!3993 = !DILocation(line: 47, column: 2, scope: !3928)
!3994 = !DILocation(line: 48, column: 2, scope: !3916)
!3995 = !DILocation(line: 49, column: 1, scope: !3916)
!3996 = !DISubprogram(name: "mpi_invm", scope: !6, file: !6, line: 158, type: !3997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!64, !67, !67, !67}
!3999 = distinct !DISubprogram(name: "ec_get_two_inv_p", scope: !3, file: !3, line: 509, type: !4000, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!67, !58}
!4002 = !{!4003}
!4003 = !DILocalVariable(name: "ec", arg: 1, scope: !3999, file: !3, line: 509, type: !58)
!4004 = !DILocation(line: 509, column: 48, scope: !3999)
!4005 = !DILocation(line: 511, column: 7, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 511, column: 6)
!4007 = !DILocation(line: 511, column: 11, scope: !4006)
!4008 = !DILocation(line: 511, column: 13, scope: !4006)
!4009 = !DILocation(line: 511, column: 19, scope: !4006)
!4010 = !DILocation(line: 511, column: 6, scope: !3999)
!4011 = !DILocation(line: 512, column: 3, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 511, column: 30)
!4013 = !DILocation(line: 512, column: 7, scope: !4012)
!4014 = !DILocation(line: 512, column: 9, scope: !4012)
!4015 = !DILocation(line: 512, column: 25, scope: !4012)
!4016 = !DILocation(line: 513, column: 8, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 513, column: 7)
!4018 = !DILocation(line: 513, column: 12, scope: !4017)
!4019 = !DILocation(line: 513, column: 14, scope: !4017)
!4020 = !DILocation(line: 513, column: 7, scope: !4012)
!4021 = !DILocation(line: 514, column: 22, scope: !4017)
!4022 = !DILocation(line: 514, column: 4, scope: !4017)
!4023 = !DILocation(line: 514, column: 8, scope: !4017)
!4024 = !DILocation(line: 514, column: 10, scope: !4017)
!4025 = !DILocation(line: 514, column: 20, scope: !4017)
!4026 = !DILocation(line: 515, column: 11, scope: !4012)
!4027 = !DILocation(line: 515, column: 15, scope: !4012)
!4028 = !DILocation(line: 515, column: 17, scope: !4012)
!4029 = !DILocation(line: 515, column: 28, scope: !4012)
!4030 = !DILocation(line: 515, column: 50, scope: !4012)
!4031 = !DILocation(line: 515, column: 3, scope: !4012)
!4032 = !DILocation(line: 516, column: 2, scope: !4012)
!4033 = !DILocation(line: 517, column: 9, scope: !3999)
!4034 = !DILocation(line: 517, column: 13, scope: !3999)
!4035 = !DILocation(line: 517, column: 15, scope: !3999)
!4036 = !DILocation(line: 517, column: 2, scope: !3999)
!4037 = distinct !DISubprogram(name: "dup_point_weierstrass", scope: !3, file: !3, line: 756, type: !2154, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4038)
!4038 = !{!4039, !4040, !4041}
!4039 = !DILocalVariable(name: "result", arg: 1, scope: !4037, file: !3, line: 756, type: !81)
!4040 = !DILocalVariable(name: "point", arg: 2, scope: !4037, file: !3, line: 757, type: !81)
!4041 = !DILocalVariable(name: "ctx", arg: 3, scope: !4037, file: !3, line: 757, type: !58)
!4042 = !DILocation(line: 756, column: 45, scope: !4037)
!4043 = !DILocation(line: 757, column: 13, scope: !4037)
!4044 = !DILocation(line: 757, column: 39, scope: !4037)
!4045 = !DILocation(line: 769, column: 18, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 769, column: 6)
!4047 = !DILocation(line: 769, column: 25, scope: !4046)
!4048 = !DILocation(line: 769, column: 7, scope: !4046)
!4049 = !DILocation(line: 769, column: 31, scope: !4046)
!4050 = !DILocation(line: 769, column: 46, scope: !4046)
!4051 = !DILocation(line: 769, column: 53, scope: !4046)
!4052 = !DILocation(line: 769, column: 35, scope: !4046)
!4053 = !DILocation(line: 769, column: 6, scope: !4037)
!4054 = !DILocation(line: 771, column: 14, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 769, column: 60)
!4056 = !DILocation(line: 771, column: 3, scope: !4055)
!4057 = !DILocation(line: 772, column: 14, scope: !4055)
!4058 = !DILocation(line: 772, column: 3, scope: !4055)
!4059 = !DILocation(line: 773, column: 14, scope: !4055)
!4060 = !DILocation(line: 773, column: 3, scope: !4055)
!4061 = !DILocation(line: 774, column: 2, scope: !4055)
!4062 = !DILocation(line: 775, column: 27, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 775, column: 7)
!4064 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 774, column: 9)
!4065 = !DILocation(line: 775, column: 7, scope: !4063)
!4066 = !DILocation(line: 775, column: 7, scope: !4064)
!4067 = !DILocation(line: 780, column: 12, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 775, column: 33)
!4069 = !DILocation(line: 780, column: 16, scope: !4068)
!4070 = !DILocation(line: 780, column: 23, scope: !4068)
!4071 = !DILocation(line: 780, column: 26, scope: !4068)
!4072 = !DILocation(line: 780, column: 4, scope: !4068)
!4073 = !DILocation(line: 781, column: 12, scope: !4068)
!4074 = !DILocation(line: 781, column: 16, scope: !4068)
!4075 = !DILocation(line: 781, column: 23, scope: !4068)
!4076 = !DILocation(line: 781, column: 26, scope: !4068)
!4077 = !DILocation(line: 781, column: 30, scope: !4068)
!4078 = !DILocation(line: 781, column: 4, scope: !4068)
!4079 = !DILocation(line: 782, column: 12, scope: !4068)
!4080 = !DILocation(line: 782, column: 16, scope: !4068)
!4081 = !DILocation(line: 782, column: 20, scope: !4068)
!4082 = !DILocation(line: 782, column: 44, scope: !4068)
!4083 = !DILocation(line: 782, column: 4, scope: !4068)
!4084 = !DILocation(line: 783, column: 12, scope: !4068)
!4085 = !DILocation(line: 783, column: 16, scope: !4068)
!4086 = !DILocation(line: 783, column: 23, scope: !4068)
!4087 = !DILocation(line: 783, column: 26, scope: !4068)
!4088 = !DILocation(line: 783, column: 30, scope: !4068)
!4089 = !DILocation(line: 783, column: 4, scope: !4068)
!4090 = !DILocation(line: 784, column: 12, scope: !4068)
!4091 = !DILocation(line: 784, column: 16, scope: !4068)
!4092 = !DILocation(line: 784, column: 20, scope: !4068)
!4093 = !DILocation(line: 784, column: 24, scope: !4068)
!4094 = !DILocation(line: 784, column: 4, scope: !4068)
!4095 = !DILocation(line: 785, column: 3, scope: !4068)
!4096 = !DILocation(line: 789, column: 12, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 785, column: 10)
!4098 = !DILocation(line: 789, column: 16, scope: !4097)
!4099 = !DILocation(line: 789, column: 23, scope: !4097)
!4100 = !DILocation(line: 789, column: 26, scope: !4097)
!4101 = !DILocation(line: 789, column: 4, scope: !4097)
!4102 = !DILocation(line: 790, column: 12, scope: !4097)
!4103 = !DILocation(line: 790, column: 16, scope: !4097)
!4104 = !DILocation(line: 790, column: 20, scope: !4097)
!4105 = !DILocation(line: 790, column: 44, scope: !4097)
!4106 = !DILocation(line: 790, column: 4, scope: !4097)
!4107 = !DILocation(line: 791, column: 12, scope: !4097)
!4108 = !DILocation(line: 791, column: 16, scope: !4097)
!4109 = !DILocation(line: 791, column: 23, scope: !4097)
!4110 = !DILocation(line: 791, column: 26, scope: !4097)
!4111 = !DILocation(line: 791, column: 49, scope: !4097)
!4112 = !DILocation(line: 791, column: 4, scope: !4097)
!4113 = !DILocation(line: 792, column: 12, scope: !4097)
!4114 = !DILocation(line: 792, column: 16, scope: !4097)
!4115 = !DILocation(line: 792, column: 20, scope: !4097)
!4116 = !DILocation(line: 792, column: 25, scope: !4097)
!4117 = !DILocation(line: 792, column: 28, scope: !4097)
!4118 = !DILocation(line: 792, column: 4, scope: !4097)
!4119 = !DILocation(line: 793, column: 12, scope: !4097)
!4120 = !DILocation(line: 793, column: 16, scope: !4097)
!4121 = !DILocation(line: 793, column: 20, scope: !4097)
!4122 = !DILocation(line: 793, column: 24, scope: !4097)
!4123 = !DILocation(line: 793, column: 4, scope: !4097)
!4124 = !DILocation(line: 796, column: 11, scope: !4064)
!4125 = !DILocation(line: 796, column: 15, scope: !4064)
!4126 = !DILocation(line: 796, column: 22, scope: !4064)
!4127 = !DILocation(line: 796, column: 25, scope: !4064)
!4128 = !DILocation(line: 796, column: 32, scope: !4064)
!4129 = !DILocation(line: 796, column: 35, scope: !4064)
!4130 = !DILocation(line: 796, column: 3, scope: !4064)
!4131 = !DILocation(line: 797, column: 11, scope: !4064)
!4132 = !DILocation(line: 797, column: 15, scope: !4064)
!4133 = !DILocation(line: 797, column: 19, scope: !4064)
!4134 = !DILocation(line: 797, column: 3, scope: !4064)
!4135 = !DILocation(line: 801, column: 11, scope: !4064)
!4136 = !DILocation(line: 801, column: 15, scope: !4064)
!4137 = !DILocation(line: 801, column: 22, scope: !4064)
!4138 = !DILocation(line: 801, column: 25, scope: !4064)
!4139 = !DILocation(line: 801, column: 3, scope: !4064)
!4140 = !DILocation(line: 802, column: 11, scope: !4064)
!4141 = !DILocation(line: 802, column: 15, scope: !4064)
!4142 = !DILocation(line: 802, column: 19, scope: !4064)
!4143 = !DILocation(line: 802, column: 26, scope: !4064)
!4144 = !DILocation(line: 802, column: 29, scope: !4064)
!4145 = !DILocation(line: 802, column: 3, scope: !4064)
!4146 = !DILocation(line: 803, column: 11, scope: !4064)
!4147 = !DILocation(line: 803, column: 15, scope: !4064)
!4148 = !DILocation(line: 803, column: 19, scope: !4064)
!4149 = !DILocation(line: 803, column: 42, scope: !4064)
!4150 = !DILocation(line: 803, column: 3, scope: !4064)
!4151 = !DILocation(line: 807, column: 11, scope: !4064)
!4152 = !DILocation(line: 807, column: 15, scope: !4064)
!4153 = !DILocation(line: 807, column: 19, scope: !4064)
!4154 = !DILocation(line: 807, column: 3, scope: !4064)
!4155 = !DILocation(line: 808, column: 11, scope: !4064)
!4156 = !DILocation(line: 808, column: 15, scope: !4064)
!4157 = !DILocation(line: 808, column: 19, scope: !4064)
!4158 = !DILocation(line: 808, column: 3, scope: !4064)
!4159 = !DILocation(line: 809, column: 11, scope: !4064)
!4160 = !DILocation(line: 809, column: 15, scope: !4064)
!4161 = !DILocation(line: 809, column: 19, scope: !4064)
!4162 = !DILocation(line: 809, column: 23, scope: !4064)
!4163 = !DILocation(line: 809, column: 3, scope: !4064)
!4164 = !DILocation(line: 813, column: 11, scope: !4064)
!4165 = !DILocation(line: 813, column: 15, scope: !4064)
!4166 = !DILocation(line: 813, column: 19, scope: !4064)
!4167 = !DILocation(line: 813, column: 3, scope: !4064)
!4168 = !DILocation(line: 814, column: 11, scope: !4064)
!4169 = !DILocation(line: 814, column: 15, scope: !4064)
!4170 = !DILocation(line: 814, column: 19, scope: !4064)
!4171 = !DILocation(line: 814, column: 43, scope: !4064)
!4172 = !DILocation(line: 814, column: 3, scope: !4064)
!4173 = !DILocation(line: 817, column: 11, scope: !4064)
!4174 = !DILocation(line: 817, column: 15, scope: !4064)
!4175 = !DILocation(line: 817, column: 19, scope: !4064)
!4176 = !DILocation(line: 817, column: 23, scope: !4064)
!4177 = !DILocation(line: 817, column: 3, scope: !4064)
!4178 = !DILocation(line: 818, column: 11, scope: !4064)
!4179 = !DILocation(line: 818, column: 15, scope: !4064)
!4180 = !DILocation(line: 818, column: 19, scope: !4064)
!4181 = !DILocation(line: 818, column: 23, scope: !4064)
!4182 = !DILocation(line: 818, column: 3, scope: !4064)
!4183 = !DILocation(line: 819, column: 11, scope: !4064)
!4184 = !DILocation(line: 819, column: 15, scope: !4064)
!4185 = !DILocation(line: 819, column: 19, scope: !4064)
!4186 = !DILocation(line: 819, column: 23, scope: !4064)
!4187 = !DILocation(line: 819, column: 3, scope: !4064)
!4188 = !DILocation(line: 831, column: 1, scope: !4037)
!4189 = distinct !DISubprogram(name: "dup_point_montgomery", scope: !3, file: !3, line: 834, type: !2154, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4190)
!4190 = !{!4191, !4192, !4193}
!4191 = !DILocalVariable(name: "result", arg: 1, scope: !4189, file: !3, line: 834, type: !81)
!4192 = !DILocalVariable(name: "point", arg: 2, scope: !4189, file: !3, line: 835, type: !81)
!4193 = !DILocalVariable(name: "ctx", arg: 3, scope: !4189, file: !3, line: 835, type: !58)
!4194 = !DILocation(line: 834, column: 44, scope: !4189)
!4195 = !DILocation(line: 835, column: 15, scope: !4189)
!4196 = !DILocation(line: 835, column: 41, scope: !4189)
!4197 = !DILocation(line: 837, column: 8, scope: !4189)
!4198 = !DILocation(line: 838, column: 8, scope: !4189)
!4199 = !DILocation(line: 839, column: 8, scope: !4189)
!4200 = !DILocation(line: 840, column: 2, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 840, column: 2)
!4202 = !DILocation(line: 840, column: 2, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 840, column: 2)
!4204 = !DILocation(line: 842, column: 1, scope: !4189)
!4205 = distinct !DISubprogram(name: "dup_point_edwards", scope: !3, file: !3, line: 845, type: !2154, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4206)
!4206 = !{!4207, !4208, !4209}
!4207 = !DILocalVariable(name: "result", arg: 1, scope: !4205, file: !3, line: 845, type: !81)
!4208 = !DILocalVariable(name: "point", arg: 2, scope: !4205, file: !3, line: 846, type: !81)
!4209 = !DILocalVariable(name: "ctx", arg: 3, scope: !4205, file: !3, line: 846, type: !58)
!4210 = !DILocation(line: 845, column: 41, scope: !4205)
!4211 = !DILocation(line: 846, column: 13, scope: !4205)
!4212 = !DILocation(line: 846, column: 39, scope: !4205)
!4213 = !DILocation(line: 865, column: 2, scope: !4205)
!4214 = !DILocation(line: 865, column: 7, scope: !4205)
!4215 = !DILocation(line: 865, column: 12, scope: !4205)
!4216 = !DILocation(line: 865, column: 15, scope: !4205)
!4217 = !DILocation(line: 865, column: 19, scope: !4205)
!4218 = !DILocation(line: 865, column: 23, scope: !4205)
!4219 = !DILocation(line: 866, column: 2, scope: !4205)
!4220 = !DILocation(line: 866, column: 7, scope: !4205)
!4221 = !DILocation(line: 866, column: 12, scope: !4205)
!4222 = !DILocation(line: 866, column: 15, scope: !4205)
!4223 = !DILocation(line: 866, column: 18, scope: !4205)
!4224 = !DILocation(line: 870, column: 2, scope: !4205)
!4225 = !DILocation(line: 870, column: 7, scope: !4205)
!4226 = !DILocation(line: 870, column: 12, scope: !4205)
!4227 = !DILocation(line: 870, column: 15, scope: !4205)
!4228 = !DILocation(line: 870, column: 19, scope: !4205)
!4229 = !DILocation(line: 871, column: 2, scope: !4205)
!4230 = !DILocation(line: 871, column: 7, scope: !4205)
!4231 = !DILocation(line: 871, column: 12, scope: !4205)
!4232 = !DILocation(line: 871, column: 15, scope: !4205)
!4233 = !DILocation(line: 871, column: 19, scope: !4205)
!4234 = !DILocation(line: 874, column: 6, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 874, column: 6)
!4236 = !DILocation(line: 874, column: 11, scope: !4235)
!4237 = !DILocation(line: 874, column: 19, scope: !4235)
!4238 = !DILocation(line: 874, column: 6, scope: !4205)
!4239 = !DILocation(line: 875, column: 3, scope: !4235)
!4240 = !DILocation(line: 875, column: 8, scope: !4235)
!4241 = !DILocation(line: 875, column: 13, scope: !4235)
!4242 = !DILocation(line: 875, column: 16, scope: !4235)
!4243 = !DILocation(line: 875, column: 21, scope: !4235)
!4244 = !DILocation(line: 875, column: 24, scope: !4235)
!4245 = !DILocation(line: 875, column: 27, scope: !4235)
!4246 = !DILocation(line: 877, column: 3, scope: !4235)
!4247 = !DILocation(line: 877, column: 8, scope: !4235)
!4248 = !DILocation(line: 877, column: 13, scope: !4235)
!4249 = !DILocation(line: 877, column: 16, scope: !4235)
!4250 = !DILocation(line: 877, column: 21, scope: !4235)
!4251 = !DILocation(line: 877, column: 24, scope: !4235)
!4252 = !DILocation(line: 877, column: 27, scope: !4235)
!4253 = !DILocation(line: 880, column: 2, scope: !4205)
!4254 = !DILocation(line: 880, column: 7, scope: !4205)
!4255 = !DILocation(line: 880, column: 12, scope: !4205)
!4256 = !DILocation(line: 880, column: 15, scope: !4205)
!4257 = !DILocation(line: 880, column: 18, scope: !4205)
!4258 = !DILocation(line: 880, column: 21, scope: !4205)
!4259 = !DILocation(line: 883, column: 2, scope: !4205)
!4260 = !DILocation(line: 883, column: 7, scope: !4205)
!4261 = !DILocation(line: 883, column: 12, scope: !4205)
!4262 = !DILocation(line: 883, column: 15, scope: !4205)
!4263 = !DILocation(line: 883, column: 19, scope: !4205)
!4264 = !DILocation(line: 886, column: 2, scope: !4205)
!4265 = !DILocation(line: 886, column: 7, scope: !4205)
!4266 = !DILocation(line: 886, column: 12, scope: !4205)
!4267 = !DILocation(line: 886, column: 15, scope: !4205)
!4268 = !DILocation(line: 886, column: 18, scope: !4205)
!4269 = !DILocation(line: 887, column: 2, scope: !4205)
!4270 = !DILocation(line: 887, column: 7, scope: !4205)
!4271 = !DILocation(line: 887, column: 12, scope: !4205)
!4272 = !DILocation(line: 887, column: 15, scope: !4205)
!4273 = !DILocation(line: 887, column: 18, scope: !4205)
!4274 = !DILocation(line: 887, column: 21, scope: !4205)
!4275 = !DILocation(line: 890, column: 2, scope: !4205)
!4276 = !DILocation(line: 890, column: 7, scope: !4205)
!4277 = !DILocation(line: 890, column: 12, scope: !4205)
!4278 = !DILocation(line: 890, column: 16, scope: !4205)
!4279 = !DILocation(line: 890, column: 19, scope: !4205)
!4280 = !DILocation(line: 890, column: 22, scope: !4205)
!4281 = !DILocation(line: 891, column: 2, scope: !4205)
!4282 = !DILocation(line: 891, column: 7, scope: !4205)
!4283 = !DILocation(line: 891, column: 12, scope: !4205)
!4284 = !DILocation(line: 891, column: 16, scope: !4205)
!4285 = !DILocation(line: 891, column: 20, scope: !4205)
!4286 = !DILocation(line: 891, column: 23, scope: !4205)
!4287 = !DILocation(line: 892, column: 2, scope: !4205)
!4288 = !DILocation(line: 892, column: 7, scope: !4205)
!4289 = !DILocation(line: 892, column: 12, scope: !4205)
!4290 = !DILocation(line: 892, column: 16, scope: !4205)
!4291 = !DILocation(line: 892, column: 20, scope: !4205)
!4292 = !DILocation(line: 892, column: 23, scope: !4205)
!4293 = !DILocation(line: 895, column: 2, scope: !4205)
!4294 = !DILocation(line: 895, column: 7, scope: !4205)
!4295 = !DILocation(line: 895, column: 12, scope: !4205)
!4296 = !DILocation(line: 895, column: 16, scope: !4205)
!4297 = !DILocation(line: 895, column: 19, scope: !4205)
!4298 = !DILocation(line: 895, column: 22, scope: !4205)
!4299 = !DILocation(line: 896, column: 2, scope: !4205)
!4300 = !DILocation(line: 896, column: 7, scope: !4205)
!4301 = !DILocation(line: 896, column: 12, scope: !4205)
!4302 = !DILocation(line: 896, column: 16, scope: !4205)
!4303 = !DILocation(line: 896, column: 20, scope: !4205)
!4304 = !DILocation(line: 896, column: 23, scope: !4205)
!4305 = !DILocation(line: 899, column: 2, scope: !4205)
!4306 = !DILocation(line: 899, column: 7, scope: !4205)
!4307 = !DILocation(line: 899, column: 12, scope: !4205)
!4308 = !DILocation(line: 899, column: 16, scope: !4205)
!4309 = !DILocation(line: 899, column: 19, scope: !4205)
!4310 = !DILocation(line: 899, column: 22, scope: !4205)
!4311 = !DILocation(line: 914, column: 1, scope: !4205)
!4312 = distinct !DISubprogram(name: "ec_get_a_is_pminus3", scope: !3, file: !3, line: 493, type: !4313, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!64, !58}
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "ec", arg: 1, scope: !4312, file: !3, line: 493, type: !58)
!4317 = !DILocalVariable(name: "tmp", scope: !4312, file: !3, line: 495, type: !67)
!4318 = !DILocation(line: 493, column: 51, scope: !4312)
!4319 = !DILocation(line: 495, column: 2, scope: !4312)
!4320 = !DILocation(line: 495, column: 6, scope: !4312)
!4321 = !DILocation(line: 497, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 497, column: 6)
!4323 = !DILocation(line: 497, column: 11, scope: !4322)
!4324 = !DILocation(line: 497, column: 13, scope: !4322)
!4325 = !DILocation(line: 497, column: 19, scope: !4322)
!4326 = !DILocation(line: 497, column: 6, scope: !4312)
!4327 = !DILocation(line: 498, column: 3, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 497, column: 33)
!4329 = !DILocation(line: 498, column: 7, scope: !4328)
!4330 = !DILocation(line: 498, column: 9, scope: !4328)
!4331 = !DILocation(line: 498, column: 28, scope: !4328)
!4332 = !DILocation(line: 499, column: 24, scope: !4328)
!4333 = !DILocation(line: 499, column: 28, scope: !4328)
!4334 = !DILocation(line: 499, column: 9, scope: !4328)
!4335 = !DILocation(line: 499, column: 7, scope: !4328)
!4336 = !DILocation(line: 500, column: 14, scope: !4328)
!4337 = !DILocation(line: 500, column: 19, scope: !4328)
!4338 = !DILocation(line: 500, column: 23, scope: !4328)
!4339 = !DILocation(line: 500, column: 3, scope: !4328)
!4340 = !DILocation(line: 501, column: 33, scope: !4328)
!4341 = !DILocation(line: 501, column: 37, scope: !4328)
!4342 = !DILocation(line: 501, column: 40, scope: !4328)
!4343 = !DILocation(line: 501, column: 25, scope: !4328)
!4344 = !DILocation(line: 501, column: 24, scope: !4328)
!4345 = !DILocation(line: 501, column: 3, scope: !4328)
!4346 = !DILocation(line: 501, column: 7, scope: !4328)
!4347 = !DILocation(line: 501, column: 9, scope: !4328)
!4348 = !DILocation(line: 501, column: 22, scope: !4328)
!4349 = !DILocation(line: 502, column: 12, scope: !4328)
!4350 = !DILocation(line: 502, column: 3, scope: !4328)
!4351 = !DILocation(line: 503, column: 2, scope: !4328)
!4352 = !DILocation(line: 505, column: 9, scope: !4312)
!4353 = !DILocation(line: 505, column: 13, scope: !4312)
!4354 = !DILocation(line: 505, column: 15, scope: !4312)
!4355 = !DILocation(line: 506, column: 1, scope: !4312)
!4356 = !DILocation(line: 505, column: 2, scope: !4312)
!4357 = !DISubprogram(name: "mpi_sub_ui", scope: !6, file: !6, line: 126, type: !4358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!64, !67, !67, !44}
!4360 = !DISubprogram(name: "mpi_swap_cond", scope: !6, file: !6, line: 62, type: !4361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !67, !67, !44}
!4363 = !DISubprogram(name: "mpi_powm", scope: !6, file: !6, line: 118, type: !4364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!64, !67, !67, !67, !67}
