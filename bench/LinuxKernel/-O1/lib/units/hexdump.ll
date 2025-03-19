; ModuleID = 'lib/hexdump.c'
source_filename = "lib/hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hex_asc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hex_asc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hex_asc_upper: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hex_asc_upper ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hex_to_bin: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hex_to_bin ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hex2bin: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hex2bin ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bin2hex: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad bin2hex ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hex_dump_to_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hex_dump_to_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_print_hex_dump: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad print_hex_dump ; .previous"

%struct.anon = type { i64 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i16 }

@hex_asc = hidden constant [17 x i8] c"0123456789abcdef\00", align 16, !dbg !0
@__UNIQUE_ID___addressable_hex_asc3 = internal global ptr @hex_asc, section ".discard.addressable", align 8, !dbg !109
@hex_asc_upper = hidden constant [17 x i8] c"0123456789ABCDEF\00", align 16, !dbg !111
@__UNIQUE_ID___addressable_hex_asc_upper4 = internal global ptr @hex_asc_upper, section ".discard.addressable", align 8, !dbg !117
@__UNIQUE_ID___addressable_hex_to_bin5 = internal global ptr @hex_to_bin, section ".discard.addressable", align 8, !dbg !119
@__UNIQUE_ID___addressable_hex2bin6 = internal global ptr @hex2bin, section ".discard.addressable", align 8, !dbg !121
@__UNIQUE_ID___addressable_bin2hex7 = internal global ptr @bin2hex, section ".discard.addressable", align 8, !dbg !123
@.str = private unnamed_addr constant [12 x i8] c"%s%16.16llx\00", align 1, !dbg !125
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !130
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !135
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%8.8x\00", align 1, !dbg !140
@.str.4 = private unnamed_addr constant [8 x i8] c"%s%4.4x\00", align 1, !dbg !145
@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_hex_dump_to_buffer8 = internal global ptr @hex_dump_to_buffer, section ".discard.addressable", align 8, !dbg !147
@.str.5 = private unnamed_addr constant [12 x i8] c"%s%s%p: %s\0A\00", align 1, !dbg !149
@.str.6 = private unnamed_addr constant [14 x i8] c"%s%s%.8x: %s\0A\00", align 1, !dbg !151
@.str.7 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1, !dbg !156
@__UNIQUE_ID___addressable_print_hex_dump11 = internal global ptr @print_hex_dump, section ".discard.addressable", align 8, !dbg !158
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_hex_asc3, ptr @__UNIQUE_ID___addressable_hex_asc_upper4, ptr @__UNIQUE_ID___addressable_hex_to_bin5, ptr @__UNIQUE_ID___addressable_hex2bin6, ptr @__UNIQUE_ID___addressable_bin2hex7, ptr @__UNIQUE_ID___addressable_hex_dump_to_buffer8, ptr @__UNIQUE_ID___addressable_print_hex_dump11], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hex_to_bin(i8 noundef zeroext %ch) #0 align 16 !dbg !169 {
entry:
  %ch.addr = alloca i8, align 1
  %cu = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.lifetime.start.p0(i64 1, ptr %cu) #8, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %cu, metadata !174, metadata !DIExpression()), !dbg !177
  %0 = load i8, ptr %ch.addr, align 1, !dbg !178
  %conv = zext i8 %0 to i32, !dbg !178
  %and = and i32 %conv, 223, !dbg !179
  %conv1 = trunc i32 %and to i8, !dbg !178
  store i8 %conv1, ptr %cu, align 1, !dbg !177
  %1 = load i8, ptr %ch.addr, align 1, !dbg !180
  %conv2 = zext i8 %1 to i32, !dbg !180
  %sub = sub i32 %conv2, 48, !dbg !181
  %add = add i32 %sub, 1, !dbg !182
  %2 = load i8, ptr %ch.addr, align 1, !dbg !183
  %conv3 = zext i8 %2 to i32, !dbg !183
  %sub4 = sub i32 %conv3, 57, !dbg !184
  %sub5 = sub i32 %sub4, 1, !dbg !185
  %3 = load i8, ptr %ch.addr, align 1, !dbg !186
  %conv6 = zext i8 %3 to i32, !dbg !186
  %sub7 = sub i32 47, %conv6, !dbg !187
  %and8 = and i32 %sub5, %sub7, !dbg !188
  %shr = lshr i32 %and8, 8, !dbg !189
  %and9 = and i32 %add, %shr, !dbg !190
  %add10 = add i32 -1, %and9, !dbg !191
  %4 = load i8, ptr %cu, align 1, !dbg !192
  %conv11 = zext i8 %4 to i32, !dbg !192
  %sub12 = sub i32 %conv11, 65, !dbg !193
  %add13 = add i32 %sub12, 11, !dbg !194
  %5 = load i8, ptr %cu, align 1, !dbg !195
  %conv14 = zext i8 %5 to i32, !dbg !195
  %sub15 = sub i32 %conv14, 70, !dbg !196
  %sub16 = sub i32 %sub15, 1, !dbg !197
  %6 = load i8, ptr %cu, align 1, !dbg !198
  %conv17 = zext i8 %6 to i32, !dbg !198
  %sub18 = sub i32 64, %conv17, !dbg !199
  %and19 = and i32 %sub16, %sub18, !dbg !200
  %shr20 = lshr i32 %and19, 8, !dbg !201
  %and21 = and i32 %add13, %shr20, !dbg !202
  %add22 = add i32 %add10, %and21, !dbg !203
  call void @llvm.lifetime.end.p0(i64 1, ptr %cu) #8, !dbg !204
  ret i32 %add22, !dbg !205
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hex2bin(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !206 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !212, metadata !DIExpression()), !dbg !218
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !213, metadata !DIExpression()), !dbg !219
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !214, metadata !DIExpression()), !dbg !220
  br label %while.cond, !dbg !221

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !222
  %dec = add i64 %0, -1, !dbg !222
  store i64 %dec, ptr %count.addr, align 8, !dbg !222
  %tobool = icmp ne i64 %0, 0, !dbg !221
  br i1 %tobool, label %while.body, label %while.end, !dbg !221

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #8, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !215, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #8, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !217, metadata !DIExpression()), !dbg !225
  %1 = load ptr, ptr %src.addr, align 8, !dbg !226
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !226
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !226
  %2 = load i8, ptr %1, align 1, !dbg !227
  %call = call i32 @hex_to_bin(i8 noundef zeroext %2) #9, !dbg !228
  store i32 %call, ptr %hi, align 4, !dbg !229
  %3 = load i32, ptr %hi, align 4, !dbg !230
  %cmp = icmp slt i32 %3, 0, !dbg !230
  %lnot = xor i1 %cmp, true, !dbg !230
  %lnot1 = xor i1 %lnot, true, !dbg !230
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !230
  %conv = sext i32 %lnot.ext to i64, !dbg !230
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !230
  %tobool2 = icmp ne i64 %expval, 0, !dbg !230
  br i1 %tobool2, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %while.body
  store i32 -22, ptr %retval, align 4, !dbg !233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %src.addr, align 8, !dbg !234
  %incdec.ptr3 = getelementptr i8, ptr %4, i32 1, !dbg !234
  store ptr %incdec.ptr3, ptr %src.addr, align 8, !dbg !234
  %5 = load i8, ptr %4, align 1, !dbg !235
  %call4 = call i32 @hex_to_bin(i8 noundef zeroext %5) #9, !dbg !236
  store i32 %call4, ptr %lo, align 4, !dbg !237
  %6 = load i32, ptr %lo, align 4, !dbg !238
  %cmp5 = icmp slt i32 %6, 0, !dbg !238
  %lnot7 = xor i1 %cmp5, true, !dbg !238
  %lnot9 = xor i1 %lnot7, true, !dbg !238
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !238
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !238
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !238
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !238
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !240

if.then14:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !241

if.end15:                                         ; preds = %if.end
  %7 = load i32, ptr %hi, align 4, !dbg !242
  %shl = shl i32 %7, 4, !dbg !243
  %8 = load i32, ptr %lo, align 4, !dbg !244
  %or = or i32 %shl, %8, !dbg !245
  %conv16 = trunc i32 %or to i8, !dbg !246
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !247
  %incdec.ptr17 = getelementptr i8, ptr %9, i32 1, !dbg !247
  store ptr %incdec.ptr17, ptr %dst.addr, align 8, !dbg !247
  store i8 %conv16, ptr %9, align 1, !dbg !248
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !249
  br label %cleanup, !dbg !249

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #8, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #8, !dbg !249
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !221, !llvm.loop !250

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !253
  br label %return, !dbg !253

return:                                           ; preds = %while.end, %cleanup
  %10 = load i32, ptr %retval, align 4, !dbg !254
  ret i32 %10, !dbg !254

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @bin2hex(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !255 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %_src = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !259, metadata !DIExpression()), !dbg !265
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !260, metadata !DIExpression()), !dbg !266
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %_src) #8, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %_src, metadata !262, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr %src.addr, align 8, !dbg !270
  store ptr %0, ptr %_src, align 8, !dbg !269
  br label %while.cond, !dbg !271

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %count.addr, align 8, !dbg !272
  %dec = add i64 %1, -1, !dbg !272
  store i64 %dec, ptr %count.addr, align 8, !dbg !272
  %tobool = icmp ne i64 %1, 0, !dbg !271
  br i1 %tobool, label %while.body, label %while.end, !dbg !271

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !273
  %3 = load ptr, ptr %_src, align 8, !dbg !274
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !274
  store ptr %incdec.ptr, ptr %_src, align 8, !dbg !274
  %4 = load i8, ptr %3, align 1, !dbg !275
  %call = call ptr @hex_byte_pack(ptr noundef %2, i8 noundef zeroext %4) #9, !dbg !276
  store ptr %call, ptr %dst.addr, align 8, !dbg !277
  br label %while.cond, !dbg !271, !llvm.loop !278

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !280
  call void @llvm.lifetime.end.p0(i64 8, ptr %_src) #8, !dbg !281
  ret ptr %5, !dbg !282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hex_byte_pack(ptr noundef %buf, i8 noundef zeroext %byte) #4 align 16 !dbg !283 {
