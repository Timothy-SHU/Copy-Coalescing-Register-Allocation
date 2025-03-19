; ModuleID = 'lib/zlib_inflate/infutil.c'
source_filename = "lib/zlib_inflate/infutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflate_blob(ptr noundef %gunzip_buf, i32 noundef %sz, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !40 {
entry:
  %gunzip_buf.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %zbuf = alloca ptr, align 8
  %strm = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %gunzip_buf, ptr %gunzip_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gunzip_buf.addr, metadata !47, metadata !DIExpression()), !dbg !88
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !48, metadata !DIExpression()), !dbg !89
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !49, metadata !DIExpression()), !dbg !90
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !50, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %zbuf) #11, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %zbuf, metadata !51, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !94
  store ptr %0, ptr %zbuf, align 8, !dbg !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %strm) #11, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %strm, metadata !59, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !85, metadata !DIExpression()), !dbg !98
  store i32 -12, ptr %rc, align 4, !dbg !99
  %call = call noalias ptr @kmalloc(i64 noundef 96, i32 noundef 3264) #12, !dbg !100
  store ptr %call, ptr %strm, align 8, !dbg !101
  %1 = load ptr, ptr %strm, align 8, !dbg !102
  %cmp = icmp eq ptr %1, null, !dbg !104
  br i1 %cmp, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  br label %gunzip_nomem1, !dbg !106

if.end:                                           ; preds = %entry
  %call1 = call i32 @zlib_inflate_workspacesize() #13, !dbg !107
  %conv = sext i32 %call1 to i64, !dbg !107
  %call2 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #12, !dbg !108
  %2 = load ptr, ptr %strm, align 8, !dbg !109
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 8, !dbg !110
  store ptr %call2, ptr %workspace, align 8, !dbg !111
  %3 = load ptr, ptr %strm, align 8, !dbg !112
  %workspace3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 8, !dbg !114
  %4 = load ptr, ptr %workspace3, align 8, !dbg !114
  %cmp4 = icmp eq ptr %4, null, !dbg !115
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !116

if.then6:                                         ; preds = %if.end
  br label %gunzip_nomem2, !dbg !117

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %zbuf, align 8, !dbg !118
  %6 = load ptr, ptr %strm, align 8, !dbg !119
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 0, !dbg !120
  store ptr %5, ptr %next_in, align 8, !dbg !121
  %7 = load i32, ptr %len.addr, align 4, !dbg !122
  %conv8 = zext i32 %7 to i64, !dbg !122
  %8 = load ptr, ptr %strm, align 8, !dbg !123
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1, !dbg !124
  store i64 %conv8, ptr %avail_in, align 8, !dbg !125
  %9 = load ptr, ptr %gunzip_buf.addr, align 8, !dbg !126
  %10 = load ptr, ptr %strm, align 8, !dbg !127
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 3, !dbg !128
  store ptr %9, ptr %next_out, align 8, !dbg !129
  %11 = load i32, ptr %sz.addr, align 4, !dbg !130
  %conv9 = zext i32 %11 to i64, !dbg !130
  %12 = load ptr, ptr %strm, align 8, !dbg !131
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 4, !dbg !132
  store i64 %conv9, ptr %avail_out, align 8, !dbg !133
  %13 = load ptr, ptr %strm, align 8, !dbg !134
  %call10 = call i32 @zlib_inflateInit2(ptr noundef %13, i32 noundef -15) #13, !dbg !135
  store i32 %call10, ptr %rc, align 4, !dbg !136
  %14 = load i32, ptr %rc, align 4, !dbg !137
  %cmp11 = icmp eq i32 %14, 0, !dbg !139
  br i1 %cmp11, label %if.then13, label %if.else23, !dbg !140

if.then13:                                        ; preds = %if.end7
  %15 = load ptr, ptr %strm, align 8, !dbg !141
  %call14 = call i32 @zlib_inflate(ptr noundef %15, i32 noundef 5) #13, !dbg !143
  store i32 %call14, ptr %rc, align 4, !dbg !144
  %16 = load i32, ptr %rc, align 4, !dbg !145
  %cmp15 = icmp eq i32 %16, 1, !dbg !147
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !148

if.then17:                                        ; preds = %if.then13
  %17 = load i32, ptr %sz.addr, align 4, !dbg !149
  %conv18 = zext i32 %17 to i64, !dbg !149
  %18 = load ptr, ptr %strm, align 8, !dbg !150
  %avail_out19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4, !dbg !151
  %19 = load i64, ptr %avail_out19, align 8, !dbg !151
  %sub = sub i64 %conv18, %19, !dbg !152
  %conv20 = trunc i64 %sub to i32, !dbg !149
  store i32 %conv20, ptr %rc, align 4, !dbg !153
  br label %if.end21, !dbg !154

