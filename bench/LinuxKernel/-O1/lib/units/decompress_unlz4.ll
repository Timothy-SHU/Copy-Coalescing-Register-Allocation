; ModuleID = 'lib/decompress_unlz4.c'
source_filename = "lib/decompress_unlz4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"NULL output pointer and no flush function provided\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate output buffer\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [47 x i8] c"Both input pointer and fill function provided,\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [45 x i8] c"NULL input pointer and missing fill function\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [15 x i8] c"data corrupted\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [38 x i8] c"chunk length is longer than allocated\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [16 x i8] c"Decoding failed\00", align 1, !dbg !39

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @unlz4(ptr noundef %input, i64 noundef %in_len, ptr noundef %fill, ptr noundef %flush, ptr noundef %output, ptr noundef %posp, ptr noundef %error) #0 section ".init.text" align 16 !dbg !78 {
entry:
  %input.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %posp.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %chunksize = alloca i64, align 8
  %uncomp_chunksize = alloca i64, align 8
  %inp = alloca ptr, align 8
  %inp_start = alloca ptr, align 8
  %outp = alloca ptr, align 8
  %size = alloca i64, align 8
  %dest_len = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !98, metadata !DIExpression()), !dbg !122
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !99, metadata !DIExpression()), !dbg !123
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !100, metadata !DIExpression()), !dbg !124
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !101, metadata !DIExpression()), !dbg !125
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !102, metadata !DIExpression()), !dbg !126
  store ptr %posp, ptr %posp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %posp.addr, metadata !103, metadata !DIExpression()), !dbg !127
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !104, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !105, metadata !DIExpression()), !dbg !130
  store i32 -1, ptr %ret, align 4, !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunksize) #6, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %chunksize, metadata !106, metadata !DIExpression()), !dbg !132
  store i64 0, ptr %chunksize, align 8, !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %uncomp_chunksize) #6, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %uncomp_chunksize, metadata !112, metadata !DIExpression()), !dbg !134
  store i64 8388608, ptr %uncomp_chunksize, align 8, !dbg !134
  call void @llvm.lifetime.start.p0(i64 8, ptr %inp) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %inp, metadata !113, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %inp_start) #6, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %inp_start, metadata !114, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 8, ptr %outp) #6, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %outp, metadata !115, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %size, metadata !116, metadata !DIExpression()), !dbg !142
  %0 = load i64, ptr %in_len.addr, align 8, !dbg !143
  store i64 %0, ptr %size, align 8, !dbg !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_len) #6, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %dest_len, metadata !117, metadata !DIExpression()), !dbg !145
  %1 = load ptr, ptr %output.addr, align 8, !dbg !146
  %tobool = icmp ne ptr %1, null, !dbg !146
  br i1 %tobool, label %if.then, label %if.else, !dbg !148

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %output.addr, align 8, !dbg !149
  store ptr %2, ptr %outp, align 8, !dbg !151
  br label %if.end7, !dbg !152

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %flush.addr, align 8, !dbg !153
  %tobool1 = icmp ne ptr %3, null, !dbg !153
  br i1 %tobool1, label %if.else3, label %if.then2, !dbg !155

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %error.addr, align 8, !dbg !156
  call void %4(ptr noundef @.str) #7, !dbg !156
  br label %exit_0, !dbg !158

if.else3:                                         ; preds = %if.else
  %5 = load i64, ptr %uncomp_chunksize, align 8, !dbg !159
  %call = call noalias ptr @vmalloc(i64 noundef %5) #8, !dbg !159
  store ptr %call, ptr %outp, align 8, !dbg !161
  %6 = load ptr, ptr %outp, align 8, !dbg !162
  %tobool4 = icmp ne ptr %6, null, !dbg !162
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !164

if.then5:                                         ; preds = %if.else3
  %7 = load ptr, ptr %error.addr, align 8, !dbg !165
  call void %7(ptr noundef @.str.1) #7, !dbg !165
  br label %exit_0, !dbg !167

if.end:                                           ; preds = %if.else3
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  %8 = load ptr, ptr %input.addr, align 8, !dbg !168
  %tobool8 = icmp ne ptr %8, null, !dbg !168
  br i1 %tobool8, label %land.lhs.true, label %if.else11, !dbg !170

land.lhs.true:                                    ; preds = %if.end7
  %9 = load ptr, ptr %fill.addr, align 8, !dbg !171
  %tobool9 = icmp ne ptr %9, null, !dbg !171
  br i1 %tobool9, label %if.then10, label %if.else11, !dbg !172

if.then10:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr %error.addr, align 8, !dbg !173
  call void %10(ptr noundef @.str.2) #7, !dbg !173
  br label %exit_1, !dbg !175

if.else11:                                        ; preds = %land.lhs.true, %if.end7
  %11 = load ptr, ptr %input.addr, align 8, !dbg !176
  %tobool12 = icmp ne ptr %11, null, !dbg !176
  br i1 %tobool12, label %if.then13, label %if.else14, !dbg !178

if.then13:                                        ; preds = %if.else11
  %12 = load ptr, ptr %input.addr, align 8, !dbg !179
  store ptr %12, ptr %inp, align 8, !dbg !181
  br label %if.end24, !dbg !182

if.else14:                                        ; preds = %if.else11
  %13 = load ptr, ptr %fill.addr, align 8, !dbg !183
  %tobool15 = icmp ne ptr %13, null, !dbg !183
  br i1 %tobool15, label %if.else17, label %if.then16, !dbg !185

if.then16:                                        ; preds = %if.else14
  %14 = load ptr, ptr %error.addr, align 8, !dbg !186
  call void %14(ptr noundef @.str.3) #7, !dbg !186
  br label %exit_1, !dbg !188

if.else17:                                        ; preds = %if.else14
  %15 = load i64, ptr %uncomp_chunksize, align 8, !dbg !189
  %call18 = call i32 @LZ4_compressBound(i64 noundef %15) #7, !dbg !189
  %conv = sext i32 %call18 to i64, !dbg !189
  %call19 = call noalias ptr @vmalloc(i64 noundef %conv) #8, !dbg !189
  store ptr %call19, ptr %inp, align 8, !dbg !191
  %16 = load ptr, ptr %inp, align 8, !dbg !192
  %tobool20 = icmp ne ptr %16, null, !dbg !192
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !194

