; ModuleID = 'lib/decompress_unxz.c'
source_filename = "lib/decompress_unxz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_buf = type { ptr, i64, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"XZ decompressor ran out of memory\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [50 x i8] c"Input is not in the XZ format (wrong magic bytes)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [74 x i8] c"Input was encoded with settings that are not supported by this XZ decoder\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"XZ-compressed data is corrupt\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [27 x i8] c"Bug in the XZ decompressor\00", align 1, !dbg !22
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !27

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @unxz(ptr noundef %in, i64 noundef %in_size, ptr noundef %fill, ptr noundef %flush, ptr noundef %out, ptr noundef %in_used, ptr noundef %error) #0 section ".init.text" align 16 !dbg !92 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %in_size.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in_used.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %b = alloca %struct.xz_buf, align 8
  %s = alloca ptr, align 8
  %ret = alloca i32, align 4
  %must_free_in = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !107, metadata !DIExpression()), !dbg !139
  store i64 %in_size, ptr %in_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_size.addr, metadata !108, metadata !DIExpression()), !dbg !140
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !109, metadata !DIExpression()), !dbg !141
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !110, metadata !DIExpression()), !dbg !142
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !111, metadata !DIExpression()), !dbg !143
  store ptr %in_used, ptr %in_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_used.addr, metadata !112, metadata !DIExpression()), !dbg !144
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !113, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 48, ptr %b) #11, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %b, metadata !114, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %s, metadata !129, metadata !DIExpression()), !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !132, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 1, ptr %must_free_in) #11, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %must_free_in, metadata !133, metadata !DIExpression()), !dbg !153
  store i8 0, ptr %must_free_in, align 1, !dbg !153
  %0 = load ptr, ptr %in_used.addr, align 8, !dbg !154
  %cmp = icmp ne ptr %0, null, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %in_used.addr, align 8, !dbg !158
  store i64 0, ptr %1, align 8, !dbg !159
  br label %if.end, !dbg !160

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fill.addr, align 8, !dbg !161
  %cmp1 = icmp eq ptr %2, null, !dbg !163
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !164

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %flush.addr, align 8, !dbg !165
  %cmp2 = icmp eq ptr %3, null, !dbg !166
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !167

if.then3:                                         ; preds = %land.lhs.true
  %call = call ptr @xz_dec_init(i32 noundef 0, i32 noundef 0) #12, !dbg !168
  store ptr %call, ptr %s, align 8, !dbg !169
  br label %if.end5, !dbg !170

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call4 = call ptr @xz_dec_init(i32 noundef 2, i32 noundef -1) #12, !dbg !171
  store ptr %call4, ptr %s, align 8, !dbg !172
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %4 = load ptr, ptr %s, align 8, !dbg !173
  %cmp6 = icmp eq ptr %4, null, !dbg !175
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !176

if.then7:                                         ; preds = %if.end5
  br label %error_alloc_state, !dbg !177

if.end8:                                          ; preds = %if.end5
  %5 = load ptr, ptr %flush.addr, align 8, !dbg !178
  %cmp9 = icmp eq ptr %5, null, !dbg !180
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !181

if.then10:                                        ; preds = %if.end8
  %6 = load ptr, ptr %out.addr, align 8, !dbg !182
  %out11 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3, !dbg !184
  store ptr %6, ptr %out11, align 8, !dbg !185
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5, !dbg !186
  store i64 -1, ptr %out_size, align 8, !dbg !187
  br label %if.end20, !dbg !188

if.else12:                                        ; preds = %if.end8
  %out_size13 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5, !dbg !189
  store i64 4096, ptr %out_size13, align 8, !dbg !191
  %call14 = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #13, !dbg !192
  %out15 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3, !dbg !193
  store ptr %call14, ptr %out15, align 8, !dbg !194
  %out16 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3, !dbg !195
  %7 = load ptr, ptr %out16, align 8, !dbg !195
  %cmp17 = icmp eq ptr %7, null, !dbg !197
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !198

if.then18:                                        ; preds = %if.else12
  br label %error_alloc_out, !dbg !199

if.end19:                                         ; preds = %if.else12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  %8 = load ptr, ptr %in.addr, align 8, !dbg !200
  %cmp21 = icmp eq ptr %8, null, !dbg !202
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !203

if.then22:                                        ; preds = %if.end20
  store i8 1, ptr %must_free_in, align 1, !dbg !204
  %call23 = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #13, !dbg !206
  store ptr %call23, ptr %in.addr, align 8, !dbg !207
  %9 = load ptr, ptr %in.addr, align 8, !dbg !208
  %cmp24 = icmp eq ptr %9, null, !dbg !210
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !211

if.then25:                                        ; preds = %if.then22
  br label %error_alloc_in, !dbg !212

if.end26:                                         ; preds = %if.then22
  br label %if.end27, !dbg !213

if.end27:                                         ; preds = %if.end26, %if.end20
  %10 = load ptr, ptr %in.addr, align 8, !dbg !214
  %in28 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 0, !dbg !215
  store ptr %10, ptr %in28, align 8, !dbg !216
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1, !dbg !217
  store i64 0, ptr %in_pos, align 8, !dbg !218
  %11 = load i64, ptr %in_size.addr, align 8, !dbg !219
  %in_size29 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2, !dbg !220
  store i64 %11, ptr %in_size29, align 8, !dbg !221
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4, !dbg !222
  store i64 0, ptr %out_pos, align 8, !dbg !223
  %12 = load ptr, ptr %fill.addr, align 8, !dbg !224
  %cmp30 = icmp eq ptr %12, null, !dbg !226
  br i1 %cmp30, label %land.lhs.true31, label %if.else35, !dbg !227

land.lhs.true31:                                  ; preds = %if.end27
  %13 = load ptr, ptr %flush.addr, align 8, !dbg !228
  %cmp32 = icmp eq ptr %13, null, !dbg !229
  br i1 %cmp32, label %if.then33, label %if.else35, !dbg !230

if.then33:                                        ; preds = %land.lhs.true31
  %14 = load ptr, ptr %s, align 8, !dbg !231
  %call34 = call i32 @xz_dec_run(ptr noundef %14, ptr noundef %b) #12, !dbg !233
  store i32 %call34, ptr %ret, align 4, !dbg !234
  br label %if.end80, !dbg !235

if.else35:                                        ; preds = %land.lhs.true31, %if.end27
  br label %do.body, !dbg !236

do.body:                                          ; preds = %do.cond, %if.else35
  %in_pos36 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1, !dbg !238
  %15 = load i64, ptr %in_pos36, align 8, !dbg !238
  %in_size37 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2, !dbg !241
  %16 = load i64, ptr %in_size37, align 8, !dbg !241
  %cmp38 = icmp eq i64 %15, %16, !dbg !242
  br i1 %cmp38, label %land.lhs.true39, label %if.end52, !dbg !243

land.lhs.true39:                                  ; preds = %do.body
  %17 = load ptr, ptr %fill.addr, align 8, !dbg !244
  %cmp40 = icmp ne ptr %17, null, !dbg !245
  br i1 %cmp40, label %if.then41, label %if.end52, !dbg !246

if.then41:                                        ; preds = %land.lhs.true39
  %18 = load ptr, ptr %in_used.addr, align 8, !dbg !247
  %cmp42 = icmp ne ptr %18, null, !dbg !250
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !251