if.else:                                          ; preds = %if.then13
  store i32 -22, ptr %rc, align 4, !dbg !155
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %20 = load ptr, ptr %strm, align 8, !dbg !156
  %call22 = call i32 @zlib_inflateEnd(ptr noundef %20) #13, !dbg !157
  br label %if.end24, !dbg !158

if.else23:                                        ; preds = %if.end7
  store i32 -22, ptr %rc, align 4, !dbg !159
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.end21
  %21 = load ptr, ptr %strm, align 8, !dbg !160
  %workspace25 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 8, !dbg !161
  %22 = load ptr, ptr %workspace25, align 8, !dbg !161
  call void @kfree(ptr noundef %22) #13, !dbg !162
  br label %gunzip_nomem2, !dbg !162

gunzip_nomem2:                                    ; preds = %if.end24, %if.then6
  call void @llvm.dbg.label(metadata !86), !dbg !163
  %23 = load ptr, ptr %strm, align 8, !dbg !164
  call void @kfree(ptr noundef %23) #13, !dbg !165
  br label %gunzip_nomem1, !dbg !165

gunzip_nomem1:                                    ; preds = %gunzip_nomem2, %if.then
  call void @llvm.dbg.label(metadata !87), !dbg !166
  %24 = load i32, ptr %rc, align 4, !dbg !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !168
  call void @llvm.lifetime.end.p0(i64 8, ptr %strm) #11, !dbg !168
  call void @llvm.lifetime.end.p0(i64 8, ptr %zbuf) #11, !dbg !168
  ret i32 %24, !dbg !169
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !170 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !178, metadata !DIExpression()), !dbg !183
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !179, metadata !DIExpression()), !dbg !184
  %0 = load i64, ptr %size.addr, align 8, !dbg !185
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !186
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !187

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !188
  %tobool = icmp ne i64 %2, 0, !dbg !188
  br i1 %tobool, label %if.then, label %if.end7, !dbg !189

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #11, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %index, metadata !180, metadata !DIExpression()), !dbg !191
  %3 = load i64, ptr %size.addr, align 8, !dbg !192
  %cmp = icmp ugt i64 %3, 8192, !dbg !194
  br i1 %cmp, label %if.then1, label %if.end, !dbg !195

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !196
  %5 = load i32, ptr %flags.addr, align 4, !dbg !197
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #12, !dbg !198
  store ptr %call, ptr %retval, align 8, !dbg !199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !199

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !200
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !200
  store i32 %call2, ptr %index, align 4, !dbg !201
  %7 = load i32, ptr %flags.addr, align 4, !dbg !202
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !203
  %9 = ptrtoint ptr %8 to i64, !dbg !203
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !204
  %idxprom = zext i32 %call3 to i64, !dbg !205
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !205
  %10 = load i32, ptr %index, align 4, !dbg !206
  %idxprom4 = zext i32 %10 to i64, !dbg !205
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !205
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !205
  %12 = load i32, ptr %flags.addr, align 4, !dbg !207
  %13 = load i64, ptr %size.addr, align 8, !dbg !208
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #14, !dbg !209
  store ptr %call6, ptr %retval, align 8, !dbg !210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !210

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #11, !dbg !211
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !212
  %15 = load i32, ptr %flags.addr, align 4, !dbg !213
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #12, !dbg !214
  store ptr %call8, ptr %retval, align 8, !dbg !215
  br label %return, !dbg !215

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !216
  ret ptr %16, !dbg !216
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !217 dso_local i32 @zlib_inflate_workspacesize() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !220 dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !226 dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !227 dso_local i32 @zlib_inflateEnd(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !230 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !233 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !234 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !240, metadata !DIExpression()), !dbg !242
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !241, metadata !DIExpression()), !dbg !243
  %0 = load i64, ptr %size.addr, align 8, !dbg !244
  %tobool = icmp ne i64 %0, 0, !dbg !244
  br i1 %tobool, label %if.end, label %if.then, !dbg !246

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !247
  br label %return, !dbg !247

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !248
  %cmp = icmp ule i64 %1, 8, !dbg !250
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !251

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !252
  br label %return, !dbg !252

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !253
  %cmp3 = icmp ugt i64 %2, 64, !dbg !255
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !256

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !257
  %cmp4 = icmp ule i64 %3, 96, !dbg !258
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !259

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !260
  br label %return, !dbg !260

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !261
  %cmp7 = icmp ugt i64 %4, 128, !dbg !263
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !264

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !265
  %cmp9 = icmp ule i64 %5, 192, !dbg !266
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !267

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !268
  br label %return, !dbg !268

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !269
  %cmp12 = icmp ule i64 %6, 8, !dbg !271
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !272

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !273
  br label %return, !dbg !273

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !274
  %cmp15 = icmp ule i64 %7, 16, !dbg !276
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !277

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !278
  br label %return, !dbg !278

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !279
  %cmp18 = icmp ule i64 %8, 32, !dbg !281
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !282

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !283
  br label %return, !dbg !283

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !284
  %cmp21 = icmp ule i64 %9, 64, !dbg !286
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !287

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !288
  br label %return, !dbg !288

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !289
  %cmp24 = icmp ule i64 %10, 128, !dbg !291
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !292

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !293
  br label %return, !dbg !293

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !294
  %cmp27 = icmp ule i64 %11, 256, !dbg !296
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !297

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !298
  br label %return, !dbg !298

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !299
  %cmp30 = icmp ule i64 %12, 512, !dbg !301
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !302

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !303
  br label %return, !dbg !303

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !304
  %cmp33 = icmp ule i64 %13, 1024, !dbg !306
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !307

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !308
  br label %return, !dbg !308

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !309
  %cmp36 = icmp ule i64 %14, 2048, !dbg !311
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !312

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !313
  br label %return, !dbg !313

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !314
  %cmp39 = icmp ule i64 %15, 4096, !dbg !316
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !317

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !318
  br label %return, !dbg !318

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !319
  %cmp42 = icmp ule i64 %16, 8192, !dbg !321
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !322

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !323
  br label %return, !dbg !323

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !324
  %cmp45 = icmp ule i64 %17, 16384, !dbg !326
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !327

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !328
  br label %return, !dbg !328

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !329
  %cmp48 = icmp ule i64 %18, 32768, !dbg !331
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !332

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !333
  br label %return, !dbg !333

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !334
  %cmp51 = icmp ule i64 %19, 65536, !dbg !336
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !337

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !338
  br label %return, !dbg !338

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !339
  %cmp54 = icmp ule i64 %20, 131072, !dbg !341
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !342

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !343
  br label %return, !dbg !343

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !344
  %cmp57 = icmp ule i64 %21, 262144, !dbg !346
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !347

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !348
  br label %return, !dbg !348

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !349
  %cmp60 = icmp ule i64 %22, 524288, !dbg !351
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !352

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !353
  br label %return, !dbg !353

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !354
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !356
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !357

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !358
  br label %return, !dbg !358

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !359
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !361
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !362

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !363
  br label %return, !dbg !363

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !364, !range !366, !noundef !367
  %tobool69 = trunc i8 %25 to i1, !dbg !364
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !368

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !369

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #15, !dbg !370, !srcloc !373
  unreachable, !dbg !370

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !374

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !375

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !376

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !378

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !376

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #11, !dbg !380, !srcloc !382
  br label %do.end75, !dbg !380

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !376

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !383
  br label %return, !dbg !383

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !384
  ret i32 %26, !dbg !384
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !385 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !391 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !395, metadata !DIExpression()), !dbg !397
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !396, metadata !DIExpression()), !dbg !398
  %0 = load i32, ptr %flags.addr, align 4, !dbg !399
  %and = and i32 %0, 17, !dbg !399
  %cmp = icmp eq i32 %and, 0, !dbg !399
  %lnot = xor i1 %cmp, true, !dbg !399
  %lnot1 = xor i1 %lnot, true, !dbg !399
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !399
  %conv = sext i32 %lnot.ext to i64, !dbg !399
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !399
  %tobool = icmp ne i64 %expval, 0, !dbg !399
  br i1 %tobool, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !402
  br label %return, !dbg !402

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !403
  %and2 = and i32 %1, 1, !dbg !405
  %tobool3 = icmp ne i32 %and2, 0, !dbg !405
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !406

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !407
  br label %return, !dbg !407

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !408
  br label %return, !dbg !408

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !410
  ret i32 %2, !dbg !410
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !411 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !412 dso_local void @__compiletime_assert_117() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
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
attributes #11 = { nounwind }
attributes #12 = { noredzone allocsize(0) }
attributes #13 = { noredzone }
attributes #14 = { noredzone allocsize(2) }
attributes #15 = { noredzone noreturn }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zlib_inflate/.infutil.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zlib_inflate/zlib_inflate\22 -D KBUILD_BASENAME=\22infutil\22 -D KBUILD_MODNAME=\22zlib_inflate\22 -D __KBUILD_MODNAME=kmod_zlib_inflate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zlib_inflate/infutil.ll lib/zlib_inflate/infutil.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !25, globals: !30, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "lib/zlib_inflate/infutil.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eced6cf3ecd7962a46fa971012186f2f")
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
!40 = distinct !DISubprogram(name: "zlib_inflate_blob", scope: !8, file: !8, line: 9, type: !41, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !46)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !28, !12, !44, !12}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!46 = !{!47, !48, !49, !50, !51, !59, !85, !86, !87}
!47 = !DILocalVariable(name: "gunzip_buf", arg: 1, scope: !40, file: !8, line: 9, type: !28)
!48 = !DILocalVariable(name: "sz", arg: 2, scope: !40, file: !8, line: 9, type: !12)
!49 = !DILocalVariable(name: "buf", arg: 3, scope: !40, file: !8, line: 10, type: !44)
!50 = !DILocalVariable(name: "len", arg: 4, scope: !40, file: !8, line: 10, type: !12)
!51 = !DILocalVariable(name: "zbuf", scope: !40, file: !8, line: 12, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 17, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !57, line: 21, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DILocalVariable(name: "strm", scope: !40, file: !8, line: 13, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !62, line: 84, size: 768, elements: !63)
!62 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!63 = !{!64, !69, !71, !72, !74, !75, !76, !78, !81, !82, !83, !84}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !61, file: !62, line: 85, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !68, line: 52, baseType: !58)
!68 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !61, file: !62, line: 86, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !68, line: 54, baseType: !29)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !61, file: !62, line: 87, baseType: !70, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !61, file: !62, line: 89, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !61, file: !62, line: 90, baseType: !70, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !61, file: !62, line: 91, baseType: !70, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !61, file: !62, line: 93, baseType: !77, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !61, file: !62, line: 94, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !62, line: 82, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !61, file: !62, line: 96, baseType: !28, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !61, file: !62, line: 98, baseType: !43, size: 32, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !61, file: !62, line: 99, baseType: !70, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !61, file: !62, line: 100, baseType: !70, size: 64, offset: 704)
!85 = !DILocalVariable(name: "rc", scope: !40, file: !8, line: 14, type: !43)
!86 = !DILabel(scope: !40, name: "gunzip_nomem2", file: !8, line: 45)
!87 = !DILabel(scope: !40, name: "gunzip_nomem1", file: !8, line: 47)
!88 = !DILocation(line: 9, column: 29, scope: !40)
!89 = !DILocation(line: 9, column: 54, scope: !40)
!90 = !DILocation(line: 10, column: 21, scope: !40)
!91 = !DILocation(line: 10, column: 39, scope: !40)
!92 = !DILocation(line: 12, column: 2, scope: !40)
!93 = !DILocation(line: 12, column: 12, scope: !40)
!94 = !DILocation(line: 12, column: 19, scope: !40)
!95 = !DILocation(line: 13, column: 2, scope: !40)
!96 = !DILocation(line: 13, column: 21, scope: !40)
!97 = !DILocation(line: 14, column: 2, scope: !40)
!98 = !DILocation(line: 14, column: 6, scope: !40)
!99 = !DILocation(line: 16, column: 5, scope: !40)
!100 = !DILocation(line: 17, column: 9, scope: !40)
!101 = !DILocation(line: 17, column: 7, scope: !40)
!102 = !DILocation(line: 18, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !40, file: !8, line: 18, column: 6)
!104 = !DILocation(line: 18, column: 11, scope: !103)
!105 = !DILocation(line: 18, column: 6, scope: !40)
!106 = !DILocation(line: 19, column: 3, scope: !103)
!107 = !DILocation(line: 20, column: 28, scope: !40)
!108 = !DILocation(line: 20, column: 20, scope: !40)
!109 = !DILocation(line: 20, column: 2, scope: !40)
!110 = !DILocation(line: 20, column: 8, scope: !40)
!111 = !DILocation(line: 20, column: 18, scope: !40)
!112 = !DILocation(line: 21, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !40, file: !8, line: 21, column: 6)
!114 = !DILocation(line: 21, column: 12, scope: !113)
!115 = !DILocation(line: 21, column: 22, scope: !113)
!116 = !DILocation(line: 21, column: 6, scope: !40)
!117 = !DILocation(line: 22, column: 3, scope: !113)
!118 = !DILocation(line: 27, column: 18, scope: !40)
!119 = !DILocation(line: 27, column: 2, scope: !40)
!120 = !DILocation(line: 27, column: 8, scope: !40)
!121 = !DILocation(line: 27, column: 16, scope: !40)
!122 = !DILocation(line: 28, column: 19, scope: !40)
!123 = !DILocation(line: 28, column: 2, scope: !40)
!124 = !DILocation(line: 28, column: 8, scope: !40)
!125 = !DILocation(line: 28, column: 17, scope: !40)
!126 = !DILocation(line: 29, column: 19, scope: !40)
!127 = !DILocation(line: 29, column: 2, scope: !40)
!128 = !DILocation(line: 29, column: 8, scope: !40)
!129 = !DILocation(line: 29, column: 17, scope: !40)
!130 = !DILocation(line: 30, column: 20, scope: !40)
!131 = !DILocation(line: 30, column: 2, scope: !40)
!132 = !DILocation(line: 30, column: 8, scope: !40)
!133 = !DILocation(line: 30, column: 18, scope: !40)
!134 = !DILocation(line: 32, column: 25, scope: !40)
!135 = !DILocation(line: 32, column: 7, scope: !40)
!136 = !DILocation(line: 32, column: 5, scope: !40)
!137 = !DILocation(line: 33, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !40, file: !8, line: 33, column: 6)
!139 = !DILocation(line: 33, column: 9, scope: !138)
!140 = !DILocation(line: 33, column: 6, scope: !40)
!141 = !DILocation(line: 34, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !8, line: 33, column: 18)
!143 = !DILocation(line: 34, column: 8, scope: !142)
!144 = !DILocation(line: 34, column: 6, scope: !142)
!145 = !DILocation(line: 36, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !8, line: 36, column: 7)
!147 = !DILocation(line: 36, column: 10, scope: !146)
!148 = !DILocation(line: 36, column: 7, scope: !142)
!149 = !DILocation(line: 37, column: 9, scope: !146)
!150 = !DILocation(line: 37, column: 14, scope: !146)
!151 = !DILocation(line: 37, column: 20, scope: !146)
!152 = !DILocation(line: 37, column: 12, scope: !146)
!153 = !DILocation(line: 37, column: 7, scope: !146)
!154 = !DILocation(line: 37, column: 4, scope: !146)
!155 = !DILocation(line: 39, column: 7, scope: !146)
!156 = !DILocation(line: 40, column: 19, scope: !142)
!157 = !DILocation(line: 40, column: 3, scope: !142)
!158 = !DILocation(line: 41, column: 2, scope: !142)
!159 = !DILocation(line: 42, column: 6, scope: !138)
!160 = !DILocation(line: 44, column: 8, scope: !40)
!161 = !DILocation(line: 44, column: 14, scope: !40)
!162 = !DILocation(line: 44, column: 2, scope: !40)
!163 = !DILocation(line: 45, column: 1, scope: !40)
!164 = !DILocation(line: 46, column: 8, scope: !40)
!165 = !DILocation(line: 46, column: 2, scope: !40)
!166 = !DILocation(line: 47, column: 1, scope: !40)
!167 = !DILocation(line: 48, column: 9, scope: !40)
!168 = !DILocation(line: 49, column: 1, scope: !40)
!169 = !DILocation(line: 48, column: 2, scope: !40)
!170 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !171, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !177)
!171 = !DISubroutineType(types: !172)
!172 = !{!28, !173, !26}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !175, line: 72, baseType: !176)
!175 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !175, line: 16, baseType: !29)
!177 = !{!178, !179, !180}
!178 = !DILocalVariable(name: "size", arg: 1, scope: !170, file: !2, line: 591, type: !173)
!179 = !DILocalVariable(name: "flags", arg: 2, scope: !170, file: !2, line: 591, type: !26)
!180 = !DILocalVariable(name: "index", scope: !181, file: !2, line: 594, type: !12)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 593, column: 42)
!182 = distinct !DILexicalBlock(scope: !170, file: !2, line: 593, column: 6)
!183 = !DILocation(line: 591, column: 61, scope: !170)
!184 = !DILocation(line: 591, column: 73, scope: !170)
!185 = !DILocation(line: 593, column: 27, scope: !182)
!186 = !DILocation(line: 593, column: 6, scope: !182)
!187 = !DILocation(line: 593, column: 33, scope: !182)
!188 = !DILocation(line: 593, column: 36, scope: !182)
!189 = !DILocation(line: 593, column: 6, scope: !170)
!190 = !DILocation(line: 594, column: 3, scope: !181)
!191 = !DILocation(line: 594, column: 16, scope: !181)
!192 = !DILocation(line: 596, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !181, file: !2, line: 596, column: 7)
!194 = !DILocation(line: 596, column: 12, scope: !193)
!195 = !DILocation(line: 596, column: 7, scope: !181)
!196 = !DILocation(line: 597, column: 25, scope: !193)
!197 = !DILocation(line: 597, column: 31, scope: !193)
!198 = !DILocation(line: 597, column: 11, scope: !193)
!199 = !DILocation(line: 597, column: 4, scope: !193)
!200 = !DILocation(line: 599, column: 11, scope: !181)
!201 = !DILocation(line: 599, column: 9, scope: !181)
!202 = !DILocation(line: 601, column: 33, scope: !181)
!203 = !DILocation(line: 601, column: 40, scope: !181)
!204 = !DILocation(line: 601, column: 20, scope: !181)
!205 = !DILocation(line: 601, column: 5, scope: !181)
!206 = !DILocation(line: 601, column: 51, scope: !181)
!207 = !DILocation(line: 602, column: 5, scope: !181)
!208 = !DILocation(line: 602, column: 12, scope: !181)
!209 = !DILocation(line: 600, column: 10, scope: !181)
!210 = !DILocation(line: 600, column: 3, scope: !181)
!211 = !DILocation(line: 603, column: 2, scope: !182)
!212 = !DILocation(line: 604, column: 19, scope: !170)
!213 = !DILocation(line: 604, column: 25, scope: !170)
!214 = !DILocation(line: 604, column: 9, scope: !170)
!215 = !DILocation(line: 604, column: 2, scope: !170)
!216 = !DILocation(line: 605, column: 1, scope: !170)
!217 = !DISubprogram(name: "zlib_inflate_workspacesize", scope: !62, file: !62, line: 315, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!43}
!220 = !DISubprogram(name: "zlib_inflateInit2", scope: !62, file: !62, line: 589, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{!43, !223, !43}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !62, line: 103, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !62, line: 101, baseType: !61)
!226 = !DISubprogram(name: "zlib_inflate", scope: !62, file: !62, line: 343, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubprogram(name: "zlib_inflateEnd", scope: !62, file: !62, line: 442, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!43, !223}
!230 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !44}
!233 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !235, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !239)
!235 = !DISubroutineType(types: !236)
!236 = !{!12, !173, !237}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !238)
!238 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "size", arg: 1, scope: !234, file: !2, line: 444, type: !173)
!241 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !234, file: !2, line: 445, type: !237)
!242 = !DILocation(line: 444, column: 60, scope: !234)
!243 = !DILocation(line: 445, column: 16, scope: !234)
!244 = !DILocation(line: 447, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !234, file: !2, line: 447, column: 6)
!246 = !DILocation(line: 447, column: 6, scope: !234)
!247 = !DILocation(line: 448, column: 3, scope: !245)
!248 = !DILocation(line: 450, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !234, file: !2, line: 450, column: 6)
!250 = !DILocation(line: 450, column: 11, scope: !249)
!251 = !DILocation(line: 450, column: 6, scope: !234)
!252 = !DILocation(line: 451, column: 3, scope: !249)
!253 = !DILocation(line: 453, column: 32, scope: !254)
!254 = distinct !DILexicalBlock(scope: !234, file: !2, line: 453, column: 6)
!255 = !DILocation(line: 453, column: 37, scope: !254)
!256 = !DILocation(line: 453, column: 42, scope: !254)
!257 = !DILocation(line: 453, column: 45, scope: !254)
!258 = !DILocation(line: 453, column: 50, scope: !254)
!259 = !DILocation(line: 453, column: 6, scope: !234)
!260 = !DILocation(line: 454, column: 3, scope: !254)
!261 = !DILocation(line: 455, column: 32, scope: !262)
!262 = distinct !DILexicalBlock(scope: !234, file: !2, line: 455, column: 6)
!263 = !DILocation(line: 455, column: 37, scope: !262)
!264 = !DILocation(line: 455, column: 43, scope: !262)
!265 = !DILocation(line: 455, column: 46, scope: !262)
!266 = !DILocation(line: 455, column: 51, scope: !262)
!267 = !DILocation(line: 455, column: 6, scope: !234)
!268 = !DILocation(line: 456, column: 3, scope: !262)
!269 = !DILocation(line: 457, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !234, file: !2, line: 457, column: 6)
!271 = !DILocation(line: 457, column: 11, scope: !270)
!272 = !DILocation(line: 457, column: 6, scope: !234)
!273 = !DILocation(line: 457, column: 26, scope: !270)
!274 = !DILocation(line: 458, column: 6, scope: !275)
!275 = distinct !DILexicalBlock(scope: !234, file: !2, line: 458, column: 6)
!276 = !DILocation(line: 458, column: 11, scope: !275)
!277 = !DILocation(line: 458, column: 6, scope: !234)
!278 = !DILocation(line: 458, column: 26, scope: !275)
!279 = !DILocation(line: 459, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !234, file: !2, line: 459, column: 6)
!281 = !DILocation(line: 459, column: 11, scope: !280)
!282 = !DILocation(line: 459, column: 6, scope: !234)
!283 = !DILocation(line: 459, column: 26, scope: !280)
!284 = !DILocation(line: 460, column: 6, scope: !285)
!285 = distinct !DILexicalBlock(scope: !234, file: !2, line: 460, column: 6)
!286 = !DILocation(line: 460, column: 11, scope: !285)
!287 = !DILocation(line: 460, column: 6, scope: !234)
!288 = !DILocation(line: 460, column: 26, scope: !285)
!289 = !DILocation(line: 461, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !234, file: !2, line: 461, column: 6)
!291 = !DILocation(line: 461, column: 11, scope: !290)
!292 = !DILocation(line: 461, column: 6, scope: !234)
!293 = !DILocation(line: 461, column: 26, scope: !290)
!294 = !DILocation(line: 462, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !234, file: !2, line: 462, column: 6)
!296 = !DILocation(line: 462, column: 11, scope: !295)
!297 = !DILocation(line: 462, column: 6, scope: !234)
!298 = !DILocation(line: 462, column: 26, scope: !295)
!299 = !DILocation(line: 463, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !234, file: !2, line: 463, column: 6)
!301 = !DILocation(line: 463, column: 11, scope: !300)
!302 = !DILocation(line: 463, column: 6, scope: !234)
!303 = !DILocation(line: 463, column: 26, scope: !300)
!304 = !DILocation(line: 464, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !234, file: !2, line: 464, column: 6)
!306 = !DILocation(line: 464, column: 11, scope: !305)
!307 = !DILocation(line: 464, column: 6, scope: !234)
!308 = !DILocation(line: 464, column: 26, scope: !305)
!309 = !DILocation(line: 465, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !234, file: !2, line: 465, column: 6)
!311 = !DILocation(line: 465, column: 11, scope: !310)
!312 = !DILocation(line: 465, column: 6, scope: !234)
!313 = !DILocation(line: 465, column: 26, scope: !310)
!314 = !DILocation(line: 466, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !234, file: !2, line: 466, column: 6)
!316 = !DILocation(line: 466, column: 11, scope: !315)
!317 = !DILocation(line: 466, column: 6, scope: !234)
!318 = !DILocation(line: 466, column: 26, scope: !315)
!319 = !DILocation(line: 467, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !234, file: !2, line: 467, column: 6)
!321 = !DILocation(line: 467, column: 11, scope: !320)
!322 = !DILocation(line: 467, column: 6, scope: !234)
!323 = !DILocation(line: 467, column: 26, scope: !320)
!324 = !DILocation(line: 468, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !234, file: !2, line: 468, column: 6)
!326 = !DILocation(line: 468, column: 11, scope: !325)
!327 = !DILocation(line: 468, column: 6, scope: !234)
!328 = !DILocation(line: 468, column: 26, scope: !325)
!329 = !DILocation(line: 469, column: 6, scope: !330)
!330 = distinct !DILexicalBlock(scope: !234, file: !2, line: 469, column: 6)
!331 = !DILocation(line: 469, column: 11, scope: !330)
!332 = !DILocation(line: 469, column: 6, scope: !234)
!333 = !DILocation(line: 469, column: 26, scope: !330)
!334 = !DILocation(line: 470, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !234, file: !2, line: 470, column: 6)
!336 = !DILocation(line: 470, column: 11, scope: !335)
!337 = !DILocation(line: 470, column: 6, scope: !234)
!338 = !DILocation(line: 470, column: 26, scope: !335)
!339 = !DILocation(line: 471, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !234, file: !2, line: 471, column: 6)
!341 = !DILocation(line: 471, column: 11, scope: !340)
!342 = !DILocation(line: 471, column: 6, scope: !234)
!343 = !DILocation(line: 471, column: 26, scope: !340)
!344 = !DILocation(line: 472, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !234, file: !2, line: 472, column: 6)
!346 = !DILocation(line: 472, column: 11, scope: !345)
!347 = !DILocation(line: 472, column: 6, scope: !234)
!348 = !DILocation(line: 472, column: 26, scope: !345)
!349 = !DILocation(line: 473, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !234, file: !2, line: 473, column: 6)
!351 = !DILocation(line: 473, column: 11, scope: !350)
!352 = !DILocation(line: 473, column: 6, scope: !234)
!353 = !DILocation(line: 473, column: 26, scope: !350)
!354 = !DILocation(line: 474, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !234, file: !2, line: 474, column: 6)
!356 = !DILocation(line: 474, column: 11, scope: !355)
!357 = !DILocation(line: 474, column: 6, scope: !234)
!358 = !DILocation(line: 474, column: 27, scope: !355)
!359 = !DILocation(line: 475, column: 6, scope: !360)
!360 = distinct !DILexicalBlock(scope: !234, file: !2, line: 475, column: 6)
!361 = !DILocation(line: 475, column: 11, scope: !360)
!362 = !DILocation(line: 475, column: 6, scope: !234)
!363 = !DILocation(line: 475, column: 32, scope: !360)
!364 = !DILocation(line: 477, column: 50, scope: !365)
!365 = distinct !DILexicalBlock(scope: !234, file: !2, line: 477, column: 6)
!366 = !{i8 0, i8 2}
!367 = !{}
!368 = !DILocation(line: 477, column: 6, scope: !234)
!369 = !DILocation(line: 478, column: 3, scope: !365)
!370 = !DILocation(line: 478, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 478, column: 3)
!372 = distinct !DILexicalBlock(scope: !365, file: !2, line: 478, column: 3)
!373 = !{i32 -2143526920}
!374 = !DILocation(line: 478, column: 3, scope: !372)
!375 = !DILocation(line: 480, column: 3, scope: !365)
!376 = !DILocation(line: 480, column: 3, scope: !377)
!377 = distinct !DILexicalBlock(scope: !365, file: !2, line: 480, column: 3)
!378 = !DILocation(line: 480, column: 3, scope: !379)
!379 = distinct !DILexicalBlock(scope: !377, file: !2, line: 480, column: 3)
!380 = !DILocation(line: 480, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !2, line: 480, column: 3)
!382 = !{i64 2151440579, i64 2151440608, i64 2151440654, i64 2151440712, i64 2151440766, i64 2151440820, i64 2151440875, i64 2151440906}
!383 = !DILocation(line: 483, column: 2, scope: !234)
!384 = !DILocation(line: 484, column: 1, scope: !234)
!385 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubroutineType(types: !387)
!387 = !{!28, !388, !26, !173}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !390, line: 11, flags: DIFlagFwdDecl)
!390 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!391 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !392, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!16, !26, !29}
!394 = !{!395, !396}
!395 = !DILocalVariable(name: "flags", arg: 1, scope: !391, file: !2, line: 401, type: !26)
!396 = !DILocalVariable(name: "caller", arg: 2, scope: !391, file: !2, line: 401, type: !29)
!397 = !DILocation(line: 401, column: 67, scope: !391)
!398 = !DILocation(line: 401, column: 88, scope: !391)
!399 = !DILocation(line: 407, column: 6, scope: !400)
!400 = distinct !DILexicalBlock(scope: !391, file: !2, line: 407, column: 6)
!401 = !DILocation(line: 407, column: 6, scope: !391)
!402 = !DILocation(line: 413, column: 3, scope: !400)
!403 = !DILocation(line: 423, column: 38, scope: !404)
!404 = distinct !DILexicalBlock(scope: !391, file: !2, line: 423, column: 6)
!405 = !DILocation(line: 423, column: 44, scope: !404)
!406 = !DILocation(line: 423, column: 6, scope: !391)
!407 = !DILocation(line: 424, column: 3, scope: !404)
!408 = !DILocation(line: 426, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !391, file: !2, line: 425, column: 6)
!410 = !DILocation(line: 429, column: 1, scope: !391)
!411 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubprogram(name: "__compiletime_assert_117", scope: !2, file: !2, line: 478, type: !413, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{null}