entry:
  %buf.addr = alloca ptr, align 8
  %byte.addr = alloca i8, align 1
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !288, metadata !DIExpression()), !dbg !290
  store i8 %byte, ptr %byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte.addr, metadata !289, metadata !DIExpression()), !dbg !291
  %0 = load i8, ptr %byte.addr, align 1, !dbg !292
  %conv = zext i8 %0 to i32, !dbg !292
  %and = and i32 %conv, 240, !dbg !292
  %shr = ashr i32 %and, 4, !dbg !292
  %idxprom = sext i32 %shr to i64, !dbg !292
  %arrayidx = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom, !dbg !292
  %1 = load i8, ptr %arrayidx, align 1, !dbg !292
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !293
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !293
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !293
  store i8 %1, ptr %2, align 1, !dbg !294
  %3 = load i8, ptr %byte.addr, align 1, !dbg !295
  %conv1 = zext i8 %3 to i32, !dbg !295
  %and2 = and i32 %conv1, 15, !dbg !295
  %idxprom3 = sext i32 %and2 to i64, !dbg !295
  %arrayidx4 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom3, !dbg !295
  %4 = load i8, ptr %arrayidx4, align 1, !dbg !295
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !296
  %incdec.ptr5 = getelementptr i8, ptr %5, i32 1, !dbg !296
  store ptr %incdec.ptr5, ptr %buf.addr, align 8, !dbg !296
  store i8 %4, ptr %5, align 1, !dbg !297
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !298
  ret ptr %6, !dbg !299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hex_dump_to_buffer(ptr noundef %buf, i64 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %linebuf, i64 noundef %linebuflen, i1 noundef zeroext %ascii) #0 align 16 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %rowsize.addr = alloca i32, align 4
  %groupsize.addr = alloca i32, align 4
  %linebuf.addr = alloca ptr, align 8
  %linebuflen.addr = alloca i64, align 8
  %ascii.addr = alloca i8, align 1
  %ptr = alloca ptr, align 8
  %ngroups = alloca i32, align 4
  %ch = alloca i8, align 1
  %j = alloca i32, align 4
  %lx = alloca i32, align 4
  %ascii_column = alloca i32, align 4
  %ret = alloca i32, align 4
  %ptr8 = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ptr4 = alloca ptr, align 8
  %__pptr57 = alloca ptr, align 8
  %tmp60 = alloca i32, align 4
  %ptr2 = alloca ptr, align 8
  %__pptr91 = alloca ptr, align 8
  %tmp94 = alloca i16, align 2
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !34, metadata !DIExpression()), !dbg !300
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !35, metadata !DIExpression()), !dbg !301
  store i32 %rowsize, ptr %rowsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rowsize.addr, metadata !36, metadata !DIExpression()), !dbg !302
  store i32 %groupsize, ptr %groupsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %groupsize.addr, metadata !37, metadata !DIExpression()), !dbg !303
  store ptr %linebuf, ptr %linebuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %linebuf.addr, metadata !38, metadata !DIExpression()), !dbg !304
  store i64 %linebuflen, ptr %linebuflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %linebuflen.addr, metadata !39, metadata !DIExpression()), !dbg !305
  %frombool = zext i1 %ascii to i8
  store i8 %frombool, ptr %ascii.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascii.addr, metadata !40, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !41, metadata !DIExpression()), !dbg !308
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !309
  store ptr %0, ptr %ptr, align 8, !dbg !308
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngroups) #8, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %ngroups, metadata !49, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #8, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !50, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %j, metadata !51, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 4, ptr %lx) #8, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %lx, metadata !52, metadata !DIExpression()), !dbg !316
  store i32 0, ptr %lx, align 4, !dbg !316
  call void @llvm.lifetime.start.p0(i64 4, ptr %ascii_column) #8, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %ascii_column, metadata !53, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !54, metadata !DIExpression()), !dbg !320
  %1 = load i32, ptr %rowsize.addr, align 4, !dbg !321
  %cmp = icmp ne i32 %1, 16, !dbg !323
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !324

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %rowsize.addr, align 4, !dbg !325
  %cmp1 = icmp ne i32 %2, 32, !dbg !326
  br i1 %cmp1, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %land.lhs.true
  store i32 16, ptr %rowsize.addr, align 4, !dbg !328
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i64, ptr %len.addr, align 8, !dbg !330
  %4 = load i32, ptr %rowsize.addr, align 4, !dbg !332
  %conv = sext i32 %4 to i64, !dbg !332
  %cmp2 = icmp ugt i64 %3, %conv, !dbg !333
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !334

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %rowsize.addr, align 4, !dbg !335
  %conv5 = sext i32 %5 to i64, !dbg !335
  store i64 %conv5, ptr %len.addr, align 8, !dbg !336
  br label %if.end6, !dbg !337

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = load i32, ptr %groupsize.addr, align 4, !dbg !338
  %conv7 = sext i32 %6 to i64, !dbg !338
  %call = call zeroext i1 @is_power_of_2(i64 noundef %conv7) #10, !dbg !340
  br i1 %call, label %lor.lhs.false, label %if.then10, !dbg !341

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, ptr %groupsize.addr, align 4, !dbg !342
  %cmp8 = icmp sgt i32 %7, 8, !dbg !343
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !344

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 1, ptr %groupsize.addr, align 4, !dbg !345
  br label %if.end11, !dbg !346

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %8 = load i64, ptr %len.addr, align 8, !dbg !347
  %9 = load i32, ptr %groupsize.addr, align 4, !dbg !349
  %conv12 = sext i32 %9 to i64, !dbg !349
  %rem = urem i64 %8, %conv12, !dbg !350
  %cmp13 = icmp ne i64 %rem, 0, !dbg !351
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !352

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %groupsize.addr, align 4, !dbg !353
  br label %if.end16, !dbg !354

if.end16:                                         ; preds = %if.then15, %if.end11
  %10 = load i64, ptr %len.addr, align 8, !dbg !355
  %11 = load i32, ptr %groupsize.addr, align 4, !dbg !356
  %conv17 = sext i32 %11 to i64, !dbg !356
  %div = udiv i64 %10, %conv17, !dbg !357
  %conv18 = trunc i64 %div to i32, !dbg !355
  store i32 %conv18, ptr %ngroups, align 4, !dbg !358
  %12 = load i32, ptr %rowsize.addr, align 4, !dbg !359
  %mul = mul i32 %12, 2, !dbg !360
  %13 = load i32, ptr %rowsize.addr, align 4, !dbg !361
  %14 = load i32, ptr %groupsize.addr, align 4, !dbg !362
  %div19 = sdiv i32 %13, %14, !dbg !363
  %add = add i32 %mul, %div19, !dbg !364
  %add20 = add i32 %add, 1, !dbg !365
  store i32 %add20, ptr %ascii_column, align 4, !dbg !366
  %15 = load i64, ptr %linebuflen.addr, align 8, !dbg !367
  %tobool = icmp ne i64 %15, 0, !dbg !367
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !369

if.then21:                                        ; preds = %if.end16
  br label %overflow1, !dbg !370

if.end22:                                         ; preds = %if.end16
  %16 = load i64, ptr %len.addr, align 8, !dbg !371
  %tobool23 = icmp ne i64 %16, 0, !dbg !371
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !373

if.then24:                                        ; preds = %if.end22
  br label %nil, !dbg !374

if.end25:                                         ; preds = %if.end22
  %17 = load i32, ptr %groupsize.addr, align 4, !dbg !375
  %cmp26 = icmp eq i32 %17, 8, !dbg !376
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !377

if.then28:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr8) #8, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %ptr8, metadata !55, metadata !DIExpression()), !dbg !379
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !380
  store ptr %18, ptr %ptr8, align 8, !dbg !379
  store i32 0, ptr %j, align 4, !dbg !381
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %if.then28
  %19 = load i32, ptr %j, align 4, !dbg !383
  %20 = load i32, ptr %ngroups, align 4, !dbg !384
  %cmp29 = icmp slt i32 %19, %20, !dbg !385
  br i1 %cmp29, label %for.body, label %for.end, !dbg !386

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %linebuf.addr, align 8, !dbg !387
  %22 = load i32, ptr %lx, align 4, !dbg !388
  %idx.ext = sext i32 %22 to i64, !dbg !389
  %add.ptr = getelementptr i8, ptr %21, i64 %idx.ext, !dbg !389
  %23 = load i64, ptr %linebuflen.addr, align 8, !dbg !390
  %24 = load i32, ptr %lx, align 4, !dbg !391
  %conv31 = sext i32 %24 to i64, !dbg !391
  %sub = sub i64 %23, %conv31, !dbg !392
  %25 = load i32, ptr %j, align 4, !dbg !393
  %tobool32 = icmp ne i32 %25, 0, !dbg !393
  %26 = zext i1 %tobool32 to i64, !dbg !393
  %cond = select i1 %tobool32, ptr @.str.1, ptr @.str.2, !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !63, metadata !DIExpression()), !dbg !394
  %27 = load ptr, ptr %ptr8, align 8, !dbg !394
  %28 = load i32, ptr %j, align 4, !dbg !394
  %idx.ext33 = sext i32 %28 to i64, !dbg !394
  %add.ptr34 = getelementptr i64, ptr %27, i64 %idx.ext33, !dbg !394
  store ptr %add.ptr34, ptr %__pptr, align 8, !dbg !394
  %29 = load ptr, ptr %__pptr, align 8, !dbg !394
  %x = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 0, !dbg !394
  %30 = load i64, ptr %x, align 1, !dbg !394
  store i64 %30, ptr %tmp, align 8, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !395
  %31 = load i64, ptr %tmp, align 8, !dbg !394
  %call35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str, ptr noundef %cond, i64 noundef %31) #9, !dbg !396
  store i32 %call35, ptr %ret, align 4, !dbg !397
  %32 = load i32, ptr %ret, align 4, !dbg !398
  %conv36 = sext i32 %32 to i64, !dbg !398
  %33 = load i64, ptr %linebuflen.addr, align 8, !dbg !400
  %34 = load i32, ptr %lx, align 4, !dbg !401
  %conv37 = sext i32 %34 to i64, !dbg !401
  %sub38 = sub i64 %33, %conv37, !dbg !402
  %cmp39 = icmp uge i64 %conv36, %sub38, !dbg !403
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !404

if.then41:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

if.end42:                                         ; preds = %for.body
  %35 = load i32, ptr %ret, align 4, !dbg !406
  %36 = load i32, ptr %lx, align 4, !dbg !407
  %add43 = add i32 %36, %35, !dbg !407
  store i32 %add43, ptr %lx, align 4, !dbg !407
  br label %for.inc, !dbg !408

for.inc:                                          ; preds = %if.end42
  %37 = load i32, ptr %j, align 4, !dbg !409
  %inc = add i32 %37, 1, !dbg !409
  store i32 %inc, ptr %j, align 4, !dbg !409
  br label %for.cond, !dbg !410, !llvm.loop !411

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !413
  br label %cleanup, !dbg !413

cleanup:                                          ; preds = %if.then41, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr8) #8, !dbg !413
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup227 [
    i32 0, label %cleanup.cont
    i32 2, label %overflow1
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end160, !dbg !414

if.else:                                          ; preds = %if.end25
  %38 = load i32, ptr %groupsize.addr, align 4, !dbg !415
  %cmp44 = icmp eq i32 %38, 4, !dbg !416
  br i1 %cmp44, label %if.then46, label %if.else77, !dbg !417

if.then46:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr4) #8, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %ptr4, metadata !68, metadata !DIExpression()), !dbg !419
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !420
  store ptr %39, ptr %ptr4, align 8, !dbg !419
  store i32 0, ptr %j, align 4, !dbg !421
  br label %for.cond47, !dbg !422

for.cond47:                                       ; preds = %for.inc71, %if.then46
  %40 = load i32, ptr %j, align 4, !dbg !423
  %41 = load i32, ptr %ngroups, align 4, !dbg !424
  %cmp48 = icmp slt i32 %40, %41, !dbg !425
  br i1 %cmp48, label %for.body50, label %for.end73, !dbg !426

for.body50:                                       ; preds = %for.cond47
  %42 = load ptr, ptr %linebuf.addr, align 8, !dbg !427
  %43 = load i32, ptr %lx, align 4, !dbg !428
  %idx.ext51 = sext i32 %43 to i64, !dbg !429
  %add.ptr52 = getelementptr i8, ptr %42, i64 %idx.ext51, !dbg !429
  %44 = load i64, ptr %linebuflen.addr, align 8, !dbg !430
  %45 = load i32, ptr %lx, align 4, !dbg !431
  %conv53 = sext i32 %45 to i64, !dbg !431
  %sub54 = sub i64 %44, %conv53, !dbg !432
  %46 = load i32, ptr %j, align 4, !dbg !433
  %tobool55 = icmp ne i32 %46, 0, !dbg !433
  %47 = zext i1 %tobool55 to i64, !dbg !433
  %cond56 = select i1 %tobool55, ptr @.str.1, ptr @.str.2, !dbg !433
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr57) #8, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %__pptr57, metadata !75, metadata !DIExpression()), !dbg !434
  %48 = load ptr, ptr %ptr4, align 8, !dbg !434
  %49 = load i32, ptr %j, align 4, !dbg !434
  %idx.ext58 = sext i32 %49 to i64, !dbg !434
  %add.ptr59 = getelementptr i32, ptr %48, i64 %idx.ext58, !dbg !434
  store ptr %add.ptr59, ptr %__pptr57, align 8, !dbg !434
  %50 = load ptr, ptr %__pptr57, align 8, !dbg !434
  %x61 = getelementptr inbounds %struct.anon.0, ptr %50, i32 0, i32 0, !dbg !434
  %51 = load i32, ptr %x61, align 1, !dbg !434
  store i32 %51, ptr %tmp60, align 4, !dbg !434
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr57) #8, !dbg !435
  %52 = load i32, ptr %tmp60, align 4, !dbg !434
  %call62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr52, i64 noundef %sub54, ptr noundef @.str.3, ptr noundef %cond56, i32 noundef %52) #9, !dbg !436
  store i32 %call62, ptr %ret, align 4, !dbg !437
  %53 = load i32, ptr %ret, align 4, !dbg !438
  %conv63 = sext i32 %53 to i64, !dbg !438
  %54 = load i64, ptr %linebuflen.addr, align 8, !dbg !440
  %55 = load i32, ptr %lx, align 4, !dbg !441
  %conv64 = sext i32 %55 to i64, !dbg !441
  %sub65 = sub i64 %54, %conv64, !dbg !442
  %cmp66 = icmp uge i64 %conv63, %sub65, !dbg !443
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !444

if.then68:                                        ; preds = %for.body50
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !445

