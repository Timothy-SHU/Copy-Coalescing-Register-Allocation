; ModuleID = 'lib/decompress_unlzo.c'
source_filename = "lib/decompress_unlzo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16 }
%struct.anon.0 = type { i32 }

@lzop_magic = internal constant [9 x i8] c"\89LZO\00\0D\0A\1A\0A", align 1, !dbg !0
@.str = private unnamed_addr constant [51 x i8] c"NULL output pointer and no flush function provided\00", align 1, !dbg !67
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate output buffer\00", align 1, !dbg !73
@.str.2 = private unnamed_addr constant [69 x i8] c"Both input pointer and fill function provided, don't know what to do\00", align 1, !dbg !78
@.str.3 = private unnamed_addr constant [45 x i8] c"NULL input pointer and missing fill function\00", align 1, !dbg !83
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1, !dbg !88
@.str.5 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1, !dbg !93
@.str.6 = private unnamed_addr constant [15 x i8] c"file corrupted\00", align 1, !dbg !98
@.str.7 = private unnamed_addr constant [32 x i8] c"dest len longer than block size\00", align 1, !dbg !100
@.str.8 = private unnamed_addr constant [26 x i8] c"Compressed data violation\00", align 1, !dbg !102
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !107

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @parse_header(ptr noundef %input, ptr noundef %skip, i64 noundef %in_len) #0 section ".init.text" align 16 !dbg !125 {
entry:
  %retval = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %skip.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %l = alloca i32, align 4
  %parse = alloca ptr, align 8
  %end = alloca ptr, align 8
  %version = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !131, metadata !DIExpression()), !dbg !139
  store ptr %skip, ptr %skip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skip.addr, metadata !132, metadata !DIExpression()), !dbg !140
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !133, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #14, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %l, metadata !134, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 8, ptr %parse) #14, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %parse, metadata !136, metadata !DIExpression()), !dbg !145
  %0 = load ptr, ptr %input.addr, align 8, !dbg !146
  store ptr %0, ptr %parse, align 8, !dbg !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #14, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %end, metadata !137, metadata !DIExpression()), !dbg !148
  %1 = load ptr, ptr %input.addr, align 8, !dbg !149
  %2 = load i64, ptr %in_len.addr, align 8, !dbg !150
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !151
  store ptr %add.ptr, ptr %end, align 8, !dbg !148
  call void @llvm.lifetime.start.p0(i64 2, ptr %version) #14, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %version, metadata !138, metadata !DIExpression()), !dbg !153
  %3 = load i64, ptr %in_len.addr, align 8, !dbg !154
  %cmp = icmp slt i64 %3, 33, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !158

if.end:                                           ; preds = %entry
  store i32 0, ptr %l, align 4, !dbg !159
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %l, align 4, !dbg !162
  %cmp1 = icmp slt i32 %4, 9, !dbg !164
  br i1 %cmp1, label %for.body, label %for.end, !dbg !165

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %parse, align 8, !dbg !166
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !166
  store ptr %incdec.ptr, ptr %parse, align 8, !dbg !166
  %6 = load i8, ptr %5, align 1, !dbg !169
  %conv = zext i8 %6 to i32, !dbg !169
  %7 = load i32, ptr %l, align 4, !dbg !170
  %idxprom = sext i32 %7 to i64, !dbg !171
  %arrayidx = getelementptr [9 x i8], ptr @lzop_magic, i64 0, i64 %idxprom, !dbg !171
  %8 = load i8, ptr %arrayidx, align 1, !dbg !171
  %conv2 = zext i8 %8 to i32, !dbg !171
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !172
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !173

if.then5:                                         ; preds = %for.body
  store i64 0, ptr %retval, align 8, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %if.end6
  %9 = load i32, ptr %l, align 4, !dbg !176
  %inc = add i32 %9, 1, !dbg !176
  store i32 %inc, ptr %l, align 4, !dbg !176
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %parse, align 8, !dbg !182
  %call = call zeroext i16 @get_unaligned_be16(ptr noundef %10) #15, !dbg !183
  store i16 %call, ptr %version, align 2, !dbg !184
  %11 = load ptr, ptr %parse, align 8, !dbg !185
  %add.ptr7 = getelementptr i8, ptr %11, i64 7, !dbg !185
  store ptr %add.ptr7, ptr %parse, align 8, !dbg !185
  %12 = load i16, ptr %version, align 2, !dbg !186
  %conv8 = zext i16 %12 to i32, !dbg !186
  %cmp9 = icmp sge i32 %conv8, 2368, !dbg !188
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !189

if.then11:                                        ; preds = %for.end
  %13 = load ptr, ptr %parse, align 8, !dbg !190
  %incdec.ptr12 = getelementptr i8, ptr %13, i32 1, !dbg !190
  store ptr %incdec.ptr12, ptr %parse, align 8, !dbg !190
  br label %if.end13, !dbg !191

if.end13:                                         ; preds = %if.then11, %for.end
  %14 = load ptr, ptr %parse, align 8, !dbg !192
  %call14 = call i32 @get_unaligned_be32(ptr noundef %14) #15, !dbg !194
  %conv15 = zext i32 %call14 to i64, !dbg !194
  %and = and i64 %conv15, 2048, !dbg !195
  %tobool = icmp ne i64 %and, 0, !dbg !195
  br i1 %tobool, label %if.then16, label %if.else, !dbg !196

if.then16:                                        ; preds = %if.end13
  %15 = load ptr, ptr %parse, align 8, !dbg !197
  %add.ptr17 = getelementptr i8, ptr %15, i64 8, !dbg !197
  store ptr %add.ptr17, ptr %parse, align 8, !dbg !197
  br label %if.end19, !dbg !198

if.else:                                          ; preds = %if.end13
  %16 = load ptr, ptr %parse, align 8, !dbg !199
  %add.ptr18 = getelementptr i8, ptr %16, i64 4, !dbg !199
  store ptr %add.ptr18, ptr %parse, align 8, !dbg !199
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %17 = load ptr, ptr %end, align 8, !dbg !200
  %18 = load ptr, ptr %parse, align 8, !dbg !202
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !203
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64, !dbg !203
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !203
  %cmp20 = icmp slt i64 %sub.ptr.sub, 13, !dbg !204
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !205

if.then22:                                        ; preds = %if.end19
  store i64 0, ptr %retval, align 8, !dbg !206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !206

if.end23:                                         ; preds = %if.end19
  %19 = load ptr, ptr %parse, align 8, !dbg !207
  %add.ptr24 = getelementptr i8, ptr %19, i64 8, !dbg !207
  store ptr %add.ptr24, ptr %parse, align 8, !dbg !207
  %20 = load i16, ptr %version, align 2, !dbg !208
  %conv25 = zext i16 %20 to i32, !dbg !208
  %cmp26 = icmp sge i32 %conv25, 2368, !dbg !210
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !211

if.then28:                                        ; preds = %if.end23
  %21 = load ptr, ptr %parse, align 8, !dbg !212
  %add.ptr29 = getelementptr i8, ptr %21, i64 4, !dbg !212
  store ptr %add.ptr29, ptr %parse, align 8, !dbg !212
  br label %if.end30, !dbg !213

if.end30:                                         ; preds = %if.then28, %if.end23
  %22 = load ptr, ptr %parse, align 8, !dbg !214
  %incdec.ptr31 = getelementptr i8, ptr %22, i32 1, !dbg !214
  store ptr %incdec.ptr31, ptr %parse, align 8, !dbg !214
  %23 = load i8, ptr %22, align 1, !dbg !215
  %conv32 = zext i8 %23 to i32, !dbg !215
  store i32 %conv32, ptr %l, align 4, !dbg !216
  %24 = load ptr, ptr %end, align 8, !dbg !217
  %25 = load ptr, ptr %parse, align 8, !dbg !219
  %sub.ptr.lhs.cast33 = ptrtoint ptr %24 to i64, !dbg !220
  %sub.ptr.rhs.cast34 = ptrtoint ptr %25 to i64, !dbg !220
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34, !dbg !220
  %26 = load i32, ptr %l, align 4, !dbg !221
  %add = add i32 %26, 4, !dbg !222
  %conv36 = sext i32 %add to i64, !dbg !221
  %cmp37 = icmp slt i64 %sub.ptr.sub35, %conv36, !dbg !223
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !224

if.then39:                                        ; preds = %if.end30
  store i64 0, ptr %retval, align 8, !dbg !225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

if.end40:                                         ; preds = %if.end30
  %27 = load i32, ptr %l, align 4, !dbg !226
  %add41 = add i32 %27, 4, !dbg !227
  %28 = load ptr, ptr %parse, align 8, !dbg !228
  %idx.ext = sext i32 %add41 to i64, !dbg !228
  %add.ptr42 = getelementptr i8, ptr %28, i64 %idx.ext, !dbg !228
  store ptr %add.ptr42, ptr %parse, align 8, !dbg !228
  %29 = load ptr, ptr %parse, align 8, !dbg !229
  %30 = load ptr, ptr %input.addr, align 8, !dbg !230
  %sub.ptr.lhs.cast43 = ptrtoint ptr %29 to i64, !dbg !231
  %sub.ptr.rhs.cast44 = ptrtoint ptr %30 to i64, !dbg !231
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44, !dbg !231
  %31 = load ptr, ptr %skip.addr, align 8, !dbg !232
  store i64 %sub.ptr.sub45, ptr %31, align 8, !dbg !233
  store i64 1, ptr %retval, align 8, !dbg !234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !234

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then22, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %version) #14, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #14, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %parse) #14, !dbg !235
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #14, !dbg !235
  %32 = load i64, ptr %retval, align 8, !dbg !235
  ret i64 %32, !dbg !235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_be16(ptr noundef %p) #3 align 16 !dbg !38 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !45, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #14, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !46, metadata !DIExpression()), !dbg !237
  %0 = load ptr, ptr %p.addr, align 8, !dbg !237
  store ptr %0, ptr %__pptr, align 8, !dbg !237
  %1 = load ptr, ptr %__pptr, align 8, !dbg !237
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !237
  %2 = load i16, ptr %x, align 1, !dbg !237
  store i16 %2, ptr %tmp, align 2, !dbg !237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #14, !dbg !238
  %3 = load i16, ptr %tmp, align 2, !dbg !237
  %4 = call i16 @llvm.bswap.i16(i16 %3), !dbg !238
  ret i16 %4, !dbg !239
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_be32(ptr noundef %p) #3 align 16 !dbg !55 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !60, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #14, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !61, metadata !DIExpression()), !dbg !241
  %0 = load ptr, ptr %p.addr, align 8, !dbg !241
  store ptr %0, ptr %__pptr, align 8, !dbg !241
  %1 = load ptr, ptr %__pptr, align 8, !dbg !241
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !241
  %2 = load i32, ptr %x, align 1, !dbg !241
  store i32 %2, ptr %tmp, align 4, !dbg !241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #14, !dbg !242
  %3 = load i32, ptr %tmp, align 4, !dbg !241
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !242
  ret i32 %4, !dbg !243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @unlzo(ptr noundef %input, i64 noundef %in_len, ptr noundef %fill, ptr noundef %flush, ptr noundef %output, ptr noundef %posp, ptr noundef %error) #4 section ".init.text" align 16 !dbg !244 {
