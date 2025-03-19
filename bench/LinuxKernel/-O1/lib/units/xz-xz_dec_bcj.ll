; ModuleID = 'lib/xz/xz_dec_bcj.c'
source_filename = "lib/xz/xz_dec_bcj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_bcj = type { i32, i32, i8, i32, i32, ptr, i64, i64, %struct.anon }
%struct.anon = type { i64, i64, [16 x i8] }
%struct.xz_buf = type { ptr, i64, i64, ptr, i64, i64 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32 }
%struct.anon.3 = type { i32 }

@bcj_x86.mask_to_allowed_status = internal constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1, !dbg !0
@bcj_x86.mask_to_bit_num = internal constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1, !dbg !140
@bcj_ia64.branch_table = internal constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\06\06\00\00\07\07\04\04\00\00\04\04\00\00", align 16, !dbg !146
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !166

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xz_dec_bcj_run(ptr noundef %s, ptr noundef %lzma2, ptr noundef %b) #0 align 16 !dbg !194 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %lzma2.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %out_start = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !211, metadata !DIExpression()), !dbg !215
  store ptr %lzma2, ptr %lzma2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lzma2.addr, metadata !212, metadata !DIExpression()), !dbg !216
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !213, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_start) #13, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %out_start, metadata !214, metadata !DIExpression()), !dbg !219
  %0 = load ptr, ptr %s.addr, align 8, !dbg !220
  %temp = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, !dbg !222
  %filtered = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 0, !dbg !223
  %1 = load i64, ptr %filtered, align 8, !dbg !223
  %cmp = icmp ugt i64 %1, 0, !dbg !224
  br i1 %cmp, label %if.then, label %if.end8, !dbg !225

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !226
  %3 = load ptr, ptr %b.addr, align 8, !dbg !228
  call void @bcj_flush(ptr noundef %2, ptr noundef %3) #14, !dbg !229
  %4 = load ptr, ptr %s.addr, align 8, !dbg !230
  %temp1 = getelementptr inbounds %struct.xz_dec_bcj, ptr %4, i32 0, i32 8, !dbg !232
  %filtered2 = getelementptr inbounds %struct.anon, ptr %temp1, i32 0, i32 0, !dbg !233
  %5 = load i64, ptr %filtered2, align 8, !dbg !233
  %cmp3 = icmp ugt i64 %5, 0, !dbg !234
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !235

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !236

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %s.addr, align 8, !dbg !237
  %ret = getelementptr inbounds %struct.xz_dec_bcj, ptr %6, i32 0, i32 1, !dbg !239
  %7 = load i32, ptr %ret, align 4, !dbg !239
  %cmp5 = icmp eq i32 %7, 1, !dbg !240
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !241

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end7:                                          ; preds = %if.end
  br label %if.end8, !dbg !243

if.end8:                                          ; preds = %if.end7, %entry
  %8 = load ptr, ptr %s.addr, align 8, !dbg !244
  %temp9 = getelementptr inbounds %struct.xz_dec_bcj, ptr %8, i32 0, i32 8, !dbg !246
  %size = getelementptr inbounds %struct.anon, ptr %temp9, i32 0, i32 1, !dbg !247
  %9 = load i64, ptr %size, align 8, !dbg !247
  %10 = load ptr, ptr %b.addr, align 8, !dbg !248
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %10, i32 0, i32 5, !dbg !249
  %11 = load i64, ptr %out_size, align 8, !dbg !249
  %12 = load ptr, ptr %b.addr, align 8, !dbg !250
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %12, i32 0, i32 4, !dbg !251
  %13 = load i64, ptr %out_pos, align 8, !dbg !251
  %sub = sub i64 %11, %13, !dbg !252
  %cmp10 = icmp ult i64 %9, %sub, !dbg !253
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !254

lor.lhs.false:                                    ; preds = %if.end8
  %14 = load ptr, ptr %s.addr, align 8, !dbg !255
  %temp11 = getelementptr inbounds %struct.xz_dec_bcj, ptr %14, i32 0, i32 8, !dbg !256
  %size12 = getelementptr inbounds %struct.anon, ptr %temp11, i32 0, i32 1, !dbg !257
  %15 = load i64, ptr %size12, align 8, !dbg !257
  %cmp13 = icmp eq i64 %15, 0, !dbg !258
  br i1 %cmp13, label %if.then14, label %if.end62, !dbg !259

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  %16 = load ptr, ptr %b.addr, align 8, !dbg !260
  %out_pos15 = getelementptr inbounds %struct.xz_buf, ptr %16, i32 0, i32 4, !dbg !262
  %17 = load i64, ptr %out_pos15, align 8, !dbg !262
  store i64 %17, ptr %out_start, align 8, !dbg !263
  %18 = load ptr, ptr %b.addr, align 8, !dbg !264
  %out = getelementptr inbounds %struct.xz_buf, ptr %18, i32 0, i32 3, !dbg !265
  %19 = load ptr, ptr %out, align 8, !dbg !265
  %20 = load ptr, ptr %b.addr, align 8, !dbg !266
  %out_pos16 = getelementptr inbounds %struct.xz_buf, ptr %20, i32 0, i32 4, !dbg !267
  %21 = load i64, ptr %out_pos16, align 8, !dbg !267
  %add.ptr = getelementptr i8, ptr %19, i64 %21, !dbg !268
  %22 = load ptr, ptr %s.addr, align 8, !dbg !269
  %temp17 = getelementptr inbounds %struct.xz_dec_bcj, ptr %22, i32 0, i32 8, !dbg !270
  %buf = getelementptr inbounds %struct.anon, ptr %temp17, i32 0, i32 2, !dbg !271
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !dbg !272
  %23 = load ptr, ptr %s.addr, align 8, !dbg !273
  %temp18 = getelementptr inbounds %struct.xz_dec_bcj, ptr %23, i32 0, i32 8, !dbg !274
  %size19 = getelementptr inbounds %struct.anon, ptr %temp18, i32 0, i32 1, !dbg !275
  %24 = load i64, ptr %size19, align 8, !dbg !275
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 8 %arraydecay, i64 %24, i1 false), !dbg !272
  %25 = load ptr, ptr %s.addr, align 8, !dbg !276
  %temp20 = getelementptr inbounds %struct.xz_dec_bcj, ptr %25, i32 0, i32 8, !dbg !277
  %size21 = getelementptr inbounds %struct.anon, ptr %temp20, i32 0, i32 1, !dbg !278
  %26 = load i64, ptr %size21, align 8, !dbg !278
  %27 = load ptr, ptr %b.addr, align 8, !dbg !279
  %out_pos22 = getelementptr inbounds %struct.xz_buf, ptr %27, i32 0, i32 4, !dbg !280
  %28 = load i64, ptr %out_pos22, align 8, !dbg !281
  %add = add i64 %28, %26, !dbg !281
  store i64 %add, ptr %out_pos22, align 8, !dbg !281
  %29 = load ptr, ptr %lzma2.addr, align 8, !dbg !282
  %30 = load ptr, ptr %b.addr, align 8, !dbg !283
  %call = call i32 @xz_dec_lzma2_run(ptr noundef %29, ptr noundef %30) #14, !dbg !284
  %31 = load ptr, ptr %s.addr, align 8, !dbg !285
  %ret23 = getelementptr inbounds %struct.xz_dec_bcj, ptr %31, i32 0, i32 1, !dbg !286
  store i32 %call, ptr %ret23, align 4, !dbg !287
  %32 = load ptr, ptr %s.addr, align 8, !dbg !288
  %ret24 = getelementptr inbounds %struct.xz_dec_bcj, ptr %32, i32 0, i32 1, !dbg !290
  %33 = load i32, ptr %ret24, align 4, !dbg !290
  %cmp25 = icmp ne i32 %33, 1, !dbg !291
  br i1 %cmp25, label %land.lhs.true, label %if.end31, !dbg !292

land.lhs.true:                                    ; preds = %if.then14
  %34 = load ptr, ptr %s.addr, align 8, !dbg !293
  %ret26 = getelementptr inbounds %struct.xz_dec_bcj, ptr %34, i32 0, i32 1, !dbg !294
  %35 = load i32, ptr %ret26, align 4, !dbg !294
  %cmp27 = icmp ne i32 %35, 0, !dbg !295
  br i1 %cmp27, label %if.then29, label %lor.lhs.false28, !dbg !296

lor.lhs.false28:                                  ; preds = %land.lhs.true
  %36 = load ptr, ptr %s.addr, align 8, !dbg !297
  %single_call = getelementptr inbounds %struct.xz_dec_bcj, ptr %36, i32 0, i32 2, !dbg !298
  %37 = load i8, ptr %single_call, align 8, !dbg !298, !range !299, !noundef !300
  %tobool = trunc i8 %37 to i1, !dbg !298
  br i1 %tobool, label %if.then29, label %if.end31, !dbg !301

if.then29:                                        ; preds = %lor.lhs.false28, %land.lhs.true
  %38 = load ptr, ptr %s.addr, align 8, !dbg !302
  %ret30 = getelementptr inbounds %struct.xz_dec_bcj, ptr %38, i32 0, i32 1, !dbg !303
  %39 = load i32, ptr %ret30, align 4, !dbg !303
  store i32 %39, ptr %retval, align 4, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

if.end31:                                         ; preds = %lor.lhs.false28, %if.then14
  %40 = load ptr, ptr %s.addr, align 8, !dbg !305
  %41 = load ptr, ptr %b.addr, align 8, !dbg !306
  %out32 = getelementptr inbounds %struct.xz_buf, ptr %41, i32 0, i32 3, !dbg !307
  %42 = load ptr, ptr %out32, align 8, !dbg !307
  %43 = load ptr, ptr %b.addr, align 8, !dbg !308
  %out_pos33 = getelementptr inbounds %struct.xz_buf, ptr %43, i32 0, i32 4, !dbg !309
  %44 = load i64, ptr %out_pos33, align 8, !dbg !309
  call void @bcj_apply(ptr noundef %40, ptr noundef %42, ptr noundef %out_start, i64 noundef %44) #14, !dbg !310
  %45 = load ptr, ptr %s.addr, align 8, !dbg !311
  %ret34 = getelementptr inbounds %struct.xz_dec_bcj, ptr %45, i32 0, i32 1, !dbg !313
  %46 = load i32, ptr %ret34, align 4, !dbg !313
  %cmp35 = icmp eq i32 %46, 1, !dbg !314
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !315

if.then36:                                        ; preds = %if.end31
  store i32 1, ptr %retval, align 4, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end37:                                         ; preds = %if.end31
  %47 = load ptr, ptr %b.addr, align 8, !dbg !317
  %out_pos38 = getelementptr inbounds %struct.xz_buf, ptr %47, i32 0, i32 4, !dbg !318
  %48 = load i64, ptr %out_pos38, align 8, !dbg !318
  %49 = load i64, ptr %out_start, align 8, !dbg !319
  %sub39 = sub i64 %48, %49, !dbg !320
  %50 = load ptr, ptr %s.addr, align 8, !dbg !321
  %temp40 = getelementptr inbounds %struct.xz_dec_bcj, ptr %50, i32 0, i32 8, !dbg !322
  %size41 = getelementptr inbounds %struct.anon, ptr %temp40, i32 0, i32 1, !dbg !323
  store i64 %sub39, ptr %size41, align 8, !dbg !324
  %51 = load ptr, ptr %s.addr, align 8, !dbg !325
  %temp42 = getelementptr inbounds %struct.xz_dec_bcj, ptr %51, i32 0, i32 8, !dbg !326
  %size43 = getelementptr inbounds %struct.anon, ptr %temp42, i32 0, i32 1, !dbg !327
  %52 = load i64, ptr %size43, align 8, !dbg !327
  %53 = load ptr, ptr %b.addr, align 8, !dbg !328
  %out_pos44 = getelementptr inbounds %struct.xz_buf, ptr %53, i32 0, i32 4, !dbg !329
  %54 = load i64, ptr %out_pos44, align 8, !dbg !330
  %sub45 = sub i64 %54, %52, !dbg !330
  store i64 %sub45, ptr %out_pos44, align 8, !dbg !330
  %55 = load ptr, ptr %s.addr, align 8, !dbg !331
  %temp46 = getelementptr inbounds %struct.xz_dec_bcj, ptr %55, i32 0, i32 8, !dbg !332
  %buf47 = getelementptr inbounds %struct.anon, ptr %temp46, i32 0, i32 2, !dbg !333
  %arraydecay48 = getelementptr inbounds [16 x i8], ptr %buf47, i64 0, i64 0, !dbg !334
  %56 = load ptr, ptr %b.addr, align 8, !dbg !335
  %out49 = getelementptr inbounds %struct.xz_buf, ptr %56, i32 0, i32 3, !dbg !336
  %57 = load ptr, ptr %out49, align 8, !dbg !336
  %58 = load ptr, ptr %b.addr, align 8, !dbg !337
  %out_pos50 = getelementptr inbounds %struct.xz_buf, ptr %58, i32 0, i32 4, !dbg !338
  %59 = load i64, ptr %out_pos50, align 8, !dbg !338
  %add.ptr51 = getelementptr i8, ptr %57, i64 %59, !dbg !339
  %60 = load ptr, ptr %s.addr, align 8, !dbg !340
  %temp52 = getelementptr inbounds %struct.xz_dec_bcj, ptr %60, i32 0, i32 8, !dbg !341
  %size53 = getelementptr inbounds %struct.anon, ptr %temp52, i32 0, i32 1, !dbg !342
  %61 = load i64, ptr %size53, align 8, !dbg !342
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay48, ptr align 1 %add.ptr51, i64 %61, i1 false), !dbg !334
  %62 = load ptr, ptr %b.addr, align 8, !dbg !343
  %out_pos54 = getelementptr inbounds %struct.xz_buf, ptr %62, i32 0, i32 4, !dbg !345
  %63 = load i64, ptr %out_pos54, align 8, !dbg !345
  %64 = load ptr, ptr %s.addr, align 8, !dbg !346
  %temp55 = getelementptr inbounds %struct.xz_dec_bcj, ptr %64, i32 0, i32 8, !dbg !347
  %size56 = getelementptr inbounds %struct.anon, ptr %temp55, i32 0, i32 1, !dbg !348
  %65 = load i64, ptr %size56, align 8, !dbg !348
  %add57 = add i64 %63, %65, !dbg !349
  %66 = load ptr, ptr %b.addr, align 8, !dbg !350
  %out_size58 = getelementptr inbounds %struct.xz_buf, ptr %66, i32 0, i32 5, !dbg !351
  %67 = load i64, ptr %out_size58, align 8, !dbg !351
  %cmp59 = icmp ult i64 %add57, %67, !dbg !352
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !353

if.then60:                                        ; preds = %if.end37
  store i32 0, ptr %retval, align 4, !dbg !354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !354

if.end61:                                         ; preds = %if.end37
  br label %if.end62, !dbg !355

if.end62:                                         ; preds = %if.end61, %lor.lhs.false
  %68 = load ptr, ptr %b.addr, align 8, !dbg !356
  %out_pos63 = getelementptr inbounds %struct.xz_buf, ptr %68, i32 0, i32 4, !dbg !358
  %69 = load i64, ptr %out_pos63, align 8, !dbg !358
  %70 = load ptr, ptr %b.addr, align 8, !dbg !359
  %out_size64 = getelementptr inbounds %struct.xz_buf, ptr %70, i32 0, i32 5, !dbg !360
  %71 = load i64, ptr %out_size64, align 8, !dbg !360
  %cmp65 = icmp ult i64 %69, %71, !dbg !361
  br i1 %cmp65, label %if.then66, label %if.end120, !dbg !362

if.then66:                                        ; preds = %if.end62
  %72 = load ptr, ptr %b.addr, align 8, !dbg !363
  %out67 = getelementptr inbounds %struct.xz_buf, ptr %72, i32 0, i32 3, !dbg !365
  %73 = load ptr, ptr %out67, align 8, !dbg !365
  %74 = load ptr, ptr %s.addr, align 8, !dbg !366
  %out68 = getelementptr inbounds %struct.xz_dec_bcj, ptr %74, i32 0, i32 5, !dbg !367
  store ptr %73, ptr %out68, align 8, !dbg !368
  %75 = load ptr, ptr %b.addr, align 8, !dbg !369
  %out_pos69 = getelementptr inbounds %struct.xz_buf, ptr %75, i32 0, i32 4, !dbg !370
  %76 = load i64, ptr %out_pos69, align 8, !dbg !370
  %77 = load ptr, ptr %s.addr, align 8, !dbg !371
  %out_pos70 = getelementptr inbounds %struct.xz_dec_bcj, ptr %77, i32 0, i32 6, !dbg !372
  store i64 %76, ptr %out_pos70, align 8, !dbg !373
  %78 = load ptr, ptr %b.addr, align 8, !dbg !374
  %out_size71 = getelementptr inbounds %struct.xz_buf, ptr %78, i32 0, i32 5, !dbg !375
  %79 = load i64, ptr %out_size71, align 8, !dbg !375
  %80 = load ptr, ptr %s.addr, align 8, !dbg !376
  %out_size72 = getelementptr inbounds %struct.xz_dec_bcj, ptr %80, i32 0, i32 7, !dbg !377
  store i64 %79, ptr %out_size72, align 8, !dbg !378
  %81 = load ptr, ptr %s.addr, align 8, !dbg !379
  %temp73 = getelementptr inbounds %struct.xz_dec_bcj, ptr %81, i32 0, i32 8, !dbg !380
  %buf74 = getelementptr inbounds %struct.anon, ptr %temp73, i32 0, i32 2, !dbg !381
  %arraydecay75 = getelementptr inbounds [16 x i8], ptr %buf74, i64 0, i64 0, !dbg !379
  %82 = load ptr, ptr %b.addr, align 8, !dbg !382
  %out76 = getelementptr inbounds %struct.xz_buf, ptr %82, i32 0, i32 3, !dbg !383
  store ptr %arraydecay75, ptr %out76, align 8, !dbg !384
  %83 = load ptr, ptr %s.addr, align 8, !dbg !385
  %temp77 = getelementptr inbounds %struct.xz_dec_bcj, ptr %83, i32 0, i32 8, !dbg !386
  %size78 = getelementptr inbounds %struct.anon, ptr %temp77, i32 0, i32 1, !dbg !387
  %84 = load i64, ptr %size78, align 8, !dbg !387
  %85 = load ptr, ptr %b.addr, align 8, !dbg !388
  %out_pos79 = getelementptr inbounds %struct.xz_buf, ptr %85, i32 0, i32 4, !dbg !389
  store i64 %84, ptr %out_pos79, align 8, !dbg !390
  %86 = load ptr, ptr %b.addr, align 8, !dbg !391
  %out_size80 = getelementptr inbounds %struct.xz_buf, ptr %86, i32 0, i32 5, !dbg !392
  store i64 16, ptr %out_size80, align 8, !dbg !393
  %87 = load ptr, ptr %lzma2.addr, align 8, !dbg !394
  %88 = load ptr, ptr %b.addr, align 8, !dbg !395
  %call81 = call i32 @xz_dec_lzma2_run(ptr noundef %87, ptr noundef %88) #14, !dbg !396
  %89 = load ptr, ptr %s.addr, align 8, !dbg !397
  %ret82 = getelementptr inbounds %struct.xz_dec_bcj, ptr %89, i32 0, i32 1, !dbg !398
  store i32 %call81, ptr %ret82, align 4, !dbg !399
  %90 = load ptr, ptr %b.addr, align 8, !dbg !400
  %out_pos83 = getelementptr inbounds %struct.xz_buf, ptr %90, i32 0, i32 4, !dbg !401
  %91 = load i64, ptr %out_pos83, align 8, !dbg !401
  %92 = load ptr, ptr %s.addr, align 8, !dbg !402
  %temp84 = getelementptr inbounds %struct.xz_dec_bcj, ptr %92, i32 0, i32 8, !dbg !403
  %size85 = getelementptr inbounds %struct.anon, ptr %temp84, i32 0, i32 1, !dbg !404
  store i64 %91, ptr %size85, align 8, !dbg !405
  %93 = load ptr, ptr %s.addr, align 8, !dbg !406
  %out86 = getelementptr inbounds %struct.xz_dec_bcj, ptr %93, i32 0, i32 5, !dbg !407
  %94 = load ptr, ptr %out86, align 8, !dbg !407
  %95 = load ptr, ptr %b.addr, align 8, !dbg !408
  %out87 = getelementptr inbounds %struct.xz_buf, ptr %95, i32 0, i32 3, !dbg !409
  store ptr %94, ptr %out87, align 8, !dbg !410
  %96 = load ptr, ptr %s.addr, align 8, !dbg !411
  %out_pos88 = getelementptr inbounds %struct.xz_dec_bcj, ptr %96, i32 0, i32 6, !dbg !412
  %97 = load i64, ptr %out_pos88, align 8, !dbg !412
  %98 = load ptr, ptr %b.addr, align 8, !dbg !413
  %out_pos89 = getelementptr inbounds %struct.xz_buf, ptr %98, i32 0, i32 4, !dbg !414
  store i64 %97, ptr %out_pos89, align 8, !dbg !415
  %99 = load ptr, ptr %s.addr, align 8, !dbg !416
  %out_size90 = getelementptr inbounds %struct.xz_dec_bcj, ptr %99, i32 0, i32 7, !dbg !417
  %100 = load i64, ptr %out_size90, align 8, !dbg !417
  %101 = load ptr, ptr %b.addr, align 8, !dbg !418
  %out_size91 = getelementptr inbounds %struct.xz_buf, ptr %101, i32 0, i32 5, !dbg !419
  store i64 %100, ptr %out_size91, align 8, !dbg !420
  %102 = load ptr, ptr %s.addr, align 8, !dbg !421
  %ret92 = getelementptr inbounds %struct.xz_dec_bcj, ptr %102, i32 0, i32 1, !dbg !423
  %103 = load i32, ptr %ret92, align 4, !dbg !423
  %cmp93 = icmp ne i32 %103, 0, !dbg !424
  br i1 %cmp93, label %land.lhs.true94, label %if.end99, !dbg !425

land.lhs.true94:                                  ; preds = %if.then66
  %104 = load ptr, ptr %s.addr, align 8, !dbg !426
  %ret95 = getelementptr inbounds %struct.xz_dec_bcj, ptr %104, i32 0, i32 1, !dbg !427
  %105 = load i32, ptr %ret95, align 4, !dbg !427
  %cmp96 = icmp ne i32 %105, 1, !dbg !428
  br i1 %cmp96, label %if.then97, label %if.end99, !dbg !429

if.then97:                                        ; preds = %land.lhs.true94
  %106 = load ptr, ptr %s.addr, align 8, !dbg !430
  %ret98 = getelementptr inbounds %struct.xz_dec_bcj, ptr %106, i32 0, i32 1, !dbg !431
  %107 = load i32, ptr %ret98, align 4, !dbg !431
  store i32 %107, ptr %retval, align 4, !dbg !432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !432

if.end99:                                         ; preds = %land.lhs.true94, %if.then66
  %108 = load ptr, ptr %s.addr, align 8, !dbg !433
  %109 = load ptr, ptr %s.addr, align 8, !dbg !434
  %temp100 = getelementptr inbounds %struct.xz_dec_bcj, ptr %109, i32 0, i32 8, !dbg !435
  %buf101 = getelementptr inbounds %struct.anon, ptr %temp100, i32 0, i32 2, !dbg !436
  %arraydecay102 = getelementptr inbounds [16 x i8], ptr %buf101, i64 0, i64 0, !dbg !434
  %110 = load ptr, ptr %s.addr, align 8, !dbg !437
  %temp103 = getelementptr inbounds %struct.xz_dec_bcj, ptr %110, i32 0, i32 8, !dbg !438
  %filtered104 = getelementptr inbounds %struct.anon, ptr %temp103, i32 0, i32 0, !dbg !439
  %111 = load ptr, ptr %s.addr, align 8, !dbg !440
  %temp105 = getelementptr inbounds %struct.xz_dec_bcj, ptr %111, i32 0, i32 8, !dbg !441
  %size106 = getelementptr inbounds %struct.anon, ptr %temp105, i32 0, i32 1, !dbg !442
  %112 = load i64, ptr %size106, align 8, !dbg !442
  call void @bcj_apply(ptr noundef %108, ptr noundef %arraydecay102, ptr noundef %filtered104, i64 noundef %112) #14, !dbg !443
  %113 = load ptr, ptr %s.addr, align 8, !dbg !444
  %ret107 = getelementptr inbounds %struct.xz_dec_bcj, ptr %113, i32 0, i32 1, !dbg !446
  %114 = load i32, ptr %ret107, align 4, !dbg !446
  %cmp108 = icmp eq i32 %114, 1, !dbg !447
  br i1 %cmp108, label %if.then109, label %if.end114, !dbg !448

