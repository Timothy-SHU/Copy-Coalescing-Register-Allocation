; ModuleID = 'net/mac80211/michael.c'
source_filename = "net/mac80211/michael.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.michael_mic_ctx = type { i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, %union.anon, i16, [6 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { [6 x i8], [6 x i8], [6 x i8] }
%struct.anon.3 = type { i32 }
%struct.anon.4 = type { i32 }
%struct.anon.2 = type { i16 }
%struct.ieee80211_qos_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16 }
%struct.ieee80211_qos_hdr_4addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @michael_mic(ptr noundef %key, ptr noundef %hdr, ptr noundef %data, i64 noundef %data_len, ptr noundef %mic) #0 align 16 !dbg !67 {
entry:
  %key.addr = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca i64, align 8
  %mic.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %block = alloca i64, align 8
  %blocks = alloca i64, align 8
  %left = alloca i64, align 8
  %mctx = alloca %struct.michael_mic_ctx, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !105, metadata !DIExpression()), !dbg !120
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !106, metadata !DIExpression()), !dbg !121
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !107, metadata !DIExpression()), !dbg !122
  store i64 %data_len, ptr %data_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_len.addr, metadata !108, metadata !DIExpression()), !dbg !123
  store ptr %mic, ptr %mic.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mic.addr, metadata !109, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #4, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %val, metadata !110, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %block, metadata !111, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocks) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %blocks, metadata !112, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %left, metadata !113, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #4, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %mctx, metadata !114, metadata !DIExpression()), !dbg !132
  %0 = load ptr, ptr %key.addr, align 8, !dbg !133
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !134
  call void @michael_mic_hdr(ptr noundef %mctx, ptr noundef %0, ptr noundef %1) #5, !dbg !135
  %2 = load i64, ptr %data_len.addr, align 8, !dbg !136
  %div = udiv i64 %2, 4, !dbg !137
  store i64 %div, ptr %blocks, align 8, !dbg !138
  %3 = load i64, ptr %data_len.addr, align 8, !dbg !139
  %rem = urem i64 %3, 4, !dbg !140
  store i64 %rem, ptr %left, align 8, !dbg !141
  store i64 0, ptr %block, align 8, !dbg !142
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %block, align 8, !dbg !145
  %5 = load i64, ptr %blocks, align 8, !dbg !147
  %cmp = icmp ult i64 %4, %5, !dbg !148
  br i1 %cmp, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %data.addr, align 8, !dbg !150
  %7 = load i64, ptr %block, align 8, !dbg !151
  %mul = mul i64 %7, 4, !dbg !152
  %arrayidx = getelementptr i8, ptr %6, i64 %mul, !dbg !150
  %call = call i32 @get_unaligned_le32(ptr noundef %arrayidx) #5, !dbg !153
  call void @michael_block(ptr noundef %mctx, i32 noundef %call) #5, !dbg !154
  br label %for.inc, !dbg !154

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %block, align 8, !dbg !155
  %inc = add i64 %8, 1, !dbg !155
  store i64 %inc, ptr %block, align 8, !dbg !155
  br label %for.cond, !dbg !156, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  store i32 90, ptr %val, align 4, !dbg !161
  br label %while.cond, !dbg !162

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load i64, ptr %left, align 8, !dbg !163
  %cmp1 = icmp ugt i64 %9, 0, !dbg !164
  br i1 %cmp1, label %while.body, label %while.end, !dbg !162

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %val, align 4, !dbg !165
  %shl = shl i32 %10, 8, !dbg !165
  store i32 %shl, ptr %val, align 4, !dbg !165
  %11 = load i64, ptr %left, align 8, !dbg !167
  %dec = add i64 %11, -1, !dbg !167
  store i64 %dec, ptr %left, align 8, !dbg !167
  %12 = load ptr, ptr %data.addr, align 8, !dbg !168
  %13 = load i64, ptr %blocks, align 8, !dbg !169
  %mul2 = mul i64 %13, 4, !dbg !170
  %14 = load i64, ptr %left, align 8, !dbg !171
  %add = add i64 %mul2, %14, !dbg !172
  %arrayidx3 = getelementptr i8, ptr %12, i64 %add, !dbg !168
  %15 = load i8, ptr %arrayidx3, align 1, !dbg !168
  %conv = zext i8 %15 to i32, !dbg !168
  %16 = load i32, ptr %val, align 4, !dbg !173
  %or = or i32 %16, %conv, !dbg !173
  store i32 %or, ptr %val, align 4, !dbg !173
  br label %while.cond, !dbg !162, !llvm.loop !174

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr %val, align 4, !dbg !176
  call void @michael_block(ptr noundef %mctx, i32 noundef %17) #5, !dbg !177
  call void @michael_block(ptr noundef %mctx, i32 noundef 0) #5, !dbg !178
  %l = getelementptr inbounds %struct.michael_mic_ctx, ptr %mctx, i32 0, i32 0, !dbg !179
  %18 = load i32, ptr %l, align 4, !dbg !179
  %19 = load ptr, ptr %mic.addr, align 8, !dbg !180
  call void @put_unaligned_le32(i32 noundef %18, ptr noundef %19) #5, !dbg !181
  %r = getelementptr inbounds %struct.michael_mic_ctx, ptr %mctx, i32 0, i32 1, !dbg !182
  %20 = load i32, ptr %r, align 4, !dbg !182
  %21 = load ptr, ptr %mic.addr, align 8, !dbg !183
  %add.ptr = getelementptr i8, ptr %21, i64 4, !dbg !184
  call void @put_unaligned_le32(i32 noundef %20, ptr noundef %add.ptr) #5, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #4, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocks) #4, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #4, !dbg !186
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #4, !dbg !186
  ret void, !dbg !186
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @michael_mic_hdr(ptr noundef %mctx, ptr noundef %key, ptr noundef %hdr) #0 align 16 !dbg !187 {
entry:
  %mctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %da = alloca ptr, align 8
  %sa = alloca ptr, align 8
  %tid = alloca i8, align 1
  store ptr %mctx, ptr %mctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !192, metadata !DIExpression()), !dbg !198
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !193, metadata !DIExpression()), !dbg !199
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !194, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 8, ptr %da) #4, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %da, metadata !195, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #4, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %sa, metadata !196, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 1, ptr %tid) #4, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %tid, metadata !197, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !205
  %call = call ptr @ieee80211_get_DA(ptr noundef %0) #5, !dbg !206
  store ptr %call, ptr %da, align 8, !dbg !207
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !208
  %call1 = call ptr @ieee80211_get_SA(ptr noundef %1) #5, !dbg !209
  store ptr %call1, ptr %sa, align 8, !dbg !210
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !211
  %frame_control = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 0, !dbg !213
  %3 = load i16, ptr %frame_control, align 2, !dbg !213
  %call2 = call zeroext i1 @ieee80211_is_data_qos(i16 noundef zeroext %3) #5, !dbg !214
  br i1 %call2, label %if.then, label %if.else, !dbg !215

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !216
  %call3 = call zeroext i8 @ieee80211_get_tid(ptr noundef %4) #5, !dbg !217
  store i8 %call3, ptr %tid, align 1, !dbg !218
  br label %if.end, !dbg !219