if.then21:                                        ; preds = %if.else17
  %17 = load ptr, ptr %error.addr, align 8, !dbg !195
  call void %17(ptr noundef @.str.4) #7, !dbg !195
  br label %exit_1, !dbg !197

if.end22:                                         ; preds = %if.else17
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then13
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %18 = load ptr, ptr %inp, align 8, !dbg !198
  store ptr %18, ptr %inp_start, align 8, !dbg !199
  %19 = load ptr, ptr %posp.addr, align 8, !dbg !200
  %tobool26 = icmp ne ptr %19, null, !dbg !200
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !202

if.then27:                                        ; preds = %if.end25
  %20 = load ptr, ptr %posp.addr, align 8, !dbg !203
  store i64 0, ptr %20, align 8, !dbg !204
  br label %if.end28, !dbg !205

if.end28:                                         ; preds = %if.then27, %if.end25
  %21 = load ptr, ptr %fill.addr, align 8, !dbg !206
  %tobool29 = icmp ne ptr %21, null, !dbg !206
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !208

if.then30:                                        ; preds = %if.end28
  %22 = load ptr, ptr %fill.addr, align 8, !dbg !209
  %23 = load ptr, ptr %inp, align 8, !dbg !211
  %call31 = call i64 %22(ptr noundef %23, i64 noundef 4) #7, !dbg !209
  store i64 %call31, ptr %size, align 8, !dbg !212
  %24 = load i64, ptr %size, align 8, !dbg !213
  %cmp = icmp slt i64 %24, 4, !dbg !215
  br i1 %cmp, label %if.then33, label %if.end34, !dbg !216

if.then33:                                        ; preds = %if.then30
  %25 = load ptr, ptr %error.addr, align 8, !dbg !217
  call void %25(ptr noundef @.str.5) #7, !dbg !217
  br label %exit_2, !dbg !219

if.end34:                                         ; preds = %if.then30
  br label %if.end35, !dbg !220

if.end35:                                         ; preds = %if.end34, %if.end28
  %26 = load ptr, ptr %inp, align 8, !dbg !221
  %call36 = call i32 @get_unaligned_le32(ptr noundef %26) #7, !dbg !222
  %conv37 = zext i32 %call36 to i64, !dbg !222
  store i64 %conv37, ptr %chunksize, align 8, !dbg !223
  %27 = load i64, ptr %chunksize, align 8, !dbg !224
  %cmp38 = icmp eq i64 %27, 407642370, !dbg !226
  br i1 %cmp38, label %if.then40, label %if.else44, !dbg !227

if.then40:                                        ; preds = %if.end35
  %28 = load ptr, ptr %fill.addr, align 8, !dbg !228
  %tobool41 = icmp ne ptr %28, null, !dbg !228
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !231

if.then42:                                        ; preds = %if.then40
  %29 = load ptr, ptr %inp, align 8, !dbg !232
  %add.ptr = getelementptr i8, ptr %29, i64 4, !dbg !232
  store ptr %add.ptr, ptr %inp, align 8, !dbg !232
  %30 = load i64, ptr %size, align 8, !dbg !234
  %sub = sub i64 %30, 4, !dbg !234
  store i64 %sub, ptr %size, align 8, !dbg !234
  br label %if.end43, !dbg !235

if.end43:                                         ; preds = %if.then42, %if.then40
  br label %if.end45, !dbg !236

if.else44:                                        ; preds = %if.end35
  %31 = load ptr, ptr %error.addr, align 8, !dbg !237
  call void %31(ptr noundef @.str.6) #7, !dbg !237
  br label %exit_2, !dbg !239

if.end45:                                         ; preds = %if.end43
  %32 = load ptr, ptr %posp.addr, align 8, !dbg !240
  %tobool46 = icmp ne ptr %32, null, !dbg !240
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !242

if.then47:                                        ; preds = %if.end45
  %33 = load ptr, ptr %posp.addr, align 8, !dbg !243
  %34 = load i64, ptr %33, align 8, !dbg !244
  %add = add i64 %34, 4, !dbg !244
  store i64 %add, ptr %33, align 8, !dbg !244
  br label %if.end48, !dbg !245

if.end48:                                         ; preds = %if.then47, %if.end45
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %if.end144, %if.end79, %if.end48
  %35 = load ptr, ptr %fill.addr, align 8, !dbg !247
  %tobool49 = icmp ne ptr %35, null, !dbg !247
  br i1 %tobool49, label %if.then50, label %if.else60, !dbg !252

if.then50:                                        ; preds = %for.cond
  %36 = load ptr, ptr %fill.addr, align 8, !dbg !253
  %37 = load ptr, ptr %inp, align 8, !dbg !255
  %call51 = call i64 %36(ptr noundef %37, i64 noundef 4) #7, !dbg !253
  store i64 %call51, ptr %size, align 8, !dbg !256
  %38 = load i64, ptr %size, align 8, !dbg !257
  %cmp52 = icmp eq i64 %38, 0, !dbg !259
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !260

if.then54:                                        ; preds = %if.then50
  br label %for.end, !dbg !261

if.end55:                                         ; preds = %if.then50
  %39 = load i64, ptr %size, align 8, !dbg !262
  %cmp56 = icmp slt i64 %39, 4, !dbg !264
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !265

if.then58:                                        ; preds = %if.end55
  %40 = load ptr, ptr %error.addr, align 8, !dbg !266
  call void %40(ptr noundef @.str.5) #7, !dbg !266
  br label %exit_2, !dbg !268

if.end59:                                         ; preds = %if.end55
  br label %if.end65, !dbg !269

if.else60:                                        ; preds = %for.cond
  %41 = load i64, ptr %size, align 8, !dbg !270
  %cmp61 = icmp slt i64 %41, 4, !dbg !272
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !273

if.then63:                                        ; preds = %if.else60
  br label %exit_3, !dbg !274

if.end64:                                         ; preds = %if.else60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end59
  %42 = load ptr, ptr %inp, align 8, !dbg !276
  %call66 = call i32 @get_unaligned_le32(ptr noundef %42) #7, !dbg !277
  %conv67 = zext i32 %call66 to i64, !dbg !277
  store i64 %conv67, ptr %chunksize, align 8, !dbg !278
  %43 = load i64, ptr %chunksize, align 8, !dbg !279
  %cmp68 = icmp eq i64 %43, 407642370, !dbg !281
  br i1 %cmp68, label %if.then70, label %if.end80, !dbg !282

