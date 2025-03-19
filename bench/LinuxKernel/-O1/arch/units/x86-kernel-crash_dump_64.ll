; ModuleID = 'arch/x86/kernel/crash_dump_64.c'
source_filename = "arch/x86/kernel/crash_dump_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { ptr, i64 }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon, %union.anon.0, %union.anon.2 }
%union.anon = type { i64 }
%union.anon.0 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_oldmem_page(ptr noundef %iter, i64 noundef %pfn, i64 noundef %csize, i64 noundef %offset) #0 align 16 !dbg !39 {
entry:
  %iter.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %csize.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !159, metadata !DIExpression()), !dbg !163
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !160, metadata !DIExpression()), !dbg !164
  store i64 %csize, ptr %csize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %csize.addr, metadata !161, metadata !DIExpression()), !dbg !165
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !162, metadata !DIExpression()), !dbg !166
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !167
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !168
  %2 = load i64, ptr %csize.addr, align 8, !dbg !169
  %3 = load i64, ptr %offset.addr, align 8, !dbg !170
  %call = call i64 @__copy_oldmem_page(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #10, !dbg !171
  ret i64 %call, !dbg !172
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_oldmem_page(ptr noundef %iter, i64 noundef %pfn, i64 noundef %csize, i64 noundef %offset, i1 noundef zeroext %encrypted) #0 align 16 !dbg !173 {
entry:
  %retval = alloca i64, align 8
  %iter.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %csize.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %encrypted.addr = alloca i8, align 1
  %vaddr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !177, metadata !DIExpression()), !dbg !183
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !178, metadata !DIExpression()), !dbg !184
  store i64 %csize, ptr %csize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %csize.addr, metadata !179, metadata !DIExpression()), !dbg !185
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !180, metadata !DIExpression()), !dbg !186
  %frombool = zext i1 %encrypted to i8
  store i8 %frombool, ptr %encrypted.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %encrypted.addr, metadata !181, metadata !DIExpression()), !dbg !187
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #11, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !182, metadata !DIExpression()), !dbg !189
  %0 = load i64, ptr %csize.addr, align 8, !dbg !190
  %tobool = icmp ne i64 %0, 0, !dbg !190
  br i1 %tobool, label %if.end, label %if.then, !dbg !192

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !193

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %encrypted.addr, align 1, !dbg !194, !range !196, !noundef !197
  %tobool1 = trunc i8 %1 to i1, !dbg !194
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !198

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !199
  %shl = shl i64 %2, 12, !dbg !200
  %call = call ptr @ioremap_encrypted(i64 noundef %shl, i64 noundef 4096) #10, !dbg !201
  store ptr %call, ptr %vaddr, align 8, !dbg !202
  br label %if.end5, !dbg !203

if.else:                                          ; preds = %if.end
  %3 = load i64, ptr %pfn.addr, align 8, !dbg !204
  %shl3 = shl i64 %3, 12, !dbg !205
  %call4 = call ptr @ioremap_cache(i64 noundef %shl3, i64 noundef 4096) #10, !dbg !206
  store ptr %call4, ptr %vaddr, align 8, !dbg !207
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %4 = load ptr, ptr %vaddr, align 8, !dbg !208
  %tobool6 = icmp ne ptr %4, null, !dbg !208
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !210

if.then7:                                         ; preds = %if.end5
  store i64 -12, ptr %retval, align 8, !dbg !211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !211

if.end8:                                          ; preds = %if.end5
  %5 = load ptr, ptr %vaddr, align 8, !dbg !212
  %6 = load i64, ptr %offset.addr, align 8, !dbg !213
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !214
  %7 = load i64, ptr %csize.addr, align 8, !dbg !215
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !216
  %call9 = call i64 @copy_to_iter(ptr noundef %add.ptr, i64 noundef %7, ptr noundef %8) #10, !dbg !217
  store i64 %call9, ptr %csize.addr, align 8, !dbg !218
  %9 = load ptr, ptr %vaddr, align 8, !dbg !219
  call void @iounmap(ptr noundef %9) #10, !dbg !220
  %10 = load i64, ptr %csize.addr, align 8, !dbg !221
  store i64 %10, ptr %retval, align 8, !dbg !222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !222

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #11, !dbg !223
  %11 = load i64, ptr %retval, align 8, !dbg !223
  ret i64 %11, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_oldmem_page_encrypted(ptr noundef %iter, i64 noundef %pfn, i64 noundef %csize, i64 noundef %offset) #0 align 16 !dbg !224 {
