; ModuleID = 'net/wireless/radiotap.c'
source_filename = "net/wireless/radiotap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ieee80211_radiotap_iterator_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ieee80211_radiotap_iterator_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ieee80211_radiotap_iterator_next: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ieee80211_radiotap_iterator_next ; .previous"

%struct.ieee80211_radiotap_namespace = type { ptr, i32, i32, i8 }
%struct.radiotap_align_size = type { i8 }
%struct.ieee80211_radiotap_header = type { %union.anon, [0 x i32] }
%union.anon = type { %struct.anon }
%struct.anon = type { i8, i8, i16, i32 }
%struct.ieee80211_radiotap_iterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i16 }
%struct.anon.1 = type { i32 }
%struct.ieee80211_radiotap_vendor_namespaces = type { ptr, i32 }

@radiotap_ns = internal constant %struct.ieee80211_radiotap_namespace { ptr @rtap_namespace_sizes, i32 22, i32 0, i8 0 }, align 8, !dbg !0
@__UNIQUE_ID___addressable_ieee80211_radiotap_iterator_init409 = internal global ptr @ieee80211_radiotap_iterator_init, section ".discard.addressable", align 8, !dbg !88
@__UNIQUE_ID___addressable_ieee80211_radiotap_iterator_next410 = internal global ptr @ieee80211_radiotap_iterator_next, section ".discard.addressable", align 8, !dbg !90
@rtap_namespace_sizes = internal constant [22 x %struct.radiotap_align_size] [%struct.radiotap_align_size { i8 -120 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 66 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size zeroinitializer, %struct.radiotap_align_size { i8 49 }, %struct.radiotap_align_size { i8 -124 }, %struct.radiotap_align_size { i8 -62 }], align 16, !dbg !92
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_ieee80211_radiotap_iterator_init409, ptr @__UNIQUE_ID___addressable_ieee80211_radiotap_iterator_next410], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ieee80211_radiotap_iterator_init(ptr noundef %iterator, ptr noundef %radiotap_header, i32 noundef %max_length, ptr noundef %vns) #0 align 16 !dbg !122 {
entry:
  %retval = alloca i32, align 4
  %iterator.addr = alloca ptr, align 8
  %radiotap_header.addr = alloca ptr, align 8
  %max_length.addr = alloca i32, align 4
  %vns.addr = alloca ptr, align 8
  store ptr %iterator, ptr %iterator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !176, metadata !DIExpression()), !dbg !180
  store ptr %radiotap_header, ptr %radiotap_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %radiotap_header.addr, metadata !177, metadata !DIExpression()), !dbg !181
  store i32 %max_length, ptr %max_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_length.addr, metadata !178, metadata !DIExpression()), !dbg !182
  store ptr %vns, ptr %vns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vns.addr, metadata !179, metadata !DIExpression()), !dbg !183
  %0 = load i32, ptr %max_length.addr, align 4, !dbg !184
  %conv = sext i32 %0 to i64, !dbg !184
  %cmp = icmp ult i64 %conv, 8, !dbg !186
  br i1 %cmp, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !188
  br label %return, !dbg !188

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !189
  %2 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %1, i32 0, i32 0, !dbg !191
  %it_version = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !191
  %3 = load i8, ptr %it_version, align 1, !dbg !191
  %tobool = icmp ne i8 %3, 0, !dbg !189
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !192

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !193
  br label %return, !dbg !193

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %max_length.addr, align 4, !dbg !194
  %5 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !196
  %6 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %5, i32 0, i32 0, !dbg !197
  %it_len = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2, !dbg !197
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %it_len) #4, !dbg !198
  %conv4 = zext i16 %call to i32, !dbg !198
  %cmp5 = icmp slt i32 %4, %conv4, !dbg !199
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !200

if.then7:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !201
  br label %return, !dbg !201

if.end8:                                          ; preds = %if.end3
  %7 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !202
  %8 = load ptr, ptr %iterator.addr, align 8, !dbg !203
  %_rtheader = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %8, i32 0, i32 0, !dbg !204
  store ptr %7, ptr %_rtheader, align 8, !dbg !205
  %9 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !206
  %10 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %9, i32 0, i32 0, !dbg !207
  %it_len9 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 2, !dbg !207
  %call10 = call zeroext i16 @get_unaligned_le16(ptr noundef %it_len9) #4, !dbg !208
  %conv11 = zext i16 %call10 to i32, !dbg !208
  %11 = load ptr, ptr %iterator.addr, align 8, !dbg !209
  %_max_length = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %11, i32 0, i32 10, !dbg !210
  store i32 %conv11, ptr %_max_length, align 4, !dbg !211
  %12 = load ptr, ptr %iterator.addr, align 8, !dbg !212
  %_arg_index = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %12, i32 0, i32 11, !dbg !213
  store i32 0, ptr %_arg_index, align 8, !dbg !214
  %13 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !215
  %14 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %13, i32 0, i32 0, !dbg !216
  %it_present = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 3, !dbg !216
  %call12 = call i32 @get_unaligned_le32(ptr noundef %it_present) #4, !dbg !217
  %15 = load ptr, ptr %iterator.addr, align 8, !dbg !218
  %_bitmap_shifter = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %15, i32 0, i32 12, !dbg !219
  store i32 %call12, ptr %_bitmap_shifter, align 4, !dbg !220
  %16 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !221
  %it_optional = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %16, i32 0, i32 1, !dbg !222
  %arraydecay = getelementptr inbounds [0 x i32], ptr %it_optional, i64 0, i64 0, !dbg !221
  %17 = load ptr, ptr %iterator.addr, align 8, !dbg !223
  %_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %17, i32 0, i32 3, !dbg !224
  store ptr %arraydecay, ptr %_arg, align 8, !dbg !225
  %18 = load ptr, ptr %iterator.addr, align 8, !dbg !226
  %_reset_on_ext = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %18, i32 0, i32 13, !dbg !227
  store i32 0, ptr %_reset_on_ext, align 8, !dbg !228
  %19 = load ptr, ptr %radiotap_header.addr, align 8, !dbg !229
  %it_optional13 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %19, i32 0, i32 1, !dbg !230
  %arraydecay14 = getelementptr inbounds [0 x i32], ptr %it_optional13, i64 0, i64 0, !dbg !229
  %20 = load ptr, ptr %iterator.addr, align 8, !dbg !231
  %_next_bitmap = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %20, i32 0, i32 5, !dbg !232
  store ptr %arraydecay14, ptr %_next_bitmap, align 8, !dbg !233
  %21 = load ptr, ptr %vns.addr, align 8, !dbg !234
  %22 = load ptr, ptr %iterator.addr, align 8, !dbg !235
  %_vns = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %22, i32 0, i32 1, !dbg !236
  store ptr %21, ptr %_vns, align 8, !dbg !237
  %23 = load ptr, ptr %iterator.addr, align 8, !dbg !238
  %current_namespace = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %23, i32 0, i32 2, !dbg !239
  store ptr @radiotap_ns, ptr %current_namespace, align 8, !dbg !240
  %24 = load ptr, ptr %iterator.addr, align 8, !dbg !241
  %is_radiotap_ns = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %24, i32 0, i32 9, !dbg !242
  store i32 1, ptr %is_radiotap_ns, align 8, !dbg !243
  %25 = load ptr, ptr %iterator.addr, align 8, !dbg !244
  %_bitmap_shifter15 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %25, i32 0, i32 12, !dbg !246
  %26 = load i32, ptr %_bitmap_shifter15, align 4, !dbg !246
  %conv16 = zext i32 %26 to i64, !dbg !244
  %and = and i64 %conv16, 2147483648, !dbg !247
  %tobool17 = icmp ne i64 %and, 0, !dbg !247
  br i1 %tobool17, label %if.then18, label %if.end45, !dbg !248

if.then18:                                        ; preds = %if.end8
  %27 = load ptr, ptr %iterator.addr, align 8, !dbg !249
  %_arg19 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %27, i32 0, i32 3, !dbg !252
  %28 = load ptr, ptr %_arg19, align 8, !dbg !252
  %29 = ptrtoint ptr %28 to i64, !dbg !253
  %30 = load ptr, ptr %iterator.addr, align 8, !dbg !254
  %_rtheader20 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %30, i32 0, i32 0, !dbg !255
  %31 = load ptr, ptr %_rtheader20, align 8, !dbg !255
  %32 = ptrtoint ptr %31 to i64, !dbg !256
  %sub = sub i64 %29, %32, !dbg !257
  %add = add i64 %sub, 4, !dbg !258
  %33 = load ptr, ptr %iterator.addr, align 8, !dbg !259
  %_max_length21 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %33, i32 0, i32 10, !dbg !260
  %34 = load i32, ptr %_max_length21, align 4, !dbg !260
  %conv22 = sext i32 %34 to i64, !dbg !261
  %cmp23 = icmp ugt i64 %add, %conv22, !dbg !262
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !263

if.then25:                                        ; preds = %if.then18
  store i32 -22, ptr %retval, align 4, !dbg !264
  br label %return, !dbg !264

if.end26:                                         ; preds = %if.then18
  br label %while.cond, !dbg !265

while.cond:                                       ; preds = %if.end42, %if.end26
  %35 = load ptr, ptr %iterator.addr, align 8, !dbg !266
  %_arg27 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %35, i32 0, i32 3, !dbg !267
  %36 = load ptr, ptr %_arg27, align 8, !dbg !267
  %call28 = call i32 @get_unaligned_le32(ptr noundef %36) #4, !dbg !268
  %conv29 = zext i32 %call28 to i64, !dbg !268
  %and30 = and i64 %conv29, 2147483648, !dbg !269
  %tobool31 = icmp ne i64 %and30, 0, !dbg !265
  br i1 %tobool31, label %while.body, label %while.end, !dbg !265

while.body:                                       ; preds = %while.cond
  %37 = load ptr, ptr %iterator.addr, align 8, !dbg !270
  %_arg32 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %37, i32 0, i32 3, !dbg !272
  %38 = load ptr, ptr %_arg32, align 8, !dbg !273
  %add.ptr = getelementptr i8, ptr %38, i64 4, !dbg !273
  store ptr %add.ptr, ptr %_arg32, align 8, !dbg !273
  %39 = load ptr, ptr %iterator.addr, align 8, !dbg !274
  %_arg33 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %39, i32 0, i32 3, !dbg !276
  %40 = load ptr, ptr %_arg33, align 8, !dbg !276
  %41 = ptrtoint ptr %40 to i64, !dbg !277
  %42 = load ptr, ptr %iterator.addr, align 8, !dbg !278
  %_rtheader34 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %42, i32 0, i32 0, !dbg !279
  %43 = load ptr, ptr %_rtheader34, align 8, !dbg !279
  %44 = ptrtoint ptr %43 to i64, !dbg !280
  %sub35 = sub i64 %41, %44, !dbg !281
  %add36 = add i64 %sub35, 4, !dbg !282
  %45 = load ptr, ptr %iterator.addr, align 8, !dbg !283
  %_max_length37 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %45, i32 0, i32 10, !dbg !284
  %46 = load i32, ptr %_max_length37, align 4, !dbg !284
  %conv38 = sext i32 %46 to i64, !dbg !285
  %cmp39 = icmp ugt i64 %add36, %conv38, !dbg !286
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !287

