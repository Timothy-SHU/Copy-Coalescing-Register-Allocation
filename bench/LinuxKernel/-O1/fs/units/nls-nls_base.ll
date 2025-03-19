; ModuleID = 'fs/nls/nls_base.c'
source_filename = "fs/nls/nls_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_utf8_to_utf32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad utf8_to_utf32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_utf32_to_utf8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad utf32_to_utf8 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_utf8s_to_utf16s: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad utf8s_to_utf16s ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_utf16s_to_utf8s: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad utf16s_to_utf8s ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___register_nls: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __register_nls ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_nls: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_nls ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unload_nls: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad unload_nls ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_load_nls: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad load_nls ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_load_nls_default: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad load_nls_default ; .previous"

%struct.utf8_table = type { i32, i32, i32, i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@utf8_table = internal constant [7 x %struct.utf8_table] [%struct.utf8_table { i32 128, i32 0, i32 0, i64 127, i64 0 }, %struct.utf8_table { i32 224, i32 192, i32 6, i64 2047, i64 128 }, %struct.utf8_table { i32 240, i32 224, i32 12, i64 65535, i64 2048 }, %struct.utf8_table { i32 248, i32 240, i32 18, i64 2097151, i64 65536 }, %struct.utf8_table { i32 252, i32 248, i32 24, i64 67108863, i64 2097152 }, %struct.utf8_table { i32 254, i32 252, i32 30, i64 2147483647, i64 67108864 }, %struct.utf8_table zeroinitializer], align 16, !dbg !0
@__UNIQUE_ID___addressable_utf8_to_utf32195 = internal global ptr @utf8_to_utf32, section ".discard.addressable", align 8, !dbg !48
@__UNIQUE_ID___addressable_utf32_to_utf8196 = internal global ptr @utf32_to_utf8, section ".discard.addressable", align 8, !dbg !50
@__UNIQUE_ID___addressable_utf8s_to_utf16s197 = internal global ptr @utf8s_to_utf16s, section ".discard.addressable", align 8, !dbg !52
@__UNIQUE_ID___addressable_utf16s_to_utf8s198 = internal global ptr @utf16s_to_utf8s, section ".discard.addressable", align 8, !dbg !54
@tables = internal global ptr @default_table, align 8, !dbg !85
@nls_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !1138
@__UNIQUE_ID___addressable___register_nls199 = internal global ptr @__register_nls, section ".discard.addressable", align 8, !dbg !56
@.str = private unnamed_addr constant [7 x i8] c"nls_%s\00", align 1, !dbg !58
@.str.1 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1, !dbg !64
@default_table = internal global %struct.nls_table { ptr @.str.2, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, align 8, !dbg !1145
@__UNIQUE_ID___addressable_unregister_nls200 = internal global ptr @unregister_nls, section ".discard.addressable", align 8, !dbg !69
@__UNIQUE_ID___addressable_unload_nls201 = internal global ptr @unload_nls, section ".discard.addressable", align 8, !dbg !71
@__UNIQUE_ID___addressable_load_nls202 = internal global ptr @load_nls, section ".discard.addressable", align 8, !dbg !73
@__UNIQUE_ID___addressable_load_nls_default203 = internal global ptr @load_nls_default, section ".discard.addressable", align 8, !dbg !75
@__UNIQUE_ID_file204 = internal constant [30 x i8] c"nls_base.file=fs/nls/nls_base\00", section ".modinfo", align 1, !dbg !77
@__UNIQUE_ID_license205 = internal constant [30 x i8] c"nls_base.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !83
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !dbg !1140
@charset2lower = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16, !dbg !1160
@charset2upper = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16, !dbg !1162
@page00 = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16, !dbg !1153
@page_uni2charset = internal constant <{ ptr, [255 x ptr] }> <{ ptr @page00, [255 x ptr] zeroinitializer }>, align 16, !dbg !1147
@charset2uni = internal constant [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], align 16, !dbg !1156
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_utf8_to_utf32195, ptr @__UNIQUE_ID___addressable_utf32_to_utf8196, ptr @__UNIQUE_ID___addressable_utf8s_to_utf16s197, ptr @__UNIQUE_ID___addressable_utf16s_to_utf8s198, ptr @__UNIQUE_ID___addressable___register_nls199, ptr @__UNIQUE_ID___addressable_unregister_nls200, ptr @__UNIQUE_ID___addressable_unload_nls201, ptr @__UNIQUE_ID___addressable_load_nls202, ptr @__UNIQUE_ID___addressable_load_nls_default203, ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @utf8_to_utf32(ptr noundef %s, i32 noundef %inlen, ptr noundef %pu) #0 align 16 !dbg !1182 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %inlen.addr = alloca i32, align 4
  %pu.addr = alloca ptr, align 8
  %l = alloca i64, align 8
  %c0 = alloca i32, align 4
  %c = alloca i32, align 4
  %nc = alloca i32, align 4
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1189, metadata !DIExpression()), !dbg !1198
  store i32 %inlen, ptr %inlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !1190, metadata !DIExpression()), !dbg !1199
  store ptr %pu, ptr %pu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pu.addr, metadata !1191, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1192, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 4, ptr %c0) #6, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %c0, metadata !1193, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1194, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #6, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %nc, metadata !1195, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1196, metadata !DIExpression()), !dbg !1208
  store i32 0, ptr %nc, align 4, !dbg !1209
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1210
  %1 = load i8, ptr %0, align 1, !dbg !1211
  %conv = zext i8 %1 to i32, !dbg !1211
  store i32 %conv, ptr %c0, align 4, !dbg !1212
  %2 = load i32, ptr %c0, align 4, !dbg !1213
  %conv1 = sext i32 %2 to i64, !dbg !1213
  store i64 %conv1, ptr %l, align 8, !dbg !1214
  store ptr @utf8_table, ptr %t, align 8, !dbg !1215
  br label %for.cond, !dbg !1217

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %t, align 8, !dbg !1218
  %cmask = getelementptr inbounds %struct.utf8_table, ptr %3, i32 0, i32 0, !dbg !1220
  %4 = load i32, ptr %cmask, align 8, !dbg !1220
  %tobool = icmp ne i32 %4, 0, !dbg !1221
  br i1 %tobool, label %for.body, label %for.end, !dbg !1221

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %nc, align 4, !dbg !1222
  %inc = add i32 %5, 1, !dbg !1222
  store i32 %inc, ptr %nc, align 4, !dbg !1222
  %6 = load i32, ptr %c0, align 4, !dbg !1224
  %7 = load ptr, ptr %t, align 8, !dbg !1226
  %cmask2 = getelementptr inbounds %struct.utf8_table, ptr %7, i32 0, i32 0, !dbg !1227
  %8 = load i32, ptr %cmask2, align 8, !dbg !1227
  %and = and i32 %6, %8, !dbg !1228
  %9 = load ptr, ptr %t, align 8, !dbg !1229
  %cval = getelementptr inbounds %struct.utf8_table, ptr %9, i32 0, i32 1, !dbg !1230
  %10 = load i32, ptr %cval, align 4, !dbg !1230
  %cmp = icmp eq i32 %and, %10, !dbg !1231
  br i1 %cmp, label %if.then, label %if.end15, !dbg !1232

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %t, align 8, !dbg !1233
  %lmask = getelementptr inbounds %struct.utf8_table, ptr %11, i32 0, i32 3, !dbg !1235
  %12 = load i64, ptr %lmask, align 8, !dbg !1235
  %13 = load i64, ptr %l, align 8, !dbg !1236
  %and4 = and i64 %13, %12, !dbg !1236
  store i64 %and4, ptr %l, align 8, !dbg !1236
  %14 = load i64, ptr %l, align 8, !dbg !1237
  %15 = load ptr, ptr %t, align 8, !dbg !1239
  %lval = getelementptr inbounds %struct.utf8_table, ptr %15, i32 0, i32 4, !dbg !1240
  %16 = load i64, ptr %lval, align 8, !dbg !1240
  %cmp5 = icmp ult i64 %14, %16, !dbg !1241
  br i1 %cmp5, label %if.then13, label %lor.lhs.false, !dbg !1242

lor.lhs.false:                                    ; preds = %if.then
  %17 = load i64, ptr %l, align 8, !dbg !1243
  %cmp7 = icmp ugt i64 %17, 1114111, !dbg !1244
  br i1 %cmp7, label %if.then13, label %lor.lhs.false9, !dbg !1245

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %18 = load i64, ptr %l, align 8, !dbg !1246
  %and10 = and i64 %18, 4294965248, !dbg !1247
  %cmp11 = icmp eq i64 %and10, 55296, !dbg !1248
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !1249

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.then
  store i32 -1, ptr %retval, align 4, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

if.end:                                           ; preds = %lor.lhs.false9
  %19 = load i64, ptr %l, align 8, !dbg !1251
  %conv14 = trunc i64 %19 to i32, !dbg !1252
  %20 = load ptr, ptr %pu.addr, align 8, !dbg !1253
  store i32 %conv14, ptr %20, align 4, !dbg !1254
  %21 = load i32, ptr %nc, align 4, !dbg !1255
  store i32 %21, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

if.end15:                                         ; preds = %for.body
  %22 = load i32, ptr %inlen.addr, align 4, !dbg !1257
  %23 = load i32, ptr %nc, align 4, !dbg !1259
  %cmp16 = icmp sle i32 %22, %23, !dbg !1260
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1261

if.then18:                                        ; preds = %if.end15
  store i32 -1, ptr %retval, align 4, !dbg !1262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1262

if.end19:                                         ; preds = %if.end15
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1263
  %incdec.ptr = getelementptr i8, ptr %24, i32 1, !dbg !1263
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !1263
  %25 = load ptr, ptr %s.addr, align 8, !dbg !1264
  %26 = load i8, ptr %25, align 1, !dbg !1265
  %conv20 = zext i8 %26 to i32, !dbg !1265
  %xor = xor i32 %conv20, 128, !dbg !1266
  %and21 = and i32 %xor, 255, !dbg !1267
  store i32 %and21, ptr %c, align 4, !dbg !1268
  %27 = load i32, ptr %c, align 4, !dbg !1269
  %and22 = and i32 %27, 192, !dbg !1271
  %tobool23 = icmp ne i32 %and22, 0, !dbg !1271
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1272

if.then24:                                        ; preds = %if.end19
  store i32 -1, ptr %retval, align 4, !dbg !1273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1273

if.end25:                                         ; preds = %if.end19
  %28 = load i64, ptr %l, align 8, !dbg !1274
  %shl = shl i64 %28, 6, !dbg !1275
  %29 = load i32, ptr %c, align 4, !dbg !1276
  %conv26 = sext i32 %29 to i64, !dbg !1276
  %or = or i64 %shl, %conv26, !dbg !1277
  store i64 %or, ptr %l, align 8, !dbg !1278
  br label %for.inc, !dbg !1279

for.inc:                                          ; preds = %if.end25
  %30 = load ptr, ptr %t, align 8, !dbg !1280
  %incdec.ptr27 = getelementptr %struct.utf8_table, ptr %30, i32 1, !dbg !1280
  store ptr %incdec.ptr27, ptr %t, align 8, !dbg !1280
  br label %for.cond, !dbg !1281, !llvm.loop !1282

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !1286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1286

cleanup:                                          ; preds = %for.end, %if.then24, %if.then18, %if.end, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6, !dbg !1287
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #6, !dbg !1287
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6, !dbg !1287
  call void @llvm.lifetime.end.p0(i64 4, ptr %c0) #6, !dbg !1287
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6, !dbg !1287
  %31 = load i32, ptr %retval, align 4, !dbg !1287
  ret i32 %31, !dbg !1287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @utf32_to_utf8(i32 noundef %u, ptr noundef %s, i32 noundef %maxout) #0 align 16 !dbg !1288 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %maxout.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %c = alloca i32, align 4
  %nc = alloca i32, align 4
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !1293, metadata !DIExpression()), !dbg !1300
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1294, metadata !DIExpression()), !dbg !1301
  store i32 %maxout, ptr %maxout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxout.addr, metadata !1295, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1296, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6, !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1297, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #6, !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %nc, metadata !1298, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6, !dbg !1308
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1299, metadata !DIExpression()), !dbg !1309
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1310
  %tobool = icmp ne ptr %0, null, !dbg !1310
  br i1 %tobool, label %if.end, label %if.then, !dbg !1312

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1313

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %u.addr, align 4, !dbg !1314
  %conv = zext i32 %1 to i64, !dbg !1314
  store i64 %conv, ptr %l, align 8, !dbg !1315
  %2 = load i64, ptr %l, align 8, !dbg !1316
  %cmp = icmp ugt i64 %2, 1114111, !dbg !1318
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !1319

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, ptr %l, align 8, !dbg !1320
  %and = and i64 %3, 4294965248, !dbg !1321
  %cmp2 = icmp eq i64 %and, 55296, !dbg !1322
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1323

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1324

if.end5:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %nc, align 4, !dbg !1325
  store ptr @utf8_table, ptr %t, align 8, !dbg !1326
  br label %for.cond, !dbg !1328

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load ptr, ptr %t, align 8, !dbg !1329
  %cmask = getelementptr inbounds %struct.utf8_table, ptr %4, i32 0, i32 0, !dbg !1331
  %5 = load i32, ptr %cmask, align 8, !dbg !1331
  %tobool6 = icmp ne i32 %5, 0, !dbg !1329
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !1332

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, ptr %maxout.addr, align 4, !dbg !1333
  %tobool7 = icmp ne i32 %6, 0, !dbg !1332
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ], !dbg !1334
  br i1 %7, label %for.body, label %for.end, !dbg !1335

for.body:                                         ; preds = %land.end
  %8 = load i32, ptr %nc, align 4, !dbg !1336
  %inc = add i32 %8, 1, !dbg !1336
  store i32 %inc, ptr %nc, align 4, !dbg !1336
  %9 = load i64, ptr %l, align 8, !dbg !1338
  %10 = load ptr, ptr %t, align 8, !dbg !1340
  %lmask = getelementptr inbounds %struct.utf8_table, ptr %10, i32 0, i32 3, !dbg !1341
  %11 = load i64, ptr %lmask, align 8, !dbg !1341
  %cmp8 = icmp ule i64 %9, %11, !dbg !1342
  br i1 %cmp8, label %if.then10, label %if.end20, !dbg !1343

if.then10:                                        ; preds = %for.body
  %12 = load ptr, ptr %t, align 8, !dbg !1344
  %shift = getelementptr inbounds %struct.utf8_table, ptr %12, i32 0, i32 2, !dbg !1346
  %13 = load i32, ptr %shift, align 8, !dbg !1346
  store i32 %13, ptr %c, align 4, !dbg !1347
  %14 = load ptr, ptr %t, align 8, !dbg !1348
  %cval = getelementptr inbounds %struct.utf8_table, ptr %14, i32 0, i32 1, !dbg !1349
  %15 = load i32, ptr %cval, align 4, !dbg !1349
  %conv11 = sext i32 %15 to i64, !dbg !1348
  %16 = load i64, ptr %l, align 8, !dbg !1350
  %17 = load i32, ptr %c, align 4, !dbg !1351
  %sh_prom = zext i32 %17 to i64, !dbg !1352
  %shr = lshr i64 %16, %sh_prom, !dbg !1352
  %or = or i64 %conv11, %shr, !dbg !1353
  %conv12 = trunc i64 %or to i8, !dbg !1354
  %18 = load ptr, ptr %s.addr, align 8, !dbg !1355
  store i8 %conv12, ptr %18, align 1, !dbg !1356
  br label %while.cond, !dbg !1357

while.cond:                                       ; preds = %while.body, %if.then10
  %19 = load i32, ptr %c, align 4, !dbg !1358
  %cmp13 = icmp sgt i32 %19, 0, !dbg !1359
  br i1 %cmp13, label %while.body, label %while.end, !dbg !1357

while.body:                                       ; preds = %while.cond
  %20 = load i32, ptr %c, align 4, !dbg !1360
  %sub = sub i32 %20, 6, !dbg !1360
  store i32 %sub, ptr %c, align 4, !dbg !1360
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1362
  %incdec.ptr = getelementptr i8, ptr %21, i32 1, !dbg !1362
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !1362
  %22 = load i64, ptr %l, align 8, !dbg !1363
  %23 = load i32, ptr %c, align 4, !dbg !1364
  %sh_prom15 = zext i32 %23 to i64, !dbg !1365
  %shr16 = lshr i64 %22, %sh_prom15, !dbg !1365
  %and17 = and i64 %shr16, 63, !dbg !1366
  %or18 = or i64 128, %and17, !dbg !1367
  %conv19 = trunc i64 %or18 to i8, !dbg !1368
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1369
  store i8 %conv19, ptr %24, align 1, !dbg !1370
  br label %while.cond, !dbg !1357, !llvm.loop !1371

while.end:                                        ; preds = %while.cond
  %25 = load i32, ptr %nc, align 4, !dbg !1373
  store i32 %25, ptr %retval, align 4, !dbg !1374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1374

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !1375

for.inc:                                          ; preds = %if.end20
  %26 = load ptr, ptr %t, align 8, !dbg !1376
  %incdec.ptr21 = getelementptr %struct.utf8_table, ptr %26, i32 1, !dbg !1376
  store ptr %incdec.ptr21, ptr %t, align 8, !dbg !1376
  %27 = load i32, ptr %maxout.addr, align 4, !dbg !1377
  %dec = add i32 %27, -1, !dbg !1377
  store i32 %dec, ptr %maxout.addr, align 4, !dbg !1377
  br label %for.cond, !dbg !1378, !llvm.loop !1379

for.end:                                          ; preds = %land.end
  store i32 -1, ptr %retval, align 4, !dbg !1381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1381

cleanup:                                          ; preds = %for.end, %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #6, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6, !dbg !1382
  %28 = load i32, ptr %retval, align 4, !dbg !1382
  ret i32 %28, !dbg !1382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @utf8s_to_utf16s(ptr noundef %s, i32 noundef %inlen, i32 noundef %endian, ptr noundef %pwcs, i32 noundef %maxout) #0 align 16 !dbg !1383 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %inlen.addr = alloca i32, align 4
  %endian.addr = alloca i32, align 4
  %pwcs.addr = alloca ptr, align 8
  %maxout.addr = alloca i32, align 4
  %op = alloca ptr, align 8
  %size = alloca i32, align 4
  %u = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1387, metadata !DIExpression()), !dbg !1396
  store i32 %inlen, ptr %inlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !1388, metadata !DIExpression()), !dbg !1397
  store i32 %endian, ptr %endian.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endian.addr, metadata !1389, metadata !DIExpression()), !dbg !1398
  store ptr %pwcs, ptr %pwcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pwcs.addr, metadata !1390, metadata !DIExpression()), !dbg !1399
  store i32 %maxout, ptr %maxout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxout.addr, metadata !1391, metadata !DIExpression()), !dbg !1400
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1392, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #6, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1394, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #6, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %u, metadata !1395, metadata !DIExpression()), !dbg !1406
  %0 = load ptr, ptr %pwcs.addr, align 8, !dbg !1407
  store ptr %0, ptr %op, align 8, !dbg !1408
  br label %while.cond, !dbg !1409

