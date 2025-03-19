; ModuleID = 'lib/crypto/mpi/mpi-mod.c'
source_filename = "lib/crypto/mpi/mpi-mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.barrett_ctx_s = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_mod(ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) #0 align 16 !dbg !40 {
entry:
  %rem.addr = alloca ptr, align 8
  %dividend.addr = alloca ptr, align 8
  %divisor.addr = alloca ptr, align 8
  store ptr %rem, ptr %rem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rem.addr, metadata !58, metadata !DIExpression()), !dbg !61
  store ptr %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !59, metadata !DIExpression()), !dbg !62
  store ptr %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !60, metadata !DIExpression()), !dbg !63
  %0 = load ptr, ptr %rem.addr, align 8, !dbg !64
  %1 = load ptr, ptr %dividend.addr, align 8, !dbg !65
  %2 = load ptr, ptr %divisor.addr, align 8, !dbg !66
  call void @mpi_fdiv_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !67
  ret void, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !69 dso_local void @mpi_fdiv_r(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_barrett_init(ptr noundef %m, i32 noundef %copy) #0 align 16 !dbg !70 {
entry:
  %retval = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %copy.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !85, metadata !DIExpression()), !dbg !89
  store i32 %copy, ptr %copy.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %copy.addr, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !88, metadata !DIExpression()), !dbg !94
  %0 = load ptr, ptr %m.addr, align 8, !dbg !95
  call void @mpi_normalize(ptr noundef %0) #13, !dbg !96
  %call = call noalias ptr @kcalloc(i64 noundef 1, i64 noundef 48, i32 noundef 3264) #15, !dbg !97
  store ptr %call, ptr %ctx, align 8, !dbg !98
  %1 = load ptr, ptr %ctx, align 8, !dbg !99
  %tobool = icmp ne ptr %1, null, !dbg !99
  br i1 %tobool, label %if.end, label %if.then, !dbg !101

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !102

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %copy.addr, align 4, !dbg !103
  %tobool1 = icmp ne i32 %2, 0, !dbg !103
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !105

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %m.addr, align 8, !dbg !106
  %call3 = call ptr @mpi_copy(ptr noundef %3) #13, !dbg !108
  %4 = load ptr, ptr %ctx, align 8, !dbg !109
  %m4 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 0, !dbg !110
  store ptr %call3, ptr %m4, align 8, !dbg !111
  %5 = load ptr, ptr %ctx, align 8, !dbg !112
  %m_copied = getelementptr inbounds %struct.barrett_ctx_s, ptr %5, i32 0, i32 1, !dbg !113
  store i32 1, ptr %m_copied, align 8, !dbg !114
  br label %if.end6, !dbg !115

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %m.addr, align 8, !dbg !116
  %7 = load ptr, ptr %ctx, align 8, !dbg !117
  %m5 = getelementptr inbounds %struct.barrett_ctx_s, ptr %7, i32 0, i32 0, !dbg !118
  store ptr %6, ptr %m5, align 8, !dbg !119
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %m.addr, align 8, !dbg !120
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 1, !dbg !120
  %9 = load i32, ptr %nlimbs, align 4, !dbg !120
  %10 = load ptr, ptr %ctx, align 8, !dbg !121
  %k = getelementptr inbounds %struct.barrett_ctx_s, ptr %10, i32 0, i32 2, !dbg !122
  store i32 %9, ptr %k, align 4, !dbg !123
  %11 = load ptr, ptr %ctx, align 8, !dbg !124
  %k7 = getelementptr inbounds %struct.barrett_ctx_s, ptr %11, i32 0, i32 2, !dbg !125
  %12 = load i32, ptr %k7, align 4, !dbg !125
  %add = add i32 %12, 1, !dbg !126
  %call8 = call ptr @mpi_alloc(i32 noundef %add) #13, !dbg !127
  store ptr %call8, ptr %tmp, align 8, !dbg !128
  %13 = load ptr, ptr %tmp, align 8, !dbg !129
  %call9 = call ptr @mpi_set_ui(ptr noundef %13, i64 noundef 1) #13, !dbg !130
  %14 = load ptr, ptr %tmp, align 8, !dbg !131
  %15 = load ptr, ptr %ctx, align 8, !dbg !132
  %k10 = getelementptr inbounds %struct.barrett_ctx_s, ptr %15, i32 0, i32 2, !dbg !133
  %16 = load i32, ptr %k10, align 4, !dbg !133
  %mul = mul i32 2, %16, !dbg !134
  call void @mpi_lshift_limbs(ptr noundef %14, i32 noundef %mul) #13, !dbg !135
  %17 = load ptr, ptr %tmp, align 8, !dbg !136
  %18 = load ptr, ptr %tmp, align 8, !dbg !137
  %19 = load ptr, ptr %m.addr, align 8, !dbg !138
  call void @mpi_fdiv_q(ptr noundef %17, ptr noundef %18, ptr noundef %19) #13, !dbg !139
  %20 = load ptr, ptr %tmp, align 8, !dbg !140
  %21 = load ptr, ptr %ctx, align 8, !dbg !141
  %y = getelementptr inbounds %struct.barrett_ctx_s, ptr %21, i32 0, i32 3, !dbg !142
  store ptr %20, ptr %y, align 8, !dbg !143
  %22 = load ptr, ptr %ctx, align 8, !dbg !144
  %k11 = getelementptr inbounds %struct.barrett_ctx_s, ptr %22, i32 0, i32 2, !dbg !145
  %23 = load i32, ptr %k11, align 4, !dbg !145
  %mul12 = mul i32 2, %23, !dbg !146
  %add13 = add i32 %mul12, 1, !dbg !147
  %call14 = call ptr @mpi_alloc(i32 noundef %add13) #13, !dbg !148
  %24 = load ptr, ptr %ctx, align 8, !dbg !149
  %r1 = getelementptr inbounds %struct.barrett_ctx_s, ptr %24, i32 0, i32 4, !dbg !150
  store ptr %call14, ptr %r1, align 8, !dbg !151
  %25 = load ptr, ptr %ctx, align 8, !dbg !152
  %k15 = getelementptr inbounds %struct.barrett_ctx_s, ptr %25, i32 0, i32 2, !dbg !153
  %26 = load i32, ptr %k15, align 4, !dbg !153
  %mul16 = mul i32 2, %26, !dbg !154
  %add17 = add i32 %mul16, 1, !dbg !155
  %call18 = call ptr @mpi_alloc(i32 noundef %add17) #13, !dbg !156
  %27 = load ptr, ptr %ctx, align 8, !dbg !157
  %r2 = getelementptr inbounds %struct.barrett_ctx_s, ptr %27, i32 0, i32 5, !dbg !158
  store ptr %call18, ptr %r2, align 8, !dbg !159
  %28 = load ptr, ptr %ctx, align 8, !dbg !160
  store ptr %28, ptr %retval, align 8, !dbg !161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !161

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !162
  %29 = load ptr, ptr %retval, align 8, !dbg !162
  ret ptr %29, !dbg !162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !163 dso_local void @mpi_normalize(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !166 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !174, metadata !DIExpression()), !dbg !177
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !175, metadata !DIExpression()), !dbg !178
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !176, metadata !DIExpression()), !dbg !179
  %0 = load i64, ptr %n.addr, align 8, !dbg !180
  %1 = load i64, ptr %size.addr, align 8, !dbg !181
  %2 = load i32, ptr %flags.addr, align 4, !dbg !182
  %or = or i32 %2, 256, !dbg !183
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #15, !dbg !184
  ret ptr %call, !dbg !185
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !186 dso_local ptr @mpi_copy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !189 dso_local ptr @mpi_alloc(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !192 dso_local ptr @mpi_set_ui(ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !195 dso_local void @mpi_lshift_limbs(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !198 dso_local void @mpi_fdiv_q(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_barrett_free(ptr noundef %ctx) #0 align 16 !dbg !199 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !205
  %tobool = icmp ne ptr %0, null, !dbg !205
  br i1 %tobool, label %if.then, label %if.end7, !dbg !207

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !208
  %y = getelementptr inbounds %struct.barrett_ctx_s, ptr %1, i32 0, i32 3, !dbg !210
  %2 = load ptr, ptr %y, align 8, !dbg !210
  call void @mpi_free(ptr noundef %2) #13, !dbg !211
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !212
  %r1 = getelementptr inbounds %struct.barrett_ctx_s, ptr %3, i32 0, i32 4, !dbg !213
  %4 = load ptr, ptr %r1, align 8, !dbg !213
  call void @mpi_free(ptr noundef %4) #13, !dbg !214
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !215
  %r2 = getelementptr inbounds %struct.barrett_ctx_s, ptr %5, i32 0, i32 5, !dbg !216
  %6 = load ptr, ptr %r2, align 8, !dbg !216
  call void @mpi_free(ptr noundef %6) #13, !dbg !217
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !218
  %r3 = getelementptr inbounds %struct.barrett_ctx_s, ptr %7, i32 0, i32 6, !dbg !220
  %8 = load ptr, ptr %r3, align 8, !dbg !220
  %tobool1 = icmp ne ptr %8, null, !dbg !218
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !221

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !222
  %r33 = getelementptr inbounds %struct.barrett_ctx_s, ptr %9, i32 0, i32 6, !dbg !223
  %10 = load ptr, ptr %r33, align 8, !dbg !223
  call void @mpi_free(ptr noundef %10) #13, !dbg !224
  br label %if.end, !dbg !224

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !225
  %m_copied = getelementptr inbounds %struct.barrett_ctx_s, ptr %11, i32 0, i32 1, !dbg !227
  %12 = load i32, ptr %m_copied, align 8, !dbg !227
  %tobool4 = icmp ne i32 %12, 0, !dbg !225
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !228

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !229
  %m = getelementptr inbounds %struct.barrett_ctx_s, ptr %13, i32 0, i32 0, !dbg !230
  %14 = load ptr, ptr %m, align 8, !dbg !230
  call void @mpi_free(ptr noundef %14) #13, !dbg !231
  br label %if.end6, !dbg !231

if.end6:                                          ; preds = %if.then5, %if.end
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !232
  call void @kfree(ptr noundef %15) #13, !dbg !233
  br label %if.end7, !dbg !234

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !236 dso_local void @mpi_free(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !237 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_mod_barrett(ptr noundef %r, ptr noundef %x, ptr noundef %ctx) #0 align 16 !dbg !242 {
entry:
  %r.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %k = alloca i32, align 4
  %y = alloca ptr, align 8
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %sign = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !246, metadata !DIExpression()), !dbg !255
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !247, metadata !DIExpression()), !dbg !256
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !248, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #14, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %m, metadata !249, metadata !DIExpression()), !dbg !259
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !260
  %m1 = getelementptr inbounds %struct.barrett_ctx_s, ptr %0, i32 0, i32 0, !dbg !261
  %1 = load ptr, ptr %m1, align 8, !dbg !261
  store ptr %1, ptr %m, align 8, !dbg !259
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %k, metadata !250, metadata !DIExpression()), !dbg !263
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !264
  %k2 = getelementptr inbounds %struct.barrett_ctx_s, ptr %2, i32 0, i32 2, !dbg !265
  %3 = load i32, ptr %k2, align 4, !dbg !265
  store i32 %3, ptr %k, align 4, !dbg !263
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #14, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %y, metadata !251, metadata !DIExpression()), !dbg !267
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !268
  %y3 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 3, !dbg !269
  %5 = load ptr, ptr %y3, align 8, !dbg !269
  store ptr %5, ptr %y, align 8, !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #14, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %r1, metadata !252, metadata !DIExpression()), !dbg !271
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !272
  %r14 = getelementptr inbounds %struct.barrett_ctx_s, ptr %6, i32 0, i32 4, !dbg !273
  %7 = load ptr, ptr %r14, align 8, !dbg !273
  store ptr %7, ptr %r1, align 8, !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2) #14, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %r2, metadata !253, metadata !DIExpression()), !dbg !275
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !276
  %r25 = getelementptr inbounds %struct.barrett_ctx_s, ptr %8, i32 0, i32 5, !dbg !277
  %9 = load ptr, ptr %r25, align 8, !dbg !277
  store ptr %9, ptr %r2, align 8, !dbg !275
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #14, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %sign, metadata !254, metadata !DIExpression()), !dbg !279
  %10 = load ptr, ptr %x.addr, align 8, !dbg !280
  call void @mpi_normalize(ptr noundef %10) #13, !dbg !281
  %11 = load ptr, ptr %x.addr, align 8, !dbg !282
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 1, !dbg !282
  %12 = load i32, ptr %nlimbs, align 4, !dbg !282
  %13 = load i32, ptr %k, align 4, !dbg !284
  %mul = mul i32 2, %13, !dbg !285
  %cmp = icmp sgt i32 %12, %mul, !dbg !286
  br i1 %cmp, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %r.addr, align 8, !dbg !288
  %15 = load ptr, ptr %x.addr, align 8, !dbg !290
  %16 = load ptr, ptr %m, align 8, !dbg !291
  call void @mpi_mod(ptr noundef %14, ptr noundef %15, ptr noundef %16) #13, !dbg !292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !293

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %x.addr, align 8, !dbg !294
  %sign6 = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 3, !dbg !295
  %18 = load i32, ptr %sign6, align 4, !dbg !295
  store i32 %18, ptr %sign, align 4, !dbg !296
  %19 = load ptr, ptr %x.addr, align 8, !dbg !297
  %sign7 = getelementptr inbounds %struct.gcry_mpi, ptr %19, i32 0, i32 3, !dbg !298
  store i32 0, ptr %sign7, align 4, !dbg !299
  %20 = load ptr, ptr %r2, align 8, !dbg !300
  %21 = load ptr, ptr %x.addr, align 8, !dbg !301
  %call = call ptr @mpi_set(ptr noundef %20, ptr noundef %21) #13, !dbg !302
  %22 = load ptr, ptr %r2, align 8, !dbg !303
  %23 = load i32, ptr %k, align 4, !dbg !304
  %sub = sub i32 %23, 1, !dbg !305
  call void @mpi_rshift_limbs(ptr noundef %22, i32 noundef %sub) #13, !dbg !306
  %24 = load ptr, ptr %r2, align 8, !dbg !307
  %25 = load ptr, ptr %r2, align 8, !dbg !308
  %26 = load ptr, ptr %y, align 8, !dbg !309
  call void @mpi_mul(ptr noundef %24, ptr noundef %25, ptr noundef %26) #13, !dbg !310
  %27 = load ptr, ptr %r2, align 8, !dbg !311
  %28 = load i32, ptr %k, align 4, !dbg !312
  %add = add i32 %28, 1, !dbg !313
  call void @mpi_rshift_limbs(ptr noundef %27, i32 noundef %add) #13, !dbg !314
  %29 = load ptr, ptr %r1, align 8, !dbg !315
  %30 = load ptr, ptr %x.addr, align 8, !dbg !316
  %call8 = call ptr @mpi_set(ptr noundef %29, ptr noundef %30) #13, !dbg !317
  %31 = load ptr, ptr %r1, align 8, !dbg !318
  %nlimbs9 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 1, !dbg !320
  %32 = load i32, ptr %nlimbs9, align 4, !dbg !320
  %33 = load i32, ptr %k, align 4, !dbg !321
  %add10 = add i32 %33, 1, !dbg !322
  %cmp11 = icmp sgt i32 %32, %add10, !dbg !323
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !324

if.then12:                                        ; preds = %if.end
  %34 = load i32, ptr %k, align 4, !dbg !325
  %add13 = add i32 %34, 1, !dbg !326
  %35 = load ptr, ptr %r1, align 8, !dbg !327
  %nlimbs14 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 1, !dbg !328
  store i32 %add13, ptr %nlimbs14, align 4, !dbg !329
  br label %if.end15, !dbg !327

if.end15:                                         ; preds = %if.then12, %if.end
  %36 = load ptr, ptr %r2, align 8, !dbg !330
  %37 = load ptr, ptr %r2, align 8, !dbg !331
  %38 = load ptr, ptr %m, align 8, !dbg !332
  call void @mpi_mul(ptr noundef %36, ptr noundef %37, ptr noundef %38) #13, !dbg !333
  %39 = load ptr, ptr %r2, align 8, !dbg !334
  %nlimbs16 = getelementptr inbounds %struct.gcry_mpi, ptr %39, i32 0, i32 1, !dbg !336
  %40 = load i32, ptr %nlimbs16, align 4, !dbg !336
  %41 = load i32, ptr %k, align 4, !dbg !337
  %add17 = add i32 %41, 1, !dbg !338
  %cmp18 = icmp sgt i32 %40, %add17, !dbg !339
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !340

if.then19:                                        ; preds = %if.end15
  %42 = load i32, ptr %k, align 4, !dbg !341
  %add20 = add i32 %42, 1, !dbg !342
  %43 = load ptr, ptr %r2, align 8, !dbg !343
  %nlimbs21 = getelementptr inbounds %struct.gcry_mpi, ptr %43, i32 0, i32 1, !dbg !344
  store i32 %add20, ptr %nlimbs21, align 4, !dbg !345
  br label %if.end22, !dbg !343

if.end22:                                         ; preds = %if.then19, %if.end15
  %44 = load ptr, ptr %r.addr, align 8, !dbg !346
  %45 = load ptr, ptr %r1, align 8, !dbg !347
  %46 = load ptr, ptr %r2, align 8, !dbg !348
  call void @mpi_sub(ptr noundef %44, ptr noundef %45, ptr noundef %46) #13, !dbg !349
  %47 = load ptr, ptr %r.addr, align 8, !dbg !350
  %sign23 = getelementptr inbounds %struct.gcry_mpi, ptr %47, i32 0, i32 3, !dbg !350
  %48 = load i32, ptr %sign23, align 4, !dbg !350
  %tobool = icmp ne i32 %48, 0, !dbg !350
  br i1 %tobool, label %if.then24, label %if.end36, !dbg !352

if.then24:                                        ; preds = %if.end22
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !353
  %r3 = getelementptr inbounds %struct.barrett_ctx_s, ptr %49, i32 0, i32 6, !dbg !356
  %50 = load ptr, ptr %r3, align 8, !dbg !356
  %tobool25 = icmp ne ptr %50, null, !dbg !353
  br i1 %tobool25, label %if.end34, label %if.then26, !dbg !357

if.then26:                                        ; preds = %if.then24
  %51 = load i32, ptr %k, align 4, !dbg !358
  %add27 = add i32 %51, 2, !dbg !360
  %call28 = call ptr @mpi_alloc(i32 noundef %add27) #13, !dbg !361
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !362
  %r329 = getelementptr inbounds %struct.barrett_ctx_s, ptr %52, i32 0, i32 6, !dbg !363
  store ptr %call28, ptr %r329, align 8, !dbg !364
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !365
  %r330 = getelementptr inbounds %struct.barrett_ctx_s, ptr %53, i32 0, i32 6, !dbg !366
  %54 = load ptr, ptr %r330, align 8, !dbg !366
  %call31 = call ptr @mpi_set_ui(ptr noundef %54, i64 noundef 1) #13, !dbg !367
  %55 = load ptr, ptr %ctx.addr, align 8, !dbg !368
  %r332 = getelementptr inbounds %struct.barrett_ctx_s, ptr %55, i32 0, i32 6, !dbg !369
  %56 = load ptr, ptr %r332, align 8, !dbg !369
  %57 = load i32, ptr %k, align 4, !dbg !370
  %add33 = add i32 %57, 1, !dbg !371
  call void @mpi_lshift_limbs(ptr noundef %56, i32 noundef %add33) #13, !dbg !372
  br label %if.end34, !dbg !373

if.end34:                                         ; preds = %if.then26, %if.then24
  %58 = load ptr, ptr %r.addr, align 8, !dbg !374
  %59 = load ptr, ptr %r.addr, align 8, !dbg !375
  %60 = load ptr, ptr %ctx.addr, align 8, !dbg !376
  %r335 = getelementptr inbounds %struct.barrett_ctx_s, ptr %60, i32 0, i32 6, !dbg !377
  %61 = load ptr, ptr %r335, align 8, !dbg !377
  call void @mpi_add(ptr noundef %58, ptr noundef %59, ptr noundef %61) #13, !dbg !378
  br label %if.end36, !dbg !379

if.end36:                                         ; preds = %if.end34, %if.end22
  br label %while.cond, !dbg !380

while.cond:                                       ; preds = %while.body, %if.end36
  %62 = load ptr, ptr %r.addr, align 8, !dbg !381
  %63 = load ptr, ptr %m, align 8, !dbg !382
  %call37 = call i32 @mpi_cmp(ptr noundef %62, ptr noundef %63) #13, !dbg !383
  %cmp38 = icmp sge i32 %call37, 0, !dbg !384
  br i1 %cmp38, label %while.body, label %while.end, !dbg !380

while.body:                                       ; preds = %while.cond
  %64 = load ptr, ptr %r.addr, align 8, !dbg !385
  %65 = load ptr, ptr %r.addr, align 8, !dbg !386
  %66 = load ptr, ptr %m, align 8, !dbg !387
  call void @mpi_sub(ptr noundef %64, ptr noundef %65, ptr noundef %66) #13, !dbg !388
  br label %while.cond, !dbg !380, !llvm.loop !389

while.end:                                        ; preds = %while.cond
  %67 = load i32, ptr %sign, align 4, !dbg !393
  %68 = load ptr, ptr %x.addr, align 8, !dbg !394
  %sign39 = getelementptr inbounds %struct.gcry_mpi, ptr %68, i32 0, i32 3, !dbg !395
  store i32 %67, ptr %sign39, align 4, !dbg !396
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !397
  br label %cleanup, !dbg !397

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #14, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2) #14, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #14, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #14, !dbg !397
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #14, !dbg !397
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !397

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !398 dso_local ptr @mpi_set(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !401 dso_local void @mpi_rshift_limbs(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !402 dso_local void @mpi_mul(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !403 dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !404 dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !405 dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_mul_barrett(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %ctx) #0 align 16 !dbg !408 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !412, metadata !DIExpression()), !dbg !416
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !413, metadata !DIExpression()), !dbg !417
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !414, metadata !DIExpression()), !dbg !418
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !415, metadata !DIExpression()), !dbg !419
  %0 = load ptr, ptr %w.addr, align 8, !dbg !420
  %1 = load ptr, ptr %u.addr, align 8, !dbg !421
  %2 = load ptr, ptr %v.addr, align 8, !dbg !422
  call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !423
  %3 = load ptr, ptr %w.addr, align 8, !dbg !424
  %4 = load ptr, ptr %w.addr, align 8, !dbg !425
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !426
  call void @mpi_mod_barrett(ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !dbg !427
  ret void, !dbg !428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !429 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !431, metadata !DIExpression()), !dbg !435
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !432, metadata !DIExpression()), !dbg !436
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !433, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !434, metadata !DIExpression()), !dbg !439
  %0 = load i64, ptr %n.addr, align 8, !dbg !440
  %1 = load i64, ptr %size.addr, align 8, !dbg !440
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !440
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !440
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !440
  store i64 %4, ptr %bytes, align 8, !dbg !440
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #13, !dbg !440
  %lnot = xor i1 %call, true, !dbg !440
  %lnot1 = xor i1 %lnot, true, !dbg !440
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !440
  %conv = sext i32 %lnot.ext to i64, !dbg !440
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !440
  %tobool = icmp ne i64 %expval, 0, !dbg !440
  br i1 %tobool, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !443

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !444
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !446
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !447

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !448
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !449
  br i1 %8, label %if.then2, label %if.end4, !dbg !450

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !451
  %10 = load i32, ptr %flags.addr, align 4, !dbg !452
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #16, !dbg !453
  store ptr %call3, ptr %retval, align 8, !dbg !454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !454

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !455
  %12 = load i32, ptr %flags.addr, align 4, !dbg !456
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #16, !dbg !457
  store ptr %call5, ptr %retval, align 8, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !458

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !459
  %13 = load ptr, ptr %retval, align 8, !dbg !459
  ret ptr %13, !dbg !459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !460 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !469, !range !470, !noundef !471
  %tobool = trunc i8 %0 to i1, !dbg !469
  %lnot = xor i1 %tobool, true, !dbg !469
  %lnot1 = xor i1 %lnot, true, !dbg !469
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !469
  %conv = sext i32 %lnot.ext to i64, !dbg !469
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !469
  %tobool2 = icmp ne i64 %expval, 0, !dbg !469
  ret i1 %tobool2, !dbg !472
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !473 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !477, metadata !DIExpression()), !dbg !482
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !478, metadata !DIExpression()), !dbg !483
  %0 = load i64, ptr %size.addr, align 8, !dbg !484
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !485
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !486

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !487
  %tobool = icmp ne i64 %2, 0, !dbg !487
  br i1 %tobool, label %if.then, label %if.end7, !dbg !488

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %index, metadata !479, metadata !DIExpression()), !dbg !490
  %3 = load i64, ptr %size.addr, align 8, !dbg !491
  %cmp = icmp ugt i64 %3, 8192, !dbg !493
  br i1 %cmp, label %if.then1, label %if.end, !dbg !494

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !495
  %5 = load i32, ptr %flags.addr, align 4, !dbg !496
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !497
  store ptr %call, ptr %retval, align 8, !dbg !498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !499
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !499
  store i32 %call2, ptr %index, align 4, !dbg !500
  %7 = load i32, ptr %flags.addr, align 4, !dbg !501
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !502
  %9 = ptrtoint ptr %8 to i64, !dbg !502
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !503
  %idxprom = zext i32 %call3 to i64, !dbg !504
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !504
  %10 = load i32, ptr %index, align 4, !dbg !505
  %idxprom4 = zext i32 %10 to i64, !dbg !504
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !504
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !504
  %12 = load i32, ptr %flags.addr, align 4, !dbg !506
  %13 = load i64, ptr %size.addr, align 8, !dbg !507
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !508
  store ptr %call6, ptr %retval, align 8, !dbg !509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !509

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !510
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !511
  %15 = load i32, ptr %flags.addr, align 4, !dbg !512
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !513
  store ptr %call8, ptr %retval, align 8, !dbg !514
  br label %return, !dbg !514

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !515
  ret ptr %16, !dbg !515
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !516 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !517 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !518 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !522, metadata !DIExpression()), !dbg !524
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !523, metadata !DIExpression()), !dbg !525
  %0 = load i64, ptr %size.addr, align 8, !dbg !526
  %tobool = icmp ne i64 %0, 0, !dbg !526
  br i1 %tobool, label %if.end, label %if.then, !dbg !528

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !529
  br label %return, !dbg !529

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !530
  %cmp = icmp ule i64 %1, 8, !dbg !532
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !533

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !534
  br label %return, !dbg !534

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !535
  %cmp3 = icmp ugt i64 %2, 64, !dbg !537
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !538

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !539
  %cmp4 = icmp ule i64 %3, 96, !dbg !540
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !541

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !542
  br label %return, !dbg !542

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !543
  %cmp7 = icmp ugt i64 %4, 128, !dbg !545
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !546

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !547
  %cmp9 = icmp ule i64 %5, 192, !dbg !548
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !549

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !550
  br label %return, !dbg !550

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !551
  %cmp12 = icmp ule i64 %6, 8, !dbg !553
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !554

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !555
  br label %return, !dbg !555

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !556
  %cmp15 = icmp ule i64 %7, 16, !dbg !558
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !559

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !560
  br label %return, !dbg !560

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !561
  %cmp18 = icmp ule i64 %8, 32, !dbg !563
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !564

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !565
  br label %return, !dbg !565

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !566
  %cmp21 = icmp ule i64 %9, 64, !dbg !568
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !569

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !570
  br label %return, !dbg !570

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !571
  %cmp24 = icmp ule i64 %10, 128, !dbg !573
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !574

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !575
  br label %return, !dbg !575

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !576
  %cmp27 = icmp ule i64 %11, 256, !dbg !578
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !579

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !580
  br label %return, !dbg !580

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !581
  %cmp30 = icmp ule i64 %12, 512, !dbg !583
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !584

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !585
  br label %return, !dbg !585

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !586
  %cmp33 = icmp ule i64 %13, 1024, !dbg !588
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !589

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !590
  br label %return, !dbg !590

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !591
  %cmp36 = icmp ule i64 %14, 2048, !dbg !593
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !594

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !595
  br label %return, !dbg !595

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !596
  %cmp39 = icmp ule i64 %15, 4096, !dbg !598
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !599

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !600
  br label %return, !dbg !600

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !601
  %cmp42 = icmp ule i64 %16, 8192, !dbg !603
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !604

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !605
  br label %return, !dbg !605

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !606
  %cmp45 = icmp ule i64 %17, 16384, !dbg !608
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !609

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !610
  br label %return, !dbg !610

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !611
  %cmp48 = icmp ule i64 %18, 32768, !dbg !613
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !614

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !615
  br label %return, !dbg !615

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !616
  %cmp51 = icmp ule i64 %19, 65536, !dbg !618
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !619

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !620
  br label %return, !dbg !620

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !621
  %cmp54 = icmp ule i64 %20, 131072, !dbg !623
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !624

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !625
  br label %return, !dbg !625

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !626
  %cmp57 = icmp ule i64 %21, 262144, !dbg !628
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !629

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !630
  br label %return, !dbg !630

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !631
  %cmp60 = icmp ule i64 %22, 524288, !dbg !633
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !634

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !635
  br label %return, !dbg !635

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !636
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !638
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !639

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !641
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !643
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !644

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !645
  br label %return, !dbg !645

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !646, !range !470, !noundef !471
  %tobool69 = trunc i8 %25 to i1, !dbg !646
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !648

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !649

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #18, !dbg !650, !srcloc !653
  unreachable, !dbg !650

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !654

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !655

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !656

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !658

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !656

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !660, !srcloc !662
  br label %do.end75, !dbg !660

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !656

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !663
  br label %return, !dbg !663

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !664
  ret i32 %26, !dbg !664
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !665 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !671 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !675, metadata !DIExpression()), !dbg !677
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !676, metadata !DIExpression()), !dbg !678
  %0 = load i32, ptr %flags.addr, align 4, !dbg !679
  %and = and i32 %0, 17, !dbg !679
  %cmp = icmp eq i32 %and, 0, !dbg !679
  %lnot = xor i1 %cmp, true, !dbg !679
  %lnot1 = xor i1 %lnot, true, !dbg !679
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !679
  %conv = sext i32 %lnot.ext to i64, !dbg !679
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !679
  %tobool = icmp ne i64 %expval, 0, !dbg !679
  br i1 %tobool, label %if.then, label %if.end, !dbg !681

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !682
  br label %return, !dbg !682

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !683
  %and2 = and i32 %1, 1, !dbg !685
  %tobool3 = icmp ne i32 %and2, 0, !dbg !685
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !686

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !687
  br label %return, !dbg !687

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !688
  br label %return, !dbg !688

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !690
  ret i32 %2, !dbg !690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !691 dso_local void @__compiletime_assert_196() #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0,1) }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-mod.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_mod\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-mod.ll lib/crypto/mpi/mpi-mod.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !25, globals: !30, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "lib/crypto/mpi/mpi-mod.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d235b3af64af2bfcdd8125e3744e5a2e")