if.then41:                                        ; preds = %while.body
  store i32 -22, ptr %retval, align 4, !dbg !288
  br label %return, !dbg !288

if.end42:                                         ; preds = %while.body
  br label %while.cond, !dbg !265, !llvm.loop !289

while.end:                                        ; preds = %while.cond
  %47 = load ptr, ptr %iterator.addr, align 8, !dbg !293
  %_arg43 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %47, i32 0, i32 3, !dbg !294
  %48 = load ptr, ptr %_arg43, align 8, !dbg !295
  %add.ptr44 = getelementptr i8, ptr %48, i64 4, !dbg !295
  store ptr %add.ptr44, ptr %_arg43, align 8, !dbg !295
  br label %if.end45, !dbg !296

if.end45:                                         ; preds = %while.end, %if.end8
  %49 = load ptr, ptr %iterator.addr, align 8, !dbg !297
  %_arg46 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %49, i32 0, i32 3, !dbg !298
  %50 = load ptr, ptr %_arg46, align 8, !dbg !298
  %51 = load ptr, ptr %iterator.addr, align 8, !dbg !299
  %this_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %51, i32 0, i32 6, !dbg !300
  store ptr %50, ptr %this_arg, align 8, !dbg !301
  store i32 0, ptr %retval, align 4, !dbg !302
  br label %return, !dbg !302

return:                                           ; preds = %if.end45, %if.then41, %if.then25, %if.then7, %if.then2, %if.then
  %52 = load i32, ptr %retval, align 4, !dbg !303
  ret i32 %52, !dbg !303
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #2 align 16 !dbg !60 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !67, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !68, metadata !DIExpression()), !dbg !305
  %0 = load ptr, ptr %p.addr, align 8, !dbg !305
  store ptr %0, ptr %__pptr, align 8, !dbg !305
  %1 = load ptr, ptr %__pptr, align 8, !dbg !305
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !305
  %2 = load i16, ptr %x, align 1, !dbg !305
  store i16 %2, ptr %tmp, align 2, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !306
  %3 = load i16, ptr %tmp, align 2, !dbg !305
  ret i16 %3, !dbg !307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #2 align 16 !dbg !77 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !82, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !83, metadata !DIExpression()), !dbg !309
  %0 = load ptr, ptr %p.addr, align 8, !dbg !309
  store ptr %0, ptr %__pptr, align 8, !dbg !309
  %1 = load ptr, ptr %__pptr, align 8, !dbg !309
  %x = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !309
  %2 = load i32, ptr %x, align 1, !dbg !309
  store i32 %2, ptr %tmp, align 4, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !310
  %3 = load i32, ptr %tmp, align 4, !dbg !309
  ret i32 %3, !dbg !311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ieee80211_radiotap_iterator_next(ptr noundef %iterator) #0 align 16 !dbg !312 {
entry:
  %retval = alloca i32, align 4
  %iterator.addr = alloca ptr, align 8
  %hit = alloca i32, align 4
  %pad = alloca i32, align 4
  %align = alloca i32, align 4
  %size = alloca i32, align 4
  %subns = alloca i32, align 4
  %oui = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %vnslen = alloca i32, align 4
  store ptr %iterator, ptr %iterator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !316, metadata !DIExpression()), !dbg !329
  br label %while.body, !dbg !330

while.body:                                       ; preds = %entry, %cleanup.cont138
  call void @llvm.lifetime.start.p0(i64 4, ptr %hit) #5, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %hit, metadata !317, metadata !DIExpression()), !dbg !332
  store i32 0, ptr %hit, align 4, !dbg !332
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #5, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %pad, metadata !319, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 4, ptr %align) #5, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %align, metadata !320, metadata !DIExpression()), !dbg !335
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #5, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %size, metadata !321, metadata !DIExpression()), !dbg !336
  call void @llvm.lifetime.start.p0(i64 4, ptr %subns) #5, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %subns, metadata !322, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 4, ptr %oui) #5, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %oui, metadata !323, metadata !DIExpression()), !dbg !339
  %0 = load ptr, ptr %iterator.addr, align 8, !dbg !340
  %_arg_index = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 11, !dbg !342
  %1 = load i32, ptr %_arg_index, align 8, !dbg !342
  %rem = srem i32 %1, 32, !dbg !343
  %cmp = icmp eq i32 %rem, 31, !dbg !344
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !345

land.lhs.true:                                    ; preds = %while.body
  %2 = load ptr, ptr %iterator.addr, align 8, !dbg !346
  %_bitmap_shifter = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %2, i32 0, i32 12, !dbg !347
  %3 = load i32, ptr %_bitmap_shifter, align 4, !dbg !347
  %and = and i32 %3, 1, !dbg !348
  %tobool = icmp ne i32 %and, 0, !dbg !348
  br i1 %tobool, label %if.end, label %if.then, !dbg !349

if.then:                                          ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4, !dbg !350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !350

if.end:                                           ; preds = %land.lhs.true, %while.body
  %4 = load ptr, ptr %iterator.addr, align 8, !dbg !351
  %_bitmap_shifter1 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %4, i32 0, i32 12, !dbg !353
  %5 = load i32, ptr %_bitmap_shifter1, align 4, !dbg !353
  %and2 = and i32 %5, 1, !dbg !354
  %tobool3 = icmp ne i32 %and2, 0, !dbg !354
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !355

if.then4:                                         ; preds = %if.end
  br label %next_entry, !dbg !356

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %iterator.addr, align 8, !dbg !357
  %_arg_index6 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %6, i32 0, i32 11, !dbg !358
  %7 = load i32, ptr %_arg_index6, align 8, !dbg !358
  %rem7 = srem i32 %7, 32, !dbg !359
  switch i32 %rem7, label %sw.default [
    i32 29, label %sw.bb
    i32 31, label %sw.bb
    i32 30, label %sw.bb8
  ], !dbg !360

sw.bb:                                            ; preds = %if.end5, %if.end5
  store i32 1, ptr %align, align 4, !dbg !361
  store i32 0, ptr %size, align 4, !dbg !363
  br label %sw.epilog, !dbg !364

sw.bb8:                                           ; preds = %if.end5
  store i32 2, ptr %align, align 4, !dbg !365
  store i32 6, ptr %size, align 4, !dbg !366
  br label %sw.epilog, !dbg !367

sw.default:                                       ; preds = %if.end5
  %8 = load ptr, ptr %iterator.addr, align 8, !dbg !368
  %current_namespace = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %8, i32 0, i32 2, !dbg !370
  %9 = load ptr, ptr %current_namespace, align 8, !dbg !370
  %tobool9 = icmp ne ptr %9, null, !dbg !368
  br i1 %tobool9, label %lor.lhs.false, label %if.then13, !dbg !371

lor.lhs.false:                                    ; preds = %sw.default
  %10 = load ptr, ptr %iterator.addr, align 8, !dbg !372
  %_arg_index10 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %10, i32 0, i32 11, !dbg !373
  %11 = load i32, ptr %_arg_index10, align 8, !dbg !373
  %12 = load ptr, ptr %iterator.addr, align 8, !dbg !374
  %current_namespace11 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %12, i32 0, i32 2, !dbg !375
  %13 = load ptr, ptr %current_namespace11, align 8, !dbg !375
  %n_bits = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %13, i32 0, i32 1, !dbg !376
  %14 = load i32, ptr %n_bits, align 8, !dbg !376
  %cmp12 = icmp sge i32 %11, %14, !dbg !377
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !378

if.then13:                                        ; preds = %lor.lhs.false, %sw.default
  %15 = load ptr, ptr %iterator.addr, align 8, !dbg !379
  %current_namespace14 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %15, i32 0, i32 2, !dbg !382
  %16 = load ptr, ptr %current_namespace14, align 8, !dbg !382
  %cmp15 = icmp eq ptr %16, @radiotap_ns, !dbg !383
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !384

if.then16:                                        ; preds = %if.then13
  store i32 -2, ptr %retval, align 4, !dbg !385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !385

if.end17:                                         ; preds = %if.then13
  store i32 0, ptr %align, align 4, !dbg !386
  br label %if.end27, !dbg !387

if.else:                                          ; preds = %lor.lhs.false
  %17 = load ptr, ptr %iterator.addr, align 8, !dbg !388
  %current_namespace18 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %17, i32 0, i32 2, !dbg !390
  %18 = load ptr, ptr %current_namespace18, align 8, !dbg !390
  %align_size = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %18, i32 0, i32 0, !dbg !391
  %19 = load ptr, ptr %align_size, align 8, !dbg !391
  %20 = load ptr, ptr %iterator.addr, align 8, !dbg !392
  %_arg_index19 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %20, i32 0, i32 11, !dbg !393
  %21 = load i32, ptr %_arg_index19, align 8, !dbg !393
  %idxprom = sext i32 %21 to i64, !dbg !388
  %arrayidx = getelementptr %struct.radiotap_align_size, ptr %19, i64 %idxprom, !dbg !388
  %bf.load = load i8, ptr %arrayidx, align 1, !dbg !394
  %bf.clear = and i8 %bf.load, 15, !dbg !394
  %conv = zext i8 %bf.clear to i32, !dbg !388
  store i32 %conv, ptr %align, align 4, !dbg !395
  %22 = load ptr, ptr %iterator.addr, align 8, !dbg !396
  %current_namespace20 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %22, i32 0, i32 2, !dbg !397
  %23 = load ptr, ptr %current_namespace20, align 8, !dbg !397
  %align_size21 = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %23, i32 0, i32 0, !dbg !398
  %24 = load ptr, ptr %align_size21, align 8, !dbg !398
  %25 = load ptr, ptr %iterator.addr, align 8, !dbg !399
  %_arg_index22 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %25, i32 0, i32 11, !dbg !400
  %26 = load i32, ptr %_arg_index22, align 8, !dbg !400
  %idxprom23 = sext i32 %26 to i64, !dbg !396
  %arrayidx24 = getelementptr %struct.radiotap_align_size, ptr %24, i64 %idxprom23, !dbg !396
  %bf.load25 = load i8, ptr %arrayidx24, align 1, !dbg !401
  %bf.lshr = lshr i8 %bf.load25, 4, !dbg !401
  %conv26 = zext i8 %bf.lshr to i32, !dbg !396
  store i32 %conv26, ptr %size, align 4, !dbg !402
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end17
  %27 = load i32, ptr %align, align 4, !dbg !403
  %tobool28 = icmp ne i32 %27, 0, !dbg !403
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !405

if.then29:                                        ; preds = %if.end27
  %28 = load ptr, ptr %iterator.addr, align 8, !dbg !406
  %_next_ns_data = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %28, i32 0, i32 4, !dbg !408
  %29 = load ptr, ptr %_next_ns_data, align 8, !dbg !408
  %30 = load ptr, ptr %iterator.addr, align 8, !dbg !409
  %_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %30, i32 0, i32 3, !dbg !410
  store ptr %29, ptr %_arg, align 8, !dbg !411
  %31 = load ptr, ptr %iterator.addr, align 8, !dbg !412
  %current_namespace30 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %31, i32 0, i32 2, !dbg !413
  store ptr null, ptr %current_namespace30, align 8, !dbg !414
  br label %next_entry, !dbg !415

if.end31:                                         ; preds = %if.end27
  br label %sw.epilog, !dbg !416