entry:
  %input.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %posp.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %r = alloca i8, align 1
  %skip = alloca i64, align 8
  %src_len = alloca i32, align 4
  %dst_len = alloca i32, align 4
  %tmp = alloca i64, align 8
  %in_buf = alloca ptr, align 8
  %in_buf_save = alloca ptr, align 8
  %out_buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !256, metadata !DIExpression()), !dbg !279
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !257, metadata !DIExpression()), !dbg !280
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !258, metadata !DIExpression()), !dbg !281
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !259, metadata !DIExpression()), !dbg !282
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !260, metadata !DIExpression()), !dbg !283
  store ptr %posp, ptr %posp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %posp.addr, metadata !261, metadata !DIExpression()), !dbg !284
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !262, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #14, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %r, metadata !263, metadata !DIExpression()), !dbg !287
  store i8 0, ptr %r, align 1, !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %skip) #14, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %skip, metadata !264, metadata !DIExpression()), !dbg !289
  store i64 0, ptr %skip, align 8, !dbg !289
  call void @llvm.lifetime.start.p0(i64 4, ptr %src_len) #14, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %src_len, metadata !265, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst_len) #14, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %dst_len, metadata !266, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_buf) #14, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %in_buf, metadata !272, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_buf_save) #14, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %in_buf_save, metadata !273, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_buf) #14, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %out_buf, metadata !274, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !275, metadata !DIExpression()), !dbg !300
  store i32 -1, ptr %ret, align 4, !dbg !300
  %0 = load ptr, ptr %output.addr, align 8, !dbg !301
  %tobool = icmp ne ptr %0, null, !dbg !301
  br i1 %tobool, label %if.then, label %if.else, !dbg !303

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %output.addr, align 8, !dbg !304
  store ptr %1, ptr %out_buf, align 8, !dbg !306
  br label %if.end7, !dbg !307

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %flush.addr, align 8, !dbg !308
  %tobool1 = icmp ne ptr %2, null, !dbg !308
  br i1 %tobool1, label %if.else3, label %if.then2, !dbg !310

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %error.addr, align 8, !dbg !311
  call void %3(ptr noundef @.str) #15, !dbg !311
  br label %exit, !dbg !313

if.else3:                                         ; preds = %if.else
  %call = call noalias ptr @kmalloc(i64 noundef 262144, i32 noundef 3264) #16, !dbg !314
  store ptr %call, ptr %out_buf, align 8, !dbg !316
  %4 = load ptr, ptr %out_buf, align 8, !dbg !317
  %tobool4 = icmp ne ptr %4, null, !dbg !317
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !319

if.then5:                                         ; preds = %if.else3
  %5 = load ptr, ptr %error.addr, align 8, !dbg !320
  call void %5(ptr noundef @.str.1) #15, !dbg !320
  br label %exit, !dbg !322

if.end:                                           ; preds = %if.else3
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  %6 = load ptr, ptr %input.addr, align 8, !dbg !323
  %tobool8 = icmp ne ptr %6, null, !dbg !323
  br i1 %tobool8, label %land.lhs.true, label %if.else11, !dbg !325

land.lhs.true:                                    ; preds = %if.end7
  %7 = load ptr, ptr %fill.addr, align 8, !dbg !326
  %tobool9 = icmp ne ptr %7, null, !dbg !326
  br i1 %tobool9, label %if.then10, label %if.else11, !dbg !327

if.then10:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %error.addr, align 8, !dbg !328
  call void %8(ptr noundef @.str.2) #15, !dbg !328
  br label %exit_1, !dbg !330

if.else11:                                        ; preds = %land.lhs.true, %if.end7
  %9 = load ptr, ptr %input.addr, align 8, !dbg !331
  %tobool12 = icmp ne ptr %9, null, !dbg !331
  br i1 %tobool12, label %if.then13, label %if.else14, !dbg !333

if.then13:                                        ; preds = %if.else11
  %10 = load ptr, ptr %input.addr, align 8, !dbg !334
  store ptr %10, ptr %in_buf, align 8, !dbg !336
  br label %if.end23, !dbg !337

if.else14:                                        ; preds = %if.else11
  %11 = load ptr, ptr %fill.addr, align 8, !dbg !338
  %tobool15 = icmp ne ptr %11, null, !dbg !338
  br i1 %tobool15, label %if.else17, label %if.then16, !dbg !340

if.then16:                                        ; preds = %if.else14
  %12 = load ptr, ptr %error.addr, align 8, !dbg !341
  call void %12(ptr noundef @.str.3) #15, !dbg !341
  br label %exit_1, !dbg !343

if.else17:                                        ; preds = %if.else14
  %call18 = call noalias ptr @kmalloc(i64 noundef 278597, i32 noundef 3264) #16, !dbg !344
  store ptr %call18, ptr %in_buf, align 8, !dbg !346
  %13 = load ptr, ptr %in_buf, align 8, !dbg !347
  %tobool19 = icmp ne ptr %13, null, !dbg !347
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !349

if.then20:                                        ; preds = %if.else17
  %14 = load ptr, ptr %error.addr, align 8, !dbg !350
  call void %14(ptr noundef @.str.4) #15, !dbg !350
  br label %exit_1, !dbg !352

if.end21:                                         ; preds = %if.else17
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then13
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  %15 = load ptr, ptr %in_buf, align 8, !dbg !353
  store ptr %15, ptr %in_buf_save, align 8, !dbg !354
  %16 = load ptr, ptr %posp.addr, align 8, !dbg !355
  %tobool25 = icmp ne ptr %16, null, !dbg !355
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !357

if.then26:                                        ; preds = %if.end24
  %17 = load ptr, ptr %posp.addr, align 8, !dbg !358
  store i64 0, ptr %17, align 8, !dbg !359
  br label %if.end27, !dbg !360

if.end27:                                         ; preds = %if.then26, %if.end24
  %18 = load ptr, ptr %fill.addr, align 8, !dbg !361
  %tobool28 = icmp ne ptr %18, null, !dbg !361
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !363

if.then29:                                        ; preds = %if.end27
  %19 = load ptr, ptr %in_buf, align 8, !dbg !364
  %add.ptr = getelementptr i8, ptr %19, i64 297, !dbg !364
  store ptr %add.ptr, ptr %in_buf, align 8, !dbg !364
  %20 = load ptr, ptr %fill.addr, align 8, !dbg !366
  %21 = load ptr, ptr %in_buf, align 8, !dbg !367
  %call30 = call i64 %20(ptr noundef %21, i64 noundef 297) #15, !dbg !366
  store i64 %call30, ptr %in_len.addr, align 8, !dbg !368
  br label %if.end31, !dbg !369

if.end31:                                         ; preds = %if.then29, %if.end27
  %22 = load ptr, ptr %in_buf, align 8, !dbg !370
  %23 = load i64, ptr %in_len.addr, align 8, !dbg !372
  %call32 = call i64 @parse_header(ptr noundef %22, ptr noundef %skip, i64 noundef %23) #17, !dbg !373
  %tobool33 = icmp ne i64 %call32, 0, !dbg !373
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !374

if.then34:                                        ; preds = %if.end31
  %24 = load ptr, ptr %error.addr, align 8, !dbg !375
  call void %24(ptr noundef @.str.5) #15, !dbg !375
  br label %exit_2, !dbg !377

if.end35:                                         ; preds = %if.end31
  %25 = load i64, ptr %skip, align 8, !dbg !378
  %26 = load ptr, ptr %in_buf, align 8, !dbg !379
  %add.ptr36 = getelementptr i8, ptr %26, i64 %25, !dbg !379
  store ptr %add.ptr36, ptr %in_buf, align 8, !dbg !379
  %27 = load i64, ptr %skip, align 8, !dbg !380
  %28 = load i64, ptr %in_len.addr, align 8, !dbg !381
  %sub = sub i64 %28, %27, !dbg !381
  store i64 %sub, ptr %in_len.addr, align 8, !dbg !381
  %29 = load ptr, ptr %fill.addr, align 8, !dbg !382
  %tobool37 = icmp ne ptr %29, null, !dbg !382
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !384

if.then38:                                        ; preds = %if.end35
  %30 = load ptr, ptr %in_buf_save, align 8, !dbg !385
  %31 = load ptr, ptr %in_buf, align 8, !dbg !387
  %32 = load i64, ptr %in_len.addr, align 8, !dbg !388
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %31, i64 %32, i1 false), !dbg !389
  %33 = load ptr, ptr %in_buf_save, align 8, !dbg !390
  store ptr %33, ptr %in_buf, align 8, !dbg !391
  br label %if.end39, !dbg !392

if.end39:                                         ; preds = %if.then38, %if.end35
  %34 = load ptr, ptr %posp.addr, align 8, !dbg !393
  %tobool40 = icmp ne ptr %34, null, !dbg !393
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !395

if.then41:                                        ; preds = %if.end39
  %35 = load i64, ptr %skip, align 8, !dbg !396
  %36 = load ptr, ptr %posp.addr, align 8, !dbg !397
  store i64 %35, ptr %36, align 8, !dbg !398
  br label %if.end42, !dbg !399

if.end42:                                         ; preds = %if.then41, %if.end39
  br label %for.cond, !dbg !400

for.cond:                                         ; preds = %if.end173, %if.end42
  %37 = load ptr, ptr %fill.addr, align 8, !dbg !401
  %tobool43 = icmp ne ptr %37, null, !dbg !401
  br i1 %tobool43, label %land.lhs.true44, label %if.end52, !dbg !406

land.lhs.true44:                                  ; preds = %for.cond
  %38 = load i64, ptr %in_len.addr, align 8, !dbg !407
  %cmp = icmp slt i64 %38, 4, !dbg !408
  br i1 %cmp, label %if.then45, label %if.end52, !dbg !409

if.then45:                                        ; preds = %land.lhs.true44
  %39 = load ptr, ptr %fill.addr, align 8, !dbg !410
  %40 = load ptr, ptr %in_buf, align 8, !dbg !412
  %41 = load i64, ptr %in_len.addr, align 8, !dbg !413
  %add.ptr46 = getelementptr i8, ptr %40, i64 %41, !dbg !414
  %42 = load i64, ptr %in_len.addr, align 8, !dbg !415
  %sub47 = sub i64 4, %42, !dbg !416
  %call48 = call i64 %39(ptr noundef %add.ptr46, i64 noundef %sub47) #15, !dbg !410
  store i64 %call48, ptr %skip, align 8, !dbg !417
  %43 = load i64, ptr %skip, align 8, !dbg !418
  %cmp49 = icmp sgt i64 %43, 0, !dbg !420
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !421

if.then50:                                        ; preds = %if.then45
  %44 = load i64, ptr %skip, align 8, !dbg !422
  %45 = load i64, ptr %in_len.addr, align 8, !dbg !423
  %add = add i64 %45, %44, !dbg !423
  store i64 %add, ptr %in_len.addr, align 8, !dbg !423
  br label %if.end51, !dbg !424

if.end51:                                         ; preds = %if.then50, %if.then45
  br label %if.end52, !dbg !425

if.end52:                                         ; preds = %if.end51, %land.lhs.true44, %for.cond
  %46 = load i64, ptr %in_len.addr, align 8, !dbg !426
  %cmp53 = icmp slt i64 %46, 4, !dbg !428
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !429

if.then54:                                        ; preds = %if.end52
  %47 = load ptr, ptr %error.addr, align 8, !dbg !430
  call void %47(ptr noundef @.str.6) #15, !dbg !430
  br label %exit_2, !dbg !432

if.end55:                                         ; preds = %if.end52
  %48 = load ptr, ptr %in_buf, align 8, !dbg !433
  %call56 = call i32 @get_unaligned_be32(ptr noundef %48) #15, !dbg !434
  store i32 %call56, ptr %dst_len, align 4, !dbg !435
  %49 = load ptr, ptr %in_buf, align 8, !dbg !436
  %add.ptr57 = getelementptr i8, ptr %49, i64 4, !dbg !436
  store ptr %add.ptr57, ptr %in_buf, align 8, !dbg !436
  %50 = load i64, ptr %in_len.addr, align 8, !dbg !437
  %sub58 = sub i64 %50, 4, !dbg !437
  store i64 %sub58, ptr %in_len.addr, align 8, !dbg !437
  %51 = load i32, ptr %dst_len, align 4, !dbg !438
  %cmp59 = icmp eq i32 %51, 0, !dbg !440
  br i1 %cmp59, label %if.then60, label %if.end65, !dbg !441

if.then60:                                        ; preds = %if.end55
  %52 = load ptr, ptr %posp.addr, align 8, !dbg !442
  %tobool61 = icmp ne ptr %52, null, !dbg !442
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !445

if.then62:                                        ; preds = %if.then60
  %53 = load ptr, ptr %posp.addr, align 8, !dbg !446
  %54 = load i64, ptr %53, align 8, !dbg !447
  %add63 = add i64 %54, 4, !dbg !447
  store i64 %add63, ptr %53, align 8, !dbg !447
  br label %if.end64, !dbg !448