while.cond:                                       ; preds = %if.end28, %entry
  %1 = load i32, ptr %inlen.addr, align 4, !dbg !1410
  %cmp = icmp sgt i32 %1, 0, !dbg !1411
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1412

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32, ptr %maxout.addr, align 4, !dbg !1413
  %cmp1 = icmp sgt i32 %2, 0, !dbg !1414
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !1415

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1416
  %4 = load i8, ptr %3, align 1, !dbg !1417
  %conv = zext i8 %4 to i32, !dbg !1417
  %tobool = icmp ne i32 %conv, 0, !dbg !1415
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !1418
  br i1 %5, label %while.body, label %while.end, !dbg !1409

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1419
  %7 = load i8, ptr %6, align 1, !dbg !1422
  %conv2 = zext i8 %7 to i32, !dbg !1422
  %and = and i32 %conv2, 128, !dbg !1423
  %tobool3 = icmp ne i32 %and, 0, !dbg !1423
  br i1 %tobool3, label %if.then, label %if.else22, !dbg !1424

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1425
  %9 = load i32, ptr %inlen.addr, align 4, !dbg !1427
  %call = call i32 @utf8_to_utf32(ptr noundef %8, i32 noundef %9, ptr noundef %u) #7, !dbg !1428
  store i32 %call, ptr %size, align 4, !dbg !1429
  %10 = load i32, ptr %size, align 4, !dbg !1430
  %cmp4 = icmp slt i32 %10, 0, !dbg !1432
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !1433

if.then6:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !1434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1434

if.end:                                           ; preds = %if.then
  %11 = load i32, ptr %size, align 4, !dbg !1435
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1436
  %idx.ext = sext i32 %11 to i64, !dbg !1436
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !1436
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !1436
  %13 = load i32, ptr %size, align 4, !dbg !1437
  %14 = load i32, ptr %inlen.addr, align 4, !dbg !1438
  %sub = sub i32 %14, %13, !dbg !1438
  store i32 %sub, ptr %inlen.addr, align 4, !dbg !1438
  %15 = load i32, ptr %u, align 4, !dbg !1439
  %cmp7 = icmp uge i32 %15, 65536, !dbg !1441
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1442

if.then9:                                         ; preds = %if.end
  %16 = load i32, ptr %maxout.addr, align 4, !dbg !1443
  %cmp10 = icmp slt i32 %16, 2, !dbg !1446
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1447

if.then12:                                        ; preds = %if.then9
  br label %while.end, !dbg !1448

if.end13:                                         ; preds = %if.then9
  %17 = load i32, ptr %u, align 4, !dbg !1449
  %sub14 = sub i32 %17, 65536, !dbg !1449
  store i32 %sub14, ptr %u, align 4, !dbg !1449
  %18 = load ptr, ptr %op, align 8, !dbg !1450
  %incdec.ptr = getelementptr i16, ptr %18, i32 1, !dbg !1450
  store ptr %incdec.ptr, ptr %op, align 8, !dbg !1450
  %19 = load i32, ptr %u, align 4, !dbg !1451
  %shr = lshr i32 %19, 10, !dbg !1452
  %and15 = and i32 %shr, 1023, !dbg !1453
  %or = or i32 55296, %and15, !dbg !1454
  %20 = load i32, ptr %endian.addr, align 4, !dbg !1455
  call void @put_utf16(ptr noundef %18, i32 noundef %or, i32 noundef %20) #7, !dbg !1456
  %21 = load ptr, ptr %op, align 8, !dbg !1457
  %incdec.ptr16 = getelementptr i16, ptr %21, i32 1, !dbg !1457
  store ptr %incdec.ptr16, ptr %op, align 8, !dbg !1457
  %22 = load i32, ptr %u, align 4, !dbg !1458
  %and17 = and i32 %22, 1023, !dbg !1459
  %or18 = or i32 56320, %and17, !dbg !1460
  %23 = load i32, ptr %endian.addr, align 4, !dbg !1461
  call void @put_utf16(ptr noundef %21, i32 noundef %or18, i32 noundef %23) #7, !dbg !1462
  %24 = load i32, ptr %maxout.addr, align 4, !dbg !1463
  %sub19 = sub i32 %24, 2, !dbg !1463
  store i32 %sub19, ptr %maxout.addr, align 4, !dbg !1463
  br label %if.end21, !dbg !1464

if.else:                                          ; preds = %if.end
  %25 = load ptr, ptr %op, align 8, !dbg !1465
  %incdec.ptr20 = getelementptr i16, ptr %25, i32 1, !dbg !1465
  store ptr %incdec.ptr20, ptr %op, align 8, !dbg !1465
  %26 = load i32, ptr %u, align 4, !dbg !1467
  %27 = load i32, ptr %endian.addr, align 4, !dbg !1468
  call void @put_utf16(ptr noundef %25, i32 noundef %26, i32 noundef %27) #7, !dbg !1469
  %28 = load i32, ptr %maxout.addr, align 4, !dbg !1470
  %dec = add i32 %28, -1, !dbg !1470
  store i32 %dec, ptr %maxout.addr, align 4, !dbg !1470
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end13
  br label %if.end28, !dbg !1471

if.else22:                                        ; preds = %while.body
  %29 = load ptr, ptr %op, align 8, !dbg !1472
  %incdec.ptr23 = getelementptr i16, ptr %29, i32 1, !dbg !1472
  store ptr %incdec.ptr23, ptr %op, align 8, !dbg !1472
  %30 = load ptr, ptr %s.addr, align 8, !dbg !1474
  %incdec.ptr24 = getelementptr i8, ptr %30, i32 1, !dbg !1474
  store ptr %incdec.ptr24, ptr %s.addr, align 8, !dbg !1474
  %31 = load i8, ptr %30, align 1, !dbg !1475
  %conv25 = zext i8 %31 to i32, !dbg !1475
  %32 = load i32, ptr %endian.addr, align 4, !dbg !1476
  call void @put_utf16(ptr noundef %29, i32 noundef %conv25, i32 noundef %32) #7, !dbg !1477
  %33 = load i32, ptr %inlen.addr, align 4, !dbg !1478
  %dec26 = add i32 %33, -1, !dbg !1478
  store i32 %dec26, ptr %inlen.addr, align 4, !dbg !1478
  %34 = load i32, ptr %maxout.addr, align 4, !dbg !1479
  %dec27 = add i32 %34, -1, !dbg !1479
  store i32 %dec27, ptr %maxout.addr, align 4, !dbg !1479
  br label %if.end28

if.end28:                                         ; preds = %if.else22, %if.end21
  br label %while.cond, !dbg !1409, !llvm.loop !1480

while.end:                                        ; preds = %if.then12, %land.end
  %35 = load ptr, ptr %op, align 8, !dbg !1482
  %36 = load ptr, ptr %pwcs.addr, align 8, !dbg !1483
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i64, !dbg !1484
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i64, !dbg !1484
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1484
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2, !dbg !1484
  %conv29 = trunc i64 %sub.ptr.div to i32, !dbg !1482
  store i32 %conv29, ptr %retval, align 4, !dbg !1485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1485

cleanup:                                          ; preds = %while.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #6, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #6, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6, !dbg !1486
  %37 = load i32, ptr %retval, align 4, !dbg !1486
  ret i32 %37, !dbg !1486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_utf16(ptr noundef %s, i32 noundef %c, i32 noundef %endian) #3 align 16 !dbg !1487 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %endian.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1491, metadata !DIExpression()), !dbg !1494
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1492, metadata !DIExpression()), !dbg !1495
  store i32 %endian, ptr %endian.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endian.addr, metadata !1493, metadata !DIExpression()), !dbg !1496
  %0 = load i32, ptr %endian.addr, align 4, !dbg !1497
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !1498

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !1499
  %conv = trunc i32 %1 to i16, !dbg !1501
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1502
  store i16 %conv, ptr %2, align 2, !dbg !1503
  br label %sw.epilog, !dbg !1504

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4, !dbg !1505
  %conv1 = trunc i32 %3 to i16, !dbg !1505
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1506
  store i16 %conv1, ptr %4, align 2, !dbg !1507
  br label %sw.epilog, !dbg !1508

sw.bb2:                                           ; preds = %entry
  %5 = load i32, ptr %c.addr, align 4, !dbg !1509
  %conv3 = trunc i32 %5 to i16, !dbg !1509
  %6 = call i16 @llvm.bswap.i16(i16 %conv3), !dbg !1509
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1510
  store i16 %6, ptr %7, align 2, !dbg !1511
  br label %sw.epilog, !dbg !1512

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %sw.default
  ret void, !dbg !1513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @utf16s_to_utf8s(ptr noundef %pwcs, i32 noundef %inlen, i32 noundef %endian, ptr noundef %s, i32 noundef %maxout) #0 align 16 !dbg !1514 {
entry:
  %pwcs.addr = alloca ptr, align 8
  %inlen.addr = alloca i32, align 4
  %endian.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %maxout.addr = alloca i32, align 4
  %op = alloca ptr, align 8
  %size = alloca i32, align 4
  %u = alloca i64, align 8
  %v = alloca i64, align 8
  store ptr %pwcs, ptr %pwcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pwcs.addr, metadata !1519, metadata !DIExpression()), !dbg !1528
  store i32 %inlen, ptr %inlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !1520, metadata !DIExpression()), !dbg !1529
  store i32 %endian, ptr %endian.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endian.addr, metadata !1521, metadata !DIExpression()), !dbg !1530
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1522, metadata !DIExpression()), !dbg !1531
  store i32 %maxout, ptr %maxout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxout.addr, metadata !1523, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1524, metadata !DIExpression()), !dbg !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #6, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1525, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %u, metadata !1526, metadata !DIExpression()), !dbg !1538
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #6, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1527, metadata !DIExpression()), !dbg !1539
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1540
  store ptr %0, ptr %op, align 8, !dbg !1541
  br label %while.cond, !dbg !1542

while.cond:                                       ; preds = %if.end41, %if.then23, %if.then10, %entry
  %1 = load i32, ptr %inlen.addr, align 4, !dbg !1543
  %cmp = icmp sgt i32 %1, 0, !dbg !1544
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1545

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %maxout.addr, align 4, !dbg !1546
  %cmp1 = icmp sgt i32 %2, 0, !dbg !1547
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !1548
  br i1 %3, label %while.body, label %while.end, !dbg !1542

while.body:                                       ; preds = %land.end
  %4 = load ptr, ptr %pwcs.addr, align 8, !dbg !1549
  %5 = load i16, ptr %4, align 2, !dbg !1551
  %conv = zext i16 %5 to i32, !dbg !1551
  %6 = load i32, ptr %endian.addr, align 4, !dbg !1552
  %call = call i64 @get_utf16(i32 noundef %conv, i32 noundef %6) #7, !dbg !1553
  store i64 %call, ptr %u, align 8, !dbg !1554
  %7 = load i64, ptr %u, align 8, !dbg !1555
  %tobool = icmp ne i64 %7, 0, !dbg !1555
  br i1 %tobool, label %if.end, label %if.then, !dbg !1557

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !1558

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %pwcs.addr, align 8, !dbg !1559
  %incdec.ptr = getelementptr i16, ptr %8, i32 1, !dbg !1559
  store ptr %incdec.ptr, ptr %pwcs.addr, align 8, !dbg !1559
  %9 = load i32, ptr %inlen.addr, align 4, !dbg !1560
  %dec = add i32 %9, -1, !dbg !1560
  store i32 %dec, ptr %inlen.addr, align 4, !dbg !1560
  %10 = load i64, ptr %u, align 8, !dbg !1561
  %cmp2 = icmp ugt i64 %10, 127, !dbg !1563
  br i1 %cmp2, label %if.then4, label %if.else37, !dbg !1564

if.then4:                                         ; preds = %if.end
  %11 = load i64, ptr %u, align 8, !dbg !1565
  %and = and i64 %11, 4294965248, !dbg !1568
  %cmp5 = icmp eq i64 %and, 55296, !dbg !1569
  br i1 %cmp5, label %if.then7, label %if.end30, !dbg !1570

if.then7:                                         ; preds = %if.then4
  %12 = load i64, ptr %u, align 8, !dbg !1571
  %and8 = and i64 %12, 1024, !dbg !1574
  %tobool9 = icmp ne i64 %and8, 0, !dbg !1574
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1575

if.then10:                                        ; preds = %if.then7
  br label %while.cond, !dbg !1576, !llvm.loop !1578

if.end11:                                         ; preds = %if.then7
  %13 = load i32, ptr %inlen.addr, align 4, !dbg !1580
  %cmp12 = icmp sle i32 %13, 0, !dbg !1582
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1583

if.then14:                                        ; preds = %if.end11
  br label %while.end, !dbg !1584

if.end15:                                         ; preds = %if.end11
  %14 = load ptr, ptr %pwcs.addr, align 8, !dbg !1585
  %15 = load i16, ptr %14, align 2, !dbg !1586
  %conv16 = zext i16 %15 to i32, !dbg !1586
  %16 = load i32, ptr %endian.addr, align 4, !dbg !1587
  %call17 = call i64 @get_utf16(i32 noundef %conv16, i32 noundef %16) #7, !dbg !1588
  store i64 %call17, ptr %v, align 8, !dbg !1589
  %17 = load i64, ptr %v, align 8, !dbg !1590
  %and18 = and i64 %17, 4294965248, !dbg !1592
  %cmp19 = icmp ne i64 %and18, 55296, !dbg !1593
  br i1 %cmp19, label %if.then23, label %lor.lhs.false, !dbg !1594

lor.lhs.false:                                    ; preds = %if.end15
  %18 = load i64, ptr %v, align 8, !dbg !1595
  %and21 = and i64 %18, 1024, !dbg !1596
  %tobool22 = icmp ne i64 %and21, 0, !dbg !1596
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1597

if.then23:                                        ; preds = %lor.lhs.false, %if.end15
  br label %while.cond, !dbg !1598, !llvm.loop !1578

if.end24:                                         ; preds = %lor.lhs.false
  %19 = load i64, ptr %u, align 8, !dbg !1600
  %and25 = and i64 %19, 1023, !dbg !1601
  %shl = shl i64 %and25, 10, !dbg !1602
  %add = add i64 65536, %shl, !dbg !1603
  %20 = load i64, ptr %v, align 8, !dbg !1604
  %and26 = and i64 %20, 1023, !dbg !1605
  %add27 = add i64 %add, %and26, !dbg !1606
  store i64 %add27, ptr %u, align 8, !dbg !1607
  %21 = load ptr, ptr %pwcs.addr, align 8, !dbg !1608
  %incdec.ptr28 = getelementptr i16, ptr %21, i32 1, !dbg !1608
  store ptr %incdec.ptr28, ptr %pwcs.addr, align 8, !dbg !1608
  %22 = load i32, ptr %inlen.addr, align 4, !dbg !1609
  %dec29 = add i32 %22, -1, !dbg !1609
  store i32 %dec29, ptr %inlen.addr, align 4, !dbg !1609
  br label %if.end30, !dbg !1610

if.end30:                                         ; preds = %if.end24, %if.then4
  %23 = load i64, ptr %u, align 8, !dbg !1611
  %conv31 = trunc i64 %23 to i32, !dbg !1611
  %24 = load ptr, ptr %op, align 8, !dbg !1612
  %25 = load i32, ptr %maxout.addr, align 4, !dbg !1613
  %call32 = call i32 @utf32_to_utf8(i32 noundef %conv31, ptr noundef %24, i32 noundef %25) #7, !dbg !1614
  store i32 %call32, ptr %size, align 4, !dbg !1615
  %26 = load i32, ptr %size, align 4, !dbg !1616
  %cmp33 = icmp eq i32 %26, -1, !dbg !1618
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !1619

if.then35:                                        ; preds = %if.end30
  br label %if.end36, !dbg !1620

if.else:                                          ; preds = %if.end30
  %27 = load i32, ptr %size, align 4, !dbg !1622
  %28 = load ptr, ptr %op, align 8, !dbg !1624
  %idx.ext = sext i32 %27 to i64, !dbg !1624
  %add.ptr = getelementptr i8, ptr %28, i64 %idx.ext, !dbg !1624
  store ptr %add.ptr, ptr %op, align 8, !dbg !1624
  %29 = load i32, ptr %size, align 4, !dbg !1625
  %30 = load i32, ptr %maxout.addr, align 4, !dbg !1626
  %sub = sub i32 %30, %29, !dbg !1626
  store i32 %sub, ptr %maxout.addr, align 4, !dbg !1626
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then35
  br label %if.end41, !dbg !1627

if.else37:                                        ; preds = %if.end
  %31 = load i64, ptr %u, align 8, !dbg !1628
  %conv38 = trunc i64 %31 to i8, !dbg !1630
  %32 = load ptr, ptr %op, align 8, !dbg !1631
  %incdec.ptr39 = getelementptr i8, ptr %32, i32 1, !dbg !1631
  store ptr %incdec.ptr39, ptr %op, align 8, !dbg !1631
  store i8 %conv38, ptr %32, align 1, !dbg !1632
  %33 = load i32, ptr %maxout.addr, align 4, !dbg !1633
  %dec40 = add i32 %33, -1, !dbg !1633
  store i32 %dec40, ptr %maxout.addr, align 4, !dbg !1633
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.end36
  br label %while.cond, !dbg !1542, !llvm.loop !1578

while.end:                                        ; preds = %if.then14, %if.then, %land.end
  %34 = load ptr, ptr %op, align 8, !dbg !1634
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1635
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i64, !dbg !1636
  %sub.ptr.rhs.cast = ptrtoint ptr %35 to i64, !dbg !1636
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1636
  %conv42 = trunc i64 %sub.ptr.sub to i32, !dbg !1634
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #6, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #6, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6, !dbg !1637
  ret i32 %conv42, !dbg !1638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_utf16(i32 noundef %c, i32 noundef %endian) #3 align 16 !dbg !1639 {