entry:
  %iter.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %csize.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !226, metadata !DIExpression()), !dbg !230
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !227, metadata !DIExpression()), !dbg !231
  store i64 %csize, ptr %csize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %csize.addr, metadata !228, metadata !DIExpression()), !dbg !232
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !229, metadata !DIExpression()), !dbg !233
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !234
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !235
  %2 = load i64, ptr %csize.addr, align 8, !dbg !236
  %3 = load i64, ptr %offset.addr, align 8, !dbg !237
  %call = call i64 @__copy_oldmem_page(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #10, !dbg !238
  ret i64 %call, !dbg !239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @elfcorehdr_read(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !240 {
entry:
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %kvec = alloca %struct.kvec, align 8
  %iter = alloca %struct.iov_iter, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !249, metadata !DIExpression()), !dbg !254
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !250, metadata !DIExpression()), !dbg !255
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !251, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 16, ptr %kvec) #11, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %kvec, metadata !252, metadata !DIExpression()), !dbg !258
  %iov_base = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 0, !dbg !259
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !260
  store ptr %0, ptr %iov_base, align 8, !dbg !259
  %iov_len = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 1, !dbg !259
  %1 = load i64, ptr %count.addr, align 8, !dbg !261
  store i64 %1, ptr %iov_len, align 8, !dbg !259
  call void @llvm.lifetime.start.p0(i64 40, ptr %iter) #11, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !253, metadata !DIExpression()), !dbg !263
  %2 = load i64, ptr %count.addr, align 8, !dbg !264
  call void @iov_iter_kvec(ptr noundef %iter, i32 noundef 0, ptr noundef %kvec, i64 noundef 1, i64 noundef %2) #10, !dbg !265
  %3 = load i64, ptr %count.addr, align 8, !dbg !266
  %4 = load ptr, ptr %ppos.addr, align 8, !dbg !267
  %call = call zeroext i1 @cc_platform_has(i32 noundef 2) #10, !dbg !268
  %call1 = call i64 @read_from_oldmem(ptr noundef %iter, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %call) #10, !dbg !269
  call void @llvm.lifetime.end.p0(i64 40, ptr %iter) #11, !dbg !270
  call void @llvm.lifetime.end.p0(i64 16, ptr %kvec) #11, !dbg !270
  ret i64 %call1, !dbg !271
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !272 dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !275 dso_local i64 @read_from_oldmem(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #4 align 16 !dbg !279 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !283, metadata !DIExpression()), !dbg !284
  ret i1 false, !dbg !285
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !286 dso_local ptr @ioremap_encrypted(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !292 dso_local ptr @ioremap_cache(i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #5 align 16 !dbg !293 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !299, metadata !DIExpression()), !dbg !302
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !300, metadata !DIExpression()), !dbg !303
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !301, metadata !DIExpression()), !dbg !304
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !305
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !307
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #10, !dbg !308
  br i1 %call, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !310
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !311
  %4 = load ptr, ptr %i.addr, align 8, !dbg !312
  %call1 = call i64 @_copy_to_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !313
  store i64 %call1, ptr %retval, align 8, !dbg !314
  br label %return, !dbg !314

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !315
  br label %return, !dbg !315

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !316
  ret i64 %5, !dbg !316
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !317 dso_local void @iounmap(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !322 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !326, metadata !DIExpression()), !dbg !336
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !327, metadata !DIExpression()), !dbg !337
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !328, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #11, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !329, metadata !DIExpression()), !dbg !340
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !341
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !342
  %conv = trunc i64 %1 to i32, !dbg !342
  store i32 %conv, ptr %sz, align 4, !dbg !340
  %2 = load i32, ptr %sz, align 4, !dbg !343
  %cmp = icmp sge i32 %2, 0, !dbg !343
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !343

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !343
  %conv2 = sext i32 %3 to i64, !dbg !343
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !343
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !343
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !345
  %lnot = xor i1 %5, true, !dbg !343
  %lnot5 = xor i1 %lnot, true, !dbg !343
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !343
  %conv6 = sext i32 %lnot.ext to i64, !dbg !343
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !343
  %tobool = icmp ne i64 %expval, 0, !dbg !343
  br i1 %tobool, label %if.then, label %if.end12, !dbg !346

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !347
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !350
  br i1 %7, label %if.else, label %if.then7, !dbg !351

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !352
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !353
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #10, !dbg !354
  br label %if.end11, !dbg !354

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !355, !range !196, !noundef !197
  %tobool8 = trunc i8 %10 to i1, !dbg !355
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !357

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #10, !dbg !358, !srcloc !359
  br label %if.end, !dbg !358

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #10, !dbg !360, !srcloc !361
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !330, metadata !DIExpression()), !dbg !363
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !363
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !363
  %lnot15 = xor i1 %cmp13, true, !dbg !363
  %lnot17 = xor i1 %lnot15, true, !dbg !363
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !363
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !363
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !364
  %tobool19 = icmp ne i32 %12, 0, !dbg !364
  %lnot20 = xor i1 %tobool19, true, !dbg !364
  %lnot22 = xor i1 %lnot20, true, !dbg !364
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !364
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !364
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !364
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !364
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !363

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !364

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !333, metadata !DIExpression()), !dbg !365
  store i32 2307, ptr %__flags, align 4, !dbg !365
  br label %do.body28, !dbg !365

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !366

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !366

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !365

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !368
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #11, !dbg !368, !srcloc !370
  br label %do.cond30, !dbg !368

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !368

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !365

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !371

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !371

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !364
  br label %do.cond35, !dbg !365

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !365

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !365

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !363
  %tobool38 = icmp ne i32 %14, 0, !dbg !363
  %lnot39 = xor i1 %tobool38, true, !dbg !363
  %lnot41 = xor i1 %lnot39, true, !dbg !363
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !363
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !363
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !363
  store i64 %expval44, ptr %tmp, align 8, !dbg !364
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !373
  %15 = load i64, ptr %tmp, align 8, !dbg !363
  %tobool45 = icmp ne i64 %15, 0, !dbg !373
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !374

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !375

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !376
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !377
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !378, !range !196, !noundef !197
  %tobool48 = trunc i8 %18 to i1, !dbg !378
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #10, !dbg !379
  store i1 true, ptr %retval, align 1, !dbg !380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !380

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #11, !dbg !381
  %19 = load i1, ptr %retval, align 1, !dbg !381
  ret i1 %19, !dbg !381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !382 dso_local i64 @_copy_to_iter(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !383 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !387, metadata !DIExpression()), !dbg !389
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !388, metadata !DIExpression()), !dbg !390
  %0 = load i32, ptr %size.addr, align 4, !dbg !391
  %1 = load i64, ptr %count.addr, align 8, !dbg !393
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #10, !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !396 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !399 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !400 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !404, metadata !DIExpression()), !dbg !407
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !405, metadata !DIExpression()), !dbg !408
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !406, metadata !DIExpression()), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !411 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.crash_dump_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/crash_dump_64\22 -D KBUILD_BASENAME=\22crash_dump_64\22 -D KBUILD_MODNAME=\22crash_dump_64\22 -D __KBUILD_MODNAME=kmod_crash_dump_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/crash_dump_64.ll arch/x86/kernel/crash_dump_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !26, globals: !29, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "arch/x86/kernel/crash_dump_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e6a9991c6a96179c16cf8e3b7aee307")
!9 = !{!10, !16}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !17, line: 22, baseType: !12, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!18 = !{!19, !20, !21, !22, !23, !24, !25}
!19 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!20 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!21 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!22 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!23 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!24 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!25 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!0}
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 8, !"cf-protection-branch", i32 1}
!34 = !{i32 4, !"function_return_thunk_extern", i32 1}
!35 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{i32 1, !"override-stack-alignment", i32 8}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = distinct !DISubprogram(name: "copy_oldmem_page", scope: !8, file: !8, line: 38, type: !40, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !158)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !48, !71, !68, !71}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !43, line: 66, baseType: !44)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !45, line: 73, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !45, line: 15, baseType: !47)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !50, line: 41, size: 320, elements: !51)
!50 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!51 = !{!52, !58, !61, !62, !63, !64, !73, !150}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !49, file: !50, line: 42, baseType: !53, size: 8)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !54, line: 17, baseType: !55)
!54 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !56, line: 21, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!57 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !49, file: !50, line: 43, baseType: !59, size: 8, offset: 8)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 35, baseType: !60)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !49, file: !50, line: 44, baseType: !59, size: 8, offset: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !49, file: !50, line: 45, baseType: !59, size: 8, offset: 24)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !49, file: !50, line: 46, baseType: !59, size: 8, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !49, file: !50, line: 47, baseType: !65, size: 64, offset: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !50, line: 47, size: 64, elements: !66)
!66 = !{!67, !72}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !65, file: !50, line: 48, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 61, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !71)
!71 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !65, file: !50, line: 49, baseType: !28, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !49, file: !50, line: 61, baseType: !74, size: 128, offset: 128)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !50, line: 61, size: 128, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !74, file: !50, line: 67, baseType: !77, size: 128)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !78, line: 17, size: 128, elements: !79)
!78 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !77, file: !78, line: 19, baseType: !27, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !77, file: !78, line: 20, baseType: !69, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !50, line: 68, baseType: !83, size: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !50, line: 68, size: 128, elements: !84)
!84 = !{!85, !149}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !50, line: 69, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !50, line: 69, size: 64, elements: !87)
!87 = !{!88, !91, !98, !102, !148}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !86, file: !50, line: 71, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !86, file: !50, line: 72, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !50, line: 17, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !94, file: !50, line: 18, baseType: !27, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !94, file: !50, line: 19, baseType: !68, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !86, file: !50, line: 73, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !50, line: 73, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !86, file: !50, line: 74, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !105, line: 296, size: 128, elements: !106)
!105 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!106 = !{!107, !145, !147}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !104, file: !105, line: 297, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !109, line: 29, baseType: !110)
!109 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !109, line: 17, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !109, line: 18, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !109, line: 18, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !113, file: !109, line: 19, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !117, line: 14, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !116, file: !117, line: 15, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !121, line: 44, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !121, line: 14, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !121, line: 15, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !121, line: 15, size: 32, elements: !126)
!126 = !{!127, !132, !137}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !121, line: 16, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !43, line: 174, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 172, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !129, file: !43, line: 173, baseType: !28, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !121, line: 24, baseType: !133, size: 16)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !121, line: 24, size: 16, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !133, file: !121, line: 25, baseType: !53, size: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !133, file: !121, line: 26, baseType: !53, size: 8, offset: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !121, line: 28, baseType: !138, size: 32)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !121, line: 28, size: 32, elements: !139)
!139 = !{!140, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !138, file: !121, line: 29, baseType: !141, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !54, line: 19, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !56, line: 24, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !138, file: !121, line: 30, baseType: !141, size: 16, offset: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !104, file: !105, line: 299, baseType: !146, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !43, line: 154, baseType: !12)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !104, file: !105, line: 300, baseType: !27, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !86, file: !50, line: 75, baseType: !27, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !83, file: !50, line: 77, baseType: !68, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !49, file: !50, line: 80, baseType: !151, size: 64, offset: 256)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !50, line: 80, size: 64, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !151, file: !50, line: 81, baseType: !71, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !151, file: !50, line: 82, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !43, line: 52, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !45, line: 88, baseType: !157)
!157 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!158 = !{!159, !160, !161, !162}
!159 = !DILocalVariable(name: "iter", arg: 1, scope: !39, file: !8, line: 38, type: !48)
!160 = !DILocalVariable(name: "pfn", arg: 2, scope: !39, file: !8, line: 38, type: !71)
!161 = !DILocalVariable(name: "csize", arg: 3, scope: !39, file: !8, line: 38, type: !68)
!162 = !DILocalVariable(name: "offset", arg: 4, scope: !39, file: !8, line: 39, type: !71)
!163 = !DILocation(line: 38, column: 43, scope: !39)
!164 = !DILocation(line: 38, column: 63, scope: !39)
!165 = !DILocation(line: 38, column: 75, scope: !39)
!166 = !DILocation(line: 39, column: 19, scope: !39)
!167 = !DILocation(line: 41, column: 28, scope: !39)
!168 = !DILocation(line: 41, column: 34, scope: !39)
!169 = !DILocation(line: 41, column: 39, scope: !39)
!170 = !DILocation(line: 41, column: 46, scope: !39)
!171 = !DILocation(line: 41, column: 9, scope: !39)
!172 = !DILocation(line: 41, column: 2, scope: !39)
!173 = distinct !DISubprogram(name: "__copy_oldmem_page", scope: !8, file: !8, line: 15, type: !174, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!42, !48, !71, !68, !71, !59}
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DILocalVariable(name: "iter", arg: 1, scope: !173, file: !8, line: 15, type: !48)
!178 = !DILocalVariable(name: "pfn", arg: 2, scope: !173, file: !8, line: 15, type: !71)
!179 = !DILocalVariable(name: "csize", arg: 3, scope: !173, file: !8, line: 16, type: !68)
!180 = !DILocalVariable(name: "offset", arg: 4, scope: !173, file: !8, line: 16, type: !71)
!181 = !DILocalVariable(name: "encrypted", arg: 5, scope: !173, file: !8, line: 17, type: !59)
!182 = !DILocalVariable(name: "vaddr", scope: !173, file: !8, line: 19, type: !27)
!183 = !DILocation(line: 15, column: 52, scope: !173)
!184 = !DILocation(line: 15, column: 72, scope: !173)
!185 = !DILocation(line: 16, column: 14, scope: !173)
!186 = !DILocation(line: 16, column: 35, scope: !173)
!187 = !DILocation(line: 17, column: 12, scope: !173)
!188 = !DILocation(line: 19, column: 2, scope: !173)
!189 = !DILocation(line: 19, column: 9, scope: !173)
!190 = !DILocation(line: 21, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !173, file: !8, line: 21, column: 6)
!192 = !DILocation(line: 21, column: 6, scope: !173)
!193 = !DILocation(line: 22, column: 3, scope: !191)
!194 = !DILocation(line: 24, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !173, file: !8, line: 24, column: 6)
!196 = !{i8 0, i8 2}
!197 = !{}
!198 = !DILocation(line: 24, column: 6, scope: !173)
!199 = !DILocation(line: 25, column: 45, scope: !195)
!200 = !DILocation(line: 25, column: 49, scope: !195)
!201 = !DILocation(line: 25, column: 27, scope: !195)
!202 = !DILocation(line: 25, column: 9, scope: !195)
!203 = !DILocation(line: 25, column: 3, scope: !195)
!204 = !DILocation(line: 27, column: 41, scope: !195)
!205 = !DILocation(line: 27, column: 45, scope: !195)
!206 = !DILocation(line: 27, column: 27, scope: !195)
!207 = !DILocation(line: 27, column: 9, scope: !195)
!208 = !DILocation(line: 29, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !173, file: !8, line: 29, column: 6)
!210 = !DILocation(line: 29, column: 6, scope: !173)
!211 = !DILocation(line: 30, column: 3, scope: !209)
!212 = !DILocation(line: 32, column: 23, scope: !173)
!213 = !DILocation(line: 32, column: 31, scope: !173)
!214 = !DILocation(line: 32, column: 29, scope: !173)
!215 = !DILocation(line: 32, column: 39, scope: !173)
!216 = !DILocation(line: 32, column: 46, scope: !173)
!217 = !DILocation(line: 32, column: 10, scope: !173)
!218 = !DILocation(line: 32, column: 8, scope: !173)
!219 = !DILocation(line: 34, column: 26, scope: !173)
!220 = !DILocation(line: 34, column: 2, scope: !173)
!221 = !DILocation(line: 35, column: 9, scope: !173)
!222 = !DILocation(line: 35, column: 2, scope: !173)
!223 = !DILocation(line: 36, column: 1, scope: !173)
!224 = distinct !DISubprogram(name: "copy_oldmem_page_encrypted", scope: !8, file: !8, line: 49, type: !40, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !225)
!225 = !{!226, !227, !228, !229}
!226 = !DILocalVariable(name: "iter", arg: 1, scope: !224, file: !8, line: 49, type: !48)
!227 = !DILocalVariable(name: "pfn", arg: 2, scope: !224, file: !8, line: 49, type: !71)
!228 = !DILocalVariable(name: "csize", arg: 3, scope: !224, file: !8, line: 50, type: !68)
!229 = !DILocalVariable(name: "offset", arg: 4, scope: !224, file: !8, line: 50, type: !71)
!230 = !DILocation(line: 49, column: 53, scope: !224)
!231 = !DILocation(line: 49, column: 73, scope: !224)
!232 = !DILocation(line: 50, column: 15, scope: !224)
!233 = !DILocation(line: 50, column: 36, scope: !224)
!234 = !DILocation(line: 52, column: 28, scope: !224)
!235 = !DILocation(line: 52, column: 34, scope: !224)
!236 = !DILocation(line: 52, column: 39, scope: !224)
!237 = !DILocation(line: 52, column: 46, scope: !224)
!238 = !DILocation(line: 52, column: 9, scope: !224)
!239 = !DILocation(line: 52, column: 2, scope: !224)
!240 = distinct !DISubprogram(name: "elfcorehdr_read", scope: !8, file: !8, line: 55, type: !241, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !248)
!241 = !DISubroutineType(types: !242)
!242 = !{!42, !243, !68, !244}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !54, line: 23, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !56, line: 31, baseType: !247)
!247 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DILocalVariable(name: "buf", arg: 1, scope: !240, file: !8, line: 55, type: !243)
!250 = !DILocalVariable(name: "count", arg: 2, scope: !240, file: !8, line: 55, type: !68)
!251 = !DILocalVariable(name: "ppos", arg: 3, scope: !240, file: !8, line: 55, type: !244)
!252 = !DILocalVariable(name: "kvec", scope: !240, file: !8, line: 57, type: !94)
!253 = !DILocalVariable(name: "iter", scope: !240, file: !8, line: 58, type: !49)
!254 = !DILocation(line: 55, column: 31, scope: !240)
!255 = !DILocation(line: 55, column: 43, scope: !240)
!256 = !DILocation(line: 55, column: 55, scope: !240)
!257 = !DILocation(line: 57, column: 2, scope: !240)
!258 = !DILocation(line: 57, column: 14, scope: !240)
!259 = !DILocation(line: 57, column: 21, scope: !240)
!260 = !DILocation(line: 57, column: 35, scope: !240)
!261 = !DILocation(line: 57, column: 51, scope: !240)
!262 = !DILocation(line: 58, column: 2, scope: !240)
!263 = !DILocation(line: 58, column: 18, scope: !240)
!264 = !DILocation(line: 60, column: 44, scope: !240)
!265 = !DILocation(line: 60, column: 2, scope: !240)
!266 = !DILocation(line: 62, column: 33, scope: !240)
!267 = !DILocation(line: 62, column: 40, scope: !240)
!268 = !DILocation(line: 63, column: 5, scope: !240)
!269 = !DILocation(line: 62, column: 9, scope: !240)
!270 = !DILocation(line: 64, column: 1, scope: !240)
!271 = !DILocation(line: 62, column: 2, scope: !240)
!272 = !DISubprogram(name: "iov_iter_kvec", scope: !50, file: !50, line: 280, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !48, !12, !92, !71, !68}
!275 = !DISubprogram(name: "read_from_oldmem", scope: !276, file: !276, line: 137, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DIFile(filename: "./include/linux/crash_dump.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe21eac385314f4348aae145aeec3eff")
!277 = !DISubroutineType(types: !278)
!278 = !{!42, !48, !68, !244, !59}
!279 = distinct !DISubprogram(name: "cc_platform_has", scope: !17, file: !17, line: 113, type: !280, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!59, !16}
!282 = !{!283}
!283 = !DILocalVariable(name: "attr", arg: 1, scope: !279, file: !17, line: 113, type: !16)
!284 = !DILocation(line: 113, column: 49, scope: !279)
!285 = !DILocation(line: 113, column: 57, scope: !279)
!286 = !DISubprogram(name: "ioremap_encrypted", scope: !287, file: !287, line: 179, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!288 = !DISubroutineType(types: !289)
!289 = !{!27, !290, !71}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !43, line: 164, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !43, line: 159, baseType: !245)
!292 = !DISubprogram(name: "ioremap_cache", scope: !287, file: !287, line: 175, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = distinct !DISubprogram(name: "copy_to_iter", scope: !50, file: !50, line: 198, type: !294, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !298)
!294 = !DISubroutineType(types: !295)
!295 = !{!68, !296, !68, !48}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "addr", arg: 1, scope: !293, file: !50, line: 198, type: !296)
!300 = !DILocalVariable(name: "bytes", arg: 2, scope: !293, file: !50, line: 198, type: !68)
!301 = !DILocalVariable(name: "i", arg: 3, scope: !293, file: !50, line: 198, type: !48)
!302 = !DILocation(line: 198, column: 33, scope: !293)
!303 = !DILocation(line: 198, column: 46, scope: !293)
!304 = !DILocation(line: 198, column: 70, scope: !293)
!305 = !DILocation(line: 200, column: 22, scope: !306)
!306 = distinct !DILexicalBlock(scope: !293, file: !50, line: 200, column: 6)
!307 = !DILocation(line: 200, column: 28, scope: !306)
!308 = !DILocation(line: 200, column: 6, scope: !306)
!309 = !DILocation(line: 200, column: 6, scope: !293)
!310 = !DILocation(line: 201, column: 24, scope: !306)
!311 = !DILocation(line: 201, column: 30, scope: !306)
!312 = !DILocation(line: 201, column: 37, scope: !306)
!313 = !DILocation(line: 201, column: 10, scope: !306)
!314 = !DILocation(line: 201, column: 3, scope: !306)
!315 = !DILocation(line: 202, column: 2, scope: !293)
!316 = !DILocation(line: 203, column: 1, scope: !293)
!317 = !DISubprogram(name: "iounmap", scope: !287, file: !287, line: 199, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!322 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !323, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!59, !296, !68, !59}
!325 = !{!326, !327, !328, !329, !330, !333}
!326 = !DILocalVariable(name: "addr", arg: 1, scope: !322, file: !2, line: 237, type: !296)
!327 = !DILocalVariable(name: "bytes", arg: 2, scope: !322, file: !2, line: 237, type: !68)
!328 = !DILocalVariable(name: "is_source", arg: 3, scope: !322, file: !2, line: 237, type: !59)
!329 = !DILocalVariable(name: "sz", scope: !322, file: !2, line: 239, type: !28)
!330 = !DILocalVariable(name: "__ret_warn_on", scope: !331, file: !2, line: 249, type: !28)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 249, column: 6)
!332 = distinct !DILexicalBlock(scope: !322, file: !2, line: 249, column: 6)
!333 = !DILocalVariable(name: "__flags", scope: !334, file: !2, line: 249, type: !28)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 249, column: 6)
!335 = distinct !DILexicalBlock(scope: !331, file: !2, line: 249, column: 6)
!336 = !DILocation(line: 237, column: 29, scope: !322)
!337 = !DILocation(line: 237, column: 42, scope: !322)
!338 = !DILocation(line: 237, column: 54, scope: !322)
!339 = !DILocation(line: 239, column: 2, scope: !322)
!340 = !DILocation(line: 239, column: 6, scope: !322)
!341 = !DILocation(line: 239, column: 33, scope: !322)
!342 = !DILocation(line: 239, column: 11, scope: !322)
!343 = !DILocation(line: 240, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !322, file: !2, line: 240, column: 6)
!345 = !DILocation(line: 0, scope: !344)
!346 = !DILocation(line: 240, column: 6, scope: !322)
!347 = !DILocation(line: 241, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 241, column: 7)
!349 = distinct !DILexicalBlock(scope: !344, file: !2, line: 240, column: 39)
!350 = !DILocation(line: 241, column: 8, scope: !348)
!351 = !DILocation(line: 241, column: 7, scope: !349)
!352 = !DILocation(line: 242, column: 18, scope: !348)
!353 = !DILocation(line: 242, column: 22, scope: !348)
!354 = !DILocation(line: 242, column: 4, scope: !348)
!355 = !DILocation(line: 243, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !2, line: 243, column: 12)
!357 = !DILocation(line: 243, column: 12, scope: !348)
!358 = !DILocation(line: 244, column: 4, scope: !356)
!359 = !{i32 1689281}
!360 = !DILocation(line: 246, column: 4, scope: !356)
!361 = !{i32 1689310}
!362 = !DILocation(line: 247, column: 3, scope: !349)
!363 = !DILocation(line: 249, column: 6, scope: !331)
!364 = !DILocation(line: 249, column: 6, scope: !335)
!365 = !DILocation(line: 249, column: 6, scope: !334)
!366 = !DILocation(line: 249, column: 6, scope: !367)
!367 = distinct !DILexicalBlock(scope: !334, file: !2, line: 249, column: 6)
!368 = !DILocation(line: 249, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !334, file: !2, line: 249, column: 6)
!370 = !{i64 2149614466, i64 2149614495, i64 2149614541, i64 2149614599, i64 2149614653, i64 2149614707, i64 2149614762, i64 2149614793, i64 2149615101, i64 2149615107, i64 2149615154, i64 2149615177, i64 2149615203}
!371 = !DILocation(line: 249, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !334, file: !2, line: 249, column: 6)
!373 = !DILocation(line: 249, column: 6, scope: !332)
!374 = !DILocation(line: 249, column: 6, scope: !322)
!375 = !DILocation(line: 250, column: 3, scope: !332)
!376 = !DILocation(line: 251, column: 20, scope: !322)
!377 = !DILocation(line: 251, column: 26, scope: !322)
!378 = !DILocation(line: 251, column: 33, scope: !322)
!379 = !DILocation(line: 251, column: 2, scope: !322)
!380 = !DILocation(line: 252, column: 2, scope: !322)
!381 = !DILocation(line: 253, column: 1, scope: !322)
!382 = !DISubprogram(name: "_copy_to_iter", scope: !50, file: !50, line: 178, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !384, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !28, !71}
!386 = !{!387, !388}
!387 = !DILocalVariable(name: "size", arg: 1, scope: !383, file: !2, line: 230, type: !28)
!388 = !DILocalVariable(name: "count", arg: 2, scope: !383, file: !2, line: 230, type: !71)
!389 = !DILocation(line: 230, column: 38, scope: !383)
!390 = !DILocation(line: 230, column: 58, scope: !383)
!391 = !DILocation(line: 233, column: 19, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !2, line: 232, column: 6)
!393 = !DILocation(line: 233, column: 25, scope: !392)
!394 = !DILocation(line: 233, column: 3, scope: !392)
!395 = !DILocation(line: 234, column: 1, scope: !383)
!396 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{null}
!399 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !401, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !296, !71, !59}
!403 = !{!404, !405, !406}
!404 = !DILocalVariable(name: "ptr", arg: 1, scope: !400, file: !2, line: 218, type: !296)
!405 = !DILocalVariable(name: "n", arg: 2, scope: !400, file: !2, line: 218, type: !71)
!406 = !DILocalVariable(name: "to_user", arg: 3, scope: !400, file: !2, line: 219, type: !59)
!407 = !DILocation(line: 218, column: 50, scope: !400)
!408 = !DILocation(line: 218, column: 69, scope: !400)
!409 = !DILocation(line: 219, column: 15, scope: !400)
!410 = !DILocation(line: 220, column: 3, scope: !400)
!411 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