if.then70:                                        ; preds = %if.end65
  %44 = load ptr, ptr %fill.addr, align 8, !dbg !283
  %tobool71 = icmp ne ptr %44, null, !dbg !283
  br i1 %tobool71, label %if.end75, label %if.then72, !dbg !286

if.then72:                                        ; preds = %if.then70
  %45 = load ptr, ptr %inp, align 8, !dbg !287
  %add.ptr73 = getelementptr i8, ptr %45, i64 4, !dbg !287
  store ptr %add.ptr73, ptr %inp, align 8, !dbg !287
  %46 = load i64, ptr %size, align 8, !dbg !289
  %sub74 = sub i64 %46, 4, !dbg !289
  store i64 %sub74, ptr %size, align 8, !dbg !289
  br label %if.end75, !dbg !290

if.end75:                                         ; preds = %if.then72, %if.then70
  %47 = load ptr, ptr %posp.addr, align 8, !dbg !291
  %tobool76 = icmp ne ptr %47, null, !dbg !291
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !293

if.then77:                                        ; preds = %if.end75
  %48 = load ptr, ptr %posp.addr, align 8, !dbg !294
  %49 = load i64, ptr %48, align 8, !dbg !295
  %add78 = add i64 %49, 4, !dbg !295
  store i64 %add78, ptr %48, align 8, !dbg !295
  br label %if.end79, !dbg !296

if.end79:                                         ; preds = %if.then77, %if.end75
  br label %for.cond, !dbg !297, !llvm.loop !298

if.end80:                                         ; preds = %if.end65
  %50 = load ptr, ptr %fill.addr, align 8, !dbg !302
  %tobool81 = icmp ne ptr %50, null, !dbg !302
  br i1 %tobool81, label %if.end86, label %land.lhs.true82, !dbg !304

land.lhs.true82:                                  ; preds = %if.end80
  %51 = load i64, ptr %chunksize, align 8, !dbg !305
  %cmp83 = icmp eq i64 %51, 0, !dbg !306
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !307

if.then85:                                        ; preds = %land.lhs.true82
  br label %exit_3, !dbg !308

if.end86:                                         ; preds = %land.lhs.true82, %if.end80
  %52 = load ptr, ptr %posp.addr, align 8, !dbg !310
  %tobool87 = icmp ne ptr %52, null, !dbg !310
  br i1 %tobool87, label %if.then88, label %if.end90, !dbg !312

if.then88:                                        ; preds = %if.end86
  %53 = load ptr, ptr %posp.addr, align 8, !dbg !313
  %54 = load i64, ptr %53, align 8, !dbg !314
  %add89 = add i64 %54, 4, !dbg !314
  store i64 %add89, ptr %53, align 8, !dbg !314
  br label %if.end90, !dbg !315

if.end90:                                         ; preds = %if.then88, %if.end86
  %55 = load ptr, ptr %fill.addr, align 8, !dbg !316
  %tobool91 = icmp ne ptr %55, null, !dbg !316
  br i1 %tobool91, label %if.else95, label %if.then92, !dbg !318

if.then92:                                        ; preds = %if.end90
  %56 = load ptr, ptr %inp, align 8, !dbg !319
  %add.ptr93 = getelementptr i8, ptr %56, i64 4, !dbg !319
  store ptr %add.ptr93, ptr %inp, align 8, !dbg !319
  %57 = load i64, ptr %size, align 8, !dbg !321
  %sub94 = sub i64 %57, 4, !dbg !321
  store i64 %sub94, ptr %size, align 8, !dbg !321
  br label %if.end107, !dbg !322

if.else95:                                        ; preds = %if.end90
  %58 = load i64, ptr %chunksize, align 8, !dbg !323
  %59 = load i64, ptr %uncomp_chunksize, align 8, !dbg !326
  %call96 = call i32 @LZ4_compressBound(i64 noundef %59) #7, !dbg !327
  %conv97 = sext i32 %call96 to i64, !dbg !327
  %cmp98 = icmp ugt i64 %58, %conv97, !dbg !328
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !329

if.then100:                                       ; preds = %if.else95
  %60 = load ptr, ptr %error.addr, align 8, !dbg !330
  call void %60(ptr noundef @.str.7) #7, !dbg !330
  br label %exit_2, !dbg !332

if.end101:                                        ; preds = %if.else95
  %61 = load ptr, ptr %fill.addr, align 8, !dbg !333
  %62 = load ptr, ptr %inp, align 8, !dbg !334
  %63 = load i64, ptr %chunksize, align 8, !dbg !335
  %call102 = call i64 %61(ptr noundef %62, i64 noundef %63) #7, !dbg !333
  store i64 %call102, ptr %size, align 8, !dbg !336
  %64 = load i64, ptr %size, align 8, !dbg !337
  %65 = load i64, ptr %chunksize, align 8, !dbg !339
  %cmp103 = icmp ult i64 %64, %65, !dbg !340
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !341

if.then105:                                       ; preds = %if.end101
  %66 = load ptr, ptr %error.addr, align 8, !dbg !342
  call void %66(ptr noundef @.str.5) #7, !dbg !342
  br label %exit_2, !dbg !344

if.end106:                                        ; preds = %if.end101
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then92
  %67 = load i64, ptr %uncomp_chunksize, align 8, !dbg !345
  store i64 %67, ptr %dest_len, align 8, !dbg !346
  %68 = load ptr, ptr %inp, align 8, !dbg !347
  %69 = load ptr, ptr %outp, align 8, !dbg !348
  %70 = load i64, ptr %chunksize, align 8, !dbg !349
  %conv108 = trunc i64 %70 to i32, !dbg !349
  %71 = load i64, ptr %dest_len, align 8, !dbg !350
  %conv109 = trunc i64 %71 to i32, !dbg !350
  %call110 = call i32 @LZ4_decompress_safe(ptr noundef %68, ptr noundef %69, i32 noundef %conv108, i32 noundef %conv109) #7, !dbg !351
  store i32 %call110, ptr %ret, align 4, !dbg !352
  %72 = load i32, ptr %ret, align 4, !dbg !353
  %conv111 = sext i32 %72 to i64, !dbg !353
  store i64 %conv111, ptr %dest_len, align 8, !dbg !354
  %73 = load i32, ptr %ret, align 4, !dbg !355
  %cmp112 = icmp slt i32 %73, 0, !dbg !357
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !358