if.then109:                                       ; preds = %if.end99
  %115 = load ptr, ptr %s.addr, align 8, !dbg !449
  %temp110 = getelementptr inbounds %struct.xz_dec_bcj, ptr %115, i32 0, i32 8, !dbg !450
  %size111 = getelementptr inbounds %struct.anon, ptr %temp110, i32 0, i32 1, !dbg !451
  %116 = load i64, ptr %size111, align 8, !dbg !451
  %117 = load ptr, ptr %s.addr, align 8, !dbg !452
  %temp112 = getelementptr inbounds %struct.xz_dec_bcj, ptr %117, i32 0, i32 8, !dbg !453
  %filtered113 = getelementptr inbounds %struct.anon, ptr %temp112, i32 0, i32 0, !dbg !454
  store i64 %116, ptr %filtered113, align 8, !dbg !455
  br label %if.end114, !dbg !452

if.end114:                                        ; preds = %if.then109, %if.end99
  %118 = load ptr, ptr %s.addr, align 8, !dbg !456
  %119 = load ptr, ptr %b.addr, align 8, !dbg !457
  call void @bcj_flush(ptr noundef %118, ptr noundef %119) #14, !dbg !458
  %120 = load ptr, ptr %s.addr, align 8, !dbg !459
  %temp115 = getelementptr inbounds %struct.xz_dec_bcj, ptr %120, i32 0, i32 8, !dbg !461
  %filtered116 = getelementptr inbounds %struct.anon, ptr %temp115, i32 0, i32 0, !dbg !462
  %121 = load i64, ptr %filtered116, align 8, !dbg !462
  %cmp117 = icmp ugt i64 %121, 0, !dbg !463
  br i1 %cmp117, label %if.then118, label %if.end119, !dbg !464

if.then118:                                       ; preds = %if.end114
  store i32 0, ptr %retval, align 4, !dbg !465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !465

if.end119:                                        ; preds = %if.end114
  br label %if.end120, !dbg !466

if.end120:                                        ; preds = %if.end119, %if.end62
  %122 = load ptr, ptr %s.addr, align 8, !dbg !467
  %ret121 = getelementptr inbounds %struct.xz_dec_bcj, ptr %122, i32 0, i32 1, !dbg !468
  %123 = load i32, ptr %ret121, align 4, !dbg !468
  store i32 %123, ptr %retval, align 4, !dbg !469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !469

cleanup:                                          ; preds = %if.end120, %if.then118, %if.then97, %if.then60, %if.then36, %if.then29, %if.then6, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_start) #13, !dbg !470
  %124 = load i32, ptr %retval, align 4, !dbg !470
  ret i32 %124, !dbg !470
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bcj_flush(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !471 {
entry:
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %copy_size = alloca i64, align 8
  %__UNIQUE_ID___x118 = alloca i64, align 8
  %__UNIQUE_ID___y119 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !475, metadata !DIExpression()), !dbg !481
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !476, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_size) #13, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x118) #13, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x118, metadata !478, metadata !DIExpression()), !dbg !485
  %0 = load ptr, ptr %s.addr, align 8, !dbg !485
  %temp = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, !dbg !485
  %filtered = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 0, !dbg !485
  %1 = load i64, ptr %filtered, align 8, !dbg !485
  store i64 %1, ptr %__UNIQUE_ID___x118, align 8, !dbg !485
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y119) #13, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y119, metadata !480, metadata !DIExpression()), !dbg !485
  %2 = load ptr, ptr %b.addr, align 8, !dbg !485
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 5, !dbg !485
  %3 = load i64, ptr %out_size, align 8, !dbg !485
  %4 = load ptr, ptr %b.addr, align 8, !dbg !485
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %4, i32 0, i32 4, !dbg !485
  %5 = load i64, ptr %out_pos, align 8, !dbg !485
  %sub = sub i64 %3, %5, !dbg !485
  store i64 %sub, ptr %__UNIQUE_ID___y119, align 8, !dbg !485
  %6 = load i64, ptr %__UNIQUE_ID___x118, align 8, !dbg !485
  %7 = load i64, ptr %__UNIQUE_ID___y119, align 8, !dbg !485
  %cmp = icmp ult i64 %6, %7, !dbg !485
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !485

cond.true:                                        ; preds = %entry
  %8 = load i64, ptr %__UNIQUE_ID___x118, align 8, !dbg !485
  br label %cond.end, !dbg !485

cond.false:                                       ; preds = %entry
  %9 = load i64, ptr %__UNIQUE_ID___y119, align 8, !dbg !485
  br label %cond.end, !dbg !485

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !485
  store i64 %cond, ptr %tmp, align 8, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y119) #13, !dbg !486
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x118) #13, !dbg !486
  %10 = load i64, ptr %tmp, align 8, !dbg !485
  store i64 %10, ptr %copy_size, align 8, !dbg !487
  %11 = load ptr, ptr %b.addr, align 8, !dbg !488
  %out = getelementptr inbounds %struct.xz_buf, ptr %11, i32 0, i32 3, !dbg !489
  %12 = load ptr, ptr %out, align 8, !dbg !489
  %13 = load ptr, ptr %b.addr, align 8, !dbg !490
  %out_pos1 = getelementptr inbounds %struct.xz_buf, ptr %13, i32 0, i32 4, !dbg !491
  %14 = load i64, ptr %out_pos1, align 8, !dbg !491
  %add.ptr = getelementptr i8, ptr %12, i64 %14, !dbg !492
  %15 = load ptr, ptr %s.addr, align 8, !dbg !493
  %temp2 = getelementptr inbounds %struct.xz_dec_bcj, ptr %15, i32 0, i32 8, !dbg !494
  %buf = getelementptr inbounds %struct.anon, ptr %temp2, i32 0, i32 2, !dbg !495
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !dbg !496
  %16 = load i64, ptr %copy_size, align 8, !dbg !497
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 8 %arraydecay, i64 %16, i1 false), !dbg !496
  %17 = load i64, ptr %copy_size, align 8, !dbg !498
  %18 = load ptr, ptr %b.addr, align 8, !dbg !499
  %out_pos3 = getelementptr inbounds %struct.xz_buf, ptr %18, i32 0, i32 4, !dbg !500
  %19 = load i64, ptr %out_pos3, align 8, !dbg !501
  %add = add i64 %19, %17, !dbg !501
  store i64 %add, ptr %out_pos3, align 8, !dbg !501
  %20 = load i64, ptr %copy_size, align 8, !dbg !502
  %21 = load ptr, ptr %s.addr, align 8, !dbg !503
  %temp4 = getelementptr inbounds %struct.xz_dec_bcj, ptr %21, i32 0, i32 8, !dbg !504
  %filtered5 = getelementptr inbounds %struct.anon, ptr %temp4, i32 0, i32 0, !dbg !505
  %22 = load i64, ptr %filtered5, align 8, !dbg !506
  %sub6 = sub i64 %22, %20, !dbg !506
  store i64 %sub6, ptr %filtered5, align 8, !dbg !506
  %23 = load i64, ptr %copy_size, align 8, !dbg !507
  %24 = load ptr, ptr %s.addr, align 8, !dbg !508
  %temp7 = getelementptr inbounds %struct.xz_dec_bcj, ptr %24, i32 0, i32 8, !dbg !509
  %size = getelementptr inbounds %struct.anon, ptr %temp7, i32 0, i32 1, !dbg !510
  %25 = load i64, ptr %size, align 8, !dbg !511
  %sub8 = sub i64 %25, %23, !dbg !511
  store i64 %sub8, ptr %size, align 8, !dbg !511
  %26 = load ptr, ptr %s.addr, align 8, !dbg !512
  %temp9 = getelementptr inbounds %struct.xz_dec_bcj, ptr %26, i32 0, i32 8, !dbg !513
  %buf10 = getelementptr inbounds %struct.anon, ptr %temp9, i32 0, i32 2, !dbg !514
  %arraydecay11 = getelementptr inbounds [16 x i8], ptr %buf10, i64 0, i64 0, !dbg !515
  %27 = load ptr, ptr %s.addr, align 8, !dbg !516
  %temp12 = getelementptr inbounds %struct.xz_dec_bcj, ptr %27, i32 0, i32 8, !dbg !517
  %buf13 = getelementptr inbounds %struct.anon, ptr %temp12, i32 0, i32 2, !dbg !518
  %arraydecay14 = getelementptr inbounds [16 x i8], ptr %buf13, i64 0, i64 0, !dbg !516
  %28 = load i64, ptr %copy_size, align 8, !dbg !519
  %add.ptr15 = getelementptr i8, ptr %arraydecay14, i64 %28, !dbg !520
  %29 = load ptr, ptr %s.addr, align 8, !dbg !521
  %temp16 = getelementptr inbounds %struct.xz_dec_bcj, ptr %29, i32 0, i32 8, !dbg !522
  %size17 = getelementptr inbounds %struct.anon, ptr %temp16, i32 0, i32 1, !dbg !523
  %30 = load i64, ptr %size17, align 8, !dbg !523
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %arraydecay11, ptr align 1 %add.ptr15, i64 %30, i1 false), !dbg !515
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_size) #13, !dbg !524
  ret void, !dbg !524
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !525 dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bcj_apply(ptr noundef %s, ptr noundef %buf, ptr noundef %pos, i64 noundef %size) #0 align 16 !dbg !528 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %filtered = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !533, metadata !DIExpression()), !dbg !538
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !534, metadata !DIExpression()), !dbg !539
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !535, metadata !DIExpression()), !dbg !540
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.lifetime.start.p0(i64 8, ptr %filtered) #13, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %filtered, metadata !537, metadata !DIExpression()), !dbg !543
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !544
  %1 = load i64, ptr %0, align 8, !dbg !545
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !546
  %add.ptr = getelementptr i8, ptr %2, i64 %1, !dbg !546
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !546
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !547
  %4 = load i64, ptr %3, align 8, !dbg !548
  %5 = load i64, ptr %size.addr, align 8, !dbg !549
  %sub = sub i64 %5, %4, !dbg !549
  store i64 %sub, ptr %size.addr, align 8, !dbg !549
  %6 = load ptr, ptr %s.addr, align 8, !dbg !550
  %type = getelementptr inbounds %struct.xz_dec_bcj, ptr %6, i32 0, i32 0, !dbg !551
  %7 = load i32, ptr %type, align 8, !dbg !551
  switch i32 %7, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb3
    i32 7, label %sw.bb5
    i32 8, label %sw.bb7
    i32 9, label %sw.bb9
  ], !dbg !552

sw.bb:                                            ; preds = %entry
  %8 = load ptr, ptr %s.addr, align 8, !dbg !553
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !555
  %10 = load i64, ptr %size.addr, align 8, !dbg !556
  %call = call i64 @bcj_x86(ptr noundef %8, ptr noundef %9, i64 noundef %10) #14, !dbg !557
  store i64 %call, ptr %filtered, align 8, !dbg !558
  br label %sw.epilog, !dbg !559

sw.bb1:                                           ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8, !dbg !560
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !561
  %13 = load i64, ptr %size.addr, align 8, !dbg !562
  %call2 = call i64 @bcj_powerpc(ptr noundef %11, ptr noundef %12, i64 noundef %13) #14, !dbg !563
  store i64 %call2, ptr %filtered, align 8, !dbg !564
  br label %sw.epilog, !dbg !565

sw.bb3:                                           ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8, !dbg !566
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !567
  %16 = load i64, ptr %size.addr, align 8, !dbg !568
  %call4 = call i64 @bcj_ia64(ptr noundef %14, ptr noundef %15, i64 noundef %16) #14, !dbg !569
  store i64 %call4, ptr %filtered, align 8, !dbg !570
  br label %sw.epilog, !dbg !571

sw.bb5:                                           ; preds = %entry
  %17 = load ptr, ptr %s.addr, align 8, !dbg !572
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !573
  %19 = load i64, ptr %size.addr, align 8, !dbg !574
  %call6 = call i64 @bcj_arm(ptr noundef %17, ptr noundef %18, i64 noundef %19) #14, !dbg !575
  store i64 %call6, ptr %filtered, align 8, !dbg !576
  br label %sw.epilog, !dbg !577

sw.bb7:                                           ; preds = %entry
  %20 = load ptr, ptr %s.addr, align 8, !dbg !578
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !579
  %22 = load i64, ptr %size.addr, align 8, !dbg !580
  %call8 = call i64 @bcj_armthumb(ptr noundef %20, ptr noundef %21, i64 noundef %22) #14, !dbg !581
  store i64 %call8, ptr %filtered, align 8, !dbg !582
  br label %sw.epilog, !dbg !583

sw.bb9:                                           ; preds = %entry
  %23 = load ptr, ptr %s.addr, align 8, !dbg !584
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !585
  %25 = load i64, ptr %size.addr, align 8, !dbg !586
  %call10 = call i64 @bcj_sparc(ptr noundef %23, ptr noundef %24, i64 noundef %25) #14, !dbg !587
  store i64 %call10, ptr %filtered, align 8, !dbg !588
  br label %sw.epilog, !dbg !589

sw.default:                                       ; preds = %entry
  store i64 0, ptr %filtered, align 8, !dbg !590
  br label %sw.epilog, !dbg !591

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %26 = load i64, ptr %filtered, align 8, !dbg !592
  %27 = load ptr, ptr %pos.addr, align 8, !dbg !593
  %28 = load i64, ptr %27, align 8, !dbg !594
  %add = add i64 %28, %26, !dbg !594
  store i64 %add, ptr %27, align 8, !dbg !594
  %29 = load i64, ptr %filtered, align 8, !dbg !595
  %30 = load ptr, ptr %s.addr, align 8, !dbg !596
  %pos11 = getelementptr inbounds %struct.xz_dec_bcj, ptr %30, i32 0, i32 3, !dbg !597
  %31 = load i32, ptr %pos11, align 4, !dbg !598
  %conv = zext i32 %31 to i64, !dbg !598
  %add12 = add i64 %conv, %29, !dbg !598
  %conv13 = trunc i64 %add12 to i32, !dbg !598
  store i32 %conv13, ptr %pos11, align 4, !dbg !598
  call void @llvm.lifetime.end.p0(i64 8, ptr %filtered) #13, !dbg !599
  ret void, !dbg !599
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xz_dec_bcj_create(i1 noundef zeroext %single_call) #0 align 16 !dbg !600 {
entry:
  %single_call.addr = alloca i8, align 1
  %s = alloca ptr, align 8
  %frombool = zext i1 %single_call to i8
  store i8 %frombool, ptr %single_call.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %single_call.addr, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #13, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %s, metadata !605, metadata !DIExpression()), !dbg !608
  %call = call noalias ptr @kmalloc(i64 noundef 80, i32 noundef 3264) #15, !dbg !609
  store ptr %call, ptr %s, align 8, !dbg !608
  %0 = load ptr, ptr %s, align 8, !dbg !610
  %cmp = icmp ne ptr %0, null, !dbg !612
  br i1 %cmp, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %single_call.addr, align 1, !dbg !614, !range !299, !noundef !300
  %tobool = trunc i8 %1 to i1, !dbg !614
  %2 = load ptr, ptr %s, align 8, !dbg !615
  %single_call1 = getelementptr inbounds %struct.xz_dec_bcj, ptr %2, i32 0, i32 2, !dbg !616
  %frombool2 = zext i1 %tobool to i8, !dbg !617
  store i8 %frombool2, ptr %single_call1, align 8, !dbg !617
  br label %if.end, !dbg !615

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s, align 8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #13, !dbg !619
  ret ptr %3, !dbg !620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !621 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !625, metadata !DIExpression()), !dbg !630
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !626, metadata !DIExpression()), !dbg !631
  %0 = load i64, ptr %size.addr, align 8, !dbg !632
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !633
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !634

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !635
  %tobool = icmp ne i64 %2, 0, !dbg !635
  br i1 %tobool, label %if.then, label %if.end7, !dbg !636

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %index, metadata !627, metadata !DIExpression()), !dbg !638
  %3 = load i64, ptr %size.addr, align 8, !dbg !639
  %cmp = icmp ugt i64 %3, 8192, !dbg !641
  br i1 %cmp, label %if.then1, label %if.end, !dbg !642

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !643
  %5 = load i32, ptr %flags.addr, align 4, !dbg !644
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !645
  store ptr %call, ptr %retval, align 8, !dbg !646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !646

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !647
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !647
  store i32 %call2, ptr %index, align 4, !dbg !648
  %7 = load i32, ptr %flags.addr, align 4, !dbg !649
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !650
  %9 = ptrtoint ptr %8 to i64, !dbg !650
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !651
  %idxprom = zext i32 %call3 to i64, !dbg !652
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !652
  %10 = load i32, ptr %index, align 4, !dbg !653
  %idxprom4 = zext i32 %10 to i64, !dbg !652
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !652
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !652
  %12 = load i32, ptr %flags.addr, align 4, !dbg !654
  %13 = load i64, ptr %size.addr, align 8, !dbg !655
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !656
  store ptr %call6, ptr %retval, align 8, !dbg !657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !658
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !659
  %15 = load i32, ptr %flags.addr, align 4, !dbg !660
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !661
  store ptr %call8, ptr %retval, align 8, !dbg !662
  br label %return, !dbg !662

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !663
  ret ptr %16, !dbg !663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xz_dec_bcj_reset(ptr noundef %s, i8 noundef zeroext %id) #0 align 16 !dbg !664 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %id.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !668, metadata !DIExpression()), !dbg !670
  store i8 %id, ptr %id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !669, metadata !DIExpression()), !dbg !671
  %0 = load i8, ptr %id.addr, align 1, !dbg !672
  %conv = zext i8 %0 to i32, !dbg !672
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
  ], !dbg !673

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog, !dbg !674

sw.default:                                       ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !676
  br label %return, !dbg !676

sw.epilog:                                        ; preds = %sw.bb
  %1 = load i8, ptr %id.addr, align 1, !dbg !677
  %conv1 = zext i8 %1 to i32, !dbg !677
  %2 = load ptr, ptr %s.addr, align 8, !dbg !678
  %type = getelementptr inbounds %struct.xz_dec_bcj, ptr %2, i32 0, i32 0, !dbg !679
  store i32 %conv1, ptr %type, align 8, !dbg !680
  %3 = load ptr, ptr %s.addr, align 8, !dbg !681
  %ret = getelementptr inbounds %struct.xz_dec_bcj, ptr %3, i32 0, i32 1, !dbg !682
  store i32 0, ptr %ret, align 4, !dbg !683
  %4 = load ptr, ptr %s.addr, align 8, !dbg !684
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %4, i32 0, i32 3, !dbg !685
  store i32 0, ptr %pos, align 4, !dbg !686
  %5 = load ptr, ptr %s.addr, align 8, !dbg !687
  %x86_prev_mask = getelementptr inbounds %struct.xz_dec_bcj, ptr %5, i32 0, i32 4, !dbg !688
  store i32 0, ptr %x86_prev_mask, align 8, !dbg !689
  %6 = load ptr, ptr %s.addr, align 8, !dbg !690
  %temp = getelementptr inbounds %struct.xz_dec_bcj, ptr %6, i32 0, i32 8, !dbg !691
  %filtered = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 0, !dbg !692
  store i64 0, ptr %filtered, align 8, !dbg !693
  %7 = load ptr, ptr %s.addr, align 8, !dbg !694
  %temp2 = getelementptr inbounds %struct.xz_dec_bcj, ptr %7, i32 0, i32 8, !dbg !695
  %size = getelementptr inbounds %struct.anon, ptr %temp2, i32 0, i32 1, !dbg !696
  store i64 0, ptr %size, align 8, !dbg !697
  store i32 0, ptr %retval, align 4, !dbg !698
  br label %return, !dbg !698

return:                                           ; preds = %sw.epilog, %sw.default
  %8 = load i32, ptr %retval, align 4, !dbg !699
  ret i32 %8, !dbg !699
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bcj_x86(ptr noundef %s, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %prev_pos = alloca i64, align 8
  %prev_mask = alloca i32, align 4
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !173, metadata !DIExpression()), !dbg !700
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !174, metadata !DIExpression()), !dbg !701
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !175, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %i, metadata !176, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_pos) #13, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %prev_pos, metadata !177, metadata !DIExpression()), !dbg !706
  store i64 -1, ptr %prev_pos, align 8, !dbg !706
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_mask) #13, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %prev_mask, metadata !178, metadata !DIExpression()), !dbg !708
  %0 = load ptr, ptr %s.addr, align 8, !dbg !709
  %x86_prev_mask = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 4, !dbg !710
  %1 = load i32, ptr %x86_prev_mask, align 8, !dbg !710
  store i32 %1, ptr %prev_mask, align 4, !dbg !708
  call void @llvm.lifetime.start.p0(i64 4, ptr %src) #13, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %src, metadata !179, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 4, ptr %dest) #13, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !180, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %j, metadata !181, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #13, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %b, metadata !182, metadata !DIExpression()), !dbg !718
  %2 = load i64, ptr %size.addr, align 8, !dbg !719
  %cmp = icmp ule i64 %2, 4, !dbg !721
  br i1 %cmp, label %if.then, label %if.end, !dbg !722

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !723

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %size.addr, align 8, !dbg !724
  %sub = sub i64 %3, 4, !dbg !724
  store i64 %sub, ptr %size.addr, align 8, !dbg !724
  store i64 0, ptr %i, align 8, !dbg !725
  br label %for.cond, !dbg !727

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !dbg !728
  %5 = load i64, ptr %size.addr, align 8, !dbg !730
  %cmp1 = icmp ult i64 %4, %5, !dbg !731
  br i1 %cmp1, label %for.body, label %for.end, !dbg !732

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !733
  %7 = load i64, ptr %i, align 8, !dbg !736
  %arrayidx = getelementptr i8, ptr %6, i64 %7, !dbg !733
  %8 = load i8, ptr %arrayidx, align 1, !dbg !733
  %conv = zext i8 %8 to i32, !dbg !733
  %and = and i32 %conv, 254, !dbg !737
  %cmp2 = icmp ne i32 %and, 232, !dbg !738
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !739

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !740

if.end5:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !741
  %10 = load i64, ptr %prev_pos, align 8, !dbg !742
  %sub6 = sub i64 %9, %10, !dbg !743
  store i64 %sub6, ptr %prev_pos, align 8, !dbg !744
  %11 = load i64, ptr %prev_pos, align 8, !dbg !745
  %cmp7 = icmp ugt i64 %11, 3, !dbg !747
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !748

if.then9:                                         ; preds = %if.end5
  store i32 0, ptr %prev_mask, align 4, !dbg !749
  br label %if.end26, !dbg !751

if.else:                                          ; preds = %if.end5
  %12 = load i32, ptr %prev_mask, align 4, !dbg !752
  %13 = load i64, ptr %prev_pos, align 8, !dbg !754
  %sub10 = sub i64 %13, 1, !dbg !755
  %sh_prom = trunc i64 %sub10 to i32, !dbg !756
  %shl = shl i32 %12, %sh_prom, !dbg !756
  %and11 = and i32 %shl, 7, !dbg !757
  store i32 %and11, ptr %prev_mask, align 4, !dbg !758
  %14 = load i32, ptr %prev_mask, align 4, !dbg !759
  %cmp12 = icmp ne i32 %14, 0, !dbg !761
  br i1 %cmp12, label %if.then14, label %if.end25, !dbg !762

if.then14:                                        ; preds = %if.else
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !763
  %16 = load i64, ptr %i, align 8, !dbg !765
  %add = add i64 %16, 4, !dbg !766
  %17 = load i32, ptr %prev_mask, align 4, !dbg !767
  %idxprom = zext i32 %17 to i64, !dbg !768
  %arrayidx15 = getelementptr [8 x i8], ptr @bcj_x86.mask_to_bit_num, i64 0, i64 %idxprom, !dbg !768
  %18 = load i8, ptr %arrayidx15, align 1, !dbg !768
  %conv16 = zext i8 %18 to i64, !dbg !768
  %sub17 = sub i64 %add, %conv16, !dbg !769
  %arrayidx18 = getelementptr i8, ptr %15, i64 %sub17, !dbg !763
  %19 = load i8, ptr %arrayidx18, align 1, !dbg !763
  store i8 %19, ptr %b, align 1, !dbg !770
  %20 = load i32, ptr %prev_mask, align 4, !dbg !771
  %idxprom19 = zext i32 %20 to i64, !dbg !773
  %arrayidx20 = getelementptr [8 x i8], ptr @bcj_x86.mask_to_allowed_status, i64 0, i64 %idxprom19, !dbg !773
  %21 = load i8, ptr %arrayidx20, align 1, !dbg !773, !range !299, !noundef !300
  %tobool = trunc i8 %21 to i1, !dbg !773
  br i1 %tobool, label %lor.lhs.false, label %if.then22, !dbg !774

lor.lhs.false:                                    ; preds = %if.then14
  %22 = load i8, ptr %b, align 1, !dbg !775
  %call = call i32 @bcj_x86_test_msbyte(i8 noundef zeroext %22) #14, !dbg !776
  %tobool21 = icmp ne i32 %call, 0, !dbg !776
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !777