if.else:                                          ; preds = %entry
  store i8 0, ptr %tid, align 1, !dbg !220
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %key.addr, align 8, !dbg !221
  %call4 = call i32 @get_unaligned_le32(ptr noundef %5) #5, !dbg !222
  %6 = load ptr, ptr %mctx.addr, align 8, !dbg !223
  %l = getelementptr inbounds %struct.michael_mic_ctx, ptr %6, i32 0, i32 0, !dbg !224
  store i32 %call4, ptr %l, align 4, !dbg !225
  %7 = load ptr, ptr %key.addr, align 8, !dbg !226
  %add.ptr = getelementptr i8, ptr %7, i64 4, !dbg !227
  %call5 = call i32 @get_unaligned_le32(ptr noundef %add.ptr) #5, !dbg !228
  %8 = load ptr, ptr %mctx.addr, align 8, !dbg !229
  %r = getelementptr inbounds %struct.michael_mic_ctx, ptr %8, i32 0, i32 1, !dbg !230
  store i32 %call5, ptr %r, align 4, !dbg !231
  %9 = load ptr, ptr %mctx.addr, align 8, !dbg !232
  %10 = load ptr, ptr %da, align 8, !dbg !233
  %call6 = call i32 @get_unaligned_le32(ptr noundef %10) #5, !dbg !234
  call void @michael_block(ptr noundef %9, i32 noundef %call6) #5, !dbg !235
  %11 = load ptr, ptr %mctx.addr, align 8, !dbg !236
  %12 = load ptr, ptr %da, align 8, !dbg !237
  %arrayidx = getelementptr i8, ptr %12, i64 4, !dbg !237
  %call7 = call zeroext i16 @get_unaligned_le16(ptr noundef %arrayidx) #5, !dbg !238
  %conv = zext i16 %call7 to i32, !dbg !238
  %13 = load ptr, ptr %sa, align 8, !dbg !239
  %call8 = call zeroext i16 @get_unaligned_le16(ptr noundef %13) #5, !dbg !240
  %conv9 = zext i16 %call8 to i32, !dbg !240
  %shl = shl i32 %conv9, 16, !dbg !241
  %or = or i32 %conv, %shl, !dbg !242
  call void @michael_block(ptr noundef %11, i32 noundef %or) #5, !dbg !243
  %14 = load ptr, ptr %mctx.addr, align 8, !dbg !244
  %15 = load ptr, ptr %sa, align 8, !dbg !245
  %arrayidx10 = getelementptr i8, ptr %15, i64 2, !dbg !245
  %call11 = call i32 @get_unaligned_le32(ptr noundef %arrayidx10) #5, !dbg !246
  call void @michael_block(ptr noundef %14, i32 noundef %call11) #5, !dbg !247
  %16 = load ptr, ptr %mctx.addr, align 8, !dbg !248
  %17 = load i8, ptr %tid, align 1, !dbg !249
  %conv12 = zext i8 %17 to i32, !dbg !249
  call void @michael_block(ptr noundef %16, i32 noundef %conv12) #5, !dbg !250
  call void @llvm.lifetime.end.p0(i64 1, ptr %tid) #4, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #4, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr %da) #4, !dbg !251
  ret void, !dbg !251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @michael_block(ptr noundef %mctx, i32 noundef %val) #0 align 16 !dbg !252 {
entry:
  %mctx.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %mctx, ptr %mctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !256, metadata !DIExpression()), !dbg !258
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !257, metadata !DIExpression()), !dbg !259
  %0 = load i32, ptr %val.addr, align 4, !dbg !260
  %1 = load ptr, ptr %mctx.addr, align 8, !dbg !261
  %l = getelementptr inbounds %struct.michael_mic_ctx, ptr %1, i32 0, i32 0, !dbg !262
  %2 = load i32, ptr %l, align 4, !dbg !263
  %xor = xor i32 %2, %0, !dbg !263
  store i32 %xor, ptr %l, align 4, !dbg !263
  %3 = load ptr, ptr %mctx.addr, align 8, !dbg !264
  %l1 = getelementptr inbounds %struct.michael_mic_ctx, ptr %3, i32 0, i32 0, !dbg !265
  %4 = load i32, ptr %l1, align 4, !dbg !265
  %call = call i32 @rol32(i32 noundef %4, i32 noundef 17) #5, !dbg !266
  %5 = load ptr, ptr %mctx.addr, align 8, !dbg !267
  %r = getelementptr inbounds %struct.michael_mic_ctx, ptr %5, i32 0, i32 1, !dbg !268
  %6 = load i32, ptr %r, align 4, !dbg !269
  %xor2 = xor i32 %6, %call, !dbg !269
  store i32 %xor2, ptr %r, align 4, !dbg !269
  %7 = load ptr, ptr %mctx.addr, align 8, !dbg !270
  %r3 = getelementptr inbounds %struct.michael_mic_ctx, ptr %7, i32 0, i32 1, !dbg !271
  %8 = load i32, ptr %r3, align 4, !dbg !271
  %9 = load ptr, ptr %mctx.addr, align 8, !dbg !272
  %l4 = getelementptr inbounds %struct.michael_mic_ctx, ptr %9, i32 0, i32 0, !dbg !273
  %10 = load i32, ptr %l4, align 4, !dbg !274
  %add = add i32 %10, %8, !dbg !274
  store i32 %add, ptr %l4, align 4, !dbg !274
  %11 = load ptr, ptr %mctx.addr, align 8, !dbg !275
  %l5 = getelementptr inbounds %struct.michael_mic_ctx, ptr %11, i32 0, i32 0, !dbg !276
  %12 = load i32, ptr %l5, align 4, !dbg !276
  %and = and i32 %12, -16711936, !dbg !277
  %shr = lshr i32 %and, 8, !dbg !278
  %13 = load ptr, ptr %mctx.addr, align 8, !dbg !279
  %l6 = getelementptr inbounds %struct.michael_mic_ctx, ptr %13, i32 0, i32 0, !dbg !280
  %14 = load i32, ptr %l6, align 4, !dbg !280
  %and7 = and i32 %14, 16711935, !dbg !281
  %shl = shl i32 %and7, 8, !dbg !282
  %or = or i32 %shr, %shl, !dbg !283
  %15 = load ptr, ptr %mctx.addr, align 8, !dbg !284
  %r8 = getelementptr inbounds %struct.michael_mic_ctx, ptr %15, i32 0, i32 1, !dbg !285
  %16 = load i32, ptr %r8, align 4, !dbg !286
  %xor9 = xor i32 %16, %or, !dbg !286
  store i32 %xor9, ptr %r8, align 4, !dbg !286
  %17 = load ptr, ptr %mctx.addr, align 8, !dbg !287
  %r10 = getelementptr inbounds %struct.michael_mic_ctx, ptr %17, i32 0, i32 1, !dbg !288
  %18 = load i32, ptr %r10, align 4, !dbg !288
  %19 = load ptr, ptr %mctx.addr, align 8, !dbg !289
  %l11 = getelementptr inbounds %struct.michael_mic_ctx, ptr %19, i32 0, i32 0, !dbg !290
  %20 = load i32, ptr %l11, align 4, !dbg !291
  %add12 = add i32 %20, %18, !dbg !291
  store i32 %add12, ptr %l11, align 4, !dbg !291
  %21 = load ptr, ptr %mctx.addr, align 8, !dbg !292
  %l13 = getelementptr inbounds %struct.michael_mic_ctx, ptr %21, i32 0, i32 0, !dbg !293
  %22 = load i32, ptr %l13, align 4, !dbg !293
  %call14 = call i32 @rol32(i32 noundef %22, i32 noundef 3) #5, !dbg !294
  %23 = load ptr, ptr %mctx.addr, align 8, !dbg !295
  %r15 = getelementptr inbounds %struct.michael_mic_ctx, ptr %23, i32 0, i32 1, !dbg !296
  %24 = load i32, ptr %r15, align 4, !dbg !297
  %xor16 = xor i32 %24, %call14, !dbg !297
  store i32 %xor16, ptr %r15, align 4, !dbg !297
  %25 = load ptr, ptr %mctx.addr, align 8, !dbg !298
  %r17 = getelementptr inbounds %struct.michael_mic_ctx, ptr %25, i32 0, i32 1, !dbg !299
  %26 = load i32, ptr %r17, align 4, !dbg !299
  %27 = load ptr, ptr %mctx.addr, align 8, !dbg !300
  %l18 = getelementptr inbounds %struct.michael_mic_ctx, ptr %27, i32 0, i32 0, !dbg !301
  %28 = load i32, ptr %l18, align 4, !dbg !302
  %add19 = add i32 %28, %26, !dbg !302
  store i32 %add19, ptr %l18, align 4, !dbg !302
  %29 = load ptr, ptr %mctx.addr, align 8, !dbg !303
  %l20 = getelementptr inbounds %struct.michael_mic_ctx, ptr %29, i32 0, i32 0, !dbg !304
  %30 = load i32, ptr %l20, align 4, !dbg !304
  %call21 = call i32 @ror32(i32 noundef %30, i32 noundef 2) #5, !dbg !305
  %31 = load ptr, ptr %mctx.addr, align 8, !dbg !306
  %r22 = getelementptr inbounds %struct.michael_mic_ctx, ptr %31, i32 0, i32 1, !dbg !307
  %32 = load i32, ptr %r22, align 4, !dbg !308
  %xor23 = xor i32 %32, %call21, !dbg !308
  store i32 %xor23, ptr %r22, align 4, !dbg !308
  %33 = load ptr, ptr %mctx.addr, align 8, !dbg !309
  %r24 = getelementptr inbounds %struct.michael_mic_ctx, ptr %33, i32 0, i32 1, !dbg !310
  %34 = load i32, ptr %r24, align 4, !dbg !310
  %35 = load ptr, ptr %mctx.addr, align 8, !dbg !311
  %l25 = getelementptr inbounds %struct.michael_mic_ctx, ptr %35, i32 0, i32 0, !dbg !312
  %36 = load i32, ptr %l25, align 4, !dbg !313
  %add26 = add i32 %36, %34, !dbg !313
  store i32 %add26, ptr %l25, align 4, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #3 align 16 !dbg !36 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !41, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #4, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !42, metadata !DIExpression()), !dbg !316
  %0 = load ptr, ptr %p.addr, align 8, !dbg !316
  store ptr %0, ptr %__pptr, align 8, !dbg !316
  %1 = load ptr, ptr %__pptr, align 8, !dbg !316
  %x = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 0, !dbg !316
  %2 = load i32, ptr %x, align 1, !dbg !316
  store i32 %2, ptr %tmp, align 4, !dbg !316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #4, !dbg !317
  %3 = load i32, ptr %tmp, align 4, !dbg !316
  ret i32 %3, !dbg !318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #3 align 16 !dbg !48 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !52, metadata !DIExpression()), !dbg !319
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !53, metadata !DIExpression()), !dbg !320
  br label %do.body, !dbg !321

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #4, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !54, metadata !DIExpression()), !dbg !322
  %0 = load ptr, ptr %p.addr, align 8, !dbg !322
  store ptr %0, ptr %__pptr, align 8, !dbg !322
  %1 = load i32, ptr %val.addr, align 4, !dbg !322
  %2 = load ptr, ptr %__pptr, align 8, !dbg !322
  %x = getelementptr inbounds %struct.anon.4, ptr %2, i32 0, i32 0, !dbg !322
  store i32 %1, ptr %x, align 1, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #4, !dbg !321
  br label %do.end, !dbg !322

