; ModuleID = 'sound/core/memory.c'
source_filename = "sound/core/memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_to_user_fromio: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_to_user_fromio ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_to_iter_fromio: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_to_iter_fromio ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_from_user_toio: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_from_user_toio ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_from_iter_toio: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_from_iter_toio ; .previous"

%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon, %union.anon.0, %union.anon.2 }
%union.anon = type { i64 }
%union.anon.0 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.2 = type { i64 }

@__UNIQUE_ID___addressable_copy_to_user_fromio289 = internal global ptr @copy_to_user_fromio, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_copy_to_iter_fromio290 = internal global ptr @copy_to_iter_fromio, section ".discard.addressable", align 8, !dbg !17
@__UNIQUE_ID___addressable_copy_from_user_toio291 = internal global ptr @copy_from_user_toio, section ".discard.addressable", align 8, !dbg !19
@__UNIQUE_ID___addressable_copy_from_iter_toio292 = internal global ptr @copy_from_iter_toio, section ".discard.addressable", align 8, !dbg !21
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !23
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_copy_to_user_fromio289, ptr @__UNIQUE_ID___addressable_copy_to_iter_fromio290, ptr @__UNIQUE_ID___addressable_copy_from_user_toio291, ptr @__UNIQUE_ID___addressable_copy_from_iter_toio292], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @copy_to_user_fromio(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !39 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %iter = alloca %struct.iov_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !52, metadata !DIExpression()), !dbg !161
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !53, metadata !DIExpression()), !dbg !162
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !54, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 40, ptr %iter) #10, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !55, metadata !DIExpression()), !dbg !165
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !166
  %1 = load i64, ptr %count.addr, align 8, !dbg !168
  %call = call i32 @import_ubuf(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef %iter) #11, !dbg !169
  %tobool = icmp ne i32 %call, 0, !dbg !169
  br i1 %tobool, label %if.then, label %if.end, !dbg !170

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %src.addr, align 8, !dbg !172
  %3 = load i64, ptr %count.addr, align 8, !dbg !173
  %call1 = call i32 @copy_to_iter_fromio(ptr noundef %iter, ptr noundef %2, i64 noundef %3) #11, !dbg !174
  store i32 %call1, ptr %retval, align 4, !dbg !175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !175

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %iter) #10, !dbg !176
  %4 = load i32, ptr %retval, align 4, !dbg !176
  ret i32 %4, !dbg !176
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !177 dso_local i32 @import_ubuf(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @copy_to_iter_fromio(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !181 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %c = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !185, metadata !DIExpression()), !dbg !194
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !186, metadata !DIExpression()), !dbg !195
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #10, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !188, metadata !DIExpression()), !dbg !198
  br label %while.cond, !dbg !199

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !200
  %tobool = icmp ne i64 %0, 0, !dbg !199
  br i1 %tobool, label %while.body, label %while.end, !dbg !199

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %c, metadata !192, metadata !DIExpression()), !dbg !202
  %1 = load i64, ptr %count.addr, align 8, !dbg !203
  store i64 %1, ptr %c, align 8, !dbg !202
  %2 = load i64, ptr %c, align 8, !dbg !204
  %cmp = icmp ugt i64 %2, 256, !dbg !206
  br i1 %cmp, label %if.then, label %if.end, !dbg !207

if.then:                                          ; preds = %while.body
  store i64 256, ptr %c, align 8, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0, !dbg !210
  %3 = load ptr, ptr %src.addr, align 8, !dbg !211
  %4 = load i64, ptr %c, align 8, !dbg !212
  call void @memcpy_fromio(ptr noundef %arraydecay, ptr noundef %3, i64 noundef %4) #11, !dbg !213
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0, !dbg !214
  %5 = load i64, ptr %c, align 8, !dbg !216
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !217
  %call = call i64 @copy_to_iter(ptr noundef %arraydecay1, i64 noundef %5, ptr noundef %6) #11, !dbg !218
  %7 = load i64, ptr %c, align 8, !dbg !219
  %cmp2 = icmp ne i64 %call, %7, !dbg !220
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !221

if.then3:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !222

if.end4:                                          ; preds = %if.end
  %8 = load i64, ptr %c, align 8, !dbg !223
  %9 = load i64, ptr %count.addr, align 8, !dbg !224
  %sub = sub i64 %9, %8, !dbg !224
  store i64 %sub, ptr %count.addr, align 8, !dbg !224
  %10 = load i64, ptr %c, align 8, !dbg !225
  %11 = load ptr, ptr %src.addr, align 8, !dbg !226
  %add.ptr = getelementptr i8, ptr %11, i64 %10, !dbg !226
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !226
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !227
  br label %cleanup, !dbg !227

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10, !dbg !227
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !199, !llvm.loop !228

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !231

