; ModuleID = 'lib/decompress_bunzip2.c'
source_filename = "lib/decompress_bunzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bunzip_data = type { i32, i32, i32, i32, i32, ptr, i64, i64, ptr, i32, i32, [256 x i32], i32, i32, i32, ptr, i32, [32768 x i8], [6 x %struct.group_data], i32, [256 x i32], [256 x i8], [256 x i8] }
%struct.group_data = type { [21 x i32], [20 x i32], [258 x i32], i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Could not allocate output buffer\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"Data integrity error when decompressing.\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"Compressed file ends unexpectedly\00", align 1, !dbg !17
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !22

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @bunzip2(ptr noundef %buf, i64 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %outbuf, ptr noundef %pos, ptr noundef %error) #0 section ".init.text" align 16 !dbg !62 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %outbuf.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %i = alloca i32, align 4
  %inbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !76, metadata !DIExpression()), !dbg !140
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !77, metadata !DIExpression()), !dbg !141
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !78, metadata !DIExpression()), !dbg !142
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !79, metadata !DIExpression()), !dbg !143
  store ptr %outbuf, ptr %outbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outbuf.addr, metadata !80, metadata !DIExpression()), !dbg !144
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !81, metadata !DIExpression()), !dbg !145
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !82, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #12, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !83, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %i, metadata !136, metadata !DIExpression()), !dbg !150
  store i32 -1, ptr %i, align 4, !dbg !150
  call void @llvm.lifetime.start.p0(i64 8, ptr %inbuf) #12, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %inbuf, metadata !137, metadata !DIExpression()), !dbg !152
  %0 = load ptr, ptr %flush.addr, align 8, !dbg !153
  %tobool = icmp ne ptr %0, null, !dbg !153
  br i1 %tobool, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %call = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #13, !dbg !156
  store ptr %call, ptr %outbuf.addr, align 8, !dbg !157
  br label %if.end, !dbg !158

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %outbuf.addr, align 8, !dbg !159
  %tobool1 = icmp ne ptr %1, null, !dbg !159
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !161

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %error.addr, align 8, !dbg !162
  call void %2(ptr noundef @.str) #14, !dbg !162
  store i32 -6, ptr %retval, align 4, !dbg !164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !164

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !165
  %tobool4 = icmp ne ptr %3, null, !dbg !165
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !167

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !168
  store ptr %4, ptr %inbuf, align 8, !dbg !169
  br label %if.end7, !dbg !170

if.else:                                          ; preds = %if.end3
  %call6 = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #13, !dbg !171
  store ptr %call6, ptr %inbuf, align 8, !dbg !172
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %5 = load ptr, ptr %inbuf, align 8, !dbg !173
  %tobool8 = icmp ne ptr %5, null, !dbg !173
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !175

if.then9:                                         ; preds = %if.end7
  %6 = load ptr, ptr %error.addr, align 8, !dbg !176
  call void %6(ptr noundef @.str.1) #14, !dbg !176
  store i32 -6, ptr %i, align 4, !dbg !178
  br label %exit_0, !dbg !179

if.end10:                                         ; preds = %if.end7
  %7 = load ptr, ptr %inbuf, align 8, !dbg !180
  %8 = load i64, ptr %len.addr, align 8, !dbg !181
  %9 = load ptr, ptr %fill.addr, align 8, !dbg !182
  %call11 = call i32 @start_bunzip(ptr noundef %bd, ptr noundef %7, i64 noundef %8, ptr noundef %9) #15, !dbg !183
  store i32 %call11, ptr %i, align 4, !dbg !184
  %10 = load i32, ptr %i, align 4, !dbg !185
  %tobool12 = icmp ne i32 %10, 0, !dbg !185
  br i1 %tobool12, label %if.end27, label %if.then13, !dbg !187

if.then13:                                        ; preds = %if.end10
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %if.end26, %if.then13
  %11 = load ptr, ptr %bd, align 8, !dbg !190
  %12 = load ptr, ptr %outbuf.addr, align 8, !dbg !194
  %call14 = call i32 @read_bunzip(ptr noundef %11, ptr noundef %12, i32 noundef 4096) #15, !dbg !195
  store i32 %call14, ptr %i, align 4, !dbg !196
  %13 = load i32, ptr %i, align 4, !dbg !197
  %cmp = icmp sle i32 %13, 0, !dbg !199
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !200

if.then15:                                        ; preds = %for.cond
  br label %for.end, !dbg !201

if.end16:                                         ; preds = %for.cond
  %14 = load ptr, ptr %flush.addr, align 8, !dbg !202
  %tobool17 = icmp ne ptr %14, null, !dbg !202
  br i1 %tobool17, label %if.else19, label %if.then18, !dbg !204

if.then18:                                        ; preds = %if.end16
  %15 = load i32, ptr %i, align 4, !dbg !205
  %16 = load ptr, ptr %outbuf.addr, align 8, !dbg !206
  %idx.ext = sext i32 %15 to i64, !dbg !206
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !206
  store ptr %add.ptr, ptr %outbuf.addr, align 8, !dbg !206
  br label %if.end26, !dbg !207

if.else19:                                        ; preds = %if.end16
  %17 = load i32, ptr %i, align 4, !dbg !208
  %conv = sext i32 %17 to i64, !dbg !208
  %18 = load ptr, ptr %flush.addr, align 8, !dbg !210
  %19 = load ptr, ptr %outbuf.addr, align 8, !dbg !211
  %20 = load i32, ptr %i, align 4, !dbg !212
  %conv20 = sext i32 %20 to i64, !dbg !212
  %call21 = call i64 %18(ptr noundef %19, i64 noundef %conv20) #14, !dbg !210
  %cmp22 = icmp ne i64 %conv, %call21, !dbg !213
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !214

if.then24:                                        ; preds = %if.else19
  store i32 -4, ptr %i, align 4, !dbg !215
  br label %for.end, !dbg !217

if.end25:                                         ; preds = %if.else19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then18
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %if.then24, %if.then15
  br label %if.end27, !dbg !223

if.end27:                                         ; preds = %for.end, %if.end10
  %21 = load i32, ptr %i, align 4, !dbg !224
  %cmp28 = icmp eq i32 %21, -1, !dbg !226
  br i1 %cmp28, label %if.then30, label %if.else36, !dbg !227

if.then30:                                        ; preds = %if.end27
  %22 = load ptr, ptr %bd, align 8, !dbg !228
  %headerCRC = getelementptr inbounds %struct.bunzip_data, ptr %22, i32 0, i32 12, !dbg !231
  %23 = load i32, ptr %headerCRC, align 8, !dbg !231
  %24 = load ptr, ptr %bd, align 8, !dbg !232
  %totalCRC = getelementptr inbounds %struct.bunzip_data, ptr %24, i32 0, i32 13, !dbg !233
  %25 = load i32, ptr %totalCRC, align 4, !dbg !233
  %cmp31 = icmp ne i32 %23, %25, !dbg !234
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !235

if.then33:                                        ; preds = %if.then30
  %26 = load ptr, ptr %error.addr, align 8, !dbg !236
  call void %26(ptr noundef @.str.2) #14, !dbg !236
  br label %if.end35, !dbg !236

if.else34:                                        ; preds = %if.then30
  store i32 0, ptr %i, align 4, !dbg !237
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  br label %if.end41, !dbg !238

if.else36:                                        ; preds = %if.end27
  %27 = load i32, ptr %i, align 4, !dbg !239
  %cmp37 = icmp eq i32 %27, -4, !dbg !241
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !242

if.then39:                                        ; preds = %if.else36
  %28 = load ptr, ptr %error.addr, align 8, !dbg !243
  call void %28(ptr noundef @.str.3) #14, !dbg !243
  br label %if.end40, !dbg !245

if.end40:                                         ; preds = %if.then39, %if.else36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end35
  %29 = load ptr, ptr %bd, align 8, !dbg !246
  %tobool42 = icmp ne ptr %29, null, !dbg !246
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !248

if.then43:                                        ; preds = %if.end41
  br label %exit_1, !dbg !249

if.end44:                                         ; preds = %if.end41
  %30 = load ptr, ptr %bd, align 8, !dbg !250
  %dbuf = getelementptr inbounds %struct.bunzip_data, ptr %30, i32 0, i32 15, !dbg !252
  %31 = load ptr, ptr %dbuf, align 8, !dbg !252
  %tobool45 = icmp ne ptr %31, null, !dbg !250
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !253

if.then46:                                        ; preds = %if.end44
  %32 = load ptr, ptr %bd, align 8, !dbg !254
  %dbuf47 = getelementptr inbounds %struct.bunzip_data, ptr %32, i32 0, i32 15, !dbg !254
  %33 = load ptr, ptr %dbuf47, align 8, !dbg !254
  call void @vfree(ptr noundef %33) #14, !dbg !254
  br label %if.end48, !dbg !254

if.end48:                                         ; preds = %if.then46, %if.end44
  %34 = load ptr, ptr %pos.addr, align 8, !dbg !255
  %tobool49 = icmp ne ptr %34, null, !dbg !255
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !257

if.then50:                                        ; preds = %if.end48
  %35 = load ptr, ptr %bd, align 8, !dbg !258
  %inbufPos = getelementptr inbounds %struct.bunzip_data, ptr %35, i32 0, i32 7, !dbg !259
  %36 = load i64, ptr %inbufPos, align 8, !dbg !259
  %37 = load ptr, ptr %pos.addr, align 8, !dbg !260
  store i64 %36, ptr %37, align 8, !dbg !261
  br label %if.end51, !dbg !262

if.end51:                                         ; preds = %if.then50, %if.end48
  %38 = load ptr, ptr %bd, align 8, !dbg !263
  call void @kfree(ptr noundef %38) #14, !dbg !263
  br label %exit_1, !dbg !263

exit_1:                                           ; preds = %if.end51, %if.then43
  call void @llvm.dbg.label(metadata !138), !dbg !264
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !265
  %tobool52 = icmp ne ptr %39, null, !dbg !265
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !267

if.then53:                                        ; preds = %exit_1
  %40 = load ptr, ptr %inbuf, align 8, !dbg !268
  call void @kfree(ptr noundef %40) #14, !dbg !268
  br label %if.end54, !dbg !268

if.end54:                                         ; preds = %if.then53, %exit_1
  br label %exit_0, !dbg !265

exit_0:                                           ; preds = %if.end54, %if.then9
  call void @llvm.dbg.label(metadata !139), !dbg !269
  %41 = load ptr, ptr %flush.addr, align 8, !dbg !270
  %tobool55 = icmp ne ptr %41, null, !dbg !270
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !272

if.then56:                                        ; preds = %exit_0
  %42 = load ptr, ptr %outbuf.addr, align 8, !dbg !273
  call void @kfree(ptr noundef %42) #14, !dbg !273
  br label %if.end57, !dbg !273

if.end57:                                         ; preds = %if.then56, %exit_0
  %43 = load i32, ptr %i, align 4, !dbg !274
  store i32 %43, ptr %retval, align 4, !dbg !275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !275

cleanup:                                          ; preds = %if.end57, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %inbuf) #12, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !276
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #12, !dbg !276
  %44 = load i32, ptr %retval, align 4, !dbg !276
  ret i32 %44, !dbg !276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !277 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !285, metadata !DIExpression()), !dbg !290
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !286, metadata !DIExpression()), !dbg !291
  %0 = load i64, ptr %size.addr, align 8, !dbg !292
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !293
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !294

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !295
  %tobool = icmp ne i64 %2, 0, !dbg !295
  br i1 %tobool, label %if.then, label %if.end7, !dbg !296

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %index, metadata !287, metadata !DIExpression()), !dbg !298
  %3 = load i64, ptr %size.addr, align 8, !dbg !299
  %cmp = icmp ugt i64 %3, 8192, !dbg !301
  br i1 %cmp, label %if.then1, label %if.end, !dbg !302

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !303
  %5 = load i32, ptr %flags.addr, align 4, !dbg !304
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #13, !dbg !305
  store ptr %call, ptr %retval, align 8, !dbg !306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !306

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !307
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !307
  store i32 %call2, ptr %index, align 4, !dbg !308
  %7 = load i32, ptr %flags.addr, align 4, !dbg !309
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !310
  %9 = ptrtoint ptr %8 to i64, !dbg !310
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !311
  %idxprom = zext i32 %call3 to i64, !dbg !312
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !312
  %10 = load i32, ptr %index, align 4, !dbg !313
  %idxprom4 = zext i32 %10 to i64, !dbg !312
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !312
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !312
  %12 = load i32, ptr %flags.addr, align 4, !dbg !314
  %13 = load i64, ptr %size.addr, align 8, !dbg !315
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !316
  store ptr %call6, ptr %retval, align 8, !dbg !317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !317

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !318
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !319
  %15 = load i32, ptr %flags.addr, align 4, !dbg !320
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #13, !dbg !321
  store ptr %call8, ptr %retval, align 8, !dbg !322
  br label %return, !dbg !322

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !323
  ret ptr %16, !dbg !323
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @start_bunzip(ptr noundef %bdp, ptr noundef %inbuf, i64 noundef %len, ptr noundef %fill) #0 section ".init.text" align 16 !dbg !324 {
entry:
  %retval = alloca i32, align 4
  %bdp.addr = alloca ptr, align 8
  %inbuf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %BZh0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdp, ptr %bdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdp.addr, metadata !329, metadata !DIExpression()), !dbg !339
  store ptr %inbuf, ptr %inbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inbuf.addr, metadata !330, metadata !DIExpression()), !dbg !340
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !331, metadata !DIExpression()), !dbg !341
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !332, metadata !DIExpression()), !dbg !342
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #12, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !333, metadata !DIExpression()), !dbg !344
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %i, metadata !334, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %j, metadata !335, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %c, metadata !336, metadata !DIExpression()), !dbg !348
  call void @llvm.lifetime.start.p0(i64 4, ptr %BZh0) #12, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %BZh0, metadata !337, metadata !DIExpression()), !dbg !350
  store i32 1113221168, ptr %BZh0, align 4, !dbg !350
  store i32 42648, ptr %i, align 4, !dbg !351
  %0 = load i32, ptr %i, align 4, !dbg !352
  %conv = zext i32 %0 to i64, !dbg !352
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #13, !dbg !352
  %1 = load ptr, ptr %bdp.addr, align 8, !dbg !353
  store ptr %call, ptr %1, align 8, !dbg !354
  store ptr %call, ptr %bd, align 8, !dbg !355
  %2 = load ptr, ptr %bd, align 8, !dbg !356
  %tobool = icmp ne ptr %2, null, !dbg !356
  br i1 %tobool, label %if.end, label %if.then, !dbg !358

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !359

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bd, align 8, !dbg !360
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 42648, i1 false), !dbg !361
  %4 = load ptr, ptr %inbuf.addr, align 8, !dbg !362
  %5 = load ptr, ptr %bd, align 8, !dbg !363
  %inbuf1 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 8, !dbg !364
  store ptr %4, ptr %inbuf1, align 8, !dbg !365
  %6 = load i64, ptr %len.addr, align 8, !dbg !366
  %7 = load ptr, ptr %bd, align 8, !dbg !367
  %inbufCount = getelementptr inbounds %struct.bunzip_data, ptr %7, i32 0, i32 6, !dbg !368
  store i64 %6, ptr %inbufCount, align 8, !dbg !369
  %8 = load ptr, ptr %fill.addr, align 8, !dbg !370
  %cmp = icmp ne ptr %8, null, !dbg !372
  br i1 %cmp, label %if.then3, label %if.else, !dbg !373

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %fill.addr, align 8, !dbg !374
  %10 = load ptr, ptr %bd, align 8, !dbg !375
  %fill4 = getelementptr inbounds %struct.bunzip_data, ptr %10, i32 0, i32 5, !dbg !376
  store ptr %9, ptr %fill4, align 8, !dbg !377
  br label %if.end6, !dbg !375

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %bd, align 8, !dbg !378
  %fill5 = getelementptr inbounds %struct.bunzip_data, ptr %11, i32 0, i32 5, !dbg !379
  store ptr @nofill, ptr %fill5, align 8, !dbg !380
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  store i32 0, ptr %i, align 4, !dbg !381
  br label %for.cond, !dbg !383

for.cond:                                         ; preds = %for.inc15, %if.end6
  %12 = load i32, ptr %i, align 4, !dbg !384
  %cmp7 = icmp ult i32 %12, 256, !dbg !386
  br i1 %cmp7, label %for.body, label %for.end16, !dbg !387

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !dbg !388
  %shl = shl i32 %13, 24, !dbg !390
  store i32 %shl, ptr %c, align 4, !dbg !391
  store i32 8, ptr %j, align 4, !dbg !392
  br label %for.cond9, !dbg !394

for.cond9:                                        ; preds = %for.inc, %for.body
  %14 = load i32, ptr %j, align 4, !dbg !395
  %tobool10 = icmp ne i32 %14, 0, !dbg !397
  br i1 %tobool10, label %for.body11, label %for.end, !dbg !397

for.body11:                                       ; preds = %for.cond9
  %15 = load i32, ptr %c, align 4, !dbg !398
  %and = and i32 %15, -2147483648, !dbg !399
  %tobool12 = icmp ne i32 %and, 0, !dbg !399
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !398

cond.true:                                        ; preds = %for.body11
  %16 = load i32, ptr %c, align 4, !dbg !400
  %shl13 = shl i32 %16, 1, !dbg !401
  %xor = xor i32 %shl13, 79764919, !dbg !402
  br label %cond.end, !dbg !398

cond.false:                                       ; preds = %for.body11
  %17 = load i32, ptr %c, align 4, !dbg !403
  %shl14 = shl i32 %17, 1, !dbg !404
  br label %cond.end, !dbg !398

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %shl14, %cond.false ], !dbg !398
  store i32 %cond, ptr %c, align 4, !dbg !405
  br label %for.inc, !dbg !406

for.inc:                                          ; preds = %cond.end
  %18 = load i32, ptr %j, align 4, !dbg !407
  %dec = add i32 %18, -1, !dbg !407
  store i32 %dec, ptr %j, align 4, !dbg !407
  br label %for.cond9, !dbg !408, !llvm.loop !409

for.end:                                          ; preds = %for.cond9
  %19 = load i32, ptr %c, align 4, !dbg !412
  %20 = load ptr, ptr %bd, align 8, !dbg !413
  %crc32Table = getelementptr inbounds %struct.bunzip_data, ptr %20, i32 0, i32 11, !dbg !414
  %21 = load i32, ptr %i, align 4, !dbg !415
  %idxprom = zext i32 %21 to i64, !dbg !413
  %arrayidx = getelementptr [256 x i32], ptr %crc32Table, i64 0, i64 %idxprom, !dbg !413
  store i32 %19, ptr %arrayidx, align 4, !dbg !416
  br label %for.inc15, !dbg !417

for.inc15:                                        ; preds = %for.end
  %22 = load i32, ptr %i, align 4, !dbg !418
  %inc = add i32 %22, 1, !dbg !418
  store i32 %inc, ptr %i, align 4, !dbg !418
  br label %for.cond, !dbg !419, !llvm.loop !420

for.end16:                                        ; preds = %for.cond
  %23 = load ptr, ptr %bd, align 8, !dbg !422
  %call17 = call i32 @get_bits(ptr noundef %23, i8 noundef zeroext 32) #15, !dbg !423
  store i32 %call17, ptr %i, align 4, !dbg !424
  %24 = load i32, ptr %i, align 4, !dbg !425
  %sub = sub i32 %24, 1113221168, !dbg !427
  %sub18 = sub i32 %sub, 1, !dbg !428
  %cmp19 = icmp uge i32 %sub18, 9, !dbg !429
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !430

if.then21:                                        ; preds = %for.end16
  store i32 -2, ptr %retval, align 4, !dbg !431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !431

if.end22:                                         ; preds = %for.end16
  %25 = load i32, ptr %i, align 4, !dbg !432
  %sub23 = sub i32 %25, 1113221168, !dbg !433
  %mul = mul i32 100000, %sub23, !dbg !434
  %26 = load ptr, ptr %bd, align 8, !dbg !435
  %dbufSize = getelementptr inbounds %struct.bunzip_data, ptr %26, i32 0, i32 16, !dbg !436
  store i32 %mul, ptr %dbufSize, align 8, !dbg !437
  %27 = load ptr, ptr %bd, align 8, !dbg !438
  %dbufSize24 = getelementptr inbounds %struct.bunzip_data, ptr %27, i32 0, i32 16, !dbg !438
  %28 = load i32, ptr %dbufSize24, align 8, !dbg !438
  %conv25 = zext i32 %28 to i64, !dbg !438
  %mul26 = mul i64 %conv25, 4, !dbg !438
  %call27 = call noalias ptr @vmalloc(i64 noundef %mul26) #13, !dbg !438
  %29 = load ptr, ptr %bd, align 8, !dbg !439
  %dbuf = getelementptr inbounds %struct.bunzip_data, ptr %29, i32 0, i32 15, !dbg !440
  store ptr %call27, ptr %dbuf, align 8, !dbg !441
  %30 = load ptr, ptr %bd, align 8, !dbg !442
  %dbuf28 = getelementptr inbounds %struct.bunzip_data, ptr %30, i32 0, i32 15, !dbg !444
  %31 = load ptr, ptr %dbuf28, align 8, !dbg !444
  %tobool29 = icmp ne ptr %31, null, !dbg !442
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !445

if.then30:                                        ; preds = %if.end22
  store i32 -6, ptr %retval, align 4, !dbg !446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !446

if.end31:                                         ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

cleanup:                                          ; preds = %if.end31, %if.then30, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %BZh0) #12, !dbg !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !448
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #12, !dbg !448
  %32 = load i32, ptr %retval, align 4, !dbg !448
  ret i32 %32, !dbg !448
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @read_bunzip(ptr noundef %bd, ptr noundef %outbuf, i32 noundef %len) #0 section ".init.text" align 16 !dbg !449 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca ptr, align 8
  %outbuf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %dbuf = alloca ptr, align 8
  %pos = alloca i32, align 4
  %xcurrent = alloca i32, align 4
  %previous = alloca i32, align 4
  %gotcount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !453, metadata !DIExpression()), !dbg !468
  store ptr %outbuf, ptr %outbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outbuf.addr, metadata !454, metadata !DIExpression()), !dbg !469
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !455, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf) #12, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %dbuf, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #12, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !458, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 4, ptr %xcurrent) #12, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %xcurrent, metadata !459, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 4, ptr %previous) #12, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %previous, metadata !460, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotcount) #12, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %gotcount, metadata !461, metadata !DIExpression()), !dbg !477
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !478
  %writeCount = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 3, !dbg !480
  %1 = load i32, ptr %writeCount, align 4, !dbg !480
  %cmp = icmp slt i32 %1, 0, !dbg !481
  br i1 %cmp, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bd.addr, align 8, !dbg !483
  %writeCount1 = getelementptr inbounds %struct.bunzip_data, ptr %2, i32 0, i32 3, !dbg !484
  %3 = load i32, ptr %writeCount1, align 4, !dbg !484
  store i32 %3, ptr %retval, align 4, !dbg !485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !485

if.end:                                           ; preds = %entry
  store i32 0, ptr %gotcount, align 4, !dbg !486
  %4 = load ptr, ptr %bd.addr, align 8, !dbg !487
  %dbuf2 = getelementptr inbounds %struct.bunzip_data, ptr %4, i32 0, i32 15, !dbg !488
  %5 = load ptr, ptr %dbuf2, align 8, !dbg !488
  store ptr %5, ptr %dbuf, align 8, !dbg !489
  %6 = load ptr, ptr %bd.addr, align 8, !dbg !490
  %writePos = getelementptr inbounds %struct.bunzip_data, ptr %6, i32 0, i32 1, !dbg !491
  %7 = load i32, ptr %writePos, align 4, !dbg !491
  store i32 %7, ptr %pos, align 4, !dbg !492
  %8 = load ptr, ptr %bd.addr, align 8, !dbg !493
  %writeCurrent = getelementptr inbounds %struct.bunzip_data, ptr %8, i32 0, i32 4, !dbg !494
  %9 = load i32, ptr %writeCurrent, align 8, !dbg !494
  store i32 %9, ptr %xcurrent, align 4, !dbg !495
  %10 = load ptr, ptr %bd.addr, align 8, !dbg !496
  %writeCopies = getelementptr inbounds %struct.bunzip_data, ptr %10, i32 0, i32 0, !dbg !497
  %11 = load i32, ptr %writeCopies, align 8, !dbg !497
  %tobool = icmp ne i32 %11, 0, !dbg !496
  br i1 %tobool, label %if.then3, label %if.end63, !dbg !498

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %bd.addr, align 8, !dbg !499
  %writeCopies4 = getelementptr inbounds %struct.bunzip_data, ptr %12, i32 0, i32 0, !dbg !500
  %13 = load i32, ptr %writeCopies4, align 8, !dbg !501
  %dec = add i32 %13, -1, !dbg !501
  store i32 %dec, ptr %writeCopies4, align 8, !dbg !501
  br label %for.cond, !dbg !502

for.cond:                                         ; preds = %if.end47, %if.then19, %if.then3
  %14 = load i32, ptr %gotcount, align 4, !dbg !503
  %15 = load i32, ptr %len.addr, align 4, !dbg !505
  %cmp5 = icmp sge i32 %14, %15, !dbg !506
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !507

if.then6:                                         ; preds = %for.cond
  %16 = load i32, ptr %pos, align 4, !dbg !508
  %17 = load ptr, ptr %bd.addr, align 8, !dbg !510
  %writePos7 = getelementptr inbounds %struct.bunzip_data, ptr %17, i32 0, i32 1, !dbg !511
  store i32 %16, ptr %writePos7, align 4, !dbg !512
  %18 = load i32, ptr %xcurrent, align 4, !dbg !513
  %19 = load ptr, ptr %bd.addr, align 8, !dbg !514
  %writeCurrent8 = getelementptr inbounds %struct.bunzip_data, ptr %19, i32 0, i32 4, !dbg !515
  store i32 %18, ptr %writeCurrent8, align 8, !dbg !516
  %20 = load ptr, ptr %bd.addr, align 8, !dbg !517
  %writeCopies9 = getelementptr inbounds %struct.bunzip_data, ptr %20, i32 0, i32 0, !dbg !518
  %21 = load i32, ptr %writeCopies9, align 8, !dbg !519
  %inc = add i32 %21, 1, !dbg !519
  store i32 %inc, ptr %writeCopies9, align 8, !dbg !519
  %22 = load i32, ptr %len.addr, align 4, !dbg !520
  store i32 %22, ptr %retval, align 4, !dbg !521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.end10:                                         ; preds = %for.cond
  %23 = load i32, ptr %xcurrent, align 4, !dbg !522
  %conv = trunc i32 %23 to i8, !dbg !522
  %24 = load ptr, ptr %outbuf.addr, align 8, !dbg !523
  %25 = load i32, ptr %gotcount, align 4, !dbg !524
  %inc11 = add i32 %25, 1, !dbg !524
  store i32 %inc11, ptr %gotcount, align 4, !dbg !524
  %idxprom = sext i32 %25 to i64, !dbg !523
  %arrayidx = getelementptr i8, ptr %24, i64 %idxprom, !dbg !523
  store i8 %conv, ptr %arrayidx, align 1, !dbg !525
  %26 = load ptr, ptr %bd.addr, align 8, !dbg !526
  %writeCRC = getelementptr inbounds %struct.bunzip_data, ptr %26, i32 0, i32 14, !dbg !527
  %27 = load i32, ptr %writeCRC, align 8, !dbg !527
  %shl = shl i32 %27, 8, !dbg !528
  %28 = load ptr, ptr %bd.addr, align 8, !dbg !529
  %crc32Table = getelementptr inbounds %struct.bunzip_data, ptr %28, i32 0, i32 11, !dbg !530
  %29 = load ptr, ptr %bd.addr, align 8, !dbg !531
  %writeCRC12 = getelementptr inbounds %struct.bunzip_data, ptr %29, i32 0, i32 14, !dbg !532
  %30 = load i32, ptr %writeCRC12, align 8, !dbg !532
  %shr = lshr i32 %30, 24, !dbg !533
  %31 = load i32, ptr %xcurrent, align 4, !dbg !534
  %xor = xor i32 %shr, %31, !dbg !535
  %idxprom13 = zext i32 %xor to i64, !dbg !529
  %arrayidx14 = getelementptr [256 x i32], ptr %crc32Table, i64 0, i64 %idxprom13, !dbg !529
  %32 = load i32, ptr %arrayidx14, align 4, !dbg !529
  %xor15 = xor i32 %shl, %32, !dbg !536
  %33 = load ptr, ptr %bd.addr, align 8, !dbg !537
  %writeCRC16 = getelementptr inbounds %struct.bunzip_data, ptr %33, i32 0, i32 14, !dbg !538
  store i32 %xor15, ptr %writeCRC16, align 8, !dbg !539
  %34 = load ptr, ptr %bd.addr, align 8, !dbg !540
  %writeCopies17 = getelementptr inbounds %struct.bunzip_data, ptr %34, i32 0, i32 0, !dbg !542
  %35 = load i32, ptr %writeCopies17, align 8, !dbg !542
  %tobool18 = icmp ne i32 %35, 0, !dbg !540
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !543

if.then19:                                        ; preds = %if.end10
  %36 = load ptr, ptr %bd.addr, align 8, !dbg !544
  %writeCopies20 = getelementptr inbounds %struct.bunzip_data, ptr %36, i32 0, i32 0, !dbg !546
  %37 = load i32, ptr %writeCopies20, align 8, !dbg !547
  %dec21 = add i32 %37, -1, !dbg !547
  store i32 %dec21, ptr %writeCopies20, align 8, !dbg !547
  br label %for.cond, !dbg !548, !llvm.loop !549

if.end22:                                         ; preds = %if.end10
  br label %decode_next_byte, !dbg !542

decode_next_byte:                                 ; preds = %if.end69, %if.then43, %if.end22
  call void @llvm.dbg.label(metadata !462), !dbg !552
  %38 = load ptr, ptr %bd.addr, align 8, !dbg !553
  %writeCount23 = getelementptr inbounds %struct.bunzip_data, ptr %38, i32 0, i32 3, !dbg !555
  %39 = load i32, ptr %writeCount23, align 4, !dbg !556
  %dec24 = add i32 %39, -1, !dbg !556
  store i32 %dec24, ptr %writeCount23, align 4, !dbg !556
  %tobool25 = icmp ne i32 %39, 0, !dbg !556
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !557

if.then26:                                        ; preds = %decode_next_byte
  br label %for.end, !dbg !558