if.then114:                                       ; preds = %if.end107
  %74 = load ptr, ptr %error.addr, align 8, !dbg !359
  call void %74(ptr noundef @.str.8) #7, !dbg !359
  br label %exit_2, !dbg !361

if.end115:                                        ; preds = %if.end107
  store i32 -1, ptr %ret, align 4, !dbg !362
  %75 = load ptr, ptr %flush.addr, align 8, !dbg !363
  %tobool116 = icmp ne ptr %75, null, !dbg !363
  br i1 %tobool116, label %land.lhs.true117, label %if.end122, !dbg !365

land.lhs.true117:                                 ; preds = %if.end115
  %76 = load ptr, ptr %flush.addr, align 8, !dbg !366
  %77 = load ptr, ptr %outp, align 8, !dbg !367
  %78 = load i64, ptr %dest_len, align 8, !dbg !368
  %call118 = call i64 %76(ptr noundef %77, i64 noundef %78) #7, !dbg !366
  %79 = load i64, ptr %dest_len, align 8, !dbg !369
  %cmp119 = icmp ne i64 %call118, %79, !dbg !370
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !371

if.then121:                                       ; preds = %land.lhs.true117
  br label %exit_2, !dbg !372

if.end122:                                        ; preds = %land.lhs.true117, %if.end115
  %80 = load ptr, ptr %output.addr, align 8, !dbg !373
  %tobool123 = icmp ne ptr %80, null, !dbg !373
  br i1 %tobool123, label %if.then124, label %if.end126, !dbg !375

if.then124:                                       ; preds = %if.end122
  %81 = load i64, ptr %dest_len, align 8, !dbg !376
  %82 = load ptr, ptr %outp, align 8, !dbg !377
  %add.ptr125 = getelementptr i8, ptr %82, i64 %81, !dbg !377
  store ptr %add.ptr125, ptr %outp, align 8, !dbg !377
  br label %if.end126, !dbg !378

if.end126:                                        ; preds = %if.then124, %if.end122
  %83 = load ptr, ptr %posp.addr, align 8, !dbg !379
  %tobool127 = icmp ne ptr %83, null, !dbg !379
  br i1 %tobool127, label %if.then128, label %if.end130, !dbg !381

if.then128:                                       ; preds = %if.end126
  %84 = load i64, ptr %chunksize, align 8, !dbg !382
  %85 = load ptr, ptr %posp.addr, align 8, !dbg !383
  %86 = load i64, ptr %85, align 8, !dbg !384
  %add129 = add i64 %86, %84, !dbg !384
  store i64 %add129, ptr %85, align 8, !dbg !384
  br label %if.end130, !dbg !385

if.end130:                                        ; preds = %if.then128, %if.end126
  %87 = load ptr, ptr %fill.addr, align 8, !dbg !386
  %tobool131 = icmp ne ptr %87, null, !dbg !386
  br i1 %tobool131, label %if.end144, label %if.then132, !dbg !388

if.then132:                                       ; preds = %if.end130
  %88 = load i64, ptr %chunksize, align 8, !dbg !389
  %89 = load i64, ptr %size, align 8, !dbg !391
  %sub133 = sub i64 %89, %88, !dbg !391
  store i64 %sub133, ptr %size, align 8, !dbg !391
  %90 = load i64, ptr %size, align 8, !dbg !392
  %cmp134 = icmp eq i64 %90, 0, !dbg !394
  br i1 %cmp134, label %if.then136, label %if.else137, !dbg !395

if.then136:                                       ; preds = %if.then132
  br label %for.end, !dbg !396

if.else137:                                       ; preds = %if.then132
  %91 = load i64, ptr %size, align 8, !dbg !397
  %cmp138 = icmp slt i64 %91, 0, !dbg !399
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !400

if.then140:                                       ; preds = %if.else137
  %92 = load ptr, ptr %error.addr, align 8, !dbg !401
  call void %92(ptr noundef @.str.5) #7, !dbg !401
  br label %exit_2, !dbg !403

if.end141:                                        ; preds = %if.else137
  br label %if.end142

if.end142:                                        ; preds = %if.end141
  %93 = load i64, ptr %chunksize, align 8, !dbg !404
  %94 = load ptr, ptr %inp, align 8, !dbg !405
  %add.ptr143 = getelementptr i8, ptr %94, i64 %93, !dbg !405
  store ptr %add.ptr143, ptr %inp, align 8, !dbg !405
  br label %if.end144, !dbg !406

if.end144:                                        ; preds = %if.end142, %if.end130
  br label %for.cond, !dbg !407, !llvm.loop !298

for.end:                                          ; preds = %if.then136, %if.then54
  br label %exit_3, !dbg !300

exit_3:                                           ; preds = %for.end, %if.then85, %if.then63
  call void @llvm.dbg.label(metadata !118), !dbg !408
  store i32 0, ptr %ret, align 4, !dbg !409
  br label %exit_2, !dbg !410

exit_2:                                           ; preds = %exit_3, %if.then140, %if.then121, %if.then114, %if.then105, %if.then100, %if.then58, %if.else44, %if.then33
  call void @llvm.dbg.label(metadata !119), !dbg !411
  %95 = load ptr, ptr %input.addr, align 8, !dbg !412
  %tobool145 = icmp ne ptr %95, null, !dbg !412
  br i1 %tobool145, label %if.end147, label %if.then146, !dbg !414

if.then146:                                       ; preds = %exit_2
  %96 = load ptr, ptr %inp_start, align 8, !dbg !415
  call void @vfree(ptr noundef %96) #7, !dbg !415
  br label %if.end147, !dbg !415

if.end147:                                        ; preds = %if.then146, %exit_2
  br label %exit_1, !dbg !412

exit_1:                                           ; preds = %if.end147, %if.then21, %if.then16, %if.then10
  call void @llvm.dbg.label(metadata !120), !dbg !416
  %97 = load ptr, ptr %output.addr, align 8, !dbg !417
  %tobool148 = icmp ne ptr %97, null, !dbg !417
  br i1 %tobool148, label %if.end150, label %if.then149, !dbg !419