cleanup5:                                         ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #10, !dbg !232
  %12 = load i32, ptr %retval, align 4, !dbg !232
  ret i32 %12, !dbg !232
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !233 dso_local void @memcpy_fromio(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #4 align 16 !dbg !237 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !241, metadata !DIExpression()), !dbg !244
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !242, metadata !DIExpression()), !dbg !245
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !243, metadata !DIExpression()), !dbg !246
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !247
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !249
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #11, !dbg !250
  br i1 %call, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !252
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !253
  %4 = load ptr, ptr %i.addr, align 8, !dbg !254
  %call1 = call i64 @_copy_to_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #11, !dbg !255
  store i64 %call1, ptr %retval, align 8, !dbg !256
  br label %return, !dbg !256

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !257
  br label %return, !dbg !257

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !258
  ret i64 %5, !dbg !258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @copy_from_user_toio(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !259 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %iter = alloca %struct.iov_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !264, metadata !DIExpression()), !dbg !268
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !265, metadata !DIExpression()), !dbg !269
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !266, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 40, ptr %iter) #10, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !267, metadata !DIExpression()), !dbg !272
  %0 = load ptr, ptr %src.addr, align 8, !dbg !273
  %1 = load i64, ptr %count.addr, align 8, !dbg !275
  %call = call i32 @import_ubuf(i32 noundef 1, ptr noundef %0, i64 noundef %1, ptr noundef %iter) #11, !dbg !276
  %tobool = icmp ne i32 %call, 0, !dbg !276
  br i1 %tobool, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !279
  %3 = load i64, ptr %count.addr, align 8, !dbg !280
  %call1 = call i32 @copy_from_iter_toio(ptr noundef %2, ptr noundef %iter, i64 noundef %3) #11, !dbg !281
  store i32 %call1, ptr %retval, align 4, !dbg !282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !282

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %iter) #10, !dbg !283
  %4 = load i32, ptr %retval, align 4, !dbg !283
  ret i32 %4, !dbg !283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @copy_from_iter_toio(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !284 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %c = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !288, metadata !DIExpression()), !dbg !294
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !289, metadata !DIExpression()), !dbg !295
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !290, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #10, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !291, metadata !DIExpression()), !dbg !298
  br label %while.cond, !dbg !299

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !300
  %tobool = icmp ne i64 %0, 0, !dbg !299
  br i1 %tobool, label %while.body, label %while.end, !dbg !299

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %c, metadata !292, metadata !DIExpression()), !dbg !302
  %1 = load i64, ptr %count.addr, align 8, !dbg !303
  store i64 %1, ptr %c, align 8, !dbg !302
  %2 = load i64, ptr %c, align 8, !dbg !304
  %cmp = icmp ugt i64 %2, 256, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %while.body
  store i64 256, ptr %c, align 8, !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0, !dbg !310
  %3 = load i64, ptr %c, align 8, !dbg !312
  %4 = load ptr, ptr %src.addr, align 8, !dbg !313
  %call = call i64 @copy_from_iter(ptr noundef %arraydecay, i64 noundef %3, ptr noundef %4) #11, !dbg !314
  %5 = load i64, ptr %c, align 8, !dbg !315
  %cmp1 = icmp ne i64 %call, %5, !dbg !316
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !317

if.then2:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !318

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !319
  %arraydecay4 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0, !dbg !320
  %7 = load i64, ptr %c, align 8, !dbg !321
  call void @memcpy_toio(ptr noundef %6, ptr noundef %arraydecay4, i64 noundef %7) #11, !dbg !322
  %8 = load i64, ptr %c, align 8, !dbg !323
  %9 = load i64, ptr %count.addr, align 8, !dbg !324
  %sub = sub i64 %9, %8, !dbg !324
  store i64 %sub, ptr %count.addr, align 8, !dbg !324
  %10 = load i64, ptr %c, align 8, !dbg !325
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !326
  %add.ptr = getelementptr i8, ptr %11, i64 %10, !dbg !326
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !326
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !327
  br label %cleanup, !dbg !327

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10, !dbg !327
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !299, !llvm.loop !328

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !329