if.then22:                                        ; preds = %lor.lhs.false, %if.then14
  %23 = load i64, ptr %i, align 8, !dbg !778
  store i64 %23, ptr %prev_pos, align 8, !dbg !780
  %24 = load i32, ptr %prev_mask, align 4, !dbg !781
  %shl23 = shl i32 %24, 1, !dbg !782
  %or = or i32 %shl23, 1, !dbg !783
  store i32 %or, ptr %prev_mask, align 4, !dbg !784
  br label %for.inc, !dbg !785

if.end24:                                         ; preds = %lor.lhs.false
  br label %if.end25, !dbg !786

if.end25:                                         ; preds = %if.end24, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then9
  %25 = load i64, ptr %i, align 8, !dbg !787
  store i64 %25, ptr %prev_pos, align 8, !dbg !788
  %26 = load ptr, ptr %buf.addr, align 8, !dbg !789
  %27 = load i64, ptr %i, align 8, !dbg !791
  %add27 = add i64 %27, 4, !dbg !792
  %arrayidx28 = getelementptr i8, ptr %26, i64 %add27, !dbg !789
  %28 = load i8, ptr %arrayidx28, align 1, !dbg !789
  %call29 = call i32 @bcj_x86_test_msbyte(i8 noundef zeroext %28) #14, !dbg !793
  %tobool30 = icmp ne i32 %call29, 0, !dbg !793
  br i1 %tobool30, label %if.then31, label %if.else61, !dbg !794

if.then31:                                        ; preds = %if.end26
  %29 = load ptr, ptr %buf.addr, align 8, !dbg !795
  %30 = load i64, ptr %i, align 8, !dbg !797
  %add.ptr = getelementptr i8, ptr %29, i64 %30, !dbg !798
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !799
  %call33 = call i32 @get_unaligned_le32(ptr noundef %add.ptr32) #14, !dbg !800
  store i32 %call33, ptr %src, align 4, !dbg !801
  br label %while.cond, !dbg !802

while.cond:                                       ; preds = %if.end50, %if.then31
  br label %while.body, !dbg !802

while.body:                                       ; preds = %while.cond
  %31 = load i32, ptr %src, align 4, !dbg !803
  %32 = load ptr, ptr %s.addr, align 8, !dbg !805
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %32, i32 0, i32 3, !dbg !806
  %33 = load i32, ptr %pos, align 4, !dbg !806
  %34 = load i64, ptr %i, align 8, !dbg !807
  %conv34 = trunc i64 %34 to i32, !dbg !808
  %add35 = add i32 %33, %conv34, !dbg !809
  %add36 = add i32 %add35, 5, !dbg !810
  %sub37 = sub i32 %31, %add36, !dbg !811
  store i32 %sub37, ptr %dest, align 4, !dbg !812
  %35 = load i32, ptr %prev_mask, align 4, !dbg !813
  %cmp38 = icmp eq i32 %35, 0, !dbg !815
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !816

if.then40:                                        ; preds = %while.body
  br label %while.end, !dbg !817

if.end41:                                         ; preds = %while.body
  %36 = load i32, ptr %prev_mask, align 4, !dbg !818
  %idxprom42 = zext i32 %36 to i64, !dbg !819
  %arrayidx43 = getelementptr [8 x i8], ptr @bcj_x86.mask_to_bit_num, i64 0, i64 %idxprom42, !dbg !819
  %37 = load i8, ptr %arrayidx43, align 1, !dbg !819
  %conv44 = zext i8 %37 to i32, !dbg !819
  %mul = mul i32 %conv44, 8, !dbg !820
  store i32 %mul, ptr %j, align 4, !dbg !821
  %38 = load i32, ptr %dest, align 4, !dbg !822
  %39 = load i32, ptr %j, align 4, !dbg !823
  %sub45 = sub i32 24, %39, !dbg !824
  %shr = lshr i32 %38, %sub45, !dbg !825
  %conv46 = trunc i32 %shr to i8, !dbg !826
  store i8 %conv46, ptr %b, align 1, !dbg !827
  %40 = load i8, ptr %b, align 1, !dbg !828
  %call47 = call i32 @bcj_x86_test_msbyte(i8 noundef zeroext %40) #14, !dbg !830
  %tobool48 = icmp ne i32 %call47, 0, !dbg !830
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !831

if.then49:                                        ; preds = %if.end41
  br label %while.end, !dbg !832

if.end50:                                         ; preds = %if.end41
  %41 = load i32, ptr %dest, align 4, !dbg !833
  %42 = load i32, ptr %j, align 4, !dbg !834
  %sub51 = sub i32 32, %42, !dbg !835
  %shl52 = shl i32 1, %sub51, !dbg !836
  %sub53 = sub i32 %shl52, 1, !dbg !837
  %xor = xor i32 %41, %sub53, !dbg !838
  store i32 %xor, ptr %src, align 4, !dbg !839
  br label %while.cond, !dbg !802, !llvm.loop !840

while.end:                                        ; preds = %if.then49, %if.then40
  %43 = load i32, ptr %dest, align 4, !dbg !843
  %and54 = and i32 %43, 33554431, !dbg !843
  store i32 %and54, ptr %dest, align 4, !dbg !843
  %44 = load i32, ptr %dest, align 4, !dbg !844
  %and55 = and i32 %44, 16777216, !dbg !845
  %sub56 = sub i32 0, %and55, !dbg !846
  %45 = load i32, ptr %dest, align 4, !dbg !847
  %or57 = or i32 %45, %sub56, !dbg !847
  store i32 %or57, ptr %dest, align 4, !dbg !847
  %46 = load i32, ptr %dest, align 4, !dbg !848
  %47 = load ptr, ptr %buf.addr, align 8, !dbg !849
  %48 = load i64, ptr %i, align 8, !dbg !850
  %add.ptr58 = getelementptr i8, ptr %47, i64 %48, !dbg !851
  %add.ptr59 = getelementptr i8, ptr %add.ptr58, i64 1, !dbg !852
  call void @put_unaligned_le32(i32 noundef %46, ptr noundef %add.ptr59) #14, !dbg !853
  %49 = load i64, ptr %i, align 8, !dbg !854
  %add60 = add i64 %49, 4, !dbg !854
  store i64 %add60, ptr %i, align 8, !dbg !854
  br label %if.end64, !dbg !855

if.else61:                                        ; preds = %if.end26
  %50 = load i32, ptr %prev_mask, align 4, !dbg !856
  %shl62 = shl i32 %50, 1, !dbg !858
  %or63 = or i32 %shl62, 1, !dbg !859
  store i32 %or63, ptr %prev_mask, align 4, !dbg !860
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %while.end
  br label %for.inc, !dbg !861

for.inc:                                          ; preds = %if.end64, %if.then22, %if.then4
  %51 = load i64, ptr %i, align 8, !dbg !862
  %inc = add i64 %51, 1, !dbg !862
  store i64 %inc, ptr %i, align 8, !dbg !862
  br label %for.cond, !dbg !863, !llvm.loop !864

for.end:                                          ; preds = %for.cond
  %52 = load i64, ptr %i, align 8, !dbg !867
  %53 = load i64, ptr %prev_pos, align 8, !dbg !868
  %sub65 = sub i64 %52, %53, !dbg !869
  store i64 %sub65, ptr %prev_pos, align 8, !dbg !870
  %54 = load i64, ptr %prev_pos, align 8, !dbg !871
  %cmp66 = icmp ugt i64 %54, 3, !dbg !872
  br i1 %cmp66, label %cond.true, label %cond.false, !dbg !871

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !871

cond.false:                                       ; preds = %for.end
  %55 = load i32, ptr %prev_mask, align 4, !dbg !873
  %56 = load i64, ptr %prev_pos, align 8, !dbg !874
  %sub68 = sub i64 %56, 1, !dbg !875
  %sh_prom69 = trunc i64 %sub68 to i32, !dbg !876
  %shl70 = shl i32 %55, %sh_prom69, !dbg !876
  br label %cond.end, !dbg !871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl70, %cond.false ], !dbg !871
  %57 = load ptr, ptr %s.addr, align 8, !dbg !877
  %x86_prev_mask71 = getelementptr inbounds %struct.xz_dec_bcj, ptr %57, i32 0, i32 4, !dbg !878
  store i32 %cond, ptr %x86_prev_mask71, align 8, !dbg !879
  %58 = load i64, ptr %i, align 8, !dbg !880
  store i64 %58, ptr %retval, align 8, !dbg !881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !881

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %dest) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %src) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_mask) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_pos) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !882
  %59 = load i64, ptr %retval, align 8, !dbg !882
  ret i64 %59, !dbg !882
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bcj_powerpc(ptr noundef %s, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !883 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %instr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !885, metadata !DIExpression()), !dbg !890
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !886, metadata !DIExpression()), !dbg !891
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %i, metadata !888, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 4, ptr %instr) #13, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %instr, metadata !889, metadata !DIExpression()), !dbg !896
  store i64 0, ptr %i, align 8, !dbg !897
  br label %for.cond, !dbg !899

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !900
  %add = add i64 %0, 4, !dbg !902
  %1 = load i64, ptr %size.addr, align 8, !dbg !903
  %cmp = icmp ule i64 %add, %1, !dbg !904
  br i1 %cmp, label %for.body, label %for.end, !dbg !905

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !906
  %3 = load i64, ptr %i, align 8, !dbg !908
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !909
  %call = call i32 @get_unaligned_be32(ptr noundef %add.ptr) #14, !dbg !910
  store i32 %call, ptr %instr, align 4, !dbg !911
  %4 = load i32, ptr %instr, align 4, !dbg !912
  %and = and i32 %4, -67108861, !dbg !914
  %cmp1 = icmp eq i32 %and, 1207959553, !dbg !915
  br i1 %cmp1, label %if.then, label %if.end, !dbg !916

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %instr, align 4, !dbg !917
  %and2 = and i32 %5, 67108860, !dbg !917
  store i32 %and2, ptr %instr, align 4, !dbg !917
  %6 = load ptr, ptr %s.addr, align 8, !dbg !919
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %6, i32 0, i32 3, !dbg !920
  %7 = load i32, ptr %pos, align 4, !dbg !920
  %8 = load i64, ptr %i, align 8, !dbg !921
  %conv = trunc i64 %8 to i32, !dbg !922
  %add3 = add i32 %7, %conv, !dbg !923
  %9 = load i32, ptr %instr, align 4, !dbg !924
  %sub = sub i32 %9, %add3, !dbg !924
  store i32 %sub, ptr %instr, align 4, !dbg !924
  %10 = load i32, ptr %instr, align 4, !dbg !925
  %and4 = and i32 %10, 67108860, !dbg !925
  store i32 %and4, ptr %instr, align 4, !dbg !925
  %11 = load i32, ptr %instr, align 4, !dbg !926
  %or = or i32 %11, 1207959553, !dbg !926
  store i32 %or, ptr %instr, align 4, !dbg !926
  %12 = load i32, ptr %instr, align 4, !dbg !927
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !928
  %14 = load i64, ptr %i, align 8, !dbg !929
  %add.ptr5 = getelementptr i8, ptr %13, i64 %14, !dbg !930
  call void @put_unaligned_be32(i32 noundef %12, ptr noundef %add.ptr5) #14, !dbg !931
  br label %if.end, !dbg !932

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !933

for.inc:                                          ; preds = %if.end
  %15 = load i64, ptr %i, align 8, !dbg !934
  %add6 = add i64 %15, 4, !dbg !934
  store i64 %add6, ptr %i, align 8, !dbg !934
  br label %for.cond, !dbg !935, !llvm.loop !936

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %i, align 8, !dbg !938
  call void @llvm.lifetime.end.p0(i64 4, ptr %instr) #13, !dbg !939
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !939
  ret i64 %16, !dbg !940
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bcj_ia64(ptr noundef %s, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !148 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %slot = alloca i32, align 4
  %bit_pos = alloca i32, align 4
  %byte_pos = alloca i32, align 4
  %bit_res = alloca i32, align 4
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %instr = alloca i64, align 8
  %norm = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !150, metadata !DIExpression()), !dbg !941
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !151, metadata !DIExpression()), !dbg !942
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !152, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %i, metadata !153, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #13, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %j, metadata !154, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #13, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !155, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_pos) #13, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %bit_pos, metadata !156, metadata !DIExpression()), !dbg !951
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte_pos) #13, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %byte_pos, metadata !157, metadata !DIExpression()), !dbg !953
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_res) #13, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %bit_res, metadata !158, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #13, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !159, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #13, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !160, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %instr) #13, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %instr, metadata !161, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 8, ptr %norm) #13, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %norm, metadata !162, metadata !DIExpression()), !dbg !963
  store i64 0, ptr %i, align 8, !dbg !964
  br label %for.cond, !dbg !966

for.cond:                                         ; preds = %for.inc78, %entry
  %0 = load i64, ptr %i, align 8, !dbg !967
  %add = add i64 %0, 16, !dbg !969
  %1 = load i64, ptr %size.addr, align 8, !dbg !970
  %cmp = icmp ule i64 %add, %1, !dbg !971
  br i1 %cmp, label %for.body, label %for.end80, !dbg !972

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !973
  %3 = load i64, ptr %i, align 8, !dbg !975
  %arrayidx = getelementptr i8, ptr %2, i64 %3, !dbg !973
  %4 = load i8, ptr %arrayidx, align 1, !dbg !973
  %conv = zext i8 %4 to i32, !dbg !973
  %and = and i32 %conv, 31, !dbg !976
  %idxprom = sext i32 %and to i64, !dbg !977
  %arrayidx1 = getelementptr [32 x i8], ptr @bcj_ia64.branch_table, i64 0, i64 %idxprom, !dbg !977
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !977
  %conv2 = zext i8 %5 to i32, !dbg !977
  store i32 %conv2, ptr %mask, align 4, !dbg !978
  store i32 0, ptr %slot, align 4, !dbg !979
  store i32 5, ptr %bit_pos, align 4, !dbg !981
  br label %for.cond3, !dbg !982

for.cond3:                                        ; preds = %for.inc74, %for.body
  %6 = load i32, ptr %slot, align 4, !dbg !983
  %cmp4 = icmp ult i32 %6, 3, !dbg !985
  br i1 %cmp4, label %for.body6, label %for.end77, !dbg !986

for.body6:                                        ; preds = %for.cond3
  %7 = load i32, ptr %mask, align 4, !dbg !987
  %8 = load i32, ptr %slot, align 4, !dbg !990
  %shr = lshr i32 %7, %8, !dbg !991
  %and7 = and i32 %shr, 1, !dbg !992
  %cmp8 = icmp eq i32 %and7, 0, !dbg !993
  br i1 %cmp8, label %if.then, label %if.end, !dbg !994

if.then:                                          ; preds = %for.body6
  br label %for.inc74, !dbg !995

if.end:                                           ; preds = %for.body6
  %9 = load i32, ptr %bit_pos, align 4, !dbg !996
  %shr10 = lshr i32 %9, 3, !dbg !997
  store i32 %shr10, ptr %byte_pos, align 4, !dbg !998
  %10 = load i32, ptr %bit_pos, align 4, !dbg !999
  %and11 = and i32 %10, 7, !dbg !1000
  store i32 %and11, ptr %bit_res, align 4, !dbg !1001
  store i64 0, ptr %instr, align 8, !dbg !1002
  store i64 0, ptr %j, align 8, !dbg !1003
  br label %for.cond12, !dbg !1005

for.cond12:                                       ; preds = %for.inc, %if.end
  %11 = load i64, ptr %j, align 8, !dbg !1006
  %cmp13 = icmp ult i64 %11, 6, !dbg !1008
  br i1 %cmp13, label %for.body15, label %for.end, !dbg !1009

for.body15:                                       ; preds = %for.cond12
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !1010
  %13 = load i64, ptr %i, align 8, !dbg !1011
  %14 = load i64, ptr %j, align 8, !dbg !1012
  %add16 = add i64 %13, %14, !dbg !1013
  %15 = load i32, ptr %byte_pos, align 4, !dbg !1014
  %conv17 = zext i32 %15 to i64, !dbg !1014
  %add18 = add i64 %add16, %conv17, !dbg !1015
  %arrayidx19 = getelementptr i8, ptr %12, i64 %add18, !dbg !1010
  %16 = load i8, ptr %arrayidx19, align 1, !dbg !1010
  %conv20 = zext i8 %16 to i64, !dbg !1016
  %17 = load i64, ptr %j, align 8, !dbg !1017
  %mul = mul i64 8, %17, !dbg !1018
  %shl = shl i64 %conv20, %mul, !dbg !1019
  %18 = load i64, ptr %instr, align 8, !dbg !1020
  %or = or i64 %18, %shl, !dbg !1020
  store i64 %or, ptr %instr, align 8, !dbg !1020
  br label %for.inc, !dbg !1021

for.inc:                                          ; preds = %for.body15
  %19 = load i64, ptr %j, align 8, !dbg !1022
  %inc = add i64 %19, 1, !dbg !1022
  store i64 %inc, ptr %j, align 8, !dbg !1022
  br label %for.cond12, !dbg !1023, !llvm.loop !1024

for.end:                                          ; preds = %for.cond12
  %20 = load i64, ptr %instr, align 8, !dbg !1026
  %21 = load i32, ptr %bit_res, align 4, !dbg !1027
  %sh_prom = zext i32 %21 to i64, !dbg !1028
  %shr21 = lshr i64 %20, %sh_prom, !dbg !1028
  store i64 %shr21, ptr %norm, align 8, !dbg !1029
  %22 = load i64, ptr %norm, align 8, !dbg !1030
  %shr22 = lshr i64 %22, 37, !dbg !1032
  %and23 = and i64 %shr22, 15, !dbg !1033
  %cmp24 = icmp eq i64 %and23, 5, !dbg !1034
  br i1 %cmp24, label %land.lhs.true, label %if.end73, !dbg !1035

land.lhs.true:                                    ; preds = %for.end
  %23 = load i64, ptr %norm, align 8, !dbg !1036
  %shr26 = lshr i64 %23, 9, !dbg !1037
  %and27 = and i64 %shr26, 7, !dbg !1038
  %cmp28 = icmp eq i64 %and27, 0, !dbg !1039
  br i1 %cmp28, label %if.then30, label %if.end73, !dbg !1040

if.then30:                                        ; preds = %land.lhs.true
  %24 = load i64, ptr %norm, align 8, !dbg !1041
  %shr31 = lshr i64 %24, 13, !dbg !1043
  %and32 = and i64 %shr31, 1048575, !dbg !1044
  %conv33 = trunc i64 %and32 to i32, !dbg !1045
  store i32 %conv33, ptr %addr, align 4, !dbg !1046
  %25 = load i64, ptr %norm, align 8, !dbg !1047
  %shr34 = lshr i64 %25, 36, !dbg !1048
  %conv35 = trunc i64 %shr34 to i32, !dbg !1049
  %and36 = and i32 %conv35, 1, !dbg !1050
  %shl37 = shl i32 %and36, 20, !dbg !1051
  %26 = load i32, ptr %addr, align 4, !dbg !1052
  %or38 = or i32 %26, %shl37, !dbg !1052
  store i32 %or38, ptr %addr, align 4, !dbg !1052
  %27 = load i32, ptr %addr, align 4, !dbg !1053
  %shl39 = shl i32 %27, 4, !dbg !1053
  store i32 %shl39, ptr %addr, align 4, !dbg !1053
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1054
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %28, i32 0, i32 3, !dbg !1055
  %29 = load i32, ptr %pos, align 4, !dbg !1055
  %30 = load i64, ptr %i, align 8, !dbg !1056
  %conv40 = trunc i64 %30 to i32, !dbg !1057
  %add41 = add i32 %29, %conv40, !dbg !1058
  %31 = load i32, ptr %addr, align 4, !dbg !1059
  %sub = sub i32 %31, %add41, !dbg !1059
  store i32 %sub, ptr %addr, align 4, !dbg !1059
  %32 = load i32, ptr %addr, align 4, !dbg !1060
  %shr42 = lshr i32 %32, 4, !dbg !1060
  store i32 %shr42, ptr %addr, align 4, !dbg !1060
  %33 = load i64, ptr %norm, align 8, !dbg !1061
  %and43 = and i64 %33, -77309403137, !dbg !1061
  store i64 %and43, ptr %norm, align 8, !dbg !1061
  %34 = load i32, ptr %addr, align 4, !dbg !1062
  %and44 = and i32 %34, 1048575, !dbg !1063
  %conv45 = zext i32 %and44 to i64, !dbg !1064
  %shl46 = shl i64 %conv45, 13, !dbg !1065
  %35 = load i64, ptr %norm, align 8, !dbg !1066
  %or47 = or i64 %35, %shl46, !dbg !1066
  store i64 %or47, ptr %norm, align 8, !dbg !1066
  %36 = load i32, ptr %addr, align 4, !dbg !1067
  %and48 = and i32 %36, 1048576, !dbg !1068
  %conv49 = zext i32 %and48 to i64, !dbg !1069
  %shl50 = shl i64 %conv49, 16, !dbg !1070
  %37 = load i64, ptr %norm, align 8, !dbg !1071
  %or51 = or i64 %37, %shl50, !dbg !1071
  store i64 %or51, ptr %norm, align 8, !dbg !1071
  %38 = load i32, ptr %bit_res, align 4, !dbg !1072
  %shl52 = shl i32 1, %38, !dbg !1073
  %sub53 = sub i32 %shl52, 1, !dbg !1074
  %conv54 = sext i32 %sub53 to i64, !dbg !1075
  %39 = load i64, ptr %instr, align 8, !dbg !1076
  %and55 = and i64 %39, %conv54, !dbg !1076
  store i64 %and55, ptr %instr, align 8, !dbg !1076
  %40 = load i64, ptr %norm, align 8, !dbg !1077
  %41 = load i32, ptr %bit_res, align 4, !dbg !1078
  %sh_prom56 = zext i32 %41 to i64, !dbg !1079
  %shl57 = shl i64 %40, %sh_prom56, !dbg !1079
  %42 = load i64, ptr %instr, align 8, !dbg !1080
  %or58 = or i64 %42, %shl57, !dbg !1080
  store i64 %or58, ptr %instr, align 8, !dbg !1080
  store i64 0, ptr %j, align 8, !dbg !1081
  br label %for.cond59, !dbg !1083

for.cond59:                                       ; preds = %for.inc70, %if.then30
  %43 = load i64, ptr %j, align 8, !dbg !1084
  %cmp60 = icmp ult i64 %43, 6, !dbg !1086
  br i1 %cmp60, label %for.body62, label %for.end72, !dbg !1087

for.body62:                                       ; preds = %for.cond59
  %44 = load i64, ptr %instr, align 8, !dbg !1088
  %45 = load i64, ptr %j, align 8, !dbg !1089
  %mul63 = mul i64 8, %45, !dbg !1090
  %shr64 = lshr i64 %44, %mul63, !dbg !1091
  %conv65 = trunc i64 %shr64 to i8, !dbg !1092
  %46 = load ptr, ptr %buf.addr, align 8, !dbg !1093
  %47 = load i64, ptr %i, align 8, !dbg !1094
  %48 = load i64, ptr %j, align 8, !dbg !1095
  %add66 = add i64 %47, %48, !dbg !1096
  %49 = load i32, ptr %byte_pos, align 4, !dbg !1097
  %conv67 = zext i32 %49 to i64, !dbg !1097
  %add68 = add i64 %add66, %conv67, !dbg !1098
  %arrayidx69 = getelementptr i8, ptr %46, i64 %add68, !dbg !1093
  store i8 %conv65, ptr %arrayidx69, align 1, !dbg !1099
  br label %for.inc70, !dbg !1093

for.inc70:                                        ; preds = %for.body62
  %50 = load i64, ptr %j, align 8, !dbg !1100
  %inc71 = add i64 %50, 1, !dbg !1100
  store i64 %inc71, ptr %j, align 8, !dbg !1100
  br label %for.cond59, !dbg !1101, !llvm.loop !1102

for.end72:                                        ; preds = %for.cond59
  br label %if.end73, !dbg !1104

if.end73:                                         ; preds = %for.end72, %land.lhs.true, %for.end
  br label %for.inc74, !dbg !1105

for.inc74:                                        ; preds = %if.end73, %if.then
  %51 = load i32, ptr %slot, align 4, !dbg !1106
  %inc75 = add i32 %51, 1, !dbg !1106
  store i32 %inc75, ptr %slot, align 4, !dbg !1106
  %52 = load i32, ptr %bit_pos, align 4, !dbg !1107
  %add76 = add i32 %52, 41, !dbg !1107
  store i32 %add76, ptr %bit_pos, align 4, !dbg !1107
  br label %for.cond3, !dbg !1108, !llvm.loop !1109