if.end69:                                         ; preds = %for.body50
  %56 = load i32, ptr %ret, align 4, !dbg !446
  %57 = load i32, ptr %lx, align 4, !dbg !447
  %add70 = add i32 %57, %56, !dbg !447
  store i32 %add70, ptr %lx, align 4, !dbg !447
  br label %for.inc71, !dbg !448

for.inc71:                                        ; preds = %if.end69
  %58 = load i32, ptr %j, align 4, !dbg !449
  %inc72 = add i32 %58, 1, !dbg !449
  store i32 %inc72, ptr %j, align 4, !dbg !449
  br label %for.cond47, !dbg !450, !llvm.loop !451

for.end73:                                        ; preds = %for.cond47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !453
  br label %cleanup74, !dbg !453

cleanup74:                                        ; preds = %if.then68, %for.end73
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr4) #8, !dbg !453
  %cleanup.dest75 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest75, label %cleanup227 [
    i32 0, label %cleanup.cont76
    i32 2, label %overflow1
  ]

cleanup.cont76:                                   ; preds = %cleanup74
  br label %if.end159, !dbg !454

if.else77:                                        ; preds = %if.else
  %59 = load i32, ptr %groupsize.addr, align 4, !dbg !455
  %cmp78 = icmp eq i32 %59, 2, !dbg !456
  br i1 %cmp78, label %if.then80, label %if.else112, !dbg !457

if.then80:                                        ; preds = %if.else77
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr2) #8, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %ptr2, metadata !85, metadata !DIExpression()), !dbg !459
  %60 = load ptr, ptr %buf.addr, align 8, !dbg !460
  store ptr %60, ptr %ptr2, align 8, !dbg !459
  store i32 0, ptr %j, align 4, !dbg !461
  br label %for.cond81, !dbg !462

for.cond81:                                       ; preds = %for.inc106, %if.then80
  %61 = load i32, ptr %j, align 4, !dbg !463
  %62 = load i32, ptr %ngroups, align 4, !dbg !464
  %cmp82 = icmp slt i32 %61, %62, !dbg !465
  br i1 %cmp82, label %for.body84, label %for.end108, !dbg !466

for.body84:                                       ; preds = %for.cond81
  %63 = load ptr, ptr %linebuf.addr, align 8, !dbg !467
  %64 = load i32, ptr %lx, align 4, !dbg !468
  %idx.ext85 = sext i32 %64 to i64, !dbg !469
  %add.ptr86 = getelementptr i8, ptr %63, i64 %idx.ext85, !dbg !469
  %65 = load i64, ptr %linebuflen.addr, align 8, !dbg !470
  %66 = load i32, ptr %lx, align 4, !dbg !471
  %conv87 = sext i32 %66 to i64, !dbg !471
  %sub88 = sub i64 %65, %conv87, !dbg !472
  %67 = load i32, ptr %j, align 4, !dbg !473
  %tobool89 = icmp ne i32 %67, 0, !dbg !473
  %68 = zext i1 %tobool89 to i64, !dbg !473
  %cond90 = select i1 %tobool89, ptr @.str.1, ptr @.str.2, !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr91) #8, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %__pptr91, metadata !93, metadata !DIExpression()), !dbg !474
  %69 = load ptr, ptr %ptr2, align 8, !dbg !474
  %70 = load i32, ptr %j, align 4, !dbg !474
  %idx.ext92 = sext i32 %70 to i64, !dbg !474
  %add.ptr93 = getelementptr i16, ptr %69, i64 %idx.ext92, !dbg !474
  store ptr %add.ptr93, ptr %__pptr91, align 8, !dbg !474
  %71 = load ptr, ptr %__pptr91, align 8, !dbg !474
  %x95 = getelementptr inbounds %struct.anon.1, ptr %71, i32 0, i32 0, !dbg !474
  %72 = load i16, ptr %x95, align 1, !dbg !474
  store i16 %72, ptr %tmp94, align 2, !dbg !474
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr91) #8, !dbg !475
  %73 = load i16, ptr %tmp94, align 2, !dbg !474
  %conv96 = zext i16 %73 to i32, !dbg !475
  %call97 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr86, i64 noundef %sub88, ptr noundef @.str.4, ptr noundef %cond90, i32 noundef %conv96) #9, !dbg !476
  store i32 %call97, ptr %ret, align 4, !dbg !477
  %74 = load i32, ptr %ret, align 4, !dbg !478
  %conv98 = sext i32 %74 to i64, !dbg !478
  %75 = load i64, ptr %linebuflen.addr, align 8, !dbg !480
  %76 = load i32, ptr %lx, align 4, !dbg !481
  %conv99 = sext i32 %76 to i64, !dbg !481
  %sub100 = sub i64 %75, %conv99, !dbg !482
  %cmp101 = icmp uge i64 %conv98, %sub100, !dbg !483
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !484

if.then103:                                       ; preds = %for.body84
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !485

if.end104:                                        ; preds = %for.body84
  %77 = load i32, ptr %ret, align 4, !dbg !486
  %78 = load i32, ptr %lx, align 4, !dbg !487
  %add105 = add i32 %78, %77, !dbg !487
  store i32 %add105, ptr %lx, align 4, !dbg !487
  br label %for.inc106, !dbg !488

for.inc106:                                       ; preds = %if.end104
  %79 = load i32, ptr %j, align 4, !dbg !489
  %inc107 = add i32 %79, 1, !dbg !489
  store i32 %inc107, ptr %j, align 4, !dbg !489
  br label %for.cond81, !dbg !490, !llvm.loop !491

for.end108:                                       ; preds = %for.cond81
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !493
  br label %cleanup109, !dbg !493

cleanup109:                                       ; preds = %if.then103, %for.end108
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr2) #8, !dbg !493
  %cleanup.dest110 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest110, label %cleanup227 [
    i32 0, label %cleanup.cont111
    i32 2, label %overflow1
  ]

cleanup.cont111:                                  ; preds = %cleanup109
  br label %if.end158, !dbg !494

if.else112:                                       ; preds = %if.else77
  store i32 0, ptr %j, align 4, !dbg !495
  br label %for.cond113, !dbg !498

for.cond113:                                      ; preds = %for.inc152, %if.else112
  %80 = load i32, ptr %j, align 4, !dbg !499
  %conv114 = sext i32 %80 to i64, !dbg !499
  %81 = load i64, ptr %len.addr, align 8, !dbg !501
  %cmp115 = icmp ult i64 %conv114, %81, !dbg !502
  br i1 %cmp115, label %for.body117, label %for.end154, !dbg !503

for.body117:                                      ; preds = %for.cond113
  %82 = load i64, ptr %linebuflen.addr, align 8, !dbg !504
  %83 = load i32, ptr %lx, align 4, !dbg !507
  %add118 = add i32 %83, 2, !dbg !508
  %conv119 = sext i32 %add118 to i64, !dbg !507
  %cmp120 = icmp ult i64 %82, %conv119, !dbg !509
  br i1 %cmp120, label %if.then122, label %if.end123, !dbg !510

if.then122:                                       ; preds = %for.body117
  br label %overflow2, !dbg !511

if.end123:                                        ; preds = %for.body117
  %84 = load ptr, ptr %ptr, align 8, !dbg !512
  %85 = load i32, ptr %j, align 4, !dbg !513
  %idxprom = sext i32 %85 to i64, !dbg !512
  %arrayidx = getelementptr i8, ptr %84, i64 %idxprom, !dbg !512
  %86 = load i8, ptr %arrayidx, align 1, !dbg !512
  store i8 %86, ptr %ch, align 1, !dbg !514
  %87 = load i8, ptr %ch, align 1, !dbg !515
  %conv124 = zext i8 %87 to i32, !dbg !515
  %and = and i32 %conv124, 240, !dbg !515
  %shr = ashr i32 %and, 4, !dbg !515
  %idxprom125 = sext i32 %shr to i64, !dbg !515
  %arrayidx126 = getelementptr [17 x i8], ptr @hex_asc, i64 0, i64 %idxprom125, !dbg !515
  %88 = load i8, ptr %arrayidx126, align 1, !dbg !515
  %89 = load ptr, ptr %linebuf.addr, align 8, !dbg !516
  %90 = load i32, ptr %lx, align 4, !dbg !517
  %inc127 = add i32 %90, 1, !dbg !517
  store i32 %inc127, ptr %lx, align 4, !dbg !517
  %idxprom128 = sext i32 %90 to i64, !dbg !516
  %arrayidx129 = getelementptr i8, ptr %89, i64 %idxprom128, !dbg !516
  store i8 %88, ptr %arrayidx129, align 1, !dbg !518
  %91 = load i64, ptr %linebuflen.addr, align 8, !dbg !519
  %92 = load i32, ptr %lx, align 4, !dbg !521
  %add130 = add i32 %92, 2, !dbg !522
  %conv131 = sext i32 %add130 to i64, !dbg !521
  %cmp132 = icmp ult i64 %91, %conv131, !dbg !523
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !524

if.then134:                                       ; preds = %if.end123
  br label %overflow2, !dbg !525

if.end135:                                        ; preds = %if.end123
  %93 = load i8, ptr %ch, align 1, !dbg !526
  %conv136 = zext i8 %93 to i32, !dbg !526
  %and137 = and i32 %conv136, 15, !dbg !526
  %idxprom138 = sext i32 %and137 to i64, !dbg !526
  %arrayidx139 = getelementptr [17 x i8], ptr @hex_asc, i64 0, i64 %idxprom138, !dbg !526
  %94 = load i8, ptr %arrayidx139, align 1, !dbg !526
  %95 = load ptr, ptr %linebuf.addr, align 8, !dbg !527
  %96 = load i32, ptr %lx, align 4, !dbg !528
  %inc140 = add i32 %96, 1, !dbg !528
  store i32 %inc140, ptr %lx, align 4, !dbg !528
  %idxprom141 = sext i32 %96 to i64, !dbg !527
  %arrayidx142 = getelementptr i8, ptr %95, i64 %idxprom141, !dbg !527
  store i8 %94, ptr %arrayidx142, align 1, !dbg !529
  %97 = load i64, ptr %linebuflen.addr, align 8, !dbg !530
  %98 = load i32, ptr %lx, align 4, !dbg !532
  %add143 = add i32 %98, 2, !dbg !533
  %conv144 = sext i32 %add143 to i64, !dbg !532
  %cmp145 = icmp ult i64 %97, %conv144, !dbg !534
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !535

if.then147:                                       ; preds = %if.end135
  br label %overflow2, !dbg !536

if.end148:                                        ; preds = %if.end135
  %99 = load ptr, ptr %linebuf.addr, align 8, !dbg !537
  %100 = load i32, ptr %lx, align 4, !dbg !538
  %inc149 = add i32 %100, 1, !dbg !538
  store i32 %inc149, ptr %lx, align 4, !dbg !538
  %idxprom150 = sext i32 %100 to i64, !dbg !537
  %arrayidx151 = getelementptr i8, ptr %99, i64 %idxprom150, !dbg !537
  store i8 32, ptr %arrayidx151, align 1, !dbg !539
  br label %for.inc152, !dbg !540

for.inc152:                                       ; preds = %if.end148
  %101 = load i32, ptr %j, align 4, !dbg !541
  %inc153 = add i32 %101, 1, !dbg !541
  store i32 %inc153, ptr %j, align 4, !dbg !541
  br label %for.cond113, !dbg !542, !llvm.loop !543

for.end154:                                       ; preds = %for.cond113
  %102 = load i32, ptr %j, align 4, !dbg !545
  %tobool155 = icmp ne i32 %102, 0, !dbg !545
  br i1 %tobool155, label %if.then156, label %if.end157, !dbg !547

if.then156:                                       ; preds = %for.end154
  %103 = load i32, ptr %lx, align 4, !dbg !548
  %dec = add i32 %103, -1, !dbg !548
  store i32 %dec, ptr %lx, align 4, !dbg !548
  br label %if.end157, !dbg !549

if.end157:                                        ; preds = %if.then156, %for.end154
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %cleanup.cont111
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %cleanup.cont76
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %cleanup.cont
  %104 = load i8, ptr %ascii.addr, align 1, !dbg !550, !range !552, !noundef !553
  %tobool161 = trunc i8 %104 to i1, !dbg !550
  br i1 %tobool161, label %if.end163, label %if.then162, !dbg !554

if.then162:                                       ; preds = %if.end160
  br label %nil, !dbg !555

if.end163:                                        ; preds = %if.end160
  br label %while.cond, !dbg !556