if.then43:                                        ; preds = %if.then41
  %in_pos44 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1, !dbg !252
  %19 = load i64, ptr %in_pos44, align 8, !dbg !252
  %20 = load ptr, ptr %in_used.addr, align 8, !dbg !253
  %21 = load i64, ptr %20, align 8, !dbg !254
  %add = add i64 %21, %19, !dbg !254
  store i64 %add, ptr %20, align 8, !dbg !254
  br label %if.end45, !dbg !255

if.end45:                                         ; preds = %if.then43, %if.then41
  %in_pos46 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1, !dbg !256
  store i64 0, ptr %in_pos46, align 8, !dbg !257
  %22 = load ptr, ptr %fill.addr, align 8, !dbg !258
  %23 = load ptr, ptr %in.addr, align 8, !dbg !259
  %call47 = call i64 %22(ptr noundef %23, i64 noundef 4096) #12, !dbg !258
  store i64 %call47, ptr %in_size.addr, align 8, !dbg !260
  %24 = load i64, ptr %in_size.addr, align 8, !dbg !261
  %cmp48 = icmp slt i64 %24, 0, !dbg !263
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !264

if.then49:                                        ; preds = %if.end45
  store i32 8, ptr %ret, align 4, !dbg !265
  br label %do.end, !dbg !267

if.end50:                                         ; preds = %if.end45
  %25 = load i64, ptr %in_size.addr, align 8, !dbg !268
  %in_size51 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2, !dbg !269
  store i64 %25, ptr %in_size51, align 8, !dbg !270
  br label %if.end52, !dbg !271

if.end52:                                         ; preds = %if.end50, %land.lhs.true39, %do.body
  %26 = load ptr, ptr %s, align 8, !dbg !272
  %call53 = call i32 @xz_dec_run(ptr noundef %26, ptr noundef %b) #12, !dbg !273
  store i32 %call53, ptr %ret, align 4, !dbg !274
  %27 = load ptr, ptr %flush.addr, align 8, !dbg !275
  %cmp54 = icmp ne ptr %27, null, !dbg !277
  br i1 %cmp54, label %land.lhs.true55, label %if.end72, !dbg !278

land.lhs.true55:                                  ; preds = %if.end52
  %out_pos56 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4, !dbg !279
  %28 = load i64, ptr %out_pos56, align 8, !dbg !279
  %out_size57 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5, !dbg !280
  %29 = load i64, ptr %out_size57, align 8, !dbg !280
  %cmp58 = icmp eq i64 %28, %29, !dbg !281
  br i1 %cmp58, label %if.then63, label %lor.lhs.false, !dbg !282

lor.lhs.false:                                    ; preds = %land.lhs.true55
  %30 = load i32, ptr %ret, align 4, !dbg !283
  %cmp59 = icmp ne i32 %30, 0, !dbg !284
  br i1 %cmp59, label %land.lhs.true60, label %if.end72, !dbg !285

land.lhs.true60:                                  ; preds = %lor.lhs.false
  %out_pos61 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4, !dbg !286
  %31 = load i64, ptr %out_pos61, align 8, !dbg !286
  %cmp62 = icmp ugt i64 %31, 0, !dbg !287
  br i1 %cmp62, label %if.then63, label %if.end72, !dbg !288

if.then63:                                        ; preds = %land.lhs.true60, %land.lhs.true55
  %32 = load ptr, ptr %flush.addr, align 8, !dbg !289
  %out64 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3, !dbg !292
  %33 = load ptr, ptr %out64, align 8, !dbg !292
  %out_pos65 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4, !dbg !293
  %34 = load i64, ptr %out_pos65, align 8, !dbg !293
  %call66 = call i64 %32(ptr noundef %33, i64 noundef %34) #12, !dbg !289
  %out_pos67 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4, !dbg !294
  %35 = load i64, ptr %out_pos67, align 8, !dbg !294
  %cmp68 = icmp ne i64 %call66, %35, !dbg !295
  br i1 %cmp68, label %if.then69, label %if.end70, !dbg !296

if.then69:                                        ; preds = %if.then63
  store i32 8, ptr %ret, align 4, !dbg !297
  br label %if.end70, !dbg !298

if.end70:                                         ; preds = %if.then69, %if.then63
  %out_pos71 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4, !dbg !299
  store i64 0, ptr %out_pos71, align 8, !dbg !300
  br label %if.end72, !dbg !301

if.end72:                                         ; preds = %if.end70, %land.lhs.true60, %lor.lhs.false, %if.end52
  br label %do.cond, !dbg !302

do.cond:                                          ; preds = %if.end72
  %36 = load i32, ptr %ret, align 4, !dbg !303
  %cmp73 = icmp eq i32 %36, 0, !dbg !304
  br i1 %cmp73, label %do.body, label %do.end, !dbg !302, !llvm.loop !305

do.end:                                           ; preds = %do.cond, %if.then49
  %37 = load i8, ptr %must_free_in, align 1, !dbg !309, !range !311, !noundef !312
  %tobool = trunc i8 %37 to i1, !dbg !309
  br i1 %tobool, label %if.then74, label %if.end75, !dbg !313

if.then74:                                        ; preds = %do.end
  %38 = load ptr, ptr %in.addr, align 8, !dbg !314
  call void @kfree(ptr noundef %38) #12, !dbg !314
  br label %if.end75, !dbg !314

if.end75:                                         ; preds = %if.then74, %do.end
  %39 = load ptr, ptr %flush.addr, align 8, !dbg !315
  %cmp76 = icmp ne ptr %39, null, !dbg !317
  br i1 %cmp76, label %if.then77, label %if.end79, !dbg !318

if.then77:                                        ; preds = %if.end75
  %out78 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3, !dbg !319
  %40 = load ptr, ptr %out78, align 8, !dbg !319
  call void @kfree(ptr noundef %40) #12, !dbg !319
  br label %if.end79, !dbg !319

if.end79:                                         ; preds = %if.then77, %if.end75
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then33
  %41 = load ptr, ptr %in_used.addr, align 8, !dbg !320
  %cmp81 = icmp ne ptr %41, null, !dbg !322
  br i1 %cmp81, label %if.then82, label %if.end85, !dbg !323

if.then82:                                        ; preds = %if.end80
  %in_pos83 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1, !dbg !324
  %42 = load i64, ptr %in_pos83, align 8, !dbg !324
  %43 = load ptr, ptr %in_used.addr, align 8, !dbg !325
  %44 = load i64, ptr %43, align 8, !dbg !326
  %add84 = add i64 %44, %42, !dbg !326
  store i64 %add84, ptr %43, align 8, !dbg !326
  br label %if.end85, !dbg !327

if.end85:                                         ; preds = %if.then82, %if.end80
  %45 = load ptr, ptr %s, align 8, !dbg !328
  call void @xz_dec_end(ptr noundef %45) #12, !dbg !329
  %46 = load i32, ptr %ret, align 4, !dbg !330
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb86
    i32 5, label %sw.bb87
    i32 6, label %sw.bb88
    i32 7, label %sw.bb89
    i32 8, label %sw.bb89
  ], !dbg !331

sw.bb:                                            ; preds = %if.end85
  store i32 0, ptr %retval, align 4, !dbg !332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !332