if.end27:                                         ; preds = %decode_next_byte
  %40 = load i32, ptr %xcurrent, align 4, !dbg !559
  store i32 %40, ptr %previous, align 4, !dbg !560
  %41 = load ptr, ptr %dbuf, align 8, !dbg !561
  %42 = load i32, ptr %pos, align 4, !dbg !562
  %idxprom28 = sext i32 %42 to i64, !dbg !561
  %arrayidx29 = getelementptr i32, ptr %41, i64 %idxprom28, !dbg !561
  %43 = load i32, ptr %arrayidx29, align 4, !dbg !561
  store i32 %43, ptr %pos, align 4, !dbg !563
  %44 = load i32, ptr %pos, align 4, !dbg !564
  %and = and i32 %44, 255, !dbg !565
  store i32 %and, ptr %xcurrent, align 4, !dbg !566
  %45 = load i32, ptr %pos, align 4, !dbg !567
  %shr30 = ashr i32 %45, 8, !dbg !567
  store i32 %shr30, ptr %pos, align 4, !dbg !567
  %46 = load ptr, ptr %bd.addr, align 8, !dbg !568
  %writeRunCountdown = getelementptr inbounds %struct.bunzip_data, ptr %46, i32 0, i32 2, !dbg !570
  %47 = load i32, ptr %writeRunCountdown, align 8, !dbg !571
  %dec31 = add i32 %47, -1, !dbg !571
  store i32 %dec31, ptr %writeRunCountdown, align 8, !dbg !571
  %tobool32 = icmp ne i32 %dec31, 0, !dbg !571
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !572

if.then33:                                        ; preds = %if.end27
  %48 = load i32, ptr %xcurrent, align 4, !dbg !573
  %49 = load i32, ptr %previous, align 4, !dbg !576
  %cmp34 = icmp ne i32 %48, %49, !dbg !577
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !578

if.then36:                                        ; preds = %if.then33
  %50 = load ptr, ptr %bd.addr, align 8, !dbg !579
  %writeRunCountdown37 = getelementptr inbounds %struct.bunzip_data, ptr %50, i32 0, i32 2, !dbg !580
  store i32 4, ptr %writeRunCountdown37, align 8, !dbg !581
  br label %if.end38, !dbg !579

if.end38:                                         ; preds = %if.then36, %if.then33
  br label %if.end47, !dbg !582

if.else:                                          ; preds = %if.end27
  %51 = load i32, ptr %xcurrent, align 4, !dbg !583
  %52 = load ptr, ptr %bd.addr, align 8, !dbg !585
  %writeCopies39 = getelementptr inbounds %struct.bunzip_data, ptr %52, i32 0, i32 0, !dbg !586
  store i32 %51, ptr %writeCopies39, align 8, !dbg !587
  %53 = load i32, ptr %previous, align 4, !dbg !588
  store i32 %53, ptr %xcurrent, align 4, !dbg !589
  %54 = load ptr, ptr %bd.addr, align 8, !dbg !590
  %writeRunCountdown40 = getelementptr inbounds %struct.bunzip_data, ptr %54, i32 0, i32 2, !dbg !591
  store i32 5, ptr %writeRunCountdown40, align 8, !dbg !592
  %55 = load ptr, ptr %bd.addr, align 8, !dbg !593
  %writeCopies41 = getelementptr inbounds %struct.bunzip_data, ptr %55, i32 0, i32 0, !dbg !595
  %56 = load i32, ptr %writeCopies41, align 8, !dbg !595
  %tobool42 = icmp ne i32 %56, 0, !dbg !593
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !596

if.then43:                                        ; preds = %if.else
  br label %decode_next_byte, !dbg !597

if.end44:                                         ; preds = %if.else
  %57 = load ptr, ptr %bd.addr, align 8, !dbg !598
  %writeCopies45 = getelementptr inbounds %struct.bunzip_data, ptr %57, i32 0, i32 0, !dbg !599
  %58 = load i32, ptr %writeCopies45, align 8, !dbg !600
  %dec46 = add i32 %58, -1, !dbg !600
  store i32 %dec46, ptr %writeCopies45, align 8, !dbg !600
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %if.end38
  br label %for.cond, !dbg !601, !llvm.loop !549

for.end:                                          ; preds = %if.then26
  %59 = load ptr, ptr %bd.addr, align 8, !dbg !602
  %writeCRC48 = getelementptr inbounds %struct.bunzip_data, ptr %59, i32 0, i32 14, !dbg !603
  %60 = load i32, ptr %writeCRC48, align 8, !dbg !603
  %not = xor i32 %60, -1, !dbg !604
  %61 = load ptr, ptr %bd.addr, align 8, !dbg !605
  %writeCRC49 = getelementptr inbounds %struct.bunzip_data, ptr %61, i32 0, i32 14, !dbg !606
  store i32 %not, ptr %writeCRC49, align 8, !dbg !607
  %62 = load ptr, ptr %bd.addr, align 8, !dbg !608
  %totalCRC = getelementptr inbounds %struct.bunzip_data, ptr %62, i32 0, i32 13, !dbg !609
  %63 = load i32, ptr %totalCRC, align 4, !dbg !609
  %shl50 = shl i32 %63, 1, !dbg !610
  %64 = load ptr, ptr %bd.addr, align 8, !dbg !611
  %totalCRC51 = getelementptr inbounds %struct.bunzip_data, ptr %64, i32 0, i32 13, !dbg !612
  %65 = load i32, ptr %totalCRC51, align 4, !dbg !612
  %shr52 = lshr i32 %65, 31, !dbg !613
  %or = or i32 %shl50, %shr52, !dbg !614
  %66 = load ptr, ptr %bd.addr, align 8, !dbg !615
  %writeCRC53 = getelementptr inbounds %struct.bunzip_data, ptr %66, i32 0, i32 14, !dbg !616
  %67 = load i32, ptr %writeCRC53, align 8, !dbg !616
  %xor54 = xor i32 %or, %67, !dbg !617
  %68 = load ptr, ptr %bd.addr, align 8, !dbg !618
  %totalCRC55 = getelementptr inbounds %struct.bunzip_data, ptr %68, i32 0, i32 13, !dbg !619
  store i32 %xor54, ptr %totalCRC55, align 4, !dbg !620
  %69 = load ptr, ptr %bd.addr, align 8, !dbg !621
  %writeCRC56 = getelementptr inbounds %struct.bunzip_data, ptr %69, i32 0, i32 14, !dbg !623
  %70 = load i32, ptr %writeCRC56, align 8, !dbg !623
  %71 = load ptr, ptr %bd.addr, align 8, !dbg !624
  %headerCRC = getelementptr inbounds %struct.bunzip_data, ptr %71, i32 0, i32 12, !dbg !625
  %72 = load i32, ptr %headerCRC, align 8, !dbg !625
  %cmp57 = icmp ne i32 %70, %72, !dbg !626
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !627

if.then59:                                        ; preds = %for.end
  %73 = load ptr, ptr %bd.addr, align 8, !dbg !628
  %headerCRC60 = getelementptr inbounds %struct.bunzip_data, ptr %73, i32 0, i32 12, !dbg !630
  %74 = load i32, ptr %headerCRC60, align 8, !dbg !630
  %add = add i32 %74, 1, !dbg !631
  %75 = load ptr, ptr %bd.addr, align 8, !dbg !632
  %totalCRC61 = getelementptr inbounds %struct.bunzip_data, ptr %75, i32 0, i32 13, !dbg !633
  store i32 %add, ptr %totalCRC61, align 4, !dbg !634
  store i32 -1, ptr %retval, align 4, !dbg !635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !635

if.end62:                                         ; preds = %for.end
  br label %if.end63, !dbg !636

if.end63:                                         ; preds = %if.end62, %if.end
  %76 = load ptr, ptr %bd.addr, align 8, !dbg !637
  %call = call i32 @get_next_block(ptr noundef %76) #15, !dbg !638
  store i32 %call, ptr %previous, align 4, !dbg !639
  %77 = load i32, ptr %previous, align 4, !dbg !640
  %tobool64 = icmp ne i32 %77, 0, !dbg !640
  br i1 %tobool64, label %if.then65, label %if.end69, !dbg !642

if.then65:                                        ; preds = %if.end63
  %78 = load i32, ptr %previous, align 4, !dbg !643
  %79 = load ptr, ptr %bd.addr, align 8, !dbg !645
  %writeCount66 = getelementptr inbounds %struct.bunzip_data, ptr %79, i32 0, i32 3, !dbg !646
  store i32 %78, ptr %writeCount66, align 4, !dbg !647
  %80 = load i32, ptr %previous, align 4, !dbg !648
  %cmp67 = icmp ne i32 %80, -1, !dbg !649
  br i1 %cmp67, label %cond.true, label %cond.false, !dbg !650

cond.true:                                        ; preds = %if.then65
  %81 = load i32, ptr %previous, align 4, !dbg !651
  br label %cond.end, !dbg !650

cond.false:                                       ; preds = %if.then65
  %82 = load i32, ptr %gotcount, align 4, !dbg !652
  br label %cond.end, !dbg !650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %81, %cond.true ], [ %82, %cond.false ], !dbg !650
  store i32 %cond, ptr %retval, align 4, !dbg !653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !653

if.end69:                                         ; preds = %if.end63
  %83 = load ptr, ptr %bd.addr, align 8, !dbg !654
  %writeCRC70 = getelementptr inbounds %struct.bunzip_data, ptr %83, i32 0, i32 14, !dbg !655
  store i32 -1, ptr %writeCRC70, align 8, !dbg !656
  %84 = load ptr, ptr %bd.addr, align 8, !dbg !657
  %writePos71 = getelementptr inbounds %struct.bunzip_data, ptr %84, i32 0, i32 1, !dbg !658
  %85 = load i32, ptr %writePos71, align 4, !dbg !658
  store i32 %85, ptr %pos, align 4, !dbg !659
  %86 = load ptr, ptr %bd.addr, align 8, !dbg !660
  %writeCurrent72 = getelementptr inbounds %struct.bunzip_data, ptr %86, i32 0, i32 4, !dbg !661
  %87 = load i32, ptr %writeCurrent72, align 8, !dbg !661
  store i32 %87, ptr %xcurrent, align 4, !dbg !662
  br label %decode_next_byte, !dbg !663

cleanup:                                          ; preds = %cond.end, %if.then59, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotcount) #12, !dbg !664
  call void @llvm.lifetime.end.p0(i64 4, ptr %previous) #12, !dbg !664
  call void @llvm.lifetime.end.p0(i64 4, ptr %xcurrent) #12, !dbg !664
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #12, !dbg !664
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf) #12, !dbg !664
  %88 = load i32, ptr %retval, align 4, !dbg !664
  ret i32 %88, !dbg !664
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !665 dso_local void @vfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !671 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !672 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !673 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !679, metadata !DIExpression()), !dbg !681
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !680, metadata !DIExpression()), !dbg !682
  %0 = load i64, ptr %size.addr, align 8, !dbg !683
  %tobool = icmp ne i64 %0, 0, !dbg !683
  br i1 %tobool, label %if.end, label %if.then, !dbg !685

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !686
  br label %return, !dbg !686

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !687
  %cmp = icmp ule i64 %1, 8, !dbg !689
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !690

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !691
  br label %return, !dbg !691

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !692
  %cmp3 = icmp ugt i64 %2, 64, !dbg !694
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !695

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !696
  %cmp4 = icmp ule i64 %3, 96, !dbg !697
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !698

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !699
  br label %return, !dbg !699

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !700
  %cmp7 = icmp ugt i64 %4, 128, !dbg !702
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !703

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !704
  %cmp9 = icmp ule i64 %5, 192, !dbg !705
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !706

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !707
  br label %return, !dbg !707

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !708
  %cmp12 = icmp ule i64 %6, 8, !dbg !710
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !711

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !712
  br label %return, !dbg !712

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !713
  %cmp15 = icmp ule i64 %7, 16, !dbg !715
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !716

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !717
  br label %return, !dbg !717

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !718
  %cmp18 = icmp ule i64 %8, 32, !dbg !720
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !721

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !722
  br label %return, !dbg !722

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !723
  %cmp21 = icmp ule i64 %9, 64, !dbg !725
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !726

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !727
  br label %return, !dbg !727

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !728
  %cmp24 = icmp ule i64 %10, 128, !dbg !730
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !731

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !732
  br label %return, !dbg !732

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !733
  %cmp27 = icmp ule i64 %11, 256, !dbg !735
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !736

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !737
  br label %return, !dbg !737

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !738
  %cmp30 = icmp ule i64 %12, 512, !dbg !740
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !741

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !742
  br label %return, !dbg !742

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !743
  %cmp33 = icmp ule i64 %13, 1024, !dbg !745
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !746

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !747
  br label %return, !dbg !747

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !748
  %cmp36 = icmp ule i64 %14, 2048, !dbg !750
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !751

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !752
  br label %return, !dbg !752

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !753
  %cmp39 = icmp ule i64 %15, 4096, !dbg !755
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !756

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !757
  br label %return, !dbg !757

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !758
  %cmp42 = icmp ule i64 %16, 8192, !dbg !760
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !761

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !762
  br label %return, !dbg !762

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !763
  %cmp45 = icmp ule i64 %17, 16384, !dbg !765
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !766

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !767
  br label %return, !dbg !767

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !768
  %cmp48 = icmp ule i64 %18, 32768, !dbg !770
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !771

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !772
  br label %return, !dbg !772

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !773
  %cmp51 = icmp ule i64 %19, 65536, !dbg !775
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !776

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !777
  br label %return, !dbg !777

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !778
  %cmp54 = icmp ule i64 %20, 131072, !dbg !780
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !781

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !782
  br label %return, !dbg !782

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !783
  %cmp57 = icmp ule i64 %21, 262144, !dbg !785
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !786

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !787
  br label %return, !dbg !787

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !788
  %cmp60 = icmp ule i64 %22, 524288, !dbg !790
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !791

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !792
  br label %return, !dbg !792

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !793
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !795
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !796

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !797
  br label %return, !dbg !797

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !798
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !800
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !801

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !802
  br label %return, !dbg !802

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !803, !range !805, !noundef !806
  %tobool69 = trunc i8 %25 to i1, !dbg !803
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !807

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !808

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !809, !srcloc !812
  unreachable, !dbg !809

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !813

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !814

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !815

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !817

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !815

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #12, !dbg !819, !srcloc !821
  br label %do.end75, !dbg !819

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !815

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !822
  br label %return, !dbg !822

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !823
  ret i32 %26, !dbg !823
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !824 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !830 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !834, metadata !DIExpression()), !dbg !836
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !835, metadata !DIExpression()), !dbg !837
  %0 = load i32, ptr %flags.addr, align 4, !dbg !838
  %and = and i32 %0, 17, !dbg !838
  %cmp = icmp eq i32 %and, 0, !dbg !838
  %lnot = xor i1 %cmp, true, !dbg !838
  %lnot1 = xor i1 %lnot, true, !dbg !838
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !838
  %conv = sext i32 %lnot.ext to i64, !dbg !838
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !838
  %tobool = icmp ne i64 %expval, 0, !dbg !838
  br i1 %tobool, label %if.then, label %if.end, !dbg !840

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !841
  br label %return, !dbg !841

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !842
  %and2 = and i32 %1, 1, !dbg !844
  %tobool3 = icmp ne i32 %and2, 0, !dbg !844
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !845

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !846
  br label %return, !dbg !846

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !847
  br label %return, !dbg !847

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !849
  ret i32 %2, !dbg !849
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !850 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !851 dso_local void @__compiletime_assert_245() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @nofill(ptr noundef %buf, i64 noundef %len) #0 section ".init.text" align 16 !dbg !854 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !856, metadata !DIExpression()), !dbg !858
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !857, metadata !DIExpression()), !dbg !859
  ret i64 -1, !dbg !860
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @get_bits(ptr noundef %bd, i8 noundef zeroext %bits_wanted) #0 section ".init.text" align 16 !dbg !861 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca ptr, align 8
  %bits_wanted.addr = alloca i8, align 1
  %bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !865, metadata !DIExpression()), !dbg !868
  store i8 %bits_wanted, ptr %bits_wanted.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bits_wanted.addr, metadata !866, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #12, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !867, metadata !DIExpression()), !dbg !871
  store i32 0, ptr %bits, align 4, !dbg !871
  br label %while.cond, !dbg !872

while.cond:                                       ; preds = %if.end26, %entry
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !873
  %inbufBitCount = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 9, !dbg !874
  %1 = load i32, ptr %inbufBitCount, align 8, !dbg !874
  %2 = load i8, ptr %bits_wanted.addr, align 1, !dbg !875
  %conv = zext i8 %2 to i32, !dbg !875
  %cmp = icmp ult i32 %1, %conv, !dbg !876
  br i1 %cmp, label %while.body, label %while.end, !dbg !872

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %bd.addr, align 8, !dbg !877
  %inbufPos = getelementptr inbounds %struct.bunzip_data, ptr %3, i32 0, i32 7, !dbg !880
  %4 = load i64, ptr %inbufPos, align 8, !dbg !880
  %5 = load ptr, ptr %bd.addr, align 8, !dbg !881
  %inbufCount = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 6, !dbg !882
  %6 = load i64, ptr %inbufCount, align 8, !dbg !882
  %cmp2 = icmp eq i64 %4, %6, !dbg !883
  br i1 %cmp2, label %if.then, label %if.end13, !dbg !884

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %bd.addr, align 8, !dbg !885
  %io_error = getelementptr inbounds %struct.bunzip_data, ptr %7, i32 0, i32 19, !dbg !888
  %8 = load i32, ptr %io_error, align 4, !dbg !888
  %tobool = icmp ne i32 %8, 0, !dbg !885
  br i1 %tobool, label %if.then4, label %if.end, !dbg !889

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !890

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %bd.addr, align 8, !dbg !891
  %fill = getelementptr inbounds %struct.bunzip_data, ptr %9, i32 0, i32 5, !dbg !892
  %10 = load ptr, ptr %fill, align 8, !dbg !892
  %11 = load ptr, ptr %bd.addr, align 8, !dbg !893
  %inbuf = getelementptr inbounds %struct.bunzip_data, ptr %11, i32 0, i32 8, !dbg !894
  %12 = load ptr, ptr %inbuf, align 8, !dbg !894
  %call = call i64 %10(ptr noundef %12, i64 noundef 4096) #14, !dbg !891
  %13 = load ptr, ptr %bd.addr, align 8, !dbg !895
  %inbufCount5 = getelementptr inbounds %struct.bunzip_data, ptr %13, i32 0, i32 6, !dbg !896
  store i64 %call, ptr %inbufCount5, align 8, !dbg !897
  %14 = load ptr, ptr %bd.addr, align 8, !dbg !898
  %inbufCount6 = getelementptr inbounds %struct.bunzip_data, ptr %14, i32 0, i32 6, !dbg !900
  %15 = load i64, ptr %inbufCount6, align 8, !dbg !900
  %cmp7 = icmp sle i64 %15, 0, !dbg !901
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !902

if.then9:                                         ; preds = %if.end
  %16 = load ptr, ptr %bd.addr, align 8, !dbg !903
  %io_error10 = getelementptr inbounds %struct.bunzip_data, ptr %16, i32 0, i32 19, !dbg !905
  store i32 -3, ptr %io_error10, align 4, !dbg !906
  store i32 0, ptr %retval, align 4, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

if.end11:                                         ; preds = %if.end
  %17 = load ptr, ptr %bd.addr, align 8, !dbg !908
  %inbufPos12 = getelementptr inbounds %struct.bunzip_data, ptr %17, i32 0, i32 7, !dbg !909
  store i64 0, ptr %inbufPos12, align 8, !dbg !910
  br label %if.end13, !dbg !911

if.end13:                                         ; preds = %if.end11, %while.body
  %18 = load ptr, ptr %bd.addr, align 8, !dbg !912
  %inbufBitCount14 = getelementptr inbounds %struct.bunzip_data, ptr %18, i32 0, i32 9, !dbg !914
  %19 = load i32, ptr %inbufBitCount14, align 8, !dbg !914
  %cmp15 = icmp uge i32 %19, 24, !dbg !915
  br i1 %cmp15, label %if.then17, label %if.end26, !dbg !916

if.then17:                                        ; preds = %if.end13
  %20 = load ptr, ptr %bd.addr, align 8, !dbg !917
  %inbufBits = getelementptr inbounds %struct.bunzip_data, ptr %20, i32 0, i32 10, !dbg !919
  %21 = load i32, ptr %inbufBits, align 4, !dbg !919
  %22 = load ptr, ptr %bd.addr, align 8, !dbg !920
  %inbufBitCount18 = getelementptr inbounds %struct.bunzip_data, ptr %22, i32 0, i32 9, !dbg !921
  %23 = load i32, ptr %inbufBitCount18, align 8, !dbg !921
  %shl = shl i32 1, %23, !dbg !922
  %sub = sub i32 %shl, 1, !dbg !923
  %and = and i32 %21, %sub, !dbg !924
  store i32 %and, ptr %bits, align 4, !dbg !925
  %24 = load ptr, ptr %bd.addr, align 8, !dbg !926
  %inbufBitCount19 = getelementptr inbounds %struct.bunzip_data, ptr %24, i32 0, i32 9, !dbg !927
  %25 = load i32, ptr %inbufBitCount19, align 8, !dbg !927
  %26 = load i8, ptr %bits_wanted.addr, align 1, !dbg !928
  %conv20 = zext i8 %26 to i32, !dbg !928
  %sub21 = sub i32 %conv20, %25, !dbg !928
  %conv22 = trunc i32 %sub21 to i8, !dbg !928
  store i8 %conv22, ptr %bits_wanted.addr, align 1, !dbg !928
  %27 = load i8, ptr %bits_wanted.addr, align 1, !dbg !929
  %conv23 = zext i8 %27 to i32, !dbg !929
  %28 = load i32, ptr %bits, align 4, !dbg !930
  %shl24 = shl i32 %28, %conv23, !dbg !930
  store i32 %shl24, ptr %bits, align 4, !dbg !930
  %29 = load ptr, ptr %bd.addr, align 8, !dbg !931
  %inbufBitCount25 = getelementptr inbounds %struct.bunzip_data, ptr %29, i32 0, i32 9, !dbg !932
  store i32 0, ptr %inbufBitCount25, align 8, !dbg !933
  br label %if.end26, !dbg !934

if.end26:                                         ; preds = %if.then17, %if.end13
  %30 = load ptr, ptr %bd.addr, align 8, !dbg !935
  %inbufBits27 = getelementptr inbounds %struct.bunzip_data, ptr %30, i32 0, i32 10, !dbg !936
  %31 = load i32, ptr %inbufBits27, align 4, !dbg !936
  %shl28 = shl i32 %31, 8, !dbg !937
  %32 = load ptr, ptr %bd.addr, align 8, !dbg !938
  %inbuf29 = getelementptr inbounds %struct.bunzip_data, ptr %32, i32 0, i32 8, !dbg !939
  %33 = load ptr, ptr %inbuf29, align 8, !dbg !939
  %34 = load ptr, ptr %bd.addr, align 8, !dbg !940
  %inbufPos30 = getelementptr inbounds %struct.bunzip_data, ptr %34, i32 0, i32 7, !dbg !941
  %35 = load i64, ptr %inbufPos30, align 8, !dbg !942
  %inc = add i64 %35, 1, !dbg !942
  store i64 %inc, ptr %inbufPos30, align 8, !dbg !942
  %arrayidx = getelementptr i8, ptr %33, i64 %35, !dbg !938
  %36 = load i8, ptr %arrayidx, align 1, !dbg !938
  %conv31 = zext i8 %36 to i32, !dbg !938
  %or = or i32 %shl28, %conv31, !dbg !943
  %37 = load ptr, ptr %bd.addr, align 8, !dbg !944
  %inbufBits32 = getelementptr inbounds %struct.bunzip_data, ptr %37, i32 0, i32 10, !dbg !945
  store i32 %or, ptr %inbufBits32, align 4, !dbg !946
  %38 = load ptr, ptr %bd.addr, align 8, !dbg !947
  %inbufBitCount33 = getelementptr inbounds %struct.bunzip_data, ptr %38, i32 0, i32 9, !dbg !948
  %39 = load i32, ptr %inbufBitCount33, align 8, !dbg !949
  %add = add i32 %39, 8, !dbg !949
  store i32 %add, ptr %inbufBitCount33, align 8, !dbg !949
  br label %while.cond, !dbg !872, !llvm.loop !950

while.end:                                        ; preds = %while.cond
  %40 = load i8, ptr %bits_wanted.addr, align 1, !dbg !952
  %conv34 = zext i8 %40 to i32, !dbg !952
  %41 = load ptr, ptr %bd.addr, align 8, !dbg !953
  %inbufBitCount35 = getelementptr inbounds %struct.bunzip_data, ptr %41, i32 0, i32 9, !dbg !954
  %42 = load i32, ptr %inbufBitCount35, align 8, !dbg !955
  %sub36 = sub i32 %42, %conv34, !dbg !955
  store i32 %sub36, ptr %inbufBitCount35, align 8, !dbg !955
  %43 = load ptr, ptr %bd.addr, align 8, !dbg !956
  %inbufBits37 = getelementptr inbounds %struct.bunzip_data, ptr %43, i32 0, i32 10, !dbg !957
  %44 = load i32, ptr %inbufBits37, align 4, !dbg !957
  %45 = load ptr, ptr %bd.addr, align 8, !dbg !958
  %inbufBitCount38 = getelementptr inbounds %struct.bunzip_data, ptr %45, i32 0, i32 9, !dbg !959
  %46 = load i32, ptr %inbufBitCount38, align 8, !dbg !959
  %shr = lshr i32 %44, %46, !dbg !960
  %47 = load i8, ptr %bits_wanted.addr, align 1, !dbg !961
  %conv39 = zext i8 %47 to i32, !dbg !961
  %shl40 = shl i32 1, %conv39, !dbg !962
  %sub41 = sub i32 %shl40, 1, !dbg !963
  %and42 = and i32 %shr, %sub41, !dbg !964
  %48 = load i32, ptr %bits, align 4, !dbg !965
  %or43 = or i32 %48, %and42, !dbg !965
  store i32 %or43, ptr %bits, align 4, !dbg !965
  %49 = load i32, ptr %bits, align 4, !dbg !966
  store i32 %49, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

cleanup:                                          ; preds = %while.end, %if.then9, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #12, !dbg !968
  %50 = load i32, ptr %retval, align 4, !dbg !968
  ret i32 %50, !dbg !968
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !969 dso_local noalias ptr @vmalloc(i64 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @get_next_block(ptr noundef %bd) #0 section ".init.text" align 16 !dbg !972 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca ptr, align 8
  %hufGroup = alloca ptr, align 8
  %base = alloca ptr, align 8
  %limit = alloca ptr, align 8
  %dbufCount = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %dbufSize = alloca i32, align 4
  %groupCount = alloca i32, align 4
  %selector = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %runPos = alloca i32, align 4
  %symCount = alloca i32, align 4
  %symTotal = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %byteCount = alloca ptr, align 8
  %uc = alloca i8, align 1
  %symToByte = alloca ptr, align 8
  %mtfSymbol = alloca ptr, align 8
  %selectors = alloca ptr, align 8
  %dbuf = alloca ptr, align 8
  %origPtr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %length = alloca [258 x i8], align 16
  %temp = alloca [21 x i16], align 16
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %pp = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !976, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 8, ptr %hufGroup) #12, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %hufGroup, metadata !977, metadata !DIExpression()), !dbg !1019
  store ptr null, ptr %hufGroup, align 8, !dbg !1019
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %base, metadata !979, metadata !DIExpression()), !dbg !1021
  store ptr null, ptr %base, align 8, !dbg !1021
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #12, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !981, metadata !DIExpression()), !dbg !1023
  store ptr null, ptr %limit, align 8, !dbg !1023
  call void @llvm.lifetime.start.p0(i64 4, ptr %dbufCount) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %dbufCount, metadata !982, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextSym) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %nextSym, metadata !983, metadata !DIExpression()), !dbg !1026
  call void @llvm.lifetime.start.p0(i64 4, ptr %dbufSize) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %dbufSize, metadata !984, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 4, ptr %groupCount) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %groupCount, metadata !985, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 4, ptr %selector) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %selector, metadata !986, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %i, metadata !987, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %j, metadata !988, metadata !DIExpression()), !dbg !1031
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %k, metadata !989, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %t, metadata !990, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 4, ptr %runPos) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %runPos, metadata !991, metadata !DIExpression()), !dbg !1034
  call void @llvm.lifetime.start.p0(i64 4, ptr %symCount) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %symCount, metadata !992, metadata !DIExpression()), !dbg !1035
  call void @llvm.lifetime.start.p0(i64 4, ptr %symTotal) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %symTotal, metadata !993, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 4, ptr %nSelectors) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %nSelectors, metadata !994, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %byteCount) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %byteCount, metadata !995, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 1, ptr %uc) #12, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %uc, metadata !996, metadata !DIExpression()), !dbg !1040
  call void @llvm.lifetime.start.p0(i64 8, ptr %symToByte) #12, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %symToByte, metadata !997, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtfSymbol) #12, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %mtfSymbol, metadata !998, metadata !DIExpression()), !dbg !1042
  call void @llvm.lifetime.start.p0(i64 8, ptr %selectors) #12, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %selectors, metadata !999, metadata !DIExpression()), !dbg !1043
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf) #12, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %dbuf, metadata !1000, metadata !DIExpression()), !dbg !1045
  call void @llvm.lifetime.start.p0(i64 4, ptr %origPtr) #12, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %origPtr, metadata !1001, metadata !DIExpression()), !dbg !1046
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !1047
  %dbuf1 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 15, !dbg !1048
  %1 = load ptr, ptr %dbuf1, align 8, !dbg !1048
  store ptr %1, ptr %dbuf, align 8, !dbg !1049
  %2 = load ptr, ptr %bd.addr, align 8, !dbg !1050
  %dbufSize2 = getelementptr inbounds %struct.bunzip_data, ptr %2, i32 0, i32 16, !dbg !1051
  %3 = load i32, ptr %dbufSize2, align 8, !dbg !1051
  store i32 %3, ptr %dbufSize, align 4, !dbg !1052
  %4 = load ptr, ptr %bd.addr, align 8, !dbg !1053
  %selectors3 = getelementptr inbounds %struct.bunzip_data, ptr %4, i32 0, i32 17, !dbg !1054
  %arraydecay = getelementptr inbounds [32768 x i8], ptr %selectors3, i64 0, i64 0, !dbg !1053
  store ptr %arraydecay, ptr %selectors, align 8, !dbg !1055
  %5 = load ptr, ptr %bd.addr, align 8, !dbg !1056
  %byteCount4 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 20, !dbg !1057
  %arraydecay5 = getelementptr inbounds [256 x i32], ptr %byteCount4, i64 0, i64 0, !dbg !1056
  store ptr %arraydecay5, ptr %byteCount, align 8, !dbg !1058
  %6 = load ptr, ptr %bd.addr, align 8, !dbg !1059
  %symToByte6 = getelementptr inbounds %struct.bunzip_data, ptr %6, i32 0, i32 21, !dbg !1060
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %symToByte6, i64 0, i64 0, !dbg !1059
  store ptr %arraydecay7, ptr %symToByte, align 8, !dbg !1061
  %7 = load ptr, ptr %bd.addr, align 8, !dbg !1062
  %mtfSymbol8 = getelementptr inbounds %struct.bunzip_data, ptr %7, i32 0, i32 22, !dbg !1063
  %arraydecay9 = getelementptr inbounds [256 x i8], ptr %mtfSymbol8, i64 0, i64 0, !dbg !1062
  store ptr %arraydecay9, ptr %mtfSymbol, align 8, !dbg !1064
  %8 = load ptr, ptr %bd.addr, align 8, !dbg !1065
  %call = call i32 @get_bits(ptr noundef %8, i8 noundef zeroext 24) #15, !dbg !1066
  store i32 %call, ptr %i, align 4, !dbg !1067
  %9 = load ptr, ptr %bd.addr, align 8, !dbg !1068
  %call10 = call i32 @get_bits(ptr noundef %9, i8 noundef zeroext 24) #15, !dbg !1069
  store i32 %call10, ptr %j, align 4, !dbg !1070
  %10 = load ptr, ptr %bd.addr, align 8, !dbg !1071
  %call11 = call i32 @get_bits(ptr noundef %10, i8 noundef zeroext 32) #15, !dbg !1072
  %11 = load ptr, ptr %bd.addr, align 8, !dbg !1073
  %headerCRC = getelementptr inbounds %struct.bunzip_data, ptr %11, i32 0, i32 12, !dbg !1074
  store i32 %call11, ptr %headerCRC, align 8, !dbg !1075
  %12 = load i32, ptr %i, align 4, !dbg !1076
  %cmp = icmp eq i32 %12, 1536581, !dbg !1078
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1079

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, ptr %j, align 4, !dbg !1080
  %cmp12 = icmp eq i32 %13, 3690640, !dbg !1081
  br i1 %cmp12, label %if.then, label %if.end, !dbg !1082

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !1083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1083

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load i32, ptr %i, align 4, !dbg !1084
  %cmp13 = icmp ne i32 %14, 3227993, !dbg !1086
  br i1 %cmp13, label %if.then15, label %lor.lhs.false, !dbg !1087

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !dbg !1088
  %cmp14 = icmp ne i32 %15, 2511705, !dbg !1089
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1090

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -2, ptr %retval, align 4, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1091