cleanup5:                                         ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #10, !dbg !330
  %12 = load i32, ptr %retval, align 4, !dbg !330
  ret i32 %12, !dbg !330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #4 align 16 !dbg !331 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !335, metadata !DIExpression()), !dbg !338
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !336, metadata !DIExpression()), !dbg !339
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !337, metadata !DIExpression()), !dbg !340
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !341
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !343
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #11, !dbg !344
  br i1 %call, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !346
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !347
  %4 = load ptr, ptr %i.addr, align 8, !dbg !348
  %call1 = call i64 @_copy_from_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #11, !dbg !349
  store i64 %call1, ptr %retval, align 8, !dbg !350
  br label %return, !dbg !350

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !351
  br label %return, !dbg !351

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !352
  ret i64 %5, !dbg !352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !353 dso_local void @memcpy_toio(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !356 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !360, metadata !DIExpression()), !dbg !370
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !361, metadata !DIExpression()), !dbg !371
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !362, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #10, !dbg !373
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !363, metadata !DIExpression()), !dbg !374
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !375
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !376
  %conv = trunc i64 %1 to i32, !dbg !376
  store i32 %conv, ptr %sz, align 4, !dbg !374
  %2 = load i32, ptr %sz, align 4, !dbg !377
  %cmp = icmp sge i32 %2, 0, !dbg !377
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !377

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !377
  %conv2 = sext i32 %3 to i64, !dbg !377
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !377
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !377
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !379
  %lnot = xor i1 %5, true, !dbg !377
  %lnot5 = xor i1 %lnot, true, !dbg !377
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !377
  %conv6 = sext i32 %lnot.ext to i64, !dbg !377
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !377
  %tobool = icmp ne i64 %expval, 0, !dbg !377
  br i1 %tobool, label %if.then, label %if.end12, !dbg !380

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !381
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !384
  br i1 %7, label %if.else, label %if.then7, !dbg !385

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !386
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !387
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #11, !dbg !388
  br label %if.end11, !dbg !388

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !389, !range !391, !noundef !392
  %tobool8 = trunc i8 %10 to i1, !dbg !389
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !393

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #11, !dbg !394, !srcloc !395
  br label %if.end, !dbg !394

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #11, !dbg !396, !srcloc !397
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !398

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !364, metadata !DIExpression()), !dbg !399
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !399
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !399
  %lnot15 = xor i1 %cmp13, true, !dbg !399
  %lnot17 = xor i1 %lnot15, true, !dbg !399
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !399
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !399
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !400
  %tobool19 = icmp ne i32 %12, 0, !dbg !400
  %lnot20 = xor i1 %tobool19, true, !dbg !400
  %lnot22 = xor i1 %lnot20, true, !dbg !400
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !400
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !400
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !400
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !400
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !399

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !400

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !367, metadata !DIExpression()), !dbg !401
  store i32 2307, ptr %__flags, align 4, !dbg !401
  br label %do.body28, !dbg !401

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !402

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !402

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !401

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !404
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #10, !dbg !404, !srcloc !406
  br label %do.cond30, !dbg !404

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !404

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !401

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !407

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !407

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !400
  br label %do.cond35, !dbg !401

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !401

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !401

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !399
  %tobool38 = icmp ne i32 %14, 0, !dbg !399
  %lnot39 = xor i1 %tobool38, true, !dbg !399
  %lnot41 = xor i1 %lnot39, true, !dbg !399
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !399
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !399
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !399
  store i64 %expval44, ptr %tmp, align 8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !409
  %15 = load i64, ptr %tmp, align 8, !dbg !399
  %tobool45 = icmp ne i64 %15, 0, !dbg !409
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !410

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !411

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !412
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !413
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !414, !range !391, !noundef !392
  %tobool48 = trunc i8 %18 to i1, !dbg !414
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #11, !dbg !415
  store i1 true, ptr %retval, align 1, !dbg !416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !416

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #10, !dbg !417
  %19 = load i1, ptr %retval, align 1, !dbg !417
  ret i1 %19, !dbg !417
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !418 dso_local i64 @_copy_to_iter(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !419 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !423, metadata !DIExpression()), !dbg !425
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !424, metadata !DIExpression()), !dbg !426
  %0 = load i32, ptr %size.addr, align 4, !dbg !427
  %1 = load i64, ptr %count.addr, align 8, !dbg !429
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #11, !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !432 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !435 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !436 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !440, metadata !DIExpression()), !dbg !443
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !441, metadata !DIExpression()), !dbg !444
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !442, metadata !DIExpression()), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !447 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !448 dso_local i64 @_copy_from_iter(ptr noundef, i64 noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_to_user_fromio289", scope: !2, file: !3, line: 32, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.memory.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22memory\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/memory.ll sound/core/memory.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/memory.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1c600dc9a6983189a2e63afc66a522b")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !14, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!0, !17, !19, !21, !23}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_to_iter_fromio290", scope: !2, file: !3, line: 64, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_from_user_toio291", scope: !2, file: !3, line: 84, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_from_iter_toio292", scope: !2, file: !3, line: 115, type: !14, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !25, line: 249, type: !26, isLocal: true, isDefinition: true)
!25 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 224, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 28)
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 8, !"cf-protection-branch", i32 1}
!34 = !{i32 4, !"function_return_thunk_extern", i32 1}
!35 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{i32 1, !"override-stack-alignment", i32 8}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = distinct !DISubprogram(name: "copy_to_user_fromio", scope: !3, file: !3, line: 24, type: !40, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!40 = !DISubroutineType(types: !41)
!41 = !{!15, !14, !42, !45}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !48, line: 72, baseType: !49)
!48 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !48, line: 16, baseType: !50)
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(name: "dst", arg: 1, scope: !39, file: !3, line: 24, type: !14)
!53 = !DILocalVariable(name: "src", arg: 2, scope: !39, file: !3, line: 24, type: !42)
!54 = !DILocalVariable(name: "count", arg: 3, scope: !39, file: !3, line: 24, type: !45)
!55 = !DILocalVariable(name: "iter", scope: !39, file: !3, line: 26, type: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !57, line: 41, size: 320, elements: !58)
!57 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!58 = !{!59, !65, !68, !69, !70, !71, !76, !153}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !56, file: !57, line: 42, baseType: !60, size: 8)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !61, line: 17, baseType: !62)
!61 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !63, line: 21, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !56, file: !57, line: 43, baseType: !66, size: 8, offset: 8)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !67)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !56, file: !57, line: 44, baseType: !66, size: 8, offset: 16)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !56, file: !57, line: 45, baseType: !66, size: 8, offset: 24)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !56, file: !57, line: 46, baseType: !66, size: 8, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !57, line: 47, baseType: !72, size: 64, offset: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !57, line: 47, size: 64, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !72, file: !57, line: 48, baseType: !45, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !72, file: !57, line: 49, baseType: !15, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !57, line: 61, baseType: !77, size: 128, offset: 128)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !57, line: 61, size: 128, elements: !78)
!78 = !{!79, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !77, file: !57, line: 67, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !81, line: 17, size: 128, elements: !82)
!81 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !80, file: !81, line: 19, baseType: !14, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !80, file: !81, line: 20, baseType: !47, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !57, line: 68, baseType: !86, size: 128)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !57, line: 68, size: 128, elements: !87)
!87 = !{!88, !152}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !57, line: 69, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !57, line: 69, size: 64, elements: !90)
!90 = !{!91, !94, !101, !105, !151}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !89, file: !57, line: 71, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !89, file: !57, line: 72, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !57, line: 17, size: 128, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !97, file: !57, line: 18, baseType: !14, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !97, file: !57, line: 19, baseType: !45, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !89, file: !57, line: 73, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !57, line: 73, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !89, file: !57, line: 74, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !108, line: 296, size: 128, elements: !109)
!108 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!109 = !{!110, !148, !150}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !107, file: !108, line: 297, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !112, line: 29, baseType: !113)
!112 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !112, line: 17, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !112, line: 18, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !112, line: 18, size: 32, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !116, file: !112, line: 19, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !120, line: 14, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !119, file: !120, line: 15, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !124, line: 44, baseType: !125)
!124 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !124, line: 14, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 15, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 15, size: 32, elements: !129)
!129 = !{!130, !135, !140}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !124, line: 16, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !132, file: !46, line: 173, baseType: !15, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !124, line: 24, baseType: !136, size: 16)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !124, line: 24, size: 16, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !136, file: !124, line: 25, baseType: !60, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !136, file: !124, line: 26, baseType: !60, size: 8, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !124, line: 28, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !124, line: 28, size: 32, elements: !142)
!142 = !{!143, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !141, file: !124, line: 29, baseType: !144, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !61, line: 19, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !63, line: 24, baseType: !146)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !141, file: !124, line: 30, baseType: !144, size: 16, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !107, file: !108, line: 299, baseType: !149, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !107, file: !108, line: 300, baseType: !14, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !89, file: !57, line: 75, baseType: !14, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !86, file: !57, line: 77, baseType: !45, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !57, line: 80, baseType: !154, size: 64, offset: 256)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !57, line: 80, size: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !154, file: !57, line: 81, baseType: !50, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !154, file: !57, line: 82, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !48, line: 88, baseType: !160)
!160 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!161 = !DILocation(line: 24, column: 38, scope: !39)
!162 = !DILocation(line: 24, column: 72, scope: !39)
!163 = !DILocation(line: 24, column: 84, scope: !39)
!164 = !DILocation(line: 26, column: 2, scope: !39)
!165 = !DILocation(line: 26, column: 18, scope: !39)
!166 = !DILocation(line: 28, column: 29, scope: !167)
!167 = distinct !DILexicalBlock(scope: !39, file: !3, line: 28, column: 6)
!168 = !DILocation(line: 28, column: 34, scope: !167)
!169 = !DILocation(line: 28, column: 6, scope: !167)
!170 = !DILocation(line: 28, column: 6, scope: !39)
!171 = !DILocation(line: 29, column: 3, scope: !167)
!172 = !DILocation(line: 30, column: 58, scope: !39)
!173 = !DILocation(line: 30, column: 63, scope: !39)
!174 = !DILocation(line: 30, column: 9, scope: !39)
!175 = !DILocation(line: 30, column: 2, scope: !39)
!176 = !DILocation(line: 31, column: 1, scope: !39)
!177 = !DISubprogram(name: "import_ubuf", scope: !57, file: !57, line: 377, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!15, !15, !14, !45, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!181 = distinct !DISubprogram(name: "copy_to_iter_fromio", scope: !3, file: !3, line: 44, type: !182, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!15, !180, !12, !45}
!184 = !{!185, !186, !187, !188, !192}
!185 = !DILocalVariable(name: "dst", arg: 1, scope: !181, file: !3, line: 44, type: !180)
!186 = !DILocalVariable(name: "src", arg: 2, scope: !181, file: !3, line: 44, type: !12)
!187 = !DILocalVariable(name: "count", arg: 3, scope: !181, file: !3, line: 45, type: !45)
!188 = !DILocalVariable(name: "buf", scope: !181, file: !3, line: 50, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 256)
!192 = !DILocalVariable(name: "c", scope: !193, file: !3, line: 52, type: !45)
!193 = distinct !DILexicalBlock(scope: !181, file: !3, line: 51, column: 16)
!194 = !DILocation(line: 44, column: 42, scope: !181)
!195 = !DILocation(line: 44, column: 67, scope: !181)
!196 = !DILocation(line: 45, column: 11, scope: !181)
!197 = !DILocation(line: 50, column: 2, scope: !181)
!198 = !DILocation(line: 50, column: 7, scope: !181)
!199 = !DILocation(line: 51, column: 2, scope: !181)
!200 = !DILocation(line: 51, column: 9, scope: !181)
!201 = !DILocation(line: 52, column: 3, scope: !193)
!202 = !DILocation(line: 52, column: 10, scope: !193)
!203 = !DILocation(line: 52, column: 14, scope: !193)
!204 = !DILocation(line: 53, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !3, line: 53, column: 7)
!206 = !DILocation(line: 53, column: 9, scope: !205)
!207 = !DILocation(line: 53, column: 7, scope: !193)
!208 = !DILocation(line: 54, column: 6, scope: !205)
!209 = !DILocation(line: 54, column: 4, scope: !205)
!210 = !DILocation(line: 55, column: 17, scope: !193)
!211 = !DILocation(line: 55, column: 38, scope: !193)
!212 = !DILocation(line: 55, column: 43, scope: !193)
!213 = !DILocation(line: 55, column: 3, scope: !193)
!214 = !DILocation(line: 56, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !193, file: !3, line: 56, column: 7)
!216 = !DILocation(line: 56, column: 25, scope: !215)
!217 = !DILocation(line: 56, column: 28, scope: !215)
!218 = !DILocation(line: 56, column: 7, scope: !215)
!219 = !DILocation(line: 56, column: 36, scope: !215)
!220 = !DILocation(line: 56, column: 33, scope: !215)
!221 = !DILocation(line: 56, column: 7, scope: !193)
!222 = !DILocation(line: 57, column: 4, scope: !215)
!223 = !DILocation(line: 58, column: 12, scope: !193)
!224 = !DILocation(line: 58, column: 9, scope: !193)
!225 = !DILocation(line: 59, column: 10, scope: !193)
!226 = !DILocation(line: 59, column: 7, scope: !193)
!227 = !DILocation(line: 60, column: 2, scope: !181)
!228 = distinct !{!228, !199, !227, !229, !230}
!229 = !{!"llvm.loop.mustprogress"}
!230 = !{!"llvm.loop.unroll.disable"}
!231 = !DILocation(line: 61, column: 2, scope: !181)
!232 = !DILocation(line: 63, column: 1, scope: !181)
!233 = !DISubprogram(name: "memcpy_fromio", scope: !234, file: !234, line: 204, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!235 = !DISubroutineType(types: !236)
!236 = !{null, !14, !42, !45}
!237 = distinct !DISubprogram(name: "copy_to_iter", scope: !57, file: !57, line: 198, type: !238, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!45, !12, !45, !180}
!240 = !{!241, !242, !243}
!241 = !DILocalVariable(name: "addr", arg: 1, scope: !237, file: !57, line: 198, type: !12)
!242 = !DILocalVariable(name: "bytes", arg: 2, scope: !237, file: !57, line: 198, type: !45)
!243 = !DILocalVariable(name: "i", arg: 3, scope: !237, file: !57, line: 198, type: !180)
!244 = !DILocation(line: 198, column: 33, scope: !237)
!245 = !DILocation(line: 198, column: 46, scope: !237)
!246 = !DILocation(line: 198, column: 70, scope: !237)
!247 = !DILocation(line: 200, column: 22, scope: !248)
!248 = distinct !DILexicalBlock(scope: !237, file: !57, line: 200, column: 6)
!249 = !DILocation(line: 200, column: 28, scope: !248)
!250 = !DILocation(line: 200, column: 6, scope: !248)
!251 = !DILocation(line: 200, column: 6, scope: !237)
!252 = !DILocation(line: 201, column: 24, scope: !248)
!253 = !DILocation(line: 201, column: 30, scope: !248)
!254 = !DILocation(line: 201, column: 37, scope: !248)
!255 = !DILocation(line: 201, column: 10, scope: !248)
!256 = !DILocation(line: 201, column: 3, scope: !248)
!257 = !DILocation(line: 202, column: 2, scope: !237)
!258 = !DILocation(line: 203, column: 1, scope: !237)
!259 = distinct !DISubprogram(name: "copy_from_user_toio", scope: !3, file: !3, line: 76, type: !260, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!260 = !DISubroutineType(types: !261)
!261 = !{!15, !262, !12, !45}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!263 = !{!264, !265, !266, !267}
!264 = !DILocalVariable(name: "dst", arg: 1, scope: !259, file: !3, line: 76, type: !262)
!265 = !DILocalVariable(name: "src", arg: 2, scope: !259, file: !3, line: 76, type: !12)
!266 = !DILocalVariable(name: "count", arg: 3, scope: !259, file: !3, line: 76, type: !45)
!267 = !DILocalVariable(name: "iter", scope: !259, file: !3, line: 78, type: !56)
!268 = !DILocation(line: 76, column: 48, scope: !259)
!269 = !DILocation(line: 76, column: 72, scope: !259)
!270 = !DILocation(line: 76, column: 84, scope: !259)
!271 = !DILocation(line: 78, column: 2, scope: !259)
!272 = !DILocation(line: 78, column: 18, scope: !259)
!273 = !DILocation(line: 80, column: 46, scope: !274)
!274 = distinct !DILexicalBlock(scope: !259, file: !3, line: 80, column: 6)
!275 = !DILocation(line: 80, column: 51, scope: !274)
!276 = !DILocation(line: 80, column: 6, scope: !274)
!277 = !DILocation(line: 80, column: 6, scope: !259)
!278 = !DILocation(line: 81, column: 3, scope: !274)
!279 = !DILocation(line: 82, column: 45, scope: !259)
!280 = !DILocation(line: 82, column: 57, scope: !259)
!281 = !DILocation(line: 82, column: 9, scope: !259)
!282 = !DILocation(line: 82, column: 2, scope: !259)
!283 = !DILocation(line: 83, column: 1, scope: !259)
!284 = distinct !DISubprogram(name: "copy_from_iter_toio", scope: !3, file: !3, line: 96, type: !285, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!15, !14, !180, !45}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "dst", arg: 1, scope: !284, file: !3, line: 96, type: !14)
!289 = !DILocalVariable(name: "src", arg: 2, scope: !284, file: !3, line: 96, type: !180)
!290 = !DILocalVariable(name: "count", arg: 3, scope: !284, file: !3, line: 96, type: !45)
!291 = !DILocalVariable(name: "buf", scope: !284, file: !3, line: 101, type: !189)
!292 = !DILocalVariable(name: "c", scope: !293, file: !3, line: 103, type: !45)
!293 = distinct !DILexicalBlock(scope: !284, file: !3, line: 102, column: 16)
!294 = !DILocation(line: 96, column: 39, scope: !284)
!295 = !DILocation(line: 96, column: 61, scope: !284)
!296 = !DILocation(line: 96, column: 73, scope: !284)
!297 = !DILocation(line: 101, column: 2, scope: !284)
!298 = !DILocation(line: 101, column: 7, scope: !284)
!299 = !DILocation(line: 102, column: 2, scope: !284)
!300 = !DILocation(line: 102, column: 9, scope: !284)
!301 = !DILocation(line: 103, column: 3, scope: !293)
!302 = !DILocation(line: 103, column: 10, scope: !293)
!303 = !DILocation(line: 103, column: 14, scope: !293)
!304 = !DILocation(line: 104, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !293, file: !3, line: 104, column: 7)
!306 = !DILocation(line: 104, column: 9, scope: !305)
!307 = !DILocation(line: 104, column: 7, scope: !293)
!308 = !DILocation(line: 105, column: 6, scope: !305)
!309 = !DILocation(line: 105, column: 4, scope: !305)
!310 = !DILocation(line: 106, column: 22, scope: !311)
!311 = distinct !DILexicalBlock(scope: !293, file: !3, line: 106, column: 7)
!312 = !DILocation(line: 106, column: 27, scope: !311)
!313 = !DILocation(line: 106, column: 30, scope: !311)
!314 = !DILocation(line: 106, column: 7, scope: !311)
!315 = !DILocation(line: 106, column: 38, scope: !311)
!316 = !DILocation(line: 106, column: 35, scope: !311)
!317 = !DILocation(line: 106, column: 7, scope: !293)
!318 = !DILocation(line: 107, column: 4, scope: !311)
!319 = !DILocation(line: 108, column: 15, scope: !293)
!320 = !DILocation(line: 108, column: 20, scope: !293)
!321 = !DILocation(line: 108, column: 25, scope: !293)
!322 = !DILocation(line: 108, column: 3, scope: !293)
!323 = !DILocation(line: 109, column: 12, scope: !293)
!324 = !DILocation(line: 109, column: 9, scope: !293)
!325 = !DILocation(line: 110, column: 10, scope: !293)
!326 = !DILocation(line: 110, column: 7, scope: !293)
!327 = !DILocation(line: 111, column: 2, scope: !284)
!328 = distinct !{!328, !299, !327, !229, !230}
!329 = !DILocation(line: 112, column: 2, scope: !284)
!330 = !DILocation(line: 114, column: 1, scope: !284)
!331 = distinct !DISubprogram(name: "copy_from_iter", scope: !57, file: !57, line: 206, type: !332, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!45, !14, !45, !180}
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(name: "addr", arg: 1, scope: !331, file: !57, line: 206, type: !14)
!336 = !DILocalVariable(name: "bytes", arg: 2, scope: !331, file: !57, line: 206, type: !45)
!337 = !DILocalVariable(name: "i", arg: 3, scope: !331, file: !57, line: 206, type: !180)
!338 = !DILocation(line: 206, column: 29, scope: !331)
!339 = !DILocation(line: 206, column: 42, scope: !331)
!340 = !DILocation(line: 206, column: 66, scope: !331)
!341 = !DILocation(line: 208, column: 22, scope: !342)
!342 = distinct !DILexicalBlock(scope: !331, file: !57, line: 208, column: 6)
!343 = !DILocation(line: 208, column: 28, scope: !342)
!344 = !DILocation(line: 208, column: 6, scope: !342)
!345 = !DILocation(line: 208, column: 6, scope: !331)
!346 = !DILocation(line: 209, column: 26, scope: !342)
!347 = !DILocation(line: 209, column: 32, scope: !342)
!348 = !DILocation(line: 209, column: 39, scope: !342)
!349 = !DILocation(line: 209, column: 10, scope: !342)
!350 = !DILocation(line: 209, column: 3, scope: !342)
!351 = !DILocation(line: 210, column: 2, scope: !331)
!352 = !DILocation(line: 211, column: 1, scope: !331)
!353 = !DISubprogram(name: "memcpy_toio", scope: !234, file: !234, line: 205, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !262, !12, !45}
!356 = distinct !DISubprogram(name: "check_copy_size", scope: !25, file: !25, line: 237, type: !357, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{!66, !12, !45, !66}
!359 = !{!360, !361, !362, !363, !364, !367}
!360 = !DILocalVariable(name: "addr", arg: 1, scope: !356, file: !25, line: 237, type: !12)
!361 = !DILocalVariable(name: "bytes", arg: 2, scope: !356, file: !25, line: 237, type: !45)
!362 = !DILocalVariable(name: "is_source", arg: 3, scope: !356, file: !25, line: 237, type: !66)
!363 = !DILocalVariable(name: "sz", scope: !356, file: !25, line: 239, type: !15)
!364 = !DILocalVariable(name: "__ret_warn_on", scope: !365, file: !25, line: 249, type: !15)
!365 = distinct !DILexicalBlock(scope: !366, file: !25, line: 249, column: 6)
!366 = distinct !DILexicalBlock(scope: !356, file: !25, line: 249, column: 6)
!367 = !DILocalVariable(name: "__flags", scope: !368, file: !25, line: 249, type: !15)
!368 = distinct !DILexicalBlock(scope: !369, file: !25, line: 249, column: 6)
!369 = distinct !DILexicalBlock(scope: !365, file: !25, line: 249, column: 6)
!370 = !DILocation(line: 237, column: 29, scope: !356)
!371 = !DILocation(line: 237, column: 42, scope: !356)
!372 = !DILocation(line: 237, column: 54, scope: !356)
!373 = !DILocation(line: 239, column: 2, scope: !356)
!374 = !DILocation(line: 239, column: 6, scope: !356)
!375 = !DILocation(line: 239, column: 33, scope: !356)
!376 = !DILocation(line: 239, column: 11, scope: !356)
!377 = !DILocation(line: 240, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !356, file: !25, line: 240, column: 6)
!379 = !DILocation(line: 0, scope: !378)
!380 = !DILocation(line: 240, column: 6, scope: !356)
!381 = !DILocation(line: 241, column: 29, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !25, line: 241, column: 7)
!383 = distinct !DILexicalBlock(scope: !378, file: !25, line: 240, column: 39)
!384 = !DILocation(line: 241, column: 8, scope: !382)
!385 = !DILocation(line: 241, column: 7, scope: !383)
!386 = !DILocation(line: 242, column: 18, scope: !382)
!387 = !DILocation(line: 242, column: 22, scope: !382)
!388 = !DILocation(line: 242, column: 4, scope: !382)
!389 = !DILocation(line: 243, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !382, file: !25, line: 243, column: 12)
!391 = !{i8 0, i8 2}
!392 = !{}
!393 = !DILocation(line: 243, column: 12, scope: !382)
!394 = !DILocation(line: 244, column: 4, scope: !390)
!395 = !{i32 1855224}
!396 = !DILocation(line: 246, column: 4, scope: !390)
!397 = !{i32 1855253}
!398 = !DILocation(line: 247, column: 3, scope: !383)
!399 = !DILocation(line: 249, column: 6, scope: !365)
!400 = !DILocation(line: 249, column: 6, scope: !369)
!401 = !DILocation(line: 249, column: 6, scope: !368)
!402 = !DILocation(line: 249, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !368, file: !25, line: 249, column: 6)
!404 = !DILocation(line: 249, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !368, file: !25, line: 249, column: 6)
!406 = !{i64 2149578559, i64 2149578588, i64 2149578634, i64 2149578692, i64 2149578746, i64 2149578800, i64 2149578855, i64 2149578886, i64 2149579194, i64 2149579200, i64 2149579247, i64 2149579270, i64 2149579296}
!407 = !DILocation(line: 249, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !368, file: !25, line: 249, column: 6)
!409 = !DILocation(line: 249, column: 6, scope: !366)
!410 = !DILocation(line: 249, column: 6, scope: !356)
!411 = !DILocation(line: 250, column: 3, scope: !366)
!412 = !DILocation(line: 251, column: 20, scope: !356)
!413 = !DILocation(line: 251, column: 26, scope: !356)
!414 = !DILocation(line: 251, column: 33, scope: !356)
!415 = !DILocation(line: 251, column: 2, scope: !356)
!416 = !DILocation(line: 252, column: 2, scope: !356)
!417 = !DILocation(line: 253, column: 1, scope: !356)
!418 = !DISubprogram(name: "_copy_to_iter", scope: !57, file: !57, line: 178, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = distinct !DISubprogram(name: "copy_overflow", scope: !25, file: !25, line: 230, type: !420, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !15, !50}
!422 = !{!423, !424}
!423 = !DILocalVariable(name: "size", arg: 1, scope: !419, file: !25, line: 230, type: !15)
!424 = !DILocalVariable(name: "count", arg: 2, scope: !419, file: !25, line: 230, type: !50)
!425 = !DILocation(line: 230, column: 38, scope: !419)
!426 = !DILocation(line: 230, column: 58, scope: !419)
!427 = !DILocation(line: 233, column: 19, scope: !428)
!428 = distinct !DILexicalBlock(scope: !419, file: !25, line: 232, column: 6)
!429 = !DILocation(line: 233, column: 25, scope: !428)
!430 = !DILocation(line: 233, column: 3, scope: !428)
!431 = !DILocation(line: 234, column: 1, scope: !419)
!432 = !DISubprogram(name: "__bad_copy_from", scope: !25, file: !25, line: 224, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{null}
!435 = !DISubprogram(name: "__bad_copy_to", scope: !25, file: !25, line: 226, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = distinct !DISubprogram(name: "check_object_size", scope: !25, file: !25, line: 218, type: !437, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !12, !50, !66}
!439 = !{!440, !441, !442}
!440 = !DILocalVariable(name: "ptr", arg: 1, scope: !436, file: !25, line: 218, type: !12)
!441 = !DILocalVariable(name: "n", arg: 2, scope: !436, file: !25, line: 218, type: !50)
!442 = !DILocalVariable(name: "to_user", arg: 3, scope: !436, file: !25, line: 219, type: !66)
!443 = !DILocation(line: 218, column: 50, scope: !436)
!444 = !DILocation(line: 218, column: 69, scope: !436)
!445 = !DILocation(line: 219, column: 15, scope: !436)
!446 = !DILocation(line: 220, column: 3, scope: !436)
!447 = !DISubprogram(name: "__copy_overflow", scope: !25, file: !25, line: 228, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubprogram(name: "_copy_from_iter", scope: !57, file: !57, line: 179, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