sw.epilog:                                        ; preds = %if.end31, %sw.bb8, %sw.bb
  %32 = load ptr, ptr %iterator.addr, align 8, !dbg !417
  %_arg32 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %32, i32 0, i32 3, !dbg !418
  %33 = load ptr, ptr %_arg32, align 8, !dbg !418
  %34 = ptrtoint ptr %33 to i64, !dbg !419
  %35 = load ptr, ptr %iterator.addr, align 8, !dbg !420
  %_rtheader = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %35, i32 0, i32 0, !dbg !421
  %36 = load ptr, ptr %_rtheader, align 8, !dbg !421
  %37 = ptrtoint ptr %36 to i64, !dbg !422
  %sub = sub i64 %34, %37, !dbg !423
  %38 = load i32, ptr %align, align 4, !dbg !424
  %sub33 = sub i32 %38, 1, !dbg !425
  %conv34 = sext i32 %sub33 to i64, !dbg !426
  %and35 = and i64 %sub, %conv34, !dbg !427
  %conv36 = trunc i64 %and35 to i32, !dbg !428
  store i32 %conv36, ptr %pad, align 4, !dbg !429
  %39 = load i32, ptr %pad, align 4, !dbg !430
  %tobool37 = icmp ne i32 %39, 0, !dbg !430
  br i1 %tobool37, label %if.then38, label %if.end41, !dbg !432

if.then38:                                        ; preds = %sw.epilog
  %40 = load i32, ptr %align, align 4, !dbg !433
  %41 = load i32, ptr %pad, align 4, !dbg !434
  %sub39 = sub i32 %40, %41, !dbg !435
  %42 = load ptr, ptr %iterator.addr, align 8, !dbg !436
  %_arg40 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %42, i32 0, i32 3, !dbg !437
  %43 = load ptr, ptr %_arg40, align 8, !dbg !438
  %idx.ext = sext i32 %sub39 to i64, !dbg !438
  %add.ptr = getelementptr i8, ptr %43, i64 %idx.ext, !dbg !438
  store ptr %add.ptr, ptr %_arg40, align 8, !dbg !438
  br label %if.end41, !dbg !436

if.end41:                                         ; preds = %if.then38, %sw.epilog
  %44 = load ptr, ptr %iterator.addr, align 8, !dbg !439
  %_arg_index42 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %44, i32 0, i32 11, !dbg !440
  %45 = load i32, ptr %_arg_index42, align 8, !dbg !440
  %rem43 = srem i32 %45, 32, !dbg !441
  %cmp44 = icmp eq i32 %rem43, 30, !dbg !442
  br i1 %cmp44, label %if.then46, label %if.end84, !dbg !443

if.then46:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr %vnslen) #5, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %vnslen, metadata !324, metadata !DIExpression()), !dbg !445
  %46 = load ptr, ptr %iterator.addr, align 8, !dbg !446
  %_arg47 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %46, i32 0, i32 3, !dbg !448
  %47 = load ptr, ptr %_arg47, align 8, !dbg !448
  %48 = ptrtoint ptr %47 to i64, !dbg !449
  %49 = load i32, ptr %size, align 4, !dbg !450
  %conv48 = sext i32 %49 to i64, !dbg !450
  %add = add i64 %48, %conv48, !dbg !451
  %50 = load ptr, ptr %iterator.addr, align 8, !dbg !452
  %_rtheader49 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %50, i32 0, i32 0, !dbg !453
  %51 = load ptr, ptr %_rtheader49, align 8, !dbg !453
  %52 = ptrtoint ptr %51 to i64, !dbg !454
  %sub50 = sub i64 %add, %52, !dbg !455
  %53 = load ptr, ptr %iterator.addr, align 8, !dbg !456
  %_max_length = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %53, i32 0, i32 10, !dbg !457
  %54 = load i32, ptr %_max_length, align 4, !dbg !457
  %conv51 = sext i32 %54 to i64, !dbg !458
  %cmp52 = icmp ugt i64 %sub50, %conv51, !dbg !459
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !460

if.then54:                                        ; preds = %if.then46
  store i32 -22, ptr %retval, align 4, !dbg !461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !461

if.end55:                                         ; preds = %if.then46
  %55 = load ptr, ptr %iterator.addr, align 8, !dbg !462
  %_arg56 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %55, i32 0, i32 3, !dbg !463
  %56 = load ptr, ptr %_arg56, align 8, !dbg !463
  %57 = load i8, ptr %56, align 1, !dbg !464
  %conv57 = zext i8 %57 to i32, !dbg !464
  %shl = shl i32 %conv57, 16, !dbg !465
  %58 = load ptr, ptr %iterator.addr, align 8, !dbg !466
  %_arg58 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %58, i32 0, i32 3, !dbg !467
  %59 = load ptr, ptr %_arg58, align 8, !dbg !467
  %add.ptr59 = getelementptr i8, ptr %59, i64 1, !dbg !468
  %60 = load i8, ptr %add.ptr59, align 1, !dbg !469
  %conv60 = zext i8 %60 to i32, !dbg !469
  %shl61 = shl i32 %conv60, 8, !dbg !470
  %or = or i32 %shl, %shl61, !dbg !471
  %61 = load ptr, ptr %iterator.addr, align 8, !dbg !472
  %_arg62 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %61, i32 0, i32 3, !dbg !473
  %62 = load ptr, ptr %_arg62, align 8, !dbg !473
  %add.ptr63 = getelementptr i8, ptr %62, i64 2, !dbg !474
  %63 = load i8, ptr %add.ptr63, align 1, !dbg !475
  %conv64 = zext i8 %63 to i32, !dbg !475
  %or65 = or i32 %or, %conv64, !dbg !476
  store i32 %or65, ptr %oui, align 4, !dbg !477
  %64 = load ptr, ptr %iterator.addr, align 8, !dbg !478
  %_arg66 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %64, i32 0, i32 3, !dbg !479
  %65 = load ptr, ptr %_arg66, align 8, !dbg !479
  %add.ptr67 = getelementptr i8, ptr %65, i64 3, !dbg !480
  %66 = load i8, ptr %add.ptr67, align 1, !dbg !481
  %conv68 = zext i8 %66 to i32, !dbg !481
  store i32 %conv68, ptr %subns, align 4, !dbg !482
  %67 = load ptr, ptr %iterator.addr, align 8, !dbg !483
  %68 = load i32, ptr %oui, align 4, !dbg !484
  %69 = load i32, ptr %subns, align 4, !dbg !485
  %conv69 = trunc i32 %69 to i8, !dbg !485
  call void @find_ns(ptr noundef %67, i32 noundef %68, i8 noundef zeroext %conv69) #4, !dbg !486
  %70 = load ptr, ptr %iterator.addr, align 8, !dbg !487
  %_arg70 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %70, i32 0, i32 3, !dbg !488
  %71 = load ptr, ptr %_arg70, align 8, !dbg !488
  %add.ptr71 = getelementptr i8, ptr %71, i64 4, !dbg !489
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %add.ptr71) #4, !dbg !490
  %conv72 = zext i16 %call to i32, !dbg !490
  store i32 %conv72, ptr %vnslen, align 4, !dbg !491
  %72 = load ptr, ptr %iterator.addr, align 8, !dbg !492
  %_arg73 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %72, i32 0, i32 3, !dbg !493
  %73 = load ptr, ptr %_arg73, align 8, !dbg !493
  %74 = load i32, ptr %size, align 4, !dbg !494
  %idx.ext74 = sext i32 %74 to i64, !dbg !495
  %add.ptr75 = getelementptr i8, ptr %73, i64 %idx.ext74, !dbg !495
  %75 = load i32, ptr %vnslen, align 4, !dbg !496
  %idx.ext76 = sext i32 %75 to i64, !dbg !497
  %add.ptr77 = getelementptr i8, ptr %add.ptr75, i64 %idx.ext76, !dbg !497
  %76 = load ptr, ptr %iterator.addr, align 8, !dbg !498
  %_next_ns_data78 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %76, i32 0, i32 4, !dbg !499
  store ptr %add.ptr77, ptr %_next_ns_data78, align 8, !dbg !500
  %77 = load ptr, ptr %iterator.addr, align 8, !dbg !501
  %current_namespace79 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %77, i32 0, i32 2, !dbg !503
  %78 = load ptr, ptr %current_namespace79, align 8, !dbg !503
  %tobool80 = icmp ne ptr %78, null, !dbg !501
  br i1 %tobool80, label %if.end83, label %if.then81, !dbg !504

if.then81:                                        ; preds = %if.end55
  %79 = load i32, ptr %vnslen, align 4, !dbg !505
  %80 = load i32, ptr %size, align 4, !dbg !506
  %add82 = add i32 %80, %79, !dbg !506
  store i32 %add82, ptr %size, align 4, !dbg !506
  br label %if.end83, !dbg !507

if.end83:                                         ; preds = %if.then81, %if.end55
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !508
  br label %cleanup, !dbg !508

cleanup:                                          ; preds = %if.end83, %if.then54
  call void @llvm.lifetime.end.p0(i64 4, ptr %vnslen) #5, !dbg !508
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup131 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end84, !dbg !509

if.end84:                                         ; preds = %cleanup.cont, %if.end41
  %81 = load ptr, ptr %iterator.addr, align 8, !dbg !510
  %_arg_index85 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %81, i32 0, i32 11, !dbg !511
  %82 = load i32, ptr %_arg_index85, align 8, !dbg !511
  %83 = load ptr, ptr %iterator.addr, align 8, !dbg !512
  %this_arg_index = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %83, i32 0, i32 7, !dbg !513
  store i32 %82, ptr %this_arg_index, align 8, !dbg !514
  %84 = load ptr, ptr %iterator.addr, align 8, !dbg !515
  %_arg86 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %84, i32 0, i32 3, !dbg !516
  %85 = load ptr, ptr %_arg86, align 8, !dbg !516
  %86 = load ptr, ptr %iterator.addr, align 8, !dbg !517
  %this_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %86, i32 0, i32 6, !dbg !518
  store ptr %85, ptr %this_arg, align 8, !dbg !519
  %87 = load i32, ptr %size, align 4, !dbg !520
  %88 = load ptr, ptr %iterator.addr, align 8, !dbg !521
  %this_arg_size = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %88, i32 0, i32 8, !dbg !522
  store i32 %87, ptr %this_arg_size, align 4, !dbg !523
  %89 = load i32, ptr %size, align 4, !dbg !524
  %90 = load ptr, ptr %iterator.addr, align 8, !dbg !525
  %_arg87 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %90, i32 0, i32 3, !dbg !526
  %91 = load ptr, ptr %_arg87, align 8, !dbg !527
  %idx.ext88 = sext i32 %89 to i64, !dbg !527
  %add.ptr89 = getelementptr i8, ptr %91, i64 %idx.ext88, !dbg !527
  store ptr %add.ptr89, ptr %_arg87, align 8, !dbg !527
  %92 = load ptr, ptr %iterator.addr, align 8, !dbg !528
  %_arg90 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %92, i32 0, i32 3, !dbg !530
  %93 = load ptr, ptr %_arg90, align 8, !dbg !530
  %94 = ptrtoint ptr %93 to i64, !dbg !531
  %95 = load ptr, ptr %iterator.addr, align 8, !dbg !532
  %_rtheader91 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %95, i32 0, i32 0, !dbg !533
  %96 = load ptr, ptr %_rtheader91, align 8, !dbg !533
  %97 = ptrtoint ptr %96 to i64, !dbg !534
  %sub92 = sub i64 %94, %97, !dbg !535
  %98 = load ptr, ptr %iterator.addr, align 8, !dbg !536
  %_max_length93 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %98, i32 0, i32 10, !dbg !537
  %99 = load i32, ptr %_max_length93, align 4, !dbg !537
  %conv94 = sext i32 %99 to i64, !dbg !538
  %cmp95 = icmp ugt i64 %sub92, %conv94, !dbg !539
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !540