sw.bb86:                                          ; preds = %if.end85
  %47 = load ptr, ptr %error.addr, align 8, !dbg !334
  call void %47(ptr noundef @.str) #12, !dbg !334
  br label %sw.epilog, !dbg !335

sw.bb87:                                          ; preds = %if.end85
  %48 = load ptr, ptr %error.addr, align 8, !dbg !336
  call void %48(ptr noundef @.str.1) #12, !dbg !336
  br label %sw.epilog, !dbg !337

sw.bb88:                                          ; preds = %if.end85
  %49 = load ptr, ptr %error.addr, align 8, !dbg !338
  call void %49(ptr noundef @.str.2) #12, !dbg !338
  br label %sw.epilog, !dbg !339

sw.bb89:                                          ; preds = %if.end85, %if.end85
  %50 = load ptr, ptr %error.addr, align 8, !dbg !340
  call void %50(ptr noundef @.str.3) #12, !dbg !340
  br label %sw.epilog, !dbg !341

sw.default:                                       ; preds = %if.end85
  %51 = load ptr, ptr %error.addr, align 8, !dbg !342
  call void %51(ptr noundef @.str.4) #12, !dbg !342
  br label %sw.epilog, !dbg !343

sw.epilog:                                        ; preds = %sw.default, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86
  store i32 -1, ptr %retval, align 4, !dbg !344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !344

error_alloc_in:                                   ; preds = %if.then25
  call void @llvm.dbg.label(metadata !136), !dbg !345
  %52 = load ptr, ptr %flush.addr, align 8, !dbg !346
  %cmp90 = icmp ne ptr %52, null, !dbg !348
  br i1 %cmp90, label %if.then91, label %if.end93, !dbg !349

if.then91:                                        ; preds = %error_alloc_in
  %out92 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3, !dbg !350
  %53 = load ptr, ptr %out92, align 8, !dbg !350
  call void @kfree(ptr noundef %53) #12, !dbg !350
  br label %if.end93, !dbg !350

if.end93:                                         ; preds = %if.then91, %error_alloc_in
  br label %error_alloc_out, !dbg !351

error_alloc_out:                                  ; preds = %if.end93, %if.then18
  call void @llvm.dbg.label(metadata !137), !dbg !352
  %54 = load ptr, ptr %s, align 8, !dbg !353
  call void @xz_dec_end(ptr noundef %54) #12, !dbg !354
  br label %error_alloc_state, !dbg !354

error_alloc_state:                                ; preds = %error_alloc_out, %if.then7
  call void @llvm.dbg.label(metadata !138), !dbg !355
  %55 = load ptr, ptr %error.addr, align 8, !dbg !356
  call void %55(ptr noundef @.str) #12, !dbg !356
  store i32 -1, ptr %retval, align 4, !dbg !357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !357