if.end64:                                         ; preds = %if.then62, %if.then60
  br label %for.end174, !dbg !449

if.end65:                                         ; preds = %if.end55
  %55 = load i32, ptr %dst_len, align 4, !dbg !450
  %conv = zext i32 %55 to i64, !dbg !450
  %cmp66 = icmp sgt i64 %conv, 262144, !dbg !452
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !453

if.then68:                                        ; preds = %if.end65
  %56 = load ptr, ptr %error.addr, align 8, !dbg !454
  call void %56(ptr noundef @.str.7) #15, !dbg !454
  br label %exit_2, !dbg !456

if.end69:                                         ; preds = %if.end65
  %57 = load ptr, ptr %fill.addr, align 8, !dbg !457
  %tobool70 = icmp ne ptr %57, null, !dbg !457
  br i1 %tobool70, label %land.lhs.true71, label %if.end83, !dbg !459

land.lhs.true71:                                  ; preds = %if.end69
  %58 = load i64, ptr %in_len.addr, align 8, !dbg !460
  %cmp72 = icmp slt i64 %58, 8, !dbg !461
  br i1 %cmp72, label %if.then74, label %if.end83, !dbg !462

if.then74:                                        ; preds = %land.lhs.true71
  %59 = load ptr, ptr %fill.addr, align 8, !dbg !463
  %60 = load ptr, ptr %in_buf, align 8, !dbg !465
  %61 = load i64, ptr %in_len.addr, align 8, !dbg !466
  %add.ptr75 = getelementptr i8, ptr %60, i64 %61, !dbg !467
  %62 = load i64, ptr %in_len.addr, align 8, !dbg !468
  %sub76 = sub i64 8, %62, !dbg !469
  %call77 = call i64 %59(ptr noundef %add.ptr75, i64 noundef %sub76) #15, !dbg !463
  store i64 %call77, ptr %skip, align 8, !dbg !470
  %63 = load i64, ptr %skip, align 8, !dbg !471
  %cmp78 = icmp sgt i64 %63, 0, !dbg !473
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !474

if.then80:                                        ; preds = %if.then74
  %64 = load i64, ptr %skip, align 8, !dbg !475
  %65 = load i64, ptr %in_len.addr, align 8, !dbg !476
  %add81 = add i64 %65, %64, !dbg !476
  store i64 %add81, ptr %in_len.addr, align 8, !dbg !476
  br label %if.end82, !dbg !477

if.end82:                                         ; preds = %if.then80, %if.then74
  br label %if.end83, !dbg !478

if.end83:                                         ; preds = %if.end82, %land.lhs.true71, %if.end69
  %66 = load i64, ptr %in_len.addr, align 8, !dbg !479
  %cmp84 = icmp slt i64 %66, 8, !dbg !481
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !482

if.then86:                                        ; preds = %if.end83
  %67 = load ptr, ptr %error.addr, align 8, !dbg !483
  call void %67(ptr noundef @.str.6) #15, !dbg !483
  br label %exit_2, !dbg !485

if.end87:                                         ; preds = %if.end83
  %68 = load ptr, ptr %in_buf, align 8, !dbg !486
  %call88 = call i32 @get_unaligned_be32(ptr noundef %68) #15, !dbg !487
  store i32 %call88, ptr %src_len, align 4, !dbg !488
  %69 = load ptr, ptr %in_buf, align 8, !dbg !489
  %add.ptr89 = getelementptr i8, ptr %69, i64 8, !dbg !489
  store ptr %add.ptr89, ptr %in_buf, align 8, !dbg !489
  %70 = load i64, ptr %in_len.addr, align 8, !dbg !490
  %sub90 = sub i64 %70, 8, !dbg !490
  store i64 %sub90, ptr %in_len.addr, align 8, !dbg !490
  %71 = load i32, ptr %src_len, align 4, !dbg !491
  %cmp91 = icmp ule i32 %71, 0, !dbg !493
  br i1 %cmp91, label %if.then95, label %lor.lhs.false, !dbg !494

lor.lhs.false:                                    ; preds = %if.end87
  %72 = load i32, ptr %src_len, align 4, !dbg !495
  %73 = load i32, ptr %dst_len, align 4, !dbg !496
  %cmp93 = icmp ugt i32 %72, %73, !dbg !497
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !498

if.then95:                                        ; preds = %lor.lhs.false, %if.end87
  %74 = load ptr, ptr %error.addr, align 8, !dbg !499
  call void %74(ptr noundef @.str.6) #15, !dbg !499
  br label %exit_2, !dbg !501

if.end96:                                         ; preds = %lor.lhs.false
  %75 = load ptr, ptr %fill.addr, align 8, !dbg !502
  %tobool97 = icmp ne ptr %75, null, !dbg !502
  br i1 %tobool97, label %land.lhs.true98, label %if.end112, !dbg !504

land.lhs.true98:                                  ; preds = %if.end96
  %76 = load i64, ptr %in_len.addr, align 8, !dbg !505
  %77 = load i32, ptr %src_len, align 4, !dbg !506
  %conv99 = zext i32 %77 to i64, !dbg !506
  %cmp100 = icmp slt i64 %76, %conv99, !dbg !507
  br i1 %cmp100, label %if.then102, label %if.end112, !dbg !508

if.then102:                                       ; preds = %land.lhs.true98
  %78 = load ptr, ptr %fill.addr, align 8, !dbg !509
  %79 = load ptr, ptr %in_buf, align 8, !dbg !511
  %80 = load i64, ptr %in_len.addr, align 8, !dbg !512
  %add.ptr103 = getelementptr i8, ptr %79, i64 %80, !dbg !513
  %81 = load i32, ptr %src_len, align 4, !dbg !514
  %conv104 = zext i32 %81 to i64, !dbg !514
  %82 = load i64, ptr %in_len.addr, align 8, !dbg !515
  %sub105 = sub i64 %conv104, %82, !dbg !516
  %call106 = call i64 %78(ptr noundef %add.ptr103, i64 noundef %sub105) #15, !dbg !509
  store i64 %call106, ptr %skip, align 8, !dbg !517
  %83 = load i64, ptr %skip, align 8, !dbg !518
  %cmp107 = icmp sgt i64 %83, 0, !dbg !520
  br i1 %cmp107, label %if.then109, label %if.end111, !dbg !521

if.then109:                                       ; preds = %if.then102
  %84 = load i64, ptr %skip, align 8, !dbg !522
  %85 = load i64, ptr %in_len.addr, align 8, !dbg !523
  %add110 = add i64 %85, %84, !dbg !523
  store i64 %add110, ptr %in_len.addr, align 8, !dbg !523
  br label %if.end111, !dbg !524

if.end111:                                        ; preds = %if.then109, %if.then102
  br label %if.end112, !dbg !525

if.end112:                                        ; preds = %if.end111, %land.lhs.true98, %if.end96
  %86 = load i64, ptr %in_len.addr, align 8, !dbg !526
  %87 = load i32, ptr %src_len, align 4, !dbg !528
  %conv113 = zext i32 %87 to i64, !dbg !528
  %cmp114 = icmp slt i64 %86, %conv113, !dbg !529
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !530

if.then116:                                       ; preds = %if.end112
  %88 = load ptr, ptr %error.addr, align 8, !dbg !531
  call void %88(ptr noundef @.str.6) #15, !dbg !531
  br label %exit_2, !dbg !533

if.end117:                                        ; preds = %if.end112
  %89 = load i32, ptr %dst_len, align 4, !dbg !534
  %conv118 = zext i32 %89 to i64, !dbg !534
  store i64 %conv118, ptr %tmp, align 8, !dbg !535
  %90 = load i32, ptr %dst_len, align 4, !dbg !536
  %91 = load i32, ptr %src_len, align 4, !dbg !536
  %cmp119 = icmp eq i32 %90, %91, !dbg !536
  %lnot = xor i1 %cmp119, true, !dbg !536
  %lnot121 = xor i1 %lnot, true, !dbg !536
  %lnot.ext = zext i1 %lnot121 to i32, !dbg !536
  %conv122 = sext i32 %lnot.ext to i64, !dbg !536
  %expval = call i64 @llvm.expect.i64(i64 %conv122, i64 0), !dbg !536
  %tobool123 = icmp ne i64 %expval, 0, !dbg !536
  br i1 %tobool123, label %if.then124, label %if.else126, !dbg !538

if.then124:                                       ; preds = %if.end117
  %92 = load ptr, ptr %out_buf, align 8, !dbg !539
  %93 = load ptr, ptr %in_buf, align 8, !dbg !540
  %94 = load i32, ptr %src_len, align 4, !dbg !541
  %conv125 = zext i32 %94 to i64, !dbg !541
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %93, i64 %conv125, i1 false), !dbg !542
  br label %if.end139, !dbg !542

if.else126:                                       ; preds = %if.end117
  %95 = load ptr, ptr %in_buf, align 8, !dbg !543
  %96 = load i32, ptr %src_len, align 4, !dbg !545
  %conv127 = zext i32 %96 to i64, !dbg !545
  %97 = load ptr, ptr %out_buf, align 8, !dbg !546
  %call128 = call i32 @lzo1x_decompress_safe(ptr noundef %95, i64 noundef %conv127, ptr noundef %97, ptr noundef %tmp) #15, !dbg !547
  %conv129 = trunc i32 %call128 to i8, !dbg !547
  store i8 %conv129, ptr %r, align 1, !dbg !548
  %98 = load i8, ptr %r, align 1, !dbg !549
  %conv130 = zext i8 %98 to i32, !dbg !549
  %cmp131 = icmp ne i32 %conv130, 0, !dbg !551
  br i1 %cmp131, label %if.then137, label %lor.lhs.false133, !dbg !552

lor.lhs.false133:                                 ; preds = %if.else126
  %99 = load i32, ptr %dst_len, align 4, !dbg !553
  %conv134 = zext i32 %99 to i64, !dbg !553
  %100 = load i64, ptr %tmp, align 8, !dbg !554
  %cmp135 = icmp ne i64 %conv134, %100, !dbg !555
  br i1 %cmp135, label %if.then137, label %if.end138, !dbg !556

if.then137:                                       ; preds = %lor.lhs.false133, %if.else126
  %101 = load ptr, ptr %error.addr, align 8, !dbg !557
  call void %101(ptr noundef @.str.8) #15, !dbg !557
  br label %exit_2, !dbg !559

if.end138:                                        ; preds = %lor.lhs.false133
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then124
  %102 = load ptr, ptr %flush.addr, align 8, !dbg !560
  %tobool140 = icmp ne ptr %102, null, !dbg !560
  br i1 %tobool140, label %land.lhs.true141, label %if.end148, !dbg !562

land.lhs.true141:                                 ; preds = %if.end139
  %103 = load ptr, ptr %flush.addr, align 8, !dbg !563
  %104 = load ptr, ptr %out_buf, align 8, !dbg !564
  %105 = load i32, ptr %dst_len, align 4, !dbg !565
  %conv142 = zext i32 %105 to i64, !dbg !565
  %call143 = call i64 %103(ptr noundef %104, i64 noundef %conv142) #15, !dbg !563
  %106 = load i32, ptr %dst_len, align 4, !dbg !566
  %conv144 = zext i32 %106 to i64, !dbg !566
  %cmp145 = icmp ne i64 %call143, %conv144, !dbg !567
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !568

if.then147:                                       ; preds = %land.lhs.true141
  br label %exit_2, !dbg !569

if.end148:                                        ; preds = %land.lhs.true141, %if.end139
  %107 = load ptr, ptr %output.addr, align 8, !dbg !570
  %tobool149 = icmp ne ptr %107, null, !dbg !570
  br i1 %tobool149, label %if.then150, label %if.end152, !dbg !572

if.then150:                                       ; preds = %if.end148
  %108 = load i32, ptr %dst_len, align 4, !dbg !573
  %109 = load ptr, ptr %out_buf, align 8, !dbg !574
  %idx.ext = zext i32 %108 to i64, !dbg !574
  %add.ptr151 = getelementptr i8, ptr %109, i64 %idx.ext, !dbg !574
  store ptr %add.ptr151, ptr %out_buf, align 8, !dbg !574
  br label %if.end152, !dbg !575