if.end16:                                         ; preds = %lor.lhs.false
  %16 = load ptr, ptr %bd.addr, align 8, !dbg !1092
  %call17 = call i32 @get_bits(ptr noundef %16, i8 noundef zeroext 1) #15, !dbg !1094
  %tobool = icmp ne i32 %call17, 0, !dbg !1094
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !1095

if.then18:                                        ; preds = %if.end16
  store i32 -7, ptr %retval, align 4, !dbg !1096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1096

if.end19:                                         ; preds = %if.end16
  %17 = load ptr, ptr %bd.addr, align 8, !dbg !1097
  %call20 = call i32 @get_bits(ptr noundef %17, i8 noundef zeroext 24) #15, !dbg !1098
  store i32 %call20, ptr %origPtr, align 4, !dbg !1099
  %18 = load i32, ptr %origPtr, align 4, !dbg !1100
  %19 = load i32, ptr %dbufSize, align 4, !dbg !1102
  %cmp21 = icmp uge i32 %18, %19, !dbg !1103
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1104

if.then22:                                        ; preds = %if.end19
  store i32 -5, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1105

if.end23:                                         ; preds = %if.end19
  %20 = load ptr, ptr %bd.addr, align 8, !dbg !1106
  %call24 = call i32 @get_bits(ptr noundef %20, i8 noundef zeroext 16) #15, !dbg !1107
  store i32 %call24, ptr %t, align 4, !dbg !1108
  store i32 0, ptr %symTotal, align 4, !dbg !1109
  store i32 0, ptr %i, align 4, !dbg !1110
  br label %for.cond, !dbg !1112

for.cond:                                         ; preds = %for.inc40, %if.end23
  %21 = load i32, ptr %i, align 4, !dbg !1113
  %cmp25 = icmp slt i32 %21, 16, !dbg !1115
  br i1 %cmp25, label %for.body, label %for.end42, !dbg !1116

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %t, align 4, !dbg !1117
  %23 = load i32, ptr %i, align 4, !dbg !1120
  %sub = sub i32 15, %23, !dbg !1121
  %shl = shl i32 1, %sub, !dbg !1122
  %and = and i32 %22, %shl, !dbg !1123
  %tobool26 = icmp ne i32 %and, 0, !dbg !1123
  br i1 %tobool26, label %if.then27, label %if.end39, !dbg !1124

if.then27:                                        ; preds = %for.body
  %24 = load ptr, ptr %bd.addr, align 8, !dbg !1125
  %call28 = call i32 @get_bits(ptr noundef %24, i8 noundef zeroext 16) #15, !dbg !1127
  store i32 %call28, ptr %k, align 4, !dbg !1128
  store i32 0, ptr %j, align 4, !dbg !1129
  br label %for.cond29, !dbg !1131

for.cond29:                                       ; preds = %for.inc, %if.then27
  %25 = load i32, ptr %j, align 4, !dbg !1132
  %cmp30 = icmp slt i32 %25, 16, !dbg !1134
  br i1 %cmp30, label %for.body31, label %for.end, !dbg !1135

for.body31:                                       ; preds = %for.cond29
  %26 = load i32, ptr %k, align 4, !dbg !1136
  %27 = load i32, ptr %j, align 4, !dbg !1138
  %sub32 = sub i32 15, %27, !dbg !1139
  %shl33 = shl i32 1, %sub32, !dbg !1140
  %and34 = and i32 %26, %shl33, !dbg !1141
  %tobool35 = icmp ne i32 %and34, 0, !dbg !1141
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1142

if.then36:                                        ; preds = %for.body31
  %28 = load i32, ptr %i, align 4, !dbg !1143
  %mul = mul i32 16, %28, !dbg !1144
  %29 = load i32, ptr %j, align 4, !dbg !1145
  %add = add i32 %mul, %29, !dbg !1146
  %conv = trunc i32 %add to i8, !dbg !1147
  %30 = load ptr, ptr %symToByte, align 8, !dbg !1148
  %31 = load i32, ptr %symTotal, align 4, !dbg !1149
  %inc = add i32 %31, 1, !dbg !1149
  store i32 %inc, ptr %symTotal, align 4, !dbg !1149
  %idxprom = sext i32 %31 to i64, !dbg !1148
  %arrayidx = getelementptr i8, ptr %30, i64 %idxprom, !dbg !1148
  store i8 %conv, ptr %arrayidx, align 1, !dbg !1150
  br label %if.end37, !dbg !1148

if.end37:                                         ; preds = %if.then36, %for.body31
  br label %for.inc, !dbg !1151

for.inc:                                          ; preds = %if.end37
  %32 = load i32, ptr %j, align 4, !dbg !1152
  %inc38 = add i32 %32, 1, !dbg !1152
  store i32 %inc38, ptr %j, align 4, !dbg !1152
  br label %for.cond29, !dbg !1153, !llvm.loop !1154

for.end:                                          ; preds = %for.cond29
  br label %if.end39, !dbg !1156

if.end39:                                         ; preds = %for.end, %for.body
  br label %for.inc40, !dbg !1157

for.inc40:                                        ; preds = %if.end39
  %33 = load i32, ptr %i, align 4, !dbg !1158
  %inc41 = add i32 %33, 1, !dbg !1158
  store i32 %inc41, ptr %i, align 4, !dbg !1158
  br label %for.cond, !dbg !1159, !llvm.loop !1160

for.end42:                                        ; preds = %for.cond
  %34 = load ptr, ptr %bd.addr, align 8, !dbg !1162
  %call43 = call i32 @get_bits(ptr noundef %34, i8 noundef zeroext 3) #15, !dbg !1163
  store i32 %call43, ptr %groupCount, align 4, !dbg !1164
  %35 = load i32, ptr %groupCount, align 4, !dbg !1165
  %cmp44 = icmp slt i32 %35, 2, !dbg !1167
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46, !dbg !1168

lor.lhs.false46:                                  ; preds = %for.end42
  %36 = load i32, ptr %groupCount, align 4, !dbg !1169
  %cmp47 = icmp sgt i32 %36, 6, !dbg !1170
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1171

if.then49:                                        ; preds = %lor.lhs.false46, %for.end42
  store i32 -5, ptr %retval, align 4, !dbg !1172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1172

if.end50:                                         ; preds = %lor.lhs.false46
  %37 = load ptr, ptr %bd.addr, align 8, !dbg !1173
  %call51 = call i32 @get_bits(ptr noundef %37, i8 noundef zeroext 15) #15, !dbg !1174
  store i32 %call51, ptr %nSelectors, align 4, !dbg !1175
  %38 = load i32, ptr %nSelectors, align 4, !dbg !1176
  %tobool52 = icmp ne i32 %38, 0, !dbg !1176
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !1178

if.then53:                                        ; preds = %if.end50
  store i32 -5, ptr %retval, align 4, !dbg !1179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1179

if.end54:                                         ; preds = %if.end50
  store i32 0, ptr %i, align 4, !dbg !1180
  br label %for.cond55, !dbg !1182

for.cond55:                                       ; preds = %for.inc62, %if.end54
  %39 = load i32, ptr %i, align 4, !dbg !1183
  %40 = load i32, ptr %groupCount, align 4, !dbg !1185
  %cmp56 = icmp slt i32 %39, %40, !dbg !1186
  br i1 %cmp56, label %for.body58, label %for.end64, !dbg !1187

for.body58:                                       ; preds = %for.cond55
  %41 = load i32, ptr %i, align 4, !dbg !1188
  %conv59 = trunc i32 %41 to i8, !dbg !1188
  %42 = load ptr, ptr %mtfSymbol, align 8, !dbg !1189
  %43 = load i32, ptr %i, align 4, !dbg !1190
  %idxprom60 = sext i32 %43 to i64, !dbg !1189
  %arrayidx61 = getelementptr i8, ptr %42, i64 %idxprom60, !dbg !1189
  store i8 %conv59, ptr %arrayidx61, align 1, !dbg !1191
  br label %for.inc62, !dbg !1189

for.inc62:                                        ; preds = %for.body58
  %44 = load i32, ptr %i, align 4, !dbg !1192
  %inc63 = add i32 %44, 1, !dbg !1192
  store i32 %inc63, ptr %i, align 4, !dbg !1192
  br label %for.cond55, !dbg !1193, !llvm.loop !1194

for.end64:                                        ; preds = %for.cond55
  store i32 0, ptr %i, align 4, !dbg !1196
  br label %for.cond65, !dbg !1198

for.cond65:                                       ; preds = %for.inc95, %for.end64
  %45 = load i32, ptr %i, align 4, !dbg !1199
  %46 = load i32, ptr %nSelectors, align 4, !dbg !1201
  %cmp66 = icmp slt i32 %45, %46, !dbg !1202
  br i1 %cmp66, label %for.body68, label %for.end97, !dbg !1203

for.body68:                                       ; preds = %for.cond65
  store i32 0, ptr %j, align 4, !dbg !1204
  br label %for.cond69, !dbg !1207

for.cond69:                                       ; preds = %for.inc77, %for.body68
  %47 = load ptr, ptr %bd.addr, align 8, !dbg !1208
  %call70 = call i32 @get_bits(ptr noundef %47, i8 noundef zeroext 1) #15, !dbg !1210
  %tobool71 = icmp ne i32 %call70, 0, !dbg !1211
  br i1 %tobool71, label %for.body72, label %for.end79, !dbg !1211

for.body72:                                       ; preds = %for.cond69
  %48 = load i32, ptr %j, align 4, !dbg !1212
  %49 = load i32, ptr %groupCount, align 4, !dbg !1214
  %cmp73 = icmp sge i32 %48, %49, !dbg !1215
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !1216

if.then75:                                        ; preds = %for.body72
  store i32 -5, ptr %retval, align 4, !dbg !1217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1217

if.end76:                                         ; preds = %for.body72
  br label %for.inc77, !dbg !1214

for.inc77:                                        ; preds = %if.end76
  %50 = load i32, ptr %j, align 4, !dbg !1218
  %inc78 = add i32 %50, 1, !dbg !1218
  store i32 %inc78, ptr %j, align 4, !dbg !1218
  br label %for.cond69, !dbg !1219, !llvm.loop !1220

for.end79:                                        ; preds = %for.cond69
  %51 = load ptr, ptr %mtfSymbol, align 8, !dbg !1222
  %52 = load i32, ptr %j, align 4, !dbg !1223
  %idxprom80 = sext i32 %52 to i64, !dbg !1222
  %arrayidx81 = getelementptr i8, ptr %51, i64 %idxprom80, !dbg !1222
  %53 = load i8, ptr %arrayidx81, align 1, !dbg !1222
  store i8 %53, ptr %uc, align 1, !dbg !1224
  br label %for.cond82, !dbg !1225

for.cond82:                                       ; preds = %for.inc90, %for.end79
  %54 = load i32, ptr %j, align 4, !dbg !1226
  %tobool83 = icmp ne i32 %54, 0, !dbg !1229
  br i1 %tobool83, label %for.body84, label %for.end91, !dbg !1229

for.body84:                                       ; preds = %for.cond82
  %55 = load ptr, ptr %mtfSymbol, align 8, !dbg !1230
  %56 = load i32, ptr %j, align 4, !dbg !1231
  %sub85 = sub i32 %56, 1, !dbg !1232
  %idxprom86 = sext i32 %sub85 to i64, !dbg !1230
  %arrayidx87 = getelementptr i8, ptr %55, i64 %idxprom86, !dbg !1230
  %57 = load i8, ptr %arrayidx87, align 1, !dbg !1230
  %58 = load ptr, ptr %mtfSymbol, align 8, !dbg !1233
  %59 = load i32, ptr %j, align 4, !dbg !1234
  %idxprom88 = sext i32 %59 to i64, !dbg !1233
  %arrayidx89 = getelementptr i8, ptr %58, i64 %idxprom88, !dbg !1233
  store i8 %57, ptr %arrayidx89, align 1, !dbg !1235
  br label %for.inc90, !dbg !1233

for.inc90:                                        ; preds = %for.body84
  %60 = load i32, ptr %j, align 4, !dbg !1236
  %dec = add i32 %60, -1, !dbg !1236
  store i32 %dec, ptr %j, align 4, !dbg !1236
  br label %for.cond82, !dbg !1237, !llvm.loop !1238

for.end91:                                        ; preds = %for.cond82
  %61 = load i8, ptr %uc, align 1, !dbg !1240
  %62 = load ptr, ptr %selectors, align 8, !dbg !1241
  %63 = load i32, ptr %i, align 4, !dbg !1242
  %idxprom92 = sext i32 %63 to i64, !dbg !1241
  %arrayidx93 = getelementptr i8, ptr %62, i64 %idxprom92, !dbg !1241
  store i8 %61, ptr %arrayidx93, align 1, !dbg !1243
  %64 = load ptr, ptr %mtfSymbol, align 8, !dbg !1244
  %arrayidx94 = getelementptr i8, ptr %64, i64 0, !dbg !1244
  store i8 %61, ptr %arrayidx94, align 1, !dbg !1245
  br label %for.inc95, !dbg !1246

for.inc95:                                        ; preds = %for.end91
  %65 = load i32, ptr %i, align 4, !dbg !1247
  %inc96 = add i32 %65, 1, !dbg !1247
  store i32 %inc96, ptr %i, align 4, !dbg !1247
  br label %for.cond65, !dbg !1248, !llvm.loop !1249

for.end97:                                        ; preds = %for.cond65
  %66 = load i32, ptr %symTotal, align 4, !dbg !1251
  %add98 = add i32 %66, 2, !dbg !1252
  store i32 %add98, ptr %symCount, align 4, !dbg !1253
  store i32 0, ptr %j, align 4, !dbg !1254
  br label %for.cond99, !dbg !1255

for.cond99:                                       ; preds = %for.inc251, %for.end97
  %67 = load i32, ptr %j, align 4, !dbg !1256
  %68 = load i32, ptr %groupCount, align 4, !dbg !1257
  %cmp100 = icmp slt i32 %67, %68, !dbg !1258
  br i1 %cmp100, label %for.body102, label %for.end253, !dbg !1259

for.body102:                                      ; preds = %for.cond99
  call void @llvm.lifetime.start.p0(i64 258, ptr %length) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1002, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 42, ptr %temp) #12, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !1007, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 4, ptr %minLen) #12, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %minLen, metadata !1010, metadata !DIExpression()), !dbg !1265
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxLen) #12, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %maxLen, metadata !1011, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %pp) #12, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %pp, metadata !1012, metadata !DIExpression()), !dbg !1267
  %69 = load ptr, ptr %bd.addr, align 8, !dbg !1268
  %call103 = call i32 @get_bits(ptr noundef %69, i8 noundef zeroext 5) #15, !dbg !1269
  %sub104 = sub i32 %call103, 1, !dbg !1270
  store i32 %sub104, ptr %t, align 4, !dbg !1271
  store i32 0, ptr %i, align 4, !dbg !1272
  br label %for.cond105, !dbg !1274

for.cond105:                                      ; preds = %for.inc129, %for.body102
  %70 = load i32, ptr %i, align 4, !dbg !1275
  %71 = load i32, ptr %symCount, align 4, !dbg !1277
  %cmp106 = icmp slt i32 %70, %71, !dbg !1278
  br i1 %cmp106, label %for.body108, label %for.end131, !dbg !1279

for.body108:                                      ; preds = %for.cond105
  br label %for.cond109, !dbg !1280

for.cond109:                                      ; preds = %if.end119, %for.body108
  %72 = load i32, ptr %t, align 4, !dbg !1282
  %cmp110 = icmp ugt i32 %72, 19, !dbg !1287
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !1288

if.then112:                                       ; preds = %for.cond109
  store i32 -5, ptr %retval, align 4, !dbg !1289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1289

if.end113:                                        ; preds = %for.cond109
  %73 = load ptr, ptr %bd.addr, align 8, !dbg !1290
  %call114 = call i32 @get_bits(ptr noundef %73, i8 noundef zeroext 2) #15, !dbg !1291
  store i32 %call114, ptr %k, align 4, !dbg !1292
  %74 = load i32, ptr %k, align 4, !dbg !1293
  %cmp115 = icmp slt i32 %74, 2, !dbg !1295
  br i1 %cmp115, label %if.then117, label %if.end119, !dbg !1296

if.then117:                                       ; preds = %if.end113
  %75 = load ptr, ptr %bd.addr, align 8, !dbg !1297
  %inbufBitCount = getelementptr inbounds %struct.bunzip_data, ptr %75, i32 0, i32 9, !dbg !1299
  %76 = load i32, ptr %inbufBitCount, align 8, !dbg !1300
  %inc118 = add i32 %76, 1, !dbg !1300
  store i32 %inc118, ptr %inbufBitCount, align 8, !dbg !1300
  br label %for.end124, !dbg !1301

if.end119:                                        ; preds = %if.end113
  %77 = load i32, ptr %k, align 4, !dbg !1302
  %add120 = add i32 %77, 1, !dbg !1303
  %and121 = and i32 %add120, 2, !dbg !1304
  %sub122 = sub i32 %and121, 1, !dbg !1305
  %78 = load i32, ptr %t, align 4, !dbg !1306
  %add123 = add i32 %78, %sub122, !dbg !1306
  store i32 %add123, ptr %t, align 4, !dbg !1306
  br label %for.cond109, !dbg !1307, !llvm.loop !1308

for.end124:                                       ; preds = %if.then117
  %79 = load i32, ptr %t, align 4, !dbg !1311
  %add125 = add i32 %79, 1, !dbg !1312
  %conv126 = trunc i32 %add125 to i8, !dbg !1311
  %80 = load i32, ptr %i, align 4, !dbg !1313
  %idxprom127 = sext i32 %80 to i64, !dbg !1314
  %arrayidx128 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom127, !dbg !1314
  store i8 %conv126, ptr %arrayidx128, align 1, !dbg !1315
  br label %for.inc129, !dbg !1316

for.inc129:                                       ; preds = %for.end124
  %81 = load i32, ptr %i, align 4, !dbg !1317
  %inc130 = add i32 %81, 1, !dbg !1317
  store i32 %inc130, ptr %i, align 4, !dbg !1317
  br label %for.cond105, !dbg !1318, !llvm.loop !1319

for.end131:                                       ; preds = %for.cond105
  %arrayidx132 = getelementptr [258 x i8], ptr %length, i64 0, i64 0, !dbg !1321
  %82 = load i8, ptr %arrayidx132, align 16, !dbg !1321
  %conv133 = zext i8 %82 to i32, !dbg !1321
  store i32 %conv133, ptr %maxLen, align 4, !dbg !1322
  store i32 %conv133, ptr %minLen, align 4, !dbg !1323
  store i32 1, ptr %i, align 4, !dbg !1324
  br label %for.cond134, !dbg !1326

for.cond134:                                      ; preds = %for.inc158, %for.end131
  %83 = load i32, ptr %i, align 4, !dbg !1327
  %84 = load i32, ptr %symCount, align 4, !dbg !1329
  %cmp135 = icmp slt i32 %83, %84, !dbg !1330
  br i1 %cmp135, label %for.body137, label %for.end160, !dbg !1331

for.body137:                                      ; preds = %for.cond134
  %85 = load i32, ptr %i, align 4, !dbg !1332
  %idxprom138 = sext i32 %85 to i64, !dbg !1335
  %arrayidx139 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom138, !dbg !1335
  %86 = load i8, ptr %arrayidx139, align 1, !dbg !1335
  %conv140 = zext i8 %86 to i32, !dbg !1335
  %87 = load i32, ptr %maxLen, align 4, !dbg !1336
  %cmp141 = icmp sgt i32 %conv140, %87, !dbg !1337
  br i1 %cmp141, label %if.then143, label %if.else, !dbg !1338

if.then143:                                       ; preds = %for.body137
  %88 = load i32, ptr %i, align 4, !dbg !1339
  %idxprom144 = sext i32 %88 to i64, !dbg !1340
  %arrayidx145 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom144, !dbg !1340
  %89 = load i8, ptr %arrayidx145, align 1, !dbg !1340
  %conv146 = zext i8 %89 to i32, !dbg !1340
  store i32 %conv146, ptr %maxLen, align 4, !dbg !1341
  br label %if.end157, !dbg !1342

if.else:                                          ; preds = %for.body137
  %90 = load i32, ptr %i, align 4, !dbg !1343
  %idxprom147 = sext i32 %90 to i64, !dbg !1345
  %arrayidx148 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom147, !dbg !1345
  %91 = load i8, ptr %arrayidx148, align 1, !dbg !1345
  %conv149 = zext i8 %91 to i32, !dbg !1345
  %92 = load i32, ptr %minLen, align 4, !dbg !1346
  %cmp150 = icmp slt i32 %conv149, %92, !dbg !1347
  br i1 %cmp150, label %if.then152, label %if.end156, !dbg !1348

if.then152:                                       ; preds = %if.else
  %93 = load i32, ptr %i, align 4, !dbg !1349
  %idxprom153 = sext i32 %93 to i64, !dbg !1350
  %arrayidx154 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom153, !dbg !1350
  %94 = load i8, ptr %arrayidx154, align 1, !dbg !1350
  %conv155 = zext i8 %94 to i32, !dbg !1350
  store i32 %conv155, ptr %minLen, align 4, !dbg !1351
  br label %if.end156, !dbg !1352

if.end156:                                        ; preds = %if.then152, %if.else
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then143
  br label %for.inc158, !dbg !1353

for.inc158:                                       ; preds = %if.end157
  %95 = load i32, ptr %i, align 4, !dbg !1354
  %inc159 = add i32 %95, 1, !dbg !1354
  store i32 %inc159, ptr %i, align 4, !dbg !1354
  br label %for.cond134, !dbg !1355, !llvm.loop !1356

for.end160:                                       ; preds = %for.cond134
  %96 = load ptr, ptr %bd.addr, align 8, !dbg !1358
  %groups = getelementptr inbounds %struct.bunzip_data, ptr %96, i32 0, i32 18, !dbg !1359
  %arraydecay161 = getelementptr inbounds [6 x %struct.group_data], ptr %groups, i64 0, i64 0, !dbg !1358
  %97 = load i32, ptr %j, align 4, !dbg !1360
  %idx.ext = sext i32 %97 to i64, !dbg !1361
  %add.ptr = getelementptr %struct.group_data, ptr %arraydecay161, i64 %idx.ext, !dbg !1361
  store ptr %add.ptr, ptr %hufGroup, align 8, !dbg !1362
  %98 = load i32, ptr %minLen, align 4, !dbg !1363
  %99 = load ptr, ptr %hufGroup, align 8, !dbg !1364
  %minLen162 = getelementptr inbounds %struct.group_data, ptr %99, i32 0, i32 3, !dbg !1365
  store i32 %98, ptr %minLen162, align 4, !dbg !1366
  %100 = load i32, ptr %maxLen, align 4, !dbg !1367
  %101 = load ptr, ptr %hufGroup, align 8, !dbg !1368
  %maxLen163 = getelementptr inbounds %struct.group_data, ptr %101, i32 0, i32 4, !dbg !1369
  store i32 %100, ptr %maxLen163, align 4, !dbg !1370
  %102 = load ptr, ptr %hufGroup, align 8, !dbg !1371
  %base164 = getelementptr inbounds %struct.group_data, ptr %102, i32 0, i32 1, !dbg !1372
  %arraydecay165 = getelementptr inbounds [20 x i32], ptr %base164, i64 0, i64 0, !dbg !1371
  %add.ptr166 = getelementptr i32, ptr %arraydecay165, i64 -1, !dbg !1373
  store ptr %add.ptr166, ptr %base, align 8, !dbg !1374
  %103 = load ptr, ptr %hufGroup, align 8, !dbg !1375
  %limit167 = getelementptr inbounds %struct.group_data, ptr %103, i32 0, i32 0, !dbg !1376
  %arraydecay168 = getelementptr inbounds [21 x i32], ptr %limit167, i64 0, i64 0, !dbg !1375
  %add.ptr169 = getelementptr i32, ptr %arraydecay168, i64 -1, !dbg !1377
  store ptr %add.ptr169, ptr %limit, align 8, !dbg !1378
  store i32 0, ptr %pp, align 4, !dbg !1379
  %104 = load i32, ptr %minLen, align 4, !dbg !1380
  store i32 %104, ptr %i, align 4, !dbg !1382
  br label %for.cond170, !dbg !1383

for.cond170:                                      ; preds = %for.inc195, %for.end160
  %105 = load i32, ptr %i, align 4, !dbg !1384
  %106 = load i32, ptr %maxLen, align 4, !dbg !1386
  %cmp171 = icmp sle i32 %105, %106, !dbg !1387
  br i1 %cmp171, label %for.body173, label %for.end197, !dbg !1388

for.body173:                                      ; preds = %for.cond170
  %107 = load ptr, ptr %limit, align 8, !dbg !1389
  %108 = load i32, ptr %i, align 4, !dbg !1391
  %idxprom174 = sext i32 %108 to i64, !dbg !1389
  %arrayidx175 = getelementptr i32, ptr %107, i64 %idxprom174, !dbg !1389
  store i32 0, ptr %arrayidx175, align 4, !dbg !1392
  %109 = load i32, ptr %i, align 4, !dbg !1393
  %idxprom176 = sext i32 %109 to i64, !dbg !1394
  %arrayidx177 = getelementptr [21 x i16], ptr %temp, i64 0, i64 %idxprom176, !dbg !1394
  store i16 0, ptr %arrayidx177, align 2, !dbg !1395
  store i32 0, ptr %t, align 4, !dbg !1396
  br label %for.cond178, !dbg !1398

for.cond178:                                      ; preds = %for.inc192, %for.body173
  %110 = load i32, ptr %t, align 4, !dbg !1399
  %111 = load i32, ptr %symCount, align 4, !dbg !1401
  %cmp179 = icmp slt i32 %110, %111, !dbg !1402
  br i1 %cmp179, label %for.body181, label %for.end194, !dbg !1403

for.body181:                                      ; preds = %for.cond178
  %112 = load i32, ptr %t, align 4, !dbg !1404
  %idxprom182 = sext i32 %112 to i64, !dbg !1406
  %arrayidx183 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom182, !dbg !1406
  %113 = load i8, ptr %arrayidx183, align 1, !dbg !1406
  %conv184 = zext i8 %113 to i32, !dbg !1406
  %114 = load i32, ptr %i, align 4, !dbg !1407
  %cmp185 = icmp eq i32 %conv184, %114, !dbg !1408
  br i1 %cmp185, label %if.then187, label %if.end191, !dbg !1409

if.then187:                                       ; preds = %for.body181
  %115 = load i32, ptr %t, align 4, !dbg !1410
  %116 = load ptr, ptr %hufGroup, align 8, !dbg !1411
  %permute = getelementptr inbounds %struct.group_data, ptr %116, i32 0, i32 2, !dbg !1412
  %117 = load i32, ptr %pp, align 4, !dbg !1413
  %inc188 = add i32 %117, 1, !dbg !1413
  store i32 %inc188, ptr %pp, align 4, !dbg !1413
  %idxprom189 = sext i32 %117 to i64, !dbg !1411
  %arrayidx190 = getelementptr [258 x i32], ptr %permute, i64 0, i64 %idxprom189, !dbg !1411
  store i32 %115, ptr %arrayidx190, align 4, !dbg !1414
  br label %if.end191, !dbg !1411

if.end191:                                        ; preds = %if.then187, %for.body181
  br label %for.inc192, !dbg !1407

for.inc192:                                       ; preds = %if.end191
  %118 = load i32, ptr %t, align 4, !dbg !1415
  %inc193 = add i32 %118, 1, !dbg !1415
  store i32 %inc193, ptr %t, align 4, !dbg !1415
  br label %for.cond178, !dbg !1416, !llvm.loop !1417

for.end194:                                       ; preds = %for.cond178
  br label %for.inc195, !dbg !1419

for.inc195:                                       ; preds = %for.end194
  %119 = load i32, ptr %i, align 4, !dbg !1420
  %inc196 = add i32 %119, 1, !dbg !1420
  store i32 %inc196, ptr %i, align 4, !dbg !1420
  br label %for.cond170, !dbg !1421, !llvm.loop !1422

for.end197:                                       ; preds = %for.cond170
  store i32 0, ptr %i, align 4, !dbg !1424
  br label %for.cond198, !dbg !1426

for.cond198:                                      ; preds = %for.inc207, %for.end197
  %120 = load i32, ptr %i, align 4, !dbg !1427
  %121 = load i32, ptr %symCount, align 4, !dbg !1429
  %cmp199 = icmp slt i32 %120, %121, !dbg !1430
  br i1 %cmp199, label %for.body201, label %for.end209, !dbg !1431

for.body201:                                      ; preds = %for.cond198
  %122 = load i32, ptr %i, align 4, !dbg !1432
  %idxprom202 = sext i32 %122 to i64, !dbg !1433
  %arrayidx203 = getelementptr [258 x i8], ptr %length, i64 0, i64 %idxprom202, !dbg !1433
  %123 = load i8, ptr %arrayidx203, align 1, !dbg !1433
  %idxprom204 = zext i8 %123 to i64, !dbg !1434
  %arrayidx205 = getelementptr [21 x i16], ptr %temp, i64 0, i64 %idxprom204, !dbg !1434
  %124 = load i16, ptr %arrayidx205, align 2, !dbg !1435
  %inc206 = add i16 %124, 1, !dbg !1435
  store i16 %inc206, ptr %arrayidx205, align 2, !dbg !1435
  br label %for.inc207, !dbg !1434

for.inc207:                                       ; preds = %for.body201
  %125 = load i32, ptr %i, align 4, !dbg !1436
  %inc208 = add i32 %125, 1, !dbg !1436
  store i32 %inc208, ptr %i, align 4, !dbg !1436
  br label %for.cond198, !dbg !1437, !llvm.loop !1438