do.end:                                           ; preds = %do.body
  ret void, !dbg !323
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ieee80211_get_DA(ptr noundef %hdr) #3 align 16 !dbg !324 {
entry:
  %retval = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !330
  %frame_control = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 0, !dbg !332
  %1 = load i16, ptr %frame_control, align 2, !dbg !332
  %call = call zeroext i1 @ieee80211_has_tods(i16 noundef zeroext %1) #5, !dbg !333
  br i1 %call, label %if.then, label %if.else, !dbg !334

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !335
  %3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 2, !dbg !336
  %addr3 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2, !dbg !336
  %arraydecay = getelementptr inbounds [6 x i8], ptr %addr3, i64 0, i64 0, !dbg !335
  store ptr %arraydecay, ptr %retval, align 8, !dbg !337
  br label %return, !dbg !337

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !338
  %5 = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 2, !dbg !339
  %addr1 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !339
  %arraydecay1 = getelementptr inbounds [6 x i8], ptr %addr1, i64 0, i64 0, !dbg !338
  store ptr %arraydecay1, ptr %retval, align 8, !dbg !340
  br label %return, !dbg !340

return:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !341
  ret ptr %6, !dbg !341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ieee80211_get_SA(ptr noundef %hdr) #3 align 16 !dbg !342 {
entry:
  %retval = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !346
  %frame_control = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 0, !dbg !348
  %1 = load i16, ptr %frame_control, align 2, !dbg !348
  %call = call zeroext i1 @ieee80211_has_a4(i16 noundef zeroext %1) #5, !dbg !349
  br i1 %call, label %if.then, label %if.end, !dbg !350

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !351
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 4, !dbg !352
  %arraydecay = getelementptr inbounds [6 x i8], ptr %addr4, i64 0, i64 0, !dbg !351
  store ptr %arraydecay, ptr %retval, align 8, !dbg !353
  br label %return, !dbg !353

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %hdr.addr, align 8, !dbg !354
  %frame_control1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 0, !dbg !356
  %4 = load i16, ptr %frame_control1, align 2, !dbg !356
  %call2 = call zeroext i1 @ieee80211_has_fromds(i16 noundef zeroext %4) #5, !dbg !357
  br i1 %call2, label %if.then3, label %if.end5, !dbg !358

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %hdr.addr, align 8, !dbg !359
  %6 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2, !dbg !360
  %addr3 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2, !dbg !360
  %arraydecay4 = getelementptr inbounds [6 x i8], ptr %addr3, i64 0, i64 0, !dbg !359
  store ptr %arraydecay4, ptr %retval, align 8, !dbg !361
  br label %return, !dbg !361

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %hdr.addr, align 8, !dbg !362
  %8 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 2, !dbg !363
  %addr2 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !363
  %arraydecay6 = getelementptr inbounds [6 x i8], ptr %addr2, i64 0, i64 0, !dbg !362
  store ptr %arraydecay6, ptr %retval, align 8, !dbg !364
  br label %return, !dbg !364

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %9 = load ptr, ptr %retval, align 8, !dbg !365
  ret ptr %9, !dbg !365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ieee80211_is_data_qos(i16 noundef zeroext %fc) #3 align 16 !dbg !366 {
entry:
  %fc.addr = alloca i16, align 2
  store i16 %fc, ptr %fc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i16, ptr %fc.addr, align 2, !dbg !374
  %conv = zext i16 %0 to i32, !dbg !374
  %and = and i32 %conv, 140, !dbg !375
  %cmp = icmp eq i32 %and, 136, !dbg !376
  ret i1 %cmp, !dbg !377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @ieee80211_get_tid(ptr noundef %hdr) #3 align 16 !dbg !378 {