if.then149:                                       ; preds = %exit_1
  %98 = load ptr, ptr %outp, align 8, !dbg !420
  call void @vfree(ptr noundef %98) #7, !dbg !420
  br label %if.end150, !dbg !420

if.end150:                                        ; preds = %if.then149, %exit_1
  br label %exit_0, !dbg !417

exit_0:                                           ; preds = %if.end150, %if.then5, %if.then2
  call void @llvm.dbg.label(metadata !121), !dbg !421
  %99 = load i32, ptr %ret, align 4, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_len) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %outp) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %inp_start) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %inp) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %uncomp_chunksize) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunksize) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !423
  ret i32 %99, !dbg !424
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !425 dso_local noalias ptr @vmalloc(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_compressBound(i64 noundef %isize) #4 align 16 !dbg !429 {
entry:
  %isize.addr = alloca i64, align 8
  store i64 %isize, ptr %isize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %isize.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i64, ptr %isize.addr, align 8, !dbg !436
  %conv = trunc i64 %0 to i32, !dbg !436
  %cmp = icmp ugt i32 %conv, 2113929216, !dbg !436
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !436

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !436

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr %isize.addr, align 8, !dbg !436
  %2 = load i64, ptr %isize.addr, align 8, !dbg !436
  %div = udiv i64 %2, 255, !dbg !436
  %add = add i64 %1, %div, !dbg !436
  %add2 = add i64 %add, 16, !dbg !436
  br label %cond.end, !dbg !436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add2, %cond.false ], !dbg !436
  %conv3 = trunc i64 %cond to i32, !dbg !436
  ret i32 %conv3, !dbg !437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #4 align 16 !dbg !55 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !63, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !64, metadata !DIExpression()), !dbg !439
  %0 = load ptr, ptr %p.addr, align 8, !dbg !439
  store ptr %0, ptr %__pptr, align 8, !dbg !439
  %1 = load ptr, ptr %__pptr, align 8, !dbg !439
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !439
  %2 = load i32, ptr %x, align 1, !dbg !439
  store i32 %2, ptr %tmp, align 4, !dbg !439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !440
  %3 = load i32, ptr %tmp, align 4, !dbg !439
  ret i32 %3, !dbg !441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !442 dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !447 dso_local void @vfree(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/decompress_unlz4.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9381866d1c93b5aa7270b7206b343e1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 51)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 47)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 45)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 32)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 15)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 38)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 16)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_unlz4.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_unlz4\22 -D KBUILD_BASENAME=\22decompress_unlz4\22 -D KBUILD_MODNAME=\22decompress_unlz4\22 -D __KBUILD_MODNAME=kmod_decompress_unlz4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_unlz4.ll lib/decompress_unlz4.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !45, globals: !68, splitDebugInlining: false, nameTableKind: None)