entry:
  %retval = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %endian.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1643, metadata !DIExpression()), !dbg !1645
  store i32 %endian, ptr %endian.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endian.addr, metadata !1644, metadata !DIExpression()), !dbg !1646
  %0 = load i32, ptr %endian.addr, align 4, !dbg !1647
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ], !dbg !1648

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !1649
  %conv = zext i32 %1 to i64, !dbg !1649
  store i64 %conv, ptr %retval, align 8, !dbg !1651
  br label %return, !dbg !1651

sw.bb:                                            ; preds = %entry
  %2 = load i32, ptr %c.addr, align 4, !dbg !1652
  %conv1 = trunc i32 %2 to i16, !dbg !1652
  %conv2 = zext i16 %conv1 to i64, !dbg !1652
  store i64 %conv2, ptr %retval, align 8, !dbg !1653
  br label %return, !dbg !1653

sw.bb3:                                           ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4, !dbg !1654
  %conv4 = trunc i32 %3 to i16, !dbg !1654
  %4 = call i16 @llvm.bswap.i16(i16 %conv4), !dbg !1654
  %conv5 = zext i16 %4 to i64, !dbg !1654
  store i64 %conv5, ptr %retval, align 8, !dbg !1655
  br label %return, !dbg !1655

return:                                           ; preds = %sw.bb3, %sw.bb, %sw.default
  %5 = load i64, ptr %retval, align 8, !dbg !1656
  ret i64 %5, !dbg !1656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__register_nls(ptr noundef %nls, ptr noundef %owner) #0 align 16 !dbg !1657 {
entry:
  %retval = alloca i32, align 4
  %nls.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nls, ptr %nls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nls.addr, metadata !1661, metadata !DIExpression()), !dbg !1665
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1662, metadata !DIExpression()), !dbg !1666
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6, !dbg !1667
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1663, metadata !DIExpression()), !dbg !1668
  store ptr @tables, ptr %tmp, align 8, !dbg !1668
  %0 = load ptr, ptr %nls.addr, align 8, !dbg !1669
  %next = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 7, !dbg !1671
  %1 = load ptr, ptr %next, align 8, !dbg !1671
  %tobool = icmp ne ptr %1, null, !dbg !1669
  br i1 %tobool, label %if.then, label %if.end, !dbg !1672

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !1673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1673

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !1674
  %3 = load ptr, ptr %nls.addr, align 8, !dbg !1675
  %owner1 = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 6, !dbg !1676
  store ptr %2, ptr %owner1, align 8, !dbg !1677
  call void @spin_lock(ptr noundef @nls_lock) #7, !dbg !1678
  br label %while.cond, !dbg !1679

while.cond:                                       ; preds = %if.end4, %if.end
  %4 = load ptr, ptr %tmp, align 8, !dbg !1680
  %5 = load ptr, ptr %4, align 8, !dbg !1681
  %tobool2 = icmp ne ptr %5, null, !dbg !1679
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1679

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %nls.addr, align 8, !dbg !1682
  %7 = load ptr, ptr %tmp, align 8, !dbg !1685
  %8 = load ptr, ptr %7, align 8, !dbg !1686
  %cmp = icmp eq ptr %6, %8, !dbg !1687
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1688

if.then3:                                         ; preds = %while.body
  call void @spin_unlock(ptr noundef @nls_lock) #7, !dbg !1689
  store i32 -16, ptr %retval, align 4, !dbg !1691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1691

if.end4:                                          ; preds = %while.body
  %9 = load ptr, ptr %tmp, align 8, !dbg !1692
  %10 = load ptr, ptr %9, align 8, !dbg !1693
  %next5 = getelementptr inbounds %struct.nls_table, ptr %10, i32 0, i32 7, !dbg !1694
  store ptr %next5, ptr %tmp, align 8, !dbg !1695
  br label %while.cond, !dbg !1679, !llvm.loop !1696

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr @tables, align 8, !dbg !1698
  %12 = load ptr, ptr %nls.addr, align 8, !dbg !1699
  %next6 = getelementptr inbounds %struct.nls_table, ptr %12, i32 0, i32 7, !dbg !1700
  store ptr %11, ptr %next6, align 8, !dbg !1701
  %13 = load ptr, ptr %nls.addr, align 8, !dbg !1702
  store ptr %13, ptr @tables, align 8, !dbg !1703
  call void @spin_unlock(ptr noundef @nls_lock) #7, !dbg !1704
  store i32 0, ptr %retval, align 4, !dbg !1705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1705

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6, !dbg !1706
  %14 = load i32, ptr %retval, align 4, !dbg !1706
  ret i32 %14, !dbg !1706
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !1707 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1713, metadata !DIExpression()), !dbg !1714
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1715
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1715
  call void @_raw_spin_lock(ptr noundef %1) #7, !dbg !1715
  ret void, !dbg !1716
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !1717 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1721
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1721
  call void @_raw_spin_unlock(ptr noundef %1) #7, !dbg !1721
  ret void, !dbg !1722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @unregister_nls(ptr noundef %nls) #0 align 16 !dbg !1723 {
entry:
  %retval = alloca i32, align 4
  %nls.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nls, ptr %nls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nls.addr, metadata !1727, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1728, metadata !DIExpression()), !dbg !1731
  store ptr @tables, ptr %tmp, align 8, !dbg !1731
  call void @spin_lock(ptr noundef @nls_lock) #7, !dbg !1732
  br label %while.cond, !dbg !1733

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %tmp, align 8, !dbg !1734
  %1 = load ptr, ptr %0, align 8, !dbg !1735
  %tobool = icmp ne ptr %1, null, !dbg !1733
  br i1 %tobool, label %while.body, label %while.end, !dbg !1733

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %nls.addr, align 8, !dbg !1736
  %3 = load ptr, ptr %tmp, align 8, !dbg !1739
  %4 = load ptr, ptr %3, align 8, !dbg !1740
  %cmp = icmp eq ptr %2, %4, !dbg !1741
  br i1 %cmp, label %if.then, label %if.end, !dbg !1742

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %nls.addr, align 8, !dbg !1743
  %next = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 7, !dbg !1745
  %6 = load ptr, ptr %next, align 8, !dbg !1745
  %7 = load ptr, ptr %tmp, align 8, !dbg !1746
  store ptr %6, ptr %7, align 8, !dbg !1747
  call void @spin_unlock(ptr noundef @nls_lock) #7, !dbg !1748
  store i32 0, ptr %retval, align 4, !dbg !1749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1749

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %tmp, align 8, !dbg !1750
  %9 = load ptr, ptr %8, align 8, !dbg !1751
  %next1 = getelementptr inbounds %struct.nls_table, ptr %9, i32 0, i32 7, !dbg !1752
  store ptr %next1, ptr %tmp, align 8, !dbg !1753
  br label %while.cond, !dbg !1733, !llvm.loop !1754

while.end:                                        ; preds = %while.cond
  call void @spin_unlock(ptr noundef @nls_lock) #7, !dbg !1756
  store i32 -22, ptr %retval, align 4, !dbg !1757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1757

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6, !dbg !1758
  %10 = load i32, ptr %retval, align 4, !dbg !1758
  ret i32 %10, !dbg !1758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @load_nls(ptr noundef %charset) #0 align 16 !dbg !1759 {
entry:
  %charset.addr = alloca ptr, align 8
  store ptr %charset, ptr %charset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %charset.addr, metadata !1763, metadata !DIExpression()), !dbg !1764
  %0 = load ptr, ptr %charset.addr, align 8, !dbg !1765
  %call = call ptr @find_nls(ptr noundef %0) #7, !dbg !1765
  %tobool = icmp ne ptr %call, null, !dbg !1765
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1765

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1765

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %charset.addr, align 8, !dbg !1765
  %call1 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str, ptr noundef %1) #7, !dbg !1765
  %2 = load ptr, ptr %charset.addr, align 8, !dbg !1765
  %call2 = call ptr @find_nls(ptr noundef %2) #7, !dbg !1765
  br label %cond.end, !dbg !1765

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %call2, %cond.false ], !dbg !1765
  ret ptr %cond, !dbg !1766
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_nls(ptr noundef %charset) #0 align 16 !dbg !1767 {
entry:
  %charset.addr = alloca ptr, align 8
  %nls = alloca ptr, align 8
  store ptr %charset, ptr %charset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %charset.addr, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.lifetime.start.p0(i64 8, ptr %nls) #6, !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %nls, metadata !1770, metadata !DIExpression()), !dbg !1773
  call void @spin_lock(ptr noundef @nls_lock) #7, !dbg !1774
  %0 = load ptr, ptr @tables, align 8, !dbg !1775
  store ptr %0, ptr %nls, align 8, !dbg !1777
  br label %for.cond, !dbg !1778

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %nls, align 8, !dbg !1779
  %tobool = icmp ne ptr %1, null, !dbg !1781
  br i1 %tobool, label %for.body, label %for.end, !dbg !1781

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %nls, align 8, !dbg !1782
  %charset1 = getelementptr inbounds %struct.nls_table, ptr %2, i32 0, i32 0, !dbg !1785
  %3 = load ptr, ptr %charset1, align 8, !dbg !1785
  %4 = load ptr, ptr %charset.addr, align 8, !dbg !1786
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %4) #7, !dbg !1787
  %tobool2 = icmp ne i32 %call, 0, !dbg !1787
  br i1 %tobool2, label %if.end, label %if.then, !dbg !1788

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1789

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %nls, align 8, !dbg !1790
  %alias = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 1, !dbg !1792
  %6 = load ptr, ptr %alias, align 8, !dbg !1792
  %tobool3 = icmp ne ptr %6, null, !dbg !1790
  br i1 %tobool3, label %land.lhs.true, label %if.end8, !dbg !1793

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %nls, align 8, !dbg !1794
  %alias4 = getelementptr inbounds %struct.nls_table, ptr %7, i32 0, i32 1, !dbg !1795
  %8 = load ptr, ptr %alias4, align 8, !dbg !1795
  %9 = load ptr, ptr %charset.addr, align 8, !dbg !1796
  %call5 = call i32 @strcmp(ptr noundef %8, ptr noundef %9) #7, !dbg !1797
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1797
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1798

if.then7:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !1799

if.end8:                                          ; preds = %land.lhs.true, %if.end
  br label %for.inc, !dbg !1800

for.inc:                                          ; preds = %if.end8
  %10 = load ptr, ptr %nls, align 8, !dbg !1801
  %next = getelementptr inbounds %struct.nls_table, ptr %10, i32 0, i32 7, !dbg !1802
  %11 = load ptr, ptr %next, align 8, !dbg !1802
  store ptr %11, ptr %nls, align 8, !dbg !1803
  br label %for.cond, !dbg !1804, !llvm.loop !1805

for.end:                                          ; preds = %if.then7, %if.then, %for.cond
  %12 = load ptr, ptr %nls, align 8, !dbg !1807
  %tobool9 = icmp ne ptr %12, null, !dbg !1807
  br i1 %tobool9, label %land.lhs.true10, label %if.end13, !dbg !1809

land.lhs.true10:                                  ; preds = %for.end
  %13 = load ptr, ptr %nls, align 8, !dbg !1810
  %owner = getelementptr inbounds %struct.nls_table, ptr %13, i32 0, i32 6, !dbg !1811
  %14 = load ptr, ptr %owner, align 8, !dbg !1811
  %call11 = call zeroext i1 @try_module_get(ptr noundef %14) #7, !dbg !1812
  br i1 %call11, label %if.end13, label %if.then12, !dbg !1813

if.then12:                                        ; preds = %land.lhs.true10
  store ptr null, ptr %nls, align 8, !dbg !1814
  br label %if.end13, !dbg !1815

if.end13:                                         ; preds = %if.then12, %land.lhs.true10, %for.end
  call void @spin_unlock(ptr noundef @nls_lock) #7, !dbg !1816
  %15 = load ptr, ptr %nls, align 8, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %nls) #6, !dbg !1818
  ret ptr %15, !dbg !1819
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1820 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unload_nls(ptr noundef %nls) #0 align 16 !dbg !1824 {
entry:
  %nls.addr = alloca ptr, align 8
  store ptr %nls, ptr %nls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nls.addr, metadata !1828, metadata !DIExpression()), !dbg !1829
  %0 = load ptr, ptr %nls.addr, align 8, !dbg !1830
  %tobool = icmp ne ptr %0, null, !dbg !1830
  br i1 %tobool, label %if.then, label %if.end, !dbg !1832

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %nls.addr, align 8, !dbg !1833
  %owner = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 6, !dbg !1834
  %2 = load ptr, ptr %owner, align 8, !dbg !1834
  call void @module_put(ptr noundef %2) #7, !dbg !1835
  br label %if.end, !dbg !1835

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1836
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1837 dso_local void @module_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @load_nls_default() #0 align 16 !dbg !1838 {
entry:
  %retval = alloca ptr, align 8
  %default_nls = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %default_nls) #6, !dbg !1843
  call void @llvm.dbg.declare(metadata ptr %default_nls, metadata !1842, metadata !DIExpression()), !dbg !1844
  %call = call ptr @load_nls(ptr noundef @.str.1) #7, !dbg !1845
  store ptr %call, ptr %default_nls, align 8, !dbg !1846
  %0 = load ptr, ptr %default_nls, align 8, !dbg !1847
  %cmp = icmp ne ptr %0, null, !dbg !1849
  br i1 %cmp, label %if.then, label %if.else, !dbg !1850

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %default_nls, align 8, !dbg !1851
  store ptr %1, ptr %retval, align 8, !dbg !1852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1852

if.else:                                          ; preds = %entry
  store ptr @default_table, ptr %retval, align 8, !dbg !1853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1853

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %default_nls) #6, !dbg !1854
  %2 = load ptr, ptr %retval, align 8, !dbg !1854
  ret ptr %2, !dbg !1854
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1855 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1860 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1861 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1865 dso_local zeroext i1 @try_module_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @uni2char(i16 noundef zeroext %uni, ptr noundef %out, i32 noundef %boundlen) #0 align 16 !dbg !1868 {
entry:
  %retval = alloca i32, align 4
  %uni.addr = alloca i16, align 2
  %out.addr = alloca ptr, align 8
  %boundlen.addr = alloca i32, align 4
  %uni2charset = alloca ptr, align 8
  %cl = alloca i8, align 1
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %uni, ptr %uni.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %uni.addr, metadata !1870, metadata !DIExpression()), !dbg !1876
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1871, metadata !DIExpression()), !dbg !1877
  store i32 %boundlen, ptr %boundlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %boundlen.addr, metadata !1872, metadata !DIExpression()), !dbg !1878
  call void @llvm.lifetime.start.p0(i64 8, ptr %uni2charset) #6, !dbg !1879
  call void @llvm.dbg.declare(metadata ptr %uni2charset, metadata !1873, metadata !DIExpression()), !dbg !1880
  call void @llvm.lifetime.start.p0(i64 1, ptr %cl) #6, !dbg !1881
  call void @llvm.dbg.declare(metadata ptr %cl, metadata !1874, metadata !DIExpression()), !dbg !1882
  %0 = load i16, ptr %uni.addr, align 2, !dbg !1883
  %conv = zext i16 %0 to i32, !dbg !1883
  %and = and i32 %conv, 255, !dbg !1884
  %conv1 = trunc i32 %and to i8, !dbg !1883
  store i8 %conv1, ptr %cl, align 1, !dbg !1882
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #6, !dbg !1885
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !1875, metadata !DIExpression()), !dbg !1886
  %1 = load i16, ptr %uni.addr, align 2, !dbg !1887
  %conv2 = zext i16 %1 to i32, !dbg !1887
  %and3 = and i32 %conv2, 65280, !dbg !1888
  %shr = ashr i32 %and3, 8, !dbg !1889
  %conv4 = trunc i32 %shr to i8, !dbg !1890
  store i8 %conv4, ptr %ch, align 1, !dbg !1886
  %2 = load i32, ptr %boundlen.addr, align 4, !dbg !1891
  %cmp = icmp sle i32 %2, 0, !dbg !1893
  br i1 %cmp, label %if.then, label %if.end, !dbg !1894

if.then:                                          ; preds = %entry
  store i32 -36, ptr %retval, align 4, !dbg !1895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1895

if.end:                                           ; preds = %entry
  %3 = load i8, ptr %ch, align 1, !dbg !1896
  %idxprom = zext i8 %3 to i64, !dbg !1897
  %arrayidx = getelementptr [256 x ptr], ptr @page_uni2charset, i64 0, i64 %idxprom, !dbg !1897
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1897
  store ptr %4, ptr %uni2charset, align 8, !dbg !1898
  %5 = load ptr, ptr %uni2charset, align 8, !dbg !1899
  %tobool = icmp ne ptr %5, null, !dbg !1899
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1901

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %uni2charset, align 8, !dbg !1902
  %7 = load i8, ptr %cl, align 1, !dbg !1903
  %idxprom6 = zext i8 %7 to i64, !dbg !1902
  %arrayidx7 = getelementptr i8, ptr %6, i64 %idxprom6, !dbg !1902
  %8 = load i8, ptr %arrayidx7, align 1, !dbg !1902
  %conv8 = zext i8 %8 to i32, !dbg !1902
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !1902
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !1904

if.then10:                                        ; preds = %land.lhs.true
  %9 = load ptr, ptr %uni2charset, align 8, !dbg !1905
  %10 = load i8, ptr %cl, align 1, !dbg !1906
  %idxprom11 = zext i8 %10 to i64, !dbg !1905
  %arrayidx12 = getelementptr i8, ptr %9, i64 %idxprom11, !dbg !1905
  %11 = load i8, ptr %arrayidx12, align 1, !dbg !1905
  %12 = load ptr, ptr %out.addr, align 8, !dbg !1907
  %arrayidx13 = getelementptr i8, ptr %12, i64 0, !dbg !1907
  store i8 %11, ptr %arrayidx13, align 1, !dbg !1908
  br label %if.end14, !dbg !1907

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1909

if.end14:                                         ; preds = %if.then10
  store i32 1, ptr %retval, align 4, !dbg !1910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1910

cleanup:                                          ; preds = %if.end14, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #6, !dbg !1911
  call void @llvm.lifetime.end.p0(i64 1, ptr %cl) #6, !dbg !1911
  call void @llvm.lifetime.end.p0(i64 8, ptr %uni2charset) #6, !dbg !1911
  %13 = load i32, ptr %retval, align 4, !dbg !1911
  ret i32 %13, !dbg !1911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @char2uni(ptr noundef %rawstring, i32 noundef %boundlen, ptr noundef %uni) #0 align 16 !dbg !1912 {