while.cond:                                       ; preds = %if.end171, %if.end163
  %105 = load i32, ptr %lx, align 4, !dbg !557
  %106 = load i32, ptr %ascii_column, align 4, !dbg !558
  %cmp164 = icmp slt i32 %105, %106, !dbg !559
  br i1 %cmp164, label %while.body, label %while.end, !dbg !556

while.body:                                       ; preds = %while.cond
  %107 = load i64, ptr %linebuflen.addr, align 8, !dbg !560
  %108 = load i32, ptr %lx, align 4, !dbg !563
  %add166 = add i32 %108, 2, !dbg !564
  %conv167 = sext i32 %add166 to i64, !dbg !563
  %cmp168 = icmp ult i64 %107, %conv167, !dbg !565
  br i1 %cmp168, label %if.then170, label %if.end171, !dbg !566

if.then170:                                       ; preds = %while.body
  br label %overflow2, !dbg !567

if.end171:                                        ; preds = %while.body
  %109 = load ptr, ptr %linebuf.addr, align 8, !dbg !568
  %110 = load i32, ptr %lx, align 4, !dbg !569
  %inc172 = add i32 %110, 1, !dbg !569
  store i32 %inc172, ptr %lx, align 4, !dbg !569
  %idxprom173 = sext i32 %110 to i64, !dbg !568
  %arrayidx174 = getelementptr i8, ptr %109, i64 %idxprom173, !dbg !568
  store i8 32, ptr %arrayidx174, align 1, !dbg !570
  br label %while.cond, !dbg !556, !llvm.loop !571

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %j, align 4, !dbg !573
  br label %for.cond175, !dbg !575

for.cond175:                                      ; preds = %for.inc205, %while.end
  %111 = load i32, ptr %j, align 4, !dbg !576
  %conv176 = sext i32 %111 to i64, !dbg !576
  %112 = load i64, ptr %len.addr, align 8, !dbg !578
  %cmp177 = icmp ult i64 %conv176, %112, !dbg !579
  br i1 %cmp177, label %for.body179, label %for.end207, !dbg !580

for.body179:                                      ; preds = %for.cond175
  %113 = load i64, ptr %linebuflen.addr, align 8, !dbg !581
  %114 = load i32, ptr %lx, align 4, !dbg !584
  %add180 = add i32 %114, 2, !dbg !585
  %conv181 = sext i32 %add180 to i64, !dbg !584
  %cmp182 = icmp ult i64 %113, %conv181, !dbg !586
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !587

if.then184:                                       ; preds = %for.body179
  br label %overflow2, !dbg !588

if.end185:                                        ; preds = %for.body179
  %115 = load ptr, ptr %ptr, align 8, !dbg !589
  %116 = load i32, ptr %j, align 4, !dbg !590
  %idxprom186 = sext i32 %116 to i64, !dbg !589
  %arrayidx187 = getelementptr i8, ptr %115, i64 %idxprom186, !dbg !589
  %117 = load i8, ptr %arrayidx187, align 1, !dbg !589
  store i8 %117, ptr %ch, align 1, !dbg !591
  %118 = load i8, ptr %ch, align 1, !dbg !592
  %conv188 = zext i8 %118 to i32, !dbg !592
  %cmp189 = icmp sle i32 %conv188, 127, !dbg !592
  br i1 %cmp189, label %land.lhs.true191, label %cond.false, !dbg !593

land.lhs.true191:                                 ; preds = %if.end185
  %119 = load i8, ptr %ch, align 1, !dbg !594
  %conv192 = zext i8 %119 to i32, !dbg !594
  %idxprom193 = sext i32 %conv192 to i64, !dbg !594
  %arrayidx194 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom193, !dbg !594
  %120 = load i8, ptr %arrayidx194, align 1, !dbg !594
  %conv195 = zext i8 %120 to i32, !dbg !594
  %and196 = and i32 %conv195, 151, !dbg !594
  %cmp197 = icmp ne i32 %and196, 0, !dbg !594
  br i1 %cmp197, label %cond.true, label %cond.false, !dbg !595

cond.true:                                        ; preds = %land.lhs.true191
  %121 = load i8, ptr %ch, align 1, !dbg !596
  %conv199 = zext i8 %121 to i32, !dbg !596
  br label %cond.end, !dbg !595

cond.false:                                       ; preds = %land.lhs.true191, %if.end185
  br label %cond.end, !dbg !595

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond200 = phi i32 [ %conv199, %cond.true ], [ 46, %cond.false ], !dbg !595
  %conv201 = trunc i32 %cond200 to i8, !dbg !595
  %122 = load ptr, ptr %linebuf.addr, align 8, !dbg !597
  %123 = load i32, ptr %lx, align 4, !dbg !598
  %inc202 = add i32 %123, 1, !dbg !598
  store i32 %inc202, ptr %lx, align 4, !dbg !598
  %idxprom203 = sext i32 %123 to i64, !dbg !597
  %arrayidx204 = getelementptr i8, ptr %122, i64 %idxprom203, !dbg !597
  store i8 %conv201, ptr %arrayidx204, align 1, !dbg !599
  br label %for.inc205, !dbg !600

for.inc205:                                       ; preds = %cond.end
  %124 = load i32, ptr %j, align 4, !dbg !601
  %inc206 = add i32 %124, 1, !dbg !601
  store i32 %inc206, ptr %j, align 4, !dbg !601
  br label %for.cond175, !dbg !602, !llvm.loop !603

for.end207:                                       ; preds = %for.cond175
  br label %nil, !dbg !604

nil:                                              ; preds = %for.end207, %if.then162, %if.then24
  call void @llvm.dbg.label(metadata !103), !dbg !605
  %125 = load ptr, ptr %linebuf.addr, align 8, !dbg !606
  %126 = load i32, ptr %lx, align 4, !dbg !607
  %idxprom208 = sext i32 %126 to i64, !dbg !606
  %arrayidx209 = getelementptr i8, ptr %125, i64 %idxprom208, !dbg !606
  store i8 0, ptr %arrayidx209, align 1, !dbg !608
  %127 = load i32, ptr %lx, align 4, !dbg !609
  store i32 %127, ptr %retval, align 4, !dbg !610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227, !dbg !610

overflow2:                                        ; preds = %if.then184, %if.then170, %if.then147, %if.then134, %if.then122
  call void @llvm.dbg.label(metadata !104), !dbg !611
  %128 = load ptr, ptr %linebuf.addr, align 8, !dbg !612
  %129 = load i32, ptr %lx, align 4, !dbg !613
  %inc210 = add i32 %129, 1, !dbg !613
  store i32 %inc210, ptr %lx, align 4, !dbg !613
  %idxprom211 = sext i32 %129 to i64, !dbg !612
  %arrayidx212 = getelementptr i8, ptr %128, i64 %idxprom211, !dbg !612
  store i8 0, ptr %arrayidx212, align 1, !dbg !614
  br label %overflow1, !dbg !612

overflow1:                                        ; preds = %overflow2, %cleanup109, %cleanup74, %cleanup, %if.then21
  call void @llvm.dbg.label(metadata !105), !dbg !615
  %130 = load i8, ptr %ascii.addr, align 1, !dbg !616, !range !552, !noundef !553
  %tobool213 = trunc i8 %130 to i1, !dbg !616
  br i1 %tobool213, label %cond.true215, label %cond.false218, !dbg !616

cond.true215:                                     ; preds = %overflow1
  %131 = load i32, ptr %ascii_column, align 4, !dbg !617
  %conv216 = sext i32 %131 to i64, !dbg !617
  %132 = load i64, ptr %len.addr, align 8, !dbg !618
  %add217 = add i64 %conv216, %132, !dbg !619
  br label %cond.end224, !dbg !616

cond.false218:                                    ; preds = %overflow1
  %133 = load i32, ptr %groupsize.addr, align 4, !dbg !620
  %mul219 = mul i32 %133, 2, !dbg !621
  %add220 = add i32 %mul219, 1, !dbg !622
  %134 = load i32, ptr %ngroups, align 4, !dbg !623
  %mul221 = mul i32 %add220, %134, !dbg !624
  %sub222 = sub i32 %mul221, 1, !dbg !625
  %conv223 = sext i32 %sub222 to i64, !dbg !626
  br label %cond.end224, !dbg !616

cond.end224:                                      ; preds = %cond.false218, %cond.true215
  %cond225 = phi i64 [ %add217, %cond.true215 ], [ %conv223, %cond.false218 ], !dbg !616
  %conv226 = trunc i64 %cond225 to i32, !dbg !616
  store i32 %conv226, ptr %retval, align 4, !dbg !627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227, !dbg !627

cleanup227:                                       ; preds = %cond.end224, %nil, %cleanup109, %cleanup74, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %ascii_column) #8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %lx) #8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngroups) #8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !628
  %135 = load i32, ptr %retval, align 4, !dbg !628
  ret i32 %135, !dbg !628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #5 align 16 !dbg !629 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load i64, ptr %n.addr, align 8, !dbg !636
  %cmp = icmp ne i64 %0, 0, !dbg !637
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !638

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !639
  %2 = load i64, ptr %n.addr, align 8, !dbg !640
  %sub = sub i64 %2, 1, !dbg !641
  %and = and i64 %1, %sub, !dbg !642
  %cmp1 = icmp eq i64 %and, 0, !dbg !643
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !644
  ret i1 %3, !dbg !645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !646 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @print_hex_dump(ptr noundef %level, ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %buf, i64 noundef %len, i1 noundef zeroext %ascii) #0 align 16 !dbg !650 {
entry:
  %level.addr = alloca ptr, align 8
  %prefix_str.addr = alloca ptr, align 8
  %prefix_type.addr = alloca i32, align 4
  %rowsize.addr = alloca i32, align 4
  %groupsize.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ascii.addr = alloca i8, align 1
  %ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %linelen = alloca i32, align 4
  %remaining = alloca i32, align 4
  %linebuf = alloca [131 x i8], align 16
  %__UNIQUE_ID___x9 = alloca i32, align 4
  %__UNIQUE_ID___y10 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !654, metadata !DIExpression()), !dbg !676
  store ptr %prefix_str, ptr %prefix_str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_str.addr, metadata !655, metadata !DIExpression()), !dbg !677
  store i32 %prefix_type, ptr %prefix_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prefix_type.addr, metadata !656, metadata !DIExpression()), !dbg !678
  store i32 %rowsize, ptr %rowsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rowsize.addr, metadata !657, metadata !DIExpression()), !dbg !679
  store i32 %groupsize, ptr %groupsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %groupsize.addr, metadata !658, metadata !DIExpression()), !dbg !680
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !659, metadata !DIExpression()), !dbg !681
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !660, metadata !DIExpression()), !dbg !682
  %frombool = zext i1 %ascii to i8
  store i8 %frombool, ptr %ascii.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascii.addr, metadata !661, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !662, metadata !DIExpression()), !dbg !685
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !686
  store ptr %0, ptr %ptr, align 8, !dbg !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %i, metadata !663, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 4, ptr %linelen) #8, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %linelen, metadata !664, metadata !DIExpression()), !dbg !689
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining) #8, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %remaining, metadata !665, metadata !DIExpression()), !dbg !690
  %1 = load i64, ptr %len.addr, align 8, !dbg !691
  %conv = trunc i64 %1 to i32, !dbg !691
  store i32 %conv, ptr %remaining, align 4, !dbg !690
  call void @llvm.lifetime.start.p0(i64 131, ptr %linebuf) #8, !dbg !692
  call void @llvm.dbg.declare(metadata ptr %linebuf, metadata !666, metadata !DIExpression()), !dbg !693
  %2 = load i32, ptr %rowsize.addr, align 4, !dbg !694
  %cmp = icmp ne i32 %2, 16, !dbg !696
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !697

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %rowsize.addr, align 4, !dbg !698
  %cmp2 = icmp ne i32 %3, 32, !dbg !699
  br i1 %cmp2, label %if.then, label %if.end, !dbg !700