if.then97:                                        ; preds = %if.end84
  store i32 -22, ptr %retval, align 4, !dbg !541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !541

if.end98:                                         ; preds = %if.end84
  %100 = load ptr, ptr %iterator.addr, align 8, !dbg !542
  %_arg_index99 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %100, i32 0, i32 11, !dbg !543
  %101 = load i32, ptr %_arg_index99, align 8, !dbg !543
  %rem100 = srem i32 %101, 32, !dbg !544
  switch i32 %rem100, label %sw.default123 [
    i32 30, label %sw.bb101
    i32 29, label %sw.bb107
    i32 31, label %sw.bb111
  ], !dbg !545

sw.bb101:                                         ; preds = %if.end98
  %102 = load ptr, ptr %iterator.addr, align 8, !dbg !546
  %_reset_on_ext = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %102, i32 0, i32 13, !dbg !547
  store i32 1, ptr %_reset_on_ext, align 8, !dbg !548
  %103 = load ptr, ptr %iterator.addr, align 8, !dbg !549
  %is_radiotap_ns = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %103, i32 0, i32 9, !dbg !550
  store i32 0, ptr %is_radiotap_ns, align 8, !dbg !551
  %104 = load ptr, ptr %iterator.addr, align 8, !dbg !552
  %this_arg_index102 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %104, i32 0, i32 7, !dbg !553
  store i32 30, ptr %this_arg_index102, align 8, !dbg !554
  %105 = load ptr, ptr %iterator.addr, align 8, !dbg !555
  %current_namespace103 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %105, i32 0, i32 2, !dbg !557
  %106 = load ptr, ptr %current_namespace103, align 8, !dbg !557
  %tobool104 = icmp ne ptr %106, null, !dbg !555
  br i1 %tobool104, label %if.end106, label %if.then105, !dbg !558

if.then105:                                       ; preds = %sw.bb101
  store i32 1, ptr %hit, align 4, !dbg !559
  br label %if.end106, !dbg !560

if.end106:                                        ; preds = %if.then105, %sw.bb101
  br label %next_entry, !dbg !561

sw.bb107:                                         ; preds = %if.end98
  %107 = load ptr, ptr %iterator.addr, align 8, !dbg !562
  %_reset_on_ext108 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %107, i32 0, i32 13, !dbg !563
  store i32 1, ptr %_reset_on_ext108, align 8, !dbg !564
  %108 = load ptr, ptr %iterator.addr, align 8, !dbg !565
  %current_namespace109 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %108, i32 0, i32 2, !dbg !566
  store ptr @radiotap_ns, ptr %current_namespace109, align 8, !dbg !567
  %109 = load ptr, ptr %iterator.addr, align 8, !dbg !568
  %is_radiotap_ns110 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %109, i32 0, i32 9, !dbg !569
  store i32 1, ptr %is_radiotap_ns110, align 8, !dbg !570
  br label %next_entry, !dbg !571

sw.bb111:                                         ; preds = %if.end98
  %110 = load ptr, ptr %iterator.addr, align 8, !dbg !572
  %_next_bitmap = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %110, i32 0, i32 5, !dbg !573
  %111 = load ptr, ptr %_next_bitmap, align 8, !dbg !573
  %call112 = call i32 @get_unaligned_le32(ptr noundef %111) #4, !dbg !574
  %112 = load ptr, ptr %iterator.addr, align 8, !dbg !575
  %_bitmap_shifter113 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %112, i32 0, i32 12, !dbg !576
  store i32 %call112, ptr %_bitmap_shifter113, align 4, !dbg !577
  %113 = load ptr, ptr %iterator.addr, align 8, !dbg !578
  %_next_bitmap114 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %113, i32 0, i32 5, !dbg !579
  %114 = load ptr, ptr %_next_bitmap114, align 8, !dbg !580
  %incdec.ptr = getelementptr i32, ptr %114, i32 1, !dbg !580
  store ptr %incdec.ptr, ptr %_next_bitmap114, align 8, !dbg !580
  %115 = load ptr, ptr %iterator.addr, align 8, !dbg !581
  %_reset_on_ext115 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %115, i32 0, i32 13, !dbg !583
  %116 = load i32, ptr %_reset_on_ext115, align 8, !dbg !583
  %tobool116 = icmp ne i32 %116, 0, !dbg !581
  br i1 %tobool116, label %if.then117, label %if.else119, !dbg !584

if.then117:                                       ; preds = %sw.bb111
  %117 = load ptr, ptr %iterator.addr, align 8, !dbg !585
  %_arg_index118 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %117, i32 0, i32 11, !dbg !586
  store i32 0, ptr %_arg_index118, align 8, !dbg !587
  br label %if.end121, !dbg !585

if.else119:                                       ; preds = %sw.bb111
  %118 = load ptr, ptr %iterator.addr, align 8, !dbg !588
  %_arg_index120 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %118, i32 0, i32 11, !dbg !589
  %119 = load i32, ptr %_arg_index120, align 8, !dbg !590
  %inc = add i32 %119, 1, !dbg !590
  store i32 %inc, ptr %_arg_index120, align 8, !dbg !590
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then117
  %120 = load ptr, ptr %iterator.addr, align 8, !dbg !591
  %_reset_on_ext122 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %120, i32 0, i32 13, !dbg !592
  store i32 0, ptr %_reset_on_ext122, align 8, !dbg !593
  br label %sw.epilog127, !dbg !594

sw.default123:                                    ; preds = %if.end98
  store i32 1, ptr %hit, align 4, !dbg !595
  br label %next_entry, !dbg !596

next_entry:                                       ; preds = %sw.default123, %sw.bb107, %if.end106, %if.then29, %if.then4
  call void @llvm.dbg.label(metadata !327), !dbg !597
  %121 = load ptr, ptr %iterator.addr, align 8, !dbg !598
  %_bitmap_shifter124 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %121, i32 0, i32 12, !dbg !599
  %122 = load i32, ptr %_bitmap_shifter124, align 4, !dbg !600
  %shr = lshr i32 %122, 1, !dbg !600
  store i32 %shr, ptr %_bitmap_shifter124, align 4, !dbg !600
  %123 = load ptr, ptr %iterator.addr, align 8, !dbg !601
  %_arg_index125 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %123, i32 0, i32 11, !dbg !602
  %124 = load i32, ptr %_arg_index125, align 8, !dbg !603
  %inc126 = add i32 %124, 1, !dbg !603
  store i32 %inc126, ptr %_arg_index125, align 8, !dbg !603
  br label %sw.epilog127, !dbg !604

sw.epilog127:                                     ; preds = %next_entry, %if.end121
  %125 = load i32, ptr %hit, align 4, !dbg !605
  %tobool128 = icmp ne i32 %125, 0, !dbg !605
  br i1 %tobool128, label %if.then129, label %if.end130, !dbg !607

if.then129:                                       ; preds = %sw.epilog127
  store i32 0, ptr %retval, align 4, !dbg !608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !608

if.end130:                                        ; preds = %sw.epilog127
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !609
  br label %cleanup131, !dbg !609

cleanup131:                                       ; preds = %if.end130, %if.then129, %if.then97, %cleanup, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %oui) #5, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %subns) #5, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #5, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %align) #5, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #5, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %hit) #5, !dbg !609
  %cleanup.dest137 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest137, label %unreachable [
    i32 0, label %cleanup.cont138
    i32 1, label %return
  ]

cleanup.cont138:                                  ; preds = %cleanup131
  br label %while.body, !dbg !330, !llvm.loop !610

return:                                           ; preds = %cleanup131
  %126 = load i32, ptr %retval, align 4, !dbg !611
  ret i32 %126, !dbg !611

unreachable:                                      ; preds = %cleanup131
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @find_ns(ptr noundef %iterator, i32 noundef %oui, i8 noundef zeroext %subns) #0 align 16 !dbg !612 {
entry:
  %iterator.addr = alloca ptr, align 8
  %oui.addr = alloca i32, align 4
  %subns.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iterator, ptr %iterator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !616, metadata !DIExpression()), !dbg !620
  store i32 %oui, ptr %oui.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %oui.addr, metadata !617, metadata !DIExpression()), !dbg !621
  store i8 %subns, ptr %subns.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %subns.addr, metadata !618, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %i, metadata !619, metadata !DIExpression()), !dbg !624
  %0 = load ptr, ptr %iterator.addr, align 8, !dbg !625
  %current_namespace = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 2, !dbg !626
  store ptr null, ptr %current_namespace, align 8, !dbg !627
  %1 = load ptr, ptr %iterator.addr, align 8, !dbg !628
  %_vns = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %1, i32 0, i32 1, !dbg !630
  %2 = load ptr, ptr %_vns, align 8, !dbg !630
  %tobool = icmp ne ptr %2, null, !dbg !628
  br i1 %tobool, label %if.end, label %if.then, !dbg !631

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !632

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !633
  br label %for.cond, !dbg !635

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !636
  %4 = load ptr, ptr %iterator.addr, align 8, !dbg !638
  %_vns1 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %4, i32 0, i32 1, !dbg !639
  %5 = load ptr, ptr %_vns1, align 8, !dbg !639
  %n_ns = getelementptr inbounds %struct.ieee80211_radiotap_vendor_namespaces, ptr %5, i32 0, i32 1, !dbg !640
  %6 = load i32, ptr %n_ns, align 8, !dbg !640
  %cmp = icmp slt i32 %3, %6, !dbg !641
  br i1 %cmp, label %for.body, label %for.end, !dbg !642

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %iterator.addr, align 8, !dbg !643
  %_vns2 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %7, i32 0, i32 1, !dbg !646
  %8 = load ptr, ptr %_vns2, align 8, !dbg !646
  %ns = getelementptr inbounds %struct.ieee80211_radiotap_vendor_namespaces, ptr %8, i32 0, i32 0, !dbg !647
  %9 = load ptr, ptr %ns, align 8, !dbg !647
  %10 = load i32, ptr %i, align 4, !dbg !648
  %idxprom = sext i32 %10 to i64, !dbg !643
  %arrayidx = getelementptr %struct.ieee80211_radiotap_namespace, ptr %9, i64 %idxprom, !dbg !643
  %oui3 = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %arrayidx, i32 0, i32 2, !dbg !649
  %11 = load i32, ptr %oui3, align 4, !dbg !649
  %12 = load i32, ptr %oui.addr, align 4, !dbg !650
  %cmp4 = icmp ne i32 %11, %12, !dbg !651
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !652

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !653