for.end77:                                        ; preds = %for.cond3
  br label %for.inc78, !dbg !1111

for.inc78:                                        ; preds = %for.end77
  %53 = load i64, ptr %i, align 8, !dbg !1112
  %add79 = add i64 %53, 16, !dbg !1112
  store i64 %add79, ptr %i, align 8, !dbg !1112
  br label %for.cond, !dbg !1113, !llvm.loop !1114

for.end80:                                        ; preds = %for.cond
  %54 = load i64, ptr %i, align 8, !dbg !1116
  call void @llvm.lifetime.end.p0(i64 8, ptr %norm) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %instr) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_res) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte_pos) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_pos) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #13, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !1117
  ret i64 %54, !dbg !1118
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bcj_arm(ptr noundef %s, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !1119 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1121, metadata !DIExpression()), !dbg !1126
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1122, metadata !DIExpression()), !dbg !1127
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1123, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1124, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #13, !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1125, metadata !DIExpression()), !dbg !1132
  store i64 0, ptr %i, align 8, !dbg !1133
  br label %for.cond, !dbg !1135

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1136
  %add = add i64 %0, 4, !dbg !1138
  %1 = load i64, ptr %size.addr, align 8, !dbg !1139
  %cmp = icmp ule i64 %add, %1, !dbg !1140
  br i1 %cmp, label %for.body, label %for.end, !dbg !1141

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1142
  %3 = load i64, ptr %i, align 8, !dbg !1145
  %add1 = add i64 %3, 3, !dbg !1146
  %arrayidx = getelementptr i8, ptr %2, i64 %add1, !dbg !1142
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1142
  %conv = zext i8 %4 to i32, !dbg !1142
  %cmp2 = icmp eq i32 %conv, 235, !dbg !1147
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1148

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !1149
  %6 = load i64, ptr %i, align 8, !dbg !1151
  %arrayidx4 = getelementptr i8, ptr %5, i64 %6, !dbg !1149
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !1149
  %conv5 = zext i8 %7 to i32, !dbg !1152
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !1153
  %9 = load i64, ptr %i, align 8, !dbg !1154
  %add6 = add i64 %9, 1, !dbg !1155
  %arrayidx7 = getelementptr i8, ptr %8, i64 %add6, !dbg !1153
  %10 = load i8, ptr %arrayidx7, align 1, !dbg !1153
  %conv8 = zext i8 %10 to i32, !dbg !1156
  %shl = shl i32 %conv8, 8, !dbg !1157
  %or = or i32 %conv5, %shl, !dbg !1158
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !1159
  %12 = load i64, ptr %i, align 8, !dbg !1160
  %add9 = add i64 %12, 2, !dbg !1161
  %arrayidx10 = getelementptr i8, ptr %11, i64 %add9, !dbg !1159
  %13 = load i8, ptr %arrayidx10, align 1, !dbg !1159
  %conv11 = zext i8 %13 to i32, !dbg !1162
  %shl12 = shl i32 %conv11, 16, !dbg !1163
  %or13 = or i32 %or, %shl12, !dbg !1164
  store i32 %or13, ptr %addr, align 4, !dbg !1165
  %14 = load i32, ptr %addr, align 4, !dbg !1166
  %shl14 = shl i32 %14, 2, !dbg !1166
  store i32 %shl14, ptr %addr, align 4, !dbg !1166
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1167
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %15, i32 0, i32 3, !dbg !1168
  %16 = load i32, ptr %pos, align 4, !dbg !1168
  %17 = load i64, ptr %i, align 8, !dbg !1169
  %conv15 = trunc i64 %17 to i32, !dbg !1170
  %add16 = add i32 %16, %conv15, !dbg !1171
  %add17 = add i32 %add16, 8, !dbg !1172
  %18 = load i32, ptr %addr, align 4, !dbg !1173
  %sub = sub i32 %18, %add17, !dbg !1173
  store i32 %sub, ptr %addr, align 4, !dbg !1173
  %19 = load i32, ptr %addr, align 4, !dbg !1174
  %shr = lshr i32 %19, 2, !dbg !1174
  store i32 %shr, ptr %addr, align 4, !dbg !1174
  %20 = load i32, ptr %addr, align 4, !dbg !1175
  %conv18 = trunc i32 %20 to i8, !dbg !1176
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !1177
  %22 = load i64, ptr %i, align 8, !dbg !1178
  %arrayidx19 = getelementptr i8, ptr %21, i64 %22, !dbg !1177
  store i8 %conv18, ptr %arrayidx19, align 1, !dbg !1179
  %23 = load i32, ptr %addr, align 4, !dbg !1180
  %shr20 = lshr i32 %23, 8, !dbg !1181
  %conv21 = trunc i32 %shr20 to i8, !dbg !1182
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !1183
  %25 = load i64, ptr %i, align 8, !dbg !1184
  %add22 = add i64 %25, 1, !dbg !1185
  %arrayidx23 = getelementptr i8, ptr %24, i64 %add22, !dbg !1183
  store i8 %conv21, ptr %arrayidx23, align 1, !dbg !1186
  %26 = load i32, ptr %addr, align 4, !dbg !1187
  %shr24 = lshr i32 %26, 16, !dbg !1188
  %conv25 = trunc i32 %shr24 to i8, !dbg !1189
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !1190
  %28 = load i64, ptr %i, align 8, !dbg !1191
  %add26 = add i64 %28, 2, !dbg !1192
  %arrayidx27 = getelementptr i8, ptr %27, i64 %add26, !dbg !1190
  store i8 %conv25, ptr %arrayidx27, align 1, !dbg !1193
  br label %if.end, !dbg !1194

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1195

for.inc:                                          ; preds = %if.end
  %29 = load i64, ptr %i, align 8, !dbg !1196
  %add28 = add i64 %29, 4, !dbg !1196
  store i64 %add28, ptr %i, align 8, !dbg !1196
  br label %for.cond, !dbg !1197, !llvm.loop !1198

for.end:                                          ; preds = %for.cond
  %30 = load i64, ptr %i, align 8, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !1201
  ret i64 %30, !dbg !1202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bcj_armthumb(ptr noundef %s, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !1203 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1205, metadata !DIExpression()), !dbg !1210
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1206, metadata !DIExpression()), !dbg !1211
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1207, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1208, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #13, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1209, metadata !DIExpression()), !dbg !1216
  store i64 0, ptr %i, align 8, !dbg !1217
  br label %for.cond, !dbg !1219

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1220
  %add = add i64 %0, 4, !dbg !1222
  %1 = load i64, ptr %size.addr, align 8, !dbg !1223
  %cmp = icmp ule i64 %add, %1, !dbg !1224
  br i1 %cmp, label %for.body, label %for.end, !dbg !1225

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1226
  %3 = load i64, ptr %i, align 8, !dbg !1229
  %add1 = add i64 %3, 1, !dbg !1230
  %arrayidx = getelementptr i8, ptr %2, i64 %add1, !dbg !1226
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1226
  %conv = zext i8 %4 to i32, !dbg !1226
  %and = and i32 %conv, 248, !dbg !1231
  %cmp2 = icmp eq i32 %and, 240, !dbg !1232
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !1233

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !1234
  %6 = load i64, ptr %i, align 8, !dbg !1235
  %add4 = add i64 %6, 3, !dbg !1236
  %arrayidx5 = getelementptr i8, ptr %5, i64 %add4, !dbg !1234
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !1234
  %conv6 = zext i8 %7 to i32, !dbg !1234
  %and7 = and i32 %conv6, 248, !dbg !1237
  %cmp8 = icmp eq i32 %and7, 248, !dbg !1238
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1239

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !1240
  %9 = load i64, ptr %i, align 8, !dbg !1242
  %add10 = add i64 %9, 1, !dbg !1243
  %arrayidx11 = getelementptr i8, ptr %8, i64 %add10, !dbg !1240
  %10 = load i8, ptr %arrayidx11, align 1, !dbg !1240
  %conv12 = zext i8 %10 to i32, !dbg !1244
  %and13 = and i32 %conv12, 7, !dbg !1245
  %shl = shl i32 %and13, 19, !dbg !1246
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !1247
  %12 = load i64, ptr %i, align 8, !dbg !1248
  %arrayidx14 = getelementptr i8, ptr %11, i64 %12, !dbg !1247
  %13 = load i8, ptr %arrayidx14, align 1, !dbg !1247
  %conv15 = zext i8 %13 to i32, !dbg !1249
  %shl16 = shl i32 %conv15, 11, !dbg !1250
  %or = or i32 %shl, %shl16, !dbg !1251
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !1252
  %15 = load i64, ptr %i, align 8, !dbg !1253
  %add17 = add i64 %15, 3, !dbg !1254
  %arrayidx18 = getelementptr i8, ptr %14, i64 %add17, !dbg !1252
  %16 = load i8, ptr %arrayidx18, align 1, !dbg !1252
  %conv19 = zext i8 %16 to i32, !dbg !1255
  %and20 = and i32 %conv19, 7, !dbg !1256
  %shl21 = shl i32 %and20, 8, !dbg !1257
  %or22 = or i32 %or, %shl21, !dbg !1258
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !1259
  %18 = load i64, ptr %i, align 8, !dbg !1260
  %add23 = add i64 %18, 2, !dbg !1261
  %arrayidx24 = getelementptr i8, ptr %17, i64 %add23, !dbg !1259
  %19 = load i8, ptr %arrayidx24, align 1, !dbg !1259
  %conv25 = zext i8 %19 to i32, !dbg !1262
  %or26 = or i32 %or22, %conv25, !dbg !1263
  store i32 %or26, ptr %addr, align 4, !dbg !1264
  %20 = load i32, ptr %addr, align 4, !dbg !1265
  %shl27 = shl i32 %20, 1, !dbg !1265
  store i32 %shl27, ptr %addr, align 4, !dbg !1265
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1266
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %21, i32 0, i32 3, !dbg !1267
  %22 = load i32, ptr %pos, align 4, !dbg !1267
  %23 = load i64, ptr %i, align 8, !dbg !1268
  %conv28 = trunc i64 %23 to i32, !dbg !1269
  %add29 = add i32 %22, %conv28, !dbg !1270
  %add30 = add i32 %add29, 4, !dbg !1271
  %24 = load i32, ptr %addr, align 4, !dbg !1272
  %sub = sub i32 %24, %add30, !dbg !1272
  store i32 %sub, ptr %addr, align 4, !dbg !1272
  %25 = load i32, ptr %addr, align 4, !dbg !1273
  %shr = lshr i32 %25, 1, !dbg !1273
  store i32 %shr, ptr %addr, align 4, !dbg !1273
  %26 = load i32, ptr %addr, align 4, !dbg !1274
  %shr31 = lshr i32 %26, 19, !dbg !1275
  %and32 = and i32 %shr31, 7, !dbg !1276
  %or33 = or i32 240, %and32, !dbg !1277
  %conv34 = trunc i32 %or33 to i8, !dbg !1278
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !1279
  %28 = load i64, ptr %i, align 8, !dbg !1280
  %add35 = add i64 %28, 1, !dbg !1281
  %arrayidx36 = getelementptr i8, ptr %27, i64 %add35, !dbg !1279
  store i8 %conv34, ptr %arrayidx36, align 1, !dbg !1282
  %29 = load i32, ptr %addr, align 4, !dbg !1283
  %shr37 = lshr i32 %29, 11, !dbg !1284
  %conv38 = trunc i32 %shr37 to i8, !dbg !1285
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !1286
  %31 = load i64, ptr %i, align 8, !dbg !1287
  %arrayidx39 = getelementptr i8, ptr %30, i64 %31, !dbg !1286
  store i8 %conv38, ptr %arrayidx39, align 1, !dbg !1288
  %32 = load i32, ptr %addr, align 4, !dbg !1289
  %shr40 = lshr i32 %32, 8, !dbg !1290
  %and41 = and i32 %shr40, 7, !dbg !1291
  %or42 = or i32 248, %and41, !dbg !1292
  %conv43 = trunc i32 %or42 to i8, !dbg !1293
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !1294
  %34 = load i64, ptr %i, align 8, !dbg !1295
  %add44 = add i64 %34, 3, !dbg !1296
  %arrayidx45 = getelementptr i8, ptr %33, i64 %add44, !dbg !1294
  store i8 %conv43, ptr %arrayidx45, align 1, !dbg !1297
  %35 = load i32, ptr %addr, align 4, !dbg !1298
  %conv46 = trunc i32 %35 to i8, !dbg !1299
  %36 = load ptr, ptr %buf.addr, align 8, !dbg !1300
  %37 = load i64, ptr %i, align 8, !dbg !1301
  %add47 = add i64 %37, 2, !dbg !1302
  %arrayidx48 = getelementptr i8, ptr %36, i64 %add47, !dbg !1300
  store i8 %conv46, ptr %arrayidx48, align 1, !dbg !1303
  %38 = load i64, ptr %i, align 8, !dbg !1304
  %add49 = add i64 %38, 2, !dbg !1304
  store i64 %add49, ptr %i, align 8, !dbg !1304
  br label %if.end, !dbg !1305

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !1306

for.inc:                                          ; preds = %if.end
  %39 = load i64, ptr %i, align 8, !dbg !1307
  %add50 = add i64 %39, 2, !dbg !1307
  store i64 %add50, ptr %i, align 8, !dbg !1307
  br label %for.cond, !dbg !1308, !llvm.loop !1309

for.end:                                          ; preds = %for.cond
  %40 = load i64, ptr %i, align 8, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #13, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !1312
  ret i64 %40, !dbg !1313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bcj_sparc(ptr noundef %s, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !1314 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %instr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1316, metadata !DIExpression()), !dbg !1321
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1317, metadata !DIExpression()), !dbg !1322
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1318, metadata !DIExpression()), !dbg !1323
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !1324
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1319, metadata !DIExpression()), !dbg !1325
  call void @llvm.lifetime.start.p0(i64 4, ptr %instr) #13, !dbg !1326
  call void @llvm.dbg.declare(metadata ptr %instr, metadata !1320, metadata !DIExpression()), !dbg !1327
  store i64 0, ptr %i, align 8, !dbg !1328
  br label %for.cond, !dbg !1330

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1331
  %add = add i64 %0, 4, !dbg !1333
  %1 = load i64, ptr %size.addr, align 8, !dbg !1334
  %cmp = icmp ule i64 %add, %1, !dbg !1335
  br i1 %cmp, label %for.body, label %for.end, !dbg !1336

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1337
  %3 = load i64, ptr %i, align 8, !dbg !1339
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !1340
  %call = call i32 @get_unaligned_be32(ptr noundef %add.ptr) #14, !dbg !1341
  store i32 %call, ptr %instr, align 4, !dbg !1342
  %4 = load i32, ptr %instr, align 4, !dbg !1343
  %shr = lshr i32 %4, 22, !dbg !1345
  %cmp1 = icmp eq i32 %shr, 256, !dbg !1346
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1347

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, ptr %instr, align 4, !dbg !1348
  %shr2 = lshr i32 %5, 22, !dbg !1349
  %cmp3 = icmp eq i32 %shr2, 511, !dbg !1350
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1351

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load i32, ptr %instr, align 4, !dbg !1352
  %shl = shl i32 %6, 2, !dbg !1352
  store i32 %shl, ptr %instr, align 4, !dbg !1352
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1354
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %7, i32 0, i32 3, !dbg !1355
  %8 = load i32, ptr %pos, align 4, !dbg !1355
  %9 = load i64, ptr %i, align 8, !dbg !1356
  %conv = trunc i64 %9 to i32, !dbg !1357
  %add4 = add i32 %8, %conv, !dbg !1358
  %10 = load i32, ptr %instr, align 4, !dbg !1359
  %sub = sub i32 %10, %add4, !dbg !1359
  store i32 %sub, ptr %instr, align 4, !dbg !1359
  %11 = load i32, ptr %instr, align 4, !dbg !1360
  %shr5 = lshr i32 %11, 2, !dbg !1360
  store i32 %shr5, ptr %instr, align 4, !dbg !1360
  %12 = load i32, ptr %instr, align 4, !dbg !1361
  %and = and i32 %12, 4194304, !dbg !1362
  %sub6 = sub i32 1073741824, %and, !dbg !1363
  %or = or i32 %sub6, 1073741824, !dbg !1364
  %13 = load i32, ptr %instr, align 4, !dbg !1365
  %and7 = and i32 %13, 4194303, !dbg !1366
  %or8 = or i32 %or, %and7, !dbg !1367
  store i32 %or8, ptr %instr, align 4, !dbg !1368
  %14 = load i32, ptr %instr, align 4, !dbg !1369
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !1370
  %16 = load i64, ptr %i, align 8, !dbg !1371
  %add.ptr9 = getelementptr i8, ptr %15, i64 %16, !dbg !1372
  call void @put_unaligned_be32(i32 noundef %14, ptr noundef %add.ptr9) #14, !dbg !1373
  br label %if.end, !dbg !1374

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !1375

for.inc:                                          ; preds = %if.end
  %17 = load i64, ptr %i, align 8, !dbg !1376
  %add10 = add i64 %17, 4, !dbg !1376
  store i64 %add10, ptr %i, align 8, !dbg !1376
  br label %for.cond, !dbg !1377, !llvm.loop !1378

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %i, align 8, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 4, ptr %instr) #13, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !1381
  ret i64 %18, !dbg !1382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bcj_x86_test_msbyte(i8 noundef zeroext %b) #6 align 16 !dbg !1383 {
entry:
  %b.addr = alloca i8, align 1
  store i8 %b, ptr %b.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  %0 = load i8, ptr %b.addr, align 1, !dbg !1390
  %conv = zext i8 %0 to i32, !dbg !1390
  %cmp = icmp eq i32 %conv, 0, !dbg !1391
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1392

lor.rhs:                                          ; preds = %entry
  %1 = load i8, ptr %b.addr, align 1, !dbg !1393
  %conv2 = zext i8 %1 to i32, !dbg !1393
  %cmp3 = icmp eq i32 %conv2, 255, !dbg !1394
  br label %lor.end, !dbg !1392

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !1392
  ret i32 %lor.ext, !dbg !1395
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #6 align 16 !dbg !91 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !97, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #13, !dbg !1397
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !98, metadata !DIExpression()), !dbg !1397
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1397
  store ptr %0, ptr %__pptr, align 8, !dbg !1397
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1397
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !1397
  %2 = load i32, ptr %x, align 1, !dbg !1397
  store i32 %2, ptr %tmp, align 4, !dbg !1397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #13, !dbg !1398
  %3 = load i32, ptr %tmp, align 4, !dbg !1397
  ret i32 %3, !dbg !1399
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #6 align 16 !dbg !104 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !108, metadata !DIExpression()), !dbg !1400
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !109, metadata !DIExpression()), !dbg !1401
  br label %do.body, !dbg !1402

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #13, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !110, metadata !DIExpression()), !dbg !1403
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1403
  store ptr %0, ptr %__pptr, align 8, !dbg !1403
  %1 = load i32, ptr %val.addr, align 4, !dbg !1403
  %2 = load ptr, ptr %__pptr, align 8, !dbg !1403
  %x = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 0, !dbg !1403
  store i32 %1, ptr %x, align 1, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #13, !dbg !1402
  br label %do.end, !dbg !1403

do.end:                                           ; preds = %do.body
  ret void, !dbg !1404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_be32(ptr noundef %p) #6 align 16 !dbg !118 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !120, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #13, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !121, metadata !DIExpression()), !dbg !1406
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1406
  store ptr %0, ptr %__pptr, align 8, !dbg !1406
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1406
  %x = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 0, !dbg !1406
  %2 = load i32, ptr %x, align 1, !dbg !1406
  store i32 %2, ptr %tmp, align 4, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #13, !dbg !1407
  %3 = load i32, ptr %tmp, align 4, !dbg !1406
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !1407
  ret i32 %4, !dbg !1408
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_be32(i32 noundef %val, ptr noundef %p) #6 align 16 !dbg !127 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !129, metadata !DIExpression()), !dbg !1409
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !130, metadata !DIExpression()), !dbg !1410
  br label %do.body, !dbg !1411

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #13, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !131, metadata !DIExpression()), !dbg !1412
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1412
  store ptr %0, ptr %__pptr, align 8, !dbg !1412
  %1 = load i32, ptr %val.addr, align 4, !dbg !1412
  %2 = call i32 @llvm.bswap.i32(i32 %1), !dbg !1412
  %3 = load ptr, ptr %__pptr, align 8, !dbg !1412
  %x = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 0, !dbg !1412
  store i32 %2, ptr %x, align 1, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #13, !dbg !1411
  br label %do.end, !dbg !1412