entry:
  %retval = alloca i32, align 4
  %rawstring.addr = alloca ptr, align 8
  %boundlen.addr = alloca i32, align 4
  %uni.addr = alloca ptr, align 8
  store ptr %rawstring, ptr %rawstring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rawstring.addr, metadata !1914, metadata !DIExpression()), !dbg !1917
  store i32 %boundlen, ptr %boundlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %boundlen.addr, metadata !1915, metadata !DIExpression()), !dbg !1918
  store ptr %uni, ptr %uni.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uni.addr, metadata !1916, metadata !DIExpression()), !dbg !1919
  %0 = load ptr, ptr %rawstring.addr, align 8, !dbg !1920
  %1 = load i8, ptr %0, align 1, !dbg !1921
  %idxprom = zext i8 %1 to i64, !dbg !1922
  %arrayidx = getelementptr [256 x i16], ptr @charset2uni, i64 0, i64 %idxprom, !dbg !1922
  %2 = load i16, ptr %arrayidx, align 2, !dbg !1922
  %3 = load ptr, ptr %uni.addr, align 8, !dbg !1923
  store i16 %2, ptr %3, align 2, !dbg !1924
  %4 = load ptr, ptr %uni.addr, align 8, !dbg !1925
  %5 = load i16, ptr %4, align 2, !dbg !1927
  %conv = zext i16 %5 to i32, !dbg !1927
  %cmp = icmp eq i32 %conv, 0, !dbg !1928
  br i1 %cmp, label %if.then, label %if.end, !dbg !1929

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1930
  br label %return, !dbg !1930

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1931
  br label %return, !dbg !1931

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !1932
  ret i32 %6, !dbg !1932
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!llvm.ident = !{!1181}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "utf8_table", scope: !2, file: !3, line: 36, type: !1164, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/nls/.nls_base.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/nls/nls_base\22 -D KBUILD_BASENAME=\22nls_base\22 -D KBUILD_MODNAME=\22nls_base\22 -D __KBUILD_MODNAME=kmod_nls_base -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/nls/nls_base.ll fs/nls/nls_base.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/nls/nls_base.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b115f4c2a8af5c1113606ed884c6a69b")
!4 = !{!5, !12, !19, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "utf16_endian", file: !6, line: 41, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f76e83aacaae45c8b04af57df30b5af2")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UTF16_HOST_ENDIAN", value: 0)
!10 = !DIEnumerator(name: "UTF16_LITTLE_ENDIAN", value: 1)
!11 = !DIEnumerator(name: "UTF16_BIG_ENDIAN", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !20, line: 26, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!23 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!24 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 10, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "false", value: 0)
!29 = !DIEnumerator(name: "true", value: 1)
!30 = !{!31, !36, !37, !40, !44, !42, !46}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode_t", file: !6, line: 23, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 19, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !45, line: 36, baseType: !42)
!45 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !45, line: 37, baseType: !42)
!47 = !{!48, !50, !52, !54, !56, !58, !64, !69, !71, !73, !75, !77, !83, !0, !85, !1138, !1140, !1145, !1147, !1153, !1156, !1160, !1162}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_utf8_to_utf32195", scope: !2, file: !3, line: 84, type: !36, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_utf32_to_utf8196", scope: !2, file: !3, line: 115, type: !36, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_utf8s_to_utf16s197", scope: !2, file: !3, line: 172, type: !36, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_utf16s_to_utf8s198", scope: !2, file: !3, line: 233, type: !36, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___register_nls199", scope: !2, file: !3, line: 256, type: !36, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 56, elements: !62)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !{!63}
!63 = !DISubrange(count: 7)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 536, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 40, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 5)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_nls200", scope: !2, file: !3, line: 543, type: !36, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unload_nls201", scope: !2, file: !3, line: 544, type: !36, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_load_nls202", scope: !2, file: !3, line: 545, type: !36, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_load_nls_default203", scope: !2, file: !3, line: 546, type: !36, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file204", scope: !2, file: !3, line: 548, type: !79, isLocal: true, isDefinition: true, align: 8)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 240, elements: !81)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!81 = !{!82}
!82 = !DISubrange(count: 30)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license205", scope: !2, file: !3, line: 548, type: !79, isLocal: true, isDefinition: true, align: 8)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "tables", scope: !2, file: !3, line: 21, type: !87, isLocal: true, isDefinition: true)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nls_table", file: !6, line: 25, size: 512, elements: !89)
!89 = !{!90, !92, !93, !99, !106, !107, !108, !1137}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !88, file: !6, line: 26, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !88, file: !6, line: 27, baseType: !91, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "uni2char", scope: !88, file: !6, line: 28, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !40, !98, !97}
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "char2uni", scope: !88, file: !6, line: 29, baseType: !100, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!97, !103, !97, !105}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "charset2lower", scope: !88, file: !6, line: 31, baseType: !103, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "charset2upper", scope: !88, file: !6, line: 32, baseType: !103, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !88, file: !6, line: 33, baseType: !109, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !111)
!111 = !{!112, !113, !120, !124, !794, !820, !821, !822, !823, !827, !830, !831, !832, !885, !886, !887, !888, !889, !890, !891, !892, !895, !899, !917, !935, !936, !937, !938, !947, !970, !971, !974, !977, !978, !979, !980, !981, !982, !983, !988, !989, !1095, !1103, !1104, !1105, !1107, !1111, !1112, !1116, !1117, !1118, !1119, !1121, !1122, !1123, !1130, !1131, !1132, !1136}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !110, file: !13, line: 403, baseType: !12, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !110, file: !13, line: 406, baseType: !114, size: 128, offset: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !115, line: 190, size: 128, elements: !116)
!115 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !115, line: 191, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !115, line: 191, baseType: !118, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !13, line: 409, baseType: !121, size: 448, offset: 192)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 448, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 56)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !110, file: !13, line: 417, baseType: !125, size: 768, offset: 640)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !126)
!126 = !{!127, !777, !778, !779, !782}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !125, file: !13, line: 46, baseType: !128, size: 512)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !129, line: 64, size: 512, elements: !130)
!129 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!130 = !{!131, !132, !133, !135, !216, !648, !762, !772, !773, !774, !775, !776}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !129, line: 65, baseType: !91, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !128, file: !129, line: 66, baseType: !114, size: 128, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !128, file: !129, line: 67, baseType: !134, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !128, file: !129, line: 68, baseType: !136, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !129, line: 168, size: 768, elements: !138)
!138 = !{!139, !140, !175, !176}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !137, file: !129, line: 169, baseType: !114, size: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !137, file: !129, line: 170, baseType: !141, size: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !142, line: 29, baseType: !143)
!142 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !142, line: 17, size: 32, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !142, line: 18, baseType: !146, size: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !142, line: 18, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !146, file: !142, line: 19, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !150, line: 14, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !149, file: !150, line: 15, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !154, line: 44, baseType: !155)
!154 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !154, line: 14, size: 32, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !155, file: !154, line: 15, baseType: !158, size: 32)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !155, file: !154, line: 15, size: 32, elements: !159)
!159 = !{!160, !165, !170}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !158, file: !154, line: 16, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !115, line: 174, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 172, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !162, file: !115, line: 173, baseType: !97, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !154, line: 24, baseType: !166, size: 16)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !154, line: 24, size: 16, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !166, file: !154, line: 25, baseType: !37, size: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !166, file: !154, line: 26, baseType: !37, size: 8, offset: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !154, line: 28, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !154, line: 28, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !171, file: !154, line: 29, baseType: !41, size: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !171, file: !154, line: 30, baseType: !41, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !137, file: !129, line: 171, baseType: !128, size: 512, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !137, file: !129, line: 172, baseType: !177, size: 64, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !129, line: 133, size: 192, elements: !180)
!180 = !{!181, !188, !193}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !179, file: !129, line: 134, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!97, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !129, line: 135, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!91, !186}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !179, file: !129, line: 136, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!97, !186, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !129, line: 125, size: 20736, elements: !200)
!200 = !{!201, !206, !210, !211, !215}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !199, file: !129, line: 126, baseType: !202, size: 192)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 192, elements: !204)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!204 = !{!205}
!205 = !DISubrange(count: 3)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !199, file: !129, line: 127, baseType: !207, size: 4096, offset: 192)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 4096, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !199, file: !129, line: 128, baseType: !97, size: 32, offset: 4288)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !199, file: !129, line: 129, baseType: !212, size: 16384, offset: 4320)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 16384, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !199, file: !129, line: 130, baseType: !97, size: 32, offset: 20704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !128, file: !129, line: 69, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !129, line: 116, size: 384, elements: !220)
!220 = !{!221, !225, !254, !595, !626, !630}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !219, file: !129, line: 117, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !134}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !219, file: !129, line: 118, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !229, line: 254, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!230 = !{!231, !246}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !228, file: !229, line: 255, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !134, !240, !203}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 66, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !237, line: 73, baseType: !238)
!237 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !237, line: 15, baseType: !239)
!239 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !229, line: 30, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !229, line: 31, baseType: !91, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !241, file: !229, line: 32, baseType: !245, size: 16, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !115, line: 24, baseType: !43)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !228, file: !229, line: 256, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!235, !134, !240, !91, !250}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 61, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !237, line: 72, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !237, line: 16, baseType: !253)
!253 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !219, file: !129, line: 119, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !229, line: 84, size: 320, elements: !259)
!259 = !{!260, !261, !265, !591, !593}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !229, line: 85, baseType: !91, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !258, file: !229, line: 86, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!245, !134, !240, !97}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !258, file: !229, line: 88, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!245, !134, !269, !97}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !229, line: 175, size: 512, elements: !271)
!271 = !{!272, !273, !274, !275, !282, !292, !293}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !270, file: !229, line: 176, baseType: !241, size: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !270, file: !229, line: 177, baseType: !250, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !270, file: !229, line: 178, baseType: !36, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !270, file: !229, line: 179, baseType: !276, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !281, line: 32, flags: DIFlagFwdDecl)
!281 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!282 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !270, file: !229, line: 180, baseType: !283, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!235, !286, !134, !269, !203, !289, !250}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !288, line: 537, flags: DIFlagFwdDecl)
!288 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !115, line: 52, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !237, line: 88, baseType: !291)
!291 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !270, file: !229, line: 182, baseType: !283, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !270, file: !229, line: 184, baseType: !294, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!97, !286, !134, !269, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !281, line: 625, size: 1344, elements: !299)
!299 = !{!300, !317, !540, !546, !553, !554, !559, !562, !574, !575, !578, !582, !583, !584, !585, !586, !589}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !281, line: 628, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !281, line: 628, size: 128, elements: !302)
!302 = !{!303, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !281, line: 629, baseType: !304, size: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !281, line: 629, size: 128, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !304, file: !281, line: 631, baseType: !253, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !304, file: !281, line: 632, baseType: !253, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !301, file: !281, line: 635, baseType: !309, size: 128, align: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !115, line: 232, size: 128, align: 64, elements: !310)
!310 = !{!311, !313}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !115, line: 233, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !309, file: !115, line: 234, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !312}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !298, file: !281, line: 639, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !281, line: 733, size: 10240, elements: !320)
!320 = !{!321, !536}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !281, line: 734, baseType: !322, size: 10240)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !281, line: 734, size: 10240, elements: !323)
!323 = !{!324, !328, !342, !346, !347, !348, !349, !350, !351, !359, !360, !361, !370, !371, !380, !381, !382, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !429, !443, !446, !501, !502, !503, !506, !510, !511, !514, !515, !516, !523, !524}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !281, line: 739, baseType: !325, size: 512, align: 512)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !281, line: 739, size: 512, align: 512, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !325, file: !281, line: 747, baseType: !161, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !322, file: !281, line: 750, baseType: !329, size: 128, offset: 512)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !330, line: 218, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!331 = !{!332, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !330, line: 219, baseType: !333, size: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !330, line: 219, size: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !333, file: !330, line: 220, baseType: !141, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !333, file: !330, line: 221, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !330, line: 197, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 197, elements: !339)
!339 = !{}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !329, file: !330, line: 223, baseType: !7, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !329, file: !330, line: 224, baseType: !36, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !322, file: !281, line: 752, baseType: !343, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!253, !286, !253, !253, !253, !253}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !322, file: !281, line: 756, baseType: !253, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !322, file: !281, line: 757, baseType: !253, size: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !322, file: !281, line: 760, baseType: !253, size: 64, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !322, file: !281, line: 761, baseType: !253, size: 64, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !322, file: !281, line: 763, baseType: !253, size: 64, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !322, file: !281, line: 764, baseType: !352, size: 64, offset: 1024)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !288, line: 299, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 299, size: 64, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !354, file: !288, line: 299, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !358, line: 18, baseType: !253)
!358 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!359 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !322, file: !281, line: 773, baseType: !161, size: 32, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !322, file: !281, line: 785, baseType: !161, size: 32, offset: 1120)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !322, file: !281, line: 795, baseType: !362, size: 64, offset: 1152)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !281, line: 726, size: 128, elements: !364)
!364 = !{!365, !369}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !363, file: !281, line: 727, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !368)
!368 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !363, file: !281, line: 728, baseType: !97, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !322, file: !281, line: 801, baseType: !253, size: 64, offset: 1216)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !322, file: !281, line: 804, baseType: !372, size: 64, offset: 1280)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !373, line: 13, baseType: !374)
!373 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !115, line: 181, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 179, size: 64, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !375, file: !115, line: 180, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !33, line: 22, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !35, line: 30, baseType: !291)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !322, file: !281, line: 806, baseType: !97, size: 32, offset: 1344)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !322, file: !281, line: 808, baseType: !141, size: 32, offset: 1376)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !322, file: !281, line: 823, baseType: !383, size: 320, offset: 1408)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !384, line: 48, size: 320, elements: !385)
!384 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!385 = !{!386, !387, !388, !393, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !383, file: !384, line: 49, baseType: !372, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !383, file: !384, line: 55, baseType: !372, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !383, file: !384, line: 57, baseType: !389, size: 32, offset: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !390, line: 15, size: 32, elements: !391)
!390 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !389, file: !390, line: 20, baseType: !161, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !383, file: !384, line: 59, baseType: !394, size: 32, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !150, line: 23, baseType: !149)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !383, file: !384, line: 60, baseType: !114, size: 128, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !322, file: !281, line: 825, baseType: !114, size: 128, offset: 1728)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !322, file: !281, line: 845, baseType: !97, size: 32, offset: 1856)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !322, file: !281, line: 849, baseType: !253, size: 64, offset: 1920)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !322, file: !281, line: 850, baseType: !253, size: 64, offset: 1984)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !322, file: !281, line: 852, baseType: !253, size: 64, offset: 2048)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !322, file: !281, line: 853, baseType: !253, size: 64, offset: 2112)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !322, file: !281, line: 854, baseType: !374, size: 64, offset: 2176)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !322, file: !281, line: 855, baseType: !253, size: 64, offset: 2240)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !322, file: !281, line: 856, baseType: !253, size: 64, offset: 2304)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !322, file: !281, line: 857, baseType: !253, size: 64, offset: 2368)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !322, file: !281, line: 858, baseType: !253, size: 64, offset: 2432)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !322, file: !281, line: 865, baseType: !408, size: 32, offset: 2496)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !409, line: 69, baseType: !410)
!409 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !409, line: 64, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !410, file: !409, line: 65, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !322, file: !281, line: 867, baseType: !141, size: 32, offset: 2528)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !322, file: !281, line: 869, baseType: !253, size: 64, offset: 2560)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !322, file: !281, line: 869, baseType: !253, size: 64, offset: 2624)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !322, file: !281, line: 869, baseType: !253, size: 64, offset: 2688)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !322, file: !281, line: 869, baseType: !253, size: 64, offset: 2752)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !322, file: !281, line: 870, baseType: !253, size: 64, offset: 2816)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !322, file: !281, line: 870, baseType: !253, size: 64, offset: 2880)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !322, file: !281, line: 870, baseType: !253, size: 64, offset: 2944)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !322, file: !281, line: 871, baseType: !253, size: 64, offset: 3008)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !322, file: !281, line: 871, baseType: !253, size: 64, offset: 3072)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !322, file: !281, line: 871, baseType: !253, size: 64, offset: 3136)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !322, file: !281, line: 871, baseType: !253, size: 64, offset: 3200)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !322, file: !281, line: 873, baseType: !426, size: 3328, offset: 3264)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 3328, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 52)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !322, file: !281, line: 875, baseType: !430, size: 1280, offset: 6592)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 1280, elements: !441)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !432, line: 22, size: 320, elements: !433)
!432 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!433 = !{!434, !435, !436, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !432, line: 23, baseType: !394, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !432, line: 24, baseType: !378, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !431, file: !432, line: 26, baseType: !114, size: 128, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !431, file: !432, line: 28, baseType: !438, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !33, line: 20, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !35, line: 26, baseType: !97)
!441 = !{!442}
!442 = !DISubrange(count: 4)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !322, file: !281, line: 877, baseType: !444, size: 64, offset: 7872)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !281, line: 877, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !322, file: !281, line: 880, baseType: !447, size: 1088, offset: 7936)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !448, line: 72, baseType: !449)
!448 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 23, size: 1088, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !458, !459, !467, !468, !495, !496, !497}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !449, file: !448, line: 28, baseType: !366, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !449, file: !448, line: 38, baseType: !374, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !449, file: !448, line: 40, baseType: !253, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !449, file: !448, line: 43, baseType: !383, size: 320, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !449, file: !448, line: 44, baseType: !456, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !448, line: 44, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !448, line: 48, baseType: !253, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !449, file: !448, line: 59, baseType: !460, size: 256, offset: 640)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !461, line: 66, size: 256, elements: !462)
!461 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!462 = !{!463, !464, !465, !466}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !460, file: !461, line: 67, baseType: !372, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !460, file: !461, line: 68, baseType: !394, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !460, file: !461, line: 70, baseType: !389, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !460, file: !461, line: 72, baseType: !114, size: 128, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !449, file: !448, line: 60, baseType: !36, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !449, file: !448, line: 61, baseType: !469, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !472, line: 13, size: 1216, elements: !473)
!472 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!473 = !{!474, !475, !476, !477, !478, !479, !480, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !471, file: !472, line: 14, baseType: !36, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !471, file: !472, line: 15, baseType: !253, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !471, file: !472, line: 17, baseType: !253, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !471, file: !472, line: 17, baseType: !253, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !471, file: !472, line: 18, baseType: !253, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !471, file: !472, line: 18, baseType: !253, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !471, file: !472, line: 19, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !471, file: !472, line: 21, baseType: !239, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !471, file: !472, line: 23, baseType: !239, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !471, file: !472, line: 24, baseType: !239, size: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !471, file: !472, line: 25, baseType: !239, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !471, file: !472, line: 26, baseType: !239, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !471, file: !472, line: 27, baseType: !239, size: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !471, file: !472, line: 28, baseType: !239, size: 64, offset: 832)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !471, file: !472, line: 29, baseType: !239, size: 64, offset: 896)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !471, file: !472, line: 30, baseType: !239, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !471, file: !472, line: 31, baseType: !239, size: 64, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !471, file: !472, line: 32, baseType: !239, size: 64, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !471, file: !472, line: 33, baseType: !239, size: 64, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !449, file: !448, line: 63, baseType: !161, size: 32, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !449, file: !448, line: 69, baseType: !41, size: 16, offset: 1056)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !449, file: !448, line: 70, baseType: !498, size: 16, offset: 1072)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !33, line: 18, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !35, line: 23, baseType: !500)
!500 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !281, line: 882, baseType: !253, size: 64, offset: 9024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !322, file: !281, line: 885, baseType: !141, size: 32, offset: 9088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !322, file: !281, line: 886, baseType: !504, size: 64, offset: 9152)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !281, line: 732, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !322, file: !281, line: 901, baseType: !507, size: 64, offset: 9216)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !509, line: 18, flags: DIFlagFwdDecl)
!509 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !322, file: !281, line: 904, baseType: !286, size: 64, offset: 9280)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !322, file: !281, line: 906, baseType: !512, size: 64, offset: 9344)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !281, line: 906, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !322, file: !281, line: 930, baseType: !161, size: 32, offset: 9408)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !322, file: !281, line: 933, baseType: !161, size: 32, offset: 9440)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !322, file: !281, line: 935, baseType: !517, size: 64, offset: 9472)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !518, line: 103, size: 64, elements: !519)
!518 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !517, file: !518, line: 104, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !518, line: 101, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !322, file: !281, line: 940, baseType: !372, size: 64, offset: 9536)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !322, file: !281, line: 942, baseType: !525, size: 256, offset: 9600)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !526, line: 98, size: 256, elements: !527)
!526 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !525, file: !526, line: 99, baseType: !372, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !525, file: !526, line: 100, baseType: !114, size: 128, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !525, file: !526, line: 101, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !526, line: 21, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !319, file: !281, line: 986, baseType: !537, offset: 10240)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: -1)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !298, file: !281, line: 640, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !288, line: 297, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !288, line: 297, size: 64, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !542, file: !288, line: 297, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !358, line: 19, baseType: !253)
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !281, line: 646, baseType: !547, size: 64, offset: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !281, line: 646, size: 64, elements: !548)
!548 = !{!549, !552}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !547, file: !281, line: 647, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !281, line: 542, baseType: !253)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !547, file: !281, line: 648, baseType: !551, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !298, file: !281, line: 666, baseType: !97, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !298, file: !281, line: 667, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !281, line: 579, size: 320, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !556, file: !281, line: 580, baseType: !383, size: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !298, file: !281, line: 670, baseType: !560, size: 8, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !115, line: 35, baseType: !561)
!561 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !298, file: !281, line: 681, baseType: !563, size: 256, offset: 512)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !298, file: !281, line: 678, size: 256, elements: !564)
!564 = !{!565, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !563, file: !281, line: 679, baseType: !566, size: 192, align: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !567, line: 5, size: 192, align: 64, elements: !568)
!567 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!568 = !{!569, !570, !572}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !566, file: !567, line: 6, baseType: !253, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !566, file: !567, line: 7, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !566, file: !567, line: 8, baseType: !571, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !563, file: !281, line: 680, baseType: !253, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !298, file: !281, line: 689, baseType: !114, size: 128, offset: 768)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !298, file: !281, line: 691, baseType: !576, size: 64, offset: 896)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !281, line: 691, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !298, file: !281, line: 694, baseType: !579, size: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !281, line: 694, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !298, file: !281, line: 697, baseType: !253, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !298, file: !281, line: 699, baseType: !286, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !298, file: !281, line: 700, baseType: !36, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !298, file: !281, line: 711, baseType: !372, size: 64, offset: 1216)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !298, file: !281, line: 717, baseType: !587, size: 64, offset: 1280)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !281, line: 717, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !298, file: !281, line: 722, baseType: !590, offset: 1344)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !281, line: 570, elements: !339)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !258, file: !229, line: 90, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !258, file: !229, line: 91, baseType: !594, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !219, file: !129, line: 120, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !186}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !20, line: 39, size: 384, elements: !602)
!602 = !{!603, !604, !608, !612, !618, !622}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !20, line: 40, baseType: !19, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !601, file: !20, line: 41, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!560}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !601, file: !20, line: 42, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!36}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !601, file: !20, line: 43, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!481, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !20, line: 19, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !601, file: !20, line: 44, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!481}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !601, file: !20, line: 45, baseType: !623, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !36}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !219, file: !129, line: 121, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!481, !186}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !219, file: !129, line: 122, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !186, !634, !641}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !509, line: 23, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 21, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !636, file: !509, line: 22, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !115, line: 37, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !237, line: 49, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !509, line: 28, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 26, size: 32, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !643, file: !509, line: 27, baseType: !646, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !115, line: 38, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !237, line: 50, baseType: !7)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !128, file: !129, line: 70, baseType: !649, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !651, line: 190, size: 1152, elements: !652)
!651 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !754, !755, !756, !757, !758, !761}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !650, file: !651, line: 191, baseType: !161, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !650, file: !651, line: 192, baseType: !161, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !650, file: !651, line: 202, baseType: !649, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !650, file: !651, line: 203, baseType: !91, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !650, file: !651, line: 205, baseType: !566, size: 192, align: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !650, file: !651, line: 207, baseType: !481, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !650, file: !651, line: 208, baseType: !7, size: 32, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !651, line: 209, baseType: !661, size: 256, offset: 512)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !651, line: 209, size: 256, elements: !662)
!662 = !{!663, !675, !679}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !661, file: !651, line: 210, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !651, line: 153, size: 256, elements: !665)
!665 = !{!666, !667, !671, !674}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !664, file: !651, line: 154, baseType: !253, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !664, file: !651, line: 156, baseType: !668, size: 64, offset: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !567, line: 12, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !668, file: !567, line: 13, baseType: !571, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !664, file: !651, line: 162, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !651, line: 162, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !664, file: !651, line: 167, baseType: !253, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !661, file: !651, line: 211, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !651, line: 170, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !676, file: !651, line: 171, baseType: !649, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !661, file: !651, line: 212, baseType: !680, size: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !651, line: 174, size: 256, elements: !681)
!681 = !{!682, !749, !752, !753}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !680, file: !651, line: 175, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !651, line: 271, size: 768, elements: !686)
!686 = !{!687, !710, !714, !718, !723, !727, !731, !735, !736, !737, !738, !745}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !685, file: !651, line: 276, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!97, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !651, line: 251, size: 1216, elements: !693)
!693 = !{!694, !695, !696, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !692, file: !651, line: 253, baseType: !649, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !692, file: !651, line: 254, baseType: !286, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !692, file: !651, line: 255, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !699, line: 66, flags: DIFlagFwdDecl)
!699 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!700 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !692, file: !651, line: 256, baseType: !36, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !692, file: !651, line: 259, baseType: !460, size: 256, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !692, file: !651, line: 260, baseType: !460, size: 256, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !692, file: !651, line: 261, baseType: !97, size: 32, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !692, file: !651, line: 262, baseType: !114, size: 128, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !692, file: !651, line: 263, baseType: !203, size: 64, offset: 960)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !692, file: !651, line: 265, baseType: !250, size: 64, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !692, file: !651, line: 266, baseType: !560, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !692, file: !651, line: 267, baseType: !560, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !692, file: !651, line: 268, baseType: !579, size: 64, offset: 1152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !685, file: !651, line: 277, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !691}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !685, file: !651, line: 290, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!97, !697, !36}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !685, file: !651, line: 292, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!36, !697, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !685, file: !651, line: 293, baseType: !724, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!36, !697, !36, !722}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !685, file: !651, line: 294, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !697, !36}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !685, file: !651, line: 296, baseType: !732, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!235, !691, !203, !250, !289}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !685, file: !651, line: 306, baseType: !250, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !685, file: !651, line: 313, baseType: !560, size: 8, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !685, file: !651, line: 314, baseType: !732, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !685, file: !651, line: 317, baseType: !739, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!742, !691, !743}
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !45, line: 59, baseType: !7)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !651, line: 31, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !685, file: !651, line: 320, baseType: !746, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!97, !691, !297}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !680, file: !651, line: 176, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !651, line: 35, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !680, file: !651, line: 177, baseType: !289, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !680, file: !651, line: 178, baseType: !649, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !650, file: !651, line: 215, baseType: !36, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !650, file: !651, line: 221, baseType: !366, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !651, line: 223, baseType: !43, size: 16, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !650, file: !651, line: 224, baseType: !245, size: 16, offset: 912)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !650, file: !651, line: 225, baseType: !759, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !651, line: 36, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !650, file: !651, line: 227, baseType: !309, size: 128, align: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !128, file: !129, line: 71, baseType: !763, size: 32, offset: 448)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !764, line: 19, size: 32, elements: !765)
!764 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !763, file: !764, line: 20, baseType: !767, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !768, line: 113, baseType: !769)
!768 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !768, line: 111, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !769, file: !768, line: 112, baseType: !161, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !128, file: !129, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !128, file: !129, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !128, file: !129, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !128, file: !129, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !128, file: !129, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !125, file: !13, line: 47, baseType: !109, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !125, file: !13, line: 48, baseType: !134, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !125, file: !13, line: 49, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !125, file: !13, line: 50, baseType: !783, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !785, line: 26, size: 256, elements: !786)
!785 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !784, file: !785, line: 27, baseType: !7, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !784, file: !785, line: 28, baseType: !789, size: 192, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !790, line: 43, size: 192, elements: !791)
!790 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !790, line: 44, baseType: !394, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !789, file: !790, line: 45, baseType: !114, size: 128, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !110, file: !13, line: 418, baseType: !795, size: 64, offset: 1408)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !797)
!797 = !{!798, !799, !804, !808, !812, !816}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !796, file: !13, line: 54, baseType: !241, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !796, file: !13, line: 55, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!235, !795, !803, !203}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !796, file: !13, line: 57, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!235, !795, !803, !91, !250}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !796, file: !13, line: 59, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !109, !91}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !796, file: !13, line: 60, baseType: !813, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!97, !109}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !796, file: !13, line: 61, baseType: !817, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !109}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !110, file: !13, line: 419, baseType: !91, size: 64, offset: 1472)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !110, file: !13, line: 420, baseType: !91, size: 64, offset: 1536)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !110, file: !13, line: 421, baseType: !134, size: 64, offset: 1600)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !110, file: !13, line: 424, baseType: !824, size: 64, offset: 1664)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !110, file: !13, line: 425, baseType: !828, size: 64, offset: 1728)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !110, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !110, file: !13, line: 435, baseType: !460, size: 256, offset: 1856)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !110, file: !13, line: 437, baseType: !833, size: 64, offset: 2112)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !835, line: 69, size: 320, elements: !836)
!835 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!836 = !{!837, !838, !839, !856, !858, !862, !863}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !834, file: !835, line: 70, baseType: !91, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !834, file: !835, line: 71, baseType: !109, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !834, file: !835, line: 72, baseType: !840, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !835, line: 47, size: 256, elements: !843)
!843 = !{!844, !845, !851, !855}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !835, line: 49, baseType: !7, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !842, file: !835, line: 51, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!97, !91, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !842, file: !835, line: 53, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!97, !203, !849}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !842, file: !835, line: 55, baseType: !623, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !834, file: !835, line: 73, baseType: !857, size: 16, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !834, file: !835, line: 74, baseType: !859, size: 8, offset: 208)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !33, line: 16, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !35, line: 20, baseType: !861)
!861 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !835, line: 75, baseType: !37, size: 8, offset: 216)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !835, line: 76, baseType: !864, size: 64, offset: 256)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !835, line: 76, size: 64, elements: !865)
!865 = !{!866, !867, !874}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !864, file: !835, line: 77, baseType: !36, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !864, file: !835, line: 78, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !835, line: 86, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !870, file: !835, line: 87, baseType: !7, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !870, file: !835, line: 88, baseType: !203, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !864, file: !835, line: 79, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !835, line: 92, size: 256, elements: !878)
!878 = !{!879, !880, !881, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !877, file: !835, line: 94, baseType: !7, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !877, file: !835, line: 95, baseType: !7, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !877, file: !835, line: 96, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !877, file: !835, line: 97, baseType: !840, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !877, file: !835, line: 98, baseType: !36, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !110, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !110, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !110, file: !13, line: 442, baseType: !824, size: 64, offset: 2240)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !110, file: !13, line: 443, baseType: !828, size: 64, offset: 2304)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !110, file: !13, line: 444, baseType: !560, size: 8, offset: 2368)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !110, file: !13, line: 451, baseType: !560, size: 8, offset: 2376)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !110, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !110, file: !13, line: 455, baseType: !893, size: 64, offset: 2432)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !110, file: !13, line: 458, baseType: !896, size: 64, offset: 2496)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!97}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !110, file: !13, line: 460, baseType: !900, size: 4032, align: 512, offset: 2560)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 4032, elements: !62)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !901, file: !13, line: 363, baseType: !36, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !901, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !901, file: !13, line: 367, baseType: !906, size: 448, offset: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !906, file: !13, line: 320, baseType: !109, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !906, file: !13, line: 321, baseType: !910, size: 384, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !911, line: 40, size: 384, elements: !912)
!911 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !910, file: !911, line: 41, baseType: !914, size: 384, align: 64)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 384, align: 64, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 2)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !110, file: !13, line: 463, baseType: !918, size: 192, offset: 6592)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !919, line: 8, size: 192, elements: !920)
!919 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!920 = !{!921, !922, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !918, file: !919, line: 10, baseType: !7, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !918, file: !919, line: 11, baseType: !923, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !918, file: !919, line: 12, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !927, line: 59, size: 48, elements: !928)
!927 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!928 = !{!929, !930, !931, !932, !933, !934}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !926, file: !927, line: 60, baseType: !498, size: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !926, file: !927, line: 61, baseType: !498, size: 16, offset: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !926, file: !927, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !926, file: !927, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !926, file: !927, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !926, file: !927, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !110, file: !13, line: 465, baseType: !253, size: 64, offset: 6784)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !110, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !110, file: !13, line: 470, baseType: !114, size: 128, offset: 6912)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !110, file: !13, line: 471, baseType: !939, size: 64, offset: 7040)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !941, line: 33, size: 96, elements: !942)
!941 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!942 = !{!943, !944, !945, !946}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !940, file: !941, line: 37, baseType: !97, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !940, file: !941, line: 43, baseType: !97, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !940, file: !941, line: 45, baseType: !43, size: 16, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !941, line: 47, baseType: !43, size: 16, offset: 80)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !110, file: !13, line: 476, baseType: !948, size: 64, offset: 7104)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !950)
!950 = !{!951, !967, !968, !969}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !949, file: !13, line: 379, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !954, line: 204, baseType: !955)
!954 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !954, line: 197, size: 192, elements: !956)
!956 = !{!957, !959, !960, !961, !963, !965}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !955, file: !954, line: 198, baseType: !958, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !954, line: 21, baseType: !34)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !955, file: !954, line: 199, baseType: !39, size: 8, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !955, file: !954, line: 200, baseType: !39, size: 8, offset: 40)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !955, file: !954, line: 201, baseType: !962, size: 16, offset: 48)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !954, line: 17, baseType: !42)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !955, file: !954, line: 202, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !954, line: 16, baseType: !367)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !955, file: !954, line: 203, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !954, line: 22, baseType: !367)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !949, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !949, file: !13, line: 381, baseType: !203, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !949, file: !13, line: 382, baseType: !203, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !110, file: !13, line: 477, baseType: !949, size: 256, offset: 7168)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !110, file: !13, line: 480, baseType: !972, size: 64, offset: 7424)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !110, file: !13, line: 483, baseType: !975, size: 64, offset: 7488)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !110, file: !13, line: 488, baseType: !203, size: 64, offset: 7552)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !110, file: !13, line: 492, baseType: !36, size: 64, offset: 7616)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !110, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !110, file: !13, line: 495, baseType: !36, size: 64, offset: 7744)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !110, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !110, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !110, file: !13, line: 500, baseType: !984, size: 64, offset: 7872)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !986, line: 45, baseType: !987)
!986 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !110, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !110, file: !13, line: 504, baseType: !990, size: 64, offset: 8000)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !993, line: 96, size: 192, elements: !994)
!993 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!994 = !{!995, !996, !1056, !1059}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !992, file: !993, line: 97, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !992, file: !993, line: 98, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !993, line: 24, size: 3072, elements: !999)
!999 = !{!1000, !1002, !1003, !1004, !1005, !1019, !1020, !1021, !1022, !1040, !1041, !1042, !1053, !1054, !1055}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !998, file: !993, line: 26, baseType: !1001, size: 128)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 128, elements: !915)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !998, file: !993, line: 27, baseType: !1001, size: 128, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !998, file: !993, line: 28, baseType: !97, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !998, file: !993, line: 31, baseType: !141, size: 32, align: 512, offset: 512)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !998, file: !993, line: 32, baseType: !1006, size: 960, offset: 576)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1007, line: 206, size: 960, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1008 = !{!1009, !1010, !1013, !1015, !1016, !1018}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1006, file: !1007, line: 207, baseType: !312, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1006, file: !1007, line: 208, baseType: !1011, size: 256, offset: 64)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 256, elements: !441)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1006, file: !1007, line: 209, baseType: !1014, size: 256, offset: 320)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !441)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1006, file: !1007, line: 213, baseType: !239, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1006, file: !1007, line: 215, baseType: !1017, size: 256, offset: 640)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !441)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !1007, line: 216, baseType: !37, size: 8, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !998, file: !993, line: 33, baseType: !253, size: 64, offset: 1536)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !998, file: !993, line: 34, baseType: !253, size: 64, offset: 1600)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !998, file: !993, line: 35, baseType: !560, size: 8, offset: 1664)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !998, file: !993, line: 36, baseType: !1023, size: 320, offset: 1728)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1024, line: 11, size: 320, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1025 = !{!1026, !1033, !1034, !1039}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1023, file: !1024, line: 16, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !115, line: 198, size: 128, elements: !1028)
!1028 = !{!1029, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1027, file: !115, line: 199, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1027, file: !115, line: 199, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1023, file: !1024, line: 17, baseType: !253, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1023, file: !1024, line: 18, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !1024, line: 19, baseType: !32, size: 32, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !998, file: !993, line: 37, baseType: !525, size: 256, offset: 2048)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !998, file: !993, line: 38, baseType: !309, size: 128, align: 64, offset: 2304)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !998, file: !993, line: 39, baseType: !1043, size: 64, offset: 2432)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !993, line: 49, size: 768, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1044, file: !993, line: 50, baseType: !141, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1044, file: !993, line: 51, baseType: !1014, size: 256, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1044, file: !993, line: 53, baseType: !1014, size: 256, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1044, file: !993, line: 54, baseType: !253, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1044, file: !993, line: 55, baseType: !1043, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1044, file: !993, line: 56, baseType: !97, size: 32, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1044, file: !993, line: 57, baseType: !97, size: 32, offset: 736)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !998, file: !993, line: 40, baseType: !253, size: 64, offset: 2496)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !998, file: !993, line: 42, baseType: !97, size: 32, offset: 2560)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !998, file: !993, line: 43, baseType: !991, size: 64, offset: 2624)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !992, file: !993, line: 99, baseType: !1057, offset: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1058, line: 211, elements: !339)
!1058 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !992, file: !993, line: 100, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !993, line: 63, size: 3008, elements: !1062)
!1062 = !{!1063, !1064, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1094}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !993, line: 64, baseType: !1043, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1061, file: !993, line: 65, baseType: !1065, size: 192, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 192, elements: !204)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1061, file: !993, line: 67, baseType: !97, size: 32, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1061, file: !993, line: 68, baseType: !460, size: 256, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1061, file: !993, line: 69, baseType: !141, size: 32, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1061, file: !993, line: 70, baseType: !460, size: 256, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1061, file: !993, line: 71, baseType: !253, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1061, file: !993, line: 72, baseType: !253, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1061, file: !993, line: 73, baseType: !253, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1061, file: !993, line: 74, baseType: !253, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1061, file: !993, line: 75, baseType: !253, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1061, file: !993, line: 76, baseType: !253, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1061, file: !993, line: 77, baseType: !253, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1061, file: !993, line: 78, baseType: !253, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1061, file: !993, line: 79, baseType: !560, size: 8, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1061, file: !993, line: 80, baseType: !253, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1061, file: !993, line: 81, baseType: !460, size: 256, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1061, file: !993, line: 82, baseType: !784, size: 256, offset: 1792)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1061, file: !993, line: 84, baseType: !161, size: 32, offset: 2048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1061, file: !993, line: 87, baseType: !253, size: 64, offset: 2112)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1061, file: !993, line: 88, baseType: !253, size: 64, offset: 2176)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1061, file: !993, line: 89, baseType: !1086, size: 704, offset: 2240)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !526, line: 111, size: 704, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1086, file: !526, line: 112, baseType: !525, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1086, file: !526, line: 113, baseType: !1023, size: 320, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1086, file: !526, line: 116, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !526, line: 18, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1086, file: !526, line: 117, baseType: !97, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1061, file: !993, line: 90, baseType: !991, size: 64, offset: 2944)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !110, file: !13, line: 515, baseType: !1096, size: 64, offset: 8064)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1098, line: 117, size: 128, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1097, file: !1098, line: 118, baseType: !439, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1097, file: !1098, line: 119, baseType: !439, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1097, file: !1098, line: 120, baseType: !239, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !110, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !110, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !110, file: !13, line: 520, baseType: !1106, size: 64, offset: 8192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !110, file: !13, line: 523, baseType: !1108, size: 64, offset: 8256)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !110, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !110, file: !13, line: 525, baseType: !1113, size: 64, offset: 8384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !110, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !110, file: !13, line: 533, baseType: !36, size: 64, offset: 8512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !110, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !110, file: !13, line: 535, baseType: !1120, size: 64, offset: 8640)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !110, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !110, file: !13, line: 539, baseType: !97, size: 32, offset: 8736)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !110, file: !13, line: 540, baseType: !1124, size: 64, offset: 8768)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1126, line: 32, size: 64, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1125, file: !1126, line: 33, baseType: !439, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1125, file: !1126, line: 34, baseType: !439, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !110, file: !13, line: 563, baseType: !114, size: 128, offset: 8832)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !110, file: !13, line: 565, baseType: !114, size: 128, offset: 8960)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !110, file: !13, line: 568, baseType: !1133, size: 64, offset: 9088)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !110, file: !13, line: 570, baseType: !161, size: 32, offset: 9152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !6, line: 34, baseType: !87, size: 64, offset: 448)
!1138 = !DIGlobalVariableExpression(var: !1139, expr: !DIExpression())
!1139 = distinct !DIGlobalVariable(name: "nls_lock", scope: !2, file: !3, line: 22, type: !141, isLocal: true, isDefinition: true)
!1140 = !DIGlobalVariableExpression(var: !1141, expr: !DIExpression())
!1141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !1142, isLocal: true, isDefinition: true)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 8)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(name: "default_table", scope: !2, file: !3, line: 523, type: !88, isLocal: true, isDefinition: true)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(name: "page_uni2charset", scope: !2, file: !3, line: 421, type: !1149, isLocal: true, isDefinition: true)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 16384, elements: !1151)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1151 = !{!1152}
!1152 = !DISubrange(count: 256)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression())
!1154 = distinct !DIGlobalVariable(name: "page00", scope: !2, file: !3, line: 385, type: !1155, isLocal: true, isDefinition: true)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !1151)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(name: "charset2uni", scope: !2, file: !3, line: 302, type: !1158, isLocal: true, isDefinition: true)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 4096, elements: !1151)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(name: "charset2lower", scope: !2, file: !3, line: 425, type: !1155, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(name: "charset2upper", scope: !2, file: !3, line: 461, type: !1155, isLocal: true, isDefinition: true)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 1792, elements: !62)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utf8_table", file: !3, line: 28, size: 256, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cmask", scope: !1166, file: !3, line: 29, baseType: !97, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cval", scope: !1166, file: !3, line: 30, baseType: !97, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !1166, file: !3, line: 31, baseType: !97, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lmask", scope: !1166, file: !3, line: 32, baseType: !239, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lval", scope: !1166, file: !3, line: 33, baseType: !239, size: 64, offset: 192)
!1173 = !{i32 7, !"Dwarf Version", i32 5}
!1174 = !{i32 2, !"Debug Info Version", i32 3}
!1175 = !{i32 1, !"wchar_size", i32 2}
!1176 = !{i32 8, !"cf-protection-branch", i32 1}
!1177 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1178 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1179 = !{i32 1, !"Code Model", i32 2}
!1180 = !{i32 1, !"override-stack-alignment", i32 8}
!1181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1182 = distinct !DISubprogram(name: "utf8_to_utf32", scope: !3, file: !3, line: 55, type: !1183, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1188)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!97, !1185, !97, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1189 = !DILocalVariable(name: "s", arg: 1, scope: !1182, file: !3, line: 55, type: !1185)
!1190 = !DILocalVariable(name: "inlen", arg: 2, scope: !1182, file: !3, line: 55, type: !97)
!1191 = !DILocalVariable(name: "pu", arg: 3, scope: !1182, file: !3, line: 55, type: !1187)
!1192 = !DILocalVariable(name: "l", scope: !1182, file: !3, line: 57, type: !253)
!1193 = !DILocalVariable(name: "c0", scope: !1182, file: !3, line: 58, type: !97)
!1194 = !DILocalVariable(name: "c", scope: !1182, file: !3, line: 58, type: !97)
!1195 = !DILocalVariable(name: "nc", scope: !1182, file: !3, line: 58, type: !97)
!1196 = !DILocalVariable(name: "t", scope: !1182, file: !3, line: 59, type: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1198 = !DILocation(line: 55, column: 29, scope: !1182)
!1199 = !DILocation(line: 55, column: 36, scope: !1182)
!1200 = !DILocation(line: 55, column: 54, scope: !1182)
!1201 = !DILocation(line: 57, column: 2, scope: !1182)
!1202 = !DILocation(line: 57, column: 16, scope: !1182)
!1203 = !DILocation(line: 58, column: 2, scope: !1182)
!1204 = !DILocation(line: 58, column: 6, scope: !1182)
!1205 = !DILocation(line: 58, column: 10, scope: !1182)
!1206 = !DILocation(line: 58, column: 13, scope: !1182)
!1207 = !DILocation(line: 59, column: 2, scope: !1182)
!1208 = !DILocation(line: 59, column: 27, scope: !1182)
!1209 = !DILocation(line: 61, column: 5, scope: !1182)
!1210 = !DILocation(line: 62, column: 8, scope: !1182)
!1211 = !DILocation(line: 62, column: 7, scope: !1182)
!1212 = !DILocation(line: 62, column: 5, scope: !1182)
!1213 = !DILocation(line: 63, column: 6, scope: !1182)
!1214 = !DILocation(line: 63, column: 4, scope: !1182)
!1215 = !DILocation(line: 64, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 64, column: 2)
!1217 = !DILocation(line: 64, column: 7, scope: !1216)
!1218 = !DILocation(line: 64, column: 23, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 64, column: 2)
!1220 = !DILocation(line: 64, column: 26, scope: !1219)
!1221 = !DILocation(line: 64, column: 2, scope: !1216)
!1222 = !DILocation(line: 65, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 64, column: 38)
!1224 = !DILocation(line: 66, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 66, column: 7)
!1226 = !DILocation(line: 66, column: 13, scope: !1225)
!1227 = !DILocation(line: 66, column: 16, scope: !1225)
!1228 = !DILocation(line: 66, column: 11, scope: !1225)
!1229 = !DILocation(line: 66, column: 26, scope: !1225)
!1230 = !DILocation(line: 66, column: 29, scope: !1225)
!1231 = !DILocation(line: 66, column: 23, scope: !1225)
!1232 = !DILocation(line: 66, column: 7, scope: !1223)
!1233 = !DILocation(line: 67, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 66, column: 35)
!1235 = !DILocation(line: 67, column: 12, scope: !1234)
!1236 = !DILocation(line: 67, column: 6, scope: !1234)
!1237 = !DILocation(line: 68, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 68, column: 8)
!1239 = !DILocation(line: 68, column: 12, scope: !1238)
!1240 = !DILocation(line: 68, column: 15, scope: !1238)
!1241 = !DILocation(line: 68, column: 10, scope: !1238)
!1242 = !DILocation(line: 68, column: 20, scope: !1238)
!1243 = !DILocation(line: 68, column: 23, scope: !1238)
!1244 = !DILocation(line: 68, column: 25, scope: !1238)
!1245 = !DILocation(line: 68, column: 39, scope: !1238)
!1246 = !DILocation(line: 69, column: 7, scope: !1238)
!1247 = !DILocation(line: 69, column: 9, scope: !1238)
!1248 = !DILocation(line: 69, column: 27, scope: !1238)
!1249 = !DILocation(line: 68, column: 8, scope: !1234)
!1250 = !DILocation(line: 70, column: 5, scope: !1238)
!1251 = !DILocation(line: 71, column: 22, scope: !1234)
!1252 = !DILocation(line: 71, column: 10, scope: !1234)
!1253 = !DILocation(line: 71, column: 5, scope: !1234)
!1254 = !DILocation(line: 71, column: 8, scope: !1234)
!1255 = !DILocation(line: 72, column: 11, scope: !1234)
!1256 = !DILocation(line: 72, column: 4, scope: !1234)
!1257 = !DILocation(line: 74, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 74, column: 7)
!1259 = !DILocation(line: 74, column: 16, scope: !1258)
!1260 = !DILocation(line: 74, column: 13, scope: !1258)
!1261 = !DILocation(line: 74, column: 7, scope: !1223)
!1262 = !DILocation(line: 75, column: 4, scope: !1258)
!1263 = !DILocation(line: 76, column: 4, scope: !1223)
!1264 = !DILocation(line: 77, column: 9, scope: !1223)
!1265 = !DILocation(line: 77, column: 8, scope: !1223)
!1266 = !DILocation(line: 77, column: 11, scope: !1223)
!1267 = !DILocation(line: 77, column: 19, scope: !1223)
!1268 = !DILocation(line: 77, column: 5, scope: !1223)
!1269 = !DILocation(line: 78, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 78, column: 7)
!1271 = !DILocation(line: 78, column: 9, scope: !1270)
!1272 = !DILocation(line: 78, column: 7, scope: !1223)
!1273 = !DILocation(line: 79, column: 4, scope: !1270)
!1274 = !DILocation(line: 80, column: 8, scope: !1223)
!1275 = !DILocation(line: 80, column: 10, scope: !1223)
!1276 = !DILocation(line: 80, column: 18, scope: !1223)
!1277 = !DILocation(line: 80, column: 16, scope: !1223)
!1278 = !DILocation(line: 80, column: 5, scope: !1223)
!1279 = !DILocation(line: 81, column: 2, scope: !1223)
!1280 = !DILocation(line: 64, column: 34, scope: !1219)
!1281 = !DILocation(line: 64, column: 2, scope: !1219)
!1282 = distinct !{!1282, !1221, !1283, !1284, !1285}
!1283 = !DILocation(line: 81, column: 2, scope: !1216)
!1284 = !{!"llvm.loop.mustprogress"}
!1285 = !{!"llvm.loop.unroll.disable"}
!1286 = !DILocation(line: 82, column: 2, scope: !1182)
!1287 = !DILocation(line: 83, column: 1, scope: !1182)
!1288 = distinct !DISubprogram(name: "utf32_to_utf8", scope: !3, file: !3, line: 86, type: !1289, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!97, !31, !1291, !97}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1293 = !DILocalVariable(name: "u", arg: 1, scope: !1288, file: !3, line: 86, type: !31)
!1294 = !DILocalVariable(name: "s", arg: 2, scope: !1288, file: !3, line: 86, type: !1291)
!1295 = !DILocalVariable(name: "maxout", arg: 3, scope: !1288, file: !3, line: 86, type: !97)
!1296 = !DILocalVariable(name: "l", scope: !1288, file: !3, line: 88, type: !253)
!1297 = !DILocalVariable(name: "c", scope: !1288, file: !3, line: 89, type: !97)
!1298 = !DILocalVariable(name: "nc", scope: !1288, file: !3, line: 89, type: !97)
!1299 = !DILocalVariable(name: "t", scope: !1288, file: !3, line: 90, type: !1197)
!1300 = !DILocation(line: 86, column: 29, scope: !1288)
!1301 = !DILocation(line: 86, column: 36, scope: !1288)
!1302 = !DILocation(line: 86, column: 43, scope: !1288)
!1303 = !DILocation(line: 88, column: 2, scope: !1288)
!1304 = !DILocation(line: 88, column: 16, scope: !1288)
!1305 = !DILocation(line: 89, column: 2, scope: !1288)
!1306 = !DILocation(line: 89, column: 6, scope: !1288)
!1307 = !DILocation(line: 89, column: 9, scope: !1288)
!1308 = !DILocation(line: 90, column: 2, scope: !1288)
!1309 = !DILocation(line: 90, column: 27, scope: !1288)
!1310 = !DILocation(line: 92, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 92, column: 6)
!1312 = !DILocation(line: 92, column: 6, scope: !1288)
!1313 = !DILocation(line: 93, column: 3, scope: !1311)
!1314 = !DILocation(line: 95, column: 6, scope: !1288)
!1315 = !DILocation(line: 95, column: 4, scope: !1288)
!1316 = !DILocation(line: 96, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 96, column: 6)
!1318 = !DILocation(line: 96, column: 8, scope: !1317)
!1319 = !DILocation(line: 96, column: 22, scope: !1317)
!1320 = !DILocation(line: 96, column: 26, scope: !1317)
!1321 = !DILocation(line: 96, column: 28, scope: !1317)
!1322 = !DILocation(line: 96, column: 46, scope: !1317)
!1323 = !DILocation(line: 96, column: 6, scope: !1288)
!1324 = !DILocation(line: 97, column: 3, scope: !1317)
!1325 = !DILocation(line: 99, column: 5, scope: !1288)
!1326 = !DILocation(line: 100, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 100, column: 2)
!1328 = !DILocation(line: 100, column: 7, scope: !1327)
!1329 = !DILocation(line: 100, column: 23, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 100, column: 2)
!1331 = !DILocation(line: 100, column: 26, scope: !1330)
!1332 = !DILocation(line: 100, column: 32, scope: !1330)
!1333 = !DILocation(line: 100, column: 35, scope: !1330)
!1334 = !DILocation(line: 0, scope: !1330)
!1335 = !DILocation(line: 100, column: 2, scope: !1327)
!1336 = !DILocation(line: 101, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 100, column: 58)
!1338 = !DILocation(line: 102, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 102, column: 7)
!1340 = !DILocation(line: 102, column: 12, scope: !1339)
!1341 = !DILocation(line: 102, column: 15, scope: !1339)
!1342 = !DILocation(line: 102, column: 9, scope: !1339)
!1343 = !DILocation(line: 102, column: 7, scope: !1337)
!1344 = !DILocation(line: 103, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 102, column: 22)
!1346 = !DILocation(line: 103, column: 11, scope: !1345)
!1347 = !DILocation(line: 103, column: 6, scope: !1345)
!1348 = !DILocation(line: 104, column: 15, scope: !1345)
!1349 = !DILocation(line: 104, column: 18, scope: !1345)
!1350 = !DILocation(line: 104, column: 26, scope: !1345)
!1351 = !DILocation(line: 104, column: 31, scope: !1345)
!1352 = !DILocation(line: 104, column: 28, scope: !1345)
!1353 = !DILocation(line: 104, column: 23, scope: !1345)
!1354 = !DILocation(line: 104, column: 9, scope: !1345)
!1355 = !DILocation(line: 104, column: 5, scope: !1345)
!1356 = !DILocation(line: 104, column: 7, scope: !1345)
!1357 = !DILocation(line: 105, column: 4, scope: !1345)
!1358 = !DILocation(line: 105, column: 11, scope: !1345)
!1359 = !DILocation(line: 105, column: 13, scope: !1345)
!1360 = !DILocation(line: 106, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 105, column: 18)
!1362 = !DILocation(line: 107, column: 6, scope: !1361)
!1363 = !DILocation(line: 108, column: 25, scope: !1361)
!1364 = !DILocation(line: 108, column: 30, scope: !1361)
!1365 = !DILocation(line: 108, column: 27, scope: !1361)
!1366 = !DILocation(line: 108, column: 33, scope: !1361)
!1367 = !DILocation(line: 108, column: 21, scope: !1361)
!1368 = !DILocation(line: 108, column: 10, scope: !1361)
!1369 = !DILocation(line: 108, column: 6, scope: !1361)
!1370 = !DILocation(line: 108, column: 8, scope: !1361)
!1371 = distinct !{!1371, !1357, !1372, !1284, !1285}
!1372 = !DILocation(line: 109, column: 4, scope: !1345)
!1373 = !DILocation(line: 110, column: 11, scope: !1345)
!1374 = !DILocation(line: 110, column: 4, scope: !1345)
!1375 = !DILocation(line: 112, column: 2, scope: !1337)
!1376 = !DILocation(line: 100, column: 44, scope: !1330)
!1377 = !DILocation(line: 100, column: 54, scope: !1330)
!1378 = !DILocation(line: 100, column: 2, scope: !1330)
!1379 = distinct !{!1379, !1335, !1380, !1284, !1285}
!1380 = !DILocation(line: 112, column: 2, scope: !1327)
!1381 = !DILocation(line: 113, column: 2, scope: !1288)
!1382 = !DILocation(line: 114, column: 1, scope: !1288)
!1383 = distinct !DISubprogram(name: "utf8s_to_utf16s", scope: !3, file: !3, line: 132, type: !1384, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!97, !1185, !97, !5, !105, !97}
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1394, !1395}
!1387 = !DILocalVariable(name: "s", arg: 1, scope: !1383, file: !3, line: 132, type: !1185)
!1388 = !DILocalVariable(name: "inlen", arg: 2, scope: !1383, file: !3, line: 132, type: !97)
!1389 = !DILocalVariable(name: "endian", arg: 3, scope: !1383, file: !3, line: 132, type: !5)
!1390 = !DILocalVariable(name: "pwcs", arg: 4, scope: !1383, file: !3, line: 133, type: !105)
!1391 = !DILocalVariable(name: "maxout", arg: 5, scope: !1383, file: !3, line: 133, type: !97)
!1392 = !DILocalVariable(name: "op", scope: !1383, file: !3, line: 135, type: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1394 = !DILocalVariable(name: "size", scope: !1383, file: !3, line: 136, type: !97)
!1395 = !DILocalVariable(name: "u", scope: !1383, file: !3, line: 137, type: !31)
!1396 = !DILocation(line: 132, column: 31, scope: !1383)
!1397 = !DILocation(line: 132, column: 38, scope: !1383)
!1398 = !DILocation(line: 132, column: 63, scope: !1383)
!1399 = !DILocation(line: 133, column: 12, scope: !1383)
!1400 = !DILocation(line: 133, column: 22, scope: !1383)
!1401 = !DILocation(line: 135, column: 2, scope: !1383)
!1402 = !DILocation(line: 135, column: 7, scope: !1383)
!1403 = !DILocation(line: 136, column: 2, scope: !1383)
!1404 = !DILocation(line: 136, column: 6, scope: !1383)
!1405 = !DILocation(line: 137, column: 2, scope: !1383)
!1406 = !DILocation(line: 137, column: 12, scope: !1383)
!1407 = !DILocation(line: 139, column: 7, scope: !1383)
!1408 = !DILocation(line: 139, column: 5, scope: !1383)
!1409 = !DILocation(line: 140, column: 2, scope: !1383)
!1410 = !DILocation(line: 140, column: 9, scope: !1383)
!1411 = !DILocation(line: 140, column: 15, scope: !1383)
!1412 = !DILocation(line: 140, column: 19, scope: !1383)
!1413 = !DILocation(line: 140, column: 22, scope: !1383)
!1414 = !DILocation(line: 140, column: 29, scope: !1383)
!1415 = !DILocation(line: 140, column: 33, scope: !1383)
!1416 = !DILocation(line: 140, column: 37, scope: !1383)
!1417 = !DILocation(line: 140, column: 36, scope: !1383)
!1418 = !DILocation(line: 0, scope: !1383)
!1419 = !DILocation(line: 141, column: 8, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 141, column: 7)
!1421 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 140, column: 40)
!1422 = !DILocation(line: 141, column: 7, scope: !1420)
!1423 = !DILocation(line: 141, column: 10, scope: !1420)
!1424 = !DILocation(line: 141, column: 7, scope: !1421)
!1425 = !DILocation(line: 142, column: 25, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 141, column: 18)
!1427 = !DILocation(line: 142, column: 28, scope: !1426)
!1428 = !DILocation(line: 142, column: 11, scope: !1426)
!1429 = !DILocation(line: 142, column: 9, scope: !1426)
!1430 = !DILocation(line: 143, column: 8, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 143, column: 8)
!1432 = !DILocation(line: 143, column: 13, scope: !1431)
!1433 = !DILocation(line: 143, column: 8, scope: !1426)
!1434 = !DILocation(line: 144, column: 5, scope: !1431)
!1435 = !DILocation(line: 145, column: 9, scope: !1426)
!1436 = !DILocation(line: 145, column: 6, scope: !1426)
!1437 = !DILocation(line: 146, column: 13, scope: !1426)
!1438 = !DILocation(line: 146, column: 10, scope: !1426)
!1439 = !DILocation(line: 148, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 148, column: 8)
!1441 = !DILocation(line: 148, column: 10, scope: !1440)
!1442 = !DILocation(line: 148, column: 8, scope: !1426)
!1443 = !DILocation(line: 149, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 149, column: 9)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 148, column: 25)
!1446 = !DILocation(line: 149, column: 16, scope: !1444)
!1447 = !DILocation(line: 149, column: 9, scope: !1445)
!1448 = !DILocation(line: 150, column: 6, scope: !1444)
!1449 = !DILocation(line: 151, column: 7, scope: !1445)
!1450 = !DILocation(line: 152, column: 17, scope: !1445)
!1451 = !DILocation(line: 153, column: 9, scope: !1445)
!1452 = !DILocation(line: 153, column: 11, scope: !1445)
!1453 = !DILocation(line: 153, column: 18, scope: !1445)
!1454 = !DILocation(line: 152, column: 36, scope: !1445)
!1455 = !DILocation(line: 154, column: 7, scope: !1445)
!1456 = !DILocation(line: 152, column: 5, scope: !1445)
!1457 = !DILocation(line: 155, column: 17, scope: !1445)
!1458 = !DILocation(line: 157, column: 8, scope: !1445)
!1459 = !DILocation(line: 157, column: 10, scope: !1445)
!1460 = !DILocation(line: 156, column: 21, scope: !1445)
!1461 = !DILocation(line: 158, column: 7, scope: !1445)
!1462 = !DILocation(line: 155, column: 5, scope: !1445)
!1463 = !DILocation(line: 159, column: 12, scope: !1445)
!1464 = !DILocation(line: 160, column: 4, scope: !1445)
!1465 = !DILocation(line: 161, column: 17, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 160, column: 11)
!1467 = !DILocation(line: 161, column: 21, scope: !1466)
!1468 = !DILocation(line: 161, column: 24, scope: !1466)
!1469 = !DILocation(line: 161, column: 5, scope: !1466)
!1470 = !DILocation(line: 162, column: 11, scope: !1466)
!1471 = !DILocation(line: 164, column: 3, scope: !1426)
!1472 = !DILocation(line: 165, column: 16, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 164, column: 10)
!1474 = !DILocation(line: 165, column: 22, scope: !1473)
!1475 = !DILocation(line: 165, column: 20, scope: !1473)
!1476 = !DILocation(line: 165, column: 26, scope: !1473)
!1477 = !DILocation(line: 165, column: 4, scope: !1473)
!1478 = !DILocation(line: 166, column: 9, scope: !1473)
!1479 = !DILocation(line: 167, column: 10, scope: !1473)
!1480 = distinct !{!1480, !1409, !1481, !1284, !1285}
!1481 = !DILocation(line: 169, column: 2, scope: !1383)
!1482 = !DILocation(line: 170, column: 9, scope: !1383)
!1483 = !DILocation(line: 170, column: 14, scope: !1383)
!1484 = !DILocation(line: 170, column: 12, scope: !1383)
!1485 = !DILocation(line: 170, column: 2, scope: !1383)
!1486 = !DILocation(line: 171, column: 1, scope: !1383)
!1487 = distinct !DISubprogram(name: "put_utf16", scope: !3, file: !3, line: 117, type: !1488, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !105, !7, !5}
!1490 = !{!1491, !1492, !1493}
!1491 = !DILocalVariable(name: "s", arg: 1, scope: !1487, file: !3, line: 117, type: !105)
!1492 = !DILocalVariable(name: "c", arg: 2, scope: !1487, file: !3, line: 117, type: !7)
!1493 = !DILocalVariable(name: "endian", arg: 3, scope: !1487, file: !3, line: 117, type: !5)
!1494 = !DILocation(line: 117, column: 39, scope: !1487)
!1495 = !DILocation(line: 117, column: 51, scope: !1487)
!1496 = !DILocation(line: 117, column: 72, scope: !1487)
!1497 = !DILocation(line: 119, column: 10, scope: !1487)
!1498 = !DILocation(line: 119, column: 2, scope: !1487)
!1499 = !DILocation(line: 121, column: 18, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 119, column: 18)
!1501 = !DILocation(line: 121, column: 8, scope: !1500)
!1502 = !DILocation(line: 121, column: 4, scope: !1500)
!1503 = !DILocation(line: 121, column: 6, scope: !1500)
!1504 = !DILocation(line: 122, column: 3, scope: !1500)
!1505 = !DILocation(line: 124, column: 8, scope: !1500)
!1506 = !DILocation(line: 124, column: 4, scope: !1500)
!1507 = !DILocation(line: 124, column: 6, scope: !1500)
!1508 = !DILocation(line: 125, column: 3, scope: !1500)
!1509 = !DILocation(line: 127, column: 8, scope: !1500)
!1510 = !DILocation(line: 127, column: 4, scope: !1500)
!1511 = !DILocation(line: 127, column: 6, scope: !1500)
!1512 = !DILocation(line: 128, column: 3, scope: !1500)
!1513 = !DILocation(line: 130, column: 1, scope: !1487)
!1514 = distinct !DISubprogram(name: "utf16s_to_utf8s", scope: !3, file: !3, line: 186, type: !1515, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1518)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!97, !1517, !97, !5, !1291, !97}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1519 = !DILocalVariable(name: "pwcs", arg: 1, scope: !1514, file: !3, line: 186, type: !1517)
!1520 = !DILocalVariable(name: "inlen", arg: 2, scope: !1514, file: !3, line: 186, type: !97)
!1521 = !DILocalVariable(name: "endian", arg: 3, scope: !1514, file: !3, line: 186, type: !5)
!1522 = !DILocalVariable(name: "s", arg: 4, scope: !1514, file: !3, line: 187, type: !1291)
!1523 = !DILocalVariable(name: "maxout", arg: 5, scope: !1514, file: !3, line: 187, type: !97)
!1524 = !DILocalVariable(name: "op", scope: !1514, file: !3, line: 189, type: !1291)
!1525 = !DILocalVariable(name: "size", scope: !1514, file: !3, line: 190, type: !97)
!1526 = !DILocalVariable(name: "u", scope: !1514, file: !3, line: 191, type: !253)
!1527 = !DILocalVariable(name: "v", scope: !1514, file: !3, line: 191, type: !253)
!1528 = !DILocation(line: 186, column: 36, scope: !1514)
!1529 = !DILocation(line: 186, column: 46, scope: !1514)
!1530 = !DILocation(line: 186, column: 71, scope: !1514)
!1531 = !DILocation(line: 187, column: 7, scope: !1514)
!1532 = !DILocation(line: 187, column: 14, scope: !1514)
!1533 = !DILocation(line: 189, column: 2, scope: !1514)
!1534 = !DILocation(line: 189, column: 6, scope: !1514)
!1535 = !DILocation(line: 190, column: 2, scope: !1514)
!1536 = !DILocation(line: 190, column: 6, scope: !1514)
!1537 = !DILocation(line: 191, column: 2, scope: !1514)
!1538 = !DILocation(line: 191, column: 16, scope: !1514)
!1539 = !DILocation(line: 191, column: 19, scope: !1514)
!1540 = !DILocation(line: 193, column: 7, scope: !1514)
!1541 = !DILocation(line: 193, column: 5, scope: !1514)
!1542 = !DILocation(line: 194, column: 2, scope: !1514)
!1543 = !DILocation(line: 194, column: 9, scope: !1514)
!1544 = !DILocation(line: 194, column: 15, scope: !1514)
!1545 = !DILocation(line: 194, column: 19, scope: !1514)
!1546 = !DILocation(line: 194, column: 22, scope: !1514)
!1547 = !DILocation(line: 194, column: 29, scope: !1514)
!1548 = !DILocation(line: 0, scope: !1514)
!1549 = !DILocation(line: 195, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 194, column: 34)
!1551 = !DILocation(line: 195, column: 17, scope: !1550)
!1552 = !DILocation(line: 195, column: 24, scope: !1550)
!1553 = !DILocation(line: 195, column: 7, scope: !1550)
!1554 = !DILocation(line: 195, column: 5, scope: !1550)
!1555 = !DILocation(line: 196, column: 8, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 196, column: 7)
!1557 = !DILocation(line: 196, column: 7, scope: !1550)
!1558 = !DILocation(line: 197, column: 4, scope: !1556)
!1559 = !DILocation(line: 198, column: 7, scope: !1550)
!1560 = !DILocation(line: 199, column: 8, scope: !1550)
!1561 = !DILocation(line: 200, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 200, column: 7)
!1563 = !DILocation(line: 200, column: 9, scope: !1562)
!1564 = !DILocation(line: 200, column: 7, scope: !1550)
!1565 = !DILocation(line: 201, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 201, column: 8)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 200, column: 17)
!1568 = !DILocation(line: 201, column: 11, scope: !1566)
!1569 = !DILocation(line: 201, column: 29, scope: !1566)
!1570 = !DILocation(line: 201, column: 8, scope: !1567)
!1571 = !DILocation(line: 202, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 202, column: 9)
!1573 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 201, column: 48)
!1574 = !DILocation(line: 202, column: 11, scope: !1572)
!1575 = !DILocation(line: 202, column: 9, scope: !1573)
!1576 = !DILocation(line: 204, column: 6, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 202, column: 28)
!1578 = distinct !{!1578, !1542, !1579, !1284, !1285}
!1579 = !DILocation(line: 230, column: 2, scope: !1514)
!1580 = !DILocation(line: 206, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 206, column: 9)
!1582 = !DILocation(line: 206, column: 15, scope: !1581)
!1583 = !DILocation(line: 206, column: 9, scope: !1573)
!1584 = !DILocation(line: 207, column: 6, scope: !1581)
!1585 = !DILocation(line: 208, column: 20, scope: !1573)
!1586 = !DILocation(line: 208, column: 19, scope: !1573)
!1587 = !DILocation(line: 208, column: 26, scope: !1573)
!1588 = !DILocation(line: 208, column: 9, scope: !1573)
!1589 = !DILocation(line: 208, column: 7, scope: !1573)
!1590 = !DILocation(line: 209, column: 10, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 209, column: 9)
!1592 = !DILocation(line: 209, column: 12, scope: !1591)
!1593 = !DILocation(line: 209, column: 30, scope: !1591)
!1594 = !DILocation(line: 209, column: 48, scope: !1591)
!1595 = !DILocation(line: 210, column: 9, scope: !1591)
!1596 = !DILocation(line: 210, column: 11, scope: !1591)
!1597 = !DILocation(line: 209, column: 9, scope: !1573)
!1598 = !DILocation(line: 212, column: 6, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 210, column: 29)
!1600 = !DILocation(line: 214, column: 24, scope: !1573)
!1601 = !DILocation(line: 214, column: 26, scope: !1573)
!1602 = !DILocation(line: 214, column: 44, scope: !1573)
!1603 = !DILocation(line: 214, column: 20, scope: !1573)
!1604 = !DILocation(line: 215, column: 10, scope: !1573)
!1605 = !DILocation(line: 215, column: 12, scope: !1573)
!1606 = !DILocation(line: 215, column: 7, scope: !1573)
!1607 = !DILocation(line: 214, column: 7, scope: !1573)
!1608 = !DILocation(line: 216, column: 9, scope: !1573)
!1609 = !DILocation(line: 217, column: 10, scope: !1573)
!1610 = !DILocation(line: 218, column: 4, scope: !1573)
!1611 = !DILocation(line: 219, column: 25, scope: !1567)
!1612 = !DILocation(line: 219, column: 28, scope: !1567)
!1613 = !DILocation(line: 219, column: 32, scope: !1567)
!1614 = !DILocation(line: 219, column: 11, scope: !1567)
!1615 = !DILocation(line: 219, column: 9, scope: !1567)
!1616 = !DILocation(line: 220, column: 8, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 220, column: 8)
!1618 = !DILocation(line: 220, column: 13, scope: !1617)
!1619 = !DILocation(line: 220, column: 8, scope: !1567)
!1620 = !DILocation(line: 222, column: 4, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 220, column: 20)
!1622 = !DILocation(line: 223, column: 11, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 222, column: 11)
!1624 = !DILocation(line: 223, column: 8, scope: !1623)
!1625 = !DILocation(line: 224, column: 15, scope: !1623)
!1626 = !DILocation(line: 224, column: 12, scope: !1623)
!1627 = !DILocation(line: 226, column: 3, scope: !1567)
!1628 = !DILocation(line: 227, column: 17, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 226, column: 10)
!1630 = !DILocation(line: 227, column: 12, scope: !1629)
!1631 = !DILocation(line: 227, column: 7, scope: !1629)
!1632 = !DILocation(line: 227, column: 10, scope: !1629)
!1633 = !DILocation(line: 228, column: 10, scope: !1629)
!1634 = !DILocation(line: 231, column: 9, scope: !1514)
!1635 = !DILocation(line: 231, column: 14, scope: !1514)
!1636 = !DILocation(line: 231, column: 12, scope: !1514)
!1637 = !DILocation(line: 232, column: 1, scope: !1514)
!1638 = !DILocation(line: 231, column: 2, scope: !1514)
!1639 = distinct !DISubprogram(name: "get_utf16", scope: !3, file: !3, line: 174, type: !1640, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!253, !7, !5}
!1642 = !{!1643, !1644}
!1643 = !DILocalVariable(name: "c", arg: 1, scope: !1639, file: !3, line: 174, type: !7)
!1644 = !DILocalVariable(name: "endian", arg: 2, scope: !1639, file: !3, line: 174, type: !5)
!1645 = !DILocation(line: 174, column: 48, scope: !1639)
!1646 = !DILocation(line: 174, column: 69, scope: !1639)
!1647 = !DILocation(line: 176, column: 10, scope: !1639)
!1648 = !DILocation(line: 176, column: 2, scope: !1639)
!1649 = !DILocation(line: 178, column: 10, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 176, column: 18)
!1651 = !DILocation(line: 178, column: 3, scope: !1650)
!1652 = !DILocation(line: 180, column: 10, scope: !1650)
!1653 = !DILocation(line: 180, column: 3, scope: !1650)
!1654 = !DILocation(line: 182, column: 10, scope: !1650)
!1655 = !DILocation(line: 182, column: 3, scope: !1650)
!1656 = !DILocation(line: 184, column: 1, scope: !1639)
!1657 = distinct !DISubprogram(name: "__register_nls", scope: !3, file: !3, line: 235, type: !1658, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!97, !87, !109}
!1660 = !{!1661, !1662, !1663}
!1661 = !DILocalVariable(name: "nls", arg: 1, scope: !1657, file: !3, line: 235, type: !87)
!1662 = !DILocalVariable(name: "owner", arg: 2, scope: !1657, file: !3, line: 235, type: !109)
!1663 = !DILocalVariable(name: "tmp", scope: !1657, file: !3, line: 237, type: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1665 = !DILocation(line: 235, column: 38, scope: !1657)
!1666 = !DILocation(line: 235, column: 58, scope: !1657)
!1667 = !DILocation(line: 237, column: 2, scope: !1657)
!1668 = !DILocation(line: 237, column: 22, scope: !1657)
!1669 = !DILocation(line: 239, column: 6, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 239, column: 6)
!1671 = !DILocation(line: 239, column: 11, scope: !1670)
!1672 = !DILocation(line: 239, column: 6, scope: !1657)
!1673 = !DILocation(line: 240, column: 3, scope: !1670)
!1674 = !DILocation(line: 242, column: 15, scope: !1657)
!1675 = !DILocation(line: 242, column: 2, scope: !1657)
!1676 = !DILocation(line: 242, column: 7, scope: !1657)
!1677 = !DILocation(line: 242, column: 13, scope: !1657)
!1678 = !DILocation(line: 243, column: 2, scope: !1657)
!1679 = !DILocation(line: 244, column: 2, scope: !1657)
!1680 = !DILocation(line: 244, column: 10, scope: !1657)
!1681 = !DILocation(line: 244, column: 9, scope: !1657)
!1682 = !DILocation(line: 245, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 245, column: 7)
!1684 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 244, column: 15)
!1685 = !DILocation(line: 245, column: 15, scope: !1683)
!1686 = !DILocation(line: 245, column: 14, scope: !1683)
!1687 = !DILocation(line: 245, column: 11, scope: !1683)
!1688 = !DILocation(line: 245, column: 7, scope: !1684)
!1689 = !DILocation(line: 246, column: 4, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 245, column: 20)
!1691 = !DILocation(line: 247, column: 4, scope: !1690)
!1692 = !DILocation(line: 249, column: 12, scope: !1684)
!1693 = !DILocation(line: 249, column: 11, scope: !1684)
!1694 = !DILocation(line: 249, column: 18, scope: !1684)
!1695 = !DILocation(line: 249, column: 7, scope: !1684)
!1696 = distinct !{!1696, !1679, !1697, !1284, !1285}
!1697 = !DILocation(line: 250, column: 2, scope: !1657)
!1698 = !DILocation(line: 251, column: 14, scope: !1657)
!1699 = !DILocation(line: 251, column: 2, scope: !1657)
!1700 = !DILocation(line: 251, column: 7, scope: !1657)
!1701 = !DILocation(line: 251, column: 12, scope: !1657)
!1702 = !DILocation(line: 252, column: 11, scope: !1657)
!1703 = !DILocation(line: 252, column: 9, scope: !1657)
!1704 = !DILocation(line: 253, column: 2, scope: !1657)
!1705 = !DILocation(line: 254, column: 2, scope: !1657)
!1706 = !DILocation(line: 255, column: 1, scope: !1657)
!1707 = distinct !DISubprogram(name: "spin_lock", scope: !1708, file: !1708, line: 349, type: !1709, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1712)
!1708 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1711}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!1712 = !{!1713}
!1713 = !DILocalVariable(name: "lock", arg: 1, scope: !1707, file: !1708, line: 349, type: !1711)
!1714 = !DILocation(line: 349, column: 51, scope: !1707)
!1715 = !DILocation(line: 351, column: 2, scope: !1707)
!1716 = !DILocation(line: 352, column: 1, scope: !1707)
!1717 = distinct !DISubprogram(name: "spin_unlock", scope: !1708, file: !1708, line: 389, type: !1709, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1718)
!1718 = !{!1719}
!1719 = !DILocalVariable(name: "lock", arg: 1, scope: !1717, file: !1708, line: 389, type: !1711)
!1720 = !DILocation(line: 389, column: 53, scope: !1717)
!1721 = !DILocation(line: 391, column: 2, scope: !1717)
!1722 = !DILocation(line: 392, column: 1, scope: !1717)
!1723 = distinct !DISubprogram(name: "unregister_nls", scope: !3, file: !3, line: 258, type: !1724, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!97, !87}
!1726 = !{!1727, !1728}
!1727 = !DILocalVariable(name: "nls", arg: 1, scope: !1723, file: !3, line: 258, type: !87)
!1728 = !DILocalVariable(name: "tmp", scope: !1723, file: !3, line: 260, type: !1664)
!1729 = !DILocation(line: 258, column: 39, scope: !1723)
!1730 = !DILocation(line: 260, column: 2, scope: !1723)
!1731 = !DILocation(line: 260, column: 22, scope: !1723)
!1732 = !DILocation(line: 262, column: 2, scope: !1723)
!1733 = !DILocation(line: 263, column: 2, scope: !1723)
!1734 = !DILocation(line: 263, column: 10, scope: !1723)
!1735 = !DILocation(line: 263, column: 9, scope: !1723)
!1736 = !DILocation(line: 264, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 264, column: 7)
!1738 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 263, column: 15)
!1739 = !DILocation(line: 264, column: 15, scope: !1737)
!1740 = !DILocation(line: 264, column: 14, scope: !1737)
!1741 = !DILocation(line: 264, column: 11, scope: !1737)
!1742 = !DILocation(line: 264, column: 7, scope: !1738)
!1743 = !DILocation(line: 265, column: 11, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 264, column: 20)
!1745 = !DILocation(line: 265, column: 16, scope: !1744)
!1746 = !DILocation(line: 265, column: 5, scope: !1744)
!1747 = !DILocation(line: 265, column: 9, scope: !1744)
!1748 = !DILocation(line: 266, column: 4, scope: !1744)
!1749 = !DILocation(line: 267, column: 4, scope: !1744)
!1750 = !DILocation(line: 269, column: 12, scope: !1738)
!1751 = !DILocation(line: 269, column: 11, scope: !1738)
!1752 = !DILocation(line: 269, column: 18, scope: !1738)
!1753 = !DILocation(line: 269, column: 7, scope: !1738)
!1754 = distinct !{!1754, !1733, !1755, !1284, !1285}
!1755 = !DILocation(line: 270, column: 2, scope: !1723)
!1756 = !DILocation(line: 271, column: 2, scope: !1723)
!1757 = !DILocation(line: 272, column: 2, scope: !1723)
!1758 = !DILocation(line: 273, column: 1, scope: !1723)
!1759 = distinct !DISubprogram(name: "load_nls", scope: !3, file: !3, line: 291, type: !1760, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!87, !91}
!1762 = !{!1763}
!1763 = !DILocalVariable(name: "charset", arg: 1, scope: !1759, file: !3, line: 291, type: !91)
!1764 = !DILocation(line: 291, column: 40, scope: !1759)
!1765 = !DILocation(line: 293, column: 9, scope: !1759)
!1766 = !DILocation(line: 293, column: 2, scope: !1759)
!1767 = distinct !DISubprogram(name: "find_nls", scope: !3, file: !3, line: 275, type: !1760, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1768 = !{!1769, !1770}
!1769 = !DILocalVariable(name: "charset", arg: 1, scope: !1767, file: !3, line: 275, type: !91)
!1770 = !DILocalVariable(name: "nls", scope: !1767, file: !3, line: 277, type: !87)
!1771 = !DILocation(line: 275, column: 47, scope: !1767)
!1772 = !DILocation(line: 277, column: 2, scope: !1767)
!1773 = !DILocation(line: 277, column: 20, scope: !1767)
!1774 = !DILocation(line: 278, column: 2, scope: !1767)
!1775 = !DILocation(line: 279, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 279, column: 2)
!1777 = !DILocation(line: 279, column: 11, scope: !1776)
!1778 = !DILocation(line: 279, column: 7, scope: !1776)
!1779 = !DILocation(line: 279, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 279, column: 2)
!1781 = !DILocation(line: 279, column: 2, scope: !1776)
!1782 = !DILocation(line: 280, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 280, column: 7)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 279, column: 43)
!1785 = !DILocation(line: 280, column: 20, scope: !1783)
!1786 = !DILocation(line: 280, column: 29, scope: !1783)
!1787 = !DILocation(line: 280, column: 8, scope: !1783)
!1788 = !DILocation(line: 280, column: 7, scope: !1784)
!1789 = !DILocation(line: 281, column: 4, scope: !1783)
!1790 = !DILocation(line: 282, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 282, column: 7)
!1792 = !DILocation(line: 282, column: 12, scope: !1791)
!1793 = !DILocation(line: 282, column: 18, scope: !1791)
!1794 = !DILocation(line: 282, column: 29, scope: !1791)
!1795 = !DILocation(line: 282, column: 34, scope: !1791)
!1796 = !DILocation(line: 282, column: 41, scope: !1791)
!1797 = !DILocation(line: 282, column: 22, scope: !1791)
!1798 = !DILocation(line: 282, column: 7, scope: !1784)
!1799 = !DILocation(line: 283, column: 4, scope: !1791)
!1800 = !DILocation(line: 284, column: 2, scope: !1784)
!1801 = !DILocation(line: 279, column: 32, scope: !1780)
!1802 = !DILocation(line: 279, column: 37, scope: !1780)
!1803 = !DILocation(line: 279, column: 30, scope: !1780)
!1804 = !DILocation(line: 279, column: 2, scope: !1780)
!1805 = distinct !{!1805, !1781, !1806, !1284, !1285}
!1806 = !DILocation(line: 284, column: 2, scope: !1776)
!1807 = !DILocation(line: 285, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 285, column: 6)
!1809 = !DILocation(line: 285, column: 10, scope: !1808)
!1810 = !DILocation(line: 285, column: 29, scope: !1808)
!1811 = !DILocation(line: 285, column: 34, scope: !1808)
!1812 = !DILocation(line: 285, column: 14, scope: !1808)
!1813 = !DILocation(line: 285, column: 6, scope: !1767)
!1814 = !DILocation(line: 286, column: 7, scope: !1808)
!1815 = !DILocation(line: 286, column: 3, scope: !1808)
!1816 = !DILocation(line: 287, column: 2, scope: !1767)
!1817 = !DILocation(line: 288, column: 9, scope: !1767)
!1818 = !DILocation(line: 289, column: 1, scope: !1767)
!1819 = !DILocation(line: 288, column: 2, scope: !1767)
!1820 = !DISubprogram(name: "__request_module", scope: !1821, file: !1821, line: 24, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1821 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!97, !560, !91, null}
!1824 = distinct !DISubprogram(name: "unload_nls", scope: !3, file: !3, line: 296, type: !1825, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !87}
!1827 = !{!1828}
!1828 = !DILocalVariable(name: "nls", arg: 1, scope: !1824, file: !3, line: 296, type: !87)
!1829 = !DILocation(line: 296, column: 35, scope: !1824)
!1830 = !DILocation(line: 298, column: 6, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 298, column: 6)
!1832 = !DILocation(line: 298, column: 6, scope: !1824)
!1833 = !DILocation(line: 299, column: 14, scope: !1831)
!1834 = !DILocation(line: 299, column: 19, scope: !1831)
!1835 = !DILocation(line: 299, column: 3, scope: !1831)
!1836 = !DILocation(line: 300, column: 1, scope: !1824)
!1837 = !DISubprogram(name: "module_put", scope: !13, file: !13, line: 706, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1838 = distinct !DISubprogram(name: "load_nls_default", scope: !3, file: !3, line: 532, type: !1839, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!87}
!1841 = !{!1842}
!1842 = !DILocalVariable(name: "default_nls", scope: !1838, file: !3, line: 534, type: !87)
!1843 = !DILocation(line: 534, column: 2, scope: !1838)
!1844 = !DILocation(line: 534, column: 20, scope: !1838)
!1845 = !DILocation(line: 536, column: 16, scope: !1838)
!1846 = !DILocation(line: 536, column: 14, scope: !1838)
!1847 = !DILocation(line: 537, column: 6, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 537, column: 6)
!1849 = !DILocation(line: 537, column: 18, scope: !1848)
!1850 = !DILocation(line: 537, column: 6, scope: !1838)
!1851 = !DILocation(line: 538, column: 10, scope: !1848)
!1852 = !DILocation(line: 538, column: 3, scope: !1848)
!1853 = !DILocation(line: 540, column: 3, scope: !1848)
!1854 = !DILocation(line: 541, column: 1, scope: !1838)
!1855 = !DISubprogram(name: "_raw_spin_lock", scope: !1856, file: !1856, line: 22, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1856 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1860 = !DISubprogram(name: "_raw_spin_unlock", scope: !1856, file: !1856, line: 39, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1861 = !DISubprogram(name: "strcmp", scope: !1862, file: !1862, line: 88, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1862 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!97, !91, !91}
!1865 = !DISubprogram(name: "try_module_get", scope: !13, file: !13, line: 696, type: !1866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!560, !109}
!1868 = distinct !DISubprogram(name: "uni2char", scope: !3, file: !3, line: 498, type: !95, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875}
!1870 = !DILocalVariable(name: "uni", arg: 1, scope: !1868, file: !3, line: 498, type: !40)
!1871 = !DILocalVariable(name: "out", arg: 2, scope: !1868, file: !3, line: 498, type: !98)
!1872 = !DILocalVariable(name: "boundlen", arg: 3, scope: !1868, file: !3, line: 498, type: !97)
!1873 = !DILocalVariable(name: "uni2charset", scope: !1868, file: !3, line: 500, type: !103)
!1874 = !DILocalVariable(name: "cl", scope: !1868, file: !3, line: 501, type: !39)
!1875 = !DILocalVariable(name: "ch", scope: !1868, file: !3, line: 502, type: !39)
!1876 = !DILocation(line: 498, column: 29, scope: !1868)
!1877 = !DILocation(line: 498, column: 49, scope: !1868)
!1878 = !DILocation(line: 498, column: 58, scope: !1868)
!1879 = !DILocation(line: 500, column: 2, scope: !1868)
!1880 = !DILocation(line: 500, column: 23, scope: !1868)
!1881 = !DILocation(line: 501, column: 2, scope: !1868)
!1882 = !DILocation(line: 501, column: 16, scope: !1868)
!1883 = !DILocation(line: 501, column: 21, scope: !1868)
!1884 = !DILocation(line: 501, column: 25, scope: !1868)
!1885 = !DILocation(line: 502, column: 2, scope: !1868)
!1886 = !DILocation(line: 502, column: 16, scope: !1868)
!1887 = !DILocation(line: 502, column: 22, scope: !1868)
!1888 = !DILocation(line: 502, column: 26, scope: !1868)
!1889 = !DILocation(line: 502, column: 36, scope: !1868)
!1890 = !DILocation(line: 502, column: 21, scope: !1868)
!1891 = !DILocation(line: 504, column: 6, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 504, column: 6)
!1893 = !DILocation(line: 504, column: 15, scope: !1892)
!1894 = !DILocation(line: 504, column: 6, scope: !1868)
!1895 = !DILocation(line: 505, column: 3, scope: !1892)
!1896 = !DILocation(line: 507, column: 33, scope: !1868)
!1897 = !DILocation(line: 507, column: 16, scope: !1868)
!1898 = !DILocation(line: 507, column: 14, scope: !1868)
!1899 = !DILocation(line: 508, column: 6, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 508, column: 6)
!1901 = !DILocation(line: 508, column: 18, scope: !1900)
!1902 = !DILocation(line: 508, column: 21, scope: !1900)
!1903 = !DILocation(line: 508, column: 33, scope: !1900)
!1904 = !DILocation(line: 508, column: 6, scope: !1868)
!1905 = !DILocation(line: 509, column: 12, scope: !1900)
!1906 = !DILocation(line: 509, column: 24, scope: !1900)
!1907 = !DILocation(line: 509, column: 3, scope: !1900)
!1908 = !DILocation(line: 509, column: 10, scope: !1900)
!1909 = !DILocation(line: 511, column: 3, scope: !1900)
!1910 = !DILocation(line: 512, column: 2, scope: !1868)
!1911 = !DILocation(line: 513, column: 1, scope: !1868)
!1912 = distinct !DISubprogram(name: "char2uni", scope: !3, file: !3, line: 515, type: !101, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DILocalVariable(name: "rawstring", arg: 1, scope: !1912, file: !3, line: 515, type: !103)
!1915 = !DILocalVariable(name: "boundlen", arg: 2, scope: !1912, file: !3, line: 515, type: !97)
!1916 = !DILocalVariable(name: "uni", arg: 3, scope: !1912, file: !3, line: 515, type: !105)
!1917 = !DILocation(line: 515, column: 42, scope: !1912)
!1918 = !DILocation(line: 515, column: 57, scope: !1912)
!1919 = !DILocation(line: 515, column: 76, scope: !1912)
!1920 = !DILocation(line: 517, column: 22, scope: !1912)
!1921 = !DILocation(line: 517, column: 21, scope: !1912)
!1922 = !DILocation(line: 517, column: 9, scope: !1912)
!1923 = !DILocation(line: 517, column: 3, scope: !1912)
!1924 = !DILocation(line: 517, column: 7, scope: !1912)
!1925 = !DILocation(line: 518, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 518, column: 6)
!1927 = !DILocation(line: 518, column: 6, scope: !1926)
!1928 = !DILocation(line: 518, column: 11, scope: !1926)
!1929 = !DILocation(line: 518, column: 6, scope: !1912)
!1930 = !DILocation(line: 519, column: 3, scope: !1926)
!1931 = !DILocation(line: 520, column: 2, scope: !1912)
!1932 = !DILocation(line: 521, column: 1, scope: !1912)