!45 = !{!46, !47, !49, !51}
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !48, line: 27, baseType: !46)
!48 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !50, line: 38, baseType: !47)
!50 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !54, line: 32, size: 32, elements: !66)
!54 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!55 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !54, file: !54, line: 30, type: !56, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !62)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !59, line: 21, baseType: !47)
!59 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!62 = !{!63, !64}
!63 = !DILocalVariable(name: "p", arg: 1, scope: !55, file: !54, line: 30, type: !60)
!64 = !DILocalVariable(name: "__pptr", scope: !65, file: !54, line: 32, type: !51)
!65 = distinct !DILexicalBlock(scope: !55, file: !54, line: 32, column: 9)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !53, file: !54, line: 32, baseType: !49, size: 32)
!68 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 8, !"cf-protection-branch", i32 1}
!73 = !{i32 4, !"function_return_thunk_extern", i32 1}
!74 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!75 = !{i32 1, !"Code Model", i32 2}
!76 = !{i32 1, !"override-stack-alignment", i32 8}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = distinct !DISubprogram(name: "unlz4", scope: !2, file: !2, line: 31, type: !79, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !97)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !82, !86, !87, !87, !82, !92, !93}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !59, line: 17, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !48, line: 21, baseType: !85)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!86, !90, !91}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!98 = !DILocalVariable(name: "input", arg: 1, scope: !78, file: !2, line: 31, type: !82)
!99 = !DILocalVariable(name: "in_len", arg: 2, scope: !78, file: !2, line: 31, type: !86)
!100 = !DILocalVariable(name: "fill", arg: 3, scope: !78, file: !2, line: 32, type: !87)
!101 = !DILocalVariable(name: "flush", arg: 4, scope: !78, file: !2, line: 33, type: !87)
!102 = !DILocalVariable(name: "output", arg: 5, scope: !78, file: !2, line: 34, type: !82)
!103 = !DILocalVariable(name: "posp", arg: 6, scope: !78, file: !2, line: 34, type: !92)
!104 = !DILocalVariable(name: "error", arg: 7, scope: !78, file: !2, line: 35, type: !93)
!105 = !DILocalVariable(name: "ret", scope: !78, file: !2, line: 37, type: !81)
!106 = !DILocalVariable(name: "chunksize", scope: !78, file: !2, line: 38, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 61, baseType: !109)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !110, line: 72, baseType: !111)
!110 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !110, line: 16, baseType: !91)
!112 = !DILocalVariable(name: "uncomp_chunksize", scope: !78, file: !2, line: 39, type: !107)
!113 = !DILocalVariable(name: "inp", scope: !78, file: !2, line: 40, type: !82)
!114 = !DILocalVariable(name: "inp_start", scope: !78, file: !2, line: 41, type: !82)
!115 = !DILocalVariable(name: "outp", scope: !78, file: !2, line: 42, type: !82)
!116 = !DILocalVariable(name: "size", scope: !78, file: !2, line: 43, type: !86)
!117 = !DILocalVariable(name: "dest_len", scope: !78, file: !2, line: 47, type: !107)
!118 = !DILabel(scope: !78, name: "exit_3", file: !2, line: 194)
!119 = !DILabel(scope: !78, name: "exit_2", file: !2, line: 196)
!120 = !DILabel(scope: !78, name: "exit_1", file: !2, line: 199)
!121 = !DILabel(scope: !78, name: "exit_0", file: !2, line: 202)
!122 = !DILocation(line: 31, column: 34, scope: !78)
!123 = !DILocation(line: 31, column: 46, scope: !78)
!124 = !DILocation(line: 32, column: 12, scope: !78)
!125 = !DILocation(line: 33, column: 12, scope: !78)
!126 = !DILocation(line: 34, column: 9, scope: !78)
!127 = !DILocation(line: 34, column: 23, scope: !78)
!128 = !DILocation(line: 35, column: 12, scope: !78)
!129 = !DILocation(line: 37, column: 2, scope: !78)
!130 = !DILocation(line: 37, column: 6, scope: !78)
!131 = !DILocation(line: 38, column: 2, scope: !78)
!132 = !DILocation(line: 38, column: 9, scope: !78)
!133 = !DILocation(line: 39, column: 2, scope: !78)
!134 = !DILocation(line: 39, column: 9, scope: !78)
!135 = !DILocation(line: 40, column: 2, scope: !78)
!136 = !DILocation(line: 40, column: 6, scope: !78)
!137 = !DILocation(line: 41, column: 2, scope: !78)
!138 = !DILocation(line: 41, column: 6, scope: !78)
!139 = !DILocation(line: 42, column: 2, scope: !78)
!140 = !DILocation(line: 42, column: 6, scope: !78)
!141 = !DILocation(line: 43, column: 2, scope: !78)
!142 = !DILocation(line: 43, column: 7, scope: !78)
!143 = !DILocation(line: 43, column: 14, scope: !78)
!144 = !DILocation(line: 47, column: 2, scope: !78)
!145 = !DILocation(line: 47, column: 9, scope: !78)
!146 = !DILocation(line: 50, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !78, file: !2, line: 50, column: 6)
!148 = !DILocation(line: 50, column: 6, scope: !78)
!149 = !DILocation(line: 51, column: 10, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !2, line: 50, column: 14)
!151 = !DILocation(line: 51, column: 8, scope: !150)
!152 = !DILocation(line: 52, column: 2, scope: !150)
!153 = !DILocation(line: 52, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !2, line: 52, column: 13)
!155 = !DILocation(line: 52, column: 13, scope: !147)
!156 = !DILocation(line: 53, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !2, line: 52, column: 21)
!158 = !DILocation(line: 54, column: 3, scope: !157)
!159 = !DILocation(line: 56, column: 10, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !2, line: 55, column: 9)
!161 = !DILocation(line: 56, column: 8, scope: !160)
!162 = !DILocation(line: 57, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !2, line: 57, column: 7)
!164 = !DILocation(line: 57, column: 7, scope: !160)
!165 = !DILocation(line: 58, column: 4, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 57, column: 14)
!167 = !DILocation(line: 59, column: 4, scope: !166)
!168 = !DILocation(line: 63, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !78, file: !2, line: 63, column: 6)
!170 = !DILocation(line: 63, column: 12, scope: !169)
!171 = !DILocation(line: 63, column: 15, scope: !169)
!172 = !DILocation(line: 63, column: 6, scope: !78)
!173 = !DILocation(line: 64, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !2, line: 63, column: 21)
!175 = !DILocation(line: 65, column: 3, scope: !174)
!176 = !DILocation(line: 66, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !169, file: !2, line: 66, column: 13)
!178 = !DILocation(line: 66, column: 13, scope: !169)
!179 = !DILocation(line: 67, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !2, line: 66, column: 20)
!181 = !DILocation(line: 67, column: 7, scope: !180)
!182 = !DILocation(line: 68, column: 2, scope: !180)
!183 = !DILocation(line: 68, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !2, line: 68, column: 13)
!185 = !DILocation(line: 68, column: 13, scope: !177)
!186 = !DILocation(line: 69, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !2, line: 68, column: 20)
!188 = !DILocation(line: 70, column: 3, scope: !187)
!189 = !DILocation(line: 72, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !2, line: 71, column: 9)
!191 = !DILocation(line: 72, column: 7, scope: !190)
!192 = !DILocation(line: 73, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !2, line: 73, column: 7)
!194 = !DILocation(line: 73, column: 7, scope: !190)
!195 = !DILocation(line: 74, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !2, line: 73, column: 13)
!197 = !DILocation(line: 75, column: 4, scope: !196)
!198 = !DILocation(line: 78, column: 14, scope: !78)
!199 = !DILocation(line: 78, column: 12, scope: !78)
!200 = !DILocation(line: 80, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !78, file: !2, line: 80, column: 6)
!202 = !DILocation(line: 80, column: 6, scope: !78)
!203 = !DILocation(line: 81, column: 4, scope: !201)
!204 = !DILocation(line: 81, column: 9, scope: !201)
!205 = !DILocation(line: 81, column: 3, scope: !201)
!206 = !DILocation(line: 83, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !78, file: !2, line: 83, column: 6)
!208 = !DILocation(line: 83, column: 6, scope: !78)
!209 = !DILocation(line: 84, column: 10, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !2, line: 83, column: 12)
!211 = !DILocation(line: 84, column: 15, scope: !210)
!212 = !DILocation(line: 84, column: 8, scope: !210)
!213 = !DILocation(line: 85, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !2, line: 85, column: 7)
!215 = !DILocation(line: 85, column: 12, scope: !214)
!216 = !DILocation(line: 85, column: 7, scope: !210)
!217 = !DILocation(line: 86, column: 4, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !2, line: 85, column: 17)
!219 = !DILocation(line: 87, column: 4, scope: !218)
!220 = !DILocation(line: 89, column: 2, scope: !210)
!221 = !DILocation(line: 91, column: 33, scope: !78)
!222 = !DILocation(line: 91, column: 14, scope: !78)
!223 = !DILocation(line: 91, column: 12, scope: !78)
!224 = !DILocation(line: 92, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !78, file: !2, line: 92, column: 6)
!226 = !DILocation(line: 92, column: 16, scope: !225)
!227 = !DILocation(line: 92, column: 6, scope: !78)
!228 = !DILocation(line: 93, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 93, column: 7)
!230 = distinct !DILexicalBlock(scope: !225, file: !2, line: 92, column: 40)
!231 = !DILocation(line: 93, column: 7, scope: !230)
!232 = !DILocation(line: 94, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 93, column: 14)
!234 = !DILocation(line: 95, column: 9, scope: !233)
!235 = !DILocation(line: 96, column: 3, scope: !233)
!236 = !DILocation(line: 97, column: 2, scope: !230)
!237 = !DILocation(line: 98, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !225, file: !2, line: 97, column: 9)
!239 = !DILocation(line: 99, column: 3, scope: !238)
!240 = !DILocation(line: 102, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !78, file: !2, line: 102, column: 6)
!242 = !DILocation(line: 102, column: 6, scope: !78)
!243 = !DILocation(line: 103, column: 4, scope: !241)
!244 = !DILocation(line: 103, column: 9, scope: !241)
!245 = !DILocation(line: 103, column: 3, scope: !241)
!246 = !DILocation(line: 105, column: 2, scope: !78)
!247 = !DILocation(line: 107, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 107, column: 7)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 105, column: 11)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 105, column: 2)
!251 = distinct !DILexicalBlock(scope: !78, file: !2, line: 105, column: 2)
!252 = !DILocation(line: 107, column: 7, scope: !249)
!253 = !DILocation(line: 108, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !2, line: 107, column: 13)
!255 = !DILocation(line: 108, column: 16, scope: !254)
!256 = !DILocation(line: 108, column: 9, scope: !254)
!257 = !DILocation(line: 109, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !2, line: 109, column: 8)
!259 = !DILocation(line: 109, column: 13, scope: !258)
!260 = !DILocation(line: 109, column: 8, scope: !254)
!261 = !DILocation(line: 110, column: 5, scope: !258)
!262 = !DILocation(line: 111, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !254, file: !2, line: 111, column: 8)
!264 = !DILocation(line: 111, column: 13, scope: !263)
!265 = !DILocation(line: 111, column: 8, scope: !254)
!266 = !DILocation(line: 112, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !2, line: 111, column: 18)
!268 = !DILocation(line: 113, column: 5, scope: !267)
!269 = !DILocation(line: 115, column: 3, scope: !254)
!270 = !DILocation(line: 115, column: 14, scope: !271)
!271 = distinct !DILexicalBlock(scope: !248, file: !2, line: 115, column: 14)
!272 = !DILocation(line: 115, column: 19, scope: !271)
!273 = !DILocation(line: 115, column: 14, scope: !248)
!274 = !DILocation(line: 117, column: 4, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !2, line: 115, column: 24)
!276 = !DILocation(line: 120, column: 34, scope: !249)
!277 = !DILocation(line: 120, column: 15, scope: !249)
!278 = !DILocation(line: 120, column: 13, scope: !249)
!279 = !DILocation(line: 121, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !249, file: !2, line: 121, column: 7)
!281 = !DILocation(line: 121, column: 17, scope: !280)
!282 = !DILocation(line: 121, column: 7, scope: !249)
!283 = !DILocation(line: 122, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 122, column: 8)
!285 = distinct !DILexicalBlock(scope: !280, file: !2, line: 121, column: 41)
!286 = !DILocation(line: 122, column: 8, scope: !285)
!287 = !DILocation(line: 123, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !2, line: 122, column: 15)
!289 = !DILocation(line: 124, column: 10, scope: !288)
!290 = !DILocation(line: 125, column: 4, scope: !288)
!291 = !DILocation(line: 126, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !2, line: 126, column: 8)
!293 = !DILocation(line: 126, column: 8, scope: !285)
!294 = !DILocation(line: 127, column: 6, scope: !292)
!295 = !DILocation(line: 127, column: 11, scope: !292)
!296 = !DILocation(line: 127, column: 5, scope: !292)
!297 = !DILocation(line: 128, column: 4, scope: !285)
!298 = distinct !{!298, !299, !300, !301}
!299 = !DILocation(line: 105, column: 2, scope: !251)
!300 = !DILocation(line: 192, column: 2, scope: !251)
!301 = !{!"llvm.loop.unroll.disable"}
!302 = !DILocation(line: 131, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !249, file: !2, line: 131, column: 7)
!304 = !DILocation(line: 131, column: 13, scope: !303)
!305 = !DILocation(line: 131, column: 16, scope: !303)
!306 = !DILocation(line: 131, column: 26, scope: !303)
!307 = !DILocation(line: 131, column: 7, scope: !249)
!308 = !DILocation(line: 133, column: 4, scope: !309)
!309 = distinct !DILexicalBlock(scope: !303, file: !2, line: 131, column: 32)
!310 = !DILocation(line: 136, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !249, file: !2, line: 136, column: 7)
!312 = !DILocation(line: 136, column: 7, scope: !249)
!313 = !DILocation(line: 137, column: 5, scope: !311)
!314 = !DILocation(line: 137, column: 10, scope: !311)
!315 = !DILocation(line: 137, column: 4, scope: !311)
!316 = !DILocation(line: 139, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !249, file: !2, line: 139, column: 7)
!318 = !DILocation(line: 139, column: 7, scope: !249)
!319 = !DILocation(line: 140, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 139, column: 14)
!321 = !DILocation(line: 141, column: 9, scope: !320)
!322 = !DILocation(line: 142, column: 3, scope: !320)
!323 = !DILocation(line: 143, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 143, column: 8)
!325 = distinct !DILexicalBlock(scope: !317, file: !2, line: 142, column: 10)
!326 = !DILocation(line: 143, column: 38, scope: !324)
!327 = !DILocation(line: 143, column: 20, scope: !324)
!328 = !DILocation(line: 143, column: 18, scope: !324)
!329 = !DILocation(line: 143, column: 8, scope: !325)
!330 = !DILocation(line: 144, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !2, line: 143, column: 57)
!332 = !DILocation(line: 145, column: 5, scope: !331)
!333 = !DILocation(line: 147, column: 11, scope: !325)
!334 = !DILocation(line: 147, column: 16, scope: !325)
!335 = !DILocation(line: 147, column: 21, scope: !325)
!336 = !DILocation(line: 147, column: 9, scope: !325)
!337 = !DILocation(line: 148, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !325, file: !2, line: 148, column: 8)
!339 = !DILocation(line: 148, column: 15, scope: !338)
!340 = !DILocation(line: 148, column: 13, scope: !338)
!341 = !DILocation(line: 148, column: 8, scope: !325)
!342 = !DILocation(line: 149, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !2, line: 148, column: 26)
!344 = !DILocation(line: 150, column: 5, scope: !343)
!345 = !DILocation(line: 163, column: 14, scope: !249)
!346 = !DILocation(line: 163, column: 12, scope: !249)
!347 = !DILocation(line: 165, column: 29, scope: !249)
!348 = !DILocation(line: 165, column: 34, scope: !249)
!349 = !DILocation(line: 165, column: 40, scope: !249)
!350 = !DILocation(line: 165, column: 51, scope: !249)
!351 = !DILocation(line: 165, column: 9, scope: !249)
!352 = !DILocation(line: 165, column: 7, scope: !249)
!353 = !DILocation(line: 166, column: 14, scope: !249)
!354 = !DILocation(line: 166, column: 12, scope: !249)
!355 = !DILocation(line: 168, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !249, file: !2, line: 168, column: 7)
!357 = !DILocation(line: 168, column: 11, scope: !356)
!358 = !DILocation(line: 168, column: 7, scope: !249)
!359 = !DILocation(line: 169, column: 4, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !2, line: 168, column: 16)
!361 = !DILocation(line: 170, column: 4, scope: !360)
!362 = !DILocation(line: 173, column: 7, scope: !249)
!363 = !DILocation(line: 174, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !249, file: !2, line: 174, column: 7)
!365 = !DILocation(line: 174, column: 13, scope: !364)
!366 = !DILocation(line: 174, column: 16, scope: !364)
!367 = !DILocation(line: 174, column: 22, scope: !364)
!368 = !DILocation(line: 174, column: 28, scope: !364)
!369 = !DILocation(line: 174, column: 41, scope: !364)
!370 = !DILocation(line: 174, column: 38, scope: !364)
!371 = !DILocation(line: 174, column: 7, scope: !249)
!372 = !DILocation(line: 175, column: 4, scope: !364)
!373 = !DILocation(line: 176, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !249, file: !2, line: 176, column: 7)
!375 = !DILocation(line: 176, column: 7, scope: !249)
!376 = !DILocation(line: 177, column: 12, scope: !374)
!377 = !DILocation(line: 177, column: 9, scope: !374)
!378 = !DILocation(line: 177, column: 4, scope: !374)
!379 = !DILocation(line: 178, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !249, file: !2, line: 178, column: 7)
!381 = !DILocation(line: 178, column: 7, scope: !249)
!382 = !DILocation(line: 179, column: 13, scope: !380)
!383 = !DILocation(line: 179, column: 5, scope: !380)
!384 = !DILocation(line: 179, column: 10, scope: !380)
!385 = !DILocation(line: 179, column: 4, scope: !380)
!386 = !DILocation(line: 181, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !249, file: !2, line: 181, column: 7)
!388 = !DILocation(line: 181, column: 7, scope: !249)
!389 = !DILocation(line: 182, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !2, line: 181, column: 14)
!391 = !DILocation(line: 182, column: 9, scope: !390)
!392 = !DILocation(line: 184, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !2, line: 184, column: 8)
!394 = !DILocation(line: 184, column: 13, scope: !393)
!395 = !DILocation(line: 184, column: 8, scope: !390)
!396 = !DILocation(line: 185, column: 5, scope: !393)
!397 = !DILocation(line: 186, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !2, line: 186, column: 13)
!399 = !DILocation(line: 186, column: 18, scope: !398)
!400 = !DILocation(line: 186, column: 13, scope: !393)
!401 = !DILocation(line: 187, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 186, column: 23)
!403 = !DILocation(line: 188, column: 5, scope: !402)
!404 = !DILocation(line: 190, column: 11, scope: !390)
!405 = !DILocation(line: 190, column: 8, scope: !390)
!406 = !DILocation(line: 191, column: 3, scope: !390)
!407 = !DILocation(line: 105, column: 2, scope: !250)
!408 = !DILocation(line: 194, column: 1, scope: !78)
!409 = !DILocation(line: 195, column: 6, scope: !78)
!410 = !DILocation(line: 195, column: 2, scope: !78)
!411 = !DILocation(line: 196, column: 1, scope: !78)
!412 = !DILocation(line: 197, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !78, file: !2, line: 197, column: 6)
!414 = !DILocation(line: 197, column: 6, scope: !78)
!415 = !DILocation(line: 198, column: 3, scope: !413)
!416 = !DILocation(line: 199, column: 1, scope: !78)
!417 = !DILocation(line: 200, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !78, file: !2, line: 200, column: 6)
!419 = !DILocation(line: 200, column: 6, scope: !78)
!420 = !DILocation(line: 201, column: 3, scope: !418)
!421 = !DILocation(line: 202, column: 1, scope: !78)
!422 = !DILocation(line: 203, column: 9, scope: !78)
!423 = !DILocation(line: 204, column: 1, scope: !78)
!424 = !DILocation(line: 203, column: 2, scope: !78)
!425 = !DISubprogram(name: "vmalloc", scope: !426, file: !426, line: 140, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!427 = !DISubroutineType(types: !428)
!428 = !{!90, !91}
!429 = distinct !DISubprogram(name: "LZ4_compressBound", scope: !430, file: !430, line: 170, type: !431, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !433)
!430 = !DIFile(filename: "./include/linux/lz4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4727ee46206dc24c82a9b9353acd506")
!431 = !DISubroutineType(types: !432)
!432 = !{!81, !107}
!433 = !{!434}
!434 = !DILocalVariable(name: "isize", arg: 1, scope: !429, file: !430, line: 170, type: !107)
!435 = !DILocation(line: 170, column: 44, scope: !429)
!436 = !DILocation(line: 172, column: 9, scope: !429)
!437 = !DILocation(line: 172, column: 2, scope: !429)
!438 = !DILocation(line: 30, column: 50, scope: !55)
!439 = !DILocation(line: 32, column: 9, scope: !65)
!440 = !DILocation(line: 32, column: 9, scope: !55)
!441 = !DILocation(line: 32, column: 2, scope: !55)
!442 = !DISubprogram(name: "LZ4_decompress_safe", scope: !430, file: !430, line: 292, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{!81, !445, !96, !81, !81}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!447 = !DISubprogram(name: "vfree", scope: !426, file: !426, line: 161, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !60}