for.end209:                                       ; preds = %for.cond198
  store i32 0, ptr %t, align 4, !dbg !1440
  store i32 0, ptr %pp, align 4, !dbg !1441
  %126 = load i32, ptr %minLen, align 4, !dbg !1442
  store i32 %126, ptr %i, align 4, !dbg !1444
  br label %for.cond210, !dbg !1445

for.cond210:                                      ; preds = %for.inc232, %for.end209
  %127 = load i32, ptr %i, align 4, !dbg !1446
  %128 = load i32, ptr %maxLen, align 4, !dbg !1448
  %cmp211 = icmp slt i32 %127, %128, !dbg !1449
  br i1 %cmp211, label %for.body213, label %for.end234, !dbg !1450

for.body213:                                      ; preds = %for.cond210
  %129 = load i32, ptr %i, align 4, !dbg !1451
  %idxprom214 = sext i32 %129 to i64, !dbg !1453
  %arrayidx215 = getelementptr [21 x i16], ptr %temp, i64 0, i64 %idxprom214, !dbg !1453
  %130 = load i16, ptr %arrayidx215, align 2, !dbg !1453
  %conv216 = zext i16 %130 to i32, !dbg !1453
  %131 = load i32, ptr %pp, align 4, !dbg !1454
  %add217 = add i32 %131, %conv216, !dbg !1454
  store i32 %add217, ptr %pp, align 4, !dbg !1454
  %132 = load i32, ptr %pp, align 4, !dbg !1455
  %133 = load i32, ptr %maxLen, align 4, !dbg !1456
  %134 = load i32, ptr %i, align 4, !dbg !1457
  %sub218 = sub i32 %133, %134, !dbg !1458
  %shl219 = shl i32 %132, %sub218, !dbg !1459
  %sub220 = sub i32 %shl219, 1, !dbg !1460
  %135 = load ptr, ptr %limit, align 8, !dbg !1461
  %136 = load i32, ptr %i, align 4, !dbg !1462
  %idxprom221 = sext i32 %136 to i64, !dbg !1461
  %arrayidx222 = getelementptr i32, ptr %135, i64 %idxprom221, !dbg !1461
  store i32 %sub220, ptr %arrayidx222, align 4, !dbg !1463
  %137 = load i32, ptr %pp, align 4, !dbg !1464
  %shl223 = shl i32 %137, 1, !dbg !1464
  store i32 %shl223, ptr %pp, align 4, !dbg !1464
  %138 = load i32, ptr %pp, align 4, !dbg !1465
  %139 = load i32, ptr %i, align 4, !dbg !1466
  %idxprom224 = sext i32 %139 to i64, !dbg !1467
  %arrayidx225 = getelementptr [21 x i16], ptr %temp, i64 0, i64 %idxprom224, !dbg !1467
  %140 = load i16, ptr %arrayidx225, align 2, !dbg !1467
  %conv226 = zext i16 %140 to i32, !dbg !1467
  %141 = load i32, ptr %t, align 4, !dbg !1468
  %add227 = add i32 %141, %conv226, !dbg !1468
  store i32 %add227, ptr %t, align 4, !dbg !1468
  %sub228 = sub i32 %138, %add227, !dbg !1469
  %142 = load ptr, ptr %base, align 8, !dbg !1470
  %143 = load i32, ptr %i, align 4, !dbg !1471
  %add229 = add i32 %143, 1, !dbg !1472
  %idxprom230 = sext i32 %add229 to i64, !dbg !1470
  %arrayidx231 = getelementptr i32, ptr %142, i64 %idxprom230, !dbg !1470
  store i32 %sub228, ptr %arrayidx231, align 4, !dbg !1473
  br label %for.inc232, !dbg !1474

for.inc232:                                       ; preds = %for.body213
  %144 = load i32, ptr %i, align 4, !dbg !1475
  %inc233 = add i32 %144, 1, !dbg !1475
  store i32 %inc233, ptr %i, align 4, !dbg !1475
  br label %for.cond210, !dbg !1476, !llvm.loop !1477

for.end234:                                       ; preds = %for.cond210
  %145 = load ptr, ptr %limit, align 8, !dbg !1479
  %146 = load i32, ptr %maxLen, align 4, !dbg !1480
  %add235 = add i32 %146, 1, !dbg !1481
  %idxprom236 = sext i32 %add235 to i64, !dbg !1479
  %arrayidx237 = getelementptr i32, ptr %145, i64 %idxprom236, !dbg !1479
  store i32 2147483647, ptr %arrayidx237, align 4, !dbg !1482
  %147 = load i32, ptr %pp, align 4, !dbg !1483
  %148 = load i32, ptr %maxLen, align 4, !dbg !1484
  %idxprom238 = sext i32 %148 to i64, !dbg !1485
  %arrayidx239 = getelementptr [21 x i16], ptr %temp, i64 0, i64 %idxprom238, !dbg !1485
  %149 = load i16, ptr %arrayidx239, align 2, !dbg !1485
  %conv240 = zext i16 %149 to i32, !dbg !1485
  %add241 = add i32 %147, %conv240, !dbg !1486
  %sub242 = sub i32 %add241, 1, !dbg !1487
  %150 = load ptr, ptr %limit, align 8, !dbg !1488
  %151 = load i32, ptr %maxLen, align 4, !dbg !1489
  %idxprom243 = sext i32 %151 to i64, !dbg !1488
  %arrayidx244 = getelementptr i32, ptr %150, i64 %idxprom243, !dbg !1488
  store i32 %sub242, ptr %arrayidx244, align 4, !dbg !1490
  %152 = load ptr, ptr %base, align 8, !dbg !1491
  %153 = load i32, ptr %minLen, align 4, !dbg !1492
  %idxprom245 = sext i32 %153 to i64, !dbg !1491
  %arrayidx246 = getelementptr i32, ptr %152, i64 %idxprom245, !dbg !1491
  store i32 0, ptr %arrayidx246, align 4, !dbg !1493
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1494
  br label %cleanup, !dbg !1494

cleanup:                                          ; preds = %for.end234, %if.then112
  call void @llvm.lifetime.end.p0(i64 4, ptr %pp) #12, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxLen) #12, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 4, ptr %minLen) #12, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 42, ptr %temp) #12, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 258, ptr %length) #12, !dbg !1494
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup456 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc251, !dbg !1495

for.inc251:                                       ; preds = %cleanup.cont
  %154 = load i32, ptr %j, align 4, !dbg !1496
  %inc252 = add i32 %154, 1, !dbg !1496
  store i32 %inc252, ptr %j, align 4, !dbg !1496
  br label %for.cond99, !dbg !1497, !llvm.loop !1498

for.end253:                                       ; preds = %for.cond99
  store i32 0, ptr %i, align 4, !dbg !1500
  br label %for.cond254, !dbg !1502

for.cond254:                                      ; preds = %for.inc263, %for.end253
  %155 = load i32, ptr %i, align 4, !dbg !1503
  %cmp255 = icmp slt i32 %155, 256, !dbg !1505
  br i1 %cmp255, label %for.body257, label %for.end265, !dbg !1506

for.body257:                                      ; preds = %for.cond254
  %156 = load ptr, ptr %byteCount, align 8, !dbg !1507
  %157 = load i32, ptr %i, align 4, !dbg !1509
  %idxprom258 = sext i32 %157 to i64, !dbg !1507
  %arrayidx259 = getelementptr i32, ptr %156, i64 %idxprom258, !dbg !1507
  store i32 0, ptr %arrayidx259, align 4, !dbg !1510
  %158 = load i32, ptr %i, align 4, !dbg !1511
  %conv260 = trunc i32 %158 to i8, !dbg !1512
  %159 = load ptr, ptr %mtfSymbol, align 8, !dbg !1513
  %160 = load i32, ptr %i, align 4, !dbg !1514
  %idxprom261 = sext i32 %160 to i64, !dbg !1513
  %arrayidx262 = getelementptr i8, ptr %159, i64 %idxprom261, !dbg !1513
  store i8 %conv260, ptr %arrayidx262, align 1, !dbg !1515
  br label %for.inc263, !dbg !1516

for.inc263:                                       ; preds = %for.body257
  %161 = load i32, ptr %i, align 4, !dbg !1517
  %inc264 = add i32 %161, 1, !dbg !1517
  store i32 %inc264, ptr %i, align 4, !dbg !1517
  br label %for.cond254, !dbg !1518, !llvm.loop !1519

for.end265:                                       ; preds = %for.cond254
  store i32 0, ptr %selector, align 4, !dbg !1521
  store i32 0, ptr %symCount, align 4, !dbg !1522
  store i32 0, ptr %dbufCount, align 4, !dbg !1523
  store i32 0, ptr %runPos, align 4, !dbg !1524
  br label %for.cond266, !dbg !1525

for.cond266:                                      ; preds = %do.end, %if.end352, %for.end265
  %162 = load i32, ptr %symCount, align 4, !dbg !1526
  %dec267 = add i32 %162, -1, !dbg !1526
  store i32 %dec267, ptr %symCount, align 4, !dbg !1526
  %tobool268 = icmp ne i32 %162, 0, !dbg !1526
  br i1 %tobool268, label %if.end288, label %if.then269, !dbg !1528

if.then269:                                       ; preds = %for.cond266
  store i32 49, ptr %symCount, align 4, !dbg !1529
  %163 = load i32, ptr %selector, align 4, !dbg !1531
  %164 = load i32, ptr %nSelectors, align 4, !dbg !1533
  %cmp270 = icmp sge i32 %163, %164, !dbg !1534
  br i1 %cmp270, label %if.then272, label %if.end273, !dbg !1535

if.then272:                                       ; preds = %if.then269
  store i32 -5, ptr %retval, align 4, !dbg !1536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1536

if.end273:                                        ; preds = %if.then269
  %165 = load ptr, ptr %bd.addr, align 8, !dbg !1537
  %groups274 = getelementptr inbounds %struct.bunzip_data, ptr %165, i32 0, i32 18, !dbg !1538
  %arraydecay275 = getelementptr inbounds [6 x %struct.group_data], ptr %groups274, i64 0, i64 0, !dbg !1537
  %166 = load ptr, ptr %selectors, align 8, !dbg !1539
  %167 = load i32, ptr %selector, align 4, !dbg !1540
  %inc276 = add i32 %167, 1, !dbg !1540
  store i32 %inc276, ptr %selector, align 4, !dbg !1540
  %idxprom277 = sext i32 %167 to i64, !dbg !1539
  %arrayidx278 = getelementptr i8, ptr %166, i64 %idxprom277, !dbg !1539
  %168 = load i8, ptr %arrayidx278, align 1, !dbg !1539
  %conv279 = zext i8 %168 to i32, !dbg !1539
  %idx.ext280 = sext i32 %conv279 to i64, !dbg !1541
  %add.ptr281 = getelementptr %struct.group_data, ptr %arraydecay275, i64 %idx.ext280, !dbg !1541
  store ptr %add.ptr281, ptr %hufGroup, align 8, !dbg !1542
  %169 = load ptr, ptr %hufGroup, align 8, !dbg !1543
  %base282 = getelementptr inbounds %struct.group_data, ptr %169, i32 0, i32 1, !dbg !1544
  %arraydecay283 = getelementptr inbounds [20 x i32], ptr %base282, i64 0, i64 0, !dbg !1543
  %add.ptr284 = getelementptr i32, ptr %arraydecay283, i64 -1, !dbg !1545
  store ptr %add.ptr284, ptr %base, align 8, !dbg !1546
  %170 = load ptr, ptr %hufGroup, align 8, !dbg !1547
  %limit285 = getelementptr inbounds %struct.group_data, ptr %170, i32 0, i32 0, !dbg !1548
  %arraydecay286 = getelementptr inbounds [21 x i32], ptr %limit285, i64 0, i64 0, !dbg !1547
  %add.ptr287 = getelementptr i32, ptr %arraydecay286, i64 -1, !dbg !1549
  store ptr %add.ptr287, ptr %limit, align 8, !dbg !1550
  br label %if.end288, !dbg !1551

if.end288:                                        ; preds = %if.end273, %for.cond266
  br label %while.cond, !dbg !1552

while.cond:                                       ; preds = %if.end299, %if.end288
  %171 = load ptr, ptr %bd.addr, align 8, !dbg !1553
  %inbufBitCount289 = getelementptr inbounds %struct.bunzip_data, ptr %171, i32 0, i32 9, !dbg !1554
  %172 = load i32, ptr %inbufBitCount289, align 8, !dbg !1554
  %173 = load ptr, ptr %hufGroup, align 8, !dbg !1555
  %maxLen290 = getelementptr inbounds %struct.group_data, ptr %173, i32 0, i32 4, !dbg !1556
  %174 = load i32, ptr %maxLen290, align 4, !dbg !1556
  %cmp291 = icmp ult i32 %172, %174, !dbg !1557
  br i1 %cmp291, label %while.body, label %while.end, !dbg !1552

while.body:                                       ; preds = %while.cond
  %175 = load ptr, ptr %bd.addr, align 8, !dbg !1558
  %inbufPos = getelementptr inbounds %struct.bunzip_data, ptr %175, i32 0, i32 7, !dbg !1561
  %176 = load i64, ptr %inbufPos, align 8, !dbg !1561
  %177 = load ptr, ptr %bd.addr, align 8, !dbg !1562
  %inbufCount = getelementptr inbounds %struct.bunzip_data, ptr %177, i32 0, i32 6, !dbg !1563
  %178 = load i64, ptr %inbufCount, align 8, !dbg !1563
  %cmp293 = icmp eq i64 %176, %178, !dbg !1564
  br i1 %cmp293, label %if.then295, label %if.end299, !dbg !1565

if.then295:                                       ; preds = %while.body
  %179 = load ptr, ptr %bd.addr, align 8, !dbg !1566
  %180 = load ptr, ptr %hufGroup, align 8, !dbg !1568
  %maxLen296 = getelementptr inbounds %struct.group_data, ptr %180, i32 0, i32 4, !dbg !1569
  %181 = load i32, ptr %maxLen296, align 4, !dbg !1569
  %conv297 = trunc i32 %181 to i8, !dbg !1568
  %call298 = call i32 @get_bits(ptr noundef %179, i8 noundef zeroext %conv297) #15, !dbg !1570
  store i32 %call298, ptr %j, align 4, !dbg !1571
  br label %got_huff_bits, !dbg !1572

if.end299:                                        ; preds = %while.body
  %182 = load ptr, ptr %bd.addr, align 8, !dbg !1573
  %inbufBits = getelementptr inbounds %struct.bunzip_data, ptr %182, i32 0, i32 10, !dbg !1574
  %183 = load i32, ptr %inbufBits, align 4, !dbg !1574
  %shl300 = shl i32 %183, 8, !dbg !1575
  %184 = load ptr, ptr %bd.addr, align 8, !dbg !1576
  %inbuf = getelementptr inbounds %struct.bunzip_data, ptr %184, i32 0, i32 8, !dbg !1577
  %185 = load ptr, ptr %inbuf, align 8, !dbg !1577
  %186 = load ptr, ptr %bd.addr, align 8, !dbg !1578
  %inbufPos301 = getelementptr inbounds %struct.bunzip_data, ptr %186, i32 0, i32 7, !dbg !1579
  %187 = load i64, ptr %inbufPos301, align 8, !dbg !1580
  %inc302 = add i64 %187, 1, !dbg !1580
  store i64 %inc302, ptr %inbufPos301, align 8, !dbg !1580
  %arrayidx303 = getelementptr i8, ptr %185, i64 %187, !dbg !1576
  %188 = load i8, ptr %arrayidx303, align 1, !dbg !1576
  %conv304 = zext i8 %188 to i32, !dbg !1576
  %or = or i32 %shl300, %conv304, !dbg !1581
  %189 = load ptr, ptr %bd.addr, align 8, !dbg !1582
  %inbufBits305 = getelementptr inbounds %struct.bunzip_data, ptr %189, i32 0, i32 10, !dbg !1583
  store i32 %or, ptr %inbufBits305, align 4, !dbg !1584
  %190 = load ptr, ptr %bd.addr, align 8, !dbg !1585
  %inbufBitCount306 = getelementptr inbounds %struct.bunzip_data, ptr %190, i32 0, i32 9, !dbg !1586
  %191 = load i32, ptr %inbufBitCount306, align 8, !dbg !1587
  %add307 = add i32 %191, 8, !dbg !1587
  store i32 %add307, ptr %inbufBitCount306, align 8, !dbg !1587
  br label %while.cond, !dbg !1552, !llvm.loop !1588

while.end:                                        ; preds = %while.cond
  %192 = load ptr, ptr %hufGroup, align 8, !dbg !1590
  %maxLen308 = getelementptr inbounds %struct.group_data, ptr %192, i32 0, i32 4, !dbg !1591
  %193 = load i32, ptr %maxLen308, align 4, !dbg !1591
  %194 = load ptr, ptr %bd.addr, align 8, !dbg !1592
  %inbufBitCount309 = getelementptr inbounds %struct.bunzip_data, ptr %194, i32 0, i32 9, !dbg !1593
  %195 = load i32, ptr %inbufBitCount309, align 8, !dbg !1594
  %sub310 = sub i32 %195, %193, !dbg !1594
  store i32 %sub310, ptr %inbufBitCount309, align 8, !dbg !1594
  %196 = load ptr, ptr %bd.addr, align 8, !dbg !1595
  %inbufBits311 = getelementptr inbounds %struct.bunzip_data, ptr %196, i32 0, i32 10, !dbg !1596
  %197 = load i32, ptr %inbufBits311, align 4, !dbg !1596
  %198 = load ptr, ptr %bd.addr, align 8, !dbg !1597
  %inbufBitCount312 = getelementptr inbounds %struct.bunzip_data, ptr %198, i32 0, i32 9, !dbg !1598
  %199 = load i32, ptr %inbufBitCount312, align 8, !dbg !1598
  %shr = lshr i32 %197, %199, !dbg !1599
  %200 = load ptr, ptr %hufGroup, align 8, !dbg !1600
  %maxLen313 = getelementptr inbounds %struct.group_data, ptr %200, i32 0, i32 4, !dbg !1601
  %201 = load i32, ptr %maxLen313, align 4, !dbg !1601
  %shl314 = shl i32 1, %201, !dbg !1602
  %sub315 = sub i32 %shl314, 1, !dbg !1603
  %and316 = and i32 %shr, %sub315, !dbg !1604
  store i32 %and316, ptr %j, align 4, !dbg !1605
  br label %got_huff_bits, !dbg !1606

got_huff_bits:                                    ; preds = %while.end, %if.then295
  call void @llvm.dbg.label(metadata !1013), !dbg !1607
  %202 = load ptr, ptr %hufGroup, align 8, !dbg !1608
  %minLen317 = getelementptr inbounds %struct.group_data, ptr %202, i32 0, i32 3, !dbg !1609
  %203 = load i32, ptr %minLen317, align 4, !dbg !1609
  store i32 %203, ptr %i, align 4, !dbg !1610
  br label %while.cond318, !dbg !1611

while.cond318:                                    ; preds = %while.body323, %got_huff_bits
  %204 = load i32, ptr %j, align 4, !dbg !1612
  %205 = load ptr, ptr %limit, align 8, !dbg !1613
  %206 = load i32, ptr %i, align 4, !dbg !1614
  %idxprom319 = sext i32 %206 to i64, !dbg !1613
  %arrayidx320 = getelementptr i32, ptr %205, i64 %idxprom319, !dbg !1613
  %207 = load i32, ptr %arrayidx320, align 4, !dbg !1613
  %cmp321 = icmp sgt i32 %204, %207, !dbg !1615
  br i1 %cmp321, label %while.body323, label %while.end325, !dbg !1611

while.body323:                                    ; preds = %while.cond318
  %208 = load i32, ptr %i, align 4, !dbg !1616
  %inc324 = add i32 %208, 1, !dbg !1616
  store i32 %inc324, ptr %i, align 4, !dbg !1616
  br label %while.cond318, !dbg !1611, !llvm.loop !1617

while.end325:                                     ; preds = %while.cond318
  %209 = load ptr, ptr %hufGroup, align 8, !dbg !1619
  %maxLen326 = getelementptr inbounds %struct.group_data, ptr %209, i32 0, i32 4, !dbg !1620
  %210 = load i32, ptr %maxLen326, align 4, !dbg !1620
  %211 = load i32, ptr %i, align 4, !dbg !1621
  %sub327 = sub i32 %210, %211, !dbg !1622
  %212 = load ptr, ptr %bd.addr, align 8, !dbg !1623
  %inbufBitCount328 = getelementptr inbounds %struct.bunzip_data, ptr %212, i32 0, i32 9, !dbg !1624
  %213 = load i32, ptr %inbufBitCount328, align 8, !dbg !1625
  %add329 = add i32 %213, %sub327, !dbg !1625
  store i32 %add329, ptr %inbufBitCount328, align 8, !dbg !1625
  %214 = load i32, ptr %i, align 4, !dbg !1626
  %215 = load ptr, ptr %hufGroup, align 8, !dbg !1628
  %maxLen330 = getelementptr inbounds %struct.group_data, ptr %215, i32 0, i32 4, !dbg !1629
  %216 = load i32, ptr %maxLen330, align 4, !dbg !1629
  %cmp331 = icmp sgt i32 %214, %216, !dbg !1630
  br i1 %cmp331, label %if.then342, label %lor.lhs.false333, !dbg !1631

lor.lhs.false333:                                 ; preds = %while.end325
  %217 = load i32, ptr %j, align 4, !dbg !1632
  %218 = load ptr, ptr %hufGroup, align 8, !dbg !1633
  %maxLen334 = getelementptr inbounds %struct.group_data, ptr %218, i32 0, i32 4, !dbg !1634
  %219 = load i32, ptr %maxLen334, align 4, !dbg !1634
  %220 = load i32, ptr %i, align 4, !dbg !1635
  %sub335 = sub i32 %219, %220, !dbg !1636
  %shr336 = ashr i32 %217, %sub335, !dbg !1637
  %221 = load ptr, ptr %base, align 8, !dbg !1638
  %222 = load i32, ptr %i, align 4, !dbg !1639
  %idxprom337 = sext i32 %222 to i64, !dbg !1638
  %arrayidx338 = getelementptr i32, ptr %221, i64 %idxprom337, !dbg !1638
  %223 = load i32, ptr %arrayidx338, align 4, !dbg !1638
  %sub339 = sub i32 %shr336, %223, !dbg !1640
  store i32 %sub339, ptr %j, align 4, !dbg !1641
  %cmp340 = icmp uge i32 %sub339, 258, !dbg !1642
  br i1 %cmp340, label %if.then342, label %if.end343, !dbg !1643

if.then342:                                       ; preds = %lor.lhs.false333, %while.end325
  store i32 -5, ptr %retval, align 4, !dbg !1644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1644

if.end343:                                        ; preds = %lor.lhs.false333
  %224 = load ptr, ptr %hufGroup, align 8, !dbg !1645
  %permute344 = getelementptr inbounds %struct.group_data, ptr %224, i32 0, i32 2, !dbg !1646
  %225 = load i32, ptr %j, align 4, !dbg !1647
  %idxprom345 = sext i32 %225 to i64, !dbg !1645
  %arrayidx346 = getelementptr [258 x i32], ptr %permute344, i64 0, i64 %idxprom345, !dbg !1645
  %226 = load i32, ptr %arrayidx346, align 4, !dbg !1645
  store i32 %226, ptr %nextSym, align 4, !dbg !1648
  %227 = load i32, ptr %nextSym, align 4, !dbg !1649
  %cmp347 = icmp ule i32 %227, 1, !dbg !1651
  br i1 %cmp347, label %if.then349, label %if.end356, !dbg !1652

if.then349:                                       ; preds = %if.end343
  %228 = load i32, ptr %runPos, align 4, !dbg !1653
  %tobool350 = icmp ne i32 %228, 0, !dbg !1653
  br i1 %tobool350, label %if.end352, label %if.then351, !dbg !1656

if.then351:                                       ; preds = %if.then349
  store i32 1, ptr %runPos, align 4, !dbg !1657
  store i32 0, ptr %t, align 4, !dbg !1659
  br label %if.end352, !dbg !1660

if.end352:                                        ; preds = %if.then351, %if.then349
  %229 = load i32, ptr %runPos, align 4, !dbg !1661
  %230 = load i32, ptr %nextSym, align 4, !dbg !1662
  %shl353 = shl i32 %229, %230, !dbg !1663
  %231 = load i32, ptr %t, align 4, !dbg !1664
  %add354 = add i32 %231, %shl353, !dbg !1664
  store i32 %add354, ptr %t, align 4, !dbg !1664
  %232 = load i32, ptr %runPos, align 4, !dbg !1665
  %shl355 = shl i32 %232, 1, !dbg !1665
  store i32 %shl355, ptr %runPos, align 4, !dbg !1665
  br label %for.cond266, !dbg !1666, !llvm.loop !1667

if.end356:                                        ; preds = %if.end343
  %233 = load i32, ptr %runPos, align 4, !dbg !1670
  %tobool357 = icmp ne i32 %233, 0, !dbg !1670
  br i1 %tobool357, label %if.then358, label %if.end379, !dbg !1672

if.then358:                                       ; preds = %if.end356
  store i32 0, ptr %runPos, align 4, !dbg !1673
  %234 = load i32, ptr %dbufCount, align 4, !dbg !1675
  %235 = load i32, ptr %t, align 4, !dbg !1677
  %add359 = add i32 %234, %235, !dbg !1678
  %236 = load i32, ptr %dbufSize, align 4, !dbg !1679
  %cmp360 = icmp sge i32 %add359, %236, !dbg !1680
  br i1 %cmp360, label %if.then362, label %if.end363, !dbg !1681

if.then362:                                       ; preds = %if.then358
  store i32 -5, ptr %retval, align 4, !dbg !1682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1682

if.end363:                                        ; preds = %if.then358
  %237 = load ptr, ptr %symToByte, align 8, !dbg !1683
  %238 = load ptr, ptr %mtfSymbol, align 8, !dbg !1684
  %arrayidx364 = getelementptr i8, ptr %238, i64 0, !dbg !1684
  %239 = load i8, ptr %arrayidx364, align 1, !dbg !1684
  %idxprom365 = zext i8 %239 to i64, !dbg !1683
  %arrayidx366 = getelementptr i8, ptr %237, i64 %idxprom365, !dbg !1683
  %240 = load i8, ptr %arrayidx366, align 1, !dbg !1683
  store i8 %240, ptr %uc, align 1, !dbg !1685
  %241 = load i32, ptr %t, align 4, !dbg !1686
  %242 = load ptr, ptr %byteCount, align 8, !dbg !1687
  %243 = load i8, ptr %uc, align 1, !dbg !1688
  %idxprom367 = zext i8 %243 to i64, !dbg !1687
  %arrayidx368 = getelementptr i32, ptr %242, i64 %idxprom367, !dbg !1687
  %244 = load i32, ptr %arrayidx368, align 4, !dbg !1689
  %add369 = add i32 %244, %241, !dbg !1689
  store i32 %add369, ptr %arrayidx368, align 4, !dbg !1689
  br label %while.cond370, !dbg !1690

while.cond370:                                    ; preds = %while.body373, %if.end363
  %245 = load i32, ptr %t, align 4, !dbg !1691
  %dec371 = add i32 %245, -1, !dbg !1691
  store i32 %dec371, ptr %t, align 4, !dbg !1691
  %tobool372 = icmp ne i32 %245, 0, !dbg !1690
  br i1 %tobool372, label %while.body373, label %while.end378, !dbg !1690

while.body373:                                    ; preds = %while.cond370
  %246 = load i8, ptr %uc, align 1, !dbg !1692
  %conv374 = zext i8 %246 to i32, !dbg !1692
  %247 = load ptr, ptr %dbuf, align 8, !dbg !1693
  %248 = load i32, ptr %dbufCount, align 4, !dbg !1694
  %inc375 = add i32 %248, 1, !dbg !1694
  store i32 %inc375, ptr %dbufCount, align 4, !dbg !1694
  %idxprom376 = sext i32 %248 to i64, !dbg !1693
  %arrayidx377 = getelementptr i32, ptr %247, i64 %idxprom376, !dbg !1693
  store i32 %conv374, ptr %arrayidx377, align 4, !dbg !1695
  br label %while.cond370, !dbg !1690, !llvm.loop !1696

while.end378:                                     ; preds = %while.cond370
  br label %if.end379, !dbg !1697

if.end379:                                        ; preds = %while.end378, %if.end356
  %249 = load i32, ptr %nextSym, align 4, !dbg !1698
  %250 = load i32, ptr %symTotal, align 4, !dbg !1700
  %cmp380 = icmp sgt i32 %249, %250, !dbg !1701
  br i1 %cmp380, label %if.then382, label %if.end383, !dbg !1702

if.then382:                                       ; preds = %if.end379
  br label %for.end408, !dbg !1703

if.end383:                                        ; preds = %if.end379
  %251 = load i32, ptr %dbufCount, align 4, !dbg !1704
  %252 = load i32, ptr %dbufSize, align 4, !dbg !1706
  %cmp384 = icmp sge i32 %251, %252, !dbg !1707
  br i1 %cmp384, label %if.then386, label %if.end387, !dbg !1708

if.then386:                                       ; preds = %if.end383
  store i32 -5, ptr %retval, align 4, !dbg !1709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1709

if.end387:                                        ; preds = %if.end383
  %253 = load i32, ptr %nextSym, align 4, !dbg !1710
  %sub388 = sub i32 %253, 1, !dbg !1711
  store i32 %sub388, ptr %i, align 4, !dbg !1712
  %254 = load ptr, ptr %mtfSymbol, align 8, !dbg !1713
  %255 = load i32, ptr %i, align 4, !dbg !1714
  %idxprom389 = sext i32 %255 to i64, !dbg !1713
  %arrayidx390 = getelementptr i8, ptr %254, i64 %idxprom389, !dbg !1713
  %256 = load i8, ptr %arrayidx390, align 1, !dbg !1713
  store i8 %256, ptr %uc, align 1, !dbg !1715
  br label %do.body, !dbg !1716

do.body:                                          ; preds = %do.cond, %if.end387
  %257 = load ptr, ptr %mtfSymbol, align 8, !dbg !1717
  %258 = load i32, ptr %i, align 4, !dbg !1719
  %sub391 = sub i32 %258, 1, !dbg !1720
  %idxprom392 = sext i32 %sub391 to i64, !dbg !1717
  %arrayidx393 = getelementptr i8, ptr %257, i64 %idxprom392, !dbg !1717
  %259 = load i8, ptr %arrayidx393, align 1, !dbg !1717
  %260 = load ptr, ptr %mtfSymbol, align 8, !dbg !1721
  %261 = load i32, ptr %i, align 4, !dbg !1722
  %idxprom394 = sext i32 %261 to i64, !dbg !1721
  %arrayidx395 = getelementptr i8, ptr %260, i64 %idxprom394, !dbg !1721
  store i8 %259, ptr %arrayidx395, align 1, !dbg !1723
  br label %do.cond, !dbg !1724