cleanup:                                          ; preds = %error_alloc_state, %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr %must_free_in) #11, !dbg !358
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !358
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !358
  call void @llvm.lifetime.end.p0(i64 48, ptr %b) #11, !dbg !358
  %56 = load i32, ptr %retval, align 4, !dbg !358
  ret i32 %56, !dbg !358
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !359 dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !362 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !366, metadata !DIExpression()), !dbg !371
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !367, metadata !DIExpression()), !dbg !372
  %0 = load i64, ptr %size.addr, align 8, !dbg !373
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !374
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !375

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !376
  %tobool = icmp ne i64 %2, 0, !dbg !376
  br i1 %tobool, label %if.then, label %if.end7, !dbg !377

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #11, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %index, metadata !368, metadata !DIExpression()), !dbg !379
  %3 = load i64, ptr %size.addr, align 8, !dbg !380
  %cmp = icmp ugt i64 %3, 8192, !dbg !382
  br i1 %cmp, label %if.then1, label %if.end, !dbg !383

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !384
  %5 = load i32, ptr %flags.addr, align 4, !dbg !385
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #13, !dbg !386
  store ptr %call, ptr %retval, align 8, !dbg !387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !387

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !388
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #12, !dbg !388
  store i32 %call2, ptr %index, align 4, !dbg !389
  %7 = load i32, ptr %flags.addr, align 4, !dbg !390
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !391
  %9 = ptrtoint ptr %8 to i64, !dbg !391
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #12, !dbg !392
  %idxprom = zext i32 %call3 to i64, !dbg !393
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !393
  %10 = load i32, ptr %index, align 4, !dbg !394
  %idxprom4 = zext i32 %10 to i64, !dbg !393
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !393
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !393
  %12 = load i32, ptr %flags.addr, align 4, !dbg !395
  %13 = load i64, ptr %size.addr, align 8, !dbg !396
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #14, !dbg !397
  store ptr %call6, ptr %retval, align 8, !dbg !398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !398

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #11, !dbg !399
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !400
  %15 = load i32, ptr %flags.addr, align 4, !dbg !401
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #13, !dbg !402
  store ptr %call8, ptr %retval, align 8, !dbg !403
  br label %return, !dbg !403

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !404
  ret ptr %16, !dbg !404
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !405 dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !409 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !414 dso_local void @xz_dec_end(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !417 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !418 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !422, metadata !DIExpression()), !dbg !424
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !423, metadata !DIExpression()), !dbg !425
  %0 = load i64, ptr %size.addr, align 8, !dbg !426
  %tobool = icmp ne i64 %0, 0, !dbg !426
  br i1 %tobool, label %if.end, label %if.then, !dbg !428

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !429
  br label %return, !dbg !429

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !430
  %cmp = icmp ule i64 %1, 8, !dbg !432
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !433

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !434
  br label %return, !dbg !434

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !435
  %cmp3 = icmp ugt i64 %2, 64, !dbg !437
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !438

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !439
  %cmp4 = icmp ule i64 %3, 96, !dbg !440
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !441

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !442
  br label %return, !dbg !442

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !443
  %cmp7 = icmp ugt i64 %4, 128, !dbg !445
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !446

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !447
  %cmp9 = icmp ule i64 %5, 192, !dbg !448
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !449

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !450
  br label %return, !dbg !450

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !451
  %cmp12 = icmp ule i64 %6, 8, !dbg !453
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !454

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !455
  br label %return, !dbg !455

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !456
  %cmp15 = icmp ule i64 %7, 16, !dbg !458
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !459

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !460
  br label %return, !dbg !460

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !461
  %cmp18 = icmp ule i64 %8, 32, !dbg !463
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !464

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !465
  br label %return, !dbg !465

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !466
  %cmp21 = icmp ule i64 %9, 64, !dbg !468
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !469

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !470
  br label %return, !dbg !470

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !471
  %cmp24 = icmp ule i64 %10, 128, !dbg !473
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !474

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !475
  br label %return, !dbg !475

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !476
  %cmp27 = icmp ule i64 %11, 256, !dbg !478
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !479

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !480
  br label %return, !dbg !480

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !481
  %cmp30 = icmp ule i64 %12, 512, !dbg !483
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !484

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !485
  br label %return, !dbg !485

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !486
  %cmp33 = icmp ule i64 %13, 1024, !dbg !488
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !489

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !490
  br label %return, !dbg !490

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !491
  %cmp36 = icmp ule i64 %14, 2048, !dbg !493
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !494

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !495
  br label %return, !dbg !495

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !496
  %cmp39 = icmp ule i64 %15, 4096, !dbg !498
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !499

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !500
  br label %return, !dbg !500

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !501
  %cmp42 = icmp ule i64 %16, 8192, !dbg !503
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !504

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !505
  br label %return, !dbg !505

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !506
  %cmp45 = icmp ule i64 %17, 16384, !dbg !508
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !509

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !510
  br label %return, !dbg !510

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !511
  %cmp48 = icmp ule i64 %18, 32768, !dbg !513
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !514

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !515
  br label %return, !dbg !515

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !516
  %cmp51 = icmp ule i64 %19, 65536, !dbg !518
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !519

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !520
  br label %return, !dbg !520

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !521
  %cmp54 = icmp ule i64 %20, 131072, !dbg !523
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !524

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !525
  br label %return, !dbg !525

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !526
  %cmp57 = icmp ule i64 %21, 262144, !dbg !528
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !529

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !530
  br label %return, !dbg !530

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !531
  %cmp60 = icmp ule i64 %22, 524288, !dbg !533
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !534

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !535
  br label %return, !dbg !535

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !536
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !538
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !539

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !540
  br label %return, !dbg !540

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !541
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !543
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !544

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !545
  br label %return, !dbg !545

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !546, !range !311, !noundef !312
  %tobool69 = trunc i8 %25 to i1, !dbg !546
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !548

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !549

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #15, !dbg !550, !srcloc !553
  unreachable, !dbg !550

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !554

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !555

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !556

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !558

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !556

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #11, !dbg !560, !srcloc !562
  br label %do.end75, !dbg !560

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !556

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !563
  br label %return, !dbg !563

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !564
  ret i32 %26, !dbg !564
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !565 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !571 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !575, metadata !DIExpression()), !dbg !577
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !576, metadata !DIExpression()), !dbg !578
  %0 = load i32, ptr %flags.addr, align 4, !dbg !579
  %and = and i32 %0, 17, !dbg !579
  %cmp = icmp eq i32 %and, 0, !dbg !579
  %lnot = xor i1 %cmp, true, !dbg !579
  %lnot1 = xor i1 %lnot, true, !dbg !579
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !579
  %conv = sext i32 %lnot.ext to i64, !dbg !579
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !579
  %tobool = icmp ne i64 %expval, 0, !dbg !579
  br i1 %tobool, label %if.then, label %if.end, !dbg !581

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !582
  br label %return, !dbg !582

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !583
  %and2 = and i32 %1, 1, !dbg !585
  %tobool3 = icmp ne i32 %and2, 0, !dbg !585
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !586

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !587
  br label %return, !dbg !587

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !588
  br label %return, !dbg !588

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !590
  ret i32 %2, !dbg !590
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !591 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !592 dso_local void @__compiletime_assert_245() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone allocsize(0) }
attributes #14 = { noredzone allocsize(2) }
attributes #15 = { noredzone noreturn }

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/decompress_unxz.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9b25cc9cf7bec5fb10e5356115207d4e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 50)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 74)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 373, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 27)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !29, line: 480, type: !30, isLocal: true, isDefinition: true)
!29 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 21)
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_unxz.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_unxz\22 -D KBUILD_BASENAME=\22decompress_unxz\22 -D KBUILD_MODNAME=\22decompress_unxz\22 -D __KBUILD_MODNAME=kmod_decompress_unxz -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_unxz.ll lib/decompress_unxz.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !67, globals: !82, splitDebugInlining: false, nameTableKind: None)
!34 = !{!35, !48, !53, !58}
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_ret", file: !36, line: 108, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "./include/linux/xz.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffd75faa50baf17c238f800fe0cc3300")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIEnumerator(name: "XZ_OK", value: 0)
!40 = !DIEnumerator(name: "XZ_STREAM_END", value: 1)
!41 = !DIEnumerator(name: "XZ_UNSUPPORTED_CHECK", value: 2)
!42 = !DIEnumerator(name: "XZ_MEM_ERROR", value: 3)
!43 = !DIEnumerator(name: "XZ_MEMLIMIT_ERROR", value: 4)
!44 = !DIEnumerator(name: "XZ_FORMAT_ERROR", value: 5)
!45 = !DIEnumerator(name: "XZ_OPTIONS_ERROR", value: 6)
!46 = !DIEnumerator(name: "XZ_DATA_ERROR", value: 7)
!47 = !DIEnumerator(name: "XZ_BUF_ERROR", value: 8)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 10, baseType: !37, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0)
!52 = !DIEnumerator(name: "true", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_mode", file: !36, line: 52, baseType: !37, size: 32, elements: !54)
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "XZ_SINGLE", value: 0)
!56 = !DIEnumerator(name: "XZ_PREALLOC", value: 1)
!57 = !DIEnumerator(name: "XZ_DYNALLOC", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !29, line: 364, baseType: !37, size: 32, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!61 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!62 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!63 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!64 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!65 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!66 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!67 = !{!68, !69, !75, !80, !81, !79}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 110, baseType: !71)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !72, line: 21, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !74, line: 27, baseType: !37)
!74 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 61, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !77, line: 72, baseType: !78)
!77 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !77, line: 16, baseType: !79)
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 154, baseType: !37)
!81 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!82 = !{!0, !7, !12, !17, !22, !27}
!83 = !{i32 7, !"Dwarf Version", i32 5}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 8, !"cf-protection-branch", i32 1}
!87 = !{i32 4, !"function_return_thunk_extern", i32 1}
!88 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!89 = !{i32 1, !"Code Model", i32 2}
!90 = !{i32 1, !"override-stack-alignment", i32 8}
!91 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!92 = distinct !DISubprogram(name: "unxz", scope: !2, file: !2, line: 253, type: !93, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !106)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !96, !81, !98, !98, !96, !101, !102}
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!81, !68, !79}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !129, !132, !133, !136, !137, !138}
!107 = !DILocalVariable(name: "in", arg: 1, scope: !92, file: !2, line: 253, type: !96)
!108 = !DILocalVariable(name: "in_size", arg: 2, scope: !92, file: !2, line: 253, type: !81)
!109 = !DILocalVariable(name: "fill", arg: 3, scope: !92, file: !2, line: 254, type: !98)
!110 = !DILocalVariable(name: "flush", arg: 4, scope: !92, file: !2, line: 255, type: !98)
!111 = !DILocalVariable(name: "out", arg: 5, scope: !92, file: !2, line: 256, type: !96)
!112 = !DILocalVariable(name: "in_used", arg: 6, scope: !92, file: !2, line: 256, type: !101)
!113 = !DILocalVariable(name: "error", arg: 7, scope: !92, file: !2, line: 257, type: !102)
!114 = !DILocalVariable(name: "b", scope: !92, file: !2, line: 259, type: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_buf", file: !36, line: 136, size: 384, elements: !116)
!116 = !{!117, !123, !124, !125, !127, !128}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !115, file: !36, line: 137, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 108, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !72, line: 17, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !74, line: 21, baseType: !97)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "in_pos", scope: !115, file: !36, line: 138, baseType: !75, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "in_size", scope: !115, file: !36, line: 139, baseType: !75, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !115, file: !36, line: 141, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "out_pos", scope: !115, file: !36, line: 142, baseType: !75, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "out_size", scope: !115, file: !36, line: 143, baseType: !75, size: 64, offset: 320)
!129 = !DILocalVariable(name: "s", scope: !92, file: !2, line: 260, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec", file: !36, line: 149, flags: DIFlagFwdDecl)
!132 = !DILocalVariable(name: "ret", scope: !92, file: !2, line: 261, type: !35)
!133 = !DILocalVariable(name: "must_free_in", scope: !92, file: !2, line: 262, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 35, baseType: !135)
!135 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!136 = !DILabel(scope: !92, name: "error_alloc_in", file: !2, line: 383)
!137 = !DILabel(scope: !92, name: "error_alloc_out", file: !2, line: 387)
!138 = !DILabel(scope: !92, name: "error_alloc_state", file: !2, line: 390)
!139 = !DILocation(line: 253, column: 37, scope: !92)
!140 = !DILocation(line: 253, column: 46, scope: !92)
!141 = !DILocation(line: 254, column: 15, scope: !92)
!142 = !DILocation(line: 255, column: 15, scope: !92)
!143 = !DILocation(line: 256, column: 23, scope: !92)
!144 = !DILocation(line: 256, column: 34, scope: !92)
!145 = !DILocation(line: 257, column: 15, scope: !92)
!146 = !DILocation(line: 259, column: 2, scope: !92)
!147 = !DILocation(line: 259, column: 16, scope: !92)
!148 = !DILocation(line: 260, column: 2, scope: !92)
!149 = !DILocation(line: 260, column: 17, scope: !92)
!150 = !DILocation(line: 261, column: 2, scope: !92)
!151 = !DILocation(line: 261, column: 14, scope: !92)
!152 = !DILocation(line: 262, column: 2, scope: !92)
!153 = !DILocation(line: 262, column: 7, scope: !92)
!154 = !DILocation(line: 268, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !92, file: !2, line: 268, column: 6)
!156 = !DILocation(line: 268, column: 14, scope: !155)
!157 = !DILocation(line: 268, column: 6, scope: !92)
!158 = !DILocation(line: 269, column: 4, scope: !155)
!159 = !DILocation(line: 269, column: 12, scope: !155)
!160 = !DILocation(line: 269, column: 3, scope: !155)
!161 = !DILocation(line: 271, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !92, file: !2, line: 271, column: 6)
!163 = !DILocation(line: 271, column: 11, scope: !162)
!164 = !DILocation(line: 271, column: 19, scope: !162)
!165 = !DILocation(line: 271, column: 22, scope: !162)
!166 = !DILocation(line: 271, column: 28, scope: !162)
!167 = !DILocation(line: 271, column: 6, scope: !92)
!168 = !DILocation(line: 272, column: 7, scope: !162)
!169 = !DILocation(line: 272, column: 5, scope: !162)
!170 = !DILocation(line: 272, column: 3, scope: !162)
!171 = !DILocation(line: 274, column: 7, scope: !162)
!172 = !DILocation(line: 274, column: 5, scope: !162)
!173 = !DILocation(line: 276, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !92, file: !2, line: 276, column: 6)
!175 = !DILocation(line: 276, column: 8, scope: !174)
!176 = !DILocation(line: 276, column: 6, scope: !92)
!177 = !DILocation(line: 277, column: 3, scope: !174)
!178 = !DILocation(line: 279, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !92, file: !2, line: 279, column: 6)
!180 = !DILocation(line: 279, column: 12, scope: !179)
!181 = !DILocation(line: 279, column: 6, scope: !92)
!182 = !DILocation(line: 280, column: 11, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !2, line: 279, column: 21)
!184 = !DILocation(line: 280, column: 5, scope: !183)
!185 = !DILocation(line: 280, column: 9, scope: !183)
!186 = !DILocation(line: 281, column: 5, scope: !183)
!187 = !DILocation(line: 281, column: 14, scope: !183)
!188 = !DILocation(line: 282, column: 2, scope: !183)
!189 = !DILocation(line: 283, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !179, file: !2, line: 282, column: 9)
!191 = !DILocation(line: 283, column: 14, scope: !190)
!192 = !DILocation(line: 284, column: 11, scope: !190)
!193 = !DILocation(line: 284, column: 5, scope: !190)
!194 = !DILocation(line: 284, column: 9, scope: !190)
!195 = !DILocation(line: 285, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !2, line: 285, column: 7)
!197 = !DILocation(line: 285, column: 13, scope: !196)
!198 = !DILocation(line: 285, column: 7, scope: !190)
!199 = !DILocation(line: 286, column: 4, scope: !196)
!200 = !DILocation(line: 289, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !92, file: !2, line: 289, column: 6)
!202 = !DILocation(line: 289, column: 9, scope: !201)
!203 = !DILocation(line: 289, column: 6, scope: !92)
!204 = !DILocation(line: 290, column: 16, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !2, line: 289, column: 18)
!206 = !DILocation(line: 291, column: 8, scope: !205)
!207 = !DILocation(line: 291, column: 6, scope: !205)
!208 = !DILocation(line: 292, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !2, line: 292, column: 7)
!210 = !DILocation(line: 292, column: 10, scope: !209)
!211 = !DILocation(line: 292, column: 7, scope: !205)
!212 = !DILocation(line: 293, column: 4, scope: !209)
!213 = !DILocation(line: 294, column: 2, scope: !205)
!214 = !DILocation(line: 296, column: 9, scope: !92)
!215 = !DILocation(line: 296, column: 4, scope: !92)
!216 = !DILocation(line: 296, column: 7, scope: !92)
!217 = !DILocation(line: 297, column: 4, scope: !92)
!218 = !DILocation(line: 297, column: 11, scope: !92)
!219 = !DILocation(line: 298, column: 14, scope: !92)
!220 = !DILocation(line: 298, column: 4, scope: !92)
!221 = !DILocation(line: 298, column: 12, scope: !92)
!222 = !DILocation(line: 299, column: 4, scope: !92)
!223 = !DILocation(line: 299, column: 12, scope: !92)
!224 = !DILocation(line: 301, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !92, file: !2, line: 301, column: 6)
!226 = !DILocation(line: 301, column: 11, scope: !225)
!227 = !DILocation(line: 301, column: 19, scope: !225)
!228 = !DILocation(line: 301, column: 22, scope: !225)
!229 = !DILocation(line: 301, column: 28, scope: !225)
!230 = !DILocation(line: 301, column: 6, scope: !92)
!231 = !DILocation(line: 302, column: 20, scope: !232)
!232 = distinct !DILexicalBlock(scope: !225, file: !2, line: 301, column: 37)
!233 = !DILocation(line: 302, column: 9, scope: !232)
!234 = !DILocation(line: 302, column: 7, scope: !232)
!235 = !DILocation(line: 303, column: 2, scope: !232)
!236 = !DILocation(line: 304, column: 3, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !2, line: 303, column: 9)
!238 = !DILocation(line: 305, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 305, column: 8)
!240 = distinct !DILexicalBlock(scope: !237, file: !2, line: 304, column: 6)
!241 = !DILocation(line: 305, column: 22, scope: !239)
!242 = !DILocation(line: 305, column: 17, scope: !239)
!243 = !DILocation(line: 305, column: 30, scope: !239)
!244 = !DILocation(line: 305, column: 33, scope: !239)
!245 = !DILocation(line: 305, column: 38, scope: !239)
!246 = !DILocation(line: 305, column: 8, scope: !240)
!247 = !DILocation(line: 306, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 306, column: 9)
!249 = distinct !DILexicalBlock(scope: !239, file: !2, line: 305, column: 47)
!250 = !DILocation(line: 306, column: 17, scope: !248)
!251 = !DILocation(line: 306, column: 9, scope: !249)
!252 = !DILocation(line: 307, column: 20, scope: !248)
!253 = !DILocation(line: 307, column: 7, scope: !248)
!254 = !DILocation(line: 307, column: 15, scope: !248)
!255 = !DILocation(line: 307, column: 6, scope: !248)
!256 = !DILocation(line: 309, column: 7, scope: !249)
!257 = !DILocation(line: 309, column: 14, scope: !249)
!258 = !DILocation(line: 311, column: 15, scope: !249)
!259 = !DILocation(line: 311, column: 20, scope: !249)
!260 = !DILocation(line: 311, column: 13, scope: !249)
!261 = !DILocation(line: 312, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !249, file: !2, line: 312, column: 9)
!263 = !DILocation(line: 312, column: 17, scope: !262)
!264 = !DILocation(line: 312, column: 9, scope: !249)
!265 = !DILocation(line: 318, column: 10, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !2, line: 312, column: 22)
!267 = !DILocation(line: 319, column: 6, scope: !266)
!268 = !DILocation(line: 322, column: 17, scope: !249)
!269 = !DILocation(line: 322, column: 7, scope: !249)
!270 = !DILocation(line: 322, column: 15, scope: !249)
!271 = !DILocation(line: 323, column: 4, scope: !249)
!272 = !DILocation(line: 325, column: 21, scope: !240)
!273 = !DILocation(line: 325, column: 10, scope: !240)
!274 = !DILocation(line: 325, column: 8, scope: !240)
!275 = !DILocation(line: 327, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !240, file: !2, line: 327, column: 8)
!277 = !DILocation(line: 327, column: 14, scope: !276)
!278 = !DILocation(line: 327, column: 22, scope: !276)
!279 = !DILocation(line: 327, column: 28, scope: !276)
!280 = !DILocation(line: 327, column: 41, scope: !276)
!281 = !DILocation(line: 327, column: 36, scope: !276)
!282 = !DILocation(line: 328, column: 6, scope: !276)
!283 = !DILocation(line: 328, column: 10, scope: !276)
!284 = !DILocation(line: 328, column: 14, scope: !276)
!285 = !DILocation(line: 328, column: 23, scope: !276)
!286 = !DILocation(line: 328, column: 28, scope: !276)
!287 = !DILocation(line: 328, column: 36, scope: !276)
!288 = !DILocation(line: 327, column: 8, scope: !240)
!289 = !DILocation(line: 334, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 334, column: 9)
!291 = distinct !DILexicalBlock(scope: !276, file: !2, line: 328, column: 43)
!292 = !DILocation(line: 334, column: 17, scope: !290)
!293 = !DILocation(line: 334, column: 24, scope: !290)
!294 = !DILocation(line: 334, column: 44, scope: !290)
!295 = !DILocation(line: 334, column: 33, scope: !290)
!296 = !DILocation(line: 334, column: 9, scope: !291)
!297 = !DILocation(line: 335, column: 10, scope: !290)
!298 = !DILocation(line: 335, column: 6, scope: !290)
!299 = !DILocation(line: 337, column: 7, scope: !291)
!300 = !DILocation(line: 337, column: 15, scope: !291)
!301 = !DILocation(line: 338, column: 4, scope: !291)
!302 = !DILocation(line: 339, column: 3, scope: !240)
!303 = !DILocation(line: 339, column: 12, scope: !237)
!304 = !DILocation(line: 339, column: 16, scope: !237)
!305 = distinct !{!305, !236, !306, !307, !308}
!306 = !DILocation(line: 339, column: 24, scope: !237)
!307 = !{!"llvm.loop.mustprogress"}
!308 = !{!"llvm.loop.unroll.disable"}
!309 = !DILocation(line: 341, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !237, file: !2, line: 341, column: 7)
!311 = !{i8 0, i8 2}
!312 = !{}
!313 = !DILocation(line: 341, column: 7, scope: !237)
!314 = !DILocation(line: 342, column: 4, scope: !310)
!315 = !DILocation(line: 344, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !237, file: !2, line: 344, column: 7)
!317 = !DILocation(line: 344, column: 13, scope: !316)
!318 = !DILocation(line: 344, column: 7, scope: !237)
!319 = !DILocation(line: 345, column: 4, scope: !316)
!320 = !DILocation(line: 348, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !92, file: !2, line: 348, column: 6)
!322 = !DILocation(line: 348, column: 14, scope: !321)
!323 = !DILocation(line: 348, column: 6, scope: !92)
!324 = !DILocation(line: 349, column: 17, scope: !321)
!325 = !DILocation(line: 349, column: 4, scope: !321)
!326 = !DILocation(line: 349, column: 12, scope: !321)
!327 = !DILocation(line: 349, column: 3, scope: !321)
!328 = !DILocation(line: 351, column: 13, scope: !92)
!329 = !DILocation(line: 351, column: 2, scope: !92)
!330 = !DILocation(line: 353, column: 10, scope: !92)
!331 = !DILocation(line: 353, column: 2, scope: !92)
!332 = !DILocation(line: 355, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !92, file: !2, line: 353, column: 15)
!334 = !DILocation(line: 359, column: 3, scope: !333)
!335 = !DILocation(line: 360, column: 3, scope: !333)
!336 = !DILocation(line: 363, column: 3, scope: !333)
!337 = !DILocation(line: 364, column: 3, scope: !333)
!338 = !DILocation(line: 367, column: 3, scope: !333)
!339 = !DILocation(line: 369, column: 3, scope: !333)
!340 = !DILocation(line: 373, column: 3, scope: !333)
!341 = !DILocation(line: 374, column: 3, scope: !333)
!342 = !DILocation(line: 377, column: 3, scope: !333)
!343 = !DILocation(line: 378, column: 3, scope: !333)
!344 = !DILocation(line: 381, column: 2, scope: !92)
!345 = !DILocation(line: 383, column: 1, scope: !92)
!346 = !DILocation(line: 384, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !92, file: !2, line: 384, column: 6)
!348 = !DILocation(line: 384, column: 12, scope: !347)
!349 = !DILocation(line: 384, column: 6, scope: !92)
!350 = !DILocation(line: 385, column: 3, scope: !347)
!351 = !DILocation(line: 384, column: 15, scope: !347)
!352 = !DILocation(line: 387, column: 1, scope: !92)
!353 = !DILocation(line: 388, column: 13, scope: !92)
!354 = !DILocation(line: 388, column: 2, scope: !92)
!355 = !DILocation(line: 390, column: 1, scope: !92)
!356 = !DILocation(line: 391, column: 2, scope: !92)
!357 = !DILocation(line: 392, column: 2, scope: !92)
!358 = !DILocation(line: 393, column: 1, scope: !92)
!359 = !DISubprogram(name: "xz_dec_init", scope: !36, file: !36, line: 194, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!130, !53, !69}
!362 = distinct !DISubprogram(name: "kmalloc", scope: !29, file: !29, line: 591, type: !363, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!68, !75, !80}
!365 = !{!366, !367, !368}
!366 = !DILocalVariable(name: "size", arg: 1, scope: !362, file: !29, line: 591, type: !75)
!367 = !DILocalVariable(name: "flags", arg: 2, scope: !362, file: !29, line: 591, type: !80)
!368 = !DILocalVariable(name: "index", scope: !369, file: !29, line: 594, type: !37)
!369 = distinct !DILexicalBlock(scope: !370, file: !29, line: 593, column: 42)
!370 = distinct !DILexicalBlock(scope: !362, file: !29, line: 593, column: 6)
!371 = !DILocation(line: 591, column: 61, scope: !362)
!372 = !DILocation(line: 591, column: 73, scope: !362)
!373 = !DILocation(line: 593, column: 27, scope: !370)
!374 = !DILocation(line: 593, column: 6, scope: !370)
!375 = !DILocation(line: 593, column: 33, scope: !370)
!376 = !DILocation(line: 593, column: 36, scope: !370)
!377 = !DILocation(line: 593, column: 6, scope: !362)
!378 = !DILocation(line: 594, column: 3, scope: !369)
!379 = !DILocation(line: 594, column: 16, scope: !369)
!380 = !DILocation(line: 596, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !369, file: !29, line: 596, column: 7)
!382 = !DILocation(line: 596, column: 12, scope: !381)
!383 = !DILocation(line: 596, column: 7, scope: !369)
!384 = !DILocation(line: 597, column: 25, scope: !381)
!385 = !DILocation(line: 597, column: 31, scope: !381)
!386 = !DILocation(line: 597, column: 11, scope: !381)
!387 = !DILocation(line: 597, column: 4, scope: !381)
!388 = !DILocation(line: 599, column: 11, scope: !369)
!389 = !DILocation(line: 599, column: 9, scope: !369)
!390 = !DILocation(line: 601, column: 33, scope: !369)
!391 = !DILocation(line: 601, column: 40, scope: !369)
!392 = !DILocation(line: 601, column: 20, scope: !369)
!393 = !DILocation(line: 601, column: 5, scope: !369)
!394 = !DILocation(line: 601, column: 51, scope: !369)
!395 = !DILocation(line: 602, column: 5, scope: !369)
!396 = !DILocation(line: 602, column: 12, scope: !369)
!397 = !DILocation(line: 600, column: 10, scope: !369)
!398 = !DILocation(line: 600, column: 3, scope: !369)
!399 = !DILocation(line: 603, column: 2, scope: !370)
!400 = !DILocation(line: 604, column: 19, scope: !362)
!401 = !DILocation(line: 604, column: 25, scope: !362)
!402 = !DILocation(line: 604, column: 9, scope: !362)
!403 = !DILocation(line: 604, column: 2, scope: !362)
!404 = !DILocation(line: 605, column: 1, scope: !362)
!405 = !DISubprogram(name: "xz_dec_run", scope: !36, file: !36, line: 214, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!35, !130, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!409 = !DISubprogram(name: "kfree", scope: !29, file: !29, line: 227, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!414 = !DISubprogram(name: "xz_dec_end", scope: !36, file: !36, line: 234, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !130}
!417 = !DISubprogram(name: "kmalloc_large", scope: !29, file: !29, line: 531, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = distinct !DISubprogram(name: "__kmalloc_index", scope: !29, file: !29, line: 444, type: !419, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!37, !75, !134}
!421 = !{!422, !423}
!422 = !DILocalVariable(name: "size", arg: 1, scope: !418, file: !29, line: 444, type: !75)
!423 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !418, file: !29, line: 445, type: !134)
!424 = !DILocation(line: 444, column: 60, scope: !418)
!425 = !DILocation(line: 445, column: 16, scope: !418)
!426 = !DILocation(line: 447, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !29, line: 447, column: 6)
!428 = !DILocation(line: 447, column: 6, scope: !418)
!429 = !DILocation(line: 448, column: 3, scope: !427)
!430 = !DILocation(line: 450, column: 6, scope: !431)
!431 = distinct !DILexicalBlock(scope: !418, file: !29, line: 450, column: 6)
!432 = !DILocation(line: 450, column: 11, scope: !431)
!433 = !DILocation(line: 450, column: 6, scope: !418)
!434 = !DILocation(line: 451, column: 3, scope: !431)
!435 = !DILocation(line: 453, column: 32, scope: !436)
!436 = distinct !DILexicalBlock(scope: !418, file: !29, line: 453, column: 6)
!437 = !DILocation(line: 453, column: 37, scope: !436)
!438 = !DILocation(line: 453, column: 42, scope: !436)
!439 = !DILocation(line: 453, column: 45, scope: !436)
!440 = !DILocation(line: 453, column: 50, scope: !436)
!441 = !DILocation(line: 453, column: 6, scope: !418)
!442 = !DILocation(line: 454, column: 3, scope: !436)
!443 = !DILocation(line: 455, column: 32, scope: !444)
!444 = distinct !DILexicalBlock(scope: !418, file: !29, line: 455, column: 6)
!445 = !DILocation(line: 455, column: 37, scope: !444)
!446 = !DILocation(line: 455, column: 43, scope: !444)
!447 = !DILocation(line: 455, column: 46, scope: !444)
!448 = !DILocation(line: 455, column: 51, scope: !444)
!449 = !DILocation(line: 455, column: 6, scope: !418)
!450 = !DILocation(line: 456, column: 3, scope: !444)
!451 = !DILocation(line: 457, column: 6, scope: !452)
!452 = distinct !DILexicalBlock(scope: !418, file: !29, line: 457, column: 6)
!453 = !DILocation(line: 457, column: 11, scope: !452)
!454 = !DILocation(line: 457, column: 6, scope: !418)
!455 = !DILocation(line: 457, column: 26, scope: !452)
!456 = !DILocation(line: 458, column: 6, scope: !457)
!457 = distinct !DILexicalBlock(scope: !418, file: !29, line: 458, column: 6)
!458 = !DILocation(line: 458, column: 11, scope: !457)
!459 = !DILocation(line: 458, column: 6, scope: !418)
!460 = !DILocation(line: 458, column: 26, scope: !457)
!461 = !DILocation(line: 459, column: 6, scope: !462)
!462 = distinct !DILexicalBlock(scope: !418, file: !29, line: 459, column: 6)
!463 = !DILocation(line: 459, column: 11, scope: !462)
!464 = !DILocation(line: 459, column: 6, scope: !418)
!465 = !DILocation(line: 459, column: 26, scope: !462)
!466 = !DILocation(line: 460, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !418, file: !29, line: 460, column: 6)
!468 = !DILocation(line: 460, column: 11, scope: !467)
!469 = !DILocation(line: 460, column: 6, scope: !418)
!470 = !DILocation(line: 460, column: 26, scope: !467)
!471 = !DILocation(line: 461, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !418, file: !29, line: 461, column: 6)
!473 = !DILocation(line: 461, column: 11, scope: !472)
!474 = !DILocation(line: 461, column: 6, scope: !418)
!475 = !DILocation(line: 461, column: 26, scope: !472)
!476 = !DILocation(line: 462, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !418, file: !29, line: 462, column: 6)
!478 = !DILocation(line: 462, column: 11, scope: !477)
!479 = !DILocation(line: 462, column: 6, scope: !418)
!480 = !DILocation(line: 462, column: 26, scope: !477)
!481 = !DILocation(line: 463, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !418, file: !29, line: 463, column: 6)
!483 = !DILocation(line: 463, column: 11, scope: !482)
!484 = !DILocation(line: 463, column: 6, scope: !418)
!485 = !DILocation(line: 463, column: 26, scope: !482)
!486 = !DILocation(line: 464, column: 6, scope: !487)
!487 = distinct !DILexicalBlock(scope: !418, file: !29, line: 464, column: 6)
!488 = !DILocation(line: 464, column: 11, scope: !487)
!489 = !DILocation(line: 464, column: 6, scope: !418)
!490 = !DILocation(line: 464, column: 26, scope: !487)
!491 = !DILocation(line: 465, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !418, file: !29, line: 465, column: 6)
!493 = !DILocation(line: 465, column: 11, scope: !492)
!494 = !DILocation(line: 465, column: 6, scope: !418)
!495 = !DILocation(line: 465, column: 26, scope: !492)
!496 = !DILocation(line: 466, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !418, file: !29, line: 466, column: 6)
!498 = !DILocation(line: 466, column: 11, scope: !497)
!499 = !DILocation(line: 466, column: 6, scope: !418)
!500 = !DILocation(line: 466, column: 26, scope: !497)
!501 = !DILocation(line: 467, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !418, file: !29, line: 467, column: 6)
!503 = !DILocation(line: 467, column: 11, scope: !502)
!504 = !DILocation(line: 467, column: 6, scope: !418)
!505 = !DILocation(line: 467, column: 26, scope: !502)
!506 = !DILocation(line: 468, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !418, file: !29, line: 468, column: 6)
!508 = !DILocation(line: 468, column: 11, scope: !507)
!509 = !DILocation(line: 468, column: 6, scope: !418)
!510 = !DILocation(line: 468, column: 26, scope: !507)
!511 = !DILocation(line: 469, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !418, file: !29, line: 469, column: 6)
!513 = !DILocation(line: 469, column: 11, scope: !512)
!514 = !DILocation(line: 469, column: 6, scope: !418)
!515 = !DILocation(line: 469, column: 26, scope: !512)
!516 = !DILocation(line: 470, column: 6, scope: !517)
!517 = distinct !DILexicalBlock(scope: !418, file: !29, line: 470, column: 6)
!518 = !DILocation(line: 470, column: 11, scope: !517)
!519 = !DILocation(line: 470, column: 6, scope: !418)
!520 = !DILocation(line: 470, column: 26, scope: !517)
!521 = !DILocation(line: 471, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !418, file: !29, line: 471, column: 6)
!523 = !DILocation(line: 471, column: 11, scope: !522)
!524 = !DILocation(line: 471, column: 6, scope: !418)
!525 = !DILocation(line: 471, column: 26, scope: !522)
!526 = !DILocation(line: 472, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !418, file: !29, line: 472, column: 6)
!528 = !DILocation(line: 472, column: 11, scope: !527)
!529 = !DILocation(line: 472, column: 6, scope: !418)
!530 = !DILocation(line: 472, column: 26, scope: !527)
!531 = !DILocation(line: 473, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !418, file: !29, line: 473, column: 6)
!533 = !DILocation(line: 473, column: 11, scope: !532)
!534 = !DILocation(line: 473, column: 6, scope: !418)
!535 = !DILocation(line: 473, column: 26, scope: !532)
!536 = !DILocation(line: 474, column: 6, scope: !537)
!537 = distinct !DILexicalBlock(scope: !418, file: !29, line: 474, column: 6)
!538 = !DILocation(line: 474, column: 11, scope: !537)
!539 = !DILocation(line: 474, column: 6, scope: !418)
!540 = !DILocation(line: 474, column: 27, scope: !537)
!541 = !DILocation(line: 475, column: 6, scope: !542)
!542 = distinct !DILexicalBlock(scope: !418, file: !29, line: 475, column: 6)
!543 = !DILocation(line: 475, column: 11, scope: !542)
!544 = !DILocation(line: 475, column: 6, scope: !418)
!545 = !DILocation(line: 475, column: 32, scope: !542)
!546 = !DILocation(line: 477, column: 50, scope: !547)
!547 = distinct !DILexicalBlock(scope: !418, file: !29, line: 477, column: 6)
!548 = !DILocation(line: 477, column: 6, scope: !418)
!549 = !DILocation(line: 478, column: 3, scope: !547)
!550 = !DILocation(line: 478, column: 3, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !29, line: 478, column: 3)
!552 = distinct !DILexicalBlock(scope: !547, file: !29, line: 478, column: 3)
!553 = !{i32 -2141711278}
!554 = !DILocation(line: 478, column: 3, scope: !552)
!555 = !DILocation(line: 480, column: 3, scope: !547)
!556 = !DILocation(line: 480, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !547, file: !29, line: 480, column: 3)
!558 = !DILocation(line: 480, column: 3, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !29, line: 480, column: 3)
!560 = !DILocation(line: 480, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !29, line: 480, column: 3)
!562 = !{i64 2153256221, i64 2153256250, i64 2153256296, i64 2153256354, i64 2153256408, i64 2153256462, i64 2153256517, i64 2153256548}
!563 = !DILocation(line: 483, column: 2, scope: !418)
!564 = !DILocation(line: 484, column: 1, scope: !418)
!565 = !DISubprogram(name: "kmalloc_trace", scope: !29, file: !29, line: 525, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{!68, !568, !80, !75}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !570, line: 325, flags: DIFlagFwdDecl)
!570 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!571 = distinct !DISubprogram(name: "kmalloc_type", scope: !29, file: !29, line: 401, type: !572, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!58, !80, !79}
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "flags", arg: 1, scope: !571, file: !29, line: 401, type: !80)
!576 = !DILocalVariable(name: "caller", arg: 2, scope: !571, file: !29, line: 401, type: !79)
!577 = !DILocation(line: 401, column: 67, scope: !571)
!578 = !DILocation(line: 401, column: 88, scope: !571)
!579 = !DILocation(line: 407, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !571, file: !29, line: 407, column: 6)
!581 = !DILocation(line: 407, column: 6, scope: !571)
!582 = !DILocation(line: 413, column: 3, scope: !580)
!583 = !DILocation(line: 423, column: 38, scope: !584)
!584 = distinct !DILexicalBlock(scope: !571, file: !29, line: 423, column: 6)
!585 = !DILocation(line: 423, column: 44, scope: !584)
!586 = !DILocation(line: 423, column: 6, scope: !571)
!587 = !DILocation(line: 424, column: 3, scope: !584)
!588 = !DILocation(line: 426, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !571, file: !29, line: 425, column: 6)
!590 = !DILocation(line: 429, column: 1, scope: !571)
!591 = !DISubprogram(name: "__kmalloc", scope: !29, file: !29, line: 488, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubprogram(name: "__compiletime_assert_245", scope: !29, file: !29, line: 478, type: !593, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{null}