!9 = !{!10, !16}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!19 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!20 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!23 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!24 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!25 = !{!26, !28, !29}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !27, line: 154, baseType: !12)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!0}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "mpi_mod", scope: !8, file: !8, line: 25, type: !41, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !57)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !44, line: 40, baseType: !45)
!44 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !44, line: 29, size: 256, elements: !47)
!47 = !{!48, !50, !51, !52, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !46, file: !44, line: 30, baseType: !49, size: 32)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !46, file: !44, line: 31, baseType: !49, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !46, file: !44, line: 32, baseType: !49, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !46, file: !44, line: 33, baseType: !49, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !44, line: 34, baseType: !12, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !46, file: !44, line: 37, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !44, line: 26, baseType: !29)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: "rem", arg: 1, scope: !40, file: !8, line: 25, type: !43)
!59 = !DILocalVariable(name: "dividend", arg: 2, scope: !40, file: !8, line: 25, type: !43)
!60 = !DILocalVariable(name: "divisor", arg: 3, scope: !40, file: !8, line: 25, type: !43)
!61 = !DILocation(line: 25, column: 18, scope: !40)
!62 = !DILocation(line: 25, column: 27, scope: !40)
!63 = !DILocation(line: 25, column: 41, scope: !40)
!64 = !DILocation(line: 27, column: 13, scope: !40)
!65 = !DILocation(line: 27, column: 18, scope: !40)
!66 = !DILocation(line: 27, column: 28, scope: !40)
!67 = !DILocation(line: 27, column: 2, scope: !40)
!68 = !DILocation(line: 28, column: 1, scope: !40)
!69 = !DISubprogram(name: "mpi_fdiv_r", scope: !44, file: !44, line: 154, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = distinct !DISubprogram(name: "mpi_barrett_init", scope: !8, file: !8, line: 36, type: !71, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !84)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !43, !49}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_barrett_t", file: !44, line: 110, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "barrett_ctx_s", file: !8, line: 13, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !75, file: !8, line: 14, baseType: !43, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "m_copied", scope: !75, file: !8, line: 15, baseType: !49, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !75, file: !8, line: 16, baseType: !49, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !75, file: !8, line: 17, baseType: !43, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !75, file: !8, line: 18, baseType: !43, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !75, file: !8, line: 19, baseType: !43, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !75, file: !8, line: 20, baseType: !43, size: 64, offset: 320)
!84 = !{!85, !86, !87, !88}
!85 = !DILocalVariable(name: "m", arg: 1, scope: !70, file: !8, line: 36, type: !43)
!86 = !DILocalVariable(name: "copy", arg: 2, scope: !70, file: !8, line: 36, type: !49)
!87 = !DILocalVariable(name: "ctx", scope: !70, file: !8, line: 38, type: !73)
!88 = !DILocalVariable(name: "tmp", scope: !70, file: !8, line: 39, type: !43)
!89 = !DILocation(line: 36, column: 36, scope: !70)
!90 = !DILocation(line: 36, column: 43, scope: !70)
!91 = !DILocation(line: 38, column: 2, scope: !70)
!92 = !DILocation(line: 38, column: 16, scope: !70)
!93 = !DILocation(line: 39, column: 2, scope: !70)
!94 = !DILocation(line: 39, column: 6, scope: !70)
!95 = !DILocation(line: 41, column: 16, scope: !70)
!96 = !DILocation(line: 41, column: 2, scope: !70)
!97 = !DILocation(line: 42, column: 8, scope: !70)
!98 = !DILocation(line: 42, column: 6, scope: !70)
!99 = !DILocation(line: 43, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !70, file: !8, line: 43, column: 6)
!101 = !DILocation(line: 43, column: 6, scope: !70)
!102 = !DILocation(line: 44, column: 3, scope: !100)
!103 = !DILocation(line: 46, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !70, file: !8, line: 46, column: 6)
!105 = !DILocation(line: 46, column: 6, scope: !70)
!106 = !DILocation(line: 47, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !8, line: 46, column: 12)
!108 = !DILocation(line: 47, column: 12, scope: !107)
!109 = !DILocation(line: 47, column: 3, scope: !107)
!110 = !DILocation(line: 47, column: 8, scope: !107)
!111 = !DILocation(line: 47, column: 10, scope: !107)
!112 = !DILocation(line: 48, column: 3, scope: !107)
!113 = !DILocation(line: 48, column: 8, scope: !107)
!114 = !DILocation(line: 48, column: 17, scope: !107)
!115 = !DILocation(line: 49, column: 2, scope: !107)
!116 = !DILocation(line: 50, column: 12, scope: !104)
!117 = !DILocation(line: 50, column: 3, scope: !104)
!118 = !DILocation(line: 50, column: 8, scope: !104)
!119 = !DILocation(line: 50, column: 10, scope: !104)
!120 = !DILocation(line: 52, column: 11, scope: !70)
!121 = !DILocation(line: 52, column: 2, scope: !70)
!122 = !DILocation(line: 52, column: 7, scope: !70)
!123 = !DILocation(line: 52, column: 9, scope: !70)
!124 = !DILocation(line: 53, column: 18, scope: !70)
!125 = !DILocation(line: 53, column: 23, scope: !70)
!126 = !DILocation(line: 53, column: 25, scope: !70)
!127 = !DILocation(line: 53, column: 8, scope: !70)
!128 = !DILocation(line: 53, column: 6, scope: !70)
!129 = !DILocation(line: 56, column: 13, scope: !70)
!130 = !DILocation(line: 56, column: 2, scope: !70)
!131 = !DILocation(line: 57, column: 19, scope: !70)
!132 = !DILocation(line: 57, column: 28, scope: !70)
!133 = !DILocation(line: 57, column: 33, scope: !70)
!134 = !DILocation(line: 57, column: 26, scope: !70)
!135 = !DILocation(line: 57, column: 2, scope: !70)
!136 = !DILocation(line: 58, column: 13, scope: !70)
!137 = !DILocation(line: 58, column: 18, scope: !70)
!138 = !DILocation(line: 58, column: 23, scope: !70)
!139 = !DILocation(line: 58, column: 2, scope: !70)
!140 = !DILocation(line: 60, column: 12, scope: !70)
!141 = !DILocation(line: 60, column: 2, scope: !70)
!142 = !DILocation(line: 60, column: 7, scope: !70)
!143 = !DILocation(line: 60, column: 10, scope: !70)
!144 = !DILocation(line: 61, column: 26, scope: !70)
!145 = !DILocation(line: 61, column: 31, scope: !70)
!146 = !DILocation(line: 61, column: 24, scope: !70)
!147 = !DILocation(line: 61, column: 33, scope: !70)
!148 = !DILocation(line: 61, column: 12, scope: !70)
!149 = !DILocation(line: 61, column: 2, scope: !70)
!150 = !DILocation(line: 61, column: 7, scope: !70)
!151 = !DILocation(line: 61, column: 10, scope: !70)
!152 = !DILocation(line: 62, column: 26, scope: !70)
!153 = !DILocation(line: 62, column: 31, scope: !70)
!154 = !DILocation(line: 62, column: 24, scope: !70)
!155 = !DILocation(line: 62, column: 33, scope: !70)
!156 = !DILocation(line: 62, column: 12, scope: !70)
!157 = !DILocation(line: 62, column: 2, scope: !70)
!158 = !DILocation(line: 62, column: 7, scope: !70)
!159 = !DILocation(line: 62, column: 10, scope: !70)
!160 = !DILocation(line: 64, column: 9, scope: !70)
!161 = !DILocation(line: 64, column: 2, scope: !70)
!162 = !DILocation(line: 65, column: 1, scope: !70)
!163 = !DISubprogram(name: "mpi_normalize", scope: !44, file: !44, line: 129, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !43}
!166 = distinct !DISubprogram(name: "kcalloc", scope: !2, file: !2, line: 666, type: !167, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !173)
!167 = !DISubroutineType(types: !168)
!168 = !{!28, !169, !169, !26}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !171, line: 72, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !171, line: 16, baseType: !29)
!173 = !{!174, !175, !176}
!174 = !DILocalVariable(name: "n", arg: 1, scope: !166, file: !2, line: 666, type: !169)
!175 = !DILocalVariable(name: "size", arg: 2, scope: !166, file: !2, line: 666, type: !169)
!176 = !DILocalVariable(name: "flags", arg: 3, scope: !166, file: !2, line: 666, type: !26)
!177 = !DILocation(line: 666, column: 55, scope: !166)
!178 = !DILocation(line: 666, column: 65, scope: !166)
!179 = !DILocation(line: 666, column: 77, scope: !166)
!180 = !DILocation(line: 668, column: 23, scope: !166)
!181 = !DILocation(line: 668, column: 26, scope: !166)
!182 = !DILocation(line: 668, column: 32, scope: !166)
!183 = !DILocation(line: 668, column: 38, scope: !166)
!184 = !DILocation(line: 668, column: 9, scope: !166)
!185 = !DILocation(line: 668, column: 2, scope: !166)
!186 = !DISubprogram(name: "mpi_copy", scope: !44, file: !44, line: 56, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{!43, !43}
!189 = !DISubprogram(name: "mpi_alloc", scope: !44, file: !44, line: 46, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !12}
!192 = !DISubprogram(name: "mpi_set_ui", scope: !44, file: !44, line: 60, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!43, !43, !29}
!195 = !DISubprogram(name: "mpi_lshift_limbs", scope: !44, file: !44, line: 138, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !43, !12}
!198 = !DISubprogram(name: "mpi_fdiv_q", scope: !44, file: !44, line: 155, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = distinct !DISubprogram(name: "mpi_barrett_free", scope: !8, file: !8, line: 67, type: !200, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !73}
!202 = !{!203}
!203 = !DILocalVariable(name: "ctx", arg: 1, scope: !199, file: !8, line: 67, type: !73)
!204 = !DILocation(line: 67, column: 37, scope: !199)
!205 = !DILocation(line: 69, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !8, line: 69, column: 6)
!207 = !DILocation(line: 69, column: 6, scope: !199)
!208 = !DILocation(line: 70, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !8, line: 69, column: 11)
!210 = !DILocation(line: 70, column: 17, scope: !209)
!211 = !DILocation(line: 70, column: 3, scope: !209)
!212 = !DILocation(line: 71, column: 12, scope: !209)
!213 = !DILocation(line: 71, column: 17, scope: !209)
!214 = !DILocation(line: 71, column: 3, scope: !209)
!215 = !DILocation(line: 72, column: 12, scope: !209)
!216 = !DILocation(line: 72, column: 17, scope: !209)
!217 = !DILocation(line: 72, column: 3, scope: !209)
!218 = !DILocation(line: 73, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !209, file: !8, line: 73, column: 7)
!220 = !DILocation(line: 73, column: 12, scope: !219)
!221 = !DILocation(line: 73, column: 7, scope: !209)
!222 = !DILocation(line: 74, column: 13, scope: !219)
!223 = !DILocation(line: 74, column: 18, scope: !219)
!224 = !DILocation(line: 74, column: 4, scope: !219)
!225 = !DILocation(line: 75, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !209, file: !8, line: 75, column: 7)
!227 = !DILocation(line: 75, column: 12, scope: !226)
!228 = !DILocation(line: 75, column: 7, scope: !209)
!229 = !DILocation(line: 76, column: 13, scope: !226)
!230 = !DILocation(line: 76, column: 18, scope: !226)
!231 = !DILocation(line: 76, column: 4, scope: !226)
!232 = !DILocation(line: 77, column: 9, scope: !209)
!233 = !DILocation(line: 77, column: 3, scope: !209)
!234 = !DILocation(line: 78, column: 2, scope: !209)
!235 = !DILocation(line: 79, column: 1, scope: !199)
!236 = !DISubprogram(name: "mpi_free", scope: !44, file: !44, line: 48, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!242 = distinct !DISubprogram(name: "mpi_mod_barrett", scope: !8, file: !8, line: 95, type: !243, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !43, !43, !73}
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254}
!246 = !DILocalVariable(name: "r", arg: 1, scope: !242, file: !8, line: 95, type: !43)
!247 = !DILocalVariable(name: "x", arg: 2, scope: !242, file: !8, line: 95, type: !43)
!248 = !DILocalVariable(name: "ctx", arg: 3, scope: !242, file: !8, line: 95, type: !73)
!249 = !DILocalVariable(name: "m", scope: !242, file: !8, line: 97, type: !43)
!250 = !DILocalVariable(name: "k", scope: !242, file: !8, line: 98, type: !49)
!251 = !DILocalVariable(name: "y", scope: !242, file: !8, line: 99, type: !43)
!252 = !DILocalVariable(name: "r1", scope: !242, file: !8, line: 100, type: !43)
!253 = !DILocalVariable(name: "r2", scope: !242, file: !8, line: 101, type: !43)
!254 = !DILocalVariable(name: "sign", scope: !242, file: !8, line: 102, type: !49)
!255 = !DILocation(line: 95, column: 26, scope: !242)
!256 = !DILocation(line: 95, column: 33, scope: !242)
!257 = !DILocation(line: 95, column: 50, scope: !242)
!258 = !DILocation(line: 97, column: 2, scope: !242)
!259 = !DILocation(line: 97, column: 6, scope: !242)
!260 = !DILocation(line: 97, column: 10, scope: !242)
!261 = !DILocation(line: 97, column: 15, scope: !242)
!262 = !DILocation(line: 98, column: 2, scope: !242)
!263 = !DILocation(line: 98, column: 6, scope: !242)
!264 = !DILocation(line: 98, column: 10, scope: !242)
!265 = !DILocation(line: 98, column: 15, scope: !242)
!266 = !DILocation(line: 99, column: 2, scope: !242)
!267 = !DILocation(line: 99, column: 6, scope: !242)
!268 = !DILocation(line: 99, column: 10, scope: !242)
!269 = !DILocation(line: 99, column: 15, scope: !242)
!270 = !DILocation(line: 100, column: 2, scope: !242)
!271 = !DILocation(line: 100, column: 6, scope: !242)
!272 = !DILocation(line: 100, column: 11, scope: !242)
!273 = !DILocation(line: 100, column: 16, scope: !242)
!274 = !DILocation(line: 101, column: 2, scope: !242)
!275 = !DILocation(line: 101, column: 6, scope: !242)
!276 = !DILocation(line: 101, column: 11, scope: !242)
!277 = !DILocation(line: 101, column: 16, scope: !242)
!278 = !DILocation(line: 102, column: 2, scope: !242)
!279 = !DILocation(line: 102, column: 6, scope: !242)
!280 = !DILocation(line: 104, column: 16, scope: !242)
!281 = !DILocation(line: 104, column: 2, scope: !242)
!282 = !DILocation(line: 105, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !242, file: !8, line: 105, column: 6)
!284 = !DILocation(line: 105, column: 28, scope: !283)
!285 = !DILocation(line: 105, column: 27, scope: !283)
!286 = !DILocation(line: 105, column: 24, scope: !283)
!287 = !DILocation(line: 105, column: 6, scope: !242)
!288 = !DILocation(line: 106, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !8, line: 105, column: 31)
!290 = !DILocation(line: 106, column: 14, scope: !289)
!291 = !DILocation(line: 106, column: 17, scope: !289)
!292 = !DILocation(line: 106, column: 3, scope: !289)
!293 = !DILocation(line: 107, column: 3, scope: !289)
!294 = !DILocation(line: 110, column: 9, scope: !242)
!295 = !DILocation(line: 110, column: 12, scope: !242)
!296 = !DILocation(line: 110, column: 7, scope: !242)
!297 = !DILocation(line: 111, column: 2, scope: !242)
!298 = !DILocation(line: 111, column: 5, scope: !242)
!299 = !DILocation(line: 111, column: 10, scope: !242)
!300 = !DILocation(line: 118, column: 10, scope: !242)
!301 = !DILocation(line: 118, column: 14, scope: !242)
!302 = !DILocation(line: 118, column: 2, scope: !242)
!303 = !DILocation(line: 119, column: 19, scope: !242)
!304 = !DILocation(line: 119, column: 23, scope: !242)
!305 = !DILocation(line: 119, column: 24, scope: !242)
!306 = !DILocation(line: 119, column: 2, scope: !242)
!307 = !DILocation(line: 120, column: 10, scope: !242)
!308 = !DILocation(line: 120, column: 14, scope: !242)
!309 = !DILocation(line: 120, column: 18, scope: !242)
!310 = !DILocation(line: 120, column: 2, scope: !242)
!311 = !DILocation(line: 121, column: 19, scope: !242)
!312 = !DILocation(line: 121, column: 23, scope: !242)
!313 = !DILocation(line: 121, column: 24, scope: !242)
!314 = !DILocation(line: 121, column: 2, scope: !242)
!315 = !DILocation(line: 128, column: 10, scope: !242)
!316 = !DILocation(line: 128, column: 14, scope: !242)
!317 = !DILocation(line: 128, column: 2, scope: !242)
!318 = !DILocation(line: 129, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !242, file: !8, line: 129, column: 6)
!320 = !DILocation(line: 129, column: 10, scope: !319)
!321 = !DILocation(line: 129, column: 19, scope: !319)
!322 = !DILocation(line: 129, column: 20, scope: !319)
!323 = !DILocation(line: 129, column: 17, scope: !319)
!324 = !DILocation(line: 129, column: 6, scope: !242)
!325 = !DILocation(line: 130, column: 16, scope: !319)
!326 = !DILocation(line: 130, column: 17, scope: !319)
!327 = !DILocation(line: 130, column: 3, scope: !319)
!328 = !DILocation(line: 130, column: 7, scope: !319)
!329 = !DILocation(line: 130, column: 14, scope: !319)
!330 = !DILocation(line: 131, column: 10, scope: !242)
!331 = !DILocation(line: 131, column: 14, scope: !242)
!332 = !DILocation(line: 131, column: 18, scope: !242)
!333 = !DILocation(line: 131, column: 2, scope: !242)
!334 = !DILocation(line: 132, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !242, file: !8, line: 132, column: 6)
!336 = !DILocation(line: 132, column: 10, scope: !335)
!337 = !DILocation(line: 132, column: 19, scope: !335)
!338 = !DILocation(line: 132, column: 20, scope: !335)
!339 = !DILocation(line: 132, column: 17, scope: !335)
!340 = !DILocation(line: 132, column: 6, scope: !242)
!341 = !DILocation(line: 133, column: 16, scope: !335)
!342 = !DILocation(line: 133, column: 17, scope: !335)
!343 = !DILocation(line: 133, column: 3, scope: !335)
!344 = !DILocation(line: 133, column: 7, scope: !335)
!345 = !DILocation(line: 133, column: 14, scope: !335)
!346 = !DILocation(line: 134, column: 10, scope: !242)
!347 = !DILocation(line: 134, column: 13, scope: !242)
!348 = !DILocation(line: 134, column: 17, scope: !242)
!349 = !DILocation(line: 134, column: 2, scope: !242)
!350 = !DILocation(line: 136, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !242, file: !8, line: 136, column: 6)
!352 = !DILocation(line: 136, column: 6, scope: !242)
!353 = !DILocation(line: 137, column: 8, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !8, line: 137, column: 7)
!355 = distinct !DILexicalBlock(scope: !351, file: !8, line: 136, column: 23)
!356 = !DILocation(line: 137, column: 13, scope: !354)
!357 = !DILocation(line: 137, column: 7, scope: !355)
!358 = !DILocation(line: 138, column: 24, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !8, line: 137, column: 17)
!360 = !DILocation(line: 138, column: 26, scope: !359)
!361 = !DILocation(line: 138, column: 14, scope: !359)
!362 = !DILocation(line: 138, column: 4, scope: !359)
!363 = !DILocation(line: 138, column: 9, scope: !359)
!364 = !DILocation(line: 138, column: 12, scope: !359)
!365 = !DILocation(line: 139, column: 15, scope: !359)
!366 = !DILocation(line: 139, column: 20, scope: !359)
!367 = !DILocation(line: 139, column: 4, scope: !359)
!368 = !DILocation(line: 140, column: 21, scope: !359)
!369 = !DILocation(line: 140, column: 26, scope: !359)
!370 = !DILocation(line: 140, column: 30, scope: !359)
!371 = !DILocation(line: 140, column: 32, scope: !359)
!372 = !DILocation(line: 140, column: 4, scope: !359)
!373 = !DILocation(line: 141, column: 3, scope: !359)
!374 = !DILocation(line: 142, column: 11, scope: !355)
!375 = !DILocation(line: 142, column: 14, scope: !355)
!376 = !DILocation(line: 142, column: 17, scope: !355)
!377 = !DILocation(line: 142, column: 22, scope: !355)
!378 = !DILocation(line: 142, column: 3, scope: !355)
!379 = !DILocation(line: 143, column: 2, scope: !355)
!380 = !DILocation(line: 146, column: 2, scope: !242)
!381 = !DILocation(line: 146, column: 17, scope: !242)
!382 = !DILocation(line: 146, column: 20, scope: !242)
!383 = !DILocation(line: 146, column: 9, scope: !242)
!384 = !DILocation(line: 146, column: 23, scope: !242)
!385 = !DILocation(line: 147, column: 11, scope: !242)
!386 = !DILocation(line: 147, column: 14, scope: !242)
!387 = !DILocation(line: 147, column: 17, scope: !242)
!388 = !DILocation(line: 147, column: 3, scope: !242)
!389 = distinct !{!389, !380, !390, !391, !392}
!390 = !DILocation(line: 147, column: 18, scope: !242)
!391 = !{!"llvm.loop.mustprogress"}
!392 = !{!"llvm.loop.unroll.disable"}
!393 = !DILocation(line: 149, column: 12, scope: !242)
!394 = !DILocation(line: 149, column: 2, scope: !242)
!395 = !DILocation(line: 149, column: 5, scope: !242)
!396 = !DILocation(line: 149, column: 10, scope: !242)
!397 = !DILocation(line: 150, column: 1, scope: !242)
!398 = !DISubprogram(name: "mpi_set", scope: !44, file: !44, line: 59, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DISubroutineType(types: !400)
!400 = !{!43, !43, !43}
!401 = !DISubprogram(name: "mpi_rshift_limbs", scope: !44, file: !44, line: 136, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubprogram(name: "mpi_mul", scope: !44, file: !44, line: 149, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubprogram(name: "mpi_sub", scope: !44, file: !44, line: 144, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubprogram(name: "mpi_add", scope: !44, file: !44, line: 143, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DISubprogram(name: "mpi_cmp", scope: !44, file: !44, line: 122, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!49, !43, !43}
!408 = distinct !DISubprogram(name: "mpi_mul_barrett", scope: !8, file: !8, line: 153, type: !409, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !43, !43, !43, !73}
!411 = !{!412, !413, !414, !415}
!412 = !DILocalVariable(name: "w", arg: 1, scope: !408, file: !8, line: 153, type: !43)
!413 = !DILocalVariable(name: "u", arg: 2, scope: !408, file: !8, line: 153, type: !43)
!414 = !DILocalVariable(name: "v", arg: 3, scope: !408, file: !8, line: 153, type: !43)
!415 = !DILocalVariable(name: "ctx", arg: 4, scope: !408, file: !8, line: 153, type: !73)
!416 = !DILocation(line: 153, column: 26, scope: !408)
!417 = !DILocation(line: 153, column: 33, scope: !408)
!418 = !DILocation(line: 153, column: 40, scope: !408)
!419 = !DILocation(line: 153, column: 57, scope: !408)
!420 = !DILocation(line: 155, column: 10, scope: !408)
!421 = !DILocation(line: 155, column: 13, scope: !408)
!422 = !DILocation(line: 155, column: 16, scope: !408)
!423 = !DILocation(line: 155, column: 2, scope: !408)
!424 = !DILocation(line: 156, column: 18, scope: !408)
!425 = !DILocation(line: 156, column: 21, scope: !408)
!426 = !DILocation(line: 156, column: 24, scope: !408)
!427 = !DILocation(line: 156, column: 2, scope: !408)
!428 = !DILocation(line: 157, column: 1, scope: !408)
!429 = distinct !DISubprogram(name: "kmalloc_array", scope: !2, file: !2, line: 629, type: !167, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !430)
!430 = !{!431, !432, !433, !434}
!431 = !DILocalVariable(name: "n", arg: 1, scope: !429, file: !2, line: 629, type: !169)
!432 = !DILocalVariable(name: "size", arg: 2, scope: !429, file: !2, line: 629, type: !169)
!433 = !DILocalVariable(name: "flags", arg: 3, scope: !429, file: !2, line: 629, type: !26)
!434 = !DILocalVariable(name: "bytes", scope: !429, file: !2, line: 631, type: !169)
!435 = !DILocation(line: 629, column: 61, scope: !429)
!436 = !DILocation(line: 629, column: 71, scope: !429)
!437 = !DILocation(line: 629, column: 83, scope: !429)
!438 = !DILocation(line: 631, column: 2, scope: !429)
!439 = !DILocation(line: 631, column: 9, scope: !429)
!440 = !DILocation(line: 633, column: 6, scope: !441)
!441 = distinct !DILexicalBlock(scope: !429, file: !2, line: 633, column: 6)
!442 = !DILocation(line: 633, column: 6, scope: !429)
!443 = !DILocation(line: 634, column: 3, scope: !441)
!444 = !DILocation(line: 635, column: 27, scope: !445)
!445 = distinct !DILexicalBlock(scope: !429, file: !2, line: 635, column: 6)
!446 = !DILocation(line: 635, column: 6, scope: !445)
!447 = !DILocation(line: 635, column: 30, scope: !445)
!448 = !DILocation(line: 635, column: 54, scope: !445)
!449 = !DILocation(line: 635, column: 33, scope: !445)
!450 = !DILocation(line: 635, column: 6, scope: !429)
!451 = !DILocation(line: 636, column: 18, scope: !445)
!452 = !DILocation(line: 636, column: 25, scope: !445)
!453 = !DILocation(line: 636, column: 10, scope: !445)
!454 = !DILocation(line: 636, column: 3, scope: !445)
!455 = !DILocation(line: 637, column: 19, scope: !429)
!456 = !DILocation(line: 637, column: 26, scope: !429)
!457 = !DILocation(line: 637, column: 9, scope: !429)
!458 = !DILocation(line: 637, column: 2, scope: !429)
!459 = !DILocation(line: 638, column: 1, scope: !429)
!460 = distinct !DISubprogram(name: "__must_check_overflow", scope: !461, file: !461, line: 51, type: !462, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !466)
!461 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !464}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !465)
!465 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!466 = !{!467}
!467 = !DILocalVariable(name: "overflow", arg: 1, scope: !460, file: !461, line: 51, type: !464)
!468 = !DILocation(line: 51, column: 60, scope: !460)
!469 = !DILocation(line: 53, column: 9, scope: !460)
!470 = !{i8 0, i8 2}
!471 = !{}
!472 = !DILocation(line: 53, column: 2, scope: !460)
!473 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !474, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{!28, !169, !26}
!476 = !{!477, !478, !479}
!477 = !DILocalVariable(name: "size", arg: 1, scope: !473, file: !2, line: 591, type: !169)
!478 = !DILocalVariable(name: "flags", arg: 2, scope: !473, file: !2, line: 591, type: !26)
!479 = !DILocalVariable(name: "index", scope: !480, file: !2, line: 594, type: !12)
!480 = distinct !DILexicalBlock(scope: !481, file: !2, line: 593, column: 42)
!481 = distinct !DILexicalBlock(scope: !473, file: !2, line: 593, column: 6)
!482 = !DILocation(line: 591, column: 61, scope: !473)
!483 = !DILocation(line: 591, column: 73, scope: !473)
!484 = !DILocation(line: 593, column: 27, scope: !481)
!485 = !DILocation(line: 593, column: 6, scope: !481)
!486 = !DILocation(line: 593, column: 33, scope: !481)
!487 = !DILocation(line: 593, column: 36, scope: !481)
!488 = !DILocation(line: 593, column: 6, scope: !473)
!489 = !DILocation(line: 594, column: 3, scope: !480)
!490 = !DILocation(line: 594, column: 16, scope: !480)
!491 = !DILocation(line: 596, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !480, file: !2, line: 596, column: 7)
!493 = !DILocation(line: 596, column: 12, scope: !492)
!494 = !DILocation(line: 596, column: 7, scope: !480)
!495 = !DILocation(line: 597, column: 25, scope: !492)
!496 = !DILocation(line: 597, column: 31, scope: !492)
!497 = !DILocation(line: 597, column: 11, scope: !492)
!498 = !DILocation(line: 597, column: 4, scope: !492)
!499 = !DILocation(line: 599, column: 11, scope: !480)
!500 = !DILocation(line: 599, column: 9, scope: !480)
!501 = !DILocation(line: 601, column: 33, scope: !480)
!502 = !DILocation(line: 601, column: 40, scope: !480)
!503 = !DILocation(line: 601, column: 20, scope: !480)
!504 = !DILocation(line: 601, column: 5, scope: !480)
!505 = !DILocation(line: 601, column: 51, scope: !480)
!506 = !DILocation(line: 602, column: 5, scope: !480)
!507 = !DILocation(line: 602, column: 12, scope: !480)
!508 = !DILocation(line: 600, column: 10, scope: !480)
!509 = !DILocation(line: 600, column: 3, scope: !480)
!510 = !DILocation(line: 603, column: 2, scope: !481)
!511 = !DILocation(line: 604, column: 19, scope: !473)
!512 = !DILocation(line: 604, column: 25, scope: !473)
!513 = !DILocation(line: 604, column: 9, scope: !473)
!514 = !DILocation(line: 604, column: 2, scope: !473)
!515 = !DILocation(line: 605, column: 1, scope: !473)
!516 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !519, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!12, !169, !464}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "size", arg: 1, scope: !518, file: !2, line: 444, type: !169)
!523 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !518, file: !2, line: 445, type: !464)
!524 = !DILocation(line: 444, column: 60, scope: !518)
!525 = !DILocation(line: 445, column: 16, scope: !518)
!526 = !DILocation(line: 447, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !2, line: 447, column: 6)
!528 = !DILocation(line: 447, column: 6, scope: !518)
!529 = !DILocation(line: 448, column: 3, scope: !527)
!530 = !DILocation(line: 450, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !518, file: !2, line: 450, column: 6)
!532 = !DILocation(line: 450, column: 11, scope: !531)
!533 = !DILocation(line: 450, column: 6, scope: !518)
!534 = !DILocation(line: 451, column: 3, scope: !531)
!535 = !DILocation(line: 453, column: 32, scope: !536)
!536 = distinct !DILexicalBlock(scope: !518, file: !2, line: 453, column: 6)
!537 = !DILocation(line: 453, column: 37, scope: !536)
!538 = !DILocation(line: 453, column: 42, scope: !536)
!539 = !DILocation(line: 453, column: 45, scope: !536)
!540 = !DILocation(line: 453, column: 50, scope: !536)
!541 = !DILocation(line: 453, column: 6, scope: !518)
!542 = !DILocation(line: 454, column: 3, scope: !536)
!543 = !DILocation(line: 455, column: 32, scope: !544)
!544 = distinct !DILexicalBlock(scope: !518, file: !2, line: 455, column: 6)
!545 = !DILocation(line: 455, column: 37, scope: !544)
!546 = !DILocation(line: 455, column: 43, scope: !544)
!547 = !DILocation(line: 455, column: 46, scope: !544)
!548 = !DILocation(line: 455, column: 51, scope: !544)
!549 = !DILocation(line: 455, column: 6, scope: !518)
!550 = !DILocation(line: 456, column: 3, scope: !544)
!551 = !DILocation(line: 457, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !518, file: !2, line: 457, column: 6)
!553 = !DILocation(line: 457, column: 11, scope: !552)
!554 = !DILocation(line: 457, column: 6, scope: !518)
!555 = !DILocation(line: 457, column: 26, scope: !552)
!556 = !DILocation(line: 458, column: 6, scope: !557)
!557 = distinct !DILexicalBlock(scope: !518, file: !2, line: 458, column: 6)
!558 = !DILocation(line: 458, column: 11, scope: !557)
!559 = !DILocation(line: 458, column: 6, scope: !518)
!560 = !DILocation(line: 458, column: 26, scope: !557)
!561 = !DILocation(line: 459, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !518, file: !2, line: 459, column: 6)
!563 = !DILocation(line: 459, column: 11, scope: !562)
!564 = !DILocation(line: 459, column: 6, scope: !518)
!565 = !DILocation(line: 459, column: 26, scope: !562)
!566 = !DILocation(line: 460, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !518, file: !2, line: 460, column: 6)
!568 = !DILocation(line: 460, column: 11, scope: !567)
!569 = !DILocation(line: 460, column: 6, scope: !518)
!570 = !DILocation(line: 460, column: 26, scope: !567)
!571 = !DILocation(line: 461, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !518, file: !2, line: 461, column: 6)
!573 = !DILocation(line: 461, column: 11, scope: !572)
!574 = !DILocation(line: 461, column: 6, scope: !518)
!575 = !DILocation(line: 461, column: 26, scope: !572)
!576 = !DILocation(line: 462, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !518, file: !2, line: 462, column: 6)
!578 = !DILocation(line: 462, column: 11, scope: !577)
!579 = !DILocation(line: 462, column: 6, scope: !518)
!580 = !DILocation(line: 462, column: 26, scope: !577)
!581 = !DILocation(line: 463, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !518, file: !2, line: 463, column: 6)
!583 = !DILocation(line: 463, column: 11, scope: !582)
!584 = !DILocation(line: 463, column: 6, scope: !518)
!585 = !DILocation(line: 463, column: 26, scope: !582)
!586 = !DILocation(line: 464, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !518, file: !2, line: 464, column: 6)
!588 = !DILocation(line: 464, column: 11, scope: !587)
!589 = !DILocation(line: 464, column: 6, scope: !518)
!590 = !DILocation(line: 464, column: 26, scope: !587)
!591 = !DILocation(line: 465, column: 6, scope: !592)
!592 = distinct !DILexicalBlock(scope: !518, file: !2, line: 465, column: 6)
!593 = !DILocation(line: 465, column: 11, scope: !592)
!594 = !DILocation(line: 465, column: 6, scope: !518)
!595 = !DILocation(line: 465, column: 26, scope: !592)
!596 = !DILocation(line: 466, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !518, file: !2, line: 466, column: 6)
!598 = !DILocation(line: 466, column: 11, scope: !597)
!599 = !DILocation(line: 466, column: 6, scope: !518)
!600 = !DILocation(line: 466, column: 26, scope: !597)
!601 = !DILocation(line: 467, column: 6, scope: !602)
!602 = distinct !DILexicalBlock(scope: !518, file: !2, line: 467, column: 6)
!603 = !DILocation(line: 467, column: 11, scope: !602)
!604 = !DILocation(line: 467, column: 6, scope: !518)
!605 = !DILocation(line: 467, column: 26, scope: !602)
!606 = !DILocation(line: 468, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !518, file: !2, line: 468, column: 6)
!608 = !DILocation(line: 468, column: 11, scope: !607)
!609 = !DILocation(line: 468, column: 6, scope: !518)
!610 = !DILocation(line: 468, column: 26, scope: !607)
!611 = !DILocation(line: 469, column: 6, scope: !612)
!612 = distinct !DILexicalBlock(scope: !518, file: !2, line: 469, column: 6)
!613 = !DILocation(line: 469, column: 11, scope: !612)
!614 = !DILocation(line: 469, column: 6, scope: !518)
!615 = !DILocation(line: 469, column: 26, scope: !612)
!616 = !DILocation(line: 470, column: 6, scope: !617)
!617 = distinct !DILexicalBlock(scope: !518, file: !2, line: 470, column: 6)
!618 = !DILocation(line: 470, column: 11, scope: !617)
!619 = !DILocation(line: 470, column: 6, scope: !518)
!620 = !DILocation(line: 470, column: 26, scope: !617)
!621 = !DILocation(line: 471, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !518, file: !2, line: 471, column: 6)
!623 = !DILocation(line: 471, column: 11, scope: !622)
!624 = !DILocation(line: 471, column: 6, scope: !518)
!625 = !DILocation(line: 471, column: 26, scope: !622)
!626 = !DILocation(line: 472, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !518, file: !2, line: 472, column: 6)
!628 = !DILocation(line: 472, column: 11, scope: !627)
!629 = !DILocation(line: 472, column: 6, scope: !518)
!630 = !DILocation(line: 472, column: 26, scope: !627)
!631 = !DILocation(line: 473, column: 6, scope: !632)
!632 = distinct !DILexicalBlock(scope: !518, file: !2, line: 473, column: 6)
!633 = !DILocation(line: 473, column: 11, scope: !632)
!634 = !DILocation(line: 473, column: 6, scope: !518)
!635 = !DILocation(line: 473, column: 26, scope: !632)
!636 = !DILocation(line: 474, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !518, file: !2, line: 474, column: 6)
!638 = !DILocation(line: 474, column: 11, scope: !637)
!639 = !DILocation(line: 474, column: 6, scope: !518)
!640 = !DILocation(line: 474, column: 27, scope: !637)
!641 = !DILocation(line: 475, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !518, file: !2, line: 475, column: 6)
!643 = !DILocation(line: 475, column: 11, scope: !642)
!644 = !DILocation(line: 475, column: 6, scope: !518)
!645 = !DILocation(line: 475, column: 32, scope: !642)
!646 = !DILocation(line: 477, column: 50, scope: !647)
!647 = distinct !DILexicalBlock(scope: !518, file: !2, line: 477, column: 6)
!648 = !DILocation(line: 477, column: 6, scope: !518)
!649 = !DILocation(line: 478, column: 3, scope: !647)
!650 = !DILocation(line: 478, column: 3, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !2, line: 478, column: 3)
!652 = distinct !DILexicalBlock(scope: !647, file: !2, line: 478, column: 3)
!653 = !{i32 -2142594476}
!654 = !DILocation(line: 478, column: 3, scope: !652)
!655 = !DILocation(line: 480, column: 3, scope: !647)
!656 = !DILocation(line: 480, column: 3, scope: !657)
!657 = distinct !DILexicalBlock(scope: !647, file: !2, line: 480, column: 3)
!658 = !DILocation(line: 480, column: 3, scope: !659)
!659 = distinct !DILexicalBlock(scope: !657, file: !2, line: 480, column: 3)
!660 = !DILocation(line: 480, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !2, line: 480, column: 3)
!662 = !{i64 2152373023, i64 2152373052, i64 2152373098, i64 2152373156, i64 2152373210, i64 2152373264, i64 2152373319, i64 2152373350}
!663 = !DILocation(line: 483, column: 2, scope: !518)
!664 = !DILocation(line: 484, column: 1, scope: !518)
!665 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DISubroutineType(types: !667)
!667 = !{!28, !668, !26, !169}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !670, line: 11, flags: DIFlagFwdDecl)
!670 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!671 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !672, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!16, !26, !29}
!674 = !{!675, !676}
!675 = !DILocalVariable(name: "flags", arg: 1, scope: !671, file: !2, line: 401, type: !26)
!676 = !DILocalVariable(name: "caller", arg: 2, scope: !671, file: !2, line: 401, type: !29)
!677 = !DILocation(line: 401, column: 67, scope: !671)
!678 = !DILocation(line: 401, column: 88, scope: !671)
!679 = !DILocation(line: 407, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !671, file: !2, line: 407, column: 6)
!681 = !DILocation(line: 407, column: 6, scope: !671)
!682 = !DILocation(line: 413, column: 3, scope: !680)
!683 = !DILocation(line: 423, column: 38, scope: !684)
!684 = distinct !DILexicalBlock(scope: !671, file: !2, line: 423, column: 6)
!685 = !DILocation(line: 423, column: 44, scope: !684)
!686 = !DILocation(line: 423, column: 6, scope: !671)
!687 = !DILocation(line: 424, column: 3, scope: !684)
!688 = !DILocation(line: 426, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !671, file: !2, line: 425, column: 6)
!690 = !DILocation(line: 429, column: 1, scope: !671)
!691 = !DISubprogram(name: "__compiletime_assert_196", scope: !2, file: !2, line: 478, type: !692, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!692 = !DISubroutineType(types: !693)
!693 = !{null}