do.cond:                                          ; preds = %do.body
  %262 = load i32, ptr %i, align 4, !dbg !1725
  %dec396 = add i32 %262, -1, !dbg !1725
  store i32 %dec396, ptr %i, align 4, !dbg !1725
  %tobool397 = icmp ne i32 %dec396, 0, !dbg !1724
  br i1 %tobool397, label %do.body, label %do.end, !dbg !1724, !llvm.loop !1726

do.end:                                           ; preds = %do.cond
  %263 = load i8, ptr %uc, align 1, !dbg !1728
  %264 = load ptr, ptr %mtfSymbol, align 8, !dbg !1729
  %arrayidx398 = getelementptr i8, ptr %264, i64 0, !dbg !1729
  store i8 %263, ptr %arrayidx398, align 1, !dbg !1730
  %265 = load ptr, ptr %symToByte, align 8, !dbg !1731
  %266 = load i8, ptr %uc, align 1, !dbg !1732
  %idxprom399 = zext i8 %266 to i64, !dbg !1731
  %arrayidx400 = getelementptr i8, ptr %265, i64 %idxprom399, !dbg !1731
  %267 = load i8, ptr %arrayidx400, align 1, !dbg !1731
  store i8 %267, ptr %uc, align 1, !dbg !1733
  %268 = load ptr, ptr %byteCount, align 8, !dbg !1734
  %269 = load i8, ptr %uc, align 1, !dbg !1735
  %idxprom401 = zext i8 %269 to i64, !dbg !1734
  %arrayidx402 = getelementptr i32, ptr %268, i64 %idxprom401, !dbg !1734
  %270 = load i32, ptr %arrayidx402, align 4, !dbg !1736
  %inc403 = add i32 %270, 1, !dbg !1736
  store i32 %inc403, ptr %arrayidx402, align 4, !dbg !1736
  %271 = load i8, ptr %uc, align 1, !dbg !1737
  %conv404 = zext i8 %271 to i32, !dbg !1738
  %272 = load ptr, ptr %dbuf, align 8, !dbg !1739
  %273 = load i32, ptr %dbufCount, align 4, !dbg !1740
  %inc405 = add i32 %273, 1, !dbg !1740
  store i32 %inc405, ptr %dbufCount, align 4, !dbg !1740
  %idxprom406 = sext i32 %273 to i64, !dbg !1739
  %arrayidx407 = getelementptr i32, ptr %272, i64 %idxprom406, !dbg !1739
  store i32 %conv404, ptr %arrayidx407, align 4, !dbg !1741
  br label %for.cond266, !dbg !1742, !llvm.loop !1667

for.end408:                                       ; preds = %if.then382
  store i32 0, ptr %j, align 4, !dbg !1743
  store i32 0, ptr %i, align 4, !dbg !1744
  br label %for.cond409, !dbg !1746

for.cond409:                                      ; preds = %for.inc418, %for.end408
  %274 = load i32, ptr %i, align 4, !dbg !1747
  %cmp410 = icmp slt i32 %274, 256, !dbg !1749
  br i1 %cmp410, label %for.body412, label %for.end420, !dbg !1750

for.body412:                                      ; preds = %for.cond409
  %275 = load i32, ptr %j, align 4, !dbg !1751
  %276 = load ptr, ptr %byteCount, align 8, !dbg !1753
  %277 = load i32, ptr %i, align 4, !dbg !1754
  %idxprom413 = sext i32 %277 to i64, !dbg !1753
  %arrayidx414 = getelementptr i32, ptr %276, i64 %idxprom413, !dbg !1753
  %278 = load i32, ptr %arrayidx414, align 4, !dbg !1753
  %add415 = add i32 %275, %278, !dbg !1755
  store i32 %add415, ptr %k, align 4, !dbg !1756
  %279 = load i32, ptr %j, align 4, !dbg !1757
  %280 = load ptr, ptr %byteCount, align 8, !dbg !1758
  %281 = load i32, ptr %i, align 4, !dbg !1759
  %idxprom416 = sext i32 %281 to i64, !dbg !1758
  %arrayidx417 = getelementptr i32, ptr %280, i64 %idxprom416, !dbg !1758
  store i32 %279, ptr %arrayidx417, align 4, !dbg !1760
  %282 = load i32, ptr %k, align 4, !dbg !1761
  store i32 %282, ptr %j, align 4, !dbg !1762
  br label %for.inc418, !dbg !1763

for.inc418:                                       ; preds = %for.body412
  %283 = load i32, ptr %i, align 4, !dbg !1764
  %inc419 = add i32 %283, 1, !dbg !1764
  store i32 %inc419, ptr %i, align 4, !dbg !1764
  br label %for.cond409, !dbg !1765, !llvm.loop !1766

for.end420:                                       ; preds = %for.cond409
  store i32 0, ptr %i, align 4, !dbg !1768
  br label %for.cond421, !dbg !1770

for.cond421:                                      ; preds = %for.inc438, %for.end420
  %284 = load i32, ptr %i, align 4, !dbg !1771
  %285 = load i32, ptr %dbufCount, align 4, !dbg !1773
  %cmp422 = icmp slt i32 %284, %285, !dbg !1774
  br i1 %cmp422, label %for.body424, label %for.end440, !dbg !1775

for.body424:                                      ; preds = %for.cond421
  %286 = load ptr, ptr %dbuf, align 8, !dbg !1776
  %287 = load i32, ptr %i, align 4, !dbg !1778
  %idxprom425 = sext i32 %287 to i64, !dbg !1776
  %arrayidx426 = getelementptr i32, ptr %286, i64 %idxprom425, !dbg !1776
  %288 = load i32, ptr %arrayidx426, align 4, !dbg !1776
  %and427 = and i32 %288, 255, !dbg !1779
  %conv428 = trunc i32 %and427 to i8, !dbg !1780
  store i8 %conv428, ptr %uc, align 1, !dbg !1781
  %289 = load i32, ptr %i, align 4, !dbg !1782
  %shl429 = shl i32 %289, 8, !dbg !1783
  %290 = load ptr, ptr %dbuf, align 8, !dbg !1784
  %291 = load ptr, ptr %byteCount, align 8, !dbg !1785
  %292 = load i8, ptr %uc, align 1, !dbg !1786
  %idxprom430 = zext i8 %292 to i64, !dbg !1785
  %arrayidx431 = getelementptr i32, ptr %291, i64 %idxprom430, !dbg !1785
  %293 = load i32, ptr %arrayidx431, align 4, !dbg !1785
  %idxprom432 = sext i32 %293 to i64, !dbg !1784
  %arrayidx433 = getelementptr i32, ptr %290, i64 %idxprom432, !dbg !1784
  %294 = load i32, ptr %arrayidx433, align 4, !dbg !1787
  %or434 = or i32 %294, %shl429, !dbg !1787
  store i32 %or434, ptr %arrayidx433, align 4, !dbg !1787
  %295 = load ptr, ptr %byteCount, align 8, !dbg !1788
  %296 = load i8, ptr %uc, align 1, !dbg !1789
  %idxprom435 = zext i8 %296 to i64, !dbg !1788
  %arrayidx436 = getelementptr i32, ptr %295, i64 %idxprom435, !dbg !1788
  %297 = load i32, ptr %arrayidx436, align 4, !dbg !1790
  %inc437 = add i32 %297, 1, !dbg !1790
  store i32 %inc437, ptr %arrayidx436, align 4, !dbg !1790
  br label %for.inc438, !dbg !1791

for.inc438:                                       ; preds = %for.body424
  %298 = load i32, ptr %i, align 4, !dbg !1792
  %inc439 = add i32 %298, 1, !dbg !1792
  store i32 %inc439, ptr %i, align 4, !dbg !1792
  br label %for.cond421, !dbg !1793, !llvm.loop !1794

for.end440:                                       ; preds = %for.cond421
  %299 = load i32, ptr %dbufCount, align 4, !dbg !1796
  %tobool441 = icmp ne i32 %299, 0, !dbg !1796
  br i1 %tobool441, label %if.then442, label %if.end455, !dbg !1798

if.then442:                                       ; preds = %for.end440
  %300 = load i32, ptr %origPtr, align 4, !dbg !1799
  %301 = load i32, ptr %dbufCount, align 4, !dbg !1802
  %cmp443 = icmp uge i32 %300, %301, !dbg !1803
  br i1 %cmp443, label %if.then445, label %if.end446, !dbg !1804

if.then445:                                       ; preds = %if.then442
  store i32 -5, ptr %retval, align 4, !dbg !1805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1805

if.end446:                                        ; preds = %if.then442
  %302 = load ptr, ptr %dbuf, align 8, !dbg !1806
  %303 = load i32, ptr %origPtr, align 4, !dbg !1807
  %idxprom447 = zext i32 %303 to i64, !dbg !1806
  %arrayidx448 = getelementptr i32, ptr %302, i64 %idxprom447, !dbg !1806
  %304 = load i32, ptr %arrayidx448, align 4, !dbg !1806
  %305 = load ptr, ptr %bd.addr, align 8, !dbg !1808
  %writePos = getelementptr inbounds %struct.bunzip_data, ptr %305, i32 0, i32 1, !dbg !1809
  store i32 %304, ptr %writePos, align 4, !dbg !1810
  %306 = load ptr, ptr %bd.addr, align 8, !dbg !1811
  %writePos449 = getelementptr inbounds %struct.bunzip_data, ptr %306, i32 0, i32 1, !dbg !1812
  %307 = load i32, ptr %writePos449, align 4, !dbg !1812
  %and450 = and i32 %307, 255, !dbg !1813
  %conv451 = trunc i32 %and450 to i8, !dbg !1814
  %conv452 = zext i8 %conv451 to i32, !dbg !1814
  %308 = load ptr, ptr %bd.addr, align 8, !dbg !1815
  %writeCurrent = getelementptr inbounds %struct.bunzip_data, ptr %308, i32 0, i32 4, !dbg !1816
  store i32 %conv452, ptr %writeCurrent, align 8, !dbg !1817
  %309 = load ptr, ptr %bd.addr, align 8, !dbg !1818
  %writePos453 = getelementptr inbounds %struct.bunzip_data, ptr %309, i32 0, i32 1, !dbg !1819
  %310 = load i32, ptr %writePos453, align 4, !dbg !1820
  %shr454 = ashr i32 %310, 8, !dbg !1820
  store i32 %shr454, ptr %writePos453, align 4, !dbg !1820
  %311 = load ptr, ptr %bd.addr, align 8, !dbg !1821
  %writeRunCountdown = getelementptr inbounds %struct.bunzip_data, ptr %311, i32 0, i32 2, !dbg !1822
  store i32 5, ptr %writeRunCountdown, align 8, !dbg !1823
  br label %if.end455, !dbg !1824

if.end455:                                        ; preds = %if.end446, %for.end440
  %312 = load i32, ptr %dbufCount, align 4, !dbg !1825
  %313 = load ptr, ptr %bd.addr, align 8, !dbg !1826
  %writeCount = getelementptr inbounds %struct.bunzip_data, ptr %313, i32 0, i32 3, !dbg !1827
  store i32 %312, ptr %writeCount, align 4, !dbg !1828
  store i32 0, ptr %retval, align 4, !dbg !1829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup456, !dbg !1829