if.then:                                          ; preds = %land.lhs.true
  store i32 16, ptr %rowsize.addr, align 4, !dbg !701
  br label %if.end, !dbg !702

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4, !dbg !703
  br label %for.cond, !dbg !704

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !705
  %conv4 = sext i32 %4 to i64, !dbg !705
  %5 = load i64, ptr %len.addr, align 8, !dbg !706
  %cmp5 = icmp ult i64 %conv4, %5, !dbg !707
  br i1 %cmp5, label %for.body, label %for.end, !dbg !708

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x9) #8, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x9, metadata !670, metadata !DIExpression()), !dbg !709
  %6 = load i32, ptr %remaining, align 4, !dbg !709
  store i32 %6, ptr %__UNIQUE_ID___x9, align 4, !dbg !709
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y10) #8, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y10, metadata !675, metadata !DIExpression()), !dbg !709
  %7 = load i32, ptr %rowsize.addr, align 4, !dbg !709
  store i32 %7, ptr %__UNIQUE_ID___y10, align 4, !dbg !709
  %8 = load i32, ptr %__UNIQUE_ID___x9, align 4, !dbg !709
  %9 = load i32, ptr %__UNIQUE_ID___y10, align 4, !dbg !709
  %cmp7 = icmp slt i32 %8, %9, !dbg !709
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !709

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %__UNIQUE_ID___x9, align 4, !dbg !709
  br label %cond.end, !dbg !709

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %__UNIQUE_ID___y10, align 4, !dbg !709
  br label %cond.end, !dbg !709

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !709
  store i32 %cond, ptr %tmp, align 4, !dbg !709
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y10) #8, !dbg !710
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x9) #8, !dbg !710
  %12 = load i32, ptr %tmp, align 4, !dbg !709
  store i32 %12, ptr %linelen, align 4, !dbg !711
  %13 = load i32, ptr %rowsize.addr, align 4, !dbg !712
  %14 = load i32, ptr %remaining, align 4, !dbg !713
  %sub = sub i32 %14, %13, !dbg !713
  store i32 %sub, ptr %remaining, align 4, !dbg !713
  %15 = load ptr, ptr %ptr, align 8, !dbg !714
  %16 = load i32, ptr %i, align 4, !dbg !715
  %idx.ext = sext i32 %16 to i64, !dbg !716
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.ext, !dbg !716
  %17 = load i32, ptr %linelen, align 4, !dbg !717
  %conv9 = sext i32 %17 to i64, !dbg !717
  %18 = load i32, ptr %rowsize.addr, align 4, !dbg !718
  %19 = load i32, ptr %groupsize.addr, align 4, !dbg !719
  %arraydecay = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !720
  %20 = load i8, ptr %ascii.addr, align 1, !dbg !721, !range !552, !noundef !553
  %tobool = trunc i8 %20 to i1, !dbg !721
  %call = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i64 noundef %conv9, i32 noundef %18, i32 noundef %19, ptr noundef %arraydecay, i64 noundef 131, i1 noundef zeroext %tobool) #9, !dbg !722
  %21 = load i32, ptr %prefix_type.addr, align 4, !dbg !723
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
  ], !dbg !724

sw.bb:                                            ; preds = %cond.end
  br label %do.body, !dbg !725

do.body:                                          ; preds = %sw.bb
  br label %do.cond, !dbg !728

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !728

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %level.addr, align 8, !dbg !725
  %23 = load ptr, ptr %prefix_str.addr, align 8, !dbg !725
  %24 = load ptr, ptr %ptr, align 8, !dbg !725
  %25 = load i32, ptr %i, align 4, !dbg !725
  %idx.ext11 = sext i32 %25 to i64, !dbg !725
  %add.ptr12 = getelementptr i8, ptr %24, i64 %idx.ext11, !dbg !725
  %arraydecay13 = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !725
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %22, ptr noundef %23, ptr noundef %add.ptr12, ptr noundef %arraydecay13) #11, !dbg !725
  store i32 %call14, ptr %tmp10, align 4, !dbg !728
  %26 = load i32, ptr %tmp10, align 4, !dbg !725
  br label %sw.epilog, !dbg !730

sw.bb15:                                          ; preds = %cond.end
  br label %do.body16, !dbg !731

do.body16:                                        ; preds = %sw.bb15
  br label %do.cond17, !dbg !733

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !733

do.end18:                                         ; preds = %do.cond17
  %27 = load ptr, ptr %level.addr, align 8, !dbg !731
  %28 = load ptr, ptr %prefix_str.addr, align 8, !dbg !731
  %29 = load i32, ptr %i, align 4, !dbg !731
  %arraydecay20 = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !731
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %arraydecay20) #11, !dbg !731
  store i32 %call21, ptr %tmp19, align 4, !dbg !733
  %30 = load i32, ptr %tmp19, align 4, !dbg !731
  br label %sw.epilog, !dbg !735

sw.default:                                       ; preds = %cond.end
  br label %do.body22, !dbg !736

do.body22:                                        ; preds = %sw.default
  br label %do.cond23, !dbg !738

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !738

do.end24:                                         ; preds = %do.cond23
  %31 = load ptr, ptr %level.addr, align 8, !dbg !736
  %32 = load ptr, ptr %prefix_str.addr, align 8, !dbg !736
  %arraydecay26 = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !736
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef %31, ptr noundef %32, ptr noundef %arraydecay26) #11, !dbg !736
  store i32 %call27, ptr %tmp25, align 4, !dbg !738
  %33 = load i32, ptr %tmp25, align 4, !dbg !736
  br label %sw.epilog, !dbg !740