do.end:                                           ; preds = %do.body
  ret void, !dbg !1413
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1414 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !1415 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1419, metadata !DIExpression()), !dbg !1421
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1420, metadata !DIExpression()), !dbg !1422
  %0 = load i64, ptr %size.addr, align 8, !dbg !1423
  %tobool = icmp ne i64 %0, 0, !dbg !1423
  br i1 %tobool, label %if.end, label %if.then, !dbg !1425

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1426
  br label %return, !dbg !1426

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1427
  %cmp = icmp ule i64 %1, 8, !dbg !1429
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1430

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1431
  br label %return, !dbg !1431

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1432
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1434
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1435

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1436
  %cmp4 = icmp ule i64 %3, 96, !dbg !1437
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1438

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1439
  br label %return, !dbg !1439

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1440
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1442
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1443

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1444
  %cmp9 = icmp ule i64 %5, 192, !dbg !1445
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1446

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1447
  br label %return, !dbg !1447

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1448
  %cmp12 = icmp ule i64 %6, 8, !dbg !1450
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1451

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1452
  br label %return, !dbg !1452

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1453
  %cmp15 = icmp ule i64 %7, 16, !dbg !1455
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1456

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1457
  br label %return, !dbg !1457

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1458
  %cmp18 = icmp ule i64 %8, 32, !dbg !1460
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1461

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1462
  br label %return, !dbg !1462

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1463
  %cmp21 = icmp ule i64 %9, 64, !dbg !1465
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1466

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1467
  br label %return, !dbg !1467

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1468
  %cmp24 = icmp ule i64 %10, 128, !dbg !1470
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1471

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1472
  br label %return, !dbg !1472

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1473
  %cmp27 = icmp ule i64 %11, 256, !dbg !1475
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1476

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1477
  br label %return, !dbg !1477

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1478
  %cmp30 = icmp ule i64 %12, 512, !dbg !1480
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1481

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1482
  br label %return, !dbg !1482

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1483
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1485
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1486

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1487
  br label %return, !dbg !1487

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1488
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1490
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1491

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1492
  br label %return, !dbg !1492

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1493
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1495
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1496

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1498
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1500
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1501

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1502
  br label %return, !dbg !1502

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1503
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1505
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1506

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1507
  br label %return, !dbg !1507

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1508
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1510
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1511

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1512
  br label %return, !dbg !1512

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1513
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1515
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1516

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1517
  br label %return, !dbg !1517

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1518
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1520
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1521

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1522
  br label %return, !dbg !1522

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1523
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1525
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1526

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1528
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1530
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1531

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1533
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1535
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1536

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1538
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1540
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1541

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1543, !range !299, !noundef !300
  %tobool69 = trunc i8 %25 to i1, !dbg !1543
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1545

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1546

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #17, !dbg !1547, !srcloc !1550
  unreachable, !dbg !1547

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1551

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1552

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1553

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1555

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1553

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !1557, !srcloc !1559
  br label %do.end75, !dbg !1557

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1553

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1561
  ret i32 %26, !dbg !1561
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1562 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !1568 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1572, metadata !DIExpression()), !dbg !1574
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1573, metadata !DIExpression()), !dbg !1575
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1576
  %and = and i32 %0, 17, !dbg !1576
  %cmp = icmp eq i32 %and, 0, !dbg !1576
  %lnot = xor i1 %cmp, true, !dbg !1576
  %lnot1 = xor i1 %lnot, true, !dbg !1576
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1576
  %conv = sext i32 %lnot.ext to i64, !dbg !1576
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1576
  %tobool = icmp ne i64 %expval, 0, !dbg !1576
  br i1 %tobool, label %if.then, label %if.end, !dbg !1578

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1579
  br label %return, !dbg !1579

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1580
  %and2 = and i32 %1, 1, !dbg !1582
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1582
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1583

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1584
  br label %return, !dbg !1584

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1585
  br label %return, !dbg !1585

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1587
  ret i32 %2, !dbg !1587
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1588 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1589 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!65}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mask_to_allowed_status", scope: !2, file: !3, line: 90, type: !183, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "bcj_x86", scope: !3, file: !3, line: 88, type: !4, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !172)
!3 = !DIFile(filename: "lib/xz/xz_dec_bcj.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8b1bd280bfacce24a92a67daf7935a65")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !12, !49, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !9, line: 72, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !9, line: 16, baseType: !11)
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec_bcj", file: !3, line: 19, size: 640, elements: !14)
!14 = !{!15, !25, !38, !41, !47, !48, !54, !55, !56}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !3, line: 28, baseType: !16, size: 32)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !3, line: 21, baseType: !17, size: 32, elements: !18)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DIEnumerator(name: "BCJ_X86", value: 4)
!20 = !DIEnumerator(name: "BCJ_POWERPC", value: 5)
!21 = !DIEnumerator(name: "BCJ_IA64", value: 6)
!22 = !DIEnumerator(name: "BCJ_ARM", value: 7)
!23 = !DIEnumerator(name: "BCJ_ARMTHUMB", value: 8)
!24 = !DIEnumerator(name: "BCJ_SPARC", value: 9)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !13, file: !3, line: 35, baseType: !26, size: 32, offset: 32)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_ret", file: !27, line: 108, baseType: !17, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/xz.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffd75faa50baf17c238f800fe0cc3300")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37}
!29 = !DIEnumerator(name: "XZ_OK", value: 0)
!30 = !DIEnumerator(name: "XZ_STREAM_END", value: 1)
!31 = !DIEnumerator(name: "XZ_UNSUPPORTED_CHECK", value: 2)
!32 = !DIEnumerator(name: "XZ_MEM_ERROR", value: 3)
!33 = !DIEnumerator(name: "XZ_MEMLIMIT_ERROR", value: 4)
!34 = !DIEnumerator(name: "XZ_FORMAT_ERROR", value: 5)
!35 = !DIEnumerator(name: "XZ_OPTIONS_ERROR", value: 6)
!36 = !DIEnumerator(name: "XZ_DATA_ERROR", value: 7)
!37 = !DIEnumerator(name: "XZ_BUF_ERROR", value: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "single_call", scope: !13, file: !3, line: 38, baseType: !39, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !7, line: 35, baseType: !40)
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !13, file: !3, line: 45, baseType: !42, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 110, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 21, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !17)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "x86_prev_mask", scope: !13, file: !3, line: 48, baseType: !42, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !13, file: !3, line: 51, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 108, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 17, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !46, line: 21, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "out_pos", scope: !13, file: !3, line: 52, baseType: !6, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "out_size", scope: !13, file: !3, line: 53, baseType: !6, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !13, file: !3, line: 75, baseType: !57, size: 256, offset: 384)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 55, size: 256, elements: !58)
!58 = !{!59, !60, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !57, file: !3, line: 57, baseType: !6, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !57, file: !3, line: 60, baseType: !6, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !57, file: !3, line: 74, baseType: !62, size: 128, offset: 128)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 16)
!65 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/xz/.xz_dec_bcj.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/xz/xz_dec\22 -D KBUILD_BASENAME=\22xz_dec_bcj\22 -D KBUILD_MODNAME=\22xz_dec\22 -D __KBUILD_MODNAME=kmod_xz_dec -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/xz/xz_dec_bcj.ll lib/xz/xz_dec_bcj.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !66, retainedTypes: !82, globals: !139, splitDebugInlining: false, nameTableKind: None)
!66 = !{!26, !16, !67, !72}
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 10, baseType: !17, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "false", value: 0)
!71 = !DIEnumerator(name: "true", value: 1)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !73, line: 364, baseType: !17, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!74 = !{!75, !76, !77, !78, !79, !80, !81}
!75 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!76 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!77 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!78 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!79 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!80 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!81 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!82 = !{!83, !84, !6, !42, !50, !45, !85, !87, !102, !114, !115, !125, !135, !11}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !7, line: 154, baseType: !17)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !86, line: 38, baseType: !45)
!86 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !90, line: 32, size: 32, elements: !100)
!90 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!91 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !90, file: !90, line: 30, type: !92, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !96)
!92 = !DISubroutineType(types: !93)
!93 = !{!43, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "p", arg: 1, scope: !91, file: !90, line: 30, type: !94)
!98 = !DILocalVariable(name: "__pptr", scope: !99, file: !90, line: 32, type: !87)
!99 = distinct !DILexicalBlock(scope: !91, file: !90, line: 32, column: 9)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !89, file: !90, line: 32, baseType: !85, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !90, line: 47, size: 32, elements: !112)
!104 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !90, file: !90, line: 45, type: !105, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !43, !84}
!107 = !{!108, !109, !110}
!108 = !DILocalVariable(name: "val", arg: 1, scope: !104, file: !90, line: 45, type: !43)
!109 = !DILocalVariable(name: "p", arg: 2, scope: !104, file: !90, line: 45, type: !84)
!110 = !DILocalVariable(name: "__pptr", scope: !111, file: !90, line: 47, type: !102)
!111 = distinct !DILexicalBlock(scope: !104, file: !90, line: 47, column: 2)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !103, file: !90, line: 47, baseType: !85, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !86, line: 39, baseType: !45)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !118, file: !90, line: 62, size: 32, elements: !123)
!118 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !90, file: !90, line: 60, type: !92, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "p", arg: 1, scope: !118, file: !90, line: 60, type: !94)
!121 = !DILocalVariable(name: "__pptr", scope: !122, file: !90, line: 62, type: !115)
!122 = distinct !DILexicalBlock(scope: !118, file: !90, line: 62, column: 9)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !117, file: !90, line: 62, baseType: !114, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !127, file: !90, line: 77, size: 32, elements: !133)
!127 = distinct !DISubprogram(name: "put_unaligned_be32", scope: !90, file: !90, line: 75, type: !105, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !128)
!128 = !{!129, !130, !131}
!129 = !DILocalVariable(name: "val", arg: 1, scope: !127, file: !90, line: 75, type: !43)
!130 = !DILocalVariable(name: "p", arg: 2, scope: !127, file: !90, line: 75, type: !84)
!131 = !DILocalVariable(name: "__pptr", scope: !132, file: !90, line: 77, type: !125)
!132 = distinct !DILexicalBlock(scope: !127, file: !90, line: 77, column: 2)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !126, file: !90, line: 77, baseType: !114, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 113, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !138)
!138 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!139 = !{!0, !140, !146, !166}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "mask_to_bit_num", scope: !2, file: !3, line: 93, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "branch_table", scope: !148, file: !3, line: 183, type: !163, isLocal: true, isDefinition: true)
!148 = distinct !DISubprogram(name: "bcj_ia64", scope: !3, file: !3, line: 181, type: !4, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!150 = !DILocalVariable(name: "s", arg: 1, scope: !148, file: !3, line: 181, type: !12)
!151 = !DILocalVariable(name: "buf", arg: 2, scope: !148, file: !3, line: 181, type: !49)
!152 = !DILocalVariable(name: "size", arg: 3, scope: !148, file: !3, line: 181, type: !6)
!153 = !DILocalVariable(name: "i", scope: !148, file: !3, line: 197, type: !6)
!154 = !DILocalVariable(name: "j", scope: !148, file: !3, line: 198, type: !6)
!155 = !DILocalVariable(name: "slot", scope: !148, file: !3, line: 201, type: !42)
!156 = !DILocalVariable(name: "bit_pos", scope: !148, file: !3, line: 204, type: !42)
!157 = !DILocalVariable(name: "byte_pos", scope: !148, file: !3, line: 207, type: !42)
!158 = !DILocalVariable(name: "bit_res", scope: !148, file: !3, line: 208, type: !42)
!159 = !DILocalVariable(name: "addr", scope: !148, file: !3, line: 211, type: !42)
!160 = !DILocalVariable(name: "mask", scope: !148, file: !3, line: 214, type: !42)
!161 = !DILocalVariable(name: "instr", scope: !148, file: !3, line: 217, type: !135)
!162 = !DILocalVariable(name: "norm", scope: !148, file: !3, line: 220, type: !135)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 32)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !73, line: 480, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 168, elements: !170)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!170 = !{!171}
!171 = !DISubrange(count: 21)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!173 = !DILocalVariable(name: "s", arg: 1, scope: !2, file: !3, line: 88, type: !12)
!174 = !DILocalVariable(name: "buf", arg: 2, scope: !2, file: !3, line: 88, type: !49)
!175 = !DILocalVariable(name: "size", arg: 3, scope: !2, file: !3, line: 88, type: !6)
!176 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 95, type: !6)
!177 = !DILocalVariable(name: "prev_pos", scope: !2, file: !3, line: 96, type: !6)
!178 = !DILocalVariable(name: "prev_mask", scope: !2, file: !3, line: 97, type: !42)
!179 = !DILocalVariable(name: "src", scope: !2, file: !3, line: 98, type: !42)
!180 = !DILocalVariable(name: "dest", scope: !2, file: !3, line: 99, type: !42)
!181 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 100, type: !42)
!182 = !DILocalVariable(name: "b", scope: !2, file: !3, line: 101, type: !50)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !144)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!185 = !{i32 7, !"Dwarf Version", i32 5}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 8, !"cf-protection-branch", i32 1}
!189 = !{i32 4, !"function_return_thunk_extern", i32 1}
!190 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!191 = !{i32 1, !"Code Model", i32 2}
!192 = !{i32 1, !"override-stack-alignment", i32 8}
!193 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!194 = distinct !DISubprogram(name: "xz_dec_bcj_run", scope: !3, file: !3, line: 417, type: !195, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !210)
!195 = !DISubroutineType(types: !196)
!196 = !{!26, !12, !197, !200}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec_lzma2", file: !199, line: 112, flags: DIFlagFwdDecl)
!199 = !DIFile(filename: "lib/xz/xz_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6a924581687e16d88852d4bc1283b73b")
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_buf", file: !27, line: 136, size: 384, elements: !202)
!202 = !{!203, !205, !206, !207, !208, !209}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !201, file: !27, line: 137, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "in_pos", scope: !201, file: !27, line: 138, baseType: !6, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "in_size", scope: !201, file: !27, line: 139, baseType: !6, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !201, file: !27, line: 141, baseType: !49, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "out_pos", scope: !201, file: !27, line: 142, baseType: !6, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "out_size", scope: !201, file: !27, line: 143, baseType: !6, size: 64, offset: 320)
!210 = !{!211, !212, !213, !214}
!211 = !DILocalVariable(name: "s", arg: 1, scope: !194, file: !3, line: 417, type: !12)
!212 = !DILocalVariable(name: "lzma2", arg: 2, scope: !194, file: !3, line: 418, type: !197)
!213 = !DILocalVariable(name: "b", arg: 3, scope: !194, file: !3, line: 419, type: !200)
!214 = !DILocalVariable(name: "out_start", scope: !194, file: !3, line: 421, type: !6)
!215 = !DILocation(line: 417, column: 57, scope: !194)
!216 = !DILocation(line: 418, column: 31, scope: !194)
!217 = !DILocation(line: 419, column: 25, scope: !194)
!218 = !DILocation(line: 421, column: 2, scope: !194)
!219 = !DILocation(line: 421, column: 9, scope: !194)
!220 = !DILocation(line: 428, column: 6, scope: !221)
!221 = distinct !DILexicalBlock(scope: !194, file: !3, line: 428, column: 6)
!222 = !DILocation(line: 428, column: 9, scope: !221)
!223 = !DILocation(line: 428, column: 14, scope: !221)
!224 = !DILocation(line: 428, column: 23, scope: !221)
!225 = !DILocation(line: 428, column: 6, scope: !194)
!226 = !DILocation(line: 429, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !221, file: !3, line: 428, column: 28)
!228 = !DILocation(line: 429, column: 16, scope: !227)
!229 = !DILocation(line: 429, column: 3, scope: !227)
!230 = !DILocation(line: 430, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 430, column: 7)
!232 = !DILocation(line: 430, column: 10, scope: !231)
!233 = !DILocation(line: 430, column: 15, scope: !231)
!234 = !DILocation(line: 430, column: 24, scope: !231)
!235 = !DILocation(line: 430, column: 7, scope: !227)
!236 = !DILocation(line: 431, column: 4, scope: !231)
!237 = !DILocation(line: 433, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !227, file: !3, line: 433, column: 7)
!239 = !DILocation(line: 433, column: 10, scope: !238)
!240 = !DILocation(line: 433, column: 14, scope: !238)
!241 = !DILocation(line: 433, column: 7, scope: !227)
!242 = !DILocation(line: 434, column: 4, scope: !238)
!243 = !DILocation(line: 435, column: 2, scope: !227)
!244 = !DILocation(line: 449, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !194, file: !3, line: 449, column: 6)
!246 = !DILocation(line: 449, column: 9, scope: !245)
!247 = !DILocation(line: 449, column: 14, scope: !245)
!248 = !DILocation(line: 449, column: 21, scope: !245)
!249 = !DILocation(line: 449, column: 24, scope: !245)
!250 = !DILocation(line: 449, column: 35, scope: !245)
!251 = !DILocation(line: 449, column: 38, scope: !245)
!252 = !DILocation(line: 449, column: 33, scope: !245)
!253 = !DILocation(line: 449, column: 19, scope: !245)
!254 = !DILocation(line: 449, column: 46, scope: !245)
!255 = !DILocation(line: 449, column: 49, scope: !245)
!256 = !DILocation(line: 449, column: 52, scope: !245)
!257 = !DILocation(line: 449, column: 57, scope: !245)
!258 = !DILocation(line: 449, column: 62, scope: !245)
!259 = !DILocation(line: 449, column: 6, scope: !194)
!260 = !DILocation(line: 450, column: 15, scope: !261)
!261 = distinct !DILexicalBlock(scope: !245, file: !3, line: 449, column: 68)
!262 = !DILocation(line: 450, column: 18, scope: !261)
!263 = !DILocation(line: 450, column: 13, scope: !261)
!264 = !DILocation(line: 451, column: 10, scope: !261)
!265 = !DILocation(line: 451, column: 13, scope: !261)
!266 = !DILocation(line: 451, column: 19, scope: !261)
!267 = !DILocation(line: 451, column: 22, scope: !261)
!268 = !DILocation(line: 451, column: 17, scope: !261)
!269 = !DILocation(line: 451, column: 31, scope: !261)
!270 = !DILocation(line: 451, column: 34, scope: !261)
!271 = !DILocation(line: 451, column: 39, scope: !261)
!272 = !DILocation(line: 451, column: 3, scope: !261)
!273 = !DILocation(line: 451, column: 44, scope: !261)
!274 = !DILocation(line: 451, column: 47, scope: !261)
!275 = !DILocation(line: 451, column: 52, scope: !261)
!276 = !DILocation(line: 452, column: 17, scope: !261)
!277 = !DILocation(line: 452, column: 20, scope: !261)
!278 = !DILocation(line: 452, column: 25, scope: !261)
!279 = !DILocation(line: 452, column: 3, scope: !261)
!280 = !DILocation(line: 452, column: 6, scope: !261)
!281 = !DILocation(line: 452, column: 14, scope: !261)
!282 = !DILocation(line: 454, column: 29, scope: !261)
!283 = !DILocation(line: 454, column: 36, scope: !261)
!284 = !DILocation(line: 454, column: 12, scope: !261)
!285 = !DILocation(line: 454, column: 3, scope: !261)
!286 = !DILocation(line: 454, column: 6, scope: !261)
!287 = !DILocation(line: 454, column: 10, scope: !261)
!288 = !DILocation(line: 455, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !261, file: !3, line: 455, column: 7)
!290 = !DILocation(line: 455, column: 10, scope: !289)
!291 = !DILocation(line: 455, column: 14, scope: !289)
!292 = !DILocation(line: 456, column: 5, scope: !289)
!293 = !DILocation(line: 456, column: 9, scope: !289)
!294 = !DILocation(line: 456, column: 12, scope: !289)
!295 = !DILocation(line: 456, column: 16, scope: !289)
!296 = !DILocation(line: 456, column: 25, scope: !289)
!297 = !DILocation(line: 456, column: 28, scope: !289)
!298 = !DILocation(line: 456, column: 31, scope: !289)
!299 = !{i8 0, i8 2}
!300 = !{}
!301 = !DILocation(line: 455, column: 7, scope: !261)
!302 = !DILocation(line: 457, column: 11, scope: !289)
!303 = !DILocation(line: 457, column: 14, scope: !289)
!304 = !DILocation(line: 457, column: 4, scope: !289)
!305 = !DILocation(line: 459, column: 13, scope: !261)
!306 = !DILocation(line: 459, column: 16, scope: !261)
!307 = !DILocation(line: 459, column: 19, scope: !261)
!308 = !DILocation(line: 459, column: 36, scope: !261)
!309 = !DILocation(line: 459, column: 39, scope: !261)
!310 = !DILocation(line: 459, column: 3, scope: !261)
!311 = !DILocation(line: 466, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !261, file: !3, line: 466, column: 7)
!313 = !DILocation(line: 466, column: 10, scope: !312)
!314 = !DILocation(line: 466, column: 14, scope: !312)
!315 = !DILocation(line: 466, column: 7, scope: !261)
!316 = !DILocation(line: 467, column: 4, scope: !312)
!317 = !DILocation(line: 469, column: 18, scope: !261)
!318 = !DILocation(line: 469, column: 21, scope: !261)
!319 = !DILocation(line: 469, column: 31, scope: !261)
!320 = !DILocation(line: 469, column: 29, scope: !261)
!321 = !DILocation(line: 469, column: 3, scope: !261)
!322 = !DILocation(line: 469, column: 6, scope: !261)
!323 = !DILocation(line: 469, column: 11, scope: !261)
!324 = !DILocation(line: 469, column: 16, scope: !261)
!325 = !DILocation(line: 470, column: 17, scope: !261)
!326 = !DILocation(line: 470, column: 20, scope: !261)
!327 = !DILocation(line: 470, column: 25, scope: !261)
!328 = !DILocation(line: 470, column: 3, scope: !261)
!329 = !DILocation(line: 470, column: 6, scope: !261)
!330 = !DILocation(line: 470, column: 14, scope: !261)
!331 = !DILocation(line: 471, column: 10, scope: !261)
!332 = !DILocation(line: 471, column: 13, scope: !261)
!333 = !DILocation(line: 471, column: 18, scope: !261)
!334 = !DILocation(line: 471, column: 3, scope: !261)
!335 = !DILocation(line: 471, column: 23, scope: !261)
!336 = !DILocation(line: 471, column: 26, scope: !261)
!337 = !DILocation(line: 471, column: 32, scope: !261)
!338 = !DILocation(line: 471, column: 35, scope: !261)
!339 = !DILocation(line: 471, column: 30, scope: !261)
!340 = !DILocation(line: 471, column: 44, scope: !261)
!341 = !DILocation(line: 471, column: 47, scope: !261)
!342 = !DILocation(line: 471, column: 52, scope: !261)
!343 = !DILocation(line: 478, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !261, file: !3, line: 478, column: 7)
!345 = !DILocation(line: 478, column: 10, scope: !344)
!346 = !DILocation(line: 478, column: 20, scope: !344)
!347 = !DILocation(line: 478, column: 23, scope: !344)
!348 = !DILocation(line: 478, column: 28, scope: !344)
!349 = !DILocation(line: 478, column: 18, scope: !344)
!350 = !DILocation(line: 478, column: 35, scope: !344)
!351 = !DILocation(line: 478, column: 38, scope: !344)
!352 = !DILocation(line: 478, column: 33, scope: !344)
!353 = !DILocation(line: 478, column: 7, scope: !261)
!354 = !DILocation(line: 479, column: 4, scope: !344)
!355 = !DILocation(line: 480, column: 2, scope: !261)
!356 = !DILocation(line: 490, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !194, file: !3, line: 490, column: 6)
!358 = !DILocation(line: 490, column: 9, scope: !357)
!359 = !DILocation(line: 490, column: 19, scope: !357)
!360 = !DILocation(line: 490, column: 22, scope: !357)
!361 = !DILocation(line: 490, column: 17, scope: !357)
!362 = !DILocation(line: 490, column: 6, scope: !194)
!363 = !DILocation(line: 492, column: 12, scope: !364)
!364 = distinct !DILexicalBlock(scope: !357, file: !3, line: 490, column: 32)
!365 = !DILocation(line: 492, column: 15, scope: !364)
!366 = !DILocation(line: 492, column: 3, scope: !364)
!367 = !DILocation(line: 492, column: 6, scope: !364)
!368 = !DILocation(line: 492, column: 10, scope: !364)
!369 = !DILocation(line: 493, column: 16, scope: !364)
!370 = !DILocation(line: 493, column: 19, scope: !364)
!371 = !DILocation(line: 493, column: 3, scope: !364)
!372 = !DILocation(line: 493, column: 6, scope: !364)
!373 = !DILocation(line: 493, column: 14, scope: !364)
!374 = !DILocation(line: 494, column: 17, scope: !364)
!375 = !DILocation(line: 494, column: 20, scope: !364)
!376 = !DILocation(line: 494, column: 3, scope: !364)
!377 = !DILocation(line: 494, column: 6, scope: !364)
!378 = !DILocation(line: 494, column: 15, scope: !364)
!379 = !DILocation(line: 495, column: 12, scope: !364)
!380 = !DILocation(line: 495, column: 15, scope: !364)
!381 = !DILocation(line: 495, column: 20, scope: !364)
!382 = !DILocation(line: 495, column: 3, scope: !364)
!383 = !DILocation(line: 495, column: 6, scope: !364)
!384 = !DILocation(line: 495, column: 10, scope: !364)
!385 = !DILocation(line: 496, column: 16, scope: !364)
!386 = !DILocation(line: 496, column: 19, scope: !364)
!387 = !DILocation(line: 496, column: 24, scope: !364)
!388 = !DILocation(line: 496, column: 3, scope: !364)
!389 = !DILocation(line: 496, column: 6, scope: !364)
!390 = !DILocation(line: 496, column: 14, scope: !364)
!391 = !DILocation(line: 497, column: 3, scope: !364)
!392 = !DILocation(line: 497, column: 6, scope: !364)
!393 = !DILocation(line: 497, column: 15, scope: !364)
!394 = !DILocation(line: 499, column: 29, scope: !364)
!395 = !DILocation(line: 499, column: 36, scope: !364)
!396 = !DILocation(line: 499, column: 12, scope: !364)
!397 = !DILocation(line: 499, column: 3, scope: !364)
!398 = !DILocation(line: 499, column: 6, scope: !364)
!399 = !DILocation(line: 499, column: 10, scope: !364)
!400 = !DILocation(line: 501, column: 18, scope: !364)
!401 = !DILocation(line: 501, column: 21, scope: !364)
!402 = !DILocation(line: 501, column: 3, scope: !364)
!403 = !DILocation(line: 501, column: 6, scope: !364)
!404 = !DILocation(line: 501, column: 11, scope: !364)
!405 = !DILocation(line: 501, column: 16, scope: !364)
!406 = !DILocation(line: 502, column: 12, scope: !364)
!407 = !DILocation(line: 502, column: 15, scope: !364)
!408 = !DILocation(line: 502, column: 3, scope: !364)
!409 = !DILocation(line: 502, column: 6, scope: !364)
!410 = !DILocation(line: 502, column: 10, scope: !364)
!411 = !DILocation(line: 503, column: 16, scope: !364)
!412 = !DILocation(line: 503, column: 19, scope: !364)
!413 = !DILocation(line: 503, column: 3, scope: !364)
!414 = !DILocation(line: 503, column: 6, scope: !364)
!415 = !DILocation(line: 503, column: 14, scope: !364)
!416 = !DILocation(line: 504, column: 17, scope: !364)
!417 = !DILocation(line: 504, column: 20, scope: !364)
!418 = !DILocation(line: 504, column: 3, scope: !364)
!419 = !DILocation(line: 504, column: 6, scope: !364)
!420 = !DILocation(line: 504, column: 15, scope: !364)
!421 = !DILocation(line: 506, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !364, file: !3, line: 506, column: 7)
!423 = !DILocation(line: 506, column: 10, scope: !422)
!424 = !DILocation(line: 506, column: 14, scope: !422)
!425 = !DILocation(line: 506, column: 23, scope: !422)
!426 = !DILocation(line: 506, column: 26, scope: !422)
!427 = !DILocation(line: 506, column: 29, scope: !422)
!428 = !DILocation(line: 506, column: 33, scope: !422)
!429 = !DILocation(line: 506, column: 7, scope: !364)
!430 = !DILocation(line: 507, column: 11, scope: !422)
!431 = !DILocation(line: 507, column: 14, scope: !422)
!432 = !DILocation(line: 507, column: 4, scope: !422)
!433 = !DILocation(line: 509, column: 13, scope: !364)
!434 = !DILocation(line: 509, column: 16, scope: !364)
!435 = !DILocation(line: 509, column: 19, scope: !364)
!436 = !DILocation(line: 509, column: 24, scope: !364)
!437 = !DILocation(line: 509, column: 30, scope: !364)
!438 = !DILocation(line: 509, column: 33, scope: !364)
!439 = !DILocation(line: 509, column: 38, scope: !364)
!440 = !DILocation(line: 509, column: 48, scope: !364)
!441 = !DILocation(line: 509, column: 51, scope: !364)
!442 = !DILocation(line: 509, column: 56, scope: !364)
!443 = !DILocation(line: 509, column: 3, scope: !364)
!444 = !DILocation(line: 516, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !364, file: !3, line: 516, column: 7)
!446 = !DILocation(line: 516, column: 10, scope: !445)
!447 = !DILocation(line: 516, column: 14, scope: !445)
!448 = !DILocation(line: 516, column: 7, scope: !364)
!449 = !DILocation(line: 517, column: 23, scope: !445)
!450 = !DILocation(line: 517, column: 26, scope: !445)
!451 = !DILocation(line: 517, column: 31, scope: !445)
!452 = !DILocation(line: 517, column: 4, scope: !445)
!453 = !DILocation(line: 517, column: 7, scope: !445)
!454 = !DILocation(line: 517, column: 12, scope: !445)
!455 = !DILocation(line: 517, column: 21, scope: !445)
!456 = !DILocation(line: 519, column: 13, scope: !364)
!457 = !DILocation(line: 519, column: 16, scope: !364)
!458 = !DILocation(line: 519, column: 3, scope: !364)
!459 = !DILocation(line: 520, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !364, file: !3, line: 520, column: 7)
!461 = !DILocation(line: 520, column: 10, scope: !460)
!462 = !DILocation(line: 520, column: 15, scope: !460)
!463 = !DILocation(line: 520, column: 24, scope: !460)
!464 = !DILocation(line: 520, column: 7, scope: !364)
!465 = !DILocation(line: 521, column: 4, scope: !460)
!466 = !DILocation(line: 522, column: 2, scope: !364)
!467 = !DILocation(line: 524, column: 9, scope: !194)
!468 = !DILocation(line: 524, column: 12, scope: !194)
!469 = !DILocation(line: 524, column: 2, scope: !194)
!470 = !DILocation(line: 525, column: 1, scope: !194)
!471 = distinct !DISubprogram(name: "bcj_flush", scope: !3, file: !3, line: 399, type: !472, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !12, !200}
!474 = !{!475, !476, !477, !478, !480}
!475 = !DILocalVariable(name: "s", arg: 1, scope: !471, file: !3, line: 399, type: !12)
!476 = !DILocalVariable(name: "b", arg: 2, scope: !471, file: !3, line: 399, type: !200)
!477 = !DILocalVariable(name: "copy_size", scope: !471, file: !3, line: 401, type: !6)
!478 = !DILocalVariable(name: "__UNIQUE_ID___x118", scope: !479, file: !3, line: 403, type: !6)
!479 = distinct !DILexicalBlock(scope: !471, file: !3, line: 403, column: 14)
!480 = !DILocalVariable(name: "__UNIQUE_ID___y119", scope: !479, file: !3, line: 403, type: !6)
!481 = !DILocation(line: 399, column: 42, scope: !471)
!482 = !DILocation(line: 399, column: 60, scope: !471)
!483 = !DILocation(line: 401, column: 2, scope: !471)
!484 = !DILocation(line: 401, column: 9, scope: !471)
!485 = !DILocation(line: 403, column: 14, scope: !479)
!486 = !DILocation(line: 403, column: 14, scope: !471)
!487 = !DILocation(line: 403, column: 12, scope: !471)
!488 = !DILocation(line: 404, column: 9, scope: !471)
!489 = !DILocation(line: 404, column: 12, scope: !471)
!490 = !DILocation(line: 404, column: 18, scope: !471)
!491 = !DILocation(line: 404, column: 21, scope: !471)
!492 = !DILocation(line: 404, column: 16, scope: !471)
!493 = !DILocation(line: 404, column: 30, scope: !471)
!494 = !DILocation(line: 404, column: 33, scope: !471)
!495 = !DILocation(line: 404, column: 38, scope: !471)
!496 = !DILocation(line: 404, column: 2, scope: !471)
!497 = !DILocation(line: 404, column: 43, scope: !471)
!498 = !DILocation(line: 405, column: 16, scope: !471)
!499 = !DILocation(line: 405, column: 2, scope: !471)
!500 = !DILocation(line: 405, column: 5, scope: !471)
!501 = !DILocation(line: 405, column: 13, scope: !471)
!502 = !DILocation(line: 407, column: 22, scope: !471)
!503 = !DILocation(line: 407, column: 2, scope: !471)
!504 = !DILocation(line: 407, column: 5, scope: !471)
!505 = !DILocation(line: 407, column: 10, scope: !471)
!506 = !DILocation(line: 407, column: 19, scope: !471)
!507 = !DILocation(line: 408, column: 18, scope: !471)
!508 = !DILocation(line: 408, column: 2, scope: !471)
!509 = !DILocation(line: 408, column: 5, scope: !471)
!510 = !DILocation(line: 408, column: 10, scope: !471)
!511 = !DILocation(line: 408, column: 15, scope: !471)
!512 = !DILocation(line: 409, column: 10, scope: !471)
!513 = !DILocation(line: 409, column: 13, scope: !471)
!514 = !DILocation(line: 409, column: 18, scope: !471)
!515 = !DILocation(line: 409, column: 2, scope: !471)
!516 = !DILocation(line: 409, column: 23, scope: !471)
!517 = !DILocation(line: 409, column: 26, scope: !471)
!518 = !DILocation(line: 409, column: 31, scope: !471)
!519 = !DILocation(line: 409, column: 37, scope: !471)
!520 = !DILocation(line: 409, column: 35, scope: !471)
!521 = !DILocation(line: 409, column: 48, scope: !471)
!522 = !DILocation(line: 409, column: 51, scope: !471)
!523 = !DILocation(line: 409, column: 56, scope: !471)
!524 = !DILocation(line: 410, column: 1, scope: !471)
!525 = !DISubprogram(name: "xz_dec_lzma2_run", scope: !199, file: !199, line: 125, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!26, !197, !200}
!528 = distinct !DISubprogram(name: "bcj_apply", scope: !3, file: !3, line: 345, type: !529, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !532)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !12, !49, !531, !6}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!532 = !{!533, !534, !535, !536, !537}
!533 = !DILocalVariable(name: "s", arg: 1, scope: !528, file: !3, line: 345, type: !12)
!534 = !DILocalVariable(name: "buf", arg: 2, scope: !528, file: !3, line: 346, type: !49)
!535 = !DILocalVariable(name: "pos", arg: 3, scope: !528, file: !3, line: 346, type: !531)
!536 = !DILocalVariable(name: "size", arg: 4, scope: !528, file: !3, line: 346, type: !6)
!537 = !DILocalVariable(name: "filtered", scope: !528, file: !3, line: 348, type: !6)
!538 = !DILocation(line: 345, column: 42, scope: !528)
!539 = !DILocation(line: 346, column: 18, scope: !528)
!540 = !DILocation(line: 346, column: 31, scope: !528)
!541 = !DILocation(line: 346, column: 43, scope: !528)
!542 = !DILocation(line: 348, column: 2, scope: !528)
!543 = !DILocation(line: 348, column: 9, scope: !528)
!544 = !DILocation(line: 350, column: 10, scope: !528)
!545 = !DILocation(line: 350, column: 9, scope: !528)
!546 = !DILocation(line: 350, column: 6, scope: !528)
!547 = !DILocation(line: 351, column: 11, scope: !528)
!548 = !DILocation(line: 351, column: 10, scope: !528)
!549 = !DILocation(line: 351, column: 7, scope: !528)
!550 = !DILocation(line: 353, column: 10, scope: !528)
!551 = !DILocation(line: 353, column: 13, scope: !528)
!552 = !DILocation(line: 353, column: 2, scope: !528)
!553 = !DILocation(line: 356, column: 22, scope: !554)
!554 = distinct !DILexicalBlock(scope: !528, file: !3, line: 353, column: 19)
!555 = !DILocation(line: 356, column: 25, scope: !554)
!556 = !DILocation(line: 356, column: 30, scope: !554)
!557 = !DILocation(line: 356, column: 14, scope: !554)
!558 = !DILocation(line: 356, column: 12, scope: !554)
!559 = !DILocation(line: 357, column: 3, scope: !554)
!560 = !DILocation(line: 361, column: 26, scope: !554)
!561 = !DILocation(line: 361, column: 29, scope: !554)
!562 = !DILocation(line: 361, column: 34, scope: !554)
!563 = !DILocation(line: 361, column: 14, scope: !554)
!564 = !DILocation(line: 361, column: 12, scope: !554)
!565 = !DILocation(line: 362, column: 3, scope: !554)
!566 = !DILocation(line: 366, column: 23, scope: !554)
!567 = !DILocation(line: 366, column: 26, scope: !554)
!568 = !DILocation(line: 366, column: 31, scope: !554)
!569 = !DILocation(line: 366, column: 14, scope: !554)
!570 = !DILocation(line: 366, column: 12, scope: !554)
!571 = !DILocation(line: 367, column: 3, scope: !554)
!572 = !DILocation(line: 371, column: 22, scope: !554)
!573 = !DILocation(line: 371, column: 25, scope: !554)
!574 = !DILocation(line: 371, column: 30, scope: !554)
!575 = !DILocation(line: 371, column: 14, scope: !554)
!576 = !DILocation(line: 371, column: 12, scope: !554)
!577 = !DILocation(line: 372, column: 3, scope: !554)
!578 = !DILocation(line: 376, column: 27, scope: !554)
!579 = !DILocation(line: 376, column: 30, scope: !554)
!580 = !DILocation(line: 376, column: 35, scope: !554)
!581 = !DILocation(line: 376, column: 14, scope: !554)
!582 = !DILocation(line: 376, column: 12, scope: !554)
!583 = !DILocation(line: 377, column: 3, scope: !554)
!584 = !DILocation(line: 381, column: 24, scope: !554)
!585 = !DILocation(line: 381, column: 27, scope: !554)
!586 = !DILocation(line: 381, column: 32, scope: !554)
!587 = !DILocation(line: 381, column: 14, scope: !554)
!588 = !DILocation(line: 381, column: 12, scope: !554)
!589 = !DILocation(line: 382, column: 3, scope: !554)
!590 = !DILocation(line: 386, column: 12, scope: !554)
!591 = !DILocation(line: 387, column: 3, scope: !554)
!592 = !DILocation(line: 390, column: 10, scope: !528)
!593 = !DILocation(line: 390, column: 3, scope: !528)
!594 = !DILocation(line: 390, column: 7, scope: !528)
!595 = !DILocation(line: 391, column: 12, scope: !528)
!596 = !DILocation(line: 391, column: 2, scope: !528)
!597 = !DILocation(line: 391, column: 5, scope: !528)
!598 = !DILocation(line: 391, column: 9, scope: !528)
!599 = !DILocation(line: 392, column: 1, scope: !528)
!600 = distinct !DISubprogram(name: "xz_dec_bcj_create", scope: !3, file: !3, line: 527, type: !601, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!12, !39}
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "single_call", arg: 1, scope: !600, file: !3, line: 527, type: !39)
!605 = !DILocalVariable(name: "s", scope: !600, file: !3, line: 529, type: !12)
!606 = !DILocation(line: 527, column: 53, scope: !600)
!607 = !DILocation(line: 529, column: 2, scope: !600)
!608 = !DILocation(line: 529, column: 21, scope: !600)
!609 = !DILocation(line: 529, column: 25, scope: !600)
!610 = !DILocation(line: 530, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !600, file: !3, line: 530, column: 6)
!612 = !DILocation(line: 530, column: 8, scope: !611)
!613 = !DILocation(line: 530, column: 6, scope: !600)
!614 = !DILocation(line: 531, column: 20, scope: !611)
!615 = !DILocation(line: 531, column: 3, scope: !611)
!616 = !DILocation(line: 531, column: 6, scope: !611)
!617 = !DILocation(line: 531, column: 18, scope: !611)
!618 = !DILocation(line: 533, column: 9, scope: !600)
!619 = !DILocation(line: 534, column: 1, scope: !600)
!620 = !DILocation(line: 533, column: 2, scope: !600)
!621 = distinct !DISubprogram(name: "kmalloc", scope: !73, file: !73, line: 591, type: !622, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{!84, !6, !83}
!624 = !{!625, !626, !627}
!625 = !DILocalVariable(name: "size", arg: 1, scope: !621, file: !73, line: 591, type: !6)
!626 = !DILocalVariable(name: "flags", arg: 2, scope: !621, file: !73, line: 591, type: !83)
!627 = !DILocalVariable(name: "index", scope: !628, file: !73, line: 594, type: !17)
!628 = distinct !DILexicalBlock(scope: !629, file: !73, line: 593, column: 42)
!629 = distinct !DILexicalBlock(scope: !621, file: !73, line: 593, column: 6)
!630 = !DILocation(line: 591, column: 61, scope: !621)
!631 = !DILocation(line: 591, column: 73, scope: !621)
!632 = !DILocation(line: 593, column: 27, scope: !629)
!633 = !DILocation(line: 593, column: 6, scope: !629)
!634 = !DILocation(line: 593, column: 33, scope: !629)
!635 = !DILocation(line: 593, column: 36, scope: !629)
!636 = !DILocation(line: 593, column: 6, scope: !621)
!637 = !DILocation(line: 594, column: 3, scope: !628)
!638 = !DILocation(line: 594, column: 16, scope: !628)
!639 = !DILocation(line: 596, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !628, file: !73, line: 596, column: 7)
!641 = !DILocation(line: 596, column: 12, scope: !640)
!642 = !DILocation(line: 596, column: 7, scope: !628)
!643 = !DILocation(line: 597, column: 25, scope: !640)
!644 = !DILocation(line: 597, column: 31, scope: !640)
!645 = !DILocation(line: 597, column: 11, scope: !640)
!646 = !DILocation(line: 597, column: 4, scope: !640)
!647 = !DILocation(line: 599, column: 11, scope: !628)
!648 = !DILocation(line: 599, column: 9, scope: !628)
!649 = !DILocation(line: 601, column: 33, scope: !628)
!650 = !DILocation(line: 601, column: 40, scope: !628)
!651 = !DILocation(line: 601, column: 20, scope: !628)
!652 = !DILocation(line: 601, column: 5, scope: !628)
!653 = !DILocation(line: 601, column: 51, scope: !628)
!654 = !DILocation(line: 602, column: 5, scope: !628)
!655 = !DILocation(line: 602, column: 12, scope: !628)
!656 = !DILocation(line: 600, column: 10, scope: !628)
!657 = !DILocation(line: 600, column: 3, scope: !628)
!658 = !DILocation(line: 603, column: 2, scope: !629)
!659 = !DILocation(line: 604, column: 19, scope: !621)
!660 = !DILocation(line: 604, column: 25, scope: !621)
!661 = !DILocation(line: 604, column: 9, scope: !621)
!662 = !DILocation(line: 604, column: 2, scope: !621)
!663 = !DILocation(line: 605, column: 1, scope: !621)
!664 = distinct !DISubprogram(name: "xz_dec_bcj_reset", scope: !3, file: !3, line: 536, type: !665, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!26, !12, !50}
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "s", arg: 1, scope: !664, file: !3, line: 536, type: !12)
!669 = !DILocalVariable(name: "id", arg: 2, scope: !664, file: !3, line: 536, type: !50)
!670 = !DILocation(line: 536, column: 59, scope: !664)
!671 = !DILocation(line: 536, column: 70, scope: !664)
!672 = !DILocation(line: 538, column: 10, scope: !664)
!673 = !DILocation(line: 538, column: 2, scope: !664)
!674 = !DILocation(line: 557, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !664, file: !3, line: 538, column: 14)
!676 = !DILocation(line: 561, column: 3, scope: !675)
!677 = !DILocation(line: 564, column: 12, scope: !664)
!678 = !DILocation(line: 564, column: 2, scope: !664)
!679 = !DILocation(line: 564, column: 5, scope: !664)
!680 = !DILocation(line: 564, column: 10, scope: !664)
!681 = !DILocation(line: 565, column: 2, scope: !664)
!682 = !DILocation(line: 565, column: 5, scope: !664)
!683 = !DILocation(line: 565, column: 9, scope: !664)
!684 = !DILocation(line: 566, column: 2, scope: !664)
!685 = !DILocation(line: 566, column: 5, scope: !664)
!686 = !DILocation(line: 566, column: 9, scope: !664)
!687 = !DILocation(line: 567, column: 2, scope: !664)
!688 = !DILocation(line: 567, column: 5, scope: !664)
!689 = !DILocation(line: 567, column: 19, scope: !664)
!690 = !DILocation(line: 568, column: 2, scope: !664)
!691 = !DILocation(line: 568, column: 5, scope: !664)
!692 = !DILocation(line: 568, column: 10, scope: !664)
!693 = !DILocation(line: 568, column: 19, scope: !664)
!694 = !DILocation(line: 569, column: 2, scope: !664)
!695 = !DILocation(line: 569, column: 5, scope: !664)
!696 = !DILocation(line: 569, column: 10, scope: !664)
!697 = !DILocation(line: 569, column: 15, scope: !664)
!698 = !DILocation(line: 571, column: 2, scope: !664)
!699 = !DILocation(line: 572, column: 1, scope: !664)
!700 = !DILocation(line: 88, column: 42, scope: !2)
!701 = !DILocation(line: 88, column: 54, scope: !2)
!702 = !DILocation(line: 88, column: 66, scope: !2)
!703 = !DILocation(line: 95, column: 2, scope: !2)
!704 = !DILocation(line: 95, column: 9, scope: !2)
!705 = !DILocation(line: 96, column: 2, scope: !2)
!706 = !DILocation(line: 96, column: 9, scope: !2)
!707 = !DILocation(line: 97, column: 2, scope: !2)
!708 = !DILocation(line: 97, column: 11, scope: !2)
!709 = !DILocation(line: 97, column: 23, scope: !2)
!710 = !DILocation(line: 97, column: 26, scope: !2)
!711 = !DILocation(line: 98, column: 2, scope: !2)
!712 = !DILocation(line: 98, column: 11, scope: !2)
!713 = !DILocation(line: 99, column: 2, scope: !2)
!714 = !DILocation(line: 99, column: 11, scope: !2)
!715 = !DILocation(line: 100, column: 2, scope: !2)
!716 = !DILocation(line: 100, column: 11, scope: !2)
!717 = !DILocation(line: 101, column: 2, scope: !2)
!718 = !DILocation(line: 101, column: 10, scope: !2)
!719 = !DILocation(line: 103, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !2, file: !3, line: 103, column: 6)
!721 = !DILocation(line: 103, column: 11, scope: !720)
!722 = !DILocation(line: 103, column: 6, scope: !2)
!723 = !DILocation(line: 104, column: 3, scope: !720)
!724 = !DILocation(line: 106, column: 7, scope: !2)
!725 = !DILocation(line: 107, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !2, file: !3, line: 107, column: 2)
!727 = !DILocation(line: 107, column: 7, scope: !726)
!728 = !DILocation(line: 107, column: 14, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 107, column: 2)
!730 = !DILocation(line: 107, column: 18, scope: !729)
!731 = !DILocation(line: 107, column: 16, scope: !729)
!732 = !DILocation(line: 107, column: 2, scope: !726)
!733 = !DILocation(line: 108, column: 8, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 108, column: 7)
!735 = distinct !DILexicalBlock(scope: !729, file: !3, line: 107, column: 29)
!736 = !DILocation(line: 108, column: 12, scope: !734)
!737 = !DILocation(line: 108, column: 15, scope: !734)
!738 = !DILocation(line: 108, column: 23, scope: !734)
!739 = !DILocation(line: 108, column: 7, scope: !735)
!740 = !DILocation(line: 109, column: 4, scope: !734)
!741 = !DILocation(line: 111, column: 14, scope: !735)
!742 = !DILocation(line: 111, column: 18, scope: !735)
!743 = !DILocation(line: 111, column: 16, scope: !735)
!744 = !DILocation(line: 111, column: 12, scope: !735)
!745 = !DILocation(line: 112, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !735, file: !3, line: 112, column: 7)
!747 = !DILocation(line: 112, column: 16, scope: !746)
!748 = !DILocation(line: 112, column: 7, scope: !735)
!749 = !DILocation(line: 113, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !3, line: 112, column: 21)
!751 = !DILocation(line: 114, column: 3, scope: !750)
!752 = !DILocation(line: 115, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !746, file: !3, line: 114, column: 10)
!754 = !DILocation(line: 115, column: 31, scope: !753)
!755 = !DILocation(line: 115, column: 40, scope: !753)
!756 = !DILocation(line: 115, column: 27, scope: !753)
!757 = !DILocation(line: 115, column: 46, scope: !753)
!758 = !DILocation(line: 115, column: 14, scope: !753)
!759 = !DILocation(line: 116, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !753, file: !3, line: 116, column: 8)
!761 = !DILocation(line: 116, column: 18, scope: !760)
!762 = !DILocation(line: 116, column: 8, scope: !753)
!763 = !DILocation(line: 117, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !3, line: 116, column: 24)
!765 = !DILocation(line: 117, column: 13, scope: !764)
!766 = !DILocation(line: 117, column: 15, scope: !764)
!767 = !DILocation(line: 117, column: 37, scope: !764)
!768 = !DILocation(line: 117, column: 21, scope: !764)
!769 = !DILocation(line: 117, column: 19, scope: !764)
!770 = !DILocation(line: 117, column: 7, scope: !764)
!771 = !DILocation(line: 118, column: 33, scope: !772)
!772 = distinct !DILexicalBlock(scope: !764, file: !3, line: 118, column: 9)
!773 = !DILocation(line: 118, column: 10, scope: !772)
!774 = !DILocation(line: 119, column: 7, scope: !772)
!775 = !DILocation(line: 119, column: 30, scope: !772)
!776 = !DILocation(line: 119, column: 10, scope: !772)
!777 = !DILocation(line: 118, column: 9, scope: !764)
!778 = !DILocation(line: 120, column: 17, scope: !779)
!779 = distinct !DILexicalBlock(scope: !772, file: !3, line: 119, column: 34)
!780 = !DILocation(line: 120, column: 15, scope: !779)
!781 = !DILocation(line: 121, column: 19, scope: !779)
!782 = !DILocation(line: 121, column: 29, scope: !779)
!783 = !DILocation(line: 121, column: 35, scope: !779)
!784 = !DILocation(line: 121, column: 16, scope: !779)
!785 = !DILocation(line: 122, column: 6, scope: !779)
!786 = !DILocation(line: 124, column: 4, scope: !764)
!787 = !DILocation(line: 127, column: 14, scope: !735)
!788 = !DILocation(line: 127, column: 12, scope: !735)
!789 = !DILocation(line: 129, column: 27, scope: !790)
!790 = distinct !DILexicalBlock(scope: !735, file: !3, line: 129, column: 7)
!791 = !DILocation(line: 129, column: 31, scope: !790)
!792 = !DILocation(line: 129, column: 33, scope: !790)
!793 = !DILocation(line: 129, column: 7, scope: !790)
!794 = !DILocation(line: 129, column: 7, scope: !735)
!795 = !DILocation(line: 130, column: 29, scope: !796)
!796 = distinct !DILexicalBlock(scope: !790, file: !3, line: 129, column: 40)
!797 = !DILocation(line: 130, column: 35, scope: !796)
!798 = !DILocation(line: 130, column: 33, scope: !796)
!799 = !DILocation(line: 130, column: 37, scope: !796)
!800 = !DILocation(line: 130, column: 10, scope: !796)
!801 = !DILocation(line: 130, column: 8, scope: !796)
!802 = !DILocation(line: 131, column: 4, scope: !796)
!803 = !DILocation(line: 132, column: 12, scope: !804)
!804 = distinct !DILexicalBlock(scope: !796, file: !3, line: 131, column: 17)
!805 = !DILocation(line: 132, column: 19, scope: !804)
!806 = !DILocation(line: 132, column: 22, scope: !804)
!807 = !DILocation(line: 132, column: 38, scope: !804)
!808 = !DILocation(line: 132, column: 28, scope: !804)
!809 = !DILocation(line: 132, column: 26, scope: !804)
!810 = !DILocation(line: 132, column: 40, scope: !804)
!811 = !DILocation(line: 132, column: 16, scope: !804)
!812 = !DILocation(line: 132, column: 10, scope: !804)
!813 = !DILocation(line: 133, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !804, file: !3, line: 133, column: 9)
!815 = !DILocation(line: 133, column: 19, scope: !814)
!816 = !DILocation(line: 133, column: 9, scope: !804)
!817 = !DILocation(line: 134, column: 6, scope: !814)
!818 = !DILocation(line: 136, column: 25, scope: !804)
!819 = !DILocation(line: 136, column: 9, scope: !804)
!820 = !DILocation(line: 136, column: 36, scope: !804)
!821 = !DILocation(line: 136, column: 7, scope: !804)
!822 = !DILocation(line: 137, column: 19, scope: !804)
!823 = !DILocation(line: 137, column: 33, scope: !804)
!824 = !DILocation(line: 137, column: 31, scope: !804)
!825 = !DILocation(line: 137, column: 24, scope: !804)
!826 = !DILocation(line: 137, column: 9, scope: !804)
!827 = !DILocation(line: 137, column: 7, scope: !804)
!828 = !DILocation(line: 138, column: 30, scope: !829)
!829 = distinct !DILexicalBlock(scope: !804, file: !3, line: 138, column: 9)
!830 = !DILocation(line: 138, column: 10, scope: !829)
!831 = !DILocation(line: 138, column: 9, scope: !804)
!832 = !DILocation(line: 139, column: 6, scope: !829)
!833 = !DILocation(line: 141, column: 11, scope: !804)
!834 = !DILocation(line: 141, column: 41, scope: !804)
!835 = !DILocation(line: 141, column: 39, scope: !804)
!836 = !DILocation(line: 141, column: 32, scope: !804)
!837 = !DILocation(line: 141, column: 45, scope: !804)
!838 = !DILocation(line: 141, column: 16, scope: !804)
!839 = !DILocation(line: 141, column: 9, scope: !804)
!840 = distinct !{!840, !802, !841, !842}
!841 = !DILocation(line: 142, column: 4, scope: !796)
!842 = !{!"llvm.loop.unroll.disable"}
!843 = !DILocation(line: 144, column: 9, scope: !796)
!844 = !DILocation(line: 145, column: 27, scope: !796)
!845 = !DILocation(line: 145, column: 32, scope: !796)
!846 = !DILocation(line: 145, column: 24, scope: !796)
!847 = !DILocation(line: 145, column: 9, scope: !796)
!848 = !DILocation(line: 146, column: 23, scope: !796)
!849 = !DILocation(line: 146, column: 29, scope: !796)
!850 = !DILocation(line: 146, column: 35, scope: !796)
!851 = !DILocation(line: 146, column: 33, scope: !796)
!852 = !DILocation(line: 146, column: 37, scope: !796)
!853 = !DILocation(line: 146, column: 4, scope: !796)
!854 = !DILocation(line: 147, column: 6, scope: !796)
!855 = !DILocation(line: 148, column: 3, scope: !796)
!856 = !DILocation(line: 149, column: 17, scope: !857)
!857 = distinct !DILexicalBlock(scope: !790, file: !3, line: 148, column: 10)
!858 = !DILocation(line: 149, column: 27, scope: !857)
!859 = !DILocation(line: 149, column: 33, scope: !857)
!860 = !DILocation(line: 149, column: 14, scope: !857)
!861 = !DILocation(line: 151, column: 2, scope: !735)
!862 = !DILocation(line: 107, column: 24, scope: !729)
!863 = !DILocation(line: 107, column: 2, scope: !729)
!864 = distinct !{!864, !732, !865, !866, !842}
!865 = !DILocation(line: 151, column: 2, scope: !726)
!866 = !{!"llvm.loop.mustprogress"}
!867 = !DILocation(line: 153, column: 13, scope: !2)
!868 = !DILocation(line: 153, column: 17, scope: !2)
!869 = !DILocation(line: 153, column: 15, scope: !2)
!870 = !DILocation(line: 153, column: 11, scope: !2)
!871 = !DILocation(line: 154, column: 21, scope: !2)
!872 = !DILocation(line: 154, column: 30, scope: !2)
!873 = !DILocation(line: 154, column: 40, scope: !2)
!874 = !DILocation(line: 154, column: 54, scope: !2)
!875 = !DILocation(line: 154, column: 63, scope: !2)
!876 = !DILocation(line: 154, column: 50, scope: !2)
!877 = !DILocation(line: 154, column: 2, scope: !2)
!878 = !DILocation(line: 154, column: 5, scope: !2)
!879 = !DILocation(line: 154, column: 19, scope: !2)
!880 = !DILocation(line: 155, column: 9, scope: !2)
!881 = !DILocation(line: 155, column: 2, scope: !2)
!882 = !DILocation(line: 156, column: 1, scope: !2)
!883 = distinct !DISubprogram(name: "bcj_powerpc", scope: !3, file: !3, line: 160, type: !4, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !884)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DILocalVariable(name: "s", arg: 1, scope: !883, file: !3, line: 160, type: !12)
!886 = !DILocalVariable(name: "buf", arg: 2, scope: !883, file: !3, line: 160, type: !49)
!887 = !DILocalVariable(name: "size", arg: 3, scope: !883, file: !3, line: 160, type: !6)
!888 = !DILocalVariable(name: "i", scope: !883, file: !3, line: 162, type: !6)
!889 = !DILocalVariable(name: "instr", scope: !883, file: !3, line: 163, type: !42)
!890 = !DILocation(line: 160, column: 46, scope: !883)
!891 = !DILocation(line: 160, column: 58, scope: !883)
!892 = !DILocation(line: 160, column: 70, scope: !883)
!893 = !DILocation(line: 162, column: 2, scope: !883)
!894 = !DILocation(line: 162, column: 9, scope: !883)
!895 = !DILocation(line: 163, column: 2, scope: !883)
!896 = !DILocation(line: 163, column: 11, scope: !883)
!897 = !DILocation(line: 165, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !883, file: !3, line: 165, column: 2)
!899 = !DILocation(line: 165, column: 7, scope: !898)
!900 = !DILocation(line: 165, column: 14, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 165, column: 2)
!902 = !DILocation(line: 165, column: 16, scope: !901)
!903 = !DILocation(line: 165, column: 23, scope: !901)
!904 = !DILocation(line: 165, column: 20, scope: !901)
!905 = !DILocation(line: 165, column: 2, scope: !898)
!906 = !DILocation(line: 166, column: 30, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !3, line: 165, column: 37)
!908 = !DILocation(line: 166, column: 36, scope: !907)
!909 = !DILocation(line: 166, column: 34, scope: !907)
!910 = !DILocation(line: 166, column: 11, scope: !907)
!911 = !DILocation(line: 166, column: 9, scope: !907)
!912 = !DILocation(line: 167, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !907, file: !3, line: 167, column: 7)
!914 = !DILocation(line: 167, column: 14, scope: !913)
!915 = !DILocation(line: 167, column: 28, scope: !913)
!916 = !DILocation(line: 167, column: 7, scope: !907)
!917 = !DILocation(line: 168, column: 10, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 167, column: 43)
!919 = !DILocation(line: 169, column: 13, scope: !918)
!920 = !DILocation(line: 169, column: 16, scope: !918)
!921 = !DILocation(line: 169, column: 32, scope: !918)
!922 = !DILocation(line: 169, column: 22, scope: !918)
!923 = !DILocation(line: 169, column: 20, scope: !918)
!924 = !DILocation(line: 169, column: 10, scope: !918)
!925 = !DILocation(line: 170, column: 10, scope: !918)
!926 = !DILocation(line: 171, column: 10, scope: !918)
!927 = !DILocation(line: 172, column: 23, scope: !918)
!928 = !DILocation(line: 172, column: 30, scope: !918)
!929 = !DILocation(line: 172, column: 36, scope: !918)
!930 = !DILocation(line: 172, column: 34, scope: !918)
!931 = !DILocation(line: 172, column: 4, scope: !918)
!932 = !DILocation(line: 173, column: 3, scope: !918)
!933 = !DILocation(line: 174, column: 2, scope: !907)
!934 = !DILocation(line: 165, column: 31, scope: !901)
!935 = !DILocation(line: 165, column: 2, scope: !901)
!936 = distinct !{!936, !905, !937, !866, !842}
!937 = !DILocation(line: 174, column: 2, scope: !898)
!938 = !DILocation(line: 176, column: 9, scope: !883)
!939 = !DILocation(line: 177, column: 1, scope: !883)
!940 = !DILocation(line: 176, column: 2, scope: !883)
!941 = !DILocation(line: 181, column: 43, scope: !148)
!942 = !DILocation(line: 181, column: 55, scope: !148)
!943 = !DILocation(line: 181, column: 67, scope: !148)
!944 = !DILocation(line: 197, column: 2, scope: !148)
!945 = !DILocation(line: 197, column: 9, scope: !148)
!946 = !DILocation(line: 198, column: 2, scope: !148)
!947 = !DILocation(line: 198, column: 9, scope: !148)
!948 = !DILocation(line: 201, column: 2, scope: !148)
!949 = !DILocation(line: 201, column: 11, scope: !148)
!950 = !DILocation(line: 204, column: 2, scope: !148)
!951 = !DILocation(line: 204, column: 11, scope: !148)
!952 = !DILocation(line: 207, column: 2, scope: !148)
!953 = !DILocation(line: 207, column: 11, scope: !148)
!954 = !DILocation(line: 208, column: 2, scope: !148)
!955 = !DILocation(line: 208, column: 11, scope: !148)
!956 = !DILocation(line: 211, column: 2, scope: !148)
!957 = !DILocation(line: 211, column: 11, scope: !148)
!958 = !DILocation(line: 214, column: 2, scope: !148)
!959 = !DILocation(line: 214, column: 11, scope: !148)
!960 = !DILocation(line: 217, column: 2, scope: !148)
!961 = !DILocation(line: 217, column: 11, scope: !148)
!962 = !DILocation(line: 220, column: 2, scope: !148)
!963 = !DILocation(line: 220, column: 11, scope: !148)
!964 = !DILocation(line: 222, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !148, file: !3, line: 222, column: 2)
!966 = !DILocation(line: 222, column: 7, scope: !965)
!967 = !DILocation(line: 222, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 222, column: 2)
!969 = !DILocation(line: 222, column: 16, scope: !968)
!970 = !DILocation(line: 222, column: 24, scope: !968)
!971 = !DILocation(line: 222, column: 21, scope: !968)
!972 = !DILocation(line: 222, column: 2, scope: !965)
!973 = !DILocation(line: 223, column: 23, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !3, line: 222, column: 39)
!975 = !DILocation(line: 223, column: 27, scope: !974)
!976 = !DILocation(line: 223, column: 30, scope: !974)
!977 = !DILocation(line: 223, column: 10, scope: !974)
!978 = !DILocation(line: 223, column: 8, scope: !974)
!979 = !DILocation(line: 224, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !974, file: !3, line: 224, column: 3)
!981 = !DILocation(line: 224, column: 26, scope: !980)
!982 = !DILocation(line: 224, column: 8, scope: !980)
!983 = !DILocation(line: 224, column: 31, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 224, column: 3)
!985 = !DILocation(line: 224, column: 36, scope: !984)
!986 = !DILocation(line: 224, column: 3, scope: !980)
!987 = !DILocation(line: 225, column: 10, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 225, column: 8)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 224, column: 64)
!990 = !DILocation(line: 225, column: 18, scope: !988)
!991 = !DILocation(line: 225, column: 15, scope: !988)
!992 = !DILocation(line: 225, column: 24, scope: !988)
!993 = !DILocation(line: 225, column: 29, scope: !988)
!994 = !DILocation(line: 225, column: 8, scope: !989)
!995 = !DILocation(line: 226, column: 5, scope: !988)
!996 = !DILocation(line: 228, column: 15, scope: !989)
!997 = !DILocation(line: 228, column: 23, scope: !989)
!998 = !DILocation(line: 228, column: 13, scope: !989)
!999 = !DILocation(line: 229, column: 14, scope: !989)
!1000 = !DILocation(line: 229, column: 22, scope: !989)
!1001 = !DILocation(line: 229, column: 12, scope: !989)
!1002 = !DILocation(line: 230, column: 10, scope: !989)
!1003 = !DILocation(line: 231, column: 11, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !989, file: !3, line: 231, column: 4)
!1005 = !DILocation(line: 231, column: 9, scope: !1004)
!1006 = !DILocation(line: 231, column: 16, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 231, column: 4)
!1008 = !DILocation(line: 231, column: 18, scope: !1007)
!1009 = !DILocation(line: 231, column: 4, scope: !1004)
!1010 = !DILocation(line: 232, column: 25, scope: !1007)
!1011 = !DILocation(line: 232, column: 29, scope: !1007)
!1012 = !DILocation(line: 232, column: 33, scope: !1007)
!1013 = !DILocation(line: 232, column: 31, scope: !1007)
!1014 = !DILocation(line: 232, column: 37, scope: !1007)
!1015 = !DILocation(line: 232, column: 35, scope: !1007)
!1016 = !DILocation(line: 232, column: 14, scope: !1007)
!1017 = !DILocation(line: 233, column: 15, scope: !1007)
!1018 = !DILocation(line: 233, column: 13, scope: !1007)
!1019 = !DILocation(line: 233, column: 7, scope: !1007)
!1020 = !DILocation(line: 232, column: 11, scope: !1007)
!1021 = !DILocation(line: 232, column: 5, scope: !1007)
!1022 = !DILocation(line: 231, column: 23, scope: !1007)
!1023 = !DILocation(line: 231, column: 4, scope: !1007)
!1024 = distinct !{!1024, !1009, !1025, !866, !842}
!1025 = !DILocation(line: 233, column: 16, scope: !1004)
!1026 = !DILocation(line: 235, column: 11, scope: !989)
!1027 = !DILocation(line: 235, column: 20, scope: !989)
!1028 = !DILocation(line: 235, column: 17, scope: !989)
!1029 = !DILocation(line: 235, column: 9, scope: !989)
!1030 = !DILocation(line: 237, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !989, file: !3, line: 237, column: 8)
!1032 = !DILocation(line: 237, column: 15, scope: !1031)
!1033 = !DILocation(line: 237, column: 22, scope: !1031)
!1034 = !DILocation(line: 237, column: 30, scope: !1031)
!1035 = !DILocation(line: 238, column: 6, scope: !1031)
!1036 = !DILocation(line: 238, column: 11, scope: !1031)
!1037 = !DILocation(line: 238, column: 16, scope: !1031)
!1038 = !DILocation(line: 238, column: 22, scope: !1031)
!1039 = !DILocation(line: 238, column: 30, scope: !1031)
!1040 = !DILocation(line: 237, column: 8, scope: !989)
!1041 = !DILocation(line: 239, column: 13, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 238, column: 36)
!1043 = !DILocation(line: 239, column: 18, scope: !1042)
!1044 = !DILocation(line: 239, column: 25, scope: !1042)
!1045 = !DILocation(line: 239, column: 12, scope: !1042)
!1046 = !DILocation(line: 239, column: 10, scope: !1042)
!1047 = !DILocation(line: 240, column: 25, scope: !1042)
!1048 = !DILocation(line: 240, column: 30, scope: !1042)
!1049 = !DILocation(line: 240, column: 14, scope: !1042)
!1050 = !DILocation(line: 240, column: 37, scope: !1042)
!1051 = !DILocation(line: 240, column: 42, scope: !1042)
!1052 = !DILocation(line: 240, column: 10, scope: !1042)
!1053 = !DILocation(line: 241, column: 10, scope: !1042)
!1054 = !DILocation(line: 242, column: 13, scope: !1042)
!1055 = !DILocation(line: 242, column: 16, scope: !1042)
!1056 = !DILocation(line: 242, column: 32, scope: !1042)
!1057 = !DILocation(line: 242, column: 22, scope: !1042)
!1058 = !DILocation(line: 242, column: 20, scope: !1042)
!1059 = !DILocation(line: 242, column: 10, scope: !1042)
!1060 = !DILocation(line: 243, column: 10, scope: !1042)
!1061 = !DILocation(line: 245, column: 10, scope: !1042)
!1062 = !DILocation(line: 246, column: 24, scope: !1042)
!1063 = !DILocation(line: 246, column: 29, scope: !1042)
!1064 = !DILocation(line: 246, column: 13, scope: !1042)
!1065 = !DILocation(line: 246, column: 41, scope: !1042)
!1066 = !DILocation(line: 246, column: 10, scope: !1042)
!1067 = !DILocation(line: 247, column: 24, scope: !1042)
!1068 = !DILocation(line: 247, column: 29, scope: !1042)
!1069 = !DILocation(line: 247, column: 13, scope: !1042)
!1070 = !DILocation(line: 248, column: 7, scope: !1042)
!1071 = !DILocation(line: 247, column: 10, scope: !1042)
!1072 = !DILocation(line: 250, column: 20, scope: !1042)
!1073 = !DILocation(line: 250, column: 17, scope: !1042)
!1074 = !DILocation(line: 250, column: 29, scope: !1042)
!1075 = !DILocation(line: 250, column: 14, scope: !1042)
!1076 = !DILocation(line: 250, column: 11, scope: !1042)
!1077 = !DILocation(line: 251, column: 14, scope: !1042)
!1078 = !DILocation(line: 251, column: 22, scope: !1042)
!1079 = !DILocation(line: 251, column: 19, scope: !1042)
!1080 = !DILocation(line: 251, column: 11, scope: !1042)
!1081 = !DILocation(line: 253, column: 12, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 253, column: 5)
!1083 = !DILocation(line: 253, column: 10, scope: !1082)
!1084 = !DILocation(line: 253, column: 17, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 253, column: 5)
!1086 = !DILocation(line: 253, column: 19, scope: !1085)
!1087 = !DILocation(line: 253, column: 5, scope: !1082)
!1088 = !DILocation(line: 255, column: 19, scope: !1085)
!1089 = !DILocation(line: 255, column: 33, scope: !1085)
!1090 = !DILocation(line: 255, column: 31, scope: !1085)
!1091 = !DILocation(line: 255, column: 25, scope: !1085)
!1092 = !DILocation(line: 255, column: 9, scope: !1085)
!1093 = !DILocation(line: 254, column: 6, scope: !1085)
!1094 = !DILocation(line: 254, column: 10, scope: !1085)
!1095 = !DILocation(line: 254, column: 14, scope: !1085)
!1096 = !DILocation(line: 254, column: 12, scope: !1085)
!1097 = !DILocation(line: 254, column: 18, scope: !1085)
!1098 = !DILocation(line: 254, column: 16, scope: !1085)
!1099 = !DILocation(line: 255, column: 7, scope: !1085)
!1100 = !DILocation(line: 253, column: 25, scope: !1085)
!1101 = !DILocation(line: 253, column: 5, scope: !1085)
!1102 = distinct !{!1102, !1087, !1103, !866, !842}
!1103 = !DILocation(line: 255, column: 35, scope: !1082)
!1104 = !DILocation(line: 256, column: 4, scope: !1042)
!1105 = !DILocation(line: 257, column: 3, scope: !989)
!1106 = !DILocation(line: 224, column: 41, scope: !984)
!1107 = !DILocation(line: 224, column: 57, scope: !984)
!1108 = !DILocation(line: 224, column: 3, scope: !984)
!1109 = distinct !{!1109, !986, !1110, !866, !842}
!1110 = !DILocation(line: 257, column: 3, scope: !980)
!1111 = !DILocation(line: 258, column: 2, scope: !974)
!1112 = !DILocation(line: 222, column: 32, scope: !968)
!1113 = !DILocation(line: 222, column: 2, scope: !968)
!1114 = distinct !{!1114, !972, !1115, !866, !842}
!1115 = !DILocation(line: 258, column: 2, scope: !965)
!1116 = !DILocation(line: 260, column: 9, scope: !148)
!1117 = !DILocation(line: 261, column: 1, scope: !148)
!1118 = !DILocation(line: 260, column: 2, scope: !148)
!1119 = distinct !DISubprogram(name: "bcj_arm", scope: !3, file: !3, line: 265, type: !4, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125}
!1121 = !DILocalVariable(name: "s", arg: 1, scope: !1119, file: !3, line: 265, type: !12)
!1122 = !DILocalVariable(name: "buf", arg: 2, scope: !1119, file: !3, line: 265, type: !49)
!1123 = !DILocalVariable(name: "size", arg: 3, scope: !1119, file: !3, line: 265, type: !6)
!1124 = !DILocalVariable(name: "i", scope: !1119, file: !3, line: 267, type: !6)
!1125 = !DILocalVariable(name: "addr", scope: !1119, file: !3, line: 268, type: !42)
!1126 = !DILocation(line: 265, column: 42, scope: !1119)
!1127 = !DILocation(line: 265, column: 54, scope: !1119)
!1128 = !DILocation(line: 265, column: 66, scope: !1119)
!1129 = !DILocation(line: 267, column: 2, scope: !1119)
!1130 = !DILocation(line: 267, column: 9, scope: !1119)
!1131 = !DILocation(line: 268, column: 2, scope: !1119)
!1132 = !DILocation(line: 268, column: 11, scope: !1119)
!1133 = !DILocation(line: 270, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 270, column: 2)
!1135 = !DILocation(line: 270, column: 7, scope: !1134)
!1136 = !DILocation(line: 270, column: 14, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 270, column: 2)
!1138 = !DILocation(line: 270, column: 16, scope: !1137)
!1139 = !DILocation(line: 270, column: 23, scope: !1137)
!1140 = !DILocation(line: 270, column: 20, scope: !1137)
!1141 = !DILocation(line: 270, column: 2, scope: !1134)
!1142 = !DILocation(line: 271, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 271, column: 7)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 270, column: 37)
!1145 = !DILocation(line: 271, column: 11, scope: !1143)
!1146 = !DILocation(line: 271, column: 13, scope: !1143)
!1147 = !DILocation(line: 271, column: 18, scope: !1143)
!1148 = !DILocation(line: 271, column: 7, scope: !1144)
!1149 = !DILocation(line: 272, column: 21, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 271, column: 27)
!1151 = !DILocation(line: 272, column: 25, scope: !1150)
!1152 = !DILocation(line: 272, column: 11, scope: !1150)
!1153 = !DILocation(line: 272, column: 41, scope: !1150)
!1154 = !DILocation(line: 272, column: 45, scope: !1150)
!1155 = !DILocation(line: 272, column: 47, scope: !1150)
!1156 = !DILocation(line: 272, column: 31, scope: !1150)
!1157 = !DILocation(line: 272, column: 52, scope: !1150)
!1158 = !DILocation(line: 272, column: 28, scope: !1150)
!1159 = !DILocation(line: 273, column: 19, scope: !1150)
!1160 = !DILocation(line: 273, column: 23, scope: !1150)
!1161 = !DILocation(line: 273, column: 25, scope: !1150)
!1162 = !DILocation(line: 273, column: 9, scope: !1150)
!1163 = !DILocation(line: 273, column: 30, scope: !1150)
!1164 = !DILocation(line: 273, column: 6, scope: !1150)
!1165 = !DILocation(line: 272, column: 9, scope: !1150)
!1166 = !DILocation(line: 274, column: 9, scope: !1150)
!1167 = !DILocation(line: 275, column: 12, scope: !1150)
!1168 = !DILocation(line: 275, column: 15, scope: !1150)
!1169 = !DILocation(line: 275, column: 31, scope: !1150)
!1170 = !DILocation(line: 275, column: 21, scope: !1150)
!1171 = !DILocation(line: 275, column: 19, scope: !1150)
!1172 = !DILocation(line: 275, column: 33, scope: !1150)
!1173 = !DILocation(line: 275, column: 9, scope: !1150)
!1174 = !DILocation(line: 276, column: 9, scope: !1150)
!1175 = !DILocation(line: 277, column: 22, scope: !1150)
!1176 = !DILocation(line: 277, column: 13, scope: !1150)
!1177 = !DILocation(line: 277, column: 4, scope: !1150)
!1178 = !DILocation(line: 277, column: 8, scope: !1150)
!1179 = !DILocation(line: 277, column: 11, scope: !1150)
!1180 = !DILocation(line: 278, column: 27, scope: !1150)
!1181 = !DILocation(line: 278, column: 32, scope: !1150)
!1182 = !DILocation(line: 278, column: 17, scope: !1150)
!1183 = !DILocation(line: 278, column: 4, scope: !1150)
!1184 = !DILocation(line: 278, column: 8, scope: !1150)
!1185 = !DILocation(line: 278, column: 10, scope: !1150)
!1186 = !DILocation(line: 278, column: 15, scope: !1150)
!1187 = !DILocation(line: 279, column: 27, scope: !1150)
!1188 = !DILocation(line: 279, column: 32, scope: !1150)
!1189 = !DILocation(line: 279, column: 17, scope: !1150)
!1190 = !DILocation(line: 279, column: 4, scope: !1150)
!1191 = !DILocation(line: 279, column: 8, scope: !1150)
!1192 = !DILocation(line: 279, column: 10, scope: !1150)
!1193 = !DILocation(line: 279, column: 15, scope: !1150)
!1194 = !DILocation(line: 280, column: 3, scope: !1150)
!1195 = !DILocation(line: 281, column: 2, scope: !1144)
!1196 = !DILocation(line: 270, column: 31, scope: !1137)
!1197 = !DILocation(line: 270, column: 2, scope: !1137)
!1198 = distinct !{!1198, !1141, !1199, !866, !842}
!1199 = !DILocation(line: 281, column: 2, scope: !1134)
!1200 = !DILocation(line: 283, column: 9, scope: !1119)
!1201 = !DILocation(line: 284, column: 1, scope: !1119)
!1202 = !DILocation(line: 283, column: 2, scope: !1119)
!1203 = distinct !DISubprogram(name: "bcj_armthumb", scope: !3, file: !3, line: 288, type: !4, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1209}
!1205 = !DILocalVariable(name: "s", arg: 1, scope: !1203, file: !3, line: 288, type: !12)
!1206 = !DILocalVariable(name: "buf", arg: 2, scope: !1203, file: !3, line: 288, type: !49)
!1207 = !DILocalVariable(name: "size", arg: 3, scope: !1203, file: !3, line: 288, type: !6)
!1208 = !DILocalVariable(name: "i", scope: !1203, file: !3, line: 290, type: !6)
!1209 = !DILocalVariable(name: "addr", scope: !1203, file: !3, line: 291, type: !42)
!1210 = !DILocation(line: 288, column: 47, scope: !1203)
!1211 = !DILocation(line: 288, column: 59, scope: !1203)
!1212 = !DILocation(line: 288, column: 71, scope: !1203)
!1213 = !DILocation(line: 290, column: 2, scope: !1203)
!1214 = !DILocation(line: 290, column: 9, scope: !1203)
!1215 = !DILocation(line: 291, column: 2, scope: !1203)
!1216 = !DILocation(line: 291, column: 11, scope: !1203)
!1217 = !DILocation(line: 293, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 293, column: 2)
!1219 = !DILocation(line: 293, column: 7, scope: !1218)
!1220 = !DILocation(line: 293, column: 14, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 293, column: 2)
!1222 = !DILocation(line: 293, column: 16, scope: !1221)
!1223 = !DILocation(line: 293, column: 23, scope: !1221)
!1224 = !DILocation(line: 293, column: 20, scope: !1221)
!1225 = !DILocation(line: 293, column: 2, scope: !1218)
!1226 = !DILocation(line: 294, column: 8, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 294, column: 7)
!1228 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 293, column: 37)
!1229 = !DILocation(line: 294, column: 12, scope: !1227)
!1230 = !DILocation(line: 294, column: 14, scope: !1227)
!1231 = !DILocation(line: 294, column: 19, scope: !1227)
!1232 = !DILocation(line: 294, column: 27, scope: !1227)
!1233 = !DILocation(line: 295, column: 5, scope: !1227)
!1234 = !DILocation(line: 295, column: 9, scope: !1227)
!1235 = !DILocation(line: 295, column: 13, scope: !1227)
!1236 = !DILocation(line: 295, column: 15, scope: !1227)
!1237 = !DILocation(line: 295, column: 20, scope: !1227)
!1238 = !DILocation(line: 295, column: 28, scope: !1227)
!1239 = !DILocation(line: 294, column: 7, scope: !1228)
!1240 = !DILocation(line: 296, column: 23, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 295, column: 37)
!1242 = !DILocation(line: 296, column: 27, scope: !1241)
!1243 = !DILocation(line: 296, column: 29, scope: !1241)
!1244 = !DILocation(line: 296, column: 13, scope: !1241)
!1245 = !DILocation(line: 296, column: 34, scope: !1241)
!1246 = !DILocation(line: 296, column: 42, scope: !1241)
!1247 = !DILocation(line: 297, column: 19, scope: !1241)
!1248 = !DILocation(line: 297, column: 23, scope: !1241)
!1249 = !DILocation(line: 297, column: 9, scope: !1241)
!1250 = !DILocation(line: 297, column: 26, scope: !1241)
!1251 = !DILocation(line: 297, column: 6, scope: !1241)
!1252 = !DILocation(line: 298, column: 20, scope: !1241)
!1253 = !DILocation(line: 298, column: 24, scope: !1241)
!1254 = !DILocation(line: 298, column: 26, scope: !1241)
!1255 = !DILocation(line: 298, column: 10, scope: !1241)
!1256 = !DILocation(line: 298, column: 31, scope: !1241)
!1257 = !DILocation(line: 298, column: 39, scope: !1241)
!1258 = !DILocation(line: 298, column: 6, scope: !1241)
!1259 = !DILocation(line: 299, column: 18, scope: !1241)
!1260 = !DILocation(line: 299, column: 22, scope: !1241)
!1261 = !DILocation(line: 299, column: 24, scope: !1241)
!1262 = !DILocation(line: 299, column: 8, scope: !1241)
!1263 = !DILocation(line: 299, column: 6, scope: !1241)
!1264 = !DILocation(line: 296, column: 9, scope: !1241)
!1265 = !DILocation(line: 300, column: 9, scope: !1241)
!1266 = !DILocation(line: 301, column: 12, scope: !1241)
!1267 = !DILocation(line: 301, column: 15, scope: !1241)
!1268 = !DILocation(line: 301, column: 31, scope: !1241)
!1269 = !DILocation(line: 301, column: 21, scope: !1241)
!1270 = !DILocation(line: 301, column: 19, scope: !1241)
!1271 = !DILocation(line: 301, column: 33, scope: !1241)
!1272 = !DILocation(line: 301, column: 9, scope: !1241)
!1273 = !DILocation(line: 302, column: 9, scope: !1241)
!1274 = !DILocation(line: 303, column: 36, scope: !1241)
!1275 = !DILocation(line: 303, column: 41, scope: !1241)
!1276 = !DILocation(line: 303, column: 48, scope: !1241)
!1277 = !DILocation(line: 303, column: 32, scope: !1241)
!1278 = !DILocation(line: 303, column: 17, scope: !1241)
!1279 = !DILocation(line: 303, column: 4, scope: !1241)
!1280 = !DILocation(line: 303, column: 8, scope: !1241)
!1281 = !DILocation(line: 303, column: 10, scope: !1241)
!1282 = !DILocation(line: 303, column: 15, scope: !1241)
!1283 = !DILocation(line: 304, column: 23, scope: !1241)
!1284 = !DILocation(line: 304, column: 28, scope: !1241)
!1285 = !DILocation(line: 304, column: 13, scope: !1241)
!1286 = !DILocation(line: 304, column: 4, scope: !1241)
!1287 = !DILocation(line: 304, column: 8, scope: !1241)
!1288 = !DILocation(line: 304, column: 11, scope: !1241)
!1289 = !DILocation(line: 305, column: 36, scope: !1241)
!1290 = !DILocation(line: 305, column: 41, scope: !1241)
!1291 = !DILocation(line: 305, column: 47, scope: !1241)
!1292 = !DILocation(line: 305, column: 32, scope: !1241)
!1293 = !DILocation(line: 305, column: 17, scope: !1241)
!1294 = !DILocation(line: 305, column: 4, scope: !1241)
!1295 = !DILocation(line: 305, column: 8, scope: !1241)
!1296 = !DILocation(line: 305, column: 10, scope: !1241)
!1297 = !DILocation(line: 305, column: 15, scope: !1241)
!1298 = !DILocation(line: 306, column: 26, scope: !1241)
!1299 = !DILocation(line: 306, column: 17, scope: !1241)
!1300 = !DILocation(line: 306, column: 4, scope: !1241)
!1301 = !DILocation(line: 306, column: 8, scope: !1241)
!1302 = !DILocation(line: 306, column: 10, scope: !1241)
!1303 = !DILocation(line: 306, column: 15, scope: !1241)
!1304 = !DILocation(line: 307, column: 6, scope: !1241)
!1305 = !DILocation(line: 308, column: 3, scope: !1241)
!1306 = !DILocation(line: 309, column: 2, scope: !1228)
!1307 = !DILocation(line: 293, column: 31, scope: !1221)
!1308 = !DILocation(line: 293, column: 2, scope: !1221)
!1309 = distinct !{!1309, !1225, !1310, !866, !842}
!1310 = !DILocation(line: 309, column: 2, scope: !1218)
!1311 = !DILocation(line: 311, column: 9, scope: !1203)
!1312 = !DILocation(line: 312, column: 1, scope: !1203)
!1313 = !DILocation(line: 311, column: 2, scope: !1203)
!1314 = distinct !DISubprogram(name: "bcj_sparc", scope: !3, file: !3, line: 316, type: !4, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320}
!1316 = !DILocalVariable(name: "s", arg: 1, scope: !1314, file: !3, line: 316, type: !12)
!1317 = !DILocalVariable(name: "buf", arg: 2, scope: !1314, file: !3, line: 316, type: !49)
!1318 = !DILocalVariable(name: "size", arg: 3, scope: !1314, file: !3, line: 316, type: !6)
!1319 = !DILocalVariable(name: "i", scope: !1314, file: !3, line: 318, type: !6)
!1320 = !DILocalVariable(name: "instr", scope: !1314, file: !3, line: 319, type: !42)
!1321 = !DILocation(line: 316, column: 44, scope: !1314)
!1322 = !DILocation(line: 316, column: 56, scope: !1314)
!1323 = !DILocation(line: 316, column: 68, scope: !1314)
!1324 = !DILocation(line: 318, column: 2, scope: !1314)
!1325 = !DILocation(line: 318, column: 9, scope: !1314)
!1326 = !DILocation(line: 319, column: 2, scope: !1314)
!1327 = !DILocation(line: 319, column: 11, scope: !1314)
!1328 = !DILocation(line: 321, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 321, column: 2)
!1330 = !DILocation(line: 321, column: 7, scope: !1329)
!1331 = !DILocation(line: 321, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 321, column: 2)
!1333 = !DILocation(line: 321, column: 16, scope: !1332)
!1334 = !DILocation(line: 321, column: 23, scope: !1332)
!1335 = !DILocation(line: 321, column: 20, scope: !1332)
!1336 = !DILocation(line: 321, column: 2, scope: !1329)
!1337 = !DILocation(line: 322, column: 30, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 321, column: 37)
!1339 = !DILocation(line: 322, column: 36, scope: !1338)
!1340 = !DILocation(line: 322, column: 34, scope: !1338)
!1341 = !DILocation(line: 322, column: 11, scope: !1338)
!1342 = !DILocation(line: 322, column: 9, scope: !1338)
!1343 = !DILocation(line: 323, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 323, column: 7)
!1345 = !DILocation(line: 323, column: 14, scope: !1344)
!1346 = !DILocation(line: 323, column: 21, scope: !1344)
!1347 = !DILocation(line: 323, column: 30, scope: !1344)
!1348 = !DILocation(line: 323, column: 34, scope: !1344)
!1349 = !DILocation(line: 323, column: 40, scope: !1344)
!1350 = !DILocation(line: 323, column: 47, scope: !1344)
!1351 = !DILocation(line: 323, column: 7, scope: !1338)
!1352 = !DILocation(line: 324, column: 10, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 323, column: 57)
!1354 = !DILocation(line: 325, column: 13, scope: !1353)
!1355 = !DILocation(line: 325, column: 16, scope: !1353)
!1356 = !DILocation(line: 325, column: 32, scope: !1353)
!1357 = !DILocation(line: 325, column: 22, scope: !1353)
!1358 = !DILocation(line: 325, column: 20, scope: !1353)
!1359 = !DILocation(line: 325, column: 10, scope: !1353)
!1360 = !DILocation(line: 326, column: 10, scope: !1353)
!1361 = !DILocation(line: 327, column: 37, scope: !1353)
!1362 = !DILocation(line: 327, column: 43, scope: !1353)
!1363 = !DILocation(line: 327, column: 34, scope: !1353)
!1364 = !DILocation(line: 328, column: 6, scope: !1353)
!1365 = !DILocation(line: 328, column: 22, scope: !1353)
!1366 = !DILocation(line: 328, column: 28, scope: !1353)
!1367 = !DILocation(line: 328, column: 19, scope: !1353)
!1368 = !DILocation(line: 327, column: 10, scope: !1353)
!1369 = !DILocation(line: 329, column: 23, scope: !1353)
!1370 = !DILocation(line: 329, column: 30, scope: !1353)
!1371 = !DILocation(line: 329, column: 36, scope: !1353)
!1372 = !DILocation(line: 329, column: 34, scope: !1353)
!1373 = !DILocation(line: 329, column: 4, scope: !1353)
!1374 = !DILocation(line: 330, column: 3, scope: !1353)
!1375 = !DILocation(line: 331, column: 2, scope: !1338)
!1376 = !DILocation(line: 321, column: 31, scope: !1332)
!1377 = !DILocation(line: 321, column: 2, scope: !1332)
!1378 = distinct !{!1378, !1336, !1379, !866, !842}
!1379 = !DILocation(line: 331, column: 2, scope: !1329)
!1380 = !DILocation(line: 333, column: 9, scope: !1314)
!1381 = !DILocation(line: 334, column: 1, scope: !1314)
!1382 = !DILocation(line: 333, column: 2, scope: !1314)
!1383 = distinct !DISubprogram(name: "bcj_x86_test_msbyte", scope: !3, file: !3, line: 83, type: !1384, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1387)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !50}
!1386 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1387 = !{!1388}
!1388 = !DILocalVariable(name: "b", arg: 1, scope: !1383, file: !3, line: 83, type: !50)
!1389 = !DILocation(line: 83, column: 47, scope: !1383)
!1390 = !DILocation(line: 85, column: 9, scope: !1383)
!1391 = !DILocation(line: 85, column: 11, scope: !1383)
!1392 = !DILocation(line: 85, column: 19, scope: !1383)
!1393 = !DILocation(line: 85, column: 22, scope: !1383)
!1394 = !DILocation(line: 85, column: 24, scope: !1383)
!1395 = !DILocation(line: 85, column: 2, scope: !1383)
!1396 = !DILocation(line: 30, column: 50, scope: !91)
!1397 = !DILocation(line: 32, column: 9, scope: !99)
!1398 = !DILocation(line: 32, column: 9, scope: !91)
!1399 = !DILocation(line: 32, column: 2, scope: !91)
!1400 = !DILocation(line: 45, column: 43, scope: !104)
!1401 = !DILocation(line: 45, column: 54, scope: !104)
!1402 = !DILocation(line: 47, column: 2, scope: !104)
!1403 = !DILocation(line: 47, column: 2, scope: !111)
!1404 = !DILocation(line: 48, column: 1, scope: !104)
!1405 = !DILocation(line: 60, column: 50, scope: !118)
!1406 = !DILocation(line: 62, column: 9, scope: !122)
!1407 = !DILocation(line: 62, column: 9, scope: !118)
!1408 = !DILocation(line: 62, column: 2, scope: !118)
!1409 = !DILocation(line: 75, column: 43, scope: !127)
!1410 = !DILocation(line: 75, column: 54, scope: !127)
!1411 = !DILocation(line: 77, column: 2, scope: !127)
!1412 = !DILocation(line: 77, column: 2, scope: !132)
!1413 = !DILocation(line: 78, column: 1, scope: !127)
!1414 = !DISubprogram(name: "kmalloc_large", scope: !73, file: !73, line: 531, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1415 = distinct !DISubprogram(name: "__kmalloc_index", scope: !73, file: !73, line: 444, type: !1416, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!17, !6, !39}
!1418 = !{!1419, !1420}
!1419 = !DILocalVariable(name: "size", arg: 1, scope: !1415, file: !73, line: 444, type: !6)
!1420 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1415, file: !73, line: 445, type: !39)
!1421 = !DILocation(line: 444, column: 60, scope: !1415)
!1422 = !DILocation(line: 445, column: 16, scope: !1415)
!1423 = !DILocation(line: 447, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 447, column: 6)
!1425 = !DILocation(line: 447, column: 6, scope: !1415)
!1426 = !DILocation(line: 448, column: 3, scope: !1424)
!1427 = !DILocation(line: 450, column: 6, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 450, column: 6)
!1429 = !DILocation(line: 450, column: 11, scope: !1428)
!1430 = !DILocation(line: 450, column: 6, scope: !1415)
!1431 = !DILocation(line: 451, column: 3, scope: !1428)
!1432 = !DILocation(line: 453, column: 32, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 453, column: 6)
!1434 = !DILocation(line: 453, column: 37, scope: !1433)
!1435 = !DILocation(line: 453, column: 42, scope: !1433)
!1436 = !DILocation(line: 453, column: 45, scope: !1433)
!1437 = !DILocation(line: 453, column: 50, scope: !1433)
!1438 = !DILocation(line: 453, column: 6, scope: !1415)
!1439 = !DILocation(line: 454, column: 3, scope: !1433)
!1440 = !DILocation(line: 455, column: 32, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 455, column: 6)
!1442 = !DILocation(line: 455, column: 37, scope: !1441)
!1443 = !DILocation(line: 455, column: 43, scope: !1441)
!1444 = !DILocation(line: 455, column: 46, scope: !1441)
!1445 = !DILocation(line: 455, column: 51, scope: !1441)
!1446 = !DILocation(line: 455, column: 6, scope: !1415)
!1447 = !DILocation(line: 456, column: 3, scope: !1441)
!1448 = !DILocation(line: 457, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 457, column: 6)
!1450 = !DILocation(line: 457, column: 11, scope: !1449)
!1451 = !DILocation(line: 457, column: 6, scope: !1415)
!1452 = !DILocation(line: 457, column: 26, scope: !1449)
!1453 = !DILocation(line: 458, column: 6, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 458, column: 6)
!1455 = !DILocation(line: 458, column: 11, scope: !1454)
!1456 = !DILocation(line: 458, column: 6, scope: !1415)
!1457 = !DILocation(line: 458, column: 26, scope: !1454)
!1458 = !DILocation(line: 459, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 459, column: 6)
!1460 = !DILocation(line: 459, column: 11, scope: !1459)
!1461 = !DILocation(line: 459, column: 6, scope: !1415)
!1462 = !DILocation(line: 459, column: 26, scope: !1459)
!1463 = !DILocation(line: 460, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 460, column: 6)
!1465 = !DILocation(line: 460, column: 11, scope: !1464)
!1466 = !DILocation(line: 460, column: 6, scope: !1415)
!1467 = !DILocation(line: 460, column: 26, scope: !1464)
!1468 = !DILocation(line: 461, column: 6, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 461, column: 6)
!1470 = !DILocation(line: 461, column: 11, scope: !1469)
!1471 = !DILocation(line: 461, column: 6, scope: !1415)
!1472 = !DILocation(line: 461, column: 26, scope: !1469)
!1473 = !DILocation(line: 462, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 462, column: 6)
!1475 = !DILocation(line: 462, column: 11, scope: !1474)
!1476 = !DILocation(line: 462, column: 6, scope: !1415)
!1477 = !DILocation(line: 462, column: 26, scope: !1474)
!1478 = !DILocation(line: 463, column: 6, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 463, column: 6)
!1480 = !DILocation(line: 463, column: 11, scope: !1479)
!1481 = !DILocation(line: 463, column: 6, scope: !1415)
!1482 = !DILocation(line: 463, column: 26, scope: !1479)
!1483 = !DILocation(line: 464, column: 6, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 464, column: 6)
!1485 = !DILocation(line: 464, column: 11, scope: !1484)
!1486 = !DILocation(line: 464, column: 6, scope: !1415)
!1487 = !DILocation(line: 464, column: 26, scope: !1484)
!1488 = !DILocation(line: 465, column: 6, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 465, column: 6)
!1490 = !DILocation(line: 465, column: 11, scope: !1489)
!1491 = !DILocation(line: 465, column: 6, scope: !1415)
!1492 = !DILocation(line: 465, column: 26, scope: !1489)
!1493 = !DILocation(line: 466, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 466, column: 6)
!1495 = !DILocation(line: 466, column: 11, scope: !1494)
!1496 = !DILocation(line: 466, column: 6, scope: !1415)
!1497 = !DILocation(line: 466, column: 26, scope: !1494)
!1498 = !DILocation(line: 467, column: 6, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 467, column: 6)
!1500 = !DILocation(line: 467, column: 11, scope: !1499)
!1501 = !DILocation(line: 467, column: 6, scope: !1415)
!1502 = !DILocation(line: 467, column: 26, scope: !1499)
!1503 = !DILocation(line: 468, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 468, column: 6)
!1505 = !DILocation(line: 468, column: 11, scope: !1504)
!1506 = !DILocation(line: 468, column: 6, scope: !1415)
!1507 = !DILocation(line: 468, column: 26, scope: !1504)
!1508 = !DILocation(line: 469, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 469, column: 6)
!1510 = !DILocation(line: 469, column: 11, scope: !1509)
!1511 = !DILocation(line: 469, column: 6, scope: !1415)
!1512 = !DILocation(line: 469, column: 26, scope: !1509)
!1513 = !DILocation(line: 470, column: 6, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 470, column: 6)
!1515 = !DILocation(line: 470, column: 11, scope: !1514)
!1516 = !DILocation(line: 470, column: 6, scope: !1415)
!1517 = !DILocation(line: 470, column: 26, scope: !1514)
!1518 = !DILocation(line: 471, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 471, column: 6)
!1520 = !DILocation(line: 471, column: 11, scope: !1519)
!1521 = !DILocation(line: 471, column: 6, scope: !1415)
!1522 = !DILocation(line: 471, column: 26, scope: !1519)
!1523 = !DILocation(line: 472, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 472, column: 6)
!1525 = !DILocation(line: 472, column: 11, scope: !1524)
!1526 = !DILocation(line: 472, column: 6, scope: !1415)
!1527 = !DILocation(line: 472, column: 26, scope: !1524)
!1528 = !DILocation(line: 473, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 473, column: 6)
!1530 = !DILocation(line: 473, column: 11, scope: !1529)
!1531 = !DILocation(line: 473, column: 6, scope: !1415)
!1532 = !DILocation(line: 473, column: 26, scope: !1529)
!1533 = !DILocation(line: 474, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 474, column: 6)
!1535 = !DILocation(line: 474, column: 11, scope: !1534)
!1536 = !DILocation(line: 474, column: 6, scope: !1415)
!1537 = !DILocation(line: 474, column: 27, scope: !1534)
!1538 = !DILocation(line: 475, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 475, column: 6)
!1540 = !DILocation(line: 475, column: 11, scope: !1539)
!1541 = !DILocation(line: 475, column: 6, scope: !1415)
!1542 = !DILocation(line: 475, column: 32, scope: !1539)
!1543 = !DILocation(line: 477, column: 50, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1415, file: !73, line: 477, column: 6)
!1545 = !DILocation(line: 477, column: 6, scope: !1415)
!1546 = !DILocation(line: 478, column: 3, scope: !1544)
!1547 = !DILocation(line: 478, column: 3, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !73, line: 478, column: 3)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !73, line: 478, column: 3)
!1550 = !{i32 -2143514438}
!1551 = !DILocation(line: 478, column: 3, scope: !1549)
!1552 = !DILocation(line: 480, column: 3, scope: !1544)
!1553 = !DILocation(line: 480, column: 3, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1544, file: !73, line: 480, column: 3)
!1555 = !DILocation(line: 480, column: 3, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1554, file: !73, line: 480, column: 3)
!1557 = !DILocation(line: 480, column: 3, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !73, line: 480, column: 3)
!1559 = !{i64 2151453061, i64 2151453090, i64 2151453136, i64 2151453194, i64 2151453248, i64 2151453302, i64 2151453357, i64 2151453388}
!1560 = !DILocation(line: 483, column: 2, scope: !1415)
!1561 = !DILocation(line: 484, column: 1, scope: !1415)
!1562 = !DISubprogram(name: "kmalloc_trace", scope: !73, file: !73, line: 525, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!84, !1565, !83, !6}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1567, line: 11, flags: DIFlagFwdDecl)
!1567 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1568 = distinct !DISubprogram(name: "kmalloc_type", scope: !73, file: !73, line: 401, type: !1569, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!72, !83, !11}
!1571 = !{!1572, !1573}
!1572 = !DILocalVariable(name: "flags", arg: 1, scope: !1568, file: !73, line: 401, type: !83)
!1573 = !DILocalVariable(name: "caller", arg: 2, scope: !1568, file: !73, line: 401, type: !11)
!1574 = !DILocation(line: 401, column: 67, scope: !1568)
!1575 = !DILocation(line: 401, column: 88, scope: !1568)
!1576 = !DILocation(line: 407, column: 6, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1568, file: !73, line: 407, column: 6)
!1578 = !DILocation(line: 407, column: 6, scope: !1568)
!1579 = !DILocation(line: 413, column: 3, scope: !1577)
!1580 = !DILocation(line: 423, column: 38, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1568, file: !73, line: 423, column: 6)
!1582 = !DILocation(line: 423, column: 44, scope: !1581)
!1583 = !DILocation(line: 423, column: 6, scope: !1568)
!1584 = !DILocation(line: 424, column: 3, scope: !1581)
!1585 = !DILocation(line: 426, column: 3, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1568, file: !73, line: 425, column: 6)
!1587 = !DILocation(line: 429, column: 1, scope: !1568)
!1588 = !DISubprogram(name: "__kmalloc", scope: !73, file: !73, line: 488, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DISubprogram(name: "__compiletime_assert_117", scope: !73, file: !73, line: 478, type: !1590, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null}