cleanup456:                                       ; preds = %if.end455, %if.then445, %if.then386, %if.then362, %if.then342, %if.then272, %cleanup, %if.then75, %if.then53, %if.then49, %if.then22, %if.then18, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %origPtr) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %selectors) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtfSymbol) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %symToByte) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 1, ptr %uc) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %byteCount) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %nSelectors) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %symTotal) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %symCount) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %runPos) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %selector) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %groupCount) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %dbufSize) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextSym) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %dbufCount) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr %hufGroup) #12, !dbg !1830
  %314 = load i32, ptr %retval, align 4, !dbg !1830
  ret i32 %314, !dbg !1830
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone allocsize(0) }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 695, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/decompress_bunzip2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37825afec0e57f4ccaaad56b1ba22782")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 703, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 32)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 725, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 729, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 34)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !24, line: 480, type: !25, isLocal: true, isDefinition: true)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 21)
!28 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_bunzip2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_bunzip2\22 -D KBUILD_BASENAME=\22decompress_bunzip2\22 -D KBUILD_MODNAME=\22decompress_bunzip2\22 -D __KBUILD_MODNAME=kmod_decompress_bunzip2 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_bunzip2.ll lib/decompress_bunzip2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !29, retainedTypes: !45, globals: !52, splitDebugInlining: false, nameTableKind: None)
!29 = !{!30, !36}
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 10, baseType: !32, size: 32, elements: !33)
!31 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "false", value: 0)
!35 = !DIEnumerator(name: "true", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 364, baseType: !32, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44}
!38 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!39 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!40 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!43 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!44 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!45 = !{!46, !48, !32, !49, !50, !51}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !47, line: 154, baseType: !32)
!47 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !{!0, !7, !12, !17, !22}
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "bunzip2", scope: !2, file: !2, line: 680, type: !63, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !75)
!63 = !DISubroutineType(types: !64)
!64 = !{!50, !65, !66, !67, !67, !65, !70, !71}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!66 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!66, !49, !48}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !136, !137, !138, !139}
!76 = !DILocalVariable(name: "buf", arg: 1, scope: !62, file: !2, line: 680, type: !65)
!77 = !DILocalVariable(name: "len", arg: 2, scope: !62, file: !2, line: 680, type: !66)
!78 = !DILocalVariable(name: "fill", arg: 3, scope: !62, file: !2, line: 681, type: !67)
!79 = !DILocalVariable(name: "flush", arg: 4, scope: !62, file: !2, line: 682, type: !67)
!80 = !DILocalVariable(name: "outbuf", arg: 5, scope: !62, file: !2, line: 683, type: !65)
!81 = !DILocalVariable(name: "pos", arg: 6, scope: !62, file: !2, line: 684, type: !70)
!82 = !DILocalVariable(name: "error", arg: 7, scope: !62, file: !2, line: 685, type: !71)
!83 = !DILocalVariable(name: "bd", scope: !62, file: !2, line: 687, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bunzip_data", file: !2, line: 92, size: 341184, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !102, !103, !104, !105, !107, !108, !112, !130, !131, !133, !135}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "writeCopies", scope: !85, file: !2, line: 94, baseType: !50, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "writePos", scope: !85, file: !2, line: 94, baseType: !50, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "writeRunCountdown", scope: !85, file: !2, line: 94, baseType: !50, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "writeCount", scope: !85, file: !2, line: 94, baseType: !50, size: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "writeCurrent", scope: !85, file: !2, line: 94, baseType: !50, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !85, file: !2, line: 96, baseType: !67, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "inbufCount", scope: !85, file: !2, line: 97, baseType: !66, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "inbufPos", scope: !85, file: !2, line: 97, baseType: !66, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "inbuf", scope: !85, file: !2, line: 98, baseType: !65, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "inbufBitCount", scope: !85, file: !2, line: 99, baseType: !32, size: 32, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "inbufBits", scope: !85, file: !2, line: 99, baseType: !32, size: 32, offset: 480)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "crc32Table", scope: !85, file: !2, line: 102, baseType: !99, size: 8192, offset: 512)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8192, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "headerCRC", scope: !85, file: !2, line: 102, baseType: !32, size: 32, offset: 8704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "totalCRC", scope: !85, file: !2, line: 102, baseType: !32, size: 32, offset: 8736)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "writeCRC", scope: !85, file: !2, line: 102, baseType: !32, size: 32, offset: 8768)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "dbuf", scope: !85, file: !2, line: 104, baseType: !106, size: 64, offset: 8832)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dbufSize", scope: !85, file: !2, line: 104, baseType: !32, size: 32, offset: 8896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !85, file: !2, line: 106, baseType: !109, size: 262144, offset: 8928)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 262144, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 32768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !85, file: !2, line: 107, baseType: !113, size: 57792, offset: 271072)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 57792, elements: !128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_data", file: !2, line: 82, size: 9632, elements: !115)
!115 = !{!116, !118, !122, !126, !127}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !114, file: !2, line: 84, baseType: !117, size: 672)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 672, elements: !26)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !114, file: !2, line: 85, baseType: !119, size: 640, offset: 672)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "permute", scope: !114, file: !2, line: 86, baseType: !123, size: 8256, offset: 1312)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8256, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 258)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "minLen", scope: !114, file: !2, line: 87, baseType: !50, size: 32, offset: 9568)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "maxLen", scope: !114, file: !2, line: 87, baseType: !50, size: 32, offset: 9600)
!128 = !{!129}
!129 = !DISubrange(count: 6)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "io_error", scope: !85, file: !2, line: 108, baseType: !50, size: 32, offset: 328864)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "byteCount", scope: !85, file: !2, line: 109, baseType: !132, size: 8192, offset: 328896)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8192, elements: !100)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "symToByte", scope: !85, file: !2, line: 110, baseType: !134, size: 2048, offset: 337088)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !100)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mtfSymbol", scope: !85, file: !2, line: 110, baseType: !134, size: 2048, offset: 339136)
!136 = !DILocalVariable(name: "i", scope: !62, file: !2, line: 688, type: !50)
!137 = !DILocalVariable(name: "inbuf", scope: !62, file: !2, line: 689, type: !65)
!138 = !DILabel(scope: !62, name: "exit_1", file: !2, line: 738)
!139 = !DILabel(scope: !62, name: "exit_0", file: !2, line: 741)
!140 = !DILocation(line: 680, column: 40, scope: !62)
!141 = !DILocation(line: 680, column: 50, scope: !62)
!142 = !DILocation(line: 681, column: 11, scope: !62)
!143 = !DILocation(line: 682, column: 11, scope: !62)
!144 = !DILocation(line: 683, column: 19, scope: !62)
!145 = !DILocation(line: 684, column: 10, scope: !62)
!146 = !DILocation(line: 685, column: 10, scope: !62)
!147 = !DILocation(line: 687, column: 2, scope: !62)
!148 = !DILocation(line: 687, column: 22, scope: !62)
!149 = !DILocation(line: 688, column: 2, scope: !62)
!150 = !DILocation(line: 688, column: 6, scope: !62)
!151 = !DILocation(line: 689, column: 2, scope: !62)
!152 = !DILocation(line: 689, column: 17, scope: !62)
!153 = !DILocation(line: 691, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !62, file: !2, line: 691, column: 6)
!155 = !DILocation(line: 691, column: 6, scope: !62)
!156 = !DILocation(line: 692, column: 12, scope: !154)
!157 = !DILocation(line: 692, column: 10, scope: !154)
!158 = !DILocation(line: 692, column: 3, scope: !154)
!159 = !DILocation(line: 694, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !62, file: !2, line: 694, column: 6)
!161 = !DILocation(line: 694, column: 6, scope: !62)
!162 = !DILocation(line: 695, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !2, line: 694, column: 15)
!164 = !DILocation(line: 696, column: 3, scope: !163)
!165 = !DILocation(line: 698, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !62, file: !2, line: 698, column: 6)
!167 = !DILocation(line: 698, column: 6, scope: !62)
!168 = !DILocation(line: 699, column: 11, scope: !166)
!169 = !DILocation(line: 699, column: 9, scope: !166)
!170 = !DILocation(line: 699, column: 3, scope: !166)
!171 = !DILocation(line: 701, column: 11, scope: !166)
!172 = !DILocation(line: 701, column: 9, scope: !166)
!173 = !DILocation(line: 702, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !62, file: !2, line: 702, column: 6)
!175 = !DILocation(line: 702, column: 6, scope: !62)
!176 = !DILocation(line: 703, column: 3, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !2, line: 702, column: 14)
!178 = !DILocation(line: 704, column: 5, scope: !177)
!179 = !DILocation(line: 705, column: 3, scope: !177)
!180 = !DILocation(line: 707, column: 24, scope: !62)
!181 = !DILocation(line: 707, column: 31, scope: !62)
!182 = !DILocation(line: 707, column: 36, scope: !62)
!183 = !DILocation(line: 707, column: 6, scope: !62)
!184 = !DILocation(line: 707, column: 4, scope: !62)
!185 = !DILocation(line: 708, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !62, file: !2, line: 708, column: 6)
!187 = !DILocation(line: 708, column: 6, scope: !62)
!188 = !DILocation(line: 709, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !2, line: 708, column: 10)
!190 = !DILocation(line: 710, column: 20, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 709, column: 12)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 709, column: 3)
!193 = distinct !DILexicalBlock(scope: !189, file: !2, line: 709, column: 3)
!194 = !DILocation(line: 710, column: 24, scope: !191)
!195 = !DILocation(line: 710, column: 8, scope: !191)
!196 = !DILocation(line: 710, column: 6, scope: !191)
!197 = !DILocation(line: 711, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !191, file: !2, line: 711, column: 8)
!199 = !DILocation(line: 711, column: 10, scope: !198)
!200 = !DILocation(line: 711, column: 8, scope: !191)
!201 = !DILocation(line: 712, column: 5, scope: !198)
!202 = !DILocation(line: 713, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !191, file: !2, line: 713, column: 8)
!204 = !DILocation(line: 713, column: 8, scope: !191)
!205 = !DILocation(line: 714, column: 15, scope: !203)
!206 = !DILocation(line: 714, column: 12, scope: !203)
!207 = !DILocation(line: 714, column: 5, scope: !203)
!208 = !DILocation(line: 716, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !203, file: !2, line: 716, column: 9)
!210 = !DILocation(line: 716, column: 14, scope: !209)
!211 = !DILocation(line: 716, column: 20, scope: !209)
!212 = !DILocation(line: 716, column: 28, scope: !209)
!213 = !DILocation(line: 716, column: 11, scope: !209)
!214 = !DILocation(line: 716, column: 9, scope: !203)
!215 = !DILocation(line: 717, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !2, line: 716, column: 32)
!217 = !DILocation(line: 718, column: 6, scope: !216)
!218 = !DILocation(line: 709, column: 3, scope: !192)
!219 = distinct !{!219, !220, !221, !222}
!220 = !DILocation(line: 709, column: 3, scope: !193)
!221 = !DILocation(line: 720, column: 3, scope: !193)
!222 = !{!"llvm.loop.unroll.disable"}
!223 = !DILocation(line: 721, column: 2, scope: !189)
!224 = !DILocation(line: 723, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !62, file: !2, line: 723, column: 6)
!226 = !DILocation(line: 723, column: 8, scope: !225)
!227 = !DILocation(line: 723, column: 6, scope: !62)
!228 = !DILocation(line: 724, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 724, column: 7)
!230 = distinct !DILexicalBlock(scope: !225, file: !2, line: 723, column: 30)
!231 = !DILocation(line: 724, column: 11, scope: !229)
!232 = !DILocation(line: 724, column: 24, scope: !229)
!233 = !DILocation(line: 724, column: 28, scope: !229)
!234 = !DILocation(line: 724, column: 21, scope: !229)
!235 = !DILocation(line: 724, column: 7, scope: !230)
!236 = !DILocation(line: 725, column: 4, scope: !229)
!237 = !DILocation(line: 727, column: 6, scope: !229)
!238 = !DILocation(line: 728, column: 2, scope: !230)
!239 = !DILocation(line: 728, column: 13, scope: !240)
!240 = distinct !DILexicalBlock(scope: !225, file: !2, line: 728, column: 13)
!241 = !DILocation(line: 728, column: 15, scope: !240)
!242 = !DILocation(line: 728, column: 13, scope: !225)
!243 = !DILocation(line: 729, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !2, line: 728, column: 48)
!245 = !DILocation(line: 730, column: 2, scope: !244)
!246 = !DILocation(line: 731, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !62, file: !2, line: 731, column: 6)
!248 = !DILocation(line: 731, column: 6, scope: !62)
!249 = !DILocation(line: 732, column: 3, scope: !247)
!250 = !DILocation(line: 733, column: 6, scope: !251)
!251 = distinct !DILexicalBlock(scope: !62, file: !2, line: 733, column: 6)
!252 = !DILocation(line: 733, column: 10, scope: !251)
!253 = !DILocation(line: 733, column: 6, scope: !62)
!254 = !DILocation(line: 734, column: 3, scope: !251)
!255 = !DILocation(line: 735, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !62, file: !2, line: 735, column: 6)
!257 = !DILocation(line: 735, column: 6, scope: !62)
!258 = !DILocation(line: 736, column: 10, scope: !256)
!259 = !DILocation(line: 736, column: 14, scope: !256)
!260 = !DILocation(line: 736, column: 4, scope: !256)
!261 = !DILocation(line: 736, column: 8, scope: !256)
!262 = !DILocation(line: 736, column: 3, scope: !256)
!263 = !DILocation(line: 737, column: 2, scope: !62)
!264 = !DILocation(line: 738, column: 1, scope: !62)
!265 = !DILocation(line: 739, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !62, file: !2, line: 739, column: 6)
!267 = !DILocation(line: 739, column: 6, scope: !62)
!268 = !DILocation(line: 740, column: 3, scope: !266)
!269 = !DILocation(line: 741, column: 1, scope: !62)
!270 = !DILocation(line: 742, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !62, file: !2, line: 742, column: 6)
!272 = !DILocation(line: 742, column: 6, scope: !62)
!273 = !DILocation(line: 743, column: 3, scope: !271)
!274 = !DILocation(line: 744, column: 9, scope: !62)
!275 = !DILocation(line: 744, column: 2, scope: !62)
!276 = !DILocation(line: 745, column: 1, scope: !62)
!277 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 591, type: !278, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !284)
!278 = !DISubroutineType(types: !279)
!279 = !{!49, !280, !46}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 61, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !282, line: 72, baseType: !283)
!282 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !282, line: 16, baseType: !48)
!284 = !{!285, !286, !287}
!285 = !DILocalVariable(name: "size", arg: 1, scope: !277, file: !24, line: 591, type: !280)
!286 = !DILocalVariable(name: "flags", arg: 2, scope: !277, file: !24, line: 591, type: !46)
!287 = !DILocalVariable(name: "index", scope: !288, file: !24, line: 594, type: !32)
!288 = distinct !DILexicalBlock(scope: !289, file: !24, line: 593, column: 42)
!289 = distinct !DILexicalBlock(scope: !277, file: !24, line: 593, column: 6)
!290 = !DILocation(line: 591, column: 61, scope: !277)
!291 = !DILocation(line: 591, column: 73, scope: !277)
!292 = !DILocation(line: 593, column: 27, scope: !289)
!293 = !DILocation(line: 593, column: 6, scope: !289)
!294 = !DILocation(line: 593, column: 33, scope: !289)
!295 = !DILocation(line: 593, column: 36, scope: !289)
!296 = !DILocation(line: 593, column: 6, scope: !277)
!297 = !DILocation(line: 594, column: 3, scope: !288)
!298 = !DILocation(line: 594, column: 16, scope: !288)
!299 = !DILocation(line: 596, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !288, file: !24, line: 596, column: 7)
!301 = !DILocation(line: 596, column: 12, scope: !300)
!302 = !DILocation(line: 596, column: 7, scope: !288)
!303 = !DILocation(line: 597, column: 25, scope: !300)
!304 = !DILocation(line: 597, column: 31, scope: !300)
!305 = !DILocation(line: 597, column: 11, scope: !300)
!306 = !DILocation(line: 597, column: 4, scope: !300)
!307 = !DILocation(line: 599, column: 11, scope: !288)
!308 = !DILocation(line: 599, column: 9, scope: !288)
!309 = !DILocation(line: 601, column: 33, scope: !288)
!310 = !DILocation(line: 601, column: 40, scope: !288)
!311 = !DILocation(line: 601, column: 20, scope: !288)
!312 = !DILocation(line: 601, column: 5, scope: !288)
!313 = !DILocation(line: 601, column: 51, scope: !288)
!314 = !DILocation(line: 602, column: 5, scope: !288)
!315 = !DILocation(line: 602, column: 12, scope: !288)
!316 = !DILocation(line: 600, column: 10, scope: !288)
!317 = !DILocation(line: 600, column: 3, scope: !288)
!318 = !DILocation(line: 603, column: 2, scope: !289)
!319 = !DILocation(line: 604, column: 19, scope: !277)
!320 = !DILocation(line: 604, column: 25, scope: !277)
!321 = !DILocation(line: 604, column: 9, scope: !277)
!322 = !DILocation(line: 604, column: 2, scope: !277)
!323 = !DILocation(line: 605, column: 1, scope: !277)
!324 = distinct !DISubprogram(name: "start_bunzip", scope: !2, file: !2, line: 630, type: !325, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !328)
!325 = !DISubroutineType(types: !326)
!326 = !{!50, !327, !49, !66, !67}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337}
!329 = !DILocalVariable(name: "bdp", arg: 1, scope: !324, file: !2, line: 630, type: !327)
!330 = !DILocalVariable(name: "inbuf", arg: 2, scope: !324, file: !2, line: 630, type: !49)
!331 = !DILocalVariable(name: "len", arg: 3, scope: !324, file: !2, line: 630, type: !66)
!332 = !DILocalVariable(name: "fill", arg: 4, scope: !324, file: !2, line: 631, type: !67)
!333 = !DILocalVariable(name: "bd", scope: !324, file: !2, line: 633, type: !84)
!334 = !DILocalVariable(name: "i", scope: !324, file: !2, line: 634, type: !32)
!335 = !DILocalVariable(name: "j", scope: !324, file: !2, line: 634, type: !32)
!336 = !DILocalVariable(name: "c", scope: !324, file: !2, line: 634, type: !32)
!337 = !DILocalVariable(name: "BZh0", scope: !324, file: !2, line: 635, type: !338)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!339 = !DILocation(line: 630, column: 51, scope: !324)
!340 = !DILocation(line: 630, column: 62, scope: !324)
!341 = !DILocation(line: 630, column: 74, scope: !324)
!342 = !DILocation(line: 631, column: 16, scope: !324)
!343 = !DILocation(line: 633, column: 2, scope: !324)
!344 = !DILocation(line: 633, column: 22, scope: !324)
!345 = !DILocation(line: 634, column: 2, scope: !324)
!346 = !DILocation(line: 634, column: 15, scope: !324)
!347 = !DILocation(line: 634, column: 18, scope: !324)
!348 = !DILocation(line: 634, column: 21, scope: !324)
!349 = !DILocation(line: 635, column: 2, scope: !324)
!350 = !DILocation(line: 635, column: 21, scope: !324)
!351 = !DILocation(line: 640, column: 4, scope: !324)
!352 = !DILocation(line: 643, column: 14, scope: !324)
!353 = !DILocation(line: 643, column: 8, scope: !324)
!354 = !DILocation(line: 643, column: 12, scope: !324)
!355 = !DILocation(line: 643, column: 5, scope: !324)
!356 = !DILocation(line: 644, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !324, file: !2, line: 644, column: 6)
!358 = !DILocation(line: 644, column: 6, scope: !324)
!359 = !DILocation(line: 645, column: 3, scope: !357)
!360 = !DILocation(line: 646, column: 9, scope: !324)
!361 = !DILocation(line: 646, column: 2, scope: !324)
!362 = !DILocation(line: 648, column: 14, scope: !324)
!363 = !DILocation(line: 648, column: 2, scope: !324)
!364 = !DILocation(line: 648, column: 6, scope: !324)
!365 = !DILocation(line: 648, column: 12, scope: !324)
!366 = !DILocation(line: 649, column: 19, scope: !324)
!367 = !DILocation(line: 649, column: 2, scope: !324)
!368 = !DILocation(line: 649, column: 6, scope: !324)
!369 = !DILocation(line: 649, column: 17, scope: !324)
!370 = !DILocation(line: 650, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !324, file: !2, line: 650, column: 6)
!372 = !DILocation(line: 650, column: 11, scope: !371)
!373 = !DILocation(line: 650, column: 6, scope: !324)
!374 = !DILocation(line: 651, column: 14, scope: !371)
!375 = !DILocation(line: 651, column: 3, scope: !371)
!376 = !DILocation(line: 651, column: 7, scope: !371)
!377 = !DILocation(line: 651, column: 12, scope: !371)
!378 = !DILocation(line: 653, column: 3, scope: !371)
!379 = !DILocation(line: 653, column: 7, scope: !371)
!380 = !DILocation(line: 653, column: 12, scope: !371)
!381 = !DILocation(line: 656, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !324, file: !2, line: 656, column: 2)
!383 = !DILocation(line: 656, column: 7, scope: !382)
!384 = !DILocation(line: 656, column: 14, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !2, line: 656, column: 2)
!386 = !DILocation(line: 656, column: 16, scope: !385)
!387 = !DILocation(line: 656, column: 2, scope: !382)
!388 = !DILocation(line: 657, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !2, line: 656, column: 28)
!390 = !DILocation(line: 657, column: 9, scope: !389)
!391 = !DILocation(line: 657, column: 5, scope: !389)
!392 = !DILocation(line: 658, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !2, line: 658, column: 3)
!394 = !DILocation(line: 658, column: 8, scope: !393)
!395 = !DILocation(line: 658, column: 15, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !2, line: 658, column: 3)
!397 = !DILocation(line: 658, column: 3, scope: !393)
!398 = !DILocation(line: 659, column: 8, scope: !396)
!399 = !DILocation(line: 659, column: 9, scope: !396)
!400 = !DILocation(line: 659, column: 24, scope: !396)
!401 = !DILocation(line: 659, column: 26, scope: !396)
!402 = !DILocation(line: 659, column: 31, scope: !396)
!403 = !DILocation(line: 659, column: 51, scope: !396)
!404 = !DILocation(line: 659, column: 53, scope: !396)
!405 = !DILocation(line: 659, column: 6, scope: !396)
!406 = !DILocation(line: 659, column: 4, scope: !396)
!407 = !DILocation(line: 658, column: 19, scope: !396)
!408 = !DILocation(line: 658, column: 3, scope: !396)
!409 = distinct !{!409, !397, !410, !411, !222}
!410 = !DILocation(line: 659, column: 57, scope: !393)
!411 = !{!"llvm.loop.mustprogress"}
!412 = !DILocation(line: 660, column: 23, scope: !389)
!413 = !DILocation(line: 660, column: 3, scope: !389)
!414 = !DILocation(line: 660, column: 7, scope: !389)
!415 = !DILocation(line: 660, column: 18, scope: !389)
!416 = !DILocation(line: 660, column: 21, scope: !389)
!417 = !DILocation(line: 661, column: 2, scope: !389)
!418 = !DILocation(line: 656, column: 24, scope: !385)
!419 = !DILocation(line: 656, column: 2, scope: !385)
!420 = distinct !{!420, !387, !421, !411, !222}
!421 = !DILocation(line: 661, column: 2, scope: !382)
!422 = !DILocation(line: 664, column: 15, scope: !324)
!423 = !DILocation(line: 664, column: 6, scope: !324)
!424 = !DILocation(line: 664, column: 4, scope: !324)
!425 = !DILocation(line: 665, column: 22, scope: !426)
!426 = distinct !DILexicalBlock(scope: !324, file: !2, line: 665, column: 6)
!427 = !DILocation(line: 665, column: 23, scope: !426)
!428 = !DILocation(line: 665, column: 28, scope: !426)
!429 = !DILocation(line: 665, column: 33, scope: !426)
!430 = !DILocation(line: 665, column: 6, scope: !324)
!431 = !DILocation(line: 666, column: 3, scope: !426)
!432 = !DILocation(line: 670, column: 25, scope: !324)
!433 = !DILocation(line: 670, column: 26, scope: !324)
!434 = !DILocation(line: 670, column: 23, scope: !324)
!435 = !DILocation(line: 670, column: 2, scope: !324)
!436 = !DILocation(line: 670, column: 6, scope: !324)
!437 = !DILocation(line: 670, column: 15, scope: !324)
!438 = !DILocation(line: 672, column: 13, scope: !324)
!439 = !DILocation(line: 672, column: 2, scope: !324)
!440 = !DILocation(line: 672, column: 6, scope: !324)
!441 = !DILocation(line: 672, column: 11, scope: !324)
!442 = !DILocation(line: 673, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !324, file: !2, line: 673, column: 6)
!444 = !DILocation(line: 673, column: 11, scope: !443)
!445 = !DILocation(line: 673, column: 6, scope: !324)
!446 = !DILocation(line: 674, column: 3, scope: !443)
!447 = !DILocation(line: 675, column: 2, scope: !324)
!448 = !DILocation(line: 676, column: 1, scope: !324)
!449 = distinct !DISubprogram(name: "read_bunzip", scope: !2, file: !2, line: 524, type: !450, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!50, !84, !74, !50}
!452 = !{!453, !454, !455, !456, !458, !459, !460, !461, !462}
!453 = !DILocalVariable(name: "bd", arg: 1, scope: !449, file: !2, line: 524, type: !84)
!454 = !DILocalVariable(name: "outbuf", arg: 2, scope: !449, file: !2, line: 524, type: !74)
!455 = !DILocalVariable(name: "len", arg: 3, scope: !449, file: !2, line: 524, type: !50)
!456 = !DILocalVariable(name: "dbuf", scope: !449, file: !2, line: 526, type: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!458 = !DILocalVariable(name: "pos", scope: !449, file: !2, line: 527, type: !50)
!459 = !DILocalVariable(name: "xcurrent", scope: !449, file: !2, line: 527, type: !50)
!460 = !DILocalVariable(name: "previous", scope: !449, file: !2, line: 527, type: !50)
!461 = !DILocalVariable(name: "gotcount", scope: !449, file: !2, line: 527, type: !50)
!462 = !DILabel(scope: !463, name: "decode_next_byte", file: !2, line: 566)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 546, column: 12)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 546, column: 3)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 546, column: 3)
!466 = distinct !DILexicalBlock(scope: !467, file: !2, line: 542, column: 23)
!467 = distinct !DILexicalBlock(scope: !449, file: !2, line: 542, column: 6)
!468 = !DILocation(line: 524, column: 49, scope: !449)
!469 = !DILocation(line: 524, column: 59, scope: !449)
!470 = !DILocation(line: 524, column: 71, scope: !449)
!471 = !DILocation(line: 526, column: 2, scope: !449)
!472 = !DILocation(line: 526, column: 22, scope: !449)
!473 = !DILocation(line: 527, column: 2, scope: !449)
!474 = !DILocation(line: 527, column: 6, scope: !449)
!475 = !DILocation(line: 527, column: 11, scope: !449)
!476 = !DILocation(line: 527, column: 21, scope: !449)
!477 = !DILocation(line: 527, column: 31, scope: !449)
!478 = !DILocation(line: 530, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !449, file: !2, line: 530, column: 6)
!480 = !DILocation(line: 530, column: 10, scope: !479)
!481 = !DILocation(line: 530, column: 21, scope: !479)
!482 = !DILocation(line: 530, column: 6, scope: !449)
!483 = !DILocation(line: 531, column: 10, scope: !479)
!484 = !DILocation(line: 531, column: 14, scope: !479)
!485 = !DILocation(line: 531, column: 3, scope: !479)
!486 = !DILocation(line: 533, column: 11, scope: !449)
!487 = !DILocation(line: 534, column: 9, scope: !449)
!488 = !DILocation(line: 534, column: 13, scope: !449)
!489 = !DILocation(line: 534, column: 7, scope: !449)
!490 = !DILocation(line: 535, column: 8, scope: !449)
!491 = !DILocation(line: 535, column: 12, scope: !449)
!492 = !DILocation(line: 535, column: 6, scope: !449)
!493 = !DILocation(line: 536, column: 13, scope: !449)
!494 = !DILocation(line: 536, column: 17, scope: !449)
!495 = !DILocation(line: 536, column: 11, scope: !449)
!496 = !DILocation(line: 542, column: 6, scope: !467)
!497 = !DILocation(line: 542, column: 10, scope: !467)
!498 = !DILocation(line: 542, column: 6, scope: !449)
!499 = !DILocation(line: 544, column: 5, scope: !466)
!500 = !DILocation(line: 544, column: 9, scope: !466)
!501 = !DILocation(line: 544, column: 3, scope: !466)
!502 = !DILocation(line: 546, column: 3, scope: !466)
!503 = !DILocation(line: 549, column: 8, scope: !504)
!504 = distinct !DILexicalBlock(scope: !463, file: !2, line: 549, column: 8)
!505 = !DILocation(line: 549, column: 20, scope: !504)
!506 = !DILocation(line: 549, column: 17, scope: !504)
!507 = !DILocation(line: 549, column: 8, scope: !463)
!508 = !DILocation(line: 550, column: 20, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !2, line: 549, column: 25)
!510 = !DILocation(line: 550, column: 5, scope: !509)
!511 = !DILocation(line: 550, column: 9, scope: !509)
!512 = !DILocation(line: 550, column: 18, scope: !509)
!513 = !DILocation(line: 551, column: 24, scope: !509)
!514 = !DILocation(line: 551, column: 5, scope: !509)
!515 = !DILocation(line: 551, column: 9, scope: !509)
!516 = !DILocation(line: 551, column: 22, scope: !509)
!517 = !DILocation(line: 552, column: 5, scope: !509)
!518 = !DILocation(line: 552, column: 9, scope: !509)
!519 = !DILocation(line: 552, column: 20, scope: !509)
!520 = !DILocation(line: 553, column: 12, scope: !509)
!521 = !DILocation(line: 553, column: 5, scope: !509)
!522 = !DILocation(line: 556, column: 25, scope: !463)
!523 = !DILocation(line: 556, column: 4, scope: !463)
!524 = !DILocation(line: 556, column: 19, scope: !463)
!525 = !DILocation(line: 556, column: 23, scope: !463)
!526 = !DILocation(line: 557, column: 22, scope: !463)
!527 = !DILocation(line: 557, column: 26, scope: !463)
!528 = !DILocation(line: 557, column: 36, scope: !463)
!529 = !DILocation(line: 558, column: 6, scope: !463)
!530 = !DILocation(line: 558, column: 10, scope: !463)
!531 = !DILocation(line: 558, column: 23, scope: !463)
!532 = !DILocation(line: 558, column: 27, scope: !463)
!533 = !DILocation(line: 558, column: 37, scope: !463)
!534 = !DILocation(line: 559, column: 6, scope: !463)
!535 = !DILocation(line: 559, column: 5, scope: !463)
!536 = !DILocation(line: 558, column: 5, scope: !463)
!537 = !DILocation(line: 557, column: 4, scope: !463)
!538 = !DILocation(line: 557, column: 8, scope: !463)
!539 = !DILocation(line: 557, column: 17, scope: !463)
!540 = !DILocation(line: 562, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !463, file: !2, line: 562, column: 8)
!542 = !DILocation(line: 562, column: 12, scope: !541)
!543 = !DILocation(line: 562, column: 8, scope: !463)
!544 = !DILocation(line: 563, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 562, column: 25)
!546 = !DILocation(line: 563, column: 11, scope: !545)
!547 = !DILocation(line: 563, column: 5, scope: !545)
!548 = !DILocation(line: 564, column: 5, scope: !545)
!549 = distinct !{!549, !550, !551, !222}
!550 = !DILocation(line: 546, column: 3, scope: !465)
!551 = !DILocation(line: 596, column: 3, scope: !465)
!552 = !DILocation(line: 566, column: 1, scope: !463)
!553 = !DILocation(line: 567, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !463, file: !2, line: 567, column: 8)
!555 = !DILocation(line: 567, column: 13, scope: !554)
!556 = !DILocation(line: 567, column: 23, scope: !554)
!557 = !DILocation(line: 567, column: 8, scope: !463)
!558 = !DILocation(line: 568, column: 5, scope: !554)
!559 = !DILocation(line: 571, column: 15, scope: !463)
!560 = !DILocation(line: 571, column: 13, scope: !463)
!561 = !DILocation(line: 572, column: 10, scope: !463)
!562 = !DILocation(line: 572, column: 15, scope: !463)
!563 = !DILocation(line: 572, column: 8, scope: !463)
!564 = !DILocation(line: 573, column: 15, scope: !463)
!565 = !DILocation(line: 573, column: 18, scope: !463)
!566 = !DILocation(line: 573, column: 13, scope: !463)
!567 = !DILocation(line: 574, column: 8, scope: !463)
!568 = !DILocation(line: 579, column: 10, scope: !569)
!569 = distinct !DILexicalBlock(scope: !463, file: !2, line: 579, column: 8)
!570 = !DILocation(line: 579, column: 14, scope: !569)
!571 = !DILocation(line: 579, column: 8, scope: !569)
!572 = !DILocation(line: 579, column: 8, scope: !463)
!573 = !DILocation(line: 580, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 580, column: 9)
!575 = distinct !DILexicalBlock(scope: !569, file: !2, line: 579, column: 33)
!576 = !DILocation(line: 580, column: 21, scope: !574)
!577 = !DILocation(line: 580, column: 18, scope: !574)
!578 = !DILocation(line: 580, column: 9, scope: !575)
!579 = !DILocation(line: 581, column: 6, scope: !574)
!580 = !DILocation(line: 581, column: 10, scope: !574)
!581 = !DILocation(line: 581, column: 28, scope: !574)
!582 = !DILocation(line: 582, column: 4, scope: !575)
!583 = !DILocation(line: 585, column: 23, scope: !584)
!584 = distinct !DILexicalBlock(scope: !569, file: !2, line: 582, column: 11)
!585 = !DILocation(line: 585, column: 5, scope: !584)
!586 = !DILocation(line: 585, column: 9, scope: !584)
!587 = !DILocation(line: 585, column: 21, scope: !584)
!588 = !DILocation(line: 586, column: 16, scope: !584)
!589 = !DILocation(line: 586, column: 14, scope: !584)
!590 = !DILocation(line: 587, column: 5, scope: !584)
!591 = !DILocation(line: 587, column: 9, scope: !584)
!592 = !DILocation(line: 587, column: 27, scope: !584)
!593 = !DILocation(line: 590, column: 10, scope: !594)
!594 = distinct !DILexicalBlock(scope: !584, file: !2, line: 590, column: 9)
!595 = !DILocation(line: 590, column: 14, scope: !594)
!596 = !DILocation(line: 590, column: 9, scope: !584)
!597 = !DILocation(line: 591, column: 6, scope: !594)
!598 = !DILocation(line: 594, column: 7, scope: !584)
!599 = !DILocation(line: 594, column: 11, scope: !584)
!600 = !DILocation(line: 594, column: 5, scope: !584)
!601 = !DILocation(line: 546, column: 3, scope: !464)
!602 = !DILocation(line: 598, column: 19, scope: !466)
!603 = !DILocation(line: 598, column: 23, scope: !466)
!604 = !DILocation(line: 598, column: 18, scope: !466)
!605 = !DILocation(line: 598, column: 3, scope: !466)
!606 = !DILocation(line: 598, column: 7, scope: !466)
!607 = !DILocation(line: 598, column: 16, scope: !466)
!608 = !DILocation(line: 599, column: 20, scope: !466)
!609 = !DILocation(line: 599, column: 24, scope: !466)
!610 = !DILocation(line: 599, column: 33, scope: !466)
!611 = !DILocation(line: 600, column: 6, scope: !466)
!612 = !DILocation(line: 600, column: 10, scope: !466)
!613 = !DILocation(line: 600, column: 19, scope: !466)
!614 = !DILocation(line: 599, column: 39, scope: !466)
!615 = !DILocation(line: 600, column: 29, scope: !466)
!616 = !DILocation(line: 600, column: 33, scope: !466)
!617 = !DILocation(line: 600, column: 27, scope: !466)
!618 = !DILocation(line: 599, column: 3, scope: !466)
!619 = !DILocation(line: 599, column: 7, scope: !466)
!620 = !DILocation(line: 599, column: 16, scope: !466)
!621 = !DILocation(line: 602, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !466, file: !2, line: 602, column: 7)
!623 = !DILocation(line: 602, column: 11, scope: !622)
!624 = !DILocation(line: 602, column: 23, scope: !622)
!625 = !DILocation(line: 602, column: 27, scope: !622)
!626 = !DILocation(line: 602, column: 20, scope: !622)
!627 = !DILocation(line: 602, column: 7, scope: !466)
!628 = !DILocation(line: 603, column: 19, scope: !629)
!629 = distinct !DILexicalBlock(scope: !622, file: !2, line: 602, column: 38)
!630 = !DILocation(line: 603, column: 23, scope: !629)
!631 = !DILocation(line: 603, column: 32, scope: !629)
!632 = !DILocation(line: 603, column: 4, scope: !629)
!633 = !DILocation(line: 603, column: 8, scope: !629)
!634 = !DILocation(line: 603, column: 17, scope: !629)
!635 = !DILocation(line: 604, column: 4, scope: !629)
!636 = !DILocation(line: 606, column: 2, scope: !466)
!637 = !DILocation(line: 611, column: 28, scope: !449)
!638 = !DILocation(line: 611, column: 13, scope: !449)
!639 = !DILocation(line: 611, column: 11, scope: !449)
!640 = !DILocation(line: 612, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !449, file: !2, line: 612, column: 6)
!642 = !DILocation(line: 612, column: 6, scope: !449)
!643 = !DILocation(line: 613, column: 20, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !2, line: 612, column: 16)
!645 = !DILocation(line: 613, column: 3, scope: !644)
!646 = !DILocation(line: 613, column: 7, scope: !644)
!647 = !DILocation(line: 613, column: 18, scope: !644)
!648 = !DILocation(line: 614, column: 11, scope: !644)
!649 = !DILocation(line: 614, column: 20, scope: !644)
!650 = !DILocation(line: 614, column: 10, scope: !644)
!651 = !DILocation(line: 614, column: 44, scope: !644)
!652 = !DILocation(line: 614, column: 55, scope: !644)
!653 = !DILocation(line: 614, column: 3, scope: !644)
!654 = !DILocation(line: 616, column: 2, scope: !449)
!655 = !DILocation(line: 616, column: 6, scope: !449)
!656 = !DILocation(line: 616, column: 15, scope: !449)
!657 = !DILocation(line: 617, column: 8, scope: !449)
!658 = !DILocation(line: 617, column: 12, scope: !449)
!659 = !DILocation(line: 617, column: 6, scope: !449)
!660 = !DILocation(line: 618, column: 13, scope: !449)
!661 = !DILocation(line: 618, column: 17, scope: !449)
!662 = !DILocation(line: 618, column: 11, scope: !449)
!663 = !DILocation(line: 619, column: 2, scope: !449)
!664 = !DILocation(line: 620, column: 1, scope: !449)
!665 = !DISubprogram(name: "vfree", scope: !666, file: !666, line: 161, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!667 = !DISubroutineType(types: !668)
!668 = !{null, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!671 = !DISubprogram(name: "kfree", scope: !24, file: !24, line: 227, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 531, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = distinct !DISubprogram(name: "__kmalloc_index", scope: !24, file: !24, line: 444, type: !674, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !678)
!674 = !DISubroutineType(types: !675)
!675 = !{!32, !280, !676}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !47, line: 35, baseType: !677)
!677 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!678 = !{!679, !680}
!679 = !DILocalVariable(name: "size", arg: 1, scope: !673, file: !24, line: 444, type: !280)
!680 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !673, file: !24, line: 445, type: !676)
!681 = !DILocation(line: 444, column: 60, scope: !673)
!682 = !DILocation(line: 445, column: 16, scope: !673)
!683 = !DILocation(line: 447, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !673, file: !24, line: 447, column: 6)
!685 = !DILocation(line: 447, column: 6, scope: !673)
!686 = !DILocation(line: 448, column: 3, scope: !684)
!687 = !DILocation(line: 450, column: 6, scope: !688)
!688 = distinct !DILexicalBlock(scope: !673, file: !24, line: 450, column: 6)
!689 = !DILocation(line: 450, column: 11, scope: !688)
!690 = !DILocation(line: 450, column: 6, scope: !673)
!691 = !DILocation(line: 451, column: 3, scope: !688)
!692 = !DILocation(line: 453, column: 32, scope: !693)
!693 = distinct !DILexicalBlock(scope: !673, file: !24, line: 453, column: 6)
!694 = !DILocation(line: 453, column: 37, scope: !693)
!695 = !DILocation(line: 453, column: 42, scope: !693)
!696 = !DILocation(line: 453, column: 45, scope: !693)
!697 = !DILocation(line: 453, column: 50, scope: !693)
!698 = !DILocation(line: 453, column: 6, scope: !673)
!699 = !DILocation(line: 454, column: 3, scope: !693)
!700 = !DILocation(line: 455, column: 32, scope: !701)
!701 = distinct !DILexicalBlock(scope: !673, file: !24, line: 455, column: 6)
!702 = !DILocation(line: 455, column: 37, scope: !701)
!703 = !DILocation(line: 455, column: 43, scope: !701)
!704 = !DILocation(line: 455, column: 46, scope: !701)
!705 = !DILocation(line: 455, column: 51, scope: !701)
!706 = !DILocation(line: 455, column: 6, scope: !673)
!707 = !DILocation(line: 456, column: 3, scope: !701)
!708 = !DILocation(line: 457, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !673, file: !24, line: 457, column: 6)
!710 = !DILocation(line: 457, column: 11, scope: !709)
!711 = !DILocation(line: 457, column: 6, scope: !673)
!712 = !DILocation(line: 457, column: 26, scope: !709)
!713 = !DILocation(line: 458, column: 6, scope: !714)
!714 = distinct !DILexicalBlock(scope: !673, file: !24, line: 458, column: 6)
!715 = !DILocation(line: 458, column: 11, scope: !714)
!716 = !DILocation(line: 458, column: 6, scope: !673)
!717 = !DILocation(line: 458, column: 26, scope: !714)
!718 = !DILocation(line: 459, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !673, file: !24, line: 459, column: 6)
!720 = !DILocation(line: 459, column: 11, scope: !719)
!721 = !DILocation(line: 459, column: 6, scope: !673)
!722 = !DILocation(line: 459, column: 26, scope: !719)
!723 = !DILocation(line: 460, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !673, file: !24, line: 460, column: 6)
!725 = !DILocation(line: 460, column: 11, scope: !724)
!726 = !DILocation(line: 460, column: 6, scope: !673)
!727 = !DILocation(line: 460, column: 26, scope: !724)
!728 = !DILocation(line: 461, column: 6, scope: !729)
!729 = distinct !DILexicalBlock(scope: !673, file: !24, line: 461, column: 6)
!730 = !DILocation(line: 461, column: 11, scope: !729)
!731 = !DILocation(line: 461, column: 6, scope: !673)
!732 = !DILocation(line: 461, column: 26, scope: !729)
!733 = !DILocation(line: 462, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !673, file: !24, line: 462, column: 6)
!735 = !DILocation(line: 462, column: 11, scope: !734)
!736 = !DILocation(line: 462, column: 6, scope: !673)
!737 = !DILocation(line: 462, column: 26, scope: !734)
!738 = !DILocation(line: 463, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !673, file: !24, line: 463, column: 6)
!740 = !DILocation(line: 463, column: 11, scope: !739)
!741 = !DILocation(line: 463, column: 6, scope: !673)
!742 = !DILocation(line: 463, column: 26, scope: !739)
!743 = !DILocation(line: 464, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !673, file: !24, line: 464, column: 6)
!745 = !DILocation(line: 464, column: 11, scope: !744)
!746 = !DILocation(line: 464, column: 6, scope: !673)
!747 = !DILocation(line: 464, column: 26, scope: !744)
!748 = !DILocation(line: 465, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !673, file: !24, line: 465, column: 6)
!750 = !DILocation(line: 465, column: 11, scope: !749)
!751 = !DILocation(line: 465, column: 6, scope: !673)
!752 = !DILocation(line: 465, column: 26, scope: !749)
!753 = !DILocation(line: 466, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !673, file: !24, line: 466, column: 6)
!755 = !DILocation(line: 466, column: 11, scope: !754)
!756 = !DILocation(line: 466, column: 6, scope: !673)
!757 = !DILocation(line: 466, column: 26, scope: !754)
!758 = !DILocation(line: 467, column: 6, scope: !759)
!759 = distinct !DILexicalBlock(scope: !673, file: !24, line: 467, column: 6)
!760 = !DILocation(line: 467, column: 11, scope: !759)
!761 = !DILocation(line: 467, column: 6, scope: !673)
!762 = !DILocation(line: 467, column: 26, scope: !759)
!763 = !DILocation(line: 468, column: 6, scope: !764)
!764 = distinct !DILexicalBlock(scope: !673, file: !24, line: 468, column: 6)
!765 = !DILocation(line: 468, column: 11, scope: !764)
!766 = !DILocation(line: 468, column: 6, scope: !673)
!767 = !DILocation(line: 468, column: 26, scope: !764)
!768 = !DILocation(line: 469, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !673, file: !24, line: 469, column: 6)
!770 = !DILocation(line: 469, column: 11, scope: !769)
!771 = !DILocation(line: 469, column: 6, scope: !673)
!772 = !DILocation(line: 469, column: 26, scope: !769)
!773 = !DILocation(line: 470, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !673, file: !24, line: 470, column: 6)
!775 = !DILocation(line: 470, column: 11, scope: !774)
!776 = !DILocation(line: 470, column: 6, scope: !673)
!777 = !DILocation(line: 470, column: 26, scope: !774)
!778 = !DILocation(line: 471, column: 6, scope: !779)
!779 = distinct !DILexicalBlock(scope: !673, file: !24, line: 471, column: 6)
!780 = !DILocation(line: 471, column: 11, scope: !779)
!781 = !DILocation(line: 471, column: 6, scope: !673)
!782 = !DILocation(line: 471, column: 26, scope: !779)
!783 = !DILocation(line: 472, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !673, file: !24, line: 472, column: 6)
!785 = !DILocation(line: 472, column: 11, scope: !784)
!786 = !DILocation(line: 472, column: 6, scope: !673)
!787 = !DILocation(line: 472, column: 26, scope: !784)
!788 = !DILocation(line: 473, column: 6, scope: !789)
!789 = distinct !DILexicalBlock(scope: !673, file: !24, line: 473, column: 6)
!790 = !DILocation(line: 473, column: 11, scope: !789)
!791 = !DILocation(line: 473, column: 6, scope: !673)
!792 = !DILocation(line: 473, column: 26, scope: !789)
!793 = !DILocation(line: 474, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !673, file: !24, line: 474, column: 6)
!795 = !DILocation(line: 474, column: 11, scope: !794)
!796 = !DILocation(line: 474, column: 6, scope: !673)
!797 = !DILocation(line: 474, column: 27, scope: !794)
!798 = !DILocation(line: 475, column: 6, scope: !799)
!799 = distinct !DILexicalBlock(scope: !673, file: !24, line: 475, column: 6)
!800 = !DILocation(line: 475, column: 11, scope: !799)
!801 = !DILocation(line: 475, column: 6, scope: !673)
!802 = !DILocation(line: 475, column: 32, scope: !799)
!803 = !DILocation(line: 477, column: 50, scope: !804)
!804 = distinct !DILexicalBlock(scope: !673, file: !24, line: 477, column: 6)
!805 = !{i8 0, i8 2}
!806 = !{}
!807 = !DILocation(line: 477, column: 6, scope: !673)
!808 = !DILocation(line: 478, column: 3, scope: !804)
!809 = !DILocation(line: 478, column: 3, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !24, line: 478, column: 3)
!811 = distinct !DILexicalBlock(scope: !804, file: !24, line: 478, column: 3)
!812 = !{i32 -2141698636}
!813 = !DILocation(line: 478, column: 3, scope: !811)
!814 = !DILocation(line: 480, column: 3, scope: !804)
!815 = !DILocation(line: 480, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !804, file: !24, line: 480, column: 3)
!817 = !DILocation(line: 480, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !816, file: !24, line: 480, column: 3)
!819 = !DILocation(line: 480, column: 3, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !24, line: 480, column: 3)
!821 = !{i64 2153268863, i64 2153268892, i64 2153268938, i64 2153268996, i64 2153269050, i64 2153269104, i64 2153269159, i64 2153269190}
!822 = !DILocation(line: 483, column: 2, scope: !673)
!823 = !DILocation(line: 484, column: 1, scope: !673)
!824 = !DISubprogram(name: "kmalloc_trace", scope: !24, file: !24, line: 525, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!825 = !DISubroutineType(types: !826)
!826 = !{!49, !827, !46, !280}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !829, line: 325, flags: DIFlagFwdDecl)
!829 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!830 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 401, type: !831, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!36, !46, !48}
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "flags", arg: 1, scope: !830, file: !24, line: 401, type: !46)
!835 = !DILocalVariable(name: "caller", arg: 2, scope: !830, file: !24, line: 401, type: !48)
!836 = !DILocation(line: 401, column: 67, scope: !830)
!837 = !DILocation(line: 401, column: 88, scope: !830)
!838 = !DILocation(line: 407, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !830, file: !24, line: 407, column: 6)
!840 = !DILocation(line: 407, column: 6, scope: !830)
!841 = !DILocation(line: 413, column: 3, scope: !839)
!842 = !DILocation(line: 423, column: 38, scope: !843)
!843 = distinct !DILexicalBlock(scope: !830, file: !24, line: 423, column: 6)
!844 = !DILocation(line: 423, column: 44, scope: !843)
!845 = !DILocation(line: 423, column: 6, scope: !830)
!846 = !DILocation(line: 424, column: 3, scope: !843)
!847 = !DILocation(line: 426, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !830, file: !24, line: 425, column: 6)
!849 = !DILocation(line: 429, column: 1, scope: !830)
!850 = !DISubprogram(name: "__kmalloc", scope: !24, file: !24, line: 488, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DISubprogram(name: "__compiletime_assert_245", scope: !24, file: !24, line: 478, type: !852, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!852 = !DISubroutineType(types: !853)
!853 = !{null}
!854 = distinct !DISubprogram(name: "nofill", scope: !2, file: !2, line: 622, type: !68, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !855)
!855 = !{!856, !857}
!856 = !DILocalVariable(name: "buf", arg: 1, scope: !854, file: !2, line: 622, type: !49)
!857 = !DILocalVariable(name: "len", arg: 2, scope: !854, file: !2, line: 622, type: !48)
!858 = !DILocation(line: 622, column: 31, scope: !854)
!859 = !DILocation(line: 622, column: 50, scope: !854)
!860 = !DILocation(line: 624, column: 2, scope: !854)
!861 = distinct !DISubprogram(name: "get_bits", scope: !2, file: !2, line: 116, type: !862, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!32, !84, !4}
!864 = !{!865, !866, !867}
!865 = !DILocalVariable(name: "bd", arg: 1, scope: !861, file: !2, line: 116, type: !84)
!866 = !DILocalVariable(name: "bits_wanted", arg: 2, scope: !861, file: !2, line: 116, type: !4)
!867 = !DILocalVariable(name: "bits", scope: !861, file: !2, line: 118, type: !32)
!868 = !DILocation(line: 116, column: 55, scope: !861)
!869 = !DILocation(line: 116, column: 64, scope: !861)
!870 = !DILocation(line: 118, column: 2, scope: !861)
!871 = !DILocation(line: 118, column: 15, scope: !861)
!872 = !DILocation(line: 123, column: 2, scope: !861)
!873 = !DILocation(line: 123, column: 9, scope: !861)
!874 = !DILocation(line: 123, column: 13, scope: !861)
!875 = !DILocation(line: 123, column: 29, scope: !861)
!876 = !DILocation(line: 123, column: 27, scope: !861)
!877 = !DILocation(line: 126, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 126, column: 7)
!879 = distinct !DILexicalBlock(scope: !861, file: !2, line: 123, column: 42)
!880 = !DILocation(line: 126, column: 11, scope: !878)
!881 = !DILocation(line: 126, column: 23, scope: !878)
!882 = !DILocation(line: 126, column: 27, scope: !878)
!883 = !DILocation(line: 126, column: 20, scope: !878)
!884 = !DILocation(line: 126, column: 7, scope: !879)
!885 = !DILocation(line: 127, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 127, column: 8)
!887 = distinct !DILexicalBlock(scope: !878, file: !2, line: 126, column: 39)
!888 = !DILocation(line: 127, column: 12, scope: !886)
!889 = !DILocation(line: 127, column: 8, scope: !887)
!890 = !DILocation(line: 128, column: 5, scope: !886)
!891 = !DILocation(line: 129, column: 21, scope: !887)
!892 = !DILocation(line: 129, column: 25, scope: !887)
!893 = !DILocation(line: 129, column: 30, scope: !887)
!894 = !DILocation(line: 129, column: 34, scope: !887)
!895 = !DILocation(line: 129, column: 4, scope: !887)
!896 = !DILocation(line: 129, column: 8, scope: !887)
!897 = !DILocation(line: 129, column: 19, scope: !887)
!898 = !DILocation(line: 130, column: 8, scope: !899)
!899 = distinct !DILexicalBlock(scope: !887, file: !2, line: 130, column: 8)
!900 = !DILocation(line: 130, column: 12, scope: !899)
!901 = !DILocation(line: 130, column: 23, scope: !899)
!902 = !DILocation(line: 130, column: 8, scope: !887)
!903 = !DILocation(line: 131, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !2, line: 130, column: 29)
!905 = !DILocation(line: 131, column: 9, scope: !904)
!906 = !DILocation(line: 131, column: 18, scope: !904)
!907 = !DILocation(line: 132, column: 5, scope: !904)
!908 = !DILocation(line: 134, column: 4, scope: !887)
!909 = !DILocation(line: 134, column: 8, scope: !887)
!910 = !DILocation(line: 134, column: 17, scope: !887)
!911 = !DILocation(line: 135, column: 3, scope: !887)
!912 = !DILocation(line: 137, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !879, file: !2, line: 137, column: 7)
!914 = !DILocation(line: 137, column: 11, scope: !913)
!915 = !DILocation(line: 137, column: 25, scope: !913)
!916 = !DILocation(line: 137, column: 7, scope: !879)
!917 = !DILocation(line: 138, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !2, line: 137, column: 32)
!919 = !DILocation(line: 138, column: 15, scope: !918)
!920 = !DILocation(line: 138, column: 32, scope: !918)
!921 = !DILocation(line: 138, column: 36, scope: !918)
!922 = !DILocation(line: 138, column: 29, scope: !918)
!923 = !DILocation(line: 138, column: 50, scope: !918)
!924 = !DILocation(line: 138, column: 24, scope: !918)
!925 = !DILocation(line: 138, column: 9, scope: !918)
!926 = !DILocation(line: 139, column: 19, scope: !918)
!927 = !DILocation(line: 139, column: 23, scope: !918)
!928 = !DILocation(line: 139, column: 16, scope: !918)
!929 = !DILocation(line: 140, column: 13, scope: !918)
!930 = !DILocation(line: 140, column: 9, scope: !918)
!931 = !DILocation(line: 141, column: 4, scope: !918)
!932 = !DILocation(line: 141, column: 8, scope: !918)
!933 = !DILocation(line: 141, column: 22, scope: !918)
!934 = !DILocation(line: 142, column: 3, scope: !918)
!935 = !DILocation(line: 144, column: 20, scope: !879)
!936 = !DILocation(line: 144, column: 24, scope: !879)
!937 = !DILocation(line: 144, column: 34, scope: !879)
!938 = !DILocation(line: 144, column: 40, scope: !879)
!939 = !DILocation(line: 144, column: 44, scope: !879)
!940 = !DILocation(line: 144, column: 50, scope: !879)
!941 = !DILocation(line: 144, column: 54, scope: !879)
!942 = !DILocation(line: 144, column: 62, scope: !879)
!943 = !DILocation(line: 144, column: 39, scope: !879)
!944 = !DILocation(line: 144, column: 3, scope: !879)
!945 = !DILocation(line: 144, column: 7, scope: !879)
!946 = !DILocation(line: 144, column: 17, scope: !879)
!947 = !DILocation(line: 145, column: 3, scope: !879)
!948 = !DILocation(line: 145, column: 7, scope: !879)
!949 = !DILocation(line: 145, column: 21, scope: !879)
!950 = distinct !{!950, !872, !951, !411, !222}
!951 = !DILocation(line: 146, column: 2, scope: !861)
!952 = !DILocation(line: 148, column: 23, scope: !861)
!953 = !DILocation(line: 148, column: 2, scope: !861)
!954 = !DILocation(line: 148, column: 6, scope: !861)
!955 = !DILocation(line: 148, column: 20, scope: !861)
!956 = !DILocation(line: 149, column: 11, scope: !861)
!957 = !DILocation(line: 149, column: 15, scope: !861)
!958 = !DILocation(line: 149, column: 28, scope: !861)
!959 = !DILocation(line: 149, column: 32, scope: !861)
!960 = !DILocation(line: 149, column: 25, scope: !861)
!961 = !DILocation(line: 149, column: 54, scope: !861)
!962 = !DILocation(line: 149, column: 51, scope: !861)
!963 = !DILocation(line: 149, column: 66, scope: !861)
!964 = !DILocation(line: 149, column: 46, scope: !861)
!965 = !DILocation(line: 149, column: 7, scope: !861)
!966 = !DILocation(line: 151, column: 9, scope: !861)
!967 = !DILocation(line: 151, column: 2, scope: !861)
!968 = !DILocation(line: 152, column: 1, scope: !861)
!969 = !DISubprogram(name: "vmalloc", scope: !666, file: !666, line: 140, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!49, !48}
!972 = distinct !DISubprogram(name: "get_next_block", scope: !2, file: !2, line: 156, type: !973, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!50, !84}
!975 = !{!976, !977, !979, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1007, !1010, !1011, !1012, !1013}
!976 = !DILocalVariable(name: "bd", arg: 1, scope: !972, file: !2, line: 156, type: !84)
!977 = !DILocalVariable(name: "hufGroup", scope: !972, file: !2, line: 158, type: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!979 = !DILocalVariable(name: "base", scope: !972, file: !2, line: 159, type: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!981 = !DILocalVariable(name: "limit", scope: !972, file: !2, line: 160, type: !980)
!982 = !DILocalVariable(name: "dbufCount", scope: !972, file: !2, line: 161, type: !50)
!983 = !DILocalVariable(name: "nextSym", scope: !972, file: !2, line: 161, type: !50)
!984 = !DILocalVariable(name: "dbufSize", scope: !972, file: !2, line: 161, type: !50)
!985 = !DILocalVariable(name: "groupCount", scope: !972, file: !2, line: 161, type: !50)
!986 = !DILocalVariable(name: "selector", scope: !972, file: !2, line: 161, type: !50)
!987 = !DILocalVariable(name: "i", scope: !972, file: !2, line: 162, type: !50)
!988 = !DILocalVariable(name: "j", scope: !972, file: !2, line: 162, type: !50)
!989 = !DILocalVariable(name: "k", scope: !972, file: !2, line: 162, type: !50)
!990 = !DILocalVariable(name: "t", scope: !972, file: !2, line: 162, type: !50)
!991 = !DILocalVariable(name: "runPos", scope: !972, file: !2, line: 162, type: !50)
!992 = !DILocalVariable(name: "symCount", scope: !972, file: !2, line: 162, type: !50)
!993 = !DILocalVariable(name: "symTotal", scope: !972, file: !2, line: 162, type: !50)
!994 = !DILocalVariable(name: "nSelectors", scope: !972, file: !2, line: 162, type: !50)
!995 = !DILocalVariable(name: "byteCount", scope: !972, file: !2, line: 162, type: !980)
!996 = !DILocalVariable(name: "uc", scope: !972, file: !2, line: 163, type: !51)
!997 = !DILocalVariable(name: "symToByte", scope: !972, file: !2, line: 163, type: !65)
!998 = !DILocalVariable(name: "mtfSymbol", scope: !972, file: !2, line: 163, type: !65)
!999 = !DILocalVariable(name: "selectors", scope: !972, file: !2, line: 163, type: !65)
!1000 = !DILocalVariable(name: "dbuf", scope: !972, file: !2, line: 164, type: !106)
!1001 = !DILocalVariable(name: "origPtr", scope: !972, file: !2, line: 164, type: !32)
!1002 = !DILocalVariable(name: "length", scope: !1003, file: !2, line: 235, type: !1006)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 234, column: 35)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 234, column: 2)
!1005 = distinct !DILexicalBlock(scope: !972, file: !2, line: 234, column: 2)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2064, elements: !124)
!1007 = !DILocalVariable(name: "temp", scope: !1003, file: !2, line: 236, type: !1008)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 336, elements: !26)
!1009 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1010 = !DILocalVariable(name: "minLen", scope: !1003, file: !2, line: 237, type: !50)
!1011 = !DILocalVariable(name: "maxLen", scope: !1003, file: !2, line: 237, type: !50)
!1012 = !DILocalVariable(name: "pp", scope: !1003, file: !2, line: 237, type: !50)
!1013 = !DILabel(scope: !1014, name: "got_huff_bits", file: !2, line: 393)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 359, column: 11)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 359, column: 2)
!1016 = distinct !DILexicalBlock(scope: !972, file: !2, line: 359, column: 2)
!1017 = !DILocation(line: 156, column: 52, scope: !972)
!1018 = !DILocation(line: 158, column: 2, scope: !972)
!1019 = !DILocation(line: 158, column: 21, scope: !972)
!1020 = !DILocation(line: 159, column: 2, scope: !972)
!1021 = !DILocation(line: 159, column: 7, scope: !972)
!1022 = !DILocation(line: 160, column: 2, scope: !972)
!1023 = !DILocation(line: 160, column: 7, scope: !972)
!1024 = !DILocation(line: 161, column: 2, scope: !972)
!1025 = !DILocation(line: 161, column: 6, scope: !972)
!1026 = !DILocation(line: 161, column: 17, scope: !972)
!1027 = !DILocation(line: 161, column: 26, scope: !972)
!1028 = !DILocation(line: 161, column: 36, scope: !972)
!1029 = !DILocation(line: 161, column: 48, scope: !972)
!1030 = !DILocation(line: 162, column: 3, scope: !972)
!1031 = !DILocation(line: 162, column: 6, scope: !972)
!1032 = !DILocation(line: 162, column: 9, scope: !972)
!1033 = !DILocation(line: 162, column: 12, scope: !972)
!1034 = !DILocation(line: 162, column: 15, scope: !972)
!1035 = !DILocation(line: 162, column: 23, scope: !972)
!1036 = !DILocation(line: 162, column: 33, scope: !972)
!1037 = !DILocation(line: 162, column: 43, scope: !972)
!1038 = !DILocation(line: 162, column: 56, scope: !972)
!1039 = !DILocation(line: 163, column: 2, scope: !972)
!1040 = !DILocation(line: 163, column: 16, scope: !972)
!1041 = !DILocation(line: 163, column: 21, scope: !972)
!1042 = !DILocation(line: 163, column: 33, scope: !972)
!1043 = !DILocation(line: 163, column: 45, scope: !972)
!1044 = !DILocation(line: 164, column: 2, scope: !972)
!1045 = !DILocation(line: 164, column: 16, scope: !972)
!1046 = !DILocation(line: 164, column: 22, scope: !972)
!1047 = !DILocation(line: 166, column: 9, scope: !972)
!1048 = !DILocation(line: 166, column: 13, scope: !972)
!1049 = !DILocation(line: 166, column: 7, scope: !972)
!1050 = !DILocation(line: 167, column: 13, scope: !972)
!1051 = !DILocation(line: 167, column: 17, scope: !972)
!1052 = !DILocation(line: 167, column: 11, scope: !972)
!1053 = !DILocation(line: 168, column: 14, scope: !972)
!1054 = !DILocation(line: 168, column: 18, scope: !972)
!1055 = !DILocation(line: 168, column: 12, scope: !972)
!1056 = !DILocation(line: 169, column: 14, scope: !972)
!1057 = !DILocation(line: 169, column: 18, scope: !972)
!1058 = !DILocation(line: 169, column: 12, scope: !972)
!1059 = !DILocation(line: 170, column: 14, scope: !972)
!1060 = !DILocation(line: 170, column: 18, scope: !972)
!1061 = !DILocation(line: 170, column: 12, scope: !972)
!1062 = !DILocation(line: 171, column: 14, scope: !972)
!1063 = !DILocation(line: 171, column: 18, scope: !972)
!1064 = !DILocation(line: 171, column: 12, scope: !972)
!1065 = !DILocation(line: 175, column: 15, scope: !972)
!1066 = !DILocation(line: 175, column: 6, scope: !972)
!1067 = !DILocation(line: 175, column: 4, scope: !972)
!1068 = !DILocation(line: 176, column: 15, scope: !972)
!1069 = !DILocation(line: 176, column: 6, scope: !972)
!1070 = !DILocation(line: 176, column: 4, scope: !972)
!1071 = !DILocation(line: 177, column: 27, scope: !972)
!1072 = !DILocation(line: 177, column: 18, scope: !972)
!1073 = !DILocation(line: 177, column: 2, scope: !972)
!1074 = !DILocation(line: 177, column: 6, scope: !972)
!1075 = !DILocation(line: 177, column: 16, scope: !972)
!1076 = !DILocation(line: 178, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !972, file: !2, line: 178, column: 6)
!1078 = !DILocation(line: 178, column: 9, scope: !1077)
!1079 = !DILocation(line: 178, column: 22, scope: !1077)
!1080 = !DILocation(line: 178, column: 26, scope: !1077)
!1081 = !DILocation(line: 178, column: 28, scope: !1077)
!1082 = !DILocation(line: 178, column: 6, scope: !972)
!1083 = !DILocation(line: 179, column: 3, scope: !1077)
!1084 = !DILocation(line: 180, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !972, file: !2, line: 180, column: 6)
!1086 = !DILocation(line: 180, column: 9, scope: !1085)
!1087 = !DILocation(line: 180, column: 22, scope: !1085)
!1088 = !DILocation(line: 180, column: 26, scope: !1085)
!1089 = !DILocation(line: 180, column: 28, scope: !1085)
!1090 = !DILocation(line: 180, column: 6, scope: !972)
!1091 = !DILocation(line: 181, column: 3, scope: !1085)
!1092 = !DILocation(line: 185, column: 15, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !972, file: !2, line: 185, column: 6)
!1094 = !DILocation(line: 185, column: 6, scope: !1093)
!1095 = !DILocation(line: 185, column: 6, scope: !972)
!1096 = !DILocation(line: 186, column: 3, scope: !1093)
!1097 = !DILocation(line: 187, column: 21, scope: !972)
!1098 = !DILocation(line: 187, column: 12, scope: !972)
!1099 = !DILocation(line: 187, column: 10, scope: !972)
!1100 = !DILocation(line: 188, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !972, file: !2, line: 188, column: 6)
!1102 = !DILocation(line: 188, column: 17, scope: !1101)
!1103 = !DILocation(line: 188, column: 14, scope: !1101)
!1104 = !DILocation(line: 188, column: 6, scope: !972)
!1105 = !DILocation(line: 189, column: 3, scope: !1101)
!1106 = !DILocation(line: 195, column: 15, scope: !972)
!1107 = !DILocation(line: 195, column: 6, scope: !972)
!1108 = !DILocation(line: 195, column: 4, scope: !972)
!1109 = !DILocation(line: 196, column: 11, scope: !972)
!1110 = !DILocation(line: 197, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !972, file: !2, line: 197, column: 2)
!1112 = !DILocation(line: 197, column: 7, scope: !1111)
!1113 = !DILocation(line: 197, column: 14, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 197, column: 2)
!1115 = !DILocation(line: 197, column: 16, scope: !1114)
!1116 = !DILocation(line: 197, column: 2, scope: !1111)
!1117 = !DILocation(line: 198, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 198, column: 7)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 197, column: 27)
!1120 = !DILocation(line: 198, column: 19, scope: !1118)
!1121 = !DILocation(line: 198, column: 18, scope: !1118)
!1122 = !DILocation(line: 198, column: 12, scope: !1118)
!1123 = !DILocation(line: 198, column: 8, scope: !1118)
!1124 = !DILocation(line: 198, column: 7, scope: !1119)
!1125 = !DILocation(line: 199, column: 17, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 198, column: 24)
!1127 = !DILocation(line: 199, column: 8, scope: !1126)
!1128 = !DILocation(line: 199, column: 6, scope: !1126)
!1129 = !DILocation(line: 200, column: 11, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 200, column: 4)
!1131 = !DILocation(line: 200, column: 9, scope: !1130)
!1132 = !DILocation(line: 200, column: 16, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 200, column: 4)
!1134 = !DILocation(line: 200, column: 18, scope: !1133)
!1135 = !DILocation(line: 200, column: 4, scope: !1130)
!1136 = !DILocation(line: 201, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 201, column: 9)
!1138 = !DILocation(line: 201, column: 21, scope: !1137)
!1139 = !DILocation(line: 201, column: 20, scope: !1137)
!1140 = !DILocation(line: 201, column: 14, scope: !1137)
!1141 = !DILocation(line: 201, column: 10, scope: !1137)
!1142 = !DILocation(line: 201, column: 9, scope: !1133)
!1143 = !DILocation(line: 202, column: 34, scope: !1137)
!1144 = !DILocation(line: 202, column: 33, scope: !1137)
!1145 = !DILocation(line: 202, column: 37, scope: !1137)
!1146 = !DILocation(line: 202, column: 36, scope: !1137)
!1147 = !DILocation(line: 202, column: 30, scope: !1137)
!1148 = !DILocation(line: 202, column: 6, scope: !1137)
!1149 = !DILocation(line: 202, column: 24, scope: !1137)
!1150 = !DILocation(line: 202, column: 28, scope: !1137)
!1151 = !DILocation(line: 201, column: 23, scope: !1137)
!1152 = !DILocation(line: 200, column: 25, scope: !1133)
!1153 = !DILocation(line: 200, column: 4, scope: !1133)
!1154 = distinct !{!1154, !1135, !1155, !411, !222}
!1155 = !DILocation(line: 202, column: 37, scope: !1130)
!1156 = !DILocation(line: 203, column: 3, scope: !1126)
!1157 = !DILocation(line: 204, column: 2, scope: !1119)
!1158 = !DILocation(line: 197, column: 23, scope: !1114)
!1159 = !DILocation(line: 197, column: 2, scope: !1114)
!1160 = distinct !{!1160, !1116, !1161, !411, !222}
!1161 = !DILocation(line: 204, column: 2, scope: !1111)
!1162 = !DILocation(line: 206, column: 24, scope: !972)
!1163 = !DILocation(line: 206, column: 15, scope: !972)
!1164 = !DILocation(line: 206, column: 13, scope: !972)
!1165 = !DILocation(line: 207, column: 6, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !972, file: !2, line: 207, column: 6)
!1167 = !DILocation(line: 207, column: 17, scope: !1166)
!1168 = !DILocation(line: 207, column: 21, scope: !1166)
!1169 = !DILocation(line: 207, column: 24, scope: !1166)
!1170 = !DILocation(line: 207, column: 35, scope: !1166)
!1171 = !DILocation(line: 207, column: 6, scope: !972)
!1172 = !DILocation(line: 208, column: 3, scope: !1166)
!1173 = !DILocation(line: 214, column: 24, scope: !972)
!1174 = !DILocation(line: 214, column: 15, scope: !972)
!1175 = !DILocation(line: 214, column: 13, scope: !972)
!1176 = !DILocation(line: 215, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !972, file: !2, line: 215, column: 6)
!1178 = !DILocation(line: 215, column: 6, scope: !972)
!1179 = !DILocation(line: 216, column: 3, scope: !1177)
!1180 = !DILocation(line: 217, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !972, file: !2, line: 217, column: 2)
!1182 = !DILocation(line: 217, column: 7, scope: !1181)
!1183 = !DILocation(line: 217, column: 14, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 217, column: 2)
!1185 = !DILocation(line: 217, column: 18, scope: !1184)
!1186 = !DILocation(line: 217, column: 16, scope: !1184)
!1187 = !DILocation(line: 217, column: 2, scope: !1181)
!1188 = !DILocation(line: 218, column: 18, scope: !1184)
!1189 = !DILocation(line: 218, column: 3, scope: !1184)
!1190 = !DILocation(line: 218, column: 13, scope: !1184)
!1191 = !DILocation(line: 218, column: 16, scope: !1184)
!1192 = !DILocation(line: 217, column: 31, scope: !1184)
!1193 = !DILocation(line: 217, column: 2, scope: !1184)
!1194 = distinct !{!1194, !1187, !1195, !411, !222}
!1195 = !DILocation(line: 218, column: 18, scope: !1181)
!1196 = !DILocation(line: 219, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !972, file: !2, line: 219, column: 2)
!1198 = !DILocation(line: 219, column: 7, scope: !1197)
!1199 = !DILocation(line: 219, column: 14, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 219, column: 2)
!1201 = !DILocation(line: 219, column: 18, scope: !1200)
!1202 = !DILocation(line: 219, column: 16, scope: !1200)
!1203 = !DILocation(line: 219, column: 2, scope: !1197)
!1204 = !DILocation(line: 221, column: 10, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 221, column: 3)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 219, column: 35)
!1207 = !DILocation(line: 221, column: 8, scope: !1205)
!1208 = !DILocation(line: 221, column: 24, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 221, column: 3)
!1210 = !DILocation(line: 221, column: 15, scope: !1209)
!1211 = !DILocation(line: 221, column: 3, scope: !1205)
!1212 = !DILocation(line: 222, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 222, column: 8)
!1214 = !DILocation(line: 222, column: 13, scope: !1213)
!1215 = !DILocation(line: 222, column: 10, scope: !1213)
!1216 = !DILocation(line: 222, column: 8, scope: !1209)
!1217 = !DILocation(line: 223, column: 5, scope: !1213)
!1218 = !DILocation(line: 221, column: 33, scope: !1209)
!1219 = !DILocation(line: 221, column: 3, scope: !1209)
!1220 = distinct !{!1220, !1211, !1221, !411, !222}
!1221 = !DILocation(line: 223, column: 12, scope: !1205)
!1222 = !DILocation(line: 225, column: 8, scope: !1206)
!1223 = !DILocation(line: 225, column: 18, scope: !1206)
!1224 = !DILocation(line: 225, column: 6, scope: !1206)
!1225 = !DILocation(line: 226, column: 3, scope: !1206)
!1226 = !DILocation(line: 226, column: 10, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 226, column: 3)
!1228 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 226, column: 3)
!1229 = !DILocation(line: 226, column: 3, scope: !1228)
!1230 = !DILocation(line: 227, column: 19, scope: !1227)
!1231 = !DILocation(line: 227, column: 29, scope: !1227)
!1232 = !DILocation(line: 227, column: 30, scope: !1227)
!1233 = !DILocation(line: 227, column: 4, scope: !1227)
!1234 = !DILocation(line: 227, column: 14, scope: !1227)
!1235 = !DILocation(line: 227, column: 17, scope: !1227)
!1236 = !DILocation(line: 226, column: 14, scope: !1227)
!1237 = !DILocation(line: 226, column: 3, scope: !1227)
!1238 = distinct !{!1238, !1229, !1239, !411, !222}
!1239 = !DILocation(line: 227, column: 32, scope: !1228)
!1240 = !DILocation(line: 228, column: 33, scope: !1206)
!1241 = !DILocation(line: 228, column: 18, scope: !1206)
!1242 = !DILocation(line: 228, column: 28, scope: !1206)
!1243 = !DILocation(line: 228, column: 31, scope: !1206)
!1244 = !DILocation(line: 228, column: 3, scope: !1206)
!1245 = !DILocation(line: 228, column: 16, scope: !1206)
!1246 = !DILocation(line: 229, column: 2, scope: !1206)
!1247 = !DILocation(line: 219, column: 31, scope: !1200)
!1248 = !DILocation(line: 219, column: 2, scope: !1200)
!1249 = distinct !{!1249, !1203, !1250, !411, !222}
!1250 = !DILocation(line: 229, column: 2, scope: !1197)
!1251 = !DILocation(line: 233, column: 13, scope: !972)
!1252 = !DILocation(line: 233, column: 21, scope: !972)
!1253 = !DILocation(line: 233, column: 11, scope: !972)
!1254 = !DILocation(line: 234, column: 9, scope: !1005)
!1255 = !DILocation(line: 234, column: 7, scope: !1005)
!1256 = !DILocation(line: 234, column: 14, scope: !1004)
!1257 = !DILocation(line: 234, column: 18, scope: !1004)
!1258 = !DILocation(line: 234, column: 16, scope: !1004)
!1259 = !DILocation(line: 234, column: 2, scope: !1005)
!1260 = !DILocation(line: 235, column: 3, scope: !1003)
!1261 = !DILocation(line: 235, column: 17, scope: !1003)
!1262 = !DILocation(line: 236, column: 3, scope: !1003)
!1263 = !DILocation(line: 236, column: 18, scope: !1003)
!1264 = !DILocation(line: 237, column: 3, scope: !1003)
!1265 = !DILocation(line: 237, column: 7, scope: !1003)
!1266 = !DILocation(line: 237, column: 15, scope: !1003)
!1267 = !DILocation(line: 237, column: 23, scope: !1003)
!1268 = !DILocation(line: 247, column: 16, scope: !1003)
!1269 = !DILocation(line: 247, column: 7, scope: !1003)
!1270 = !DILocation(line: 247, column: 22, scope: !1003)
!1271 = !DILocation(line: 247, column: 5, scope: !1003)
!1272 = !DILocation(line: 248, column: 10, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 248, column: 3)
!1274 = !DILocation(line: 248, column: 8, scope: !1273)
!1275 = !DILocation(line: 248, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 248, column: 3)
!1277 = !DILocation(line: 248, column: 19, scope: !1276)
!1278 = !DILocation(line: 248, column: 17, scope: !1276)
!1279 = !DILocation(line: 248, column: 3, scope: !1273)
!1280 = !DILocation(line: 249, column: 4, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 248, column: 34)
!1282 = !DILocation(line: 250, column: 20, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 250, column: 9)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 249, column: 13)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 249, column: 4)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 249, column: 4)
!1287 = !DILocation(line: 250, column: 23, scope: !1283)
!1288 = !DILocation(line: 250, column: 9, scope: !1284)
!1289 = !DILocation(line: 251, column: 6, scope: !1283)
!1290 = !DILocation(line: 259, column: 18, scope: !1284)
!1291 = !DILocation(line: 259, column: 9, scope: !1284)
!1292 = !DILocation(line: 259, column: 7, scope: !1284)
!1293 = !DILocation(line: 260, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 260, column: 9)
!1295 = !DILocation(line: 260, column: 11, scope: !1294)
!1296 = !DILocation(line: 260, column: 9, scope: !1284)
!1297 = !DILocation(line: 261, column: 6, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 260, column: 16)
!1299 = !DILocation(line: 261, column: 10, scope: !1298)
!1300 = !DILocation(line: 261, column: 23, scope: !1298)
!1301 = !DILocation(line: 262, column: 6, scope: !1298)
!1302 = !DILocation(line: 266, column: 13, scope: !1284)
!1303 = !DILocation(line: 266, column: 14, scope: !1284)
!1304 = !DILocation(line: 266, column: 17, scope: !1284)
!1305 = !DILocation(line: 266, column: 20, scope: !1284)
!1306 = !DILocation(line: 266, column: 7, scope: !1284)
!1307 = !DILocation(line: 249, column: 4, scope: !1285)
!1308 = distinct !{!1308, !1309, !1310, !222}
!1309 = !DILocation(line: 249, column: 4, scope: !1286)
!1310 = !DILocation(line: 267, column: 4, scope: !1286)
!1311 = !DILocation(line: 270, column: 16, scope: !1281)
!1312 = !DILocation(line: 270, column: 17, scope: !1281)
!1313 = !DILocation(line: 270, column: 11, scope: !1281)
!1314 = !DILocation(line: 270, column: 4, scope: !1281)
!1315 = !DILocation(line: 270, column: 14, scope: !1281)
!1316 = !DILocation(line: 271, column: 3, scope: !1281)
!1317 = !DILocation(line: 248, column: 30, scope: !1276)
!1318 = !DILocation(line: 248, column: 3, scope: !1276)
!1319 = distinct !{!1319, !1279, !1320, !411, !222}
!1320 = !DILocation(line: 271, column: 3, scope: !1273)
!1321 = !DILocation(line: 273, column: 21, scope: !1003)
!1322 = !DILocation(line: 273, column: 19, scope: !1003)
!1323 = !DILocation(line: 273, column: 10, scope: !1003)
!1324 = !DILocation(line: 275, column: 10, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 275, column: 3)
!1326 = !DILocation(line: 275, column: 8, scope: !1325)
!1327 = !DILocation(line: 275, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 275, column: 3)
!1329 = !DILocation(line: 275, column: 19, scope: !1328)
!1330 = !DILocation(line: 275, column: 17, scope: !1328)
!1331 = !DILocation(line: 275, column: 3, scope: !1325)
!1332 = !DILocation(line: 276, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 276, column: 8)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 275, column: 34)
!1335 = !DILocation(line: 276, column: 8, scope: !1333)
!1336 = !DILocation(line: 276, column: 20, scope: !1333)
!1337 = !DILocation(line: 276, column: 18, scope: !1333)
!1338 = !DILocation(line: 276, column: 8, scope: !1334)
!1339 = !DILocation(line: 277, column: 21, scope: !1333)
!1340 = !DILocation(line: 277, column: 14, scope: !1333)
!1341 = !DILocation(line: 277, column: 12, scope: !1333)
!1342 = !DILocation(line: 277, column: 5, scope: !1333)
!1343 = !DILocation(line: 278, column: 20, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 278, column: 13)
!1345 = !DILocation(line: 278, column: 13, scope: !1344)
!1346 = !DILocation(line: 278, column: 25, scope: !1344)
!1347 = !DILocation(line: 278, column: 23, scope: !1344)
!1348 = !DILocation(line: 278, column: 13, scope: !1333)
!1349 = !DILocation(line: 279, column: 21, scope: !1344)
!1350 = !DILocation(line: 279, column: 14, scope: !1344)
!1351 = !DILocation(line: 279, column: 12, scope: !1344)
!1352 = !DILocation(line: 279, column: 5, scope: !1344)
!1353 = !DILocation(line: 280, column: 3, scope: !1334)
!1354 = !DILocation(line: 275, column: 30, scope: !1328)
!1355 = !DILocation(line: 275, column: 3, scope: !1328)
!1356 = distinct !{!1356, !1331, !1357, !411, !222}
!1357 = !DILocation(line: 280, column: 3, scope: !1325)
!1358 = !DILocation(line: 297, column: 14, scope: !1003)
!1359 = !DILocation(line: 297, column: 18, scope: !1003)
!1360 = !DILocation(line: 297, column: 25, scope: !1003)
!1361 = !DILocation(line: 297, column: 24, scope: !1003)
!1362 = !DILocation(line: 297, column: 12, scope: !1003)
!1363 = !DILocation(line: 298, column: 22, scope: !1003)
!1364 = !DILocation(line: 298, column: 3, scope: !1003)
!1365 = !DILocation(line: 298, column: 13, scope: !1003)
!1366 = !DILocation(line: 298, column: 20, scope: !1003)
!1367 = !DILocation(line: 299, column: 22, scope: !1003)
!1368 = !DILocation(line: 299, column: 3, scope: !1003)
!1369 = !DILocation(line: 299, column: 13, scope: !1003)
!1370 = !DILocation(line: 299, column: 20, scope: !1003)
!1371 = !DILocation(line: 304, column: 10, scope: !1003)
!1372 = !DILocation(line: 304, column: 20, scope: !1003)
!1373 = !DILocation(line: 304, column: 24, scope: !1003)
!1374 = !DILocation(line: 304, column: 8, scope: !1003)
!1375 = !DILocation(line: 305, column: 11, scope: !1003)
!1376 = !DILocation(line: 305, column: 21, scope: !1003)
!1377 = !DILocation(line: 305, column: 26, scope: !1003)
!1378 = !DILocation(line: 305, column: 9, scope: !1003)
!1379 = !DILocation(line: 308, column: 6, scope: !1003)
!1380 = !DILocation(line: 309, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 309, column: 3)
!1382 = !DILocation(line: 309, column: 10, scope: !1381)
!1383 = !DILocation(line: 309, column: 8, scope: !1381)
!1384 = !DILocation(line: 309, column: 20, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 309, column: 3)
!1386 = !DILocation(line: 309, column: 25, scope: !1385)
!1387 = !DILocation(line: 309, column: 22, scope: !1385)
!1388 = !DILocation(line: 309, column: 3, scope: !1381)
!1389 = !DILocation(line: 310, column: 14, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 309, column: 38)
!1391 = !DILocation(line: 310, column: 20, scope: !1390)
!1392 = !DILocation(line: 310, column: 23, scope: !1390)
!1393 = !DILocation(line: 310, column: 9, scope: !1390)
!1394 = !DILocation(line: 310, column: 4, scope: !1390)
!1395 = !DILocation(line: 310, column: 12, scope: !1390)
!1396 = !DILocation(line: 311, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 311, column: 4)
!1398 = !DILocation(line: 311, column: 9, scope: !1397)
!1399 = !DILocation(line: 311, column: 16, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 311, column: 4)
!1401 = !DILocation(line: 311, column: 20, scope: !1400)
!1402 = !DILocation(line: 311, column: 18, scope: !1400)
!1403 = !DILocation(line: 311, column: 4, scope: !1397)
!1404 = !DILocation(line: 312, column: 16, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 312, column: 9)
!1406 = !DILocation(line: 312, column: 9, scope: !1405)
!1407 = !DILocation(line: 312, column: 22, scope: !1405)
!1408 = !DILocation(line: 312, column: 19, scope: !1405)
!1409 = !DILocation(line: 312, column: 9, scope: !1400)
!1410 = !DILocation(line: 313, column: 32, scope: !1405)
!1411 = !DILocation(line: 313, column: 6, scope: !1405)
!1412 = !DILocation(line: 313, column: 16, scope: !1405)
!1413 = !DILocation(line: 313, column: 26, scope: !1405)
!1414 = !DILocation(line: 313, column: 30, scope: !1405)
!1415 = !DILocation(line: 311, column: 31, scope: !1400)
!1416 = !DILocation(line: 311, column: 4, scope: !1400)
!1417 = distinct !{!1417, !1403, !1418, !411, !222}
!1418 = !DILocation(line: 313, column: 32, scope: !1397)
!1419 = !DILocation(line: 314, column: 3, scope: !1390)
!1420 = !DILocation(line: 309, column: 34, scope: !1385)
!1421 = !DILocation(line: 309, column: 3, scope: !1385)
!1422 = distinct !{!1422, !1388, !1423, !411, !222}
!1423 = !DILocation(line: 314, column: 3, scope: !1381)
!1424 = !DILocation(line: 316, column: 10, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 316, column: 3)
!1426 = !DILocation(line: 316, column: 8, scope: !1425)
!1427 = !DILocation(line: 316, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 316, column: 3)
!1429 = !DILocation(line: 316, column: 19, scope: !1428)
!1430 = !DILocation(line: 316, column: 17, scope: !1428)
!1431 = !DILocation(line: 316, column: 3, scope: !1425)
!1432 = !DILocation(line: 317, column: 16, scope: !1428)
!1433 = !DILocation(line: 317, column: 9, scope: !1428)
!1434 = !DILocation(line: 317, column: 4, scope: !1428)
!1435 = !DILocation(line: 317, column: 19, scope: !1428)
!1436 = !DILocation(line: 316, column: 30, scope: !1428)
!1437 = !DILocation(line: 316, column: 3, scope: !1428)
!1438 = distinct !{!1438, !1431, !1439, !411, !222}
!1439 = !DILocation(line: 317, column: 19, scope: !1425)
!1440 = !DILocation(line: 324, column: 10, scope: !1003)
!1441 = !DILocation(line: 324, column: 6, scope: !1003)
!1442 = !DILocation(line: 325, column: 12, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 325, column: 3)
!1444 = !DILocation(line: 325, column: 10, scope: !1443)
!1445 = !DILocation(line: 325, column: 8, scope: !1443)
!1446 = !DILocation(line: 325, column: 20, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 325, column: 3)
!1448 = !DILocation(line: 325, column: 24, scope: !1447)
!1449 = !DILocation(line: 325, column: 22, scope: !1447)
!1450 = !DILocation(line: 325, column: 3, scope: !1443)
!1451 = !DILocation(line: 326, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 325, column: 37)
!1453 = !DILocation(line: 326, column: 10, scope: !1452)
!1454 = !DILocation(line: 326, column: 7, scope: !1452)
!1455 = !DILocation(line: 337, column: 16, scope: !1452)
!1456 = !DILocation(line: 337, column: 23, scope: !1452)
!1457 = !DILocation(line: 337, column: 32, scope: !1452)
!1458 = !DILocation(line: 337, column: 30, scope: !1452)
!1459 = !DILocation(line: 337, column: 19, scope: !1452)
!1460 = !DILocation(line: 337, column: 36, scope: !1452)
!1461 = !DILocation(line: 337, column: 4, scope: !1452)
!1462 = !DILocation(line: 337, column: 10, scope: !1452)
!1463 = !DILocation(line: 337, column: 13, scope: !1452)
!1464 = !DILocation(line: 338, column: 7, scope: !1452)
!1465 = !DILocation(line: 339, column: 16, scope: !1452)
!1466 = !DILocation(line: 339, column: 30, scope: !1452)
!1467 = !DILocation(line: 339, column: 25, scope: !1452)
!1468 = !DILocation(line: 339, column: 22, scope: !1452)
!1469 = !DILocation(line: 339, column: 18, scope: !1452)
!1470 = !DILocation(line: 339, column: 4, scope: !1452)
!1471 = !DILocation(line: 339, column: 9, scope: !1452)
!1472 = !DILocation(line: 339, column: 10, scope: !1452)
!1473 = !DILocation(line: 339, column: 14, scope: !1452)
!1474 = !DILocation(line: 340, column: 3, scope: !1452)
!1475 = !DILocation(line: 325, column: 33, scope: !1447)
!1476 = !DILocation(line: 325, column: 3, scope: !1447)
!1477 = distinct !{!1477, !1450, !1478, !411, !222}
!1478 = !DILocation(line: 340, column: 3, scope: !1443)
!1479 = !DILocation(line: 341, column: 3, scope: !1003)
!1480 = !DILocation(line: 341, column: 9, scope: !1003)
!1481 = !DILocation(line: 341, column: 15, scope: !1003)
!1482 = !DILocation(line: 341, column: 19, scope: !1003)
!1483 = !DILocation(line: 343, column: 19, scope: !1003)
!1484 = !DILocation(line: 343, column: 27, scope: !1003)
!1485 = !DILocation(line: 343, column: 22, scope: !1003)
!1486 = !DILocation(line: 343, column: 21, scope: !1003)
!1487 = !DILocation(line: 343, column: 34, scope: !1003)
!1488 = !DILocation(line: 343, column: 3, scope: !1003)
!1489 = !DILocation(line: 343, column: 9, scope: !1003)
!1490 = !DILocation(line: 343, column: 17, scope: !1003)
!1491 = !DILocation(line: 344, column: 3, scope: !1003)
!1492 = !DILocation(line: 344, column: 8, scope: !1003)
!1493 = !DILocation(line: 344, column: 16, scope: !1003)
!1494 = !DILocation(line: 345, column: 2, scope: !1004)
!1495 = !DILocation(line: 345, column: 2, scope: !1003)
!1496 = !DILocation(line: 234, column: 31, scope: !1004)
!1497 = !DILocation(line: 234, column: 2, scope: !1004)
!1498 = distinct !{!1498, !1259, !1499, !411, !222}
!1499 = !DILocation(line: 345, column: 2, scope: !1005)
!1500 = !DILocation(line: 353, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !972, file: !2, line: 353, column: 2)
!1502 = !DILocation(line: 353, column: 7, scope: !1501)
!1503 = !DILocation(line: 353, column: 14, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 353, column: 2)
!1505 = !DILocation(line: 353, column: 16, scope: !1504)
!1506 = !DILocation(line: 353, column: 2, scope: !1501)
!1507 = !DILocation(line: 354, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 353, column: 28)
!1509 = !DILocation(line: 354, column: 13, scope: !1508)
!1510 = !DILocation(line: 354, column: 16, scope: !1508)
!1511 = !DILocation(line: 355, column: 33, scope: !1508)
!1512 = !DILocation(line: 355, column: 18, scope: !1508)
!1513 = !DILocation(line: 355, column: 3, scope: !1508)
!1514 = !DILocation(line: 355, column: 13, scope: !1508)
!1515 = !DILocation(line: 355, column: 16, scope: !1508)
!1516 = !DILocation(line: 356, column: 2, scope: !1508)
!1517 = !DILocation(line: 353, column: 24, scope: !1504)
!1518 = !DILocation(line: 353, column: 2, scope: !1504)
!1519 = distinct !{!1519, !1506, !1520, !411, !222}
!1520 = !DILocation(line: 356, column: 2, scope: !1501)
!1521 = !DILocation(line: 358, column: 43, scope: !972)
!1522 = !DILocation(line: 358, column: 32, scope: !972)
!1523 = !DILocation(line: 358, column: 21, scope: !972)
!1524 = !DILocation(line: 358, column: 9, scope: !972)
!1525 = !DILocation(line: 359, column: 2, scope: !972)
!1526 = !DILocation(line: 361, column: 17, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 361, column: 7)
!1528 = !DILocation(line: 361, column: 7, scope: !1014)
!1529 = !DILocation(line: 362, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 361, column: 22)
!1531 = !DILocation(line: 363, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 363, column: 8)
!1533 = !DILocation(line: 363, column: 20, scope: !1532)
!1534 = !DILocation(line: 363, column: 17, scope: !1532)
!1535 = !DILocation(line: 363, column: 8, scope: !1530)
!1536 = !DILocation(line: 364, column: 5, scope: !1532)
!1537 = !DILocation(line: 365, column: 15, scope: !1530)
!1538 = !DILocation(line: 365, column: 19, scope: !1530)
!1539 = !DILocation(line: 365, column: 26, scope: !1530)
!1540 = !DILocation(line: 365, column: 44, scope: !1530)
!1541 = !DILocation(line: 365, column: 25, scope: !1530)
!1542 = !DILocation(line: 365, column: 13, scope: !1530)
!1543 = !DILocation(line: 366, column: 11, scope: !1530)
!1544 = !DILocation(line: 366, column: 21, scope: !1530)
!1545 = !DILocation(line: 366, column: 25, scope: !1530)
!1546 = !DILocation(line: 366, column: 9, scope: !1530)
!1547 = !DILocation(line: 367, column: 12, scope: !1530)
!1548 = !DILocation(line: 367, column: 22, scope: !1530)
!1549 = !DILocation(line: 367, column: 27, scope: !1530)
!1550 = !DILocation(line: 367, column: 10, scope: !1530)
!1551 = !DILocation(line: 368, column: 3, scope: !1530)
!1552 = !DILocation(line: 381, column: 3, scope: !1014)
!1553 = !DILocation(line: 381, column: 10, scope: !1014)
!1554 = !DILocation(line: 381, column: 14, scope: !1014)
!1555 = !DILocation(line: 381, column: 30, scope: !1014)
!1556 = !DILocation(line: 381, column: 40, scope: !1014)
!1557 = !DILocation(line: 381, column: 28, scope: !1014)
!1558 = !DILocation(line: 382, column: 8, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 382, column: 8)
!1560 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 381, column: 48)
!1561 = !DILocation(line: 382, column: 12, scope: !1559)
!1562 = !DILocation(line: 382, column: 24, scope: !1559)
!1563 = !DILocation(line: 382, column: 28, scope: !1559)
!1564 = !DILocation(line: 382, column: 21, scope: !1559)
!1565 = !DILocation(line: 382, column: 8, scope: !1560)
!1566 = !DILocation(line: 383, column: 18, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 382, column: 40)
!1568 = !DILocation(line: 383, column: 22, scope: !1567)
!1569 = !DILocation(line: 383, column: 32, scope: !1567)
!1570 = !DILocation(line: 383, column: 9, scope: !1567)
!1571 = !DILocation(line: 383, column: 7, scope: !1567)
!1572 = !DILocation(line: 384, column: 5, scope: !1567)
!1573 = !DILocation(line: 387, column: 6, scope: !1560)
!1574 = !DILocation(line: 387, column: 10, scope: !1560)
!1575 = !DILocation(line: 387, column: 20, scope: !1560)
!1576 = !DILocation(line: 387, column: 26, scope: !1560)
!1577 = !DILocation(line: 387, column: 30, scope: !1560)
!1578 = !DILocation(line: 387, column: 36, scope: !1560)
!1579 = !DILocation(line: 387, column: 40, scope: !1560)
!1580 = !DILocation(line: 387, column: 48, scope: !1560)
!1581 = !DILocation(line: 387, column: 25, scope: !1560)
!1582 = !DILocation(line: 386, column: 4, scope: !1560)
!1583 = !DILocation(line: 386, column: 8, scope: !1560)
!1584 = !DILocation(line: 386, column: 18, scope: !1560)
!1585 = !DILocation(line: 388, column: 4, scope: !1560)
!1586 = !DILocation(line: 388, column: 8, scope: !1560)
!1587 = !DILocation(line: 388, column: 22, scope: !1560)
!1588 = distinct !{!1588, !1552, !1589, !411, !222}
!1589 = !DILocation(line: 389, column: 3, scope: !1014)
!1590 = !DILocation(line: 390, column: 24, scope: !1014)
!1591 = !DILocation(line: 390, column: 34, scope: !1014)
!1592 = !DILocation(line: 390, column: 3, scope: !1014)
!1593 = !DILocation(line: 390, column: 7, scope: !1014)
!1594 = !DILocation(line: 390, column: 21, scope: !1014)
!1595 = !DILocation(line: 391, column: 8, scope: !1014)
!1596 = !DILocation(line: 391, column: 12, scope: !1014)
!1597 = !DILocation(line: 391, column: 25, scope: !1014)
!1598 = !DILocation(line: 391, column: 29, scope: !1014)
!1599 = !DILocation(line: 391, column: 22, scope: !1014)
!1600 = !DILocation(line: 392, column: 11, scope: !1014)
!1601 = !DILocation(line: 392, column: 21, scope: !1014)
!1602 = !DILocation(line: 392, column: 8, scope: !1014)
!1603 = !DILocation(line: 392, column: 28, scope: !1014)
!1604 = !DILocation(line: 391, column: 43, scope: !1014)
!1605 = !DILocation(line: 391, column: 5, scope: !1014)
!1606 = !DILocation(line: 391, column: 3, scope: !1014)
!1607 = !DILocation(line: 393, column: 1, scope: !1014)
!1608 = !DILocation(line: 396, column: 7, scope: !1014)
!1609 = !DILocation(line: 396, column: 17, scope: !1014)
!1610 = !DILocation(line: 396, column: 5, scope: !1014)
!1611 = !DILocation(line: 397, column: 3, scope: !1014)
!1612 = !DILocation(line: 397, column: 10, scope: !1014)
!1613 = !DILocation(line: 397, column: 14, scope: !1014)
!1614 = !DILocation(line: 397, column: 20, scope: !1014)
!1615 = !DILocation(line: 397, column: 12, scope: !1014)
!1616 = !DILocation(line: 398, column: 4, scope: !1014)
!1617 = distinct !{!1617, !1611, !1618, !411, !222}
!1618 = !DILocation(line: 398, column: 6, scope: !1014)
!1619 = !DILocation(line: 399, column: 25, scope: !1014)
!1620 = !DILocation(line: 399, column: 35, scope: !1014)
!1621 = !DILocation(line: 399, column: 44, scope: !1014)
!1622 = !DILocation(line: 399, column: 42, scope: !1014)
!1623 = !DILocation(line: 399, column: 3, scope: !1014)
!1624 = !DILocation(line: 399, column: 7, scope: !1014)
!1625 = !DILocation(line: 399, column: 21, scope: !1014)
!1626 = !DILocation(line: 401, column: 8, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 401, column: 7)
!1628 = !DILocation(line: 401, column: 12, scope: !1627)
!1629 = !DILocation(line: 401, column: 22, scope: !1627)
!1630 = !DILocation(line: 401, column: 10, scope: !1627)
!1631 = !DILocation(line: 402, column: 4, scope: !1627)
!1632 = !DILocation(line: 402, column: 25, scope: !1627)
!1633 = !DILocation(line: 402, column: 29, scope: !1627)
!1634 = !DILocation(line: 402, column: 39, scope: !1627)
!1635 = !DILocation(line: 402, column: 46, scope: !1627)
!1636 = !DILocation(line: 402, column: 45, scope: !1627)
!1637 = !DILocation(line: 402, column: 26, scope: !1627)
!1638 = !DILocation(line: 402, column: 50, scope: !1627)
!1639 = !DILocation(line: 402, column: 55, scope: !1627)
!1640 = !DILocation(line: 402, column: 49, scope: !1627)
!1641 = !DILocation(line: 402, column: 22, scope: !1627)
!1642 = !DILocation(line: 403, column: 5, scope: !1627)
!1643 = !DILocation(line: 401, column: 7, scope: !1014)
!1644 = !DILocation(line: 404, column: 4, scope: !1627)
!1645 = !DILocation(line: 405, column: 13, scope: !1014)
!1646 = !DILocation(line: 405, column: 23, scope: !1014)
!1647 = !DILocation(line: 405, column: 31, scope: !1014)
!1648 = !DILocation(line: 405, column: 11, scope: !1014)
!1649 = !DILocation(line: 411, column: 18, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 411, column: 7)
!1651 = !DILocation(line: 411, column: 27, scope: !1650)
!1652 = !DILocation(line: 411, column: 7, scope: !1014)
!1653 = !DILocation(line: 414, column: 9, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 414, column: 8)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 411, column: 43)
!1656 = !DILocation(line: 414, column: 8, scope: !1655)
!1657 = !DILocation(line: 415, column: 12, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 414, column: 17)
!1659 = !DILocation(line: 416, column: 7, scope: !1658)
!1660 = !DILocation(line: 417, column: 4, scope: !1658)
!1661 = !DILocation(line: 428, column: 10, scope: !1655)
!1662 = !DILocation(line: 428, column: 20, scope: !1655)
!1663 = !DILocation(line: 428, column: 17, scope: !1655)
!1664 = !DILocation(line: 428, column: 6, scope: !1655)
!1665 = !DILocation(line: 431, column: 11, scope: !1655)
!1666 = !DILocation(line: 432, column: 4, scope: !1655)
!1667 = distinct !{!1667, !1668, !1669, !222}
!1668 = !DILocation(line: 359, column: 2, scope: !1016)
!1669 = !DILocation(line: 479, column: 2, scope: !1016)
!1670 = !DILocation(line: 440, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 440, column: 7)
!1672 = !DILocation(line: 440, column: 7, scope: !1014)
!1673 = !DILocation(line: 441, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 440, column: 15)
!1675 = !DILocation(line: 442, column: 8, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 442, column: 8)
!1677 = !DILocation(line: 442, column: 18, scope: !1676)
!1678 = !DILocation(line: 442, column: 17, scope: !1676)
!1679 = !DILocation(line: 442, column: 23, scope: !1676)
!1680 = !DILocation(line: 442, column: 20, scope: !1676)
!1681 = !DILocation(line: 442, column: 8, scope: !1674)
!1682 = !DILocation(line: 443, column: 5, scope: !1676)
!1683 = !DILocation(line: 445, column: 9, scope: !1674)
!1684 = !DILocation(line: 445, column: 19, scope: !1674)
!1685 = !DILocation(line: 445, column: 7, scope: !1674)
!1686 = !DILocation(line: 446, column: 21, scope: !1674)
!1687 = !DILocation(line: 446, column: 4, scope: !1674)
!1688 = !DILocation(line: 446, column: 14, scope: !1674)
!1689 = !DILocation(line: 446, column: 18, scope: !1674)
!1690 = !DILocation(line: 447, column: 4, scope: !1674)
!1691 = !DILocation(line: 447, column: 12, scope: !1674)
!1692 = !DILocation(line: 448, column: 25, scope: !1674)
!1693 = !DILocation(line: 448, column: 5, scope: !1674)
!1694 = !DILocation(line: 448, column: 19, scope: !1674)
!1695 = !DILocation(line: 448, column: 23, scope: !1674)
!1696 = distinct !{!1696, !1690, !1692, !411, !222}
!1697 = !DILocation(line: 449, column: 3, scope: !1674)
!1698 = !DILocation(line: 451, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 451, column: 7)
!1700 = !DILocation(line: 451, column: 17, scope: !1699)
!1701 = !DILocation(line: 451, column: 15, scope: !1699)
!1702 = !DILocation(line: 451, column: 7, scope: !1014)
!1703 = !DILocation(line: 452, column: 4, scope: !1699)
!1704 = !DILocation(line: 462, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 462, column: 7)
!1706 = !DILocation(line: 462, column: 20, scope: !1705)
!1707 = !DILocation(line: 462, column: 17, scope: !1705)
!1708 = !DILocation(line: 462, column: 7, scope: !1014)
!1709 = !DILocation(line: 463, column: 4, scope: !1705)
!1710 = !DILocation(line: 464, column: 7, scope: !1014)
!1711 = !DILocation(line: 464, column: 15, scope: !1014)
!1712 = !DILocation(line: 464, column: 5, scope: !1014)
!1713 = !DILocation(line: 465, column: 8, scope: !1014)
!1714 = !DILocation(line: 465, column: 18, scope: !1014)
!1715 = !DILocation(line: 465, column: 6, scope: !1014)
!1716 = !DILocation(line: 471, column: 3, scope: !1014)
!1717 = !DILocation(line: 472, column: 19, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 471, column: 6)
!1719 = !DILocation(line: 472, column: 29, scope: !1718)
!1720 = !DILocation(line: 472, column: 30, scope: !1718)
!1721 = !DILocation(line: 472, column: 4, scope: !1718)
!1722 = !DILocation(line: 472, column: 14, scope: !1718)
!1723 = !DILocation(line: 472, column: 17, scope: !1718)
!1724 = !DILocation(line: 473, column: 3, scope: !1718)
!1725 = !DILocation(line: 473, column: 12, scope: !1014)
!1726 = distinct !{!1726, !1716, !1727, !411, !222}
!1727 = !DILocation(line: 473, column: 15, scope: !1014)
!1728 = !DILocation(line: 474, column: 18, scope: !1014)
!1729 = !DILocation(line: 474, column: 3, scope: !1014)
!1730 = !DILocation(line: 474, column: 16, scope: !1014)
!1731 = !DILocation(line: 475, column: 8, scope: !1014)
!1732 = !DILocation(line: 475, column: 18, scope: !1014)
!1733 = !DILocation(line: 475, column: 6, scope: !1014)
!1734 = !DILocation(line: 477, column: 3, scope: !1014)
!1735 = !DILocation(line: 477, column: 13, scope: !1014)
!1736 = !DILocation(line: 477, column: 16, scope: !1014)
!1737 = !DILocation(line: 478, column: 37, scope: !1014)
!1738 = !DILocation(line: 478, column: 23, scope: !1014)
!1739 = !DILocation(line: 478, column: 3, scope: !1014)
!1740 = !DILocation(line: 478, column: 17, scope: !1014)
!1741 = !DILocation(line: 478, column: 21, scope: !1014)
!1742 = !DILocation(line: 359, column: 2, scope: !1015)
!1743 = !DILocation(line: 488, column: 4, scope: !972)
!1744 = !DILocation(line: 489, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !972, file: !2, line: 489, column: 2)
!1746 = !DILocation(line: 489, column: 7, scope: !1745)
!1747 = !DILocation(line: 489, column: 14, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 489, column: 2)
!1749 = !DILocation(line: 489, column: 16, scope: !1748)
!1750 = !DILocation(line: 489, column: 2, scope: !1745)
!1751 = !DILocation(line: 490, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 489, column: 28)
!1753 = !DILocation(line: 490, column: 9, scope: !1752)
!1754 = !DILocation(line: 490, column: 19, scope: !1752)
!1755 = !DILocation(line: 490, column: 8, scope: !1752)
!1756 = !DILocation(line: 490, column: 5, scope: !1752)
!1757 = !DILocation(line: 491, column: 18, scope: !1752)
!1758 = !DILocation(line: 491, column: 3, scope: !1752)
!1759 = !DILocation(line: 491, column: 13, scope: !1752)
!1760 = !DILocation(line: 491, column: 16, scope: !1752)
!1761 = !DILocation(line: 492, column: 7, scope: !1752)
!1762 = !DILocation(line: 492, column: 5, scope: !1752)
!1763 = !DILocation(line: 493, column: 2, scope: !1752)
!1764 = !DILocation(line: 489, column: 24, scope: !1748)
!1765 = !DILocation(line: 489, column: 2, scope: !1748)
!1766 = distinct !{!1766, !1750, !1767, !411, !222}
!1767 = !DILocation(line: 493, column: 2, scope: !1745)
!1768 = !DILocation(line: 495, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !972, file: !2, line: 495, column: 2)
!1770 = !DILocation(line: 495, column: 7, scope: !1769)
!1771 = !DILocation(line: 495, column: 14, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 495, column: 2)
!1773 = !DILocation(line: 495, column: 18, scope: !1772)
!1774 = !DILocation(line: 495, column: 16, scope: !1772)
!1775 = !DILocation(line: 495, column: 2, scope: !1769)
!1776 = !DILocation(line: 496, column: 24, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 495, column: 34)
!1778 = !DILocation(line: 496, column: 29, scope: !1777)
!1779 = !DILocation(line: 496, column: 32, scope: !1777)
!1780 = !DILocation(line: 496, column: 8, scope: !1777)
!1781 = !DILocation(line: 496, column: 6, scope: !1777)
!1782 = !DILocation(line: 497, column: 27, scope: !1777)
!1783 = !DILocation(line: 497, column: 29, scope: !1777)
!1784 = !DILocation(line: 497, column: 3, scope: !1777)
!1785 = !DILocation(line: 497, column: 8, scope: !1777)
!1786 = !DILocation(line: 497, column: 18, scope: !1777)
!1787 = !DILocation(line: 497, column: 23, scope: !1777)
!1788 = !DILocation(line: 498, column: 3, scope: !1777)
!1789 = !DILocation(line: 498, column: 13, scope: !1777)
!1790 = !DILocation(line: 498, column: 16, scope: !1777)
!1791 = !DILocation(line: 499, column: 2, scope: !1777)
!1792 = !DILocation(line: 495, column: 30, scope: !1772)
!1793 = !DILocation(line: 495, column: 2, scope: !1772)
!1794 = distinct !{!1794, !1775, !1795, !411, !222}
!1795 = !DILocation(line: 499, column: 2, scope: !1769)
!1796 = !DILocation(line: 504, column: 6, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !972, file: !2, line: 504, column: 6)
!1798 = !DILocation(line: 504, column: 6, scope: !972)
!1799 = !DILocation(line: 505, column: 7, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 505, column: 7)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 504, column: 17)
!1802 = !DILocation(line: 505, column: 18, scope: !1800)
!1803 = !DILocation(line: 505, column: 15, scope: !1800)
!1804 = !DILocation(line: 505, column: 7, scope: !1801)
!1805 = !DILocation(line: 506, column: 4, scope: !1800)
!1806 = !DILocation(line: 507, column: 18, scope: !1801)
!1807 = !DILocation(line: 507, column: 23, scope: !1801)
!1808 = !DILocation(line: 507, column: 3, scope: !1801)
!1809 = !DILocation(line: 507, column: 7, scope: !1801)
!1810 = !DILocation(line: 507, column: 16, scope: !1801)
!1811 = !DILocation(line: 508, column: 38, scope: !1801)
!1812 = !DILocation(line: 508, column: 42, scope: !1801)
!1813 = !DILocation(line: 508, column: 50, scope: !1801)
!1814 = !DILocation(line: 508, column: 22, scope: !1801)
!1815 = !DILocation(line: 508, column: 3, scope: !1801)
!1816 = !DILocation(line: 508, column: 7, scope: !1801)
!1817 = !DILocation(line: 508, column: 20, scope: !1801)
!1818 = !DILocation(line: 509, column: 3, scope: !1801)
!1819 = !DILocation(line: 509, column: 7, scope: !1801)
!1820 = !DILocation(line: 509, column: 16, scope: !1801)
!1821 = !DILocation(line: 510, column: 3, scope: !1801)
!1822 = !DILocation(line: 510, column: 7, scope: !1801)
!1823 = !DILocation(line: 510, column: 25, scope: !1801)
!1824 = !DILocation(line: 511, column: 2, scope: !1801)
!1825 = !DILocation(line: 512, column: 19, scope: !972)
!1826 = !DILocation(line: 512, column: 2, scope: !972)
!1827 = !DILocation(line: 512, column: 6, scope: !972)
!1828 = !DILocation(line: 512, column: 17, scope: !972)
!1829 = !DILocation(line: 514, column: 2, scope: !972)
!1830 = !DILocation(line: 515, column: 1, scope: !972)