if.end6:                                          ; preds = %for.body
  %13 = load ptr, ptr %iterator.addr, align 8, !dbg !654
  %_vns7 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %13, i32 0, i32 1, !dbg !656
  %14 = load ptr, ptr %_vns7, align 8, !dbg !656
  %ns8 = getelementptr inbounds %struct.ieee80211_radiotap_vendor_namespaces, ptr %14, i32 0, i32 0, !dbg !657
  %15 = load ptr, ptr %ns8, align 8, !dbg !657
  %16 = load i32, ptr %i, align 4, !dbg !658
  %idxprom9 = sext i32 %16 to i64, !dbg !654
  %arrayidx10 = getelementptr %struct.ieee80211_radiotap_namespace, ptr %15, i64 %idxprom9, !dbg !654
  %subns11 = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %arrayidx10, i32 0, i32 3, !dbg !659
  %17 = load i8, ptr %subns11, align 8, !dbg !659
  %conv = zext i8 %17 to i32, !dbg !654
  %18 = load i8, ptr %subns.addr, align 1, !dbg !660
  %conv12 = zext i8 %18 to i32, !dbg !660
  %cmp13 = icmp ne i32 %conv, %conv12, !dbg !661
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !662

if.then15:                                        ; preds = %if.end6
  br label %for.inc, !dbg !663

if.end16:                                         ; preds = %if.end6
  %19 = load ptr, ptr %iterator.addr, align 8, !dbg !664
  %_vns17 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %19, i32 0, i32 1, !dbg !665
  %20 = load ptr, ptr %_vns17, align 8, !dbg !665
  %ns18 = getelementptr inbounds %struct.ieee80211_radiotap_vendor_namespaces, ptr %20, i32 0, i32 0, !dbg !666
  %21 = load ptr, ptr %ns18, align 8, !dbg !666
  %22 = load i32, ptr %i, align 4, !dbg !667
  %idxprom19 = sext i32 %22 to i64, !dbg !664
  %arrayidx20 = getelementptr %struct.ieee80211_radiotap_namespace, ptr %21, i64 %idxprom19, !dbg !664
  %23 = load ptr, ptr %iterator.addr, align 8, !dbg !668
  %current_namespace21 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %23, i32 0, i32 2, !dbg !669
  store ptr %arrayidx20, ptr %current_namespace21, align 8, !dbg !670
  br label %for.end, !dbg !671

for.inc:                                          ; preds = %if.then15, %if.then5
  %24 = load i32, ptr %i, align 4, !dbg !672
  %inc = add i32 %24, 1, !dbg !672
  store i32 %inc, ptr %i, align 4, !dbg !672
  br label %for.cond, !dbg !673, !llvm.loop !674