if.end152:                                        ; preds = %if.then150, %if.end148
  %110 = load ptr, ptr %posp.addr, align 8, !dbg !576
  %tobool153 = icmp ne ptr %110, null, !dbg !576
  br i1 %tobool153, label %if.then154, label %if.end158, !dbg !578

if.then154:                                       ; preds = %if.end152
  %111 = load i32, ptr %src_len, align 4, !dbg !579
  %add155 = add i32 %111, 12, !dbg !580
  %conv156 = zext i32 %add155 to i64, !dbg !579
  %112 = load ptr, ptr %posp.addr, align 8, !dbg !581
  %113 = load i64, ptr %112, align 8, !dbg !582
  %add157 = add i64 %113, %conv156, !dbg !582
  store i64 %add157, ptr %112, align 8, !dbg !582
  br label %if.end158, !dbg !583

if.end158:                                        ; preds = %if.then154, %if.end152
  %114 = load i32, ptr %src_len, align 4, !dbg !584
  %115 = load ptr, ptr %in_buf, align 8, !dbg !585
  %idx.ext159 = zext i32 %114 to i64, !dbg !585
  %add.ptr160 = getelementptr i8, ptr %115, i64 %idx.ext159, !dbg !585
  store ptr %add.ptr160, ptr %in_buf, align 8, !dbg !585
  %116 = load i32, ptr %src_len, align 4, !dbg !586
  %conv161 = zext i32 %116 to i64, !dbg !586
  %117 = load i64, ptr %in_len.addr, align 8, !dbg !587
  %sub162 = sub i64 %117, %conv161, !dbg !587
  store i64 %sub162, ptr %in_len.addr, align 8, !dbg !587
  %118 = load ptr, ptr %fill.addr, align 8, !dbg !588
  %tobool163 = icmp ne ptr %118, null, !dbg !588
  br i1 %tobool163, label %if.then164, label %if.end173, !dbg !590

if.then164:                                       ; preds = %if.end158
  %119 = load i64, ptr %in_len.addr, align 8, !dbg !591
  %cmp165 = icmp sgt i64 %119, 0, !dbg !594
  br i1 %cmp165, label %if.then167, label %if.end172, !dbg !595

if.then167:                                       ; preds = %if.then164
  store i64 0, ptr %skip, align 8, !dbg !596
  br label %for.cond168, !dbg !598

for.cond168:                                      ; preds = %for.inc, %if.then167
  %120 = load i64, ptr %skip, align 8, !dbg !599
  %121 = load i64, ptr %in_len.addr, align 8, !dbg !601
  %cmp169 = icmp slt i64 %120, %121, !dbg !602
  br i1 %cmp169, label %for.body, label %for.end, !dbg !603

for.body:                                         ; preds = %for.cond168
  %122 = load ptr, ptr %in_buf, align 8, !dbg !604
  %123 = load i64, ptr %skip, align 8, !dbg !605
  %arrayidx = getelementptr i8, ptr %122, i64 %123, !dbg !604
  %124 = load i8, ptr %arrayidx, align 1, !dbg !604
  %125 = load ptr, ptr %in_buf_save, align 8, !dbg !606
  %126 = load i64, ptr %skip, align 8, !dbg !607
  %arrayidx171 = getelementptr i8, ptr %125, i64 %126, !dbg !606
  store i8 %124, ptr %arrayidx171, align 1, !dbg !608
  br label %for.inc, !dbg !606

for.inc:                                          ; preds = %for.body
  %127 = load i64, ptr %skip, align 8, !dbg !609
  %inc = add i64 %127, 1, !dbg !609
  store i64 %inc, ptr %skip, align 8, !dbg !609
  br label %for.cond168, !dbg !610, !llvm.loop !611

for.end:                                          ; preds = %for.cond168
  br label %if.end172, !dbg !612

if.end172:                                        ; preds = %for.end, %if.then164
  %128 = load ptr, ptr %in_buf_save, align 8, !dbg !613
  store ptr %128, ptr %in_buf, align 8, !dbg !614
  br label %if.end173, !dbg !615

if.end173:                                        ; preds = %if.end172, %if.end158
  br label %for.cond, !dbg !616, !llvm.loop !617

for.end174:                                       ; preds = %if.end64
  store i32 0, ptr %ret, align 4, !dbg !620
  br label %exit_2, !dbg !621

exit_2:                                           ; preds = %for.end174, %if.then147, %if.then137, %if.then116, %if.then95, %if.then86, %if.then68, %if.then54, %if.then34
  call void @llvm.dbg.label(metadata !276), !dbg !622
  %129 = load ptr, ptr %input.addr, align 8, !dbg !623
  %tobool175 = icmp ne ptr %129, null, !dbg !623
  br i1 %tobool175, label %if.end177, label %if.then176, !dbg !625

if.then176:                                       ; preds = %exit_2
  %130 = load ptr, ptr %in_buf_save, align 8, !dbg !626
  call void @kfree(ptr noundef %130) #15, !dbg !626
  br label %if.end177, !dbg !626

if.end177:                                        ; preds = %if.then176, %exit_2
  br label %exit_1, !dbg !623

exit_1:                                           ; preds = %if.end177, %if.then20, %if.then16, %if.then10
  call void @llvm.dbg.label(metadata !277), !dbg !627
  %131 = load ptr, ptr %output.addr, align 8, !dbg !628
  %tobool178 = icmp ne ptr %131, null, !dbg !628
  br i1 %tobool178, label %if.end180, label %if.then179, !dbg !630

if.then179:                                       ; preds = %exit_1
  %132 = load ptr, ptr %out_buf, align 8, !dbg !631
  call void @kfree(ptr noundef %132) #15, !dbg !631
  br label %if.end180, !dbg !631

if.end180:                                        ; preds = %if.then179, %exit_1
  br label %exit, !dbg !628

exit:                                             ; preds = %if.end180, %if.then5, %if.then2
  call void @llvm.dbg.label(metadata !278), !dbg !632
  %133 = load i32, ptr %ret, align 4, !dbg !633
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_buf) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_buf_save) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_buf) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst_len) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 4, ptr %src_len) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %skip) #14, !dbg !634
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #14, !dbg !634
  ret i32 %133, !dbg !635
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !636 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !640, metadata !DIExpression()), !dbg !645
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !641, metadata !DIExpression()), !dbg !646
  %0 = load i64, ptr %size.addr, align 8, !dbg !647
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !648
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !649

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !650
  %tobool = icmp ne i64 %2, 0, !dbg !650
  br i1 %tobool, label %if.then, label %if.end7, !dbg !651

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %index, metadata !642, metadata !DIExpression()), !dbg !653
  %3 = load i64, ptr %size.addr, align 8, !dbg !654
  %cmp = icmp ugt i64 %3, 8192, !dbg !656
  br i1 %cmp, label %if.then1, label %if.end, !dbg !657

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !658
  %5 = load i32, ptr %flags.addr, align 4, !dbg !659
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !660
  store ptr %call, ptr %retval, align 8, !dbg !661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !661

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !662
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !662
  store i32 %call2, ptr %index, align 4, !dbg !663
  %7 = load i32, ptr %flags.addr, align 4, !dbg !664
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !665
  %9 = ptrtoint ptr %8 to i64, !dbg !665
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !666
  %idxprom = zext i32 %call3 to i64, !dbg !667
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !667
  %10 = load i32, ptr %index, align 4, !dbg !668
  %idxprom4 = zext i32 %10 to i64, !dbg !667
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !667
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !667
  %12 = load i32, ptr %flags.addr, align 4, !dbg !669
  %13 = load i64, ptr %size.addr, align 8, !dbg !670
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !671
  store ptr %call6, ptr %retval, align 8, !dbg !672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !672

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !673
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !674
  %15 = load i32, ptr %flags.addr, align 4, !dbg !675
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !676
  store ptr %call8, ptr %retval, align 8, !dbg !677
  br label %return, !dbg !677

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !678
  ret ptr %16, !dbg !678
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !679 dso_local i32 @lzo1x_decompress_safe(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !686 dso_local void @kfree(ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !689 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !690 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !696, metadata !DIExpression()), !dbg !698
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !697, metadata !DIExpression()), !dbg !699
  %0 = load i64, ptr %size.addr, align 8, !dbg !700
  %tobool = icmp ne i64 %0, 0, !dbg !700
  br i1 %tobool, label %if.end, label %if.then, !dbg !702

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !703
  br label %return, !dbg !703

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !704
  %cmp = icmp ule i64 %1, 8, !dbg !706
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !707

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !708
  br label %return, !dbg !708

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !709
  %cmp3 = icmp ugt i64 %2, 64, !dbg !711
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !712

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !713
  %cmp4 = icmp ule i64 %3, 96, !dbg !714
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !715

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !716
  br label %return, !dbg !716

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !717
  %cmp7 = icmp ugt i64 %4, 128, !dbg !719
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !720

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp9 = icmp ule i64 %5, 192, !dbg !722
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !723

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !724
  br label %return, !dbg !724

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !725
  %cmp12 = icmp ule i64 %6, 8, !dbg !727
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !728

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !729
  br label %return, !dbg !729

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !730
  %cmp15 = icmp ule i64 %7, 16, !dbg !732
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !733

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !734
  br label %return, !dbg !734

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !735
  %cmp18 = icmp ule i64 %8, 32, !dbg !737
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !738

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !739
  br label %return, !dbg !739

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !740
  %cmp21 = icmp ule i64 %9, 64, !dbg !742
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !743

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !744
  br label %return, !dbg !744

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !745
  %cmp24 = icmp ule i64 %10, 128, !dbg !747
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !748

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !749
  br label %return, !dbg !749

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !750
  %cmp27 = icmp ule i64 %11, 256, !dbg !752
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !753

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !754
  br label %return, !dbg !754

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !755
  %cmp30 = icmp ule i64 %12, 512, !dbg !757
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !758

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !759
  br label %return, !dbg !759

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !760
  %cmp33 = icmp ule i64 %13, 1024, !dbg !762
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !763

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !764
  br label %return, !dbg !764

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !765
  %cmp36 = icmp ule i64 %14, 2048, !dbg !767
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !768

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !769
  br label %return, !dbg !769

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !770
  %cmp39 = icmp ule i64 %15, 4096, !dbg !772
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !773

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !774
  br label %return, !dbg !774

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !775
  %cmp42 = icmp ule i64 %16, 8192, !dbg !777
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !778

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !779
  br label %return, !dbg !779

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !780
  %cmp45 = icmp ule i64 %17, 16384, !dbg !782
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !783

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !784
  br label %return, !dbg !784

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !785
  %cmp48 = icmp ule i64 %18, 32768, !dbg !787
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !788

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !789
  br label %return, !dbg !789

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !790
  %cmp51 = icmp ule i64 %19, 65536, !dbg !792
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !793

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !794
  br label %return, !dbg !794

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !795
  %cmp54 = icmp ule i64 %20, 131072, !dbg !797
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !798

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !800
  %cmp57 = icmp ule i64 %21, 262144, !dbg !802
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !803

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !804
  br label %return, !dbg !804

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !805
  %cmp60 = icmp ule i64 %22, 524288, !dbg !807
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !808

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !809
  br label %return, !dbg !809

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !810
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !812
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !813

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !814
  br label %return, !dbg !814

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !815
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !817
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !818

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !819
  br label %return, !dbg !819

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !820, !range !822, !noundef !823
  %tobool69 = trunc i8 %25 to i1, !dbg !820
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !824

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !825

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !826, !srcloc !829
  unreachable, !dbg !826

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !830

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !831

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !832

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !834

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !832

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #14, !dbg !836, !srcloc !838
  br label %do.end75, !dbg !836

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !832

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !839
  br label %return, !dbg !839

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !840
  ret i32 %26, !dbg !840
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !841 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !847 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !851, metadata !DIExpression()), !dbg !853
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !852, metadata !DIExpression()), !dbg !854
  %0 = load i32, ptr %flags.addr, align 4, !dbg !855
  %and = and i32 %0, 17, !dbg !855
  %cmp = icmp eq i32 %and, 0, !dbg !855
  %lnot = xor i1 %cmp, true, !dbg !855
  %lnot1 = xor i1 %lnot, true, !dbg !855
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !855
  %conv = sext i32 %lnot.ext to i64, !dbg !855
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !855
  %tobool = icmp ne i64 %expval, 0, !dbg !855
  br i1 %tobool, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !858
  br label %return, !dbg !858

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !859
  %and2 = and i32 %1, 1, !dbg !861
  %tobool3 = icmp ne i32 %and2, 0, !dbg !861
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !862

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !863
  br label %return, !dbg !863

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !864
  br label %return, !dbg !864

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !866
  ret i32 %2, !dbg !866
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !867 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !868 dso_local void @__compiletime_assert_245() #13