entry:
  %hdr.addr = alloca ptr, align 8
  %qc = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %qc) #4, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %qc, metadata !383, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !387
  %call = call ptr @ieee80211_get_qos_ctl(ptr noundef %0) #5, !dbg !388
  store ptr %call, ptr %qc, align 8, !dbg !386
  %1 = load ptr, ptr %qc, align 8, !dbg !389
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !389
  %2 = load i8, ptr %arrayidx, align 1, !dbg !389
  %conv = zext i8 %2 to i32, !dbg !389
  %and = and i32 %conv, 15, !dbg !390
  %conv1 = trunc i32 %and to i8, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %qc) #4, !dbg !391
  ret i8 %conv1, !dbg !392
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #3 align 16 !dbg !18 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !25, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #4, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !26, metadata !DIExpression()), !dbg !394
  %0 = load ptr, ptr %p.addr, align 8, !dbg !394
  store ptr %0, ptr %__pptr, align 8, !dbg !394
  %1 = load ptr, ptr %__pptr, align 8, !dbg !394
  %x = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 0, !dbg !394
  %2 = load i16, ptr %x, align 1, !dbg !394
  store i16 %2, ptr %tmp, align 2, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #4, !dbg !395
  %3 = load i16, ptr %tmp, align 2, !dbg !394
  ret i16 %3, !dbg !396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ieee80211_has_tods(i16 noundef zeroext %fc) #3 align 16 !dbg !397 {
entry:
  %fc.addr = alloca i16, align 2
  store i16 %fc, ptr %fc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i16, ptr %fc.addr, align 2, !dbg !401
  %conv = zext i16 %0 to i32, !dbg !401
  %and = and i32 %conv, 256, !dbg !402
  %cmp = icmp ne i32 %and, 0, !dbg !403
  ret i1 %cmp, !dbg !404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ieee80211_has_a4(i16 noundef zeroext %fc) #3 align 16 !dbg !405 {
entry:
  %fc.addr = alloca i16, align 2
  %tmp = alloca i16, align 2
  store i16 %fc, ptr %fc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 2, ptr %tmp) #4, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !408, metadata !DIExpression()), !dbg !411
  store i16 768, ptr %tmp, align 2, !dbg !411
  %0 = load i16, ptr %fc.addr, align 2, !dbg !412
  %conv = zext i16 %0 to i32, !dbg !412
  %1 = load i16, ptr %tmp, align 2, !dbg !413
  %conv1 = zext i16 %1 to i32, !dbg !413
  %and = and i32 %conv, %conv1, !dbg !414
  %2 = load i16, ptr %tmp, align 2, !dbg !415
  %conv2 = zext i16 %2 to i32, !dbg !415
  %cmp = icmp eq i32 %and, %conv2, !dbg !416
  call void @llvm.lifetime.end.p0(i64 2, ptr %tmp) #4, !dbg !417
  ret i1 %cmp, !dbg !418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ieee80211_has_fromds(i16 noundef zeroext %fc) #3 align 16 !dbg !419 {
entry:
  %fc.addr = alloca i16, align 2
  store i16 %fc, ptr %fc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i16, ptr %fc.addr, align 2, !dbg !423
  %conv = zext i16 %0 to i32, !dbg !423
  %and = and i32 %conv, 512, !dbg !424
  %cmp = icmp ne i32 %and, 0, !dbg !425
  ret i1 %cmp, !dbg !426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ieee80211_get_qos_ctl(ptr noundef %hdr) #3 align 16 !dbg !427 {