for.end:                                          ; preds = %if.end16, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !676
  br label %cleanup, !dbg !676

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !676
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !676

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "radiotap_ns", scope: !2, file: !3, line: 52, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/wireless/.radiotap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/wireless/cfg80211\22 -D KBUILD_BASENAME=\22radiotap\22 -D KBUILD_MODNAME=\22cfg80211\22 -D __KBUILD_MODNAME=kmod_cfg80211 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/wireless/radiotap.ll net/wireless/radiotap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !87, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/wireless/radiotap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4130c90a4c728fac19f7780c2e50e3c7")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ieee80211_radiotap_presence", file: !6, line: 62, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/net/ieee80211_radiotap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c682641a7d0776fd37d8054ea96a639")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!9 = !DIEnumerator(name: "IEEE80211_RADIOTAP_TSFT", value: 0)
!10 = !DIEnumerator(name: "IEEE80211_RADIOTAP_FLAGS", value: 1)
!11 = !DIEnumerator(name: "IEEE80211_RADIOTAP_RATE", value: 2)
!12 = !DIEnumerator(name: "IEEE80211_RADIOTAP_CHANNEL", value: 3)
!13 = !DIEnumerator(name: "IEEE80211_RADIOTAP_FHSS", value: 4)
!14 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DBM_ANTSIGNAL", value: 5)
!15 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DBM_ANTNOISE", value: 6)
!16 = !DIEnumerator(name: "IEEE80211_RADIOTAP_LOCK_QUALITY", value: 7)
!17 = !DIEnumerator(name: "IEEE80211_RADIOTAP_TX_ATTENUATION", value: 8)
!18 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DB_TX_ATTENUATION", value: 9)
!19 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DBM_TX_POWER", value: 10)
!20 = !DIEnumerator(name: "IEEE80211_RADIOTAP_ANTENNA", value: 11)
!21 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DB_ANTSIGNAL", value: 12)
!22 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DB_ANTNOISE", value: 13)
!23 = !DIEnumerator(name: "IEEE80211_RADIOTAP_RX_FLAGS", value: 14)
!24 = !DIEnumerator(name: "IEEE80211_RADIOTAP_TX_FLAGS", value: 15)
!25 = !DIEnumerator(name: "IEEE80211_RADIOTAP_RTS_RETRIES", value: 16)
!26 = !DIEnumerator(name: "IEEE80211_RADIOTAP_DATA_RETRIES", value: 17)
!27 = !DIEnumerator(name: "IEEE80211_RADIOTAP_MCS", value: 19)
!28 = !DIEnumerator(name: "IEEE80211_RADIOTAP_AMPDU_STATUS", value: 20)
!29 = !DIEnumerator(name: "IEEE80211_RADIOTAP_VHT", value: 21)
!30 = !DIEnumerator(name: "IEEE80211_RADIOTAP_TIMESTAMP", value: 22)
!31 = !DIEnumerator(name: "IEEE80211_RADIOTAP_HE", value: 23)
!32 = !DIEnumerator(name: "IEEE80211_RADIOTAP_HE_MU", value: 24)
!33 = !DIEnumerator(name: "IEEE80211_RADIOTAP_ZERO_LEN_PSDU", value: 26)
!34 = !DIEnumerator(name: "IEEE80211_RADIOTAP_LSIG", value: 27)
!35 = !DIEnumerator(name: "IEEE80211_RADIOTAP_TLV", value: 28)
!36 = !DIEnumerator(name: "IEEE80211_RADIOTAP_RADIOTAP_NAMESPACE", value: 29)
!37 = !DIEnumerator(name: "IEEE80211_RADIOTAP_VENDOR_NAMESPACE", value: 30)
!38 = !DIEnumerator(name: "IEEE80211_RADIOTAP_EXT", value: 31)
!39 = !DIEnumerator(name: "IEEE80211_RADIOTAP_EHT_USIG", value: 33)
!40 = !DIEnumerator(name: "IEEE80211_RADIOTAP_EHT", value: 34)
!41 = !{!42, !50, !51, !52, !54, !56, !72, !73, !74}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !44, line: 108, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !46, line: 17, baseType: !47)
!46 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !48, line: 21, baseType: !49)
!48 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !48, line: 24, baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !55, line: 36, baseType: !52)
!55 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !59, line: 27, size: 16, elements: !70)
!59 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!60 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !59, file: !59, line: 25, type: !61, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !46, line: 19, baseType: !52)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!66 = !{!67, !68}
!67 = !DILocalVariable(name: "p", arg: 1, scope: !60, file: !59, line: 25, type: !64)
!68 = !DILocalVariable(name: "__pptr", scope: !69, file: !59, line: 27, type: !56)
!69 = distinct !DILexicalBlock(scope: !60, file: !59, line: 27, column: 9)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !58, file: !59, line: 27, baseType: !54, size: 16)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !48, line: 27, baseType: !7)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !55, line: 38, baseType: !72)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !59, line: 32, size: 32, elements: !85)
!77 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !59, file: !59, line: 30, type: !78, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !64}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !46, line: 21, baseType: !72)
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "p", arg: 1, scope: !77, file: !59, line: 30, type: !64)
!83 = !DILocalVariable(name: "__pptr", scope: !84, file: !59, line: 32, type: !74)
!84 = distinct !DILexicalBlock(scope: !77, file: !59, line: 32, column: 9)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !76, file: !59, line: 32, baseType: !73, size: 32)
!87 = !{!88, !90, !0, !92}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ieee80211_radiotap_iterator_init409", scope: !2, file: !3, line: 164, type: !51, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ieee80211_radiotap_iterator_next410", scope: !2, file: !3, line: 370, type: !51, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "rtap_namespace_sizes", scope: !2, file: !3, line: 25, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 176, elements: !101)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "radiotap_align_size", file: !97, line: 6298, size: 8, elements: !98)
!97 = !DIFile(filename: "./include/net/cfg80211.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92ec0eb04e522b9c82c42d8bc77cfb4c")
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !96, file: !97, line: 6299, baseType: !43, size: 4, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !96, file: !97, line: 6299, baseType: !43, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!101 = !{!102}
!102 = !DISubrange(count: 22)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_radiotap_namespace", file: !97, line: 6302, size: 192, elements: !105)
!105 = !{!106, !108, !110, !112}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "align_size", scope: !104, file: !97, line: 6303, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !104, file: !97, line: 6304, baseType: !109, size: 32, offset: 64)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "oui", scope: !104, file: !97, line: 6305, baseType: !111, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 110, baseType: !80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "subns", scope: !104, file: !97, line: 6306, baseType: !43, size: 8, offset: 128)
!113 = !{i32 7, !"Dwarf Version", i32 5}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 8, !"cf-protection-branch", i32 1}
!117 = !{i32 4, !"function_return_thunk_extern", i32 1}
!118 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!119 = !{i32 1, !"Code Model", i32 2}
!120 = !{i32 1, !"override-stack-alignment", i32 8}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = distinct !DISubprogram(name: "ieee80211_radiotap_iterator_init", scope: !3, file: !3, line: 97, type: !123, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !175)
!123 = !DISubroutineType(types: !124)
!124 = !{!109, !125, !129, !109, !154}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_radiotap_iterator", file: !97, line: 6343, size: 704, elements: !127)
!127 = !{!128, !153, !161, !162, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_rtheader", scope: !126, file: !97, line: 6344, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_radiotap_header", file: !6, line: 26, size: 64, elements: !131)
!131 = !{!132, !149}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !6, line: 27, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !6, line: 27, size: 64, elements: !134)
!134 = !{!135, !142}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !6, line: 27, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 27, size: 64, elements: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "it_version", scope: !136, file: !6, line: 27, baseType: !43, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "it_pad", scope: !136, file: !6, line: 27, baseType: !43, size: 8, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "it_len", scope: !136, file: !6, line: 27, baseType: !54, size: 16, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "it_present", scope: !136, file: !6, line: 27, baseType: !73, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !133, file: !6, line: 27, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_radiotap_header_fixed", file: !6, line: 27, size: 64, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "it_version", scope: !143, file: !6, line: 27, baseType: !43, size: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "it_pad", scope: !143, file: !6, line: 27, baseType: !43, size: 8, offset: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "it_len", scope: !143, file: !6, line: 27, baseType: !54, size: 16, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "it_present", scope: !143, file: !6, line: 27, baseType: !73, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "it_optional", scope: !130, file: !6, line: 52, baseType: !150, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: -1)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_vns", scope: !126, file: !97, line: 6345, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ieee80211_radiotap_vendor_namespaces", file: !97, line: 6309, size: 128, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !156, file: !97, line: 6310, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "n_ns", scope: !156, file: !97, line: 6311, baseType: !109, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "current_namespace", scope: !126, file: !97, line: 6346, baseType: !159, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_arg", scope: !126, file: !97, line: 6348, baseType: !163, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_next_ns_data", scope: !126, file: !97, line: 6348, baseType: !163, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_next_bitmap", scope: !126, file: !97, line: 6349, baseType: !166, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "this_arg", scope: !126, file: !97, line: 6351, baseType: !163, size: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "this_arg_index", scope: !126, file: !97, line: 6352, baseType: !109, size: 32, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "this_arg_size", scope: !126, file: !97, line: 6353, baseType: !109, size: 32, offset: 480)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_radiotap_ns", scope: !126, file: !97, line: 6355, baseType: !109, size: 32, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_max_length", scope: !126, file: !97, line: 6357, baseType: !109, size: 32, offset: 544)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_arg_index", scope: !126, file: !97, line: 6358, baseType: !109, size: 32, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_bitmap_shifter", scope: !126, file: !97, line: 6359, baseType: !111, size: 32, offset: 608)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_reset_on_ext", scope: !126, file: !97, line: 6360, baseType: !109, size: 32, offset: 640)
!175 = !{!176, !177, !178, !179}
!176 = !DILocalVariable(name: "iterator", arg: 1, scope: !122, file: !3, line: 98, type: !125)
!177 = !DILocalVariable(name: "radiotap_header", arg: 2, scope: !122, file: !3, line: 99, type: !129)
!178 = !DILocalVariable(name: "max_length", arg: 3, scope: !122, file: !3, line: 100, type: !109)
!179 = !DILocalVariable(name: "vns", arg: 4, scope: !122, file: !3, line: 100, type: !154)
!180 = !DILocation(line: 98, column: 38, scope: !122)
!181 = !DILocation(line: 99, column: 36, scope: !122)
!182 = !DILocation(line: 100, column: 6, scope: !122)
!183 = !DILocation(line: 100, column: 69, scope: !122)
!184 = !DILocation(line: 103, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !122, file: !3, line: 103, column: 6)
!186 = !DILocation(line: 103, column: 17, scope: !185)
!187 = !DILocation(line: 103, column: 6, scope: !122)
!188 = !DILocation(line: 104, column: 3, scope: !185)
!189 = !DILocation(line: 107, column: 6, scope: !190)
!190 = distinct !DILexicalBlock(scope: !122, file: !3, line: 107, column: 6)
!191 = !DILocation(line: 107, column: 23, scope: !190)
!192 = !DILocation(line: 107, column: 6, scope: !122)
!193 = !DILocation(line: 108, column: 3, scope: !190)
!194 = !DILocation(line: 111, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !122, file: !3, line: 111, column: 6)
!196 = !DILocation(line: 111, column: 39, scope: !195)
!197 = !DILocation(line: 111, column: 56, scope: !195)
!198 = !DILocation(line: 111, column: 19, scope: !195)
!199 = !DILocation(line: 111, column: 17, scope: !195)
!200 = !DILocation(line: 111, column: 6, scope: !122)
!201 = !DILocation(line: 112, column: 3, scope: !195)
!202 = !DILocation(line: 114, column: 24, scope: !122)
!203 = !DILocation(line: 114, column: 2, scope: !122)
!204 = !DILocation(line: 114, column: 12, scope: !122)
!205 = !DILocation(line: 114, column: 22, scope: !122)
!206 = !DILocation(line: 115, column: 46, scope: !122)
!207 = !DILocation(line: 115, column: 63, scope: !122)
!208 = !DILocation(line: 115, column: 26, scope: !122)
!209 = !DILocation(line: 115, column: 2, scope: !122)
!210 = !DILocation(line: 115, column: 12, scope: !122)
!211 = !DILocation(line: 115, column: 24, scope: !122)
!212 = !DILocation(line: 116, column: 2, scope: !122)
!213 = !DILocation(line: 116, column: 12, scope: !122)
!214 = !DILocation(line: 116, column: 23, scope: !122)
!215 = !DILocation(line: 117, column: 50, scope: !122)
!216 = !DILocation(line: 117, column: 67, scope: !122)
!217 = !DILocation(line: 117, column: 30, scope: !122)
!218 = !DILocation(line: 117, column: 2, scope: !122)
!219 = !DILocation(line: 117, column: 12, scope: !122)
!220 = !DILocation(line: 117, column: 28, scope: !122)
!221 = !DILocation(line: 118, column: 30, scope: !122)
!222 = !DILocation(line: 118, column: 47, scope: !122)
!223 = !DILocation(line: 118, column: 2, scope: !122)
!224 = !DILocation(line: 118, column: 12, scope: !122)
!225 = !DILocation(line: 118, column: 17, scope: !122)
!226 = !DILocation(line: 119, column: 2, scope: !122)
!227 = !DILocation(line: 119, column: 12, scope: !122)
!228 = !DILocation(line: 119, column: 26, scope: !122)
!229 = !DILocation(line: 120, column: 27, scope: !122)
!230 = !DILocation(line: 120, column: 44, scope: !122)
!231 = !DILocation(line: 120, column: 2, scope: !122)
!232 = !DILocation(line: 120, column: 12, scope: !122)
!233 = !DILocation(line: 120, column: 25, scope: !122)
!234 = !DILocation(line: 121, column: 19, scope: !122)
!235 = !DILocation(line: 121, column: 2, scope: !122)
!236 = !DILocation(line: 121, column: 12, scope: !122)
!237 = !DILocation(line: 121, column: 17, scope: !122)
!238 = !DILocation(line: 122, column: 2, scope: !122)
!239 = !DILocation(line: 122, column: 12, scope: !122)
!240 = !DILocation(line: 122, column: 30, scope: !122)
!241 = !DILocation(line: 123, column: 2, scope: !122)
!242 = !DILocation(line: 123, column: 12, scope: !122)
!243 = !DILocation(line: 123, column: 27, scope: !122)
!244 = !DILocation(line: 127, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !122, file: !3, line: 127, column: 6)
!246 = !DILocation(line: 127, column: 16, scope: !245)
!247 = !DILocation(line: 127, column: 32, scope: !245)
!248 = !DILocation(line: 127, column: 6, scope: !122)
!249 = !DILocation(line: 128, column: 22, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 128, column: 7)
!251 = distinct !DILexicalBlock(scope: !245, file: !3, line: 127, column: 65)
!252 = !DILocation(line: 128, column: 32, scope: !250)
!253 = !DILocation(line: 128, column: 7, scope: !250)
!254 = !DILocation(line: 129, column: 22, scope: !250)
!255 = !DILocation(line: 129, column: 32, scope: !250)
!256 = !DILocation(line: 129, column: 7, scope: !250)
!257 = !DILocation(line: 128, column: 37, scope: !250)
!258 = !DILocation(line: 129, column: 42, scope: !250)
!259 = !DILocation(line: 130, column: 22, scope: !250)
!260 = !DILocation(line: 130, column: 32, scope: !250)
!261 = !DILocation(line: 130, column: 7, scope: !250)
!262 = !DILocation(line: 129, column: 61, scope: !250)
!263 = !DILocation(line: 128, column: 7, scope: !251)
!264 = !DILocation(line: 131, column: 4, scope: !250)
!265 = !DILocation(line: 132, column: 3, scope: !251)
!266 = !DILocation(line: 132, column: 29, scope: !251)
!267 = !DILocation(line: 132, column: 39, scope: !251)
!268 = !DILocation(line: 132, column: 10, scope: !251)
!269 = !DILocation(line: 132, column: 45, scope: !251)
!270 = !DILocation(line: 134, column: 4, scope: !271)
!271 = distinct !DILexicalBlock(scope: !251, file: !3, line: 133, column: 37)
!272 = !DILocation(line: 134, column: 14, scope: !271)
!273 = !DILocation(line: 134, column: 19, scope: !271)
!274 = !DILocation(line: 142, column: 23, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 142, column: 8)
!276 = !DILocation(line: 142, column: 33, scope: !275)
!277 = !DILocation(line: 142, column: 8, scope: !275)
!278 = !DILocation(line: 143, column: 23, scope: !275)
!279 = !DILocation(line: 143, column: 33, scope: !275)
!280 = !DILocation(line: 143, column: 8, scope: !275)
!281 = !DILocation(line: 142, column: 38, scope: !275)
!282 = !DILocation(line: 143, column: 43, scope: !275)
!283 = !DILocation(line: 145, column: 23, scope: !275)
!284 = !DILocation(line: 145, column: 33, scope: !275)
!285 = !DILocation(line: 145, column: 8, scope: !275)
!286 = !DILocation(line: 144, column: 25, scope: !275)
!287 = !DILocation(line: 142, column: 8, scope: !271)
!288 = !DILocation(line: 146, column: 5, scope: !275)
!289 = distinct !{!289, !265, !290, !291, !292}
!290 = !DILocation(line: 147, column: 3, scope: !251)
!291 = !{!"llvm.loop.mustprogress"}
!292 = !{!"llvm.loop.unroll.disable"}
!293 = !DILocation(line: 149, column: 3, scope: !251)
!294 = !DILocation(line: 149, column: 13, scope: !251)
!295 = !DILocation(line: 149, column: 18, scope: !251)
!296 = !DILocation(line: 156, column: 2, scope: !251)
!297 = !DILocation(line: 158, column: 23, scope: !122)
!298 = !DILocation(line: 158, column: 33, scope: !122)
!299 = !DILocation(line: 158, column: 2, scope: !122)
!300 = !DILocation(line: 158, column: 12, scope: !122)
!301 = !DILocation(line: 158, column: 21, scope: !122)
!302 = !DILocation(line: 162, column: 2, scope: !122)
!303 = !DILocation(line: 163, column: 1, scope: !122)
!304 = !DILocation(line: 25, column: 50, scope: !60)
!305 = !DILocation(line: 27, column: 9, scope: !69)
!306 = !DILocation(line: 27, column: 9, scope: !60)
!307 = !DILocation(line: 27, column: 2, scope: !60)
!308 = !DILocation(line: 30, column: 50, scope: !77)
!309 = !DILocation(line: 32, column: 9, scope: !84)
!310 = !DILocation(line: 32, column: 9, scope: !77)
!311 = !DILocation(line: 32, column: 2, scope: !77)
!312 = distinct !DISubprogram(name: "ieee80211_radiotap_iterator_next", scope: !3, file: !3, line: 212, type: !313, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!109, !125}
!315 = !{!316, !317, !319, !320, !321, !322, !323, !324, !327}
!316 = !DILocalVariable(name: "iterator", arg: 1, scope: !312, file: !3, line: 213, type: !125)
!317 = !DILocalVariable(name: "hit", scope: !318, file: !3, line: 216, type: !109)
!318 = distinct !DILexicalBlock(scope: !312, file: !3, line: 215, column: 12)
!319 = !DILocalVariable(name: "pad", scope: !318, file: !3, line: 217, type: !109)
!320 = !DILocalVariable(name: "align", scope: !318, file: !3, line: 217, type: !109)
!321 = !DILocalVariable(name: "size", scope: !318, file: !3, line: 217, type: !109)
!322 = !DILocalVariable(name: "subns", scope: !318, file: !3, line: 217, type: !109)
!323 = !DILocalVariable(name: "oui", scope: !318, file: !3, line: 218, type: !111)
!324 = !DILocalVariable(name: "vnslen", scope: !325, file: !3, line: 278, type: !109)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 277, column: 73)
!326 = distinct !DILexicalBlock(scope: !318, file: !3, line: 277, column: 7)
!327 = !DILabel(scope: !328, name: "next_entry", file: !3, line: 360)
!328 = distinct !DILexicalBlock(scope: !318, file: !3, line: 322, column: 38)
!329 = !DILocation(line: 213, column: 38, scope: !312)
!330 = !DILocation(line: 215, column: 2, scope: !312)
!331 = !DILocation(line: 216, column: 3, scope: !318)
!332 = !DILocation(line: 216, column: 7, scope: !318)
!333 = !DILocation(line: 217, column: 3, scope: !318)
!334 = !DILocation(line: 217, column: 7, scope: !318)
!335 = !DILocation(line: 217, column: 12, scope: !318)
!336 = !DILocation(line: 217, column: 19, scope: !318)
!337 = !DILocation(line: 217, column: 25, scope: !318)
!338 = !DILocation(line: 218, column: 3, scope: !318)
!339 = !DILocation(line: 218, column: 12, scope: !318)
!340 = !DILocation(line: 221, column: 8, scope: !341)
!341 = distinct !DILexicalBlock(scope: !318, file: !3, line: 221, column: 7)
!342 = !DILocation(line: 221, column: 18, scope: !341)
!343 = !DILocation(line: 221, column: 29, scope: !341)
!344 = !DILocation(line: 221, column: 35, scope: !341)
!345 = !DILocation(line: 221, column: 61, scope: !341)
!346 = !DILocation(line: 222, column: 9, scope: !341)
!347 = !DILocation(line: 222, column: 19, scope: !341)
!348 = !DILocation(line: 222, column: 35, scope: !341)
!349 = !DILocation(line: 221, column: 7, scope: !318)
!350 = !DILocation(line: 223, column: 4, scope: !341)
!351 = !DILocation(line: 225, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !318, file: !3, line: 225, column: 7)
!353 = !DILocation(line: 225, column: 19, scope: !352)
!354 = !DILocation(line: 225, column: 35, scope: !352)
!355 = !DILocation(line: 225, column: 7, scope: !318)
!356 = !DILocation(line: 226, column: 4, scope: !352)
!357 = !DILocation(line: 229, column: 11, scope: !318)
!358 = !DILocation(line: 229, column: 21, scope: !318)
!359 = !DILocation(line: 229, column: 32, scope: !318)
!360 = !DILocation(line: 229, column: 3, scope: !318)
!361 = !DILocation(line: 232, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !318, file: !3, line: 229, column: 38)
!363 = !DILocation(line: 233, column: 9, scope: !362)
!364 = !DILocation(line: 234, column: 4, scope: !362)
!365 = !DILocation(line: 236, column: 10, scope: !362)
!366 = !DILocation(line: 237, column: 9, scope: !362)
!367 = !DILocation(line: 238, column: 4, scope: !362)
!368 = !DILocation(line: 240, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 240, column: 8)
!370 = !DILocation(line: 240, column: 19, scope: !369)
!371 = !DILocation(line: 240, column: 37, scope: !369)
!372 = !DILocation(line: 241, column: 8, scope: !369)
!373 = !DILocation(line: 241, column: 18, scope: !369)
!374 = !DILocation(line: 241, column: 32, scope: !369)
!375 = !DILocation(line: 241, column: 42, scope: !369)
!376 = !DILocation(line: 241, column: 61, scope: !369)
!377 = !DILocation(line: 241, column: 29, scope: !369)
!378 = !DILocation(line: 240, column: 8, scope: !362)
!379 = !DILocation(line: 242, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 242, column: 9)
!381 = distinct !DILexicalBlock(scope: !369, file: !3, line: 241, column: 69)
!382 = !DILocation(line: 242, column: 19, scope: !380)
!383 = !DILocation(line: 242, column: 37, scope: !380)
!384 = !DILocation(line: 242, column: 9, scope: !381)
!385 = !DILocation(line: 243, column: 6, scope: !380)
!386 = !DILocation(line: 244, column: 11, scope: !381)
!387 = !DILocation(line: 245, column: 4, scope: !381)
!388 = !DILocation(line: 246, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !369, file: !3, line: 245, column: 11)
!390 = !DILocation(line: 246, column: 23, scope: !389)
!391 = !DILocation(line: 246, column: 42, scope: !389)
!392 = !DILocation(line: 246, column: 53, scope: !389)
!393 = !DILocation(line: 246, column: 63, scope: !389)
!394 = !DILocation(line: 246, column: 75, scope: !389)
!395 = !DILocation(line: 246, column: 11, scope: !389)
!396 = !DILocation(line: 247, column: 12, scope: !389)
!397 = !DILocation(line: 247, column: 22, scope: !389)
!398 = !DILocation(line: 247, column: 41, scope: !389)
!399 = !DILocation(line: 247, column: 52, scope: !389)
!400 = !DILocation(line: 247, column: 62, scope: !389)
!401 = !DILocation(line: 247, column: 74, scope: !389)
!402 = !DILocation(line: 247, column: 10, scope: !389)
!403 = !DILocation(line: 249, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !362, file: !3, line: 249, column: 8)
!405 = !DILocation(line: 249, column: 8, scope: !362)
!406 = !DILocation(line: 251, column: 22, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 249, column: 16)
!408 = !DILocation(line: 251, column: 32, scope: !407)
!409 = !DILocation(line: 251, column: 5, scope: !407)
!410 = !DILocation(line: 251, column: 15, scope: !407)
!411 = !DILocation(line: 251, column: 20, scope: !407)
!412 = !DILocation(line: 253, column: 5, scope: !407)
!413 = !DILocation(line: 253, column: 15, scope: !407)
!414 = !DILocation(line: 253, column: 33, scope: !407)
!415 = !DILocation(line: 254, column: 5, scope: !407)
!416 = !DILocation(line: 256, column: 4, scope: !362)
!417 = !DILocation(line: 271, column: 25, scope: !318)
!418 = !DILocation(line: 271, column: 35, scope: !318)
!419 = !DILocation(line: 271, column: 10, scope: !318)
!420 = !DILocation(line: 272, column: 25, scope: !318)
!421 = !DILocation(line: 272, column: 35, scope: !318)
!422 = !DILocation(line: 272, column: 10, scope: !318)
!423 = !DILocation(line: 271, column: 40, scope: !318)
!424 = !DILocation(line: 272, column: 49, scope: !318)
!425 = !DILocation(line: 272, column: 55, scope: !318)
!426 = !DILocation(line: 272, column: 48, scope: !318)
!427 = !DILocation(line: 272, column: 46, scope: !318)
!428 = !DILocation(line: 271, column: 9, scope: !318)
!429 = !DILocation(line: 271, column: 7, scope: !318)
!430 = !DILocation(line: 274, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !318, file: !3, line: 274, column: 7)
!432 = !DILocation(line: 274, column: 7, scope: !318)
!433 = !DILocation(line: 275, column: 22, scope: !431)
!434 = !DILocation(line: 275, column: 30, scope: !431)
!435 = !DILocation(line: 275, column: 28, scope: !431)
!436 = !DILocation(line: 275, column: 4, scope: !431)
!437 = !DILocation(line: 275, column: 14, scope: !431)
!438 = !DILocation(line: 275, column: 19, scope: !431)
!439 = !DILocation(line: 277, column: 7, scope: !326)
!440 = !DILocation(line: 277, column: 17, scope: !326)
!441 = !DILocation(line: 277, column: 28, scope: !326)
!442 = !DILocation(line: 277, column: 33, scope: !326)
!443 = !DILocation(line: 277, column: 7, scope: !318)
!444 = !DILocation(line: 278, column: 4, scope: !325)
!445 = !DILocation(line: 278, column: 8, scope: !325)
!446 = !DILocation(line: 280, column: 23, scope: !447)
!447 = distinct !DILexicalBlock(scope: !325, file: !3, line: 280, column: 8)
!448 = !DILocation(line: 280, column: 33, scope: !447)
!449 = !DILocation(line: 280, column: 8, scope: !447)
!450 = !DILocation(line: 280, column: 40, scope: !447)
!451 = !DILocation(line: 280, column: 38, scope: !447)
!452 = !DILocation(line: 281, column: 23, scope: !447)
!453 = !DILocation(line: 281, column: 33, scope: !447)
!454 = !DILocation(line: 281, column: 8, scope: !447)
!455 = !DILocation(line: 280, column: 45, scope: !447)
!456 = !DILocation(line: 282, column: 23, scope: !447)
!457 = !DILocation(line: 282, column: 33, scope: !447)
!458 = !DILocation(line: 282, column: 8, scope: !447)
!459 = !DILocation(line: 281, column: 43, scope: !447)
!460 = !DILocation(line: 280, column: 8, scope: !325)
!461 = !DILocation(line: 283, column: 5, scope: !447)
!462 = !DILocation(line: 285, column: 12, scope: !325)
!463 = !DILocation(line: 285, column: 22, scope: !325)
!464 = !DILocation(line: 285, column: 11, scope: !325)
!465 = !DILocation(line: 285, column: 27, scope: !325)
!466 = !DILocation(line: 286, column: 8, scope: !325)
!467 = !DILocation(line: 286, column: 18, scope: !325)
!468 = !DILocation(line: 286, column: 23, scope: !325)
!469 = !DILocation(line: 286, column: 6, scope: !325)
!470 = !DILocation(line: 286, column: 28, scope: !325)
!471 = !DILocation(line: 285, column: 34, scope: !325)
!472 = !DILocation(line: 287, column: 7, scope: !325)
!473 = !DILocation(line: 287, column: 17, scope: !325)
!474 = !DILocation(line: 287, column: 22, scope: !325)
!475 = !DILocation(line: 287, column: 5, scope: !325)
!476 = !DILocation(line: 286, column: 34, scope: !325)
!477 = !DILocation(line: 285, column: 8, scope: !325)
!478 = !DILocation(line: 288, column: 14, scope: !325)
!479 = !DILocation(line: 288, column: 24, scope: !325)
!480 = !DILocation(line: 288, column: 29, scope: !325)
!481 = !DILocation(line: 288, column: 12, scope: !325)
!482 = !DILocation(line: 288, column: 10, scope: !325)
!483 = !DILocation(line: 290, column: 12, scope: !325)
!484 = !DILocation(line: 290, column: 22, scope: !325)
!485 = !DILocation(line: 290, column: 27, scope: !325)
!486 = !DILocation(line: 290, column: 4, scope: !325)
!487 = !DILocation(line: 292, column: 32, scope: !325)
!488 = !DILocation(line: 292, column: 42, scope: !325)
!489 = !DILocation(line: 292, column: 47, scope: !325)
!490 = !DILocation(line: 292, column: 13, scope: !325)
!491 = !DILocation(line: 292, column: 11, scope: !325)
!492 = !DILocation(line: 293, column: 30, scope: !325)
!493 = !DILocation(line: 293, column: 40, scope: !325)
!494 = !DILocation(line: 293, column: 47, scope: !325)
!495 = !DILocation(line: 293, column: 45, scope: !325)
!496 = !DILocation(line: 293, column: 54, scope: !325)
!497 = !DILocation(line: 293, column: 52, scope: !325)
!498 = !DILocation(line: 293, column: 4, scope: !325)
!499 = !DILocation(line: 293, column: 14, scope: !325)
!500 = !DILocation(line: 293, column: 28, scope: !325)
!501 = !DILocation(line: 294, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !325, file: !3, line: 294, column: 8)
!503 = !DILocation(line: 294, column: 19, scope: !502)
!504 = !DILocation(line: 294, column: 8, scope: !325)
!505 = !DILocation(line: 295, column: 13, scope: !502)
!506 = !DILocation(line: 295, column: 10, scope: !502)
!507 = !DILocation(line: 295, column: 5, scope: !502)
!508 = !DILocation(line: 296, column: 3, scope: !326)
!509 = !DILocation(line: 296, column: 3, scope: !325)
!510 = !DILocation(line: 302, column: 30, scope: !318)
!511 = !DILocation(line: 302, column: 40, scope: !318)
!512 = !DILocation(line: 302, column: 3, scope: !318)
!513 = !DILocation(line: 302, column: 13, scope: !318)
!514 = !DILocation(line: 302, column: 28, scope: !318)
!515 = !DILocation(line: 303, column: 24, scope: !318)
!516 = !DILocation(line: 303, column: 34, scope: !318)
!517 = !DILocation(line: 303, column: 3, scope: !318)
!518 = !DILocation(line: 303, column: 13, scope: !318)
!519 = !DILocation(line: 303, column: 22, scope: !318)
!520 = !DILocation(line: 304, column: 29, scope: !318)
!521 = !DILocation(line: 304, column: 3, scope: !318)
!522 = !DILocation(line: 304, column: 13, scope: !318)
!523 = !DILocation(line: 304, column: 27, scope: !318)
!524 = !DILocation(line: 307, column: 21, scope: !318)
!525 = !DILocation(line: 307, column: 3, scope: !318)
!526 = !DILocation(line: 307, column: 13, scope: !318)
!527 = !DILocation(line: 307, column: 18, scope: !318)
!528 = !DILocation(line: 316, column: 22, scope: !529)
!529 = distinct !DILexicalBlock(scope: !318, file: !3, line: 316, column: 7)
!530 = !DILocation(line: 316, column: 32, scope: !529)
!531 = !DILocation(line: 316, column: 7, scope: !529)
!532 = !DILocation(line: 317, column: 22, scope: !529)
!533 = !DILocation(line: 317, column: 32, scope: !529)
!534 = !DILocation(line: 317, column: 7, scope: !529)
!535 = !DILocation(line: 316, column: 37, scope: !529)
!536 = !DILocation(line: 318, column: 22, scope: !529)
!537 = !DILocation(line: 318, column: 32, scope: !529)
!538 = !DILocation(line: 318, column: 7, scope: !529)
!539 = !DILocation(line: 317, column: 42, scope: !529)
!540 = !DILocation(line: 316, column: 7, scope: !318)
!541 = !DILocation(line: 319, column: 4, scope: !529)
!542 = !DILocation(line: 322, column: 11, scope: !318)
!543 = !DILocation(line: 322, column: 21, scope: !318)
!544 = !DILocation(line: 322, column: 32, scope: !318)
!545 = !DILocation(line: 322, column: 3, scope: !318)
!546 = !DILocation(line: 324, column: 4, scope: !328)
!547 = !DILocation(line: 324, column: 14, scope: !328)
!548 = !DILocation(line: 324, column: 28, scope: !328)
!549 = !DILocation(line: 326, column: 4, scope: !328)
!550 = !DILocation(line: 326, column: 14, scope: !328)
!551 = !DILocation(line: 326, column: 29, scope: !328)
!552 = !DILocation(line: 333, column: 4, scope: !328)
!553 = !DILocation(line: 333, column: 14, scope: !328)
!554 = !DILocation(line: 333, column: 29, scope: !328)
!555 = !DILocation(line: 335, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !328, file: !3, line: 335, column: 8)
!557 = !DILocation(line: 335, column: 19, scope: !556)
!558 = !DILocation(line: 335, column: 8, scope: !328)
!559 = !DILocation(line: 336, column: 9, scope: !556)
!560 = !DILocation(line: 336, column: 5, scope: !556)
!561 = !DILocation(line: 337, column: 4, scope: !328)
!562 = !DILocation(line: 339, column: 4, scope: !328)
!563 = !DILocation(line: 339, column: 14, scope: !328)
!564 = !DILocation(line: 339, column: 28, scope: !328)
!565 = !DILocation(line: 340, column: 4, scope: !328)
!566 = !DILocation(line: 340, column: 14, scope: !328)
!567 = !DILocation(line: 340, column: 32, scope: !328)
!568 = !DILocation(line: 341, column: 4, scope: !328)
!569 = !DILocation(line: 341, column: 14, scope: !328)
!570 = !DILocation(line: 341, column: 29, scope: !328)
!571 = !DILocation(line: 342, column: 4, scope: !328)
!572 = !DILocation(line: 349, column: 24, scope: !328)
!573 = !DILocation(line: 349, column: 34, scope: !328)
!574 = !DILocation(line: 349, column: 5, scope: !328)
!575 = !DILocation(line: 348, column: 4, scope: !328)
!576 = !DILocation(line: 348, column: 14, scope: !328)
!577 = !DILocation(line: 348, column: 30, scope: !328)
!578 = !DILocation(line: 350, column: 4, scope: !328)
!579 = !DILocation(line: 350, column: 14, scope: !328)
!580 = !DILocation(line: 350, column: 26, scope: !328)
!581 = !DILocation(line: 351, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !328, file: !3, line: 351, column: 8)
!583 = !DILocation(line: 351, column: 18, scope: !582)
!584 = !DILocation(line: 351, column: 8, scope: !328)
!585 = !DILocation(line: 352, column: 5, scope: !582)
!586 = !DILocation(line: 352, column: 15, scope: !582)
!587 = !DILocation(line: 352, column: 26, scope: !582)
!588 = !DILocation(line: 354, column: 5, scope: !582)
!589 = !DILocation(line: 354, column: 15, scope: !582)
!590 = !DILocation(line: 354, column: 25, scope: !582)
!591 = !DILocation(line: 355, column: 4, scope: !328)
!592 = !DILocation(line: 355, column: 14, scope: !328)
!593 = !DILocation(line: 355, column: 28, scope: !328)
!594 = !DILocation(line: 356, column: 4, scope: !328)
!595 = !DILocation(line: 359, column: 8, scope: !328)
!596 = !DILocation(line: 359, column: 4, scope: !328)
!597 = !DILocation(line: 360, column: 2, scope: !328)
!598 = !DILocation(line: 361, column: 4, scope: !328)
!599 = !DILocation(line: 361, column: 14, scope: !328)
!600 = !DILocation(line: 361, column: 30, scope: !328)
!601 = !DILocation(line: 362, column: 4, scope: !328)
!602 = !DILocation(line: 362, column: 14, scope: !328)
!603 = !DILocation(line: 362, column: 24, scope: !328)
!604 = !DILocation(line: 363, column: 3, scope: !328)
!605 = !DILocation(line: 366, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !318, file: !3, line: 366, column: 7)
!607 = !DILocation(line: 366, column: 7, scope: !318)
!608 = !DILocation(line: 367, column: 4, scope: !606)
!609 = !DILocation(line: 368, column: 2, scope: !312)
!610 = distinct !{!610, !330, !609, !292}
!611 = !DILocation(line: 369, column: 1, scope: !312)
!612 = distinct !DISubprogram(name: "find_ns", scope: !3, file: !3, line: 166, type: !613, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !125, !111, !43}
!615 = !{!616, !617, !618, !619}
!616 = !DILocalVariable(name: "iterator", arg: 1, scope: !612, file: !3, line: 166, type: !125)
!617 = !DILocalVariable(name: "oui", arg: 2, scope: !612, file: !3, line: 167, type: !111)
!618 = !DILocalVariable(name: "subns", arg: 3, scope: !612, file: !3, line: 167, type: !43)
!619 = !DILocalVariable(name: "i", scope: !612, file: !3, line: 169, type: !109)
!620 = !DILocation(line: 166, column: 57, scope: !612)
!621 = !DILocation(line: 167, column: 16, scope: !612)
!622 = !DILocation(line: 167, column: 29, scope: !612)
!623 = !DILocation(line: 169, column: 2, scope: !612)
!624 = !DILocation(line: 169, column: 6, scope: !612)
!625 = !DILocation(line: 171, column: 2, scope: !612)
!626 = !DILocation(line: 171, column: 12, scope: !612)
!627 = !DILocation(line: 171, column: 30, scope: !612)
!628 = !DILocation(line: 173, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !612, file: !3, line: 173, column: 6)
!630 = !DILocation(line: 173, column: 17, scope: !629)
!631 = !DILocation(line: 173, column: 6, scope: !612)
!632 = !DILocation(line: 174, column: 3, scope: !629)
!633 = !DILocation(line: 176, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !612, file: !3, line: 176, column: 2)
!635 = !DILocation(line: 176, column: 7, scope: !634)
!636 = !DILocation(line: 176, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !3, line: 176, column: 2)
!638 = !DILocation(line: 176, column: 18, scope: !637)
!639 = !DILocation(line: 176, column: 28, scope: !637)
!640 = !DILocation(line: 176, column: 34, scope: !637)
!641 = !DILocation(line: 176, column: 16, scope: !637)
!642 = !DILocation(line: 176, column: 2, scope: !634)
!643 = !DILocation(line: 177, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 177, column: 7)
!645 = distinct !DILexicalBlock(scope: !637, file: !3, line: 176, column: 45)
!646 = !DILocation(line: 177, column: 17, scope: !644)
!647 = !DILocation(line: 177, column: 23, scope: !644)
!648 = !DILocation(line: 177, column: 26, scope: !644)
!649 = !DILocation(line: 177, column: 29, scope: !644)
!650 = !DILocation(line: 177, column: 36, scope: !644)
!651 = !DILocation(line: 177, column: 33, scope: !644)
!652 = !DILocation(line: 177, column: 7, scope: !645)
!653 = !DILocation(line: 178, column: 4, scope: !644)
!654 = !DILocation(line: 179, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !645, file: !3, line: 179, column: 7)
!656 = !DILocation(line: 179, column: 17, scope: !655)
!657 = !DILocation(line: 179, column: 23, scope: !655)
!658 = !DILocation(line: 179, column: 26, scope: !655)
!659 = !DILocation(line: 179, column: 29, scope: !655)
!660 = !DILocation(line: 179, column: 38, scope: !655)
!661 = !DILocation(line: 179, column: 35, scope: !655)
!662 = !DILocation(line: 179, column: 7, scope: !645)
!663 = !DILocation(line: 180, column: 4, scope: !655)
!664 = !DILocation(line: 182, column: 34, scope: !645)
!665 = !DILocation(line: 182, column: 44, scope: !645)
!666 = !DILocation(line: 182, column: 50, scope: !645)
!667 = !DILocation(line: 182, column: 53, scope: !645)
!668 = !DILocation(line: 182, column: 3, scope: !645)
!669 = !DILocation(line: 182, column: 13, scope: !645)
!670 = !DILocation(line: 182, column: 31, scope: !645)
!671 = !DILocation(line: 183, column: 3, scope: !645)
!672 = !DILocation(line: 176, column: 41, scope: !637)
!673 = !DILocation(line: 176, column: 2, scope: !637)
!674 = distinct !{!674, !642, !675, !291, !292}
!675 = !DILocation(line: 184, column: 2, scope: !634)
!676 = !DILocation(line: 185, column: 1, scope: !612)