attributes #0 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lzop_magic", scope: !2, file: !3, line: 33, type: !112, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_unlzo.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_unlzo\22 -D KBUILD_BASENAME=\22decompress_unlzo\22 -D KBUILD_MODNAME=\22decompress_unlzo\22 -D __KBUILD_MODNAME=kmod_decompress_unlzo -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_unlzo.ll lib/decompress_unlzo.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/decompress_unlzo.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f698fc3aea08fd1e618d7166047a4d4")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !24, !30, !32, !34, !50, !51, !52, !65}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !7)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !33, line: 37, baseType: !30)
!33 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !37, line: 57, size: 16, elements: !48)
!37 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!38 = distinct !DISubprogram(name: "get_unaligned_be16", scope: !37, file: !37, line: 55, type: !39, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !30)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!44 = !{!45, !46}
!45 = !DILocalVariable(name: "p", arg: 1, scope: !38, file: !37, line: 55, type: !42)
!46 = !DILocalVariable(name: "__pptr", scope: !47, file: !37, line: 57, type: !34)
!47 = distinct !DILexicalBlock(scope: !38, file: !37, line: 57, column: 9)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !36, file: !37, line: 57, baseType: !32, size: 16)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !33, line: 39, baseType: !50)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !37, line: 62, size: 32, elements: !63)
!55 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !37, file: !37, line: 60, type: !56, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !59)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !42}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !50)
!59 = !{!60, !61}
!60 = !DILocalVariable(name: "p", arg: 1, scope: !55, file: !37, line: 60, type: !42)
!61 = !DILocalVariable(name: "__pptr", scope: !62, file: !37, line: 62, type: !52)
!62 = distinct !DILexicalBlock(scope: !55, file: !37, line: 62, column: 9)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !54, file: !37, line: 62, baseType: !51, size: 32)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !{!67, !73, !78, !83, !88, !93, !98, !100, !102, !0, !107}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 408, elements: !71)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !{!72}
!72 = !DISubrange(count: 51)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 264, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 33)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 552, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 69)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 360, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 45)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 32)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 120, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 15)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !95, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !90, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 208, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 26)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 168, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 21)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 72, elements: !114)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!114 = !{!115}
!115 = !DISubrange(count: 9)
!116 = !{i32 7, !"Dwarf Version", i32 5}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 8, !"cf-protection-branch", i32 1}
!120 = !{i32 4, !"function_return_thunk_extern", i32 1}
!121 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!122 = !{i32 1, !"Code Model", i32 2}
!123 = !{i32 1, !"override-stack-alignment", i32 8}
!124 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!125 = distinct !DISubprogram(name: "parse_header", scope: !3, file: !3, line: 41, type: !126, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !24, !129, !128}
!128 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!130 = !{!131, !132, !133, !134, !136, !137, !138}
!131 = !DILocalVariable(name: "input", arg: 1, scope: !125, file: !3, line: 41, type: !24)
!132 = !DILocalVariable(name: "skip", arg: 2, scope: !125, file: !3, line: 41, type: !129)
!133 = !DILocalVariable(name: "in_len", arg: 3, scope: !125, file: !3, line: 41, type: !128)
!134 = !DILocalVariable(name: "l", scope: !125, file: !3, line: 43, type: !135)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DILocalVariable(name: "parse", scope: !125, file: !3, line: 44, type: !24)
!137 = !DILocalVariable(name: "end", scope: !125, file: !3, line: 45, type: !24)
!138 = !DILocalVariable(name: "version", scope: !125, file: !3, line: 46, type: !41)
!139 = !DILocation(line: 41, column: 42, scope: !125)
!140 = !DILocation(line: 41, column: 55, scope: !125)
!141 = !DILocation(line: 41, column: 66, scope: !125)
!142 = !DILocation(line: 43, column: 2, scope: !125)
!143 = !DILocation(line: 43, column: 6, scope: !125)
!144 = !DILocation(line: 44, column: 2, scope: !125)
!145 = !DILocation(line: 44, column: 6, scope: !125)
!146 = !DILocation(line: 44, column: 14, scope: !125)
!147 = !DILocation(line: 45, column: 2, scope: !125)
!148 = !DILocation(line: 45, column: 6, scope: !125)
!149 = !DILocation(line: 45, column: 12, scope: !125)
!150 = !DILocation(line: 45, column: 20, scope: !125)
!151 = !DILocation(line: 45, column: 18, scope: !125)
!152 = !DILocation(line: 46, column: 2, scope: !125)
!153 = !DILocation(line: 46, column: 6, scope: !125)
!154 = !DILocation(line: 53, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !125, file: !3, line: 53, column: 6)
!156 = !DILocation(line: 53, column: 13, scope: !155)
!157 = !DILocation(line: 53, column: 6, scope: !125)
!158 = !DILocation(line: 54, column: 3, scope: !155)
!159 = !DILocation(line: 57, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !125, file: !3, line: 57, column: 2)
!161 = !DILocation(line: 57, column: 7, scope: !160)
!162 = !DILocation(line: 57, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 57, column: 2)
!164 = !DILocation(line: 57, column: 16, scope: !163)
!165 = !DILocation(line: 57, column: 2, scope: !160)
!166 = !DILocation(line: 58, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 58, column: 7)
!168 = distinct !DILexicalBlock(scope: !163, file: !3, line: 57, column: 26)
!169 = !DILocation(line: 58, column: 7, scope: !167)
!170 = !DILocation(line: 58, column: 30, scope: !167)
!171 = !DILocation(line: 58, column: 19, scope: !167)
!172 = !DILocation(line: 58, column: 16, scope: !167)
!173 = !DILocation(line: 58, column: 7, scope: !168)
!174 = !DILocation(line: 59, column: 4, scope: !167)
!175 = !DILocation(line: 60, column: 2, scope: !168)
!176 = !DILocation(line: 57, column: 22, scope: !163)
!177 = !DILocation(line: 57, column: 2, scope: !163)
!178 = distinct !{!178, !165, !179, !180, !181}
!179 = !DILocation(line: 60, column: 2, scope: !160)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = !DILocation(line: 64, column: 31, scope: !125)
!183 = !DILocation(line: 64, column: 12, scope: !125)
!184 = !DILocation(line: 64, column: 10, scope: !125)
!185 = !DILocation(line: 65, column: 8, scope: !125)
!186 = !DILocation(line: 66, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !125, file: !3, line: 66, column: 6)
!188 = !DILocation(line: 66, column: 14, scope: !187)
!189 = !DILocation(line: 66, column: 6, scope: !125)
!190 = !DILocation(line: 67, column: 8, scope: !187)
!191 = !DILocation(line: 67, column: 3, scope: !187)
!192 = !DILocation(line: 68, column: 25, scope: !193)
!193 = distinct !DILexicalBlock(scope: !125, file: !3, line: 68, column: 6)
!194 = !DILocation(line: 68, column: 6, scope: !193)
!195 = !DILocation(line: 68, column: 32, scope: !193)
!196 = !DILocation(line: 68, column: 6, scope: !125)
!197 = !DILocation(line: 69, column: 9, scope: !193)
!198 = !DILocation(line: 69, column: 3, scope: !193)
!199 = !DILocation(line: 71, column: 9, scope: !193)
!200 = !DILocation(line: 79, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !125, file: !3, line: 79, column: 6)
!202 = !DILocation(line: 79, column: 12, scope: !201)
!203 = !DILocation(line: 79, column: 10, scope: !201)
!204 = !DILocation(line: 79, column: 18, scope: !201)
!205 = !DILocation(line: 79, column: 6, scope: !125)
!206 = !DILocation(line: 80, column: 3, scope: !201)
!207 = !DILocation(line: 83, column: 8, scope: !125)
!208 = !DILocation(line: 84, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !125, file: !3, line: 84, column: 6)
!210 = !DILocation(line: 84, column: 14, scope: !209)
!211 = !DILocation(line: 84, column: 6, scope: !125)
!212 = !DILocation(line: 85, column: 9, scope: !209)
!213 = !DILocation(line: 85, column: 3, scope: !209)
!214 = !DILocation(line: 87, column: 12, scope: !125)
!215 = !DILocation(line: 87, column: 6, scope: !125)
!216 = !DILocation(line: 87, column: 4, scope: !125)
!217 = !DILocation(line: 89, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !125, file: !3, line: 89, column: 6)
!219 = !DILocation(line: 89, column: 12, scope: !218)
!220 = !DILocation(line: 89, column: 10, scope: !218)
!221 = !DILocation(line: 89, column: 20, scope: !218)
!222 = !DILocation(line: 89, column: 22, scope: !218)
!223 = !DILocation(line: 89, column: 18, scope: !218)
!224 = !DILocation(line: 89, column: 6, scope: !125)
!225 = !DILocation(line: 90, column: 3, scope: !218)
!226 = !DILocation(line: 91, column: 11, scope: !125)
!227 = !DILocation(line: 91, column: 13, scope: !125)
!228 = !DILocation(line: 91, column: 8, scope: !125)
!229 = !DILocation(line: 93, column: 10, scope: !125)
!230 = !DILocation(line: 93, column: 18, scope: !125)
!231 = !DILocation(line: 93, column: 16, scope: !125)
!232 = !DILocation(line: 93, column: 3, scope: !125)
!233 = !DILocation(line: 93, column: 8, scope: !125)
!234 = !DILocation(line: 94, column: 2, scope: !125)
!235 = !DILocation(line: 95, column: 1, scope: !125)
!236 = !DILocation(line: 55, column: 50, scope: !38)
!237 = !DILocation(line: 57, column: 9, scope: !47)
!238 = !DILocation(line: 57, column: 9, scope: !38)
!239 = !DILocation(line: 57, column: 2, scope: !38)
!240 = !DILocation(line: 60, column: 50, scope: !55)
!241 = !DILocation(line: 62, column: 9, scope: !62)
!242 = !DILocation(line: 62, column: 9, scope: !55)
!243 = !DILocation(line: 62, column: 2, scope: !55)
!244 = distinct !DISubprogram(name: "unlzo", scope: !3, file: !3, line: 97, type: !245, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!245 = !DISubroutineType(types: !246)
!246 = !{!135, !24, !128, !247, !247, !24, !129, !251}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!128, !250, !65}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !272, !273, !274, !275, !276, !277, !278}
!256 = !DILocalVariable(name: "input", arg: 1, scope: !244, file: !3, line: 97, type: !24)
!257 = !DILocalVariable(name: "in_len", arg: 2, scope: !244, file: !3, line: 97, type: !128)
!258 = !DILocalVariable(name: "fill", arg: 3, scope: !244, file: !3, line: 98, type: !247)
!259 = !DILocalVariable(name: "flush", arg: 4, scope: !244, file: !3, line: 99, type: !247)
!260 = !DILocalVariable(name: "output", arg: 5, scope: !244, file: !3, line: 100, type: !24)
!261 = !DILocalVariable(name: "posp", arg: 6, scope: !244, file: !3, line: 100, type: !129)
!262 = !DILocalVariable(name: "error", arg: 7, scope: !244, file: !3, line: 101, type: !251)
!263 = !DILocalVariable(name: "r", scope: !244, file: !3, line: 103, type: !25)
!264 = !DILocalVariable(name: "skip", scope: !244, file: !3, line: 104, type: !128)
!265 = !DILocalVariable(name: "src_len", scope: !244, file: !3, line: 105, type: !58)
!266 = !DILocalVariable(name: "dst_len", scope: !244, file: !3, line: 105, type: !58)
!267 = !DILocalVariable(name: "tmp", scope: !244, file: !3, line: 106, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !270, line: 72, baseType: !271)
!270 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !270, line: 16, baseType: !65)
!272 = !DILocalVariable(name: "in_buf", scope: !244, file: !3, line: 107, type: !24)
!273 = !DILocalVariable(name: "in_buf_save", scope: !244, file: !3, line: 107, type: !24)
!274 = !DILocalVariable(name: "out_buf", scope: !244, file: !3, line: 107, type: !24)
!275 = !DILocalVariable(name: "ret", scope: !244, file: !3, line: 108, type: !135)
!276 = !DILabel(scope: !244, name: "exit_2", file: !3, line: 266)
!277 = !DILabel(scope: !244, name: "exit_1", file: !3, line: 269)
!278 = !DILabel(scope: !244, name: "exit", file: !3, line: 272)
!279 = !DILocation(line: 97, column: 27, scope: !244)
!280 = !DILocation(line: 97, column: 39, scope: !244)
!281 = !DILocation(line: 98, column: 12, scope: !244)
!282 = !DILocation(line: 99, column: 12, scope: !244)
!283 = !DILocation(line: 100, column: 9, scope: !244)
!284 = !DILocation(line: 100, column: 23, scope: !244)
!285 = !DILocation(line: 101, column: 12, scope: !244)
!286 = !DILocation(line: 103, column: 2, scope: !244)
!287 = !DILocation(line: 103, column: 5, scope: !244)
!288 = !DILocation(line: 104, column: 2, scope: !244)
!289 = !DILocation(line: 104, column: 7, scope: !244)
!290 = !DILocation(line: 105, column: 2, scope: !244)
!291 = !DILocation(line: 105, column: 6, scope: !244)
!292 = !DILocation(line: 105, column: 15, scope: !244)
!293 = !DILocation(line: 106, column: 2, scope: !244)
!294 = !DILocation(line: 106, column: 9, scope: !244)
!295 = !DILocation(line: 107, column: 2, scope: !244)
!296 = !DILocation(line: 107, column: 6, scope: !244)
!297 = !DILocation(line: 107, column: 15, scope: !244)
!298 = !DILocation(line: 107, column: 29, scope: !244)
!299 = !DILocation(line: 108, column: 2, scope: !244)
!300 = !DILocation(line: 108, column: 6, scope: !244)
!301 = !DILocation(line: 110, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !244, file: !3, line: 110, column: 6)
!303 = !DILocation(line: 110, column: 6, scope: !244)
!304 = !DILocation(line: 111, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 110, column: 14)
!306 = !DILocation(line: 111, column: 11, scope: !305)
!307 = !DILocation(line: 112, column: 2, scope: !305)
!308 = !DILocation(line: 112, column: 14, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 112, column: 13)
!310 = !DILocation(line: 112, column: 13, scope: !302)
!311 = !DILocation(line: 113, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !3, line: 112, column: 21)
!313 = !DILocation(line: 114, column: 3, scope: !312)
!314 = !DILocation(line: 116, column: 13, scope: !315)
!315 = distinct !DILexicalBlock(scope: !309, file: !3, line: 115, column: 9)
!316 = !DILocation(line: 116, column: 11, scope: !315)
!317 = !DILocation(line: 117, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !3, line: 117, column: 7)
!319 = !DILocation(line: 117, column: 7, scope: !315)
!320 = !DILocation(line: 118, column: 4, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 117, column: 17)
!322 = !DILocation(line: 119, column: 4, scope: !321)
!323 = !DILocation(line: 123, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !244, file: !3, line: 123, column: 6)
!325 = !DILocation(line: 123, column: 12, scope: !324)
!326 = !DILocation(line: 123, column: 15, scope: !324)
!327 = !DILocation(line: 123, column: 6, scope: !244)
!328 = !DILocation(line: 124, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 123, column: 21)
!330 = !DILocation(line: 125, column: 3, scope: !329)
!331 = !DILocation(line: 126, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !3, line: 126, column: 13)
!333 = !DILocation(line: 126, column: 13, scope: !324)
!334 = !DILocation(line: 127, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !3, line: 126, column: 20)
!336 = !DILocation(line: 127, column: 10, scope: !335)
!337 = !DILocation(line: 128, column: 2, scope: !335)
!338 = !DILocation(line: 128, column: 14, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !3, line: 128, column: 13)
!340 = !DILocation(line: 128, column: 13, scope: !332)
!341 = !DILocation(line: 129, column: 3, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 128, column: 20)
!343 = !DILocation(line: 130, column: 3, scope: !342)
!344 = !DILocation(line: 132, column: 12, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !3, line: 131, column: 9)
!346 = !DILocation(line: 132, column: 10, scope: !345)
!347 = !DILocation(line: 133, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 133, column: 7)
!349 = !DILocation(line: 133, column: 7, scope: !345)
!350 = !DILocation(line: 134, column: 4, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !3, line: 133, column: 16)
!352 = !DILocation(line: 135, column: 4, scope: !351)
!353 = !DILocation(line: 138, column: 16, scope: !244)
!354 = !DILocation(line: 138, column: 14, scope: !244)
!355 = !DILocation(line: 140, column: 6, scope: !356)
!356 = distinct !DILexicalBlock(scope: !244, file: !3, line: 140, column: 6)
!357 = !DILocation(line: 140, column: 6, scope: !244)
!358 = !DILocation(line: 141, column: 4, scope: !356)
!359 = !DILocation(line: 141, column: 9, scope: !356)
!360 = !DILocation(line: 141, column: 3, scope: !356)
!361 = !DILocation(line: 143, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !244, file: !3, line: 143, column: 6)
!363 = !DILocation(line: 143, column: 6, scope: !244)
!364 = !DILocation(line: 150, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 143, column: 12)
!366 = !DILocation(line: 151, column: 12, scope: !365)
!367 = !DILocation(line: 151, column: 17, scope: !365)
!368 = !DILocation(line: 151, column: 10, scope: !365)
!369 = !DILocation(line: 152, column: 2, scope: !365)
!370 = !DILocation(line: 154, column: 20, scope: !371)
!371 = distinct !DILexicalBlock(scope: !244, file: !3, line: 154, column: 6)
!372 = !DILocation(line: 154, column: 35, scope: !371)
!373 = !DILocation(line: 154, column: 7, scope: !371)
!374 = !DILocation(line: 154, column: 6, scope: !244)
!375 = !DILocation(line: 155, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !3, line: 154, column: 44)
!377 = !DILocation(line: 156, column: 3, scope: !376)
!378 = !DILocation(line: 158, column: 12, scope: !244)
!379 = !DILocation(line: 158, column: 9, scope: !244)
!380 = !DILocation(line: 159, column: 12, scope: !244)
!381 = !DILocation(line: 159, column: 9, scope: !244)
!382 = !DILocation(line: 161, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !244, file: !3, line: 161, column: 6)
!384 = !DILocation(line: 161, column: 6, scope: !244)
!385 = !DILocation(line: 163, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !3, line: 161, column: 12)
!387 = !DILocation(line: 163, column: 23, scope: !386)
!388 = !DILocation(line: 163, column: 31, scope: !386)
!389 = !DILocation(line: 163, column: 3, scope: !386)
!390 = !DILocation(line: 164, column: 12, scope: !386)
!391 = !DILocation(line: 164, column: 10, scope: !386)
!392 = !DILocation(line: 165, column: 2, scope: !386)
!393 = !DILocation(line: 167, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !244, file: !3, line: 167, column: 6)
!395 = !DILocation(line: 167, column: 6, scope: !244)
!396 = !DILocation(line: 168, column: 11, scope: !394)
!397 = !DILocation(line: 168, column: 4, scope: !394)
!398 = !DILocation(line: 168, column: 9, scope: !394)
!399 = !DILocation(line: 168, column: 3, scope: !394)
!400 = !DILocation(line: 170, column: 2, scope: !244)
!401 = !DILocation(line: 172, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 172, column: 7)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 170, column: 11)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 170, column: 2)
!405 = distinct !DILexicalBlock(scope: !244, file: !3, line: 170, column: 2)
!406 = !DILocation(line: 172, column: 12, scope: !402)
!407 = !DILocation(line: 172, column: 15, scope: !402)
!408 = !DILocation(line: 172, column: 22, scope: !402)
!409 = !DILocation(line: 172, column: 7, scope: !403)
!410 = !DILocation(line: 173, column: 11, scope: !411)
!411 = distinct !DILexicalBlock(scope: !402, file: !3, line: 172, column: 27)
!412 = !DILocation(line: 173, column: 16, scope: !411)
!413 = !DILocation(line: 173, column: 25, scope: !411)
!414 = !DILocation(line: 173, column: 23, scope: !411)
!415 = !DILocation(line: 173, column: 37, scope: !411)
!416 = !DILocation(line: 173, column: 35, scope: !411)
!417 = !DILocation(line: 173, column: 9, scope: !411)
!418 = !DILocation(line: 174, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !411, file: !3, line: 174, column: 8)
!420 = !DILocation(line: 174, column: 13, scope: !419)
!421 = !DILocation(line: 174, column: 8, scope: !411)
!422 = !DILocation(line: 175, column: 15, scope: !419)
!423 = !DILocation(line: 175, column: 12, scope: !419)
!424 = !DILocation(line: 175, column: 5, scope: !419)
!425 = !DILocation(line: 176, column: 3, scope: !411)
!426 = !DILocation(line: 177, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !403, file: !3, line: 177, column: 7)
!428 = !DILocation(line: 177, column: 14, scope: !427)
!429 = !DILocation(line: 177, column: 7, scope: !403)
!430 = !DILocation(line: 178, column: 4, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 177, column: 19)
!432 = !DILocation(line: 179, column: 4, scope: !431)
!433 = !DILocation(line: 181, column: 32, scope: !403)
!434 = !DILocation(line: 181, column: 13, scope: !403)
!435 = !DILocation(line: 181, column: 11, scope: !403)
!436 = !DILocation(line: 182, column: 10, scope: !403)
!437 = !DILocation(line: 183, column: 10, scope: !403)
!438 = !DILocation(line: 186, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !403, file: !3, line: 186, column: 7)
!440 = !DILocation(line: 186, column: 15, scope: !439)
!441 = !DILocation(line: 186, column: 7, scope: !403)
!442 = !DILocation(line: 187, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 187, column: 8)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 186, column: 21)
!445 = !DILocation(line: 187, column: 8, scope: !444)
!446 = !DILocation(line: 188, column: 6, scope: !443)
!447 = !DILocation(line: 188, column: 11, scope: !443)
!448 = !DILocation(line: 188, column: 5, scope: !443)
!449 = !DILocation(line: 189, column: 4, scope: !444)
!450 = !DILocation(line: 192, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !403, file: !3, line: 192, column: 7)
!452 = !DILocation(line: 192, column: 15, scope: !451)
!453 = !DILocation(line: 192, column: 7, scope: !403)
!454 = !DILocation(line: 193, column: 4, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 192, column: 33)
!456 = !DILocation(line: 194, column: 4, scope: !455)
!457 = !DILocation(line: 198, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !403, file: !3, line: 198, column: 7)
!459 = !DILocation(line: 198, column: 12, scope: !458)
!460 = !DILocation(line: 198, column: 15, scope: !458)
!461 = !DILocation(line: 198, column: 22, scope: !458)
!462 = !DILocation(line: 198, column: 7, scope: !403)
!463 = !DILocation(line: 199, column: 11, scope: !464)
!464 = distinct !DILexicalBlock(scope: !458, file: !3, line: 198, column: 27)
!465 = !DILocation(line: 199, column: 16, scope: !464)
!466 = !DILocation(line: 199, column: 25, scope: !464)
!467 = !DILocation(line: 199, column: 23, scope: !464)
!468 = !DILocation(line: 199, column: 37, scope: !464)
!469 = !DILocation(line: 199, column: 35, scope: !464)
!470 = !DILocation(line: 199, column: 9, scope: !464)
!471 = !DILocation(line: 200, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !464, file: !3, line: 200, column: 8)
!473 = !DILocation(line: 200, column: 13, scope: !472)
!474 = !DILocation(line: 200, column: 8, scope: !464)
!475 = !DILocation(line: 201, column: 15, scope: !472)
!476 = !DILocation(line: 201, column: 12, scope: !472)
!477 = !DILocation(line: 201, column: 5, scope: !472)
!478 = !DILocation(line: 202, column: 3, scope: !464)
!479 = !DILocation(line: 203, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !403, file: !3, line: 203, column: 7)
!481 = !DILocation(line: 203, column: 14, scope: !480)
!482 = !DILocation(line: 203, column: 7, scope: !403)
!483 = !DILocation(line: 204, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !3, line: 203, column: 19)
!485 = !DILocation(line: 205, column: 4, scope: !484)
!486 = !DILocation(line: 207, column: 32, scope: !403)
!487 = !DILocation(line: 207, column: 13, scope: !403)
!488 = !DILocation(line: 207, column: 11, scope: !403)
!489 = !DILocation(line: 208, column: 10, scope: !403)
!490 = !DILocation(line: 209, column: 10, scope: !403)
!491 = !DILocation(line: 211, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !403, file: !3, line: 211, column: 7)
!493 = !DILocation(line: 211, column: 15, scope: !492)
!494 = !DILocation(line: 211, column: 20, scope: !492)
!495 = !DILocation(line: 211, column: 23, scope: !492)
!496 = !DILocation(line: 211, column: 33, scope: !492)
!497 = !DILocation(line: 211, column: 31, scope: !492)
!498 = !DILocation(line: 211, column: 7, scope: !403)
!499 = !DILocation(line: 212, column: 4, scope: !500)
!500 = distinct !DILexicalBlock(scope: !492, file: !3, line: 211, column: 42)
!501 = !DILocation(line: 213, column: 4, scope: !500)
!502 = !DILocation(line: 217, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !403, file: !3, line: 217, column: 7)
!504 = !DILocation(line: 217, column: 12, scope: !503)
!505 = !DILocation(line: 217, column: 15, scope: !503)
!506 = !DILocation(line: 217, column: 24, scope: !503)
!507 = !DILocation(line: 217, column: 22, scope: !503)
!508 = !DILocation(line: 217, column: 7, scope: !403)
!509 = !DILocation(line: 218, column: 11, scope: !510)
!510 = distinct !DILexicalBlock(scope: !503, file: !3, line: 217, column: 33)
!511 = !DILocation(line: 218, column: 16, scope: !510)
!512 = !DILocation(line: 218, column: 25, scope: !510)
!513 = !DILocation(line: 218, column: 23, scope: !510)
!514 = !DILocation(line: 218, column: 33, scope: !510)
!515 = !DILocation(line: 218, column: 43, scope: !510)
!516 = !DILocation(line: 218, column: 41, scope: !510)
!517 = !DILocation(line: 218, column: 9, scope: !510)
!518 = !DILocation(line: 219, column: 8, scope: !519)
!519 = distinct !DILexicalBlock(scope: !510, file: !3, line: 219, column: 8)
!520 = !DILocation(line: 219, column: 13, scope: !519)
!521 = !DILocation(line: 219, column: 8, scope: !510)
!522 = !DILocation(line: 220, column: 15, scope: !519)
!523 = !DILocation(line: 220, column: 12, scope: !519)
!524 = !DILocation(line: 220, column: 5, scope: !519)
!525 = !DILocation(line: 221, column: 3, scope: !510)
!526 = !DILocation(line: 222, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !403, file: !3, line: 222, column: 7)
!528 = !DILocation(line: 222, column: 16, scope: !527)
!529 = !DILocation(line: 222, column: 14, scope: !527)
!530 = !DILocation(line: 222, column: 7, scope: !403)
!531 = !DILocation(line: 223, column: 4, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !3, line: 222, column: 25)
!533 = !DILocation(line: 224, column: 4, scope: !532)
!534 = !DILocation(line: 226, column: 9, scope: !403)
!535 = !DILocation(line: 226, column: 7, scope: !403)
!536 = !DILocation(line: 231, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !403, file: !3, line: 231, column: 7)
!538 = !DILocation(line: 231, column: 7, scope: !403)
!539 = !DILocation(line: 232, column: 11, scope: !537)
!540 = !DILocation(line: 232, column: 20, scope: !537)
!541 = !DILocation(line: 232, column: 28, scope: !537)
!542 = !DILocation(line: 232, column: 4, scope: !537)
!543 = !DILocation(line: 234, column: 37, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !3, line: 233, column: 8)
!545 = !DILocation(line: 234, column: 45, scope: !544)
!546 = !DILocation(line: 235, column: 7, scope: !544)
!547 = !DILocation(line: 234, column: 8, scope: !544)
!548 = !DILocation(line: 234, column: 6, scope: !544)
!549 = !DILocation(line: 237, column: 8, scope: !550)
!550 = distinct !DILexicalBlock(scope: !544, file: !3, line: 237, column: 8)
!551 = !DILocation(line: 237, column: 10, scope: !550)
!552 = !DILocation(line: 237, column: 22, scope: !550)
!553 = !DILocation(line: 237, column: 25, scope: !550)
!554 = !DILocation(line: 237, column: 36, scope: !550)
!555 = !DILocation(line: 237, column: 33, scope: !550)
!556 = !DILocation(line: 237, column: 8, scope: !544)
!557 = !DILocation(line: 238, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !550, file: !3, line: 237, column: 41)
!559 = !DILocation(line: 239, column: 5, scope: !558)
!560 = !DILocation(line: 243, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !403, file: !3, line: 243, column: 7)
!562 = !DILocation(line: 243, column: 13, scope: !561)
!563 = !DILocation(line: 243, column: 16, scope: !561)
!564 = !DILocation(line: 243, column: 22, scope: !561)
!565 = !DILocation(line: 243, column: 31, scope: !561)
!566 = !DILocation(line: 243, column: 43, scope: !561)
!567 = !DILocation(line: 243, column: 40, scope: !561)
!568 = !DILocation(line: 243, column: 7, scope: !403)
!569 = !DILocation(line: 244, column: 4, scope: !561)
!570 = !DILocation(line: 245, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !403, file: !3, line: 245, column: 7)
!572 = !DILocation(line: 245, column: 7, scope: !403)
!573 = !DILocation(line: 246, column: 15, scope: !571)
!574 = !DILocation(line: 246, column: 12, scope: !571)
!575 = !DILocation(line: 246, column: 4, scope: !571)
!576 = !DILocation(line: 247, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !403, file: !3, line: 247, column: 7)
!578 = !DILocation(line: 247, column: 7, scope: !403)
!579 = !DILocation(line: 248, column: 13, scope: !577)
!580 = !DILocation(line: 248, column: 21, scope: !577)
!581 = !DILocation(line: 248, column: 5, scope: !577)
!582 = !DILocation(line: 248, column: 10, scope: !577)
!583 = !DILocation(line: 248, column: 4, scope: !577)
!584 = !DILocation(line: 250, column: 13, scope: !403)
!585 = !DILocation(line: 250, column: 10, scope: !403)
!586 = !DILocation(line: 251, column: 13, scope: !403)
!587 = !DILocation(line: 251, column: 10, scope: !403)
!588 = !DILocation(line: 252, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !403, file: !3, line: 252, column: 7)
!590 = !DILocation(line: 252, column: 7, scope: !403)
!591 = !DILocation(line: 258, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 258, column: 8)
!593 = distinct !DILexicalBlock(scope: !589, file: !3, line: 252, column: 13)
!594 = !DILocation(line: 258, column: 15, scope: !592)
!595 = !DILocation(line: 258, column: 8, scope: !593)
!596 = !DILocation(line: 259, column: 15, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !3, line: 259, column: 5)
!598 = !DILocation(line: 259, column: 10, scope: !597)
!599 = !DILocation(line: 259, column: 20, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 259, column: 5)
!601 = !DILocation(line: 259, column: 27, scope: !600)
!602 = !DILocation(line: 259, column: 25, scope: !600)
!603 = !DILocation(line: 259, column: 5, scope: !597)
!604 = !DILocation(line: 260, column: 26, scope: !600)
!605 = !DILocation(line: 260, column: 33, scope: !600)
!606 = !DILocation(line: 260, column: 6, scope: !600)
!607 = !DILocation(line: 260, column: 18, scope: !600)
!608 = !DILocation(line: 260, column: 24, scope: !600)
!609 = !DILocation(line: 259, column: 35, scope: !600)
!610 = !DILocation(line: 259, column: 5, scope: !600)
!611 = distinct !{!611, !603, !612, !180, !181}
!612 = !DILocation(line: 260, column: 37, scope: !597)
!613 = !DILocation(line: 261, column: 13, scope: !593)
!614 = !DILocation(line: 261, column: 11, scope: !593)
!615 = !DILocation(line: 262, column: 3, scope: !593)
!616 = !DILocation(line: 170, column: 2, scope: !404)
!617 = distinct !{!617, !618, !619, !181}
!618 = !DILocation(line: 170, column: 2, scope: !405)
!619 = !DILocation(line: 263, column: 2, scope: !405)
!620 = !DILocation(line: 265, column: 6, scope: !244)
!621 = !DILocation(line: 265, column: 2, scope: !244)
!622 = !DILocation(line: 266, column: 1, scope: !244)
!623 = !DILocation(line: 267, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !244, file: !3, line: 267, column: 6)
!625 = !DILocation(line: 267, column: 6, scope: !244)
!626 = !DILocation(line: 268, column: 3, scope: !624)
!627 = !DILocation(line: 269, column: 1, scope: !244)
!628 = !DILocation(line: 270, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !244, file: !3, line: 270, column: 6)
!630 = !DILocation(line: 270, column: 6, scope: !244)
!631 = !DILocation(line: 271, column: 3, scope: !629)
!632 = !DILocation(line: 272, column: 1, scope: !244)
!633 = !DILocation(line: 273, column: 9, scope: !244)
!634 = !DILocation(line: 274, column: 1, scope: !244)
!635 = !DILocation(line: 273, column: 2, scope: !244)
!636 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !637, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!250, !268, !22}
!639 = !{!640, !641, !642}
!640 = !DILocalVariable(name: "size", arg: 1, scope: !636, file: !12, line: 591, type: !268)
!641 = !DILocalVariable(name: "flags", arg: 2, scope: !636, file: !12, line: 591, type: !22)
!642 = !DILocalVariable(name: "index", scope: !643, file: !12, line: 594, type: !7)
!643 = distinct !DILexicalBlock(scope: !644, file: !12, line: 593, column: 42)
!644 = distinct !DILexicalBlock(scope: !636, file: !12, line: 593, column: 6)
!645 = !DILocation(line: 591, column: 61, scope: !636)
!646 = !DILocation(line: 591, column: 73, scope: !636)
!647 = !DILocation(line: 593, column: 27, scope: !644)
!648 = !DILocation(line: 593, column: 6, scope: !644)
!649 = !DILocation(line: 593, column: 33, scope: !644)
!650 = !DILocation(line: 593, column: 36, scope: !644)
!651 = !DILocation(line: 593, column: 6, scope: !636)
!652 = !DILocation(line: 594, column: 3, scope: !643)
!653 = !DILocation(line: 594, column: 16, scope: !643)
!654 = !DILocation(line: 596, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !643, file: !12, line: 596, column: 7)
!656 = !DILocation(line: 596, column: 12, scope: !655)
!657 = !DILocation(line: 596, column: 7, scope: !643)
!658 = !DILocation(line: 597, column: 25, scope: !655)
!659 = !DILocation(line: 597, column: 31, scope: !655)
!660 = !DILocation(line: 597, column: 11, scope: !655)
!661 = !DILocation(line: 597, column: 4, scope: !655)
!662 = !DILocation(line: 599, column: 11, scope: !643)
!663 = !DILocation(line: 599, column: 9, scope: !643)
!664 = !DILocation(line: 601, column: 33, scope: !643)
!665 = !DILocation(line: 601, column: 40, scope: !643)
!666 = !DILocation(line: 601, column: 20, scope: !643)
!667 = !DILocation(line: 601, column: 5, scope: !643)
!668 = !DILocation(line: 601, column: 51, scope: !643)
!669 = !DILocation(line: 602, column: 5, scope: !643)
!670 = !DILocation(line: 602, column: 12, scope: !643)
!671 = !DILocation(line: 600, column: 10, scope: !643)
!672 = !DILocation(line: 600, column: 3, scope: !643)
!673 = !DILocation(line: 603, column: 2, scope: !644)
!674 = !DILocation(line: 604, column: 19, scope: !636)
!675 = !DILocation(line: 604, column: 25, scope: !636)
!676 = !DILocation(line: 604, column: 9, scope: !636)
!677 = !DILocation(line: 604, column: 2, scope: !636)
!678 = !DILocation(line: 605, column: 1, scope: !636)
!679 = !DISubprogram(name: "lzo1x_decompress_safe", scope: !680, file: !680, line: 32, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DIFile(filename: "./include/linux/lzo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e6fbf97dbc9c3c67b2aac6858c0183a")
!681 = !DISubroutineType(types: !682)
!682 = !{!135, !683, !268, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!686 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !42}
!689 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !691, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!691 = !DISubroutineType(types: !692)
!692 = !{!7, !268, !693}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !694)
!694 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!695 = !{!696, !697}
!696 = !DILocalVariable(name: "size", arg: 1, scope: !690, file: !12, line: 444, type: !268)
!697 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !690, file: !12, line: 445, type: !693)
!698 = !DILocation(line: 444, column: 60, scope: !690)
!699 = !DILocation(line: 445, column: 16, scope: !690)
!700 = !DILocation(line: 447, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !690, file: !12, line: 447, column: 6)
!702 = !DILocation(line: 447, column: 6, scope: !690)
!703 = !DILocation(line: 448, column: 3, scope: !701)
!704 = !DILocation(line: 450, column: 6, scope: !705)
!705 = distinct !DILexicalBlock(scope: !690, file: !12, line: 450, column: 6)
!706 = !DILocation(line: 450, column: 11, scope: !705)
!707 = !DILocation(line: 450, column: 6, scope: !690)
!708 = !DILocation(line: 451, column: 3, scope: !705)
!709 = !DILocation(line: 453, column: 32, scope: !710)
!710 = distinct !DILexicalBlock(scope: !690, file: !12, line: 453, column: 6)
!711 = !DILocation(line: 453, column: 37, scope: !710)
!712 = !DILocation(line: 453, column: 42, scope: !710)
!713 = !DILocation(line: 453, column: 45, scope: !710)
!714 = !DILocation(line: 453, column: 50, scope: !710)
!715 = !DILocation(line: 453, column: 6, scope: !690)
!716 = !DILocation(line: 454, column: 3, scope: !710)
!717 = !DILocation(line: 455, column: 32, scope: !718)
!718 = distinct !DILexicalBlock(scope: !690, file: !12, line: 455, column: 6)
!719 = !DILocation(line: 455, column: 37, scope: !718)
!720 = !DILocation(line: 455, column: 43, scope: !718)
!721 = !DILocation(line: 455, column: 46, scope: !718)
!722 = !DILocation(line: 455, column: 51, scope: !718)
!723 = !DILocation(line: 455, column: 6, scope: !690)
!724 = !DILocation(line: 456, column: 3, scope: !718)
!725 = !DILocation(line: 457, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !690, file: !12, line: 457, column: 6)
!727 = !DILocation(line: 457, column: 11, scope: !726)
!728 = !DILocation(line: 457, column: 6, scope: !690)
!729 = !DILocation(line: 457, column: 26, scope: !726)
!730 = !DILocation(line: 458, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !690, file: !12, line: 458, column: 6)
!732 = !DILocation(line: 458, column: 11, scope: !731)
!733 = !DILocation(line: 458, column: 6, scope: !690)
!734 = !DILocation(line: 458, column: 26, scope: !731)
!735 = !DILocation(line: 459, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !690, file: !12, line: 459, column: 6)
!737 = !DILocation(line: 459, column: 11, scope: !736)
!738 = !DILocation(line: 459, column: 6, scope: !690)
!739 = !DILocation(line: 459, column: 26, scope: !736)
!740 = !DILocation(line: 460, column: 6, scope: !741)
!741 = distinct !DILexicalBlock(scope: !690, file: !12, line: 460, column: 6)
!742 = !DILocation(line: 460, column: 11, scope: !741)
!743 = !DILocation(line: 460, column: 6, scope: !690)
!744 = !DILocation(line: 460, column: 26, scope: !741)
!745 = !DILocation(line: 461, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !690, file: !12, line: 461, column: 6)
!747 = !DILocation(line: 461, column: 11, scope: !746)
!748 = !DILocation(line: 461, column: 6, scope: !690)
!749 = !DILocation(line: 461, column: 26, scope: !746)
!750 = !DILocation(line: 462, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !690, file: !12, line: 462, column: 6)
!752 = !DILocation(line: 462, column: 11, scope: !751)
!753 = !DILocation(line: 462, column: 6, scope: !690)
!754 = !DILocation(line: 462, column: 26, scope: !751)
!755 = !DILocation(line: 463, column: 6, scope: !756)
!756 = distinct !DILexicalBlock(scope: !690, file: !12, line: 463, column: 6)
!757 = !DILocation(line: 463, column: 11, scope: !756)
!758 = !DILocation(line: 463, column: 6, scope: !690)
!759 = !DILocation(line: 463, column: 26, scope: !756)
!760 = !DILocation(line: 464, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !690, file: !12, line: 464, column: 6)
!762 = !DILocation(line: 464, column: 11, scope: !761)
!763 = !DILocation(line: 464, column: 6, scope: !690)
!764 = !DILocation(line: 464, column: 26, scope: !761)
!765 = !DILocation(line: 465, column: 6, scope: !766)
!766 = distinct !DILexicalBlock(scope: !690, file: !12, line: 465, column: 6)
!767 = !DILocation(line: 465, column: 11, scope: !766)
!768 = !DILocation(line: 465, column: 6, scope: !690)
!769 = !DILocation(line: 465, column: 26, scope: !766)
!770 = !DILocation(line: 466, column: 6, scope: !771)
!771 = distinct !DILexicalBlock(scope: !690, file: !12, line: 466, column: 6)
!772 = !DILocation(line: 466, column: 11, scope: !771)
!773 = !DILocation(line: 466, column: 6, scope: !690)
!774 = !DILocation(line: 466, column: 26, scope: !771)
!775 = !DILocation(line: 467, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !690, file: !12, line: 467, column: 6)
!777 = !DILocation(line: 467, column: 11, scope: !776)
!778 = !DILocation(line: 467, column: 6, scope: !690)
!779 = !DILocation(line: 467, column: 26, scope: !776)
!780 = !DILocation(line: 468, column: 6, scope: !781)
!781 = distinct !DILexicalBlock(scope: !690, file: !12, line: 468, column: 6)
!782 = !DILocation(line: 468, column: 11, scope: !781)
!783 = !DILocation(line: 468, column: 6, scope: !690)
!784 = !DILocation(line: 468, column: 26, scope: !781)
!785 = !DILocation(line: 469, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !690, file: !12, line: 469, column: 6)
!787 = !DILocation(line: 469, column: 11, scope: !786)
!788 = !DILocation(line: 469, column: 6, scope: !690)
!789 = !DILocation(line: 469, column: 26, scope: !786)
!790 = !DILocation(line: 470, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !690, file: !12, line: 470, column: 6)
!792 = !DILocation(line: 470, column: 11, scope: !791)
!793 = !DILocation(line: 470, column: 6, scope: !690)
!794 = !DILocation(line: 470, column: 26, scope: !791)
!795 = !DILocation(line: 471, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !690, file: !12, line: 471, column: 6)
!797 = !DILocation(line: 471, column: 11, scope: !796)
!798 = !DILocation(line: 471, column: 6, scope: !690)
!799 = !DILocation(line: 471, column: 26, scope: !796)
!800 = !DILocation(line: 472, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !690, file: !12, line: 472, column: 6)
!802 = !DILocation(line: 472, column: 11, scope: !801)
!803 = !DILocation(line: 472, column: 6, scope: !690)
!804 = !DILocation(line: 472, column: 26, scope: !801)
!805 = !DILocation(line: 473, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !690, file: !12, line: 473, column: 6)
!807 = !DILocation(line: 473, column: 11, scope: !806)
!808 = !DILocation(line: 473, column: 6, scope: !690)
!809 = !DILocation(line: 473, column: 26, scope: !806)
!810 = !DILocation(line: 474, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !690, file: !12, line: 474, column: 6)
!812 = !DILocation(line: 474, column: 11, scope: !811)
!813 = !DILocation(line: 474, column: 6, scope: !690)
!814 = !DILocation(line: 474, column: 27, scope: !811)
!815 = !DILocation(line: 475, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !690, file: !12, line: 475, column: 6)
!817 = !DILocation(line: 475, column: 11, scope: !816)
!818 = !DILocation(line: 475, column: 6, scope: !690)
!819 = !DILocation(line: 475, column: 32, scope: !816)
!820 = !DILocation(line: 477, column: 50, scope: !821)
!821 = distinct !DILexicalBlock(scope: !690, file: !12, line: 477, column: 6)
!822 = !{i8 0, i8 2}
!823 = !{}
!824 = !DILocation(line: 477, column: 6, scope: !690)
!825 = !DILocation(line: 478, column: 3, scope: !821)
!826 = !DILocation(line: 478, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !12, line: 478, column: 3)
!828 = distinct !DILexicalBlock(scope: !821, file: !12, line: 478, column: 3)
!829 = !{i32 -2141714597}
!830 = !DILocation(line: 478, column: 3, scope: !828)
!831 = !DILocation(line: 480, column: 3, scope: !821)
!832 = !DILocation(line: 480, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !821, file: !12, line: 480, column: 3)
!834 = !DILocation(line: 480, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !833, file: !12, line: 480, column: 3)
!836 = !DILocation(line: 480, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !12, line: 480, column: 3)
!838 = !{i64 2153252902, i64 2153252931, i64 2153252977, i64 2153253035, i64 2153253089, i64 2153253143, i64 2153253198, i64 2153253229}
!839 = !DILocation(line: 483, column: 2, scope: !690)
!840 = !DILocation(line: 484, column: 1, scope: !690)
!841 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!842 = !DISubroutineType(types: !843)
!843 = !{!250, !844, !22, !268}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !846, line: 325, flags: DIFlagFwdDecl)
!846 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!847 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !848, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!11, !22, !65}
!850 = !{!851, !852}
!851 = !DILocalVariable(name: "flags", arg: 1, scope: !847, file: !12, line: 401, type: !22)
!852 = !DILocalVariable(name: "caller", arg: 2, scope: !847, file: !12, line: 401, type: !65)
!853 = !DILocation(line: 401, column: 67, scope: !847)
!854 = !DILocation(line: 401, column: 88, scope: !847)
!855 = !DILocation(line: 407, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !847, file: !12, line: 407, column: 6)
!857 = !DILocation(line: 407, column: 6, scope: !847)
!858 = !DILocation(line: 413, column: 3, scope: !856)
!859 = !DILocation(line: 423, column: 38, scope: !860)
!860 = distinct !DILexicalBlock(scope: !847, file: !12, line: 423, column: 6)
!861 = !DILocation(line: 423, column: 44, scope: !860)
!862 = !DILocation(line: 423, column: 6, scope: !847)
!863 = !DILocation(line: 424, column: 3, scope: !860)
!864 = !DILocation(line: 426, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !847, file: !12, line: 425, column: 6)
!866 = !DILocation(line: 429, column: 1, scope: !847)
!867 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DISubprogram(name: "__compiletime_assert_245", scope: !12, file: !12, line: 478, type: !869, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!869 = !DISubroutineType(types: !870)
!870 = !{null}