entry:
  %retval = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %qos = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !429, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 8, ptr %qos) #4, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %qos, metadata !430, metadata !DIExpression()), !dbg !457
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !458
  store ptr %0, ptr %qos, align 8, !dbg !459
  %1 = load ptr, ptr %qos, align 8, !dbg !460
  %frame_control = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %1, i32 0, i32 0, !dbg !462
  %2 = load i16, ptr %frame_control, align 2, !dbg !462
  %call = call zeroext i1 @ieee80211_has_a4(i16 noundef zeroext %2) #5, !dbg !463
  br i1 %call, label %if.then, label %if.else, !dbg !464

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %qos, align 8, !dbg !465
  %qos_ctrl = getelementptr inbounds %struct.ieee80211_qos_hdr_4addr, ptr %3, i32 0, i32 7, !dbg !466
  store ptr %qos_ctrl, ptr %retval, align 8, !dbg !467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !467

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %qos, align 8, !dbg !468
  %qos_ctrl1 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %4, i32 0, i32 6, !dbg !469
  store ptr %qos_ctrl1, ptr %retval, align 8, !dbg !470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !470

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %qos) #4, !dbg !471
  %5 = load ptr, ptr %retval, align 8, !dbg !471
  ret ptr %5, !dbg !471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 align 16 !dbg !472 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !477, metadata !DIExpression()), !dbg !479
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !478, metadata !DIExpression()), !dbg !480
  %0 = load i32, ptr %word.addr, align 4, !dbg !481
  %1 = load i32, ptr %shift.addr, align 4, !dbg !482
  %and = and i32 %1, 31, !dbg !483
  %shl = shl i32 %0, %and, !dbg !484
  %2 = load i32, ptr %word.addr, align 4, !dbg !485
  %3 = load i32, ptr %shift.addr, align 4, !dbg !486
  %sub = sub i32 0, %3, !dbg !487
  %and1 = and i32 %sub, 31, !dbg !488
  %shr = lshr i32 %2, %and1, !dbg !489
  %or = or i32 %shl, %shr, !dbg !490
  ret i32 %or, !dbg !491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ror32(i32 noundef %word, i32 noundef %shift) #3 align 16 !dbg !492 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !494, metadata !DIExpression()), !dbg !496
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !495, metadata !DIExpression()), !dbg !497
  %0 = load i32, ptr %word.addr, align 4, !dbg !498
  %1 = load i32, ptr %shift.addr, align 4, !dbg !499
  %and = and i32 %1, 31, !dbg !500
  %shr = lshr i32 %0, %and, !dbg !501
  %2 = load i32, ptr %word.addr, align 4, !dbg !502
  %3 = load i32, ptr %shift.addr, align 4, !dbg !503
  %sub = sub i32 0, %3, !dbg !504
  %and1 = and i32 %sub, 31, !dbg !505
  %shl = shl i32 %2, %and1, !dbg !506
  %or = or i32 %shr, %shl, !dbg !507
  ret i32 %or, !dbg !508
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/mac80211/.michael.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D DEBUG -D KBUILD_MODFILE=\22net/mac80211/mac80211\22 -D KBUILD_BASENAME=\22michael\22 -D KBUILD_MODNAME=\22mac80211\22 -D __KBUILD_MODNAME=kmod_mac80211 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/mac80211/michael.ll net/mac80211/michael.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "net/mac80211/michael.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ff5b0dbf121e8a12e66ec9f0f57f0ac")
!2 = !{!3, !5, !8, !9, !14, !30, !32, !33, !46}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !4, line: 36, baseType: !5)
!4 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !6, line: 24, baseType: !7)
!6 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !6, line: 21, baseType: !13)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !18, file: !17, line: 27, size: 16, elements: !28)
!17 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!18 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !17, file: !17, line: 25, type: !19, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !11, line: 19, baseType: !5)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "p", arg: 1, scope: !18, file: !17, line: 25, type: !22)
!26 = !DILocalVariable(name: "__pptr", scope: !27, file: !17, line: 27, type: !14)
!27 = distinct !DILexicalBlock(scope: !18, file: !17, line: 27, column: 9)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !16, file: !17, line: 27, baseType: !3, size: 16)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !6, line: 27, baseType: !31)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !4, line: 38, baseType: !30)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !17, line: 32, size: 32, elements: !44)
!36 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !17, file: !17, line: 30, type: !37, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !22}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !30)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "p", arg: 1, scope: !36, file: !17, line: 30, type: !22)
!42 = !DILocalVariable(name: "__pptr", scope: !43, file: !17, line: 32, type: !33)
!43 = distinct !DILexicalBlock(scope: !36, file: !17, line: 32, column: 9)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !35, file: !17, line: 32, baseType: !32, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !48, file: !17, line: 47, size: 32, elements: !56)
!48 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !17, file: !17, line: 45, type: !49, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !39, !8}
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(name: "val", arg: 1, scope: !48, file: !17, line: 45, type: !39)
!53 = !DILocalVariable(name: "p", arg: 2, scope: !48, file: !17, line: 45, type: !8)
!54 = !DILocalVariable(name: "__pptr", scope: !55, file: !17, line: 47, type: !46)
!55 = distinct !DILexicalBlock(scope: !48, file: !17, line: 47, column: 2)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !47, file: !17, line: 47, baseType: !32, size: 32)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 8, !"cf-protection-branch", i32 1}
!62 = !{i32 4, !"function_return_thunk_extern", i32 1}
!63 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!64 = !{i32 1, !"Code Model", i32 2}
!65 = !{i32 1, !"override-stack-alignment", i32 8}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = distinct !DISubprogram(name: "michael_mic", scope: !1, file: !1, line: 53, type: !68, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !72, !70, !98, !9}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_hdr", file: !74, line: 310, size: 240, align: 16, elements: !75)
!74 = !DIFile(filename: "./include/linux/ieee80211.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112df9dd3288da748058d155329d0f2")
!75 = !{!76, !77, !78, !96, !97}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "frame_control", scope: !73, file: !74, line: 311, baseType: !3, size: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "duration_id", scope: !73, file: !74, line: 312, baseType: !3, size: 16, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !74, line: 313, baseType: !79, size: 144, offset: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !74, line: 313, size: 144, elements: !80)
!80 = !{!81, !90}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !74, line: 313, baseType: !82, size: 144)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !74, line: 313, size: 144, elements: !83)
!83 = !{!84, !88, !89}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "addr1", scope: !82, file: !74, line: 313, baseType: !85, size: 48)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 6)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !82, file: !74, line: 313, baseType: !85, size: 48, offset: 48)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !82, file: !74, line: 313, baseType: !85, size: 48, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !79, file: !74, line: 313, baseType: !91, size: 144)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !74, line: 313, size: 144, elements: !92)
!92 = !{!93, !94, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "addr1", scope: !91, file: !74, line: 313, baseType: !85, size: 48)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !91, file: !74, line: 313, baseType: !85, size: 48, offset: 48)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !91, file: !74, line: 313, baseType: !85, size: 48, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ctrl", scope: !73, file: !74, line: 318, baseType: !3, size: 16, offset: 176)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "addr4", scope: !73, file: !74, line: 319, baseType: !85, size: 48, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 61, baseType: !100)
!99 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !101, line: 72, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !101, line: 16, baseType: !103)
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!105 = !DILocalVariable(name: "key", arg: 1, scope: !67, file: !1, line: 53, type: !70)
!106 = !DILocalVariable(name: "hdr", arg: 2, scope: !67, file: !1, line: 53, type: !72)
!107 = !DILocalVariable(name: "data", arg: 3, scope: !67, file: !1, line: 54, type: !70)
!108 = !DILocalVariable(name: "data_len", arg: 4, scope: !67, file: !1, line: 54, type: !98)
!109 = !DILocalVariable(name: "mic", arg: 5, scope: !67, file: !1, line: 54, type: !9)
!110 = !DILocalVariable(name: "val", scope: !67, file: !1, line: 56, type: !39)
!111 = !DILocalVariable(name: "block", scope: !67, file: !1, line: 57, type: !98)
!112 = !DILocalVariable(name: "blocks", scope: !67, file: !1, line: 57, type: !98)
!113 = !DILocalVariable(name: "left", scope: !67, file: !1, line: 57, type: !98)
!114 = !DILocalVariable(name: "mctx", scope: !67, file: !1, line: 58, type: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "michael_mic_ctx", file: !116, line: 15, size: 64, elements: !117)
!116 = !DIFile(filename: "net/mac80211/michael.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9b4dfa20c13234f9667004c82919d1b0")
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !115, file: !116, line: 16, baseType: !39, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !115, file: !116, line: 16, baseType: !39, size: 32, offset: 32)
!120 = !DILocation(line: 53, column: 28, scope: !67)
!121 = !DILocation(line: 53, column: 55, scope: !67)
!122 = !DILocation(line: 54, column: 14, scope: !67)
!123 = !DILocation(line: 54, column: 27, scope: !67)
!124 = !DILocation(line: 54, column: 41, scope: !67)
!125 = !DILocation(line: 56, column: 2, scope: !67)
!126 = !DILocation(line: 56, column: 6, scope: !67)
!127 = !DILocation(line: 57, column: 2, scope: !67)
!128 = !DILocation(line: 57, column: 9, scope: !67)
!129 = !DILocation(line: 57, column: 16, scope: !67)
!130 = !DILocation(line: 57, column: 24, scope: !67)
!131 = !DILocation(line: 58, column: 2, scope: !67)
!132 = !DILocation(line: 58, column: 25, scope: !67)
!133 = !DILocation(line: 60, column: 25, scope: !67)
!134 = !DILocation(line: 60, column: 30, scope: !67)
!135 = !DILocation(line: 60, column: 2, scope: !67)
!136 = !DILocation(line: 63, column: 11, scope: !67)
!137 = !DILocation(line: 63, column: 20, scope: !67)
!138 = !DILocation(line: 63, column: 9, scope: !67)
!139 = !DILocation(line: 64, column: 9, scope: !67)
!140 = !DILocation(line: 64, column: 18, scope: !67)
!141 = !DILocation(line: 64, column: 7, scope: !67)
!142 = !DILocation(line: 66, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !67, file: !1, line: 66, column: 2)
!144 = !DILocation(line: 66, column: 7, scope: !143)
!145 = !DILocation(line: 66, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 66, column: 2)
!147 = !DILocation(line: 66, column: 26, scope: !146)
!148 = !DILocation(line: 66, column: 24, scope: !146)
!149 = !DILocation(line: 66, column: 2, scope: !143)
!150 = !DILocation(line: 67, column: 44, scope: !146)
!151 = !DILocation(line: 67, column: 49, scope: !146)
!152 = !DILocation(line: 67, column: 55, scope: !146)
!153 = !DILocation(line: 67, column: 24, scope: !146)
!154 = !DILocation(line: 67, column: 3, scope: !146)
!155 = !DILocation(line: 66, column: 39, scope: !146)
!156 = !DILocation(line: 66, column: 2, scope: !146)
!157 = distinct !{!157, !149, !158, !159, !160}
!158 = !DILocation(line: 67, column: 60, scope: !143)
!159 = !{!"llvm.loop.mustprogress"}
!160 = !{!"llvm.loop.unroll.disable"}
!161 = !DILocation(line: 71, column: 6, scope: !67)
!162 = !DILocation(line: 72, column: 2, scope: !67)
!163 = !DILocation(line: 72, column: 9, scope: !67)
!164 = !DILocation(line: 72, column: 14, scope: !67)
!165 = !DILocation(line: 73, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !67, file: !1, line: 72, column: 19)
!167 = !DILocation(line: 74, column: 7, scope: !166)
!168 = !DILocation(line: 75, column: 10, scope: !166)
!169 = !DILocation(line: 75, column: 15, scope: !166)
!170 = !DILocation(line: 75, column: 22, scope: !166)
!171 = !DILocation(line: 75, column: 28, scope: !166)
!172 = !DILocation(line: 75, column: 26, scope: !166)
!173 = !DILocation(line: 75, column: 7, scope: !166)
!174 = distinct !{!174, !162, !175, !159, !160}
!175 = !DILocation(line: 76, column: 2, scope: !67)
!176 = !DILocation(line: 78, column: 23, scope: !67)
!177 = !DILocation(line: 78, column: 2, scope: !67)
!178 = !DILocation(line: 79, column: 2, scope: !67)
!179 = !DILocation(line: 81, column: 26, scope: !67)
!180 = !DILocation(line: 81, column: 29, scope: !67)
!181 = !DILocation(line: 81, column: 2, scope: !67)
!182 = !DILocation(line: 82, column: 26, scope: !67)
!183 = !DILocation(line: 82, column: 29, scope: !67)
!184 = !DILocation(line: 82, column: 33, scope: !67)
!185 = !DILocation(line: 82, column: 2, scope: !67)
!186 = !DILocation(line: 83, column: 1, scope: !67)
!187 = distinct !DISubprogram(name: "michael_mic_hdr", scope: !1, file: !1, line: 27, type: !188, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190, !70, !72}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!191 = !{!192, !193, !194, !195, !196, !197}
!192 = !DILocalVariable(name: "mctx", arg: 1, scope: !187, file: !1, line: 27, type: !190)
!193 = !DILocalVariable(name: "key", arg: 2, scope: !187, file: !1, line: 27, type: !70)
!194 = !DILocalVariable(name: "hdr", arg: 3, scope: !187, file: !1, line: 28, type: !72)
!195 = !DILocalVariable(name: "da", scope: !187, file: !1, line: 30, type: !9)
!196 = !DILocalVariable(name: "sa", scope: !187, file: !1, line: 30, type: !9)
!197 = !DILocalVariable(name: "tid", scope: !187, file: !1, line: 30, type: !10)
!198 = !DILocation(line: 27, column: 53, scope: !187)
!199 = !DILocation(line: 27, column: 69, scope: !187)
!200 = !DILocation(line: 28, column: 30, scope: !187)
!201 = !DILocation(line: 30, column: 2, scope: !187)
!202 = !DILocation(line: 30, column: 6, scope: !187)
!203 = !DILocation(line: 30, column: 11, scope: !187)
!204 = !DILocation(line: 30, column: 15, scope: !187)
!205 = !DILocation(line: 32, column: 24, scope: !187)
!206 = !DILocation(line: 32, column: 7, scope: !187)
!207 = !DILocation(line: 32, column: 5, scope: !187)
!208 = !DILocation(line: 33, column: 24, scope: !187)
!209 = !DILocation(line: 33, column: 7, scope: !187)
!210 = !DILocation(line: 33, column: 5, scope: !187)
!211 = !DILocation(line: 34, column: 28, scope: !212)
!212 = distinct !DILexicalBlock(scope: !187, file: !1, line: 34, column: 6)
!213 = !DILocation(line: 34, column: 33, scope: !212)
!214 = !DILocation(line: 34, column: 6, scope: !212)
!215 = !DILocation(line: 34, column: 6, scope: !187)
!216 = !DILocation(line: 35, column: 27, scope: !212)
!217 = !DILocation(line: 35, column: 9, scope: !212)
!218 = !DILocation(line: 35, column: 7, scope: !212)
!219 = !DILocation(line: 35, column: 3, scope: !212)
!220 = !DILocation(line: 37, column: 7, scope: !212)
!221 = !DILocation(line: 39, column: 31, scope: !187)
!222 = !DILocation(line: 39, column: 12, scope: !187)
!223 = !DILocation(line: 39, column: 2, scope: !187)
!224 = !DILocation(line: 39, column: 8, scope: !187)
!225 = !DILocation(line: 39, column: 10, scope: !187)
!226 = !DILocation(line: 40, column: 31, scope: !187)
!227 = !DILocation(line: 40, column: 35, scope: !187)
!228 = !DILocation(line: 40, column: 12, scope: !187)
!229 = !DILocation(line: 40, column: 2, scope: !187)
!230 = !DILocation(line: 40, column: 8, scope: !187)
!231 = !DILocation(line: 40, column: 10, scope: !187)
!232 = !DILocation(line: 46, column: 16, scope: !187)
!233 = !DILocation(line: 46, column: 41, scope: !187)
!234 = !DILocation(line: 46, column: 22, scope: !187)
!235 = !DILocation(line: 46, column: 2, scope: !187)
!236 = !DILocation(line: 47, column: 16, scope: !187)
!237 = !DILocation(line: 47, column: 42, scope: !187)
!238 = !DILocation(line: 47, column: 22, scope: !187)
!239 = !DILocation(line: 48, column: 28, scope: !187)
!240 = !DILocation(line: 48, column: 9, scope: !187)
!241 = !DILocation(line: 48, column: 32, scope: !187)
!242 = !DILocation(line: 47, column: 49, scope: !187)
!243 = !DILocation(line: 47, column: 2, scope: !187)
!244 = !DILocation(line: 49, column: 16, scope: !187)
!245 = !DILocation(line: 49, column: 42, scope: !187)
!246 = !DILocation(line: 49, column: 22, scope: !187)
!247 = !DILocation(line: 49, column: 2, scope: !187)
!248 = !DILocation(line: 50, column: 16, scope: !187)
!249 = !DILocation(line: 50, column: 22, scope: !187)
!250 = !DILocation(line: 50, column: 2, scope: !187)
!251 = !DILocation(line: 51, column: 1, scope: !187)
!252 = distinct !DISubprogram(name: "michael_block", scope: !1, file: !1, line: 13, type: !253, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !190, !39}
!255 = !{!256, !257}
!256 = !DILocalVariable(name: "mctx", arg: 1, scope: !252, file: !1, line: 13, type: !190)
!257 = !DILocalVariable(name: "val", arg: 2, scope: !252, file: !1, line: 13, type: !39)
!258 = !DILocation(line: 13, column: 51, scope: !252)
!259 = !DILocation(line: 13, column: 61, scope: !252)
!260 = !DILocation(line: 15, column: 13, scope: !252)
!261 = !DILocation(line: 15, column: 2, scope: !252)
!262 = !DILocation(line: 15, column: 8, scope: !252)
!263 = !DILocation(line: 15, column: 10, scope: !252)
!264 = !DILocation(line: 16, column: 19, scope: !252)
!265 = !DILocation(line: 16, column: 25, scope: !252)
!266 = !DILocation(line: 16, column: 13, scope: !252)
!267 = !DILocation(line: 16, column: 2, scope: !252)
!268 = !DILocation(line: 16, column: 8, scope: !252)
!269 = !DILocation(line: 16, column: 10, scope: !252)
!270 = !DILocation(line: 17, column: 13, scope: !252)
!271 = !DILocation(line: 17, column: 19, scope: !252)
!272 = !DILocation(line: 17, column: 2, scope: !252)
!273 = !DILocation(line: 17, column: 8, scope: !252)
!274 = !DILocation(line: 17, column: 10, scope: !252)
!275 = !DILocation(line: 18, column: 15, scope: !252)
!276 = !DILocation(line: 18, column: 21, scope: !252)
!277 = !DILocation(line: 18, column: 23, scope: !252)
!278 = !DILocation(line: 18, column: 37, scope: !252)
!279 = !DILocation(line: 19, column: 8, scope: !252)
!280 = !DILocation(line: 19, column: 14, scope: !252)
!281 = !DILocation(line: 19, column: 16, scope: !252)
!282 = !DILocation(line: 19, column: 30, scope: !252)
!283 = !DILocation(line: 18, column: 43, scope: !252)
!284 = !DILocation(line: 18, column: 2, scope: !252)
!285 = !DILocation(line: 18, column: 8, scope: !252)
!286 = !DILocation(line: 18, column: 10, scope: !252)
!287 = !DILocation(line: 20, column: 13, scope: !252)
!288 = !DILocation(line: 20, column: 19, scope: !252)
!289 = !DILocation(line: 20, column: 2, scope: !252)
!290 = !DILocation(line: 20, column: 8, scope: !252)
!291 = !DILocation(line: 20, column: 10, scope: !252)
!292 = !DILocation(line: 21, column: 19, scope: !252)
!293 = !DILocation(line: 21, column: 25, scope: !252)
!294 = !DILocation(line: 21, column: 13, scope: !252)
!295 = !DILocation(line: 21, column: 2, scope: !252)
!296 = !DILocation(line: 21, column: 8, scope: !252)
!297 = !DILocation(line: 21, column: 10, scope: !252)
!298 = !DILocation(line: 22, column: 13, scope: !252)
!299 = !DILocation(line: 22, column: 19, scope: !252)
!300 = !DILocation(line: 22, column: 2, scope: !252)
!301 = !DILocation(line: 22, column: 8, scope: !252)
!302 = !DILocation(line: 22, column: 10, scope: !252)
!303 = !DILocation(line: 23, column: 19, scope: !252)
!304 = !DILocation(line: 23, column: 25, scope: !252)
!305 = !DILocation(line: 23, column: 13, scope: !252)
!306 = !DILocation(line: 23, column: 2, scope: !252)
!307 = !DILocation(line: 23, column: 8, scope: !252)
!308 = !DILocation(line: 23, column: 10, scope: !252)
!309 = !DILocation(line: 24, column: 13, scope: !252)
!310 = !DILocation(line: 24, column: 19, scope: !252)
!311 = !DILocation(line: 24, column: 2, scope: !252)
!312 = !DILocation(line: 24, column: 8, scope: !252)
!313 = !DILocation(line: 24, column: 10, scope: !252)
!314 = !DILocation(line: 25, column: 1, scope: !252)
!315 = !DILocation(line: 30, column: 50, scope: !36)
!316 = !DILocation(line: 32, column: 9, scope: !43)
!317 = !DILocation(line: 32, column: 9, scope: !36)
!318 = !DILocation(line: 32, column: 2, scope: !36)
!319 = !DILocation(line: 45, column: 43, scope: !48)
!320 = !DILocation(line: 45, column: 54, scope: !48)
!321 = !DILocation(line: 47, column: 2, scope: !48)
!322 = !DILocation(line: 47, column: 2, scope: !55)
!323 = !DILocation(line: 48, column: 1, scope: !48)
!324 = distinct !DISubprogram(name: "ieee80211_get_DA", scope: !74, file: !74, line: 4257, type: !325, scopeLine: 4258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!9, !72}
!327 = !{!328}
!328 = !DILocalVariable(name: "hdr", arg: 1, scope: !324, file: !74, line: 4257, type: !72)
!329 = !DILocation(line: 4257, column: 58, scope: !324)
!330 = !DILocation(line: 4259, column: 25, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !74, line: 4259, column: 6)
!332 = !DILocation(line: 4259, column: 30, scope: !331)
!333 = !DILocation(line: 4259, column: 6, scope: !331)
!334 = !DILocation(line: 4259, column: 6, scope: !324)
!335 = !DILocation(line: 4260, column: 10, scope: !331)
!336 = !DILocation(line: 4260, column: 15, scope: !331)
!337 = !DILocation(line: 4260, column: 3, scope: !331)
!338 = !DILocation(line: 4262, column: 10, scope: !331)
!339 = !DILocation(line: 4262, column: 15, scope: !331)
!340 = !DILocation(line: 4262, column: 3, scope: !331)
!341 = !DILocation(line: 4263, column: 1, scope: !324)
!342 = distinct !DISubprogram(name: "ieee80211_get_SA", scope: !74, file: !74, line: 4238, type: !325, scopeLine: 4239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!343 = !{!344}
!344 = !DILocalVariable(name: "hdr", arg: 1, scope: !342, file: !74, line: 4238, type: !72)
!345 = !DILocation(line: 4238, column: 58, scope: !342)
!346 = !DILocation(line: 4240, column: 23, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !74, line: 4240, column: 6)
!348 = !DILocation(line: 4240, column: 28, scope: !347)
!349 = !DILocation(line: 4240, column: 6, scope: !347)
!350 = !DILocation(line: 4240, column: 6, scope: !342)
!351 = !DILocation(line: 4241, column: 10, scope: !347)
!352 = !DILocation(line: 4241, column: 15, scope: !347)
!353 = !DILocation(line: 4241, column: 3, scope: !347)
!354 = !DILocation(line: 4242, column: 27, scope: !355)
!355 = distinct !DILexicalBlock(scope: !342, file: !74, line: 4242, column: 6)
!356 = !DILocation(line: 4242, column: 32, scope: !355)
!357 = !DILocation(line: 4242, column: 6, scope: !355)
!358 = !DILocation(line: 4242, column: 6, scope: !342)
!359 = !DILocation(line: 4243, column: 10, scope: !355)
!360 = !DILocation(line: 4243, column: 15, scope: !355)
!361 = !DILocation(line: 4243, column: 3, scope: !355)
!362 = !DILocation(line: 4244, column: 9, scope: !342)
!363 = !DILocation(line: 4244, column: 14, scope: !342)
!364 = !DILocation(line: 4244, column: 2, scope: !342)
!365 = !DILocation(line: 4245, column: 1, scope: !342)
!366 = distinct !DISubprogram(name: "ieee80211_is_data_qos", scope: !74, file: !74, line: 488, type: !367, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !371)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !3}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !99, line: 35, baseType: !370)
!370 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!371 = !{!372}
!372 = !DILocalVariable(name: "fc", arg: 1, scope: !366, file: !74, line: 488, type: !3)
!373 = !DILocation(line: 488, column: 49, scope: !366)
!374 = !DILocation(line: 494, column: 10, scope: !366)
!375 = !DILocation(line: 494, column: 13, scope: !366)
!376 = !DILocation(line: 494, column: 77, scope: !366)
!377 = !DILocation(line: 494, column: 2, scope: !366)
!378 = distinct !DISubprogram(name: "ieee80211_get_tid", scope: !74, file: !74, line: 4221, type: !379, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!10, !72}
!381 = !{!382, !383}
!382 = !DILocalVariable(name: "hdr", arg: 1, scope: !378, file: !74, line: 4221, type: !72)
!383 = !DILocalVariable(name: "qc", scope: !378, file: !74, line: 4223, type: !9)
!384 = !DILocation(line: 4221, column: 58, scope: !378)
!385 = !DILocation(line: 4223, column: 2, scope: !378)
!386 = !DILocation(line: 4223, column: 6, scope: !378)
!387 = !DILocation(line: 4223, column: 33, scope: !378)
!388 = !DILocation(line: 4223, column: 11, scope: !378)
!389 = !DILocation(line: 4225, column: 9, scope: !378)
!390 = !DILocation(line: 4225, column: 15, scope: !378)
!391 = !DILocation(line: 4226, column: 1, scope: !378)
!392 = !DILocation(line: 4225, column: 2, scope: !378)
!393 = !DILocation(line: 25, column: 50, scope: !18)
!394 = !DILocation(line: 27, column: 9, scope: !27)
!395 = !DILocation(line: 27, column: 9, scope: !18)
!396 = !DILocation(line: 27, column: 2, scope: !18)
!397 = distinct !DISubprogram(name: "ieee80211_has_tods", scope: !74, file: !74, line: 365, type: !367, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!398 = !{!399}
!399 = !DILocalVariable(name: "fc", arg: 1, scope: !397, file: !74, line: 365, type: !3)
!400 = !DILocation(line: 365, column: 46, scope: !397)
!401 = !DILocation(line: 367, column: 10, scope: !397)
!402 = !DILocation(line: 367, column: 13, scope: !397)
!403 = !DILocation(line: 367, column: 49, scope: !397)
!404 = !DILocation(line: 367, column: 2, scope: !397)
!405 = distinct !DISubprogram(name: "ieee80211_has_a4", scope: !74, file: !74, line: 383, type: !367, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !406)
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "fc", arg: 1, scope: !405, file: !74, line: 383, type: !3)
!408 = !DILocalVariable(name: "tmp", scope: !405, file: !74, line: 385, type: !3)
!409 = !DILocation(line: 383, column: 44, scope: !405)
!410 = !DILocation(line: 385, column: 2, scope: !405)
!411 = !DILocation(line: 385, column: 9, scope: !405)
!412 = !DILocation(line: 386, column: 10, scope: !405)
!413 = !DILocation(line: 386, column: 15, scope: !405)
!414 = !DILocation(line: 386, column: 13, scope: !405)
!415 = !DILocation(line: 386, column: 23, scope: !405)
!416 = !DILocation(line: 386, column: 20, scope: !405)
!417 = !DILocation(line: 387, column: 1, scope: !405)
!418 = !DILocation(line: 386, column: 2, scope: !405)
!419 = distinct !DISubprogram(name: "ieee80211_has_fromds", scope: !74, file: !74, line: 374, type: !367, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!420 = !{!421}
!421 = !DILocalVariable(name: "fc", arg: 1, scope: !419, file: !74, line: 374, type: !3)
!422 = !DILocation(line: 374, column: 48, scope: !419)
!423 = !DILocation(line: 376, column: 10, scope: !419)
!424 = !DILocation(line: 376, column: 13, scope: !419)
!425 = !DILocation(line: 376, column: 51, scope: !419)
!426 = !DILocation(line: 376, column: 2, scope: !419)
!427 = distinct !DISubprogram(name: "ieee80211_get_qos_ctl", scope: !74, file: !74, line: 4203, type: !325, scopeLine: 4204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !428)
!428 = !{!429, !430}
!429 = !DILocalVariable(name: "hdr", arg: 1, scope: !427, file: !74, line: 4203, type: !72)
!430 = !DILocalVariable(name: "qos", scope: !427, file: !74, line: 4208, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !74, line: 4205, size: 256, elements: !433)
!433 = !{!434, !444}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !432, file: !74, line: 4206, baseType: !435, size: 208, align: 16)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_qos_hdr", file: !74, line: 331, size: 208, align: 16, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "frame_control", scope: !435, file: !74, line: 332, baseType: !3, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "duration_id", scope: !435, file: !74, line: 333, baseType: !3, size: 16, offset: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "addr1", scope: !435, file: !74, line: 334, baseType: !85, size: 48, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !435, file: !74, line: 335, baseType: !85, size: 48, offset: 80)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !435, file: !74, line: 336, baseType: !85, size: 48, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ctrl", scope: !435, file: !74, line: 337, baseType: !3, size: 16, offset: 176)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "qos_ctrl", scope: !435, file: !74, line: 338, baseType: !3, size: 16, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "addr4", scope: !432, file: !74, line: 4207, baseType: !445, size: 256, align: 16)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_qos_hdr_4addr", file: !74, line: 341, size: 256, align: 16, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "frame_control", scope: !445, file: !74, line: 342, baseType: !3, size: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "duration_id", scope: !445, file: !74, line: 343, baseType: !3, size: 16, offset: 16)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "addr1", scope: !445, file: !74, line: 344, baseType: !85, size: 48, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !445, file: !74, line: 345, baseType: !85, size: 48, offset: 80)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !445, file: !74, line: 346, baseType: !85, size: 48, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ctrl", scope: !445, file: !74, line: 347, baseType: !3, size: 16, offset: 176)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "addr4", scope: !445, file: !74, line: 348, baseType: !85, size: 48, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "qos_ctrl", scope: !445, file: !74, line: 349, baseType: !3, size: 16, offset: 240)
!455 = !DILocation(line: 4203, column: 63, scope: !427)
!456 = !DILocation(line: 4205, column: 2, scope: !427)
!457 = !DILocation(line: 4208, column: 5, scope: !427)
!458 = !DILocation(line: 4210, column: 16, scope: !427)
!459 = !DILocation(line: 4210, column: 6, scope: !427)
!460 = !DILocation(line: 4211, column: 23, scope: !461)
!461 = distinct !DILexicalBlock(scope: !427, file: !74, line: 4211, column: 6)
!462 = !DILocation(line: 4211, column: 34, scope: !461)
!463 = !DILocation(line: 4211, column: 6, scope: !461)
!464 = !DILocation(line: 4211, column: 6, scope: !427)
!465 = !DILocation(line: 4212, column: 17, scope: !461)
!466 = !DILocation(line: 4212, column: 28, scope: !461)
!467 = !DILocation(line: 4212, column: 3, scope: !461)
!468 = !DILocation(line: 4214, column: 17, scope: !461)
!469 = !DILocation(line: 4214, column: 28, scope: !461)
!470 = !DILocation(line: 4214, column: 3, scope: !461)
!471 = !DILocation(line: 4215, column: 1, scope: !427)
!472 = distinct !DISubprogram(name: "rol32", scope: !473, file: !473, line: 125, type: !474, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !476)
!473 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!474 = !DISubroutineType(types: !475)
!475 = !{!30, !30, !31}
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "word", arg: 1, scope: !472, file: !473, line: 125, type: !30)
!478 = !DILocalVariable(name: "shift", arg: 2, scope: !472, file: !473, line: 125, type: !31)
!479 = !DILocation(line: 125, column: 33, scope: !472)
!480 = !DILocation(line: 125, column: 52, scope: !472)
!481 = !DILocation(line: 127, column: 10, scope: !472)
!482 = !DILocation(line: 127, column: 19, scope: !472)
!483 = !DILocation(line: 127, column: 25, scope: !472)
!484 = !DILocation(line: 127, column: 15, scope: !472)
!485 = !DILocation(line: 127, column: 35, scope: !472)
!486 = !DILocation(line: 127, column: 46, scope: !472)
!487 = !DILocation(line: 127, column: 45, scope: !472)
!488 = !DILocation(line: 127, column: 53, scope: !472)
!489 = !DILocation(line: 127, column: 40, scope: !472)
!490 = !DILocation(line: 127, column: 32, scope: !472)
!491 = !DILocation(line: 127, column: 2, scope: !472)
!492 = distinct !DISubprogram(name: "ror32", scope: !473, file: !473, line: 135, type: !474, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "word", arg: 1, scope: !492, file: !473, line: 135, type: !30)
!495 = !DILocalVariable(name: "shift", arg: 2, scope: !492, file: !473, line: 135, type: !31)
!496 = !DILocation(line: 135, column: 33, scope: !492)
!497 = !DILocation(line: 135, column: 52, scope: !492)
!498 = !DILocation(line: 137, column: 10, scope: !492)
!499 = !DILocation(line: 137, column: 19, scope: !492)
!500 = !DILocation(line: 137, column: 25, scope: !492)
!501 = !DILocation(line: 137, column: 15, scope: !492)
!502 = !DILocation(line: 137, column: 35, scope: !492)
!503 = !DILocation(line: 137, column: 46, scope: !492)
!504 = !DILocation(line: 137, column: 45, scope: !492)
!505 = !DILocation(line: 137, column: 53, scope: !492)
!506 = !DILocation(line: 137, column: 40, scope: !492)
!507 = !DILocation(line: 137, column: 32, scope: !492)
!508 = !DILocation(line: 137, column: 2, scope: !492)