sw.epilog:                                        ; preds = %do.end24, %do.end18, %do.end
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %sw.epilog
  %34 = load i32, ptr %rowsize.addr, align 4, !dbg !742
  %35 = load i32, ptr %i, align 4, !dbg !743
  %add = add i32 %35, %34, !dbg !743
  store i32 %add, ptr %i, align 4, !dbg !743
  br label %for.cond, !dbg !744, !llvm.loop !745

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 131, ptr %linebuf) #8, !dbg !747
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining) #8, !dbg !747
  call void @llvm.lifetime.end.p0(i64 4, ptr %linelen) #8, !dbg !747
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !747
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !747
  ret void, !dbg !747
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !748 dso_local i32 @_printk(ptr noundef, ...) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind willreturn memory(none) }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hex_asc", scope: !2, file: !3, line: 14, type: !113, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.hexdump.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/hexdump\22 -D KBUILD_BASENAME=\22hexdump\22 -D KBUILD_MODNAME=\22hexdump\22 -D __KBUILD_MODNAME=kmod_hexdump -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/hexdump.ll lib/hexdump.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !108, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/hexdump.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "611e2dbc6c88b913d4bddb0acd7c54d9")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 704, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "DUMP_PREFIX_NONE", value: 0)
!10 = !DIEnumerator(name: "DUMP_PREFIX_ADDRESS", value: 1)
!11 = !DIEnumerator(name: "DUMP_PREFIX_OFFSET", value: 2)
!12 = !{!13, !7, !14, !80, !98, !48, !20}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 162, size: 64, elements: !106)
!17 = distinct !DISubprogram(name: "hex_dump_to_buffer", scope: !3, file: !3, line: 127, type: !18, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !23, !20, !20, !29, !23, !31}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 61, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !26, line: 72, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !26, line: 16, baseType: !28)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 35, baseType: !32)
!32 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !49, !50, !51, !52, !53, !54, !55, !63, !68, !75, !85, !93, !103, !104, !105}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !17, file: !3, line: 127, type: !21)
!35 = !DILocalVariable(name: "len", arg: 2, scope: !17, file: !3, line: 127, type: !23)
!36 = !DILocalVariable(name: "rowsize", arg: 3, scope: !17, file: !3, line: 127, type: !20)
!37 = !DILocalVariable(name: "groupsize", arg: 4, scope: !17, file: !3, line: 127, type: !20)
!38 = !DILocalVariable(name: "linebuf", arg: 5, scope: !17, file: !3, line: 128, type: !29)
!39 = !DILocalVariable(name: "linebuflen", arg: 6, scope: !17, file: !3, line: 128, type: !23)
!40 = !DILocalVariable(name: "ascii", arg: 7, scope: !17, file: !3, line: 128, type: !31)
!41 = !DILocalVariable(name: "ptr", scope: !17, file: !3, line: 130, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 17, baseType: !46)
!45 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !48)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DILocalVariable(name: "ngroups", scope: !17, file: !3, line: 131, type: !20)
!50 = !DILocalVariable(name: "ch", scope: !17, file: !3, line: 132, type: !44)
!51 = !DILocalVariable(name: "j", scope: !17, file: !3, line: 133, type: !20)
!52 = !DILocalVariable(name: "lx", scope: !17, file: !3, line: 133, type: !20)
!53 = !DILocalVariable(name: "ascii_column", scope: !17, file: !3, line: 134, type: !20)
!54 = !DILocalVariable(name: "ret", scope: !17, file: !3, line: 135, type: !20)
!55 = !DILocalVariable(name: "ptr8", scope: !56, file: !3, line: 157, type: !58)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 156, column: 22)
!57 = distinct !DILexicalBlock(scope: !17, file: !3, line: 156, column: 6)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !45, line: 23, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !62)
!62 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DILocalVariable(name: "__pptr", scope: !64, file: !3, line: 162, type: !14)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 162, column: 12)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 159, column: 33)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 159, column: 3)
!67 = distinct !DILexicalBlock(scope: !56, file: !3, line: 159, column: 3)
!68 = !DILocalVariable(name: "ptr4", scope: !69, file: !3, line: 168, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 167, column: 29)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 167, column: 13)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !45, line: 21, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !7)
!75 = !DILocalVariable(name: "__pptr", scope: !76, file: !3, line: 173, type: !80)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 173, column: 12)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 170, column: 33)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 170, column: 3)
!79 = distinct !DILexicalBlock(scope: !69, file: !3, line: 170, column: 3)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 173, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !82, file: !3, line: 173, baseType: !72, size: 32)
!85 = !DILocalVariable(name: "ptr2", scope: !86, file: !3, line: 179, type: !88)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 178, column: 29)
!87 = distinct !DILexicalBlock(scope: !70, file: !3, line: 178, column: 13)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 19, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DILocalVariable(name: "__pptr", scope: !94, file: !3, line: 184, type: !98)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 184, column: 12)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 181, column: 33)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 181, column: 3)
!97 = distinct !DILexicalBlock(scope: !86, file: !3, line: 181, column: 3)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 184, size: 16, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !100, file: !3, line: 184, baseType: !89, size: 16)
!103 = !DILabel(scope: !17, name: "nil", file: !3, line: 219)
!104 = !DILabel(scope: !17, name: "overflow2", file: !3, line: 222)
!105 = !DILabel(scope: !17, name: "overflow1", file: !3, line: 224)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !16, file: !3, line: 162, baseType: !59, size: 64)
!108 = !{!0, !109, !111, !117, !119, !121, !123, !125, !130, !135, !140, !145, !147, !149, !151, !156, !158}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hex_asc3", scope: !2, file: !3, line: 15, type: !13, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "hex_asc_upper", scope: !2, file: !3, line: 16, type: !113, isLocal: false, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 136, elements: !115)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!115 = !{!116}
!116 = !DISubrange(count: 17)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hex_asc_upper4", scope: !2, file: !3, line: 17, type: !13, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hex_to_bin5", scope: !2, file: !3, line: 53, type: !13, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hex2bin6", scope: !2, file: !3, line: 79, type: !13, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bin2hex7", scope: !2, file: !3, line: 95, type: !13, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 96, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 12)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 2)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 1)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !142, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hex_dump_to_buffer8", scope: !2, file: !3, line: 227, type: !13, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !127, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 14)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !142, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_print_hex_dump11", scope: !2, file: !3, line: 293, type: !13, isLocal: true, isDefinition: true)
!160 = !{i32 7, !"Dwarf Version", i32 5}
!161 = !{i32 2, !"Debug Info Version", i32 3}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 8, !"cf-protection-branch", i32 1}
!164 = !{i32 4, !"function_return_thunk_extern", i32 1}
!165 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!166 = !{i32 1, !"Code Model", i32 2}
!167 = !{i32 1, !"override-stack-alignment", i32 8}
!168 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!169 = distinct !DISubprogram(name: "hex_to_bin", scope: !3, file: !3, line: 46, type: !170, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{!20, !48}
!172 = !{!173, !174}
!173 = !DILocalVariable(name: "ch", arg: 1, scope: !169, file: !3, line: 46, type: !48)
!174 = !DILocalVariable(name: "cu", scope: !169, file: !3, line: 48, type: !48)
!175 = !DILocation(line: 46, column: 30, scope: !169)
!176 = !DILocation(line: 48, column: 2, scope: !169)
!177 = !DILocation(line: 48, column: 16, scope: !169)
!178 = !DILocation(line: 48, column: 21, scope: !169)
!179 = !DILocation(line: 48, column: 24, scope: !169)
!180 = !DILocation(line: 50, column: 5, scope: !169)
!181 = !DILocation(line: 50, column: 8, scope: !169)
!182 = !DILocation(line: 50, column: 14, scope: !169)
!183 = !DILocation(line: 50, column: 34, scope: !169)
!184 = !DILocation(line: 50, column: 37, scope: !169)
!185 = !DILocation(line: 50, column: 43, scope: !169)
!186 = !DILocation(line: 50, column: 61, scope: !169)
!187 = !DILocation(line: 50, column: 59, scope: !169)
!188 = !DILocation(line: 50, column: 48, scope: !169)
!189 = !DILocation(line: 50, column: 66, scope: !169)
!190 = !DILocation(line: 50, column: 20, scope: !169)
!191 = !DILocation(line: 49, column: 12, scope: !169)
!192 = !DILocation(line: 51, column: 5, scope: !169)
!193 = !DILocation(line: 51, column: 8, scope: !169)
!194 = !DILocation(line: 51, column: 14, scope: !169)
!195 = !DILocation(line: 51, column: 34, scope: !169)
!196 = !DILocation(line: 51, column: 37, scope: !169)
!197 = !DILocation(line: 51, column: 43, scope: !169)
!198 = !DILocation(line: 51, column: 61, scope: !169)
!199 = !DILocation(line: 51, column: 59, scope: !169)
!200 = !DILocation(line: 51, column: 48, scope: !169)
!201 = !DILocation(line: 51, column: 66, scope: !169)
!202 = !DILocation(line: 51, column: 20, scope: !169)
!203 = !DILocation(line: 50, column: 72, scope: !169)
!204 = !DILocation(line: 52, column: 1, scope: !169)
!205 = !DILocation(line: 49, column: 2, scope: !169)
!206 = distinct !DISubprogram(name: "hex2bin", scope: !3, file: !3, line: 63, type: !207, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!207 = !DISubroutineType(types: !208)
!208 = !{!20, !209, !210, !23}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!211 = !{!212, !213, !214, !215, !217}
!212 = !DILocalVariable(name: "dst", arg: 1, scope: !206, file: !3, line: 63, type: !209)
!213 = !DILocalVariable(name: "src", arg: 2, scope: !206, file: !3, line: 63, type: !210)
!214 = !DILocalVariable(name: "count", arg: 3, scope: !206, file: !3, line: 63, type: !23)
!215 = !DILocalVariable(name: "hi", scope: !216, file: !3, line: 66, type: !20)
!216 = distinct !DILexicalBlock(scope: !206, file: !3, line: 65, column: 18)
!217 = !DILocalVariable(name: "lo", scope: !216, file: !3, line: 66, type: !20)
!218 = !DILocation(line: 63, column: 17, scope: !206)
!219 = !DILocation(line: 63, column: 34, scope: !206)
!220 = !DILocation(line: 63, column: 46, scope: !206)
!221 = !DILocation(line: 65, column: 2, scope: !206)
!222 = !DILocation(line: 65, column: 14, scope: !206)
!223 = !DILocation(line: 66, column: 3, scope: !216)
!224 = !DILocation(line: 66, column: 7, scope: !216)
!225 = !DILocation(line: 66, column: 11, scope: !216)
!226 = !DILocation(line: 68, column: 23, scope: !216)
!227 = !DILocation(line: 68, column: 19, scope: !216)
!228 = !DILocation(line: 68, column: 8, scope: !216)
!229 = !DILocation(line: 68, column: 6, scope: !216)
!230 = !DILocation(line: 69, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !3, line: 69, column: 7)
!232 = !DILocation(line: 69, column: 7, scope: !216)
!233 = !DILocation(line: 70, column: 4, scope: !231)
!234 = !DILocation(line: 71, column: 23, scope: !216)
!235 = !DILocation(line: 71, column: 19, scope: !216)
!236 = !DILocation(line: 71, column: 8, scope: !216)
!237 = !DILocation(line: 71, column: 6, scope: !216)
!238 = !DILocation(line: 72, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !216, file: !3, line: 72, column: 7)
!240 = !DILocation(line: 72, column: 7, scope: !216)
!241 = !DILocation(line: 73, column: 4, scope: !239)
!242 = !DILocation(line: 75, column: 13, scope: !216)
!243 = !DILocation(line: 75, column: 16, scope: !216)
!244 = !DILocation(line: 75, column: 24, scope: !216)
!245 = !DILocation(line: 75, column: 22, scope: !216)
!246 = !DILocation(line: 75, column: 12, scope: !216)
!247 = !DILocation(line: 75, column: 7, scope: !216)
!248 = !DILocation(line: 75, column: 10, scope: !216)
!249 = !DILocation(line: 76, column: 2, scope: !206)
!250 = distinct !{!250, !221, !249, !251, !252}
!251 = !{!"llvm.loop.mustprogress"}
!252 = !{!"llvm.loop.unroll.disable"}
!253 = !DILocation(line: 77, column: 2, scope: !206)
!254 = !DILocation(line: 78, column: 1, scope: !206)
!255 = distinct !DISubprogram(name: "bin2hex", scope: !3, file: !3, line: 87, type: !256, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{!29, !29, !21, !23}
!258 = !{!259, !260, !261, !262}
!259 = !DILocalVariable(name: "dst", arg: 1, scope: !255, file: !3, line: 87, type: !29)
!260 = !DILocalVariable(name: "src", arg: 2, scope: !255, file: !3, line: 87, type: !21)
!261 = !DILocalVariable(name: "count", arg: 3, scope: !255, file: !3, line: 87, type: !23)
!262 = !DILocalVariable(name: "_src", scope: !255, file: !3, line: 89, type: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!265 = !DILocation(line: 87, column: 21, scope: !255)
!266 = !DILocation(line: 87, column: 38, scope: !255)
!267 = !DILocation(line: 87, column: 50, scope: !255)
!268 = !DILocation(line: 89, column: 2, scope: !255)
!269 = !DILocation(line: 89, column: 23, scope: !255)
!270 = !DILocation(line: 89, column: 30, scope: !255)
!271 = !DILocation(line: 91, column: 2, scope: !255)
!272 = !DILocation(line: 91, column: 14, scope: !255)
!273 = !DILocation(line: 92, column: 23, scope: !255)
!274 = !DILocation(line: 92, column: 33, scope: !255)
!275 = !DILocation(line: 92, column: 28, scope: !255)
!276 = !DILocation(line: 92, column: 9, scope: !255)
!277 = !DILocation(line: 92, column: 7, scope: !255)
!278 = distinct !{!278, !271, !279, !251, !252}
!279 = !DILocation(line: 92, column: 35, scope: !255)
!280 = !DILocation(line: 93, column: 9, scope: !255)
!281 = !DILocation(line: 94, column: 1, scope: !255)
!282 = !DILocation(line: 93, column: 2, scope: !255)
!283 = distinct !DISubprogram(name: "hex_byte_pack", scope: !284, file: !284, line: 11, type: !285, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!284 = !DIFile(filename: "./include/linux/hex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6eb26d4dbd04841a1512df2f8e16e7dd")
!285 = !DISubroutineType(types: !286)
!286 = !{!29, !29, !44}
!287 = !{!288, !289}
!288 = !DILocalVariable(name: "buf", arg: 1, scope: !283, file: !284, line: 11, type: !29)
!289 = !DILocalVariable(name: "byte", arg: 2, scope: !283, file: !284, line: 11, type: !44)
!290 = !DILocation(line: 11, column: 41, scope: !283)
!291 = !DILocation(line: 11, column: 49, scope: !283)
!292 = !DILocation(line: 13, column: 11, scope: !283)
!293 = !DILocation(line: 13, column: 6, scope: !283)
!294 = !DILocation(line: 13, column: 9, scope: !283)
!295 = !DILocation(line: 14, column: 11, scope: !283)
!296 = !DILocation(line: 14, column: 6, scope: !283)
!297 = !DILocation(line: 14, column: 9, scope: !283)
!298 = !DILocation(line: 15, column: 9, scope: !283)
!299 = !DILocation(line: 15, column: 2, scope: !283)
!300 = !DILocation(line: 127, column: 36, scope: !17)
!301 = !DILocation(line: 127, column: 48, scope: !17)
!302 = !DILocation(line: 127, column: 57, scope: !17)
!303 = !DILocation(line: 127, column: 70, scope: !17)
!304 = !DILocation(line: 128, column: 16, scope: !17)
!305 = !DILocation(line: 128, column: 32, scope: !17)
!306 = !DILocation(line: 128, column: 49, scope: !17)
!307 = !DILocation(line: 130, column: 2, scope: !17)
!308 = !DILocation(line: 130, column: 12, scope: !17)
!309 = !DILocation(line: 130, column: 18, scope: !17)
!310 = !DILocation(line: 131, column: 2, scope: !17)
!311 = !DILocation(line: 131, column: 6, scope: !17)
!312 = !DILocation(line: 132, column: 2, scope: !17)
!313 = !DILocation(line: 132, column: 5, scope: !17)
!314 = !DILocation(line: 133, column: 2, scope: !17)
!315 = !DILocation(line: 133, column: 6, scope: !17)
!316 = !DILocation(line: 133, column: 9, scope: !17)
!317 = !DILocation(line: 134, column: 2, scope: !17)
!318 = !DILocation(line: 134, column: 6, scope: !17)
!319 = !DILocation(line: 135, column: 2, scope: !17)
!320 = !DILocation(line: 135, column: 6, scope: !17)
!321 = !DILocation(line: 137, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !17, file: !3, line: 137, column: 6)
!323 = !DILocation(line: 137, column: 14, scope: !322)
!324 = !DILocation(line: 137, column: 20, scope: !322)
!325 = !DILocation(line: 137, column: 23, scope: !322)
!326 = !DILocation(line: 137, column: 31, scope: !322)
!327 = !DILocation(line: 137, column: 6, scope: !17)
!328 = !DILocation(line: 138, column: 11, scope: !322)
!329 = !DILocation(line: 138, column: 3, scope: !322)
!330 = !DILocation(line: 140, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !17, file: !3, line: 140, column: 6)
!332 = !DILocation(line: 140, column: 12, scope: !331)
!333 = !DILocation(line: 140, column: 10, scope: !331)
!334 = !DILocation(line: 140, column: 6, scope: !17)
!335 = !DILocation(line: 141, column: 9, scope: !331)
!336 = !DILocation(line: 141, column: 7, scope: !331)
!337 = !DILocation(line: 141, column: 3, scope: !331)
!338 = !DILocation(line: 142, column: 21, scope: !339)
!339 = distinct !DILexicalBlock(scope: !17, file: !3, line: 142, column: 6)
!340 = !DILocation(line: 142, column: 7, scope: !339)
!341 = !DILocation(line: 142, column: 32, scope: !339)
!342 = !DILocation(line: 142, column: 35, scope: !339)
!343 = !DILocation(line: 142, column: 45, scope: !339)
!344 = !DILocation(line: 142, column: 6, scope: !17)
!345 = !DILocation(line: 143, column: 13, scope: !339)
!346 = !DILocation(line: 143, column: 3, scope: !339)
!347 = !DILocation(line: 144, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !17, file: !3, line: 144, column: 6)
!349 = !DILocation(line: 144, column: 13, scope: !348)
!350 = !DILocation(line: 144, column: 11, scope: !348)
!351 = !DILocation(line: 144, column: 24, scope: !348)
!352 = !DILocation(line: 144, column: 6, scope: !17)
!353 = !DILocation(line: 145, column: 13, scope: !348)
!354 = !DILocation(line: 145, column: 3, scope: !348)
!355 = !DILocation(line: 147, column: 12, scope: !17)
!356 = !DILocation(line: 147, column: 18, scope: !17)
!357 = !DILocation(line: 147, column: 16, scope: !17)
!358 = !DILocation(line: 147, column: 10, scope: !17)
!359 = !DILocation(line: 148, column: 17, scope: !17)
!360 = !DILocation(line: 148, column: 25, scope: !17)
!361 = !DILocation(line: 148, column: 31, scope: !17)
!362 = !DILocation(line: 148, column: 41, scope: !17)
!363 = !DILocation(line: 148, column: 39, scope: !17)
!364 = !DILocation(line: 148, column: 29, scope: !17)
!365 = !DILocation(line: 148, column: 51, scope: !17)
!366 = !DILocation(line: 148, column: 15, scope: !17)
!367 = !DILocation(line: 150, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !17, file: !3, line: 150, column: 6)
!369 = !DILocation(line: 150, column: 6, scope: !17)
!370 = !DILocation(line: 151, column: 3, scope: !368)
!371 = !DILocation(line: 153, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !17, file: !3, line: 153, column: 6)
!373 = !DILocation(line: 153, column: 6, scope: !17)
!374 = !DILocation(line: 154, column: 3, scope: !372)
!375 = !DILocation(line: 156, column: 6, scope: !57)
!376 = !DILocation(line: 156, column: 16, scope: !57)
!377 = !DILocation(line: 156, column: 6, scope: !17)
!378 = !DILocation(line: 157, column: 3, scope: !56)
!379 = !DILocation(line: 157, column: 14, scope: !56)
!380 = !DILocation(line: 157, column: 21, scope: !56)
!381 = !DILocation(line: 159, column: 10, scope: !67)
!382 = !DILocation(line: 159, column: 8, scope: !67)
!383 = !DILocation(line: 159, column: 15, scope: !66)
!384 = !DILocation(line: 159, column: 19, scope: !66)
!385 = !DILocation(line: 159, column: 17, scope: !66)
!386 = !DILocation(line: 159, column: 3, scope: !67)
!387 = !DILocation(line: 160, column: 19, scope: !65)
!388 = !DILocation(line: 160, column: 29, scope: !65)
!389 = !DILocation(line: 160, column: 27, scope: !65)
!390 = !DILocation(line: 160, column: 33, scope: !65)
!391 = !DILocation(line: 160, column: 46, scope: !65)
!392 = !DILocation(line: 160, column: 44, scope: !65)
!393 = !DILocation(line: 161, column: 27, scope: !65)
!394 = !DILocation(line: 162, column: 12, scope: !64)
!395 = !DILocation(line: 162, column: 12, scope: !65)
!396 = !DILocation(line: 160, column: 10, scope: !65)
!397 = !DILocation(line: 160, column: 8, scope: !65)
!398 = !DILocation(line: 163, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !65, file: !3, line: 163, column: 8)
!400 = !DILocation(line: 163, column: 15, scope: !399)
!401 = !DILocation(line: 163, column: 28, scope: !399)
!402 = !DILocation(line: 163, column: 26, scope: !399)
!403 = !DILocation(line: 163, column: 12, scope: !399)
!404 = !DILocation(line: 163, column: 8, scope: !65)
!405 = !DILocation(line: 164, column: 5, scope: !399)
!406 = !DILocation(line: 165, column: 10, scope: !65)
!407 = !DILocation(line: 165, column: 7, scope: !65)
!408 = !DILocation(line: 166, column: 3, scope: !65)
!409 = !DILocation(line: 159, column: 29, scope: !66)
!410 = !DILocation(line: 159, column: 3, scope: !66)
!411 = distinct !{!411, !386, !412, !251, !252}
!412 = !DILocation(line: 166, column: 3, scope: !67)
!413 = !DILocation(line: 167, column: 2, scope: !57)
!414 = !DILocation(line: 167, column: 2, scope: !56)
!415 = !DILocation(line: 167, column: 13, scope: !70)
!416 = !DILocation(line: 167, column: 23, scope: !70)
!417 = !DILocation(line: 167, column: 13, scope: !57)
!418 = !DILocation(line: 168, column: 3, scope: !69)
!419 = !DILocation(line: 168, column: 14, scope: !69)
!420 = !DILocation(line: 168, column: 21, scope: !69)
!421 = !DILocation(line: 170, column: 10, scope: !79)
!422 = !DILocation(line: 170, column: 8, scope: !79)
!423 = !DILocation(line: 170, column: 15, scope: !78)
!424 = !DILocation(line: 170, column: 19, scope: !78)
!425 = !DILocation(line: 170, column: 17, scope: !78)
!426 = !DILocation(line: 170, column: 3, scope: !79)
!427 = !DILocation(line: 171, column: 19, scope: !77)
!428 = !DILocation(line: 171, column: 29, scope: !77)
!429 = !DILocation(line: 171, column: 27, scope: !77)
!430 = !DILocation(line: 171, column: 33, scope: !77)
!431 = !DILocation(line: 171, column: 46, scope: !77)
!432 = !DILocation(line: 171, column: 44, scope: !77)
!433 = !DILocation(line: 172, column: 23, scope: !77)
!434 = !DILocation(line: 173, column: 12, scope: !76)
!435 = !DILocation(line: 173, column: 12, scope: !77)
!436 = !DILocation(line: 171, column: 10, scope: !77)
!437 = !DILocation(line: 171, column: 8, scope: !77)
!438 = !DILocation(line: 174, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !77, file: !3, line: 174, column: 8)
!440 = !DILocation(line: 174, column: 15, scope: !439)
!441 = !DILocation(line: 174, column: 28, scope: !439)
!442 = !DILocation(line: 174, column: 26, scope: !439)
!443 = !DILocation(line: 174, column: 12, scope: !439)
!444 = !DILocation(line: 174, column: 8, scope: !77)
!445 = !DILocation(line: 175, column: 5, scope: !439)
!446 = !DILocation(line: 176, column: 10, scope: !77)
!447 = !DILocation(line: 176, column: 7, scope: !77)
!448 = !DILocation(line: 177, column: 3, scope: !77)
!449 = !DILocation(line: 170, column: 29, scope: !78)
!450 = !DILocation(line: 170, column: 3, scope: !78)
!451 = distinct !{!451, !426, !452, !251, !252}
!452 = !DILocation(line: 177, column: 3, scope: !79)
!453 = !DILocation(line: 178, column: 2, scope: !70)
!454 = !DILocation(line: 178, column: 2, scope: !69)
!455 = !DILocation(line: 178, column: 13, scope: !87)
!456 = !DILocation(line: 178, column: 23, scope: !87)
!457 = !DILocation(line: 178, column: 13, scope: !70)
!458 = !DILocation(line: 179, column: 3, scope: !86)
!459 = !DILocation(line: 179, column: 14, scope: !86)
!460 = !DILocation(line: 179, column: 21, scope: !86)
!461 = !DILocation(line: 181, column: 10, scope: !97)
!462 = !DILocation(line: 181, column: 8, scope: !97)
!463 = !DILocation(line: 181, column: 15, scope: !96)
!464 = !DILocation(line: 181, column: 19, scope: !96)
!465 = !DILocation(line: 181, column: 17, scope: !96)
!466 = !DILocation(line: 181, column: 3, scope: !97)
!467 = !DILocation(line: 182, column: 19, scope: !95)
!468 = !DILocation(line: 182, column: 29, scope: !95)
!469 = !DILocation(line: 182, column: 27, scope: !95)
!470 = !DILocation(line: 182, column: 33, scope: !95)
!471 = !DILocation(line: 182, column: 46, scope: !95)
!472 = !DILocation(line: 182, column: 44, scope: !95)
!473 = !DILocation(line: 183, column: 23, scope: !95)
!474 = !DILocation(line: 184, column: 12, scope: !94)
!475 = !DILocation(line: 184, column: 12, scope: !95)
!476 = !DILocation(line: 182, column: 10, scope: !95)
!477 = !DILocation(line: 182, column: 8, scope: !95)
!478 = !DILocation(line: 185, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !95, file: !3, line: 185, column: 8)
!480 = !DILocation(line: 185, column: 15, scope: !479)
!481 = !DILocation(line: 185, column: 28, scope: !479)
!482 = !DILocation(line: 185, column: 26, scope: !479)
!483 = !DILocation(line: 185, column: 12, scope: !479)
!484 = !DILocation(line: 185, column: 8, scope: !95)
!485 = !DILocation(line: 186, column: 5, scope: !479)
!486 = !DILocation(line: 187, column: 10, scope: !95)
!487 = !DILocation(line: 187, column: 7, scope: !95)
!488 = !DILocation(line: 188, column: 3, scope: !95)
!489 = !DILocation(line: 181, column: 29, scope: !96)
!490 = !DILocation(line: 181, column: 3, scope: !96)
!491 = distinct !{!491, !466, !492, !251, !252}
!492 = !DILocation(line: 188, column: 3, scope: !97)
!493 = !DILocation(line: 189, column: 2, scope: !87)
!494 = !DILocation(line: 189, column: 2, scope: !86)
!495 = !DILocation(line: 190, column: 10, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 190, column: 3)
!497 = distinct !DILexicalBlock(scope: !87, file: !3, line: 189, column: 9)
!498 = !DILocation(line: 190, column: 8, scope: !496)
!499 = !DILocation(line: 190, column: 15, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 190, column: 3)
!501 = !DILocation(line: 190, column: 19, scope: !500)
!502 = !DILocation(line: 190, column: 17, scope: !500)
!503 = !DILocation(line: 190, column: 3, scope: !496)
!504 = !DILocation(line: 191, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 191, column: 8)
!506 = distinct !DILexicalBlock(scope: !500, file: !3, line: 190, column: 29)
!507 = !DILocation(line: 191, column: 21, scope: !505)
!508 = !DILocation(line: 191, column: 24, scope: !505)
!509 = !DILocation(line: 191, column: 19, scope: !505)
!510 = !DILocation(line: 191, column: 8, scope: !506)
!511 = !DILocation(line: 192, column: 5, scope: !505)
!512 = !DILocation(line: 193, column: 9, scope: !506)
!513 = !DILocation(line: 193, column: 13, scope: !506)
!514 = !DILocation(line: 193, column: 7, scope: !506)
!515 = !DILocation(line: 194, column: 20, scope: !506)
!516 = !DILocation(line: 194, column: 4, scope: !506)
!517 = !DILocation(line: 194, column: 14, scope: !506)
!518 = !DILocation(line: 194, column: 18, scope: !506)
!519 = !DILocation(line: 195, column: 8, scope: !520)
!520 = distinct !DILexicalBlock(scope: !506, file: !3, line: 195, column: 8)
!521 = !DILocation(line: 195, column: 21, scope: !520)
!522 = !DILocation(line: 195, column: 24, scope: !520)
!523 = !DILocation(line: 195, column: 19, scope: !520)
!524 = !DILocation(line: 195, column: 8, scope: !506)
!525 = !DILocation(line: 196, column: 5, scope: !520)
!526 = !DILocation(line: 197, column: 20, scope: !506)
!527 = !DILocation(line: 197, column: 4, scope: !506)
!528 = !DILocation(line: 197, column: 14, scope: !506)
!529 = !DILocation(line: 197, column: 18, scope: !506)
!530 = !DILocation(line: 198, column: 8, scope: !531)
!531 = distinct !DILexicalBlock(scope: !506, file: !3, line: 198, column: 8)
!532 = !DILocation(line: 198, column: 21, scope: !531)
!533 = !DILocation(line: 198, column: 24, scope: !531)
!534 = !DILocation(line: 198, column: 19, scope: !531)
!535 = !DILocation(line: 198, column: 8, scope: !506)
!536 = !DILocation(line: 199, column: 5, scope: !531)
!537 = !DILocation(line: 200, column: 4, scope: !506)
!538 = !DILocation(line: 200, column: 14, scope: !506)
!539 = !DILocation(line: 200, column: 18, scope: !506)
!540 = !DILocation(line: 201, column: 3, scope: !506)
!541 = !DILocation(line: 190, column: 25, scope: !500)
!542 = !DILocation(line: 190, column: 3, scope: !500)
!543 = distinct !{!543, !503, !544, !251, !252}
!544 = !DILocation(line: 201, column: 3, scope: !496)
!545 = !DILocation(line: 202, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !497, file: !3, line: 202, column: 7)
!547 = !DILocation(line: 202, column: 7, scope: !497)
!548 = !DILocation(line: 203, column: 6, scope: !546)
!549 = !DILocation(line: 203, column: 4, scope: !546)
!550 = !DILocation(line: 205, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !17, file: !3, line: 205, column: 6)
!552 = !{i8 0, i8 2}
!553 = !{}
!554 = !DILocation(line: 205, column: 6, scope: !17)
!555 = !DILocation(line: 206, column: 3, scope: !551)
!556 = !DILocation(line: 208, column: 2, scope: !17)
!557 = !DILocation(line: 208, column: 9, scope: !17)
!558 = !DILocation(line: 208, column: 14, scope: !17)
!559 = !DILocation(line: 208, column: 12, scope: !17)
!560 = !DILocation(line: 209, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 209, column: 7)
!562 = distinct !DILexicalBlock(scope: !17, file: !3, line: 208, column: 28)
!563 = !DILocation(line: 209, column: 20, scope: !561)
!564 = !DILocation(line: 209, column: 23, scope: !561)
!565 = !DILocation(line: 209, column: 18, scope: !561)
!566 = !DILocation(line: 209, column: 7, scope: !562)
!567 = !DILocation(line: 210, column: 4, scope: !561)
!568 = !DILocation(line: 211, column: 3, scope: !562)
!569 = !DILocation(line: 211, column: 13, scope: !562)
!570 = !DILocation(line: 211, column: 17, scope: !562)
!571 = distinct !{!571, !556, !572, !251, !252}
!572 = !DILocation(line: 212, column: 2, scope: !17)
!573 = !DILocation(line: 213, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !17, file: !3, line: 213, column: 2)
!575 = !DILocation(line: 213, column: 7, scope: !574)
!576 = !DILocation(line: 213, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !3, line: 213, column: 2)
!578 = !DILocation(line: 213, column: 18, scope: !577)
!579 = !DILocation(line: 213, column: 16, scope: !577)
!580 = !DILocation(line: 213, column: 2, scope: !574)
!581 = !DILocation(line: 214, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 214, column: 7)
!583 = distinct !DILexicalBlock(scope: !577, file: !3, line: 213, column: 28)
!584 = !DILocation(line: 214, column: 20, scope: !582)
!585 = !DILocation(line: 214, column: 23, scope: !582)
!586 = !DILocation(line: 214, column: 18, scope: !582)
!587 = !DILocation(line: 214, column: 7, scope: !583)
!588 = !DILocation(line: 215, column: 4, scope: !582)
!589 = !DILocation(line: 216, column: 8, scope: !583)
!590 = !DILocation(line: 216, column: 12, scope: !583)
!591 = !DILocation(line: 216, column: 6, scope: !583)
!592 = !DILocation(line: 217, column: 20, scope: !583)
!593 = !DILocation(line: 217, column: 32, scope: !583)
!594 = !DILocation(line: 217, column: 35, scope: !583)
!595 = !DILocation(line: 217, column: 19, scope: !583)
!596 = !DILocation(line: 217, column: 50, scope: !583)
!597 = !DILocation(line: 217, column: 3, scope: !583)
!598 = !DILocation(line: 217, column: 13, scope: !583)
!599 = !DILocation(line: 217, column: 17, scope: !583)
!600 = !DILocation(line: 218, column: 2, scope: !583)
!601 = !DILocation(line: 213, column: 24, scope: !577)
!602 = !DILocation(line: 213, column: 2, scope: !577)
!603 = distinct !{!603, !580, !604, !251, !252}
!604 = !DILocation(line: 218, column: 2, scope: !574)
!605 = !DILocation(line: 219, column: 1, scope: !17)
!606 = !DILocation(line: 220, column: 2, scope: !17)
!607 = !DILocation(line: 220, column: 10, scope: !17)
!608 = !DILocation(line: 220, column: 14, scope: !17)
!609 = !DILocation(line: 221, column: 9, scope: !17)
!610 = !DILocation(line: 221, column: 2, scope: !17)
!611 = !DILocation(line: 222, column: 1, scope: !17)
!612 = !DILocation(line: 223, column: 2, scope: !17)
!613 = !DILocation(line: 223, column: 12, scope: !17)
!614 = !DILocation(line: 223, column: 16, scope: !17)
!615 = !DILocation(line: 224, column: 1, scope: !17)
!616 = !DILocation(line: 225, column: 9, scope: !17)
!617 = !DILocation(line: 225, column: 17, scope: !17)
!618 = !DILocation(line: 225, column: 32, scope: !17)
!619 = !DILocation(line: 225, column: 30, scope: !17)
!620 = !DILocation(line: 225, column: 39, scope: !17)
!621 = !DILocation(line: 225, column: 49, scope: !17)
!622 = !DILocation(line: 225, column: 53, scope: !17)
!623 = !DILocation(line: 225, column: 60, scope: !17)
!624 = !DILocation(line: 225, column: 58, scope: !17)
!625 = !DILocation(line: 225, column: 68, scope: !17)
!626 = !DILocation(line: 225, column: 38, scope: !17)
!627 = !DILocation(line: 225, column: 2, scope: !17)
!628 = !DILocation(line: 226, column: 1, scope: !17)
!629 = distinct !DISubprogram(name: "is_power_of_2", scope: !630, file: !630, line: 45, type: !631, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!630 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!631 = !DISubroutineType(types: !632)
!632 = !{!31, !28}
!633 = !{!634}
!634 = !DILocalVariable(name: "n", arg: 1, scope: !629, file: !630, line: 45, type: !28)
!635 = !DILocation(line: 45, column: 34, scope: !629)
!636 = !DILocation(line: 47, column: 10, scope: !629)
!637 = !DILocation(line: 47, column: 12, scope: !629)
!638 = !DILocation(line: 47, column: 17, scope: !629)
!639 = !DILocation(line: 47, column: 22, scope: !629)
!640 = !DILocation(line: 47, column: 27, scope: !629)
!641 = !DILocation(line: 47, column: 29, scope: !629)
!642 = !DILocation(line: 47, column: 24, scope: !629)
!643 = !DILocation(line: 47, column: 35, scope: !629)
!644 = !DILocation(line: 0, scope: !629)
!645 = !DILocation(line: 47, column: 2, scope: !629)
!646 = !DISubprogram(name: "snprintf", scope: !647, file: !647, line: 12, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!648 = !DISubroutineType(types: !649)
!649 = !{!20, !29, !23, !210, null}
!650 = distinct !DISubprogram(name: "print_hex_dump", scope: !3, file: !3, line: 261, type: !651, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !210, !210, !20, !20, !20, !21, !23, !31}
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !670, !675}
!654 = !DILocalVariable(name: "level", arg: 1, scope: !650, file: !3, line: 261, type: !210)
!655 = !DILocalVariable(name: "prefix_str", arg: 2, scope: !650, file: !3, line: 261, type: !210)
!656 = !DILocalVariable(name: "prefix_type", arg: 3, scope: !650, file: !3, line: 261, type: !20)
!657 = !DILocalVariable(name: "rowsize", arg: 4, scope: !650, file: !3, line: 262, type: !20)
!658 = !DILocalVariable(name: "groupsize", arg: 5, scope: !650, file: !3, line: 262, type: !20)
!659 = !DILocalVariable(name: "buf", arg: 6, scope: !650, file: !3, line: 263, type: !21)
!660 = !DILocalVariable(name: "len", arg: 7, scope: !650, file: !3, line: 263, type: !23)
!661 = !DILocalVariable(name: "ascii", arg: 8, scope: !650, file: !3, line: 263, type: !31)
!662 = !DILocalVariable(name: "ptr", scope: !650, file: !3, line: 265, type: !42)
!663 = !DILocalVariable(name: "i", scope: !650, file: !3, line: 266, type: !20)
!664 = !DILocalVariable(name: "linelen", scope: !650, file: !3, line: 266, type: !20)
!665 = !DILocalVariable(name: "remaining", scope: !650, file: !3, line: 266, type: !20)
!666 = !DILocalVariable(name: "linebuf", scope: !650, file: !3, line: 267, type: !667)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1048, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 131)
!670 = !DILocalVariable(name: "__UNIQUE_ID___x9", scope: !671, file: !3, line: 273, type: !20)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 273, column: 13)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 272, column: 37)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 272, column: 2)
!674 = distinct !DILexicalBlock(scope: !650, file: !3, line: 272, column: 2)
!675 = !DILocalVariable(name: "__UNIQUE_ID___y10", scope: !671, file: !3, line: 273, type: !20)
!676 = !DILocation(line: 261, column: 33, scope: !650)
!677 = !DILocation(line: 261, column: 52, scope: !650)
!678 = !DILocation(line: 261, column: 68, scope: !650)
!679 = !DILocation(line: 262, column: 11, scope: !650)
!680 = !DILocation(line: 262, column: 24, scope: !650)
!681 = !DILocation(line: 263, column: 19, scope: !650)
!682 = !DILocation(line: 263, column: 31, scope: !650)
!683 = !DILocation(line: 263, column: 41, scope: !650)
!684 = !DILocation(line: 265, column: 2, scope: !650)
!685 = !DILocation(line: 265, column: 12, scope: !650)
!686 = !DILocation(line: 265, column: 18, scope: !650)
!687 = !DILocation(line: 266, column: 2, scope: !650)
!688 = !DILocation(line: 266, column: 6, scope: !650)
!689 = !DILocation(line: 266, column: 9, scope: !650)
!690 = !DILocation(line: 266, column: 18, scope: !650)
!691 = !DILocation(line: 266, column: 30, scope: !650)
!692 = !DILocation(line: 267, column: 2, scope: !650)
!693 = !DILocation(line: 267, column: 16, scope: !650)
!694 = !DILocation(line: 269, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !650, file: !3, line: 269, column: 6)
!696 = !DILocation(line: 269, column: 14, scope: !695)
!697 = !DILocation(line: 269, column: 20, scope: !695)
!698 = !DILocation(line: 269, column: 23, scope: !695)
!699 = !DILocation(line: 269, column: 31, scope: !695)
!700 = !DILocation(line: 269, column: 6, scope: !650)
!701 = !DILocation(line: 270, column: 11, scope: !695)
!702 = !DILocation(line: 270, column: 3, scope: !695)
!703 = !DILocation(line: 272, column: 9, scope: !674)
!704 = !DILocation(line: 272, column: 7, scope: !674)
!705 = !DILocation(line: 272, column: 14, scope: !673)
!706 = !DILocation(line: 272, column: 18, scope: !673)
!707 = !DILocation(line: 272, column: 16, scope: !673)
!708 = !DILocation(line: 272, column: 2, scope: !674)
!709 = !DILocation(line: 273, column: 13, scope: !671)
!710 = !DILocation(line: 273, column: 13, scope: !672)
!711 = !DILocation(line: 273, column: 11, scope: !672)
!712 = !DILocation(line: 274, column: 16, scope: !672)
!713 = !DILocation(line: 274, column: 13, scope: !672)
!714 = !DILocation(line: 276, column: 22, scope: !672)
!715 = !DILocation(line: 276, column: 28, scope: !672)
!716 = !DILocation(line: 276, column: 26, scope: !672)
!717 = !DILocation(line: 276, column: 31, scope: !672)
!718 = !DILocation(line: 276, column: 40, scope: !672)
!719 = !DILocation(line: 276, column: 49, scope: !672)
!720 = !DILocation(line: 277, column: 8, scope: !672)
!721 = !DILocation(line: 277, column: 34, scope: !672)
!722 = !DILocation(line: 276, column: 3, scope: !672)
!723 = !DILocation(line: 279, column: 11, scope: !672)
!724 = !DILocation(line: 279, column: 3, scope: !672)
!725 = !DILocation(line: 281, column: 4, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 281, column: 4)
!727 = distinct !DILexicalBlock(scope: !672, file: !3, line: 279, column: 24)
!728 = !DILocation(line: 281, column: 4, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 281, column: 4)
!730 = !DILocation(line: 283, column: 4, scope: !727)
!731 = !DILocation(line: 285, column: 4, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !3, line: 285, column: 4)
!733 = !DILocation(line: 285, column: 4, scope: !734)
!734 = distinct !DILexicalBlock(scope: !732, file: !3, line: 285, column: 4)
!735 = !DILocation(line: 286, column: 4, scope: !727)
!736 = !DILocation(line: 288, column: 4, scope: !737)
!737 = distinct !DILexicalBlock(scope: !727, file: !3, line: 288, column: 4)
!738 = !DILocation(line: 288, column: 4, scope: !739)
!739 = distinct !DILexicalBlock(scope: !737, file: !3, line: 288, column: 4)
!740 = !DILocation(line: 289, column: 4, scope: !727)
!741 = !DILocation(line: 291, column: 2, scope: !672)
!742 = !DILocation(line: 272, column: 28, scope: !673)
!743 = !DILocation(line: 272, column: 25, scope: !673)
!744 = !DILocation(line: 272, column: 2, scope: !673)
!745 = distinct !{!745, !708, !746, !251, !252}
!746 = !DILocation(line: 291, column: 2, scope: !674)
!747 = !DILocation(line: 292, column: 1, scope: !650)
!748 = !DISubprogram(name: "_printk", scope: !6, file: !6, line: 153, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!20, !210, null}
