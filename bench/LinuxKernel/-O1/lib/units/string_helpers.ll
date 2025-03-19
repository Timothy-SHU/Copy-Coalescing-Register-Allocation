; ModuleID = 'lib/string_helpers.c'
source_filename = "lib/string_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_string_get_size: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad string_get_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_parse_int_array_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad parse_int_array_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_string_unescape: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad string_unescape ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_string_escape_mem: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad string_escape_mem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrdup_quotable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrdup_quotable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrdup_quotable_cmdline: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrdup_quotable_cmdline ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrdup_quotable_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrdup_quotable_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrdup_and_replace: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrdup_and_replace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kasprintf_strarray: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kasprintf_strarray ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kfree_strarray: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kfree_strarray ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_kasprintf_strarray: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_kasprintf_strarray ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strscpy_pad: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strscpy_pad ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_skip_spaces: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad skip_spaces ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strim: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strim ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_streq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_streq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___sysfs_match_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __sysfs_match_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strreplace: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strreplace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memcpy_and_pad: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memcpy_and_pad ; .previous"

%struct.strarray = type { ptr, i64 }

@string_get_size.units_10 = internal constant [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1, !dbg !183
@.str.1 = private unnamed_addr constant [3 x i8] c"kB\00", align 1, !dbg !188
@.str.2 = private unnamed_addr constant [3 x i8] c"MB\00", align 1, !dbg !193
@.str.3 = private unnamed_addr constant [3 x i8] c"GB\00", align 1, !dbg !195
@.str.4 = private unnamed_addr constant [3 x i8] c"TB\00", align 1, !dbg !197
@.str.5 = private unnamed_addr constant [3 x i8] c"PB\00", align 1, !dbg !199
@.str.6 = private unnamed_addr constant [3 x i8] c"EB\00", align 1, !dbg !201
@.str.7 = private unnamed_addr constant [3 x i8] c"ZB\00", align 1, !dbg !203
@.str.8 = private unnamed_addr constant [3 x i8] c"YB\00", align 1, !dbg !205
@string_get_size.units_2 = internal constant [9 x ptr] [ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 16, !dbg !226
@.str.9 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1, !dbg !207
@.str.10 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1, !dbg !212
@.str.11 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1, !dbg !214
@.str.12 = private unnamed_addr constant [4 x i8] c"TiB\00", align 1, !dbg !216
@.str.13 = private unnamed_addr constant [4 x i8] c"PiB\00", align 1, !dbg !218
@.str.14 = private unnamed_addr constant [4 x i8] c"EiB\00", align 1, !dbg !220
@.str.15 = private unnamed_addr constant [4 x i8] c"ZiB\00", align 1, !dbg !222
@.str.16 = private unnamed_addr constant [4 x i8] c"YiB\00", align 1, !dbg !224
@string_get_size.units_str = internal constant [2 x ptr] [ptr @string_get_size.units_10, ptr @string_get_size.units_2], align 16, !dbg !234
@string_get_size.divisor = internal constant [2 x i32] [i32 1000, i32 1024], align 4, !dbg !239
@string_get_size.rounding = internal constant [3 x i32] [i32 500, i32 50, i32 5], align 4, !dbg !243
@.str.17 = private unnamed_addr constant [6 x i8] c".%03u\00", align 1, !dbg !246
@.str.18 = private unnamed_addr constant [4 x i8] c"UNK\00", align 1, !dbg !251
@.str.19 = private unnamed_addr constant [8 x i8] c"%u%s %s\00", align 1, !dbg !253
@__UNIQUE_ID___addressable_string_get_size287 = internal global ptr @string_get_size, section ".discard.addressable", align 8, !dbg !258
@__UNIQUE_ID___addressable_parse_int_array_user288 = internal global ptr @parse_int_array_user, section ".discard.addressable", align 8, !dbg !260
@__UNIQUE_ID___addressable_string_unescape289 = internal global ptr @string_unescape, section ".discard.addressable", align 8, !dbg !262
@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_string_escape_mem290 = internal global ptr @string_escape_mem, section ".discard.addressable", align 8, !dbg !264
@__const.kstrdup_quotable.esc = private unnamed_addr constant [10 x i8] c"\0C\0A\0D\09\0B\07\1B\\\22\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"lib/string_helpers.c\00", align 1, !dbg !266
@__UNIQUE_ID___addressable_kstrdup_quotable291 = internal global ptr @kstrdup_quotable, section ".discard.addressable", align 8, !dbg !271
@__UNIQUE_ID___addressable_kstrdup_quotable_cmdline292 = internal global ptr @kstrdup_quotable_cmdline, section ".discard.addressable", align 8, !dbg !273
@.str.21 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1, !dbg !275
@.str.22 = private unnamed_addr constant [12 x i8] c"<no_memory>\00", align 1, !dbg !280
@.str.23 = private unnamed_addr constant [11 x i8] c"<too_long>\00", align 1, !dbg !285
@__UNIQUE_ID___addressable_kstrdup_quotable_file293 = internal global ptr @kstrdup_quotable_file, section ".discard.addressable", align 8, !dbg !290
@__UNIQUE_ID___addressable_kstrdup_and_replace294 = internal global ptr @kstrdup_and_replace, section ".discard.addressable", align 8, !dbg !292
@.str.24 = private unnamed_addr constant [7 x i8] c"%s-%zu\00", align 1, !dbg !294
@__UNIQUE_ID___addressable_kasprintf_strarray295 = internal global ptr @kasprintf_strarray, section ".discard.addressable", align 8, !dbg !299
@__UNIQUE_ID___addressable_kfree_strarray296 = internal global ptr @kfree_strarray, section ".discard.addressable", align 8, !dbg !301
@.str.25 = private unnamed_addr constant [20 x i8] c"devm_kfree_strarray\00", align 1, !dbg !303
@__UNIQUE_ID___addressable_devm_kasprintf_strarray297 = internal global ptr @devm_kasprintf_strarray, section ".discard.addressable", align 8, !dbg !308
@__UNIQUE_ID___addressable_strscpy_pad298 = internal global ptr @strscpy_pad, section ".discard.addressable", align 8, !dbg !310
@__UNIQUE_ID___addressable_skip_spaces299 = internal global ptr @skip_spaces, section ".discard.addressable", align 8, !dbg !312
@__UNIQUE_ID___addressable_strim300 = internal global ptr @strim, section ".discard.addressable", align 8, !dbg !314
@__UNIQUE_ID___addressable_sysfs_streq301 = internal global ptr @sysfs_streq, section ".discard.addressable", align 8, !dbg !316
@__UNIQUE_ID___addressable_match_string302 = internal global ptr @match_string, section ".discard.addressable", align 8, !dbg !318
@__UNIQUE_ID___addressable___sysfs_match_string303 = internal global ptr @__sysfs_match_string, section ".discard.addressable", align 8, !dbg !320
@__UNIQUE_ID___addressable_strreplace304 = internal global ptr @strreplace, section ".discard.addressable", align 8, !dbg !322
@__UNIQUE_ID___addressable_memcpy_and_pad305 = internal global ptr @memcpy_and_pad, section ".discard.addressable", align 8, !dbg !324
@hex_asc = external dso_local constant [0 x i8], align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.26 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !326
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID___addressable_string_get_size287, ptr @__UNIQUE_ID___addressable_parse_int_array_user288, ptr @__UNIQUE_ID___addressable_string_unescape289, ptr @__UNIQUE_ID___addressable_string_escape_mem290, ptr @__UNIQUE_ID___addressable_kstrdup_quotable291, ptr @__UNIQUE_ID___addressable_kstrdup_quotable_cmdline292, ptr @__UNIQUE_ID___addressable_kstrdup_quotable_file293, ptr @__UNIQUE_ID___addressable_kstrdup_and_replace294, ptr @__UNIQUE_ID___addressable_kasprintf_strarray295, ptr @__UNIQUE_ID___addressable_kfree_strarray296, ptr @__UNIQUE_ID___addressable_devm_kasprintf_strarray297, ptr @__UNIQUE_ID___addressable_strscpy_pad298, ptr @__UNIQUE_ID___addressable_skip_spaces299, ptr @__UNIQUE_ID___addressable_strim300, ptr @__UNIQUE_ID___addressable_sysfs_streq301, ptr @__UNIQUE_ID___addressable_match_string302, ptr @__UNIQUE_ID___addressable___sysfs_match_string303, ptr @__UNIQUE_ID___addressable_strreplace304, ptr @__UNIQUE_ID___addressable_memcpy_and_pad305], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @string_get_size(i64 noundef %size, i64 noundef %blk_size, i32 noundef %units, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !2 {
entry:
  %size.addr = alloca i64, align 8
  %blk_size.addr = alloca i64, align 8
  %units.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %remainder = alloca i32, align 4
  %sf_cap = alloca i32, align 4
  %tmp = alloca [12 x i8], align 1
  %unit = alloca ptr, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__base12 = alloca i32, align 4
  %__rem15 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %__base31 = alloca i32, align 4
  %__rem34 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !329, metadata !DIExpression()), !dbg !363
  store i64 %blk_size, ptr %blk_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blk_size.addr, metadata !330, metadata !DIExpression()), !dbg !364
  store i32 %units, ptr %units.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %units.addr, metadata !331, metadata !DIExpression()), !dbg !365
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !332, metadata !DIExpression()), !dbg !366
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !333, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %i, metadata !334, metadata !DIExpression()), !dbg !369
  store i32 0, ptr %i, align 4, !dbg !369
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %j, metadata !335, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #15, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !336, metadata !DIExpression()), !dbg !372
  store i32 0, ptr %remainder, align 4, !dbg !372
  call void @llvm.lifetime.start.p0(i64 4, ptr %sf_cap) #15, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %sf_cap, metadata !337, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 12, ptr %tmp) #15, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !338, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 8, ptr %unit) #15, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %unit, metadata !339, metadata !DIExpression()), !dbg !377
  %arrayidx = getelementptr [12 x i8], ptr %tmp, i64 0, i64 0, !dbg !378
  store i8 0, ptr %arrayidx, align 1, !dbg !379
  %0 = load i64, ptr %blk_size.addr, align 8, !dbg !380
  %cmp = icmp eq i64 %0, 0, !dbg !382
  br i1 %cmp, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  store i64 0, ptr %size.addr, align 8, !dbg !384
  br label %if.end, !dbg !385

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !386
  %cmp1 = icmp eq i64 %1, 0, !dbg !388
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !389

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !390

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !391

while.cond:                                       ; preds = %while.body, %if.end3
  %2 = load i64, ptr %blk_size.addr, align 8, !dbg !392
  %shr = lshr i64 %2, 32, !dbg !393
  %tobool = icmp ne i64 %shr, 0, !dbg !391
  br i1 %tobool, label %while.body, label %while.end, !dbg !391

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #15, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !340, metadata !DIExpression()), !dbg !394
  %3 = load i32, ptr %units.addr, align 4, !dbg !394
  %idxprom = zext i32 %3 to i64, !dbg !394
  %arrayidx4 = getelementptr [2 x i32], ptr @string_get_size.divisor, i64 0, i64 %idxprom, !dbg !394
  %4 = load i32, ptr %arrayidx4, align 4, !dbg !394
  store i32 %4, ptr %__base, align 4, !dbg !394
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #15, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !344, metadata !DIExpression()), !dbg !394
  %5 = load i64, ptr %blk_size.addr, align 8, !dbg !394
  %6 = load i32, ptr %__base, align 4, !dbg !394
  %conv = zext i32 %6 to i64, !dbg !394
  %rem = urem i64 %5, %conv, !dbg !394
  %conv5 = trunc i64 %rem to i32, !dbg !394
  store i32 %conv5, ptr %__rem, align 4, !dbg !394
  %7 = load i64, ptr %blk_size.addr, align 8, !dbg !394
  %8 = load i32, ptr %__base, align 4, !dbg !394
  %conv6 = zext i32 %8 to i64, !dbg !394
  %div = udiv i64 %7, %conv6, !dbg !394
  store i64 %div, ptr %blk_size.addr, align 8, !dbg !394
  %9 = load i32, ptr %__rem, align 4, !dbg !394
  store i32 %9, ptr %tmp7, align 4, !dbg !394
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #15, !dbg !395
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #15, !dbg !395
  %10 = load i32, ptr %tmp7, align 4, !dbg !394
  %11 = load i32, ptr %i, align 4, !dbg !396
  %inc = add i32 %11, 1, !dbg !396
  store i32 %inc, ptr %i, align 4, !dbg !396
  br label %while.cond, !dbg !391, !llvm.loop !397

while.end:                                        ; preds = %while.cond
  br label %while.cond8, !dbg !401

while.cond8:                                      ; preds = %while.body11, %while.end
  %12 = load i64, ptr %size.addr, align 8, !dbg !402
  %shr9 = lshr i64 %12, 32, !dbg !403
  %tobool10 = icmp ne i64 %shr9, 0, !dbg !401
  br i1 %tobool10, label %while.body11, label %while.end23, !dbg !401

while.body11:                                     ; preds = %while.cond8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base12) #15, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %__base12, metadata !345, metadata !DIExpression()), !dbg !404
  %13 = load i32, ptr %units.addr, align 4, !dbg !404
  %idxprom13 = zext i32 %13 to i64, !dbg !404
  %arrayidx14 = getelementptr [2 x i32], ptr @string_get_size.divisor, i64 0, i64 %idxprom13, !dbg !404
  %14 = load i32, ptr %arrayidx14, align 4, !dbg !404
  store i32 %14, ptr %__base12, align 4, !dbg !404
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem15) #15, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %__rem15, metadata !348, metadata !DIExpression()), !dbg !404
  %15 = load i64, ptr %size.addr, align 8, !dbg !404
  %16 = load i32, ptr %__base12, align 4, !dbg !404
  %conv16 = zext i32 %16 to i64, !dbg !404
  %rem17 = urem i64 %15, %conv16, !dbg !404
  %conv18 = trunc i64 %rem17 to i32, !dbg !404
  store i32 %conv18, ptr %__rem15, align 4, !dbg !404
  %17 = load i64, ptr %size.addr, align 8, !dbg !404
  %18 = load i32, ptr %__base12, align 4, !dbg !404
  %conv19 = zext i32 %18 to i64, !dbg !404
  %div20 = udiv i64 %17, %conv19, !dbg !404
  store i64 %div20, ptr %size.addr, align 8, !dbg !404
  %19 = load i32, ptr %__rem15, align 4, !dbg !404
  store i32 %19, ptr %tmp21, align 4, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem15) #15, !dbg !405
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base12) #15, !dbg !405
  %20 = load i32, ptr %tmp21, align 4, !dbg !404
  %21 = load i32, ptr %i, align 4, !dbg !406
  %inc22 = add i32 %21, 1, !dbg !406
  store i32 %inc22, ptr %i, align 4, !dbg !406
  br label %while.cond8, !dbg !401, !llvm.loop !407

while.end23:                                      ; preds = %while.cond8
  %22 = load i64, ptr %blk_size.addr, align 8, !dbg !409
  %23 = load i64, ptr %size.addr, align 8, !dbg !410
  %mul = mul i64 %23, %22, !dbg !410
  store i64 %mul, ptr %size.addr, align 8, !dbg !410
  br label %while.cond24, !dbg !411

while.cond24:                                     ; preds = %while.body30, %while.end23
  %24 = load i64, ptr %size.addr, align 8, !dbg !412
  %25 = load i32, ptr %units.addr, align 4, !dbg !413
  %idxprom25 = zext i32 %25 to i64, !dbg !414
  %arrayidx26 = getelementptr [2 x i32], ptr @string_get_size.divisor, i64 0, i64 %idxprom25, !dbg !414
  %26 = load i32, ptr %arrayidx26, align 4, !dbg !414
  %conv27 = zext i32 %26 to i64, !dbg !414
  %cmp28 = icmp uge i64 %24, %conv27, !dbg !415
  br i1 %cmp28, label %while.body30, label %while.end42, !dbg !411

while.body30:                                     ; preds = %while.cond24
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base31) #15, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %__base31, metadata !349, metadata !DIExpression()), !dbg !416
  %27 = load i32, ptr %units.addr, align 4, !dbg !416
  %idxprom32 = zext i32 %27 to i64, !dbg !416
  %arrayidx33 = getelementptr [2 x i32], ptr @string_get_size.divisor, i64 0, i64 %idxprom32, !dbg !416
  %28 = load i32, ptr %arrayidx33, align 4, !dbg !416
  store i32 %28, ptr %__base31, align 4, !dbg !416
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem34) #15, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %__rem34, metadata !352, metadata !DIExpression()), !dbg !416
  %29 = load i64, ptr %size.addr, align 8, !dbg !416
  %30 = load i32, ptr %__base31, align 4, !dbg !416
  %conv35 = zext i32 %30 to i64, !dbg !416
  %rem36 = urem i64 %29, %conv35, !dbg !416
  %conv37 = trunc i64 %rem36 to i32, !dbg !416
  store i32 %conv37, ptr %__rem34, align 4, !dbg !416
  %31 = load i64, ptr %size.addr, align 8, !dbg !416
  %32 = load i32, ptr %__base31, align 4, !dbg !416
  %conv38 = zext i32 %32 to i64, !dbg !416
  %div39 = udiv i64 %31, %conv38, !dbg !416
  store i64 %div39, ptr %size.addr, align 8, !dbg !416
  %33 = load i32, ptr %__rem34, align 4, !dbg !416
  store i32 %33, ptr %tmp40, align 4, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem34) #15, !dbg !417
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base31) #15, !dbg !417
  %34 = load i32, ptr %tmp40, align 4, !dbg !416
  store i32 %34, ptr %remainder, align 4, !dbg !418
  %35 = load i32, ptr %i, align 4, !dbg !419
  %inc41 = add i32 %35, 1, !dbg !419
  store i32 %inc41, ptr %i, align 4, !dbg !419
  br label %while.cond24, !dbg !411, !llvm.loop !420

while.end42:                                      ; preds = %while.cond24
  %36 = load i64, ptr %size.addr, align 8, !dbg !422
  %conv43 = trunc i64 %36 to i32, !dbg !422
  store i32 %conv43, ptr %sf_cap, align 4, !dbg !423
  store i32 0, ptr %j, align 4, !dbg !424
  br label %for.cond, !dbg !426

for.cond:                                         ; preds = %for.inc, %while.end42
  %37 = load i32, ptr %sf_cap, align 4, !dbg !427
  %mul44 = mul i32 %37, 10, !dbg !429
  %cmp45 = icmp ult i32 %mul44, 1000, !dbg !430
  br i1 %cmp45, label %for.body, label %for.end, !dbg !431

for.body:                                         ; preds = %for.cond
  %38 = load i32, ptr %sf_cap, align 4, !dbg !432
  %mul47 = mul i32 %38, 10, !dbg !432
  store i32 %mul47, ptr %sf_cap, align 4, !dbg !432
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %j, align 4, !dbg !434
  %inc48 = add i32 %39, 1, !dbg !434
  store i32 %inc48, ptr %j, align 4, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  %40 = load i32, ptr %units.addr, align 4, !dbg !438
  %cmp49 = icmp eq i32 %40, 1, !dbg !440
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !441

if.then51:                                        ; preds = %for.end
  %41 = load i32, ptr %remainder, align 4, !dbg !442
  %mul52 = mul i32 %41, 1000, !dbg !442
  store i32 %mul52, ptr %remainder, align 4, !dbg !442
  %42 = load i32, ptr %remainder, align 4, !dbg !444
  %shr53 = lshr i32 %42, 10, !dbg !444
  store i32 %shr53, ptr %remainder, align 4, !dbg !444
  br label %if.end54, !dbg !445

if.end54:                                         ; preds = %if.then51, %for.end
  %43 = load i32, ptr %j, align 4, !dbg !446
  %idxprom55 = sext i32 %43 to i64, !dbg !447
  %arrayidx56 = getelementptr [3 x i32], ptr @string_get_size.rounding, i64 0, i64 %idxprom55, !dbg !447
  %44 = load i32, ptr %arrayidx56, align 4, !dbg !447
  %45 = load i32, ptr %remainder, align 4, !dbg !448
  %add = add i32 %45, %44, !dbg !448
  store i32 %add, ptr %remainder, align 4, !dbg !448
  %46 = load i32, ptr %remainder, align 4, !dbg !449
  %cmp57 = icmp uge i32 %46, 1000, !dbg !451
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !452

if.then59:                                        ; preds = %if.end54
  %47 = load i32, ptr %remainder, align 4, !dbg !453
  %sub = sub i32 %47, 1000, !dbg !453
  store i32 %sub, ptr %remainder, align 4, !dbg !453
  %48 = load i64, ptr %size.addr, align 8, !dbg !455
  %add60 = add i64 %48, 1, !dbg !455
  store i64 %add60, ptr %size.addr, align 8, !dbg !455
  br label %if.end61, !dbg !456

if.end61:                                         ; preds = %if.then59, %if.end54
  %49 = load i32, ptr %j, align 4, !dbg !457
  %tobool62 = icmp ne i32 %49, 0, !dbg !457
  br i1 %tobool62, label %if.then63, label %if.end67, !dbg !459

if.then63:                                        ; preds = %if.end61
  %arraydecay = getelementptr inbounds [12 x i8], ptr %tmp, i64 0, i64 0, !dbg !460
  %50 = load i32, ptr %remainder, align 4, !dbg !462
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 12, ptr noundef @.str.17, i32 noundef %50) #16, !dbg !463
  %51 = load i32, ptr %j, align 4, !dbg !464
  %add64 = add i32 %51, 1, !dbg !465
  %idxprom65 = sext i32 %add64 to i64, !dbg !466
  %arrayidx66 = getelementptr [12 x i8], ptr %tmp, i64 0, i64 %idxprom65, !dbg !466
  store i8 0, ptr %arrayidx66, align 1, !dbg !467
  br label %if.end67, !dbg !468

if.end67:                                         ; preds = %if.then63, %if.end61
  br label %out, !dbg !457

out:                                              ; preds = %if.end67, %if.then2
  call void @llvm.dbg.label(metadata !353), !dbg !469
  %52 = load i32, ptr %i, align 4, !dbg !470
  %conv68 = sext i32 %52 to i64, !dbg !470
  %cmp69 = icmp uge i64 %conv68, 9, !dbg !472
  br i1 %cmp69, label %if.then71, label %if.else, !dbg !473

if.then71:                                        ; preds = %out
  store ptr @.str.18, ptr %unit, align 8, !dbg !474
  br label %if.end76, !dbg !475

if.else:                                          ; preds = %out
  %53 = load i32, ptr %units.addr, align 4, !dbg !476
  %idxprom72 = zext i32 %53 to i64, !dbg !477
  %arrayidx73 = getelementptr [2 x ptr], ptr @string_get_size.units_str, i64 0, i64 %idxprom72, !dbg !477
  %54 = load ptr, ptr %arrayidx73, align 8, !dbg !477
  %55 = load i32, ptr %i, align 4, !dbg !478
  %idxprom74 = sext i32 %55 to i64, !dbg !477
  %arrayidx75 = getelementptr ptr, ptr %54, i64 %idxprom74, !dbg !477
  %56 = load ptr, ptr %arrayidx75, align 8, !dbg !477
  store ptr %56, ptr %unit, align 8, !dbg !479
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then71
  %57 = load ptr, ptr %buf.addr, align 8, !dbg !480
  %58 = load i32, ptr %len.addr, align 4, !dbg !481
  %conv77 = sext i32 %58 to i64, !dbg !481
  %59 = load i64, ptr %size.addr, align 8, !dbg !482
  %conv78 = trunc i64 %59 to i32, !dbg !483
  %arraydecay79 = getelementptr inbounds [12 x i8], ptr %tmp, i64 0, i64 0, !dbg !484
  %60 = load ptr, ptr %unit, align 8, !dbg !485
  %call80 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %57, i64 noundef %conv77, ptr noundef @.str.19, i32 noundef %conv78, ptr noundef %arraydecay79, ptr noundef %60) #16, !dbg !486
  call void @llvm.lifetime.end.p0(i64 8, ptr %unit) #15, !dbg !487
  call void @llvm.lifetime.end.p0(i64 12, ptr %tmp) #15, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %sf_cap) #15, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #15, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !487
  ret void, !dbg !487
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !488 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @parse_int_array_user(ptr noundef %from, i64 noundef %count, ptr noundef %array) #0 align 16 !dbg !496 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %array.addr = alloca ptr, align 8
  %ints = alloca ptr, align 8
  %nints = alloca i32, align 4
  %buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !502, metadata !DIExpression()), !dbg !510
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !503, metadata !DIExpression()), !dbg !511
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !504, metadata !DIExpression()), !dbg !512
  call void @llvm.lifetime.start.p0(i64 8, ptr %ints) #15, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %ints, metadata !505, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %nints) #15, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %nints, metadata !506, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !507, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !508, metadata !DIExpression()), !dbg !519
  store i32 0, ptr %ret, align 4, !dbg !519
  %0 = load ptr, ptr %from.addr, align 8, !dbg !520
  %1 = load i64, ptr %count.addr, align 8, !dbg !521
  %call = call ptr @memdup_user_nul(ptr noundef %0, i64 noundef %1) #16, !dbg !522
  store ptr %call, ptr %buf, align 8, !dbg !523
  %2 = load ptr, ptr %buf, align 8, !dbg !524
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #16, !dbg !526
  br i1 %call1, label %if.then, label %if.end, !dbg !527

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf, align 8, !dbg !528
  %call2 = call i64 @PTR_ERR(ptr noundef %3) #16, !dbg !529
  %conv = trunc i64 %call2 to i32, !dbg !529
  store i32 %conv, ptr %retval, align 4, !dbg !530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !530

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf, align 8, !dbg !531
  %call3 = call ptr @get_options(ptr noundef %4, i32 noundef 0, ptr noundef %nints) #16, !dbg !532
  %5 = load i32, ptr %nints, align 4, !dbg !533
  %tobool = icmp ne i32 %5, 0, !dbg !533
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !535

if.then4:                                         ; preds = %if.end
  store i32 -2, ptr %ret, align 4, !dbg !536
  br label %free_buf, !dbg !538

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %nints, align 4, !dbg !539
  %add = add i32 %6, 1, !dbg !540
  %conv6 = sext i32 %add to i64, !dbg !539
  %call7 = call noalias ptr @kcalloc(i64 noundef %conv6, i64 noundef 4, i32 noundef 3264) #17, !dbg !541
  store ptr %call7, ptr %ints, align 8, !dbg !542
  %7 = load ptr, ptr %ints, align 8, !dbg !543
  %tobool8 = icmp ne ptr %7, null, !dbg !543
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !545

if.then9:                                         ; preds = %if.end5
  store i32 -12, ptr %ret, align 4, !dbg !546
  br label %free_buf, !dbg !548

if.end10:                                         ; preds = %if.end5
  %8 = load ptr, ptr %buf, align 8, !dbg !549
  %9 = load i32, ptr %nints, align 4, !dbg !550
  %add11 = add i32 %9, 1, !dbg !551
  %10 = load ptr, ptr %ints, align 8, !dbg !552
  %call12 = call ptr @get_options(ptr noundef %8, i32 noundef %add11, ptr noundef %10) #16, !dbg !553
  %11 = load ptr, ptr %ints, align 8, !dbg !554
  %12 = load ptr, ptr %array.addr, align 8, !dbg !555
  store ptr %11, ptr %12, align 8, !dbg !556
  br label %free_buf, !dbg !557

free_buf:                                         ; preds = %if.end10, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !509), !dbg !558
  %13 = load ptr, ptr %buf, align 8, !dbg !559
  call void @kfree(ptr noundef %13) #16, !dbg !560
  %14 = load i32, ptr %ret, align 4, !dbg !561
  store i32 %14, ptr %retval, align 4, !dbg !562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

cleanup:                                          ; preds = %free_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !563
  call void @llvm.lifetime.end.p0(i64 4, ptr %nints) #15, !dbg !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %ints) #15, !dbg !563
  %15 = load i32, ptr %retval, align 4, !dbg !563
  ret i32 %15, !dbg !563
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !564 dso_local ptr @memdup_user_nul(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !570 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !577, metadata !DIExpression()), !dbg !578
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !579
  %1 = ptrtoint ptr %0 to i64, !dbg !579
  %2 = inttoptr i64 %1 to ptr, !dbg !579
  %3 = ptrtoint ptr %2 to i64, !dbg !579
  %cmp = icmp uge i64 %3, -4095, !dbg !579
  %lnot = xor i1 %cmp, true, !dbg !579
  %lnot1 = xor i1 %lnot, true, !dbg !579
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !579
  %conv = sext i32 %lnot.ext to i64, !dbg !579
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !579
  %tobool = icmp ne i64 %expval, 0, !dbg !579
  ret i1 %tobool, !dbg !580
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !581 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !585, metadata !DIExpression()), !dbg !586
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !587
  %1 = ptrtoint ptr %0 to i64, !dbg !588
  ret i64 %1, !dbg !589
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !590 dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !594 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !598, metadata !DIExpression()), !dbg !601
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !599, metadata !DIExpression()), !dbg !602
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !600, metadata !DIExpression()), !dbg !603
  %0 = load i64, ptr %n.addr, align 8, !dbg !604
  %1 = load i64, ptr %size.addr, align 8, !dbg !605
  %2 = load i32, ptr %flags.addr, align 4, !dbg !606
  %or = or i32 %2, 256, !dbg !607
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #17, !dbg !608
  ret ptr %call, !dbg !609
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !610 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @string_unescape(ptr noundef %src, ptr noundef %dst, i64 noundef %size, i32 noundef %flags) #0 align 16 !dbg !613 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %out = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !617, metadata !DIExpression()), !dbg !622
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !618, metadata !DIExpression()), !dbg !623
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !619, metadata !DIExpression()), !dbg !624
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !620, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %out, metadata !621, metadata !DIExpression()), !dbg !627
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !628
  store ptr %0, ptr %out, align 8, !dbg !627
  br label %while.cond, !dbg !629

while.cond:                                       ; preds = %if.end42, %if.then39, %if.then31, %if.then23, %if.then16, %entry
  %1 = load ptr, ptr %src.addr, align 8, !dbg !630
  %2 = load i8, ptr %1, align 1, !dbg !631
  %conv = zext i8 %2 to i32, !dbg !631
  %tobool = icmp ne i32 %conv, 0, !dbg !631
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !632

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, ptr %size.addr, align 8, !dbg !633
  %dec = add i64 %3, -1, !dbg !633
  store i64 %dec, ptr %size.addr, align 8, !dbg !633
  %tobool1 = icmp ne i64 %dec, 0, !dbg !632
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !634
  br i1 %4, label %while.body, label %while.end, !dbg !629

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %src.addr, align 8, !dbg !635
  %arrayidx = getelementptr i8, ptr %5, i64 0, !dbg !635
  %6 = load i8, ptr %arrayidx, align 1, !dbg !635
  %conv2 = zext i8 %6 to i32, !dbg !635
  %cmp = icmp eq i32 %conv2, 92, !dbg !638
  br i1 %cmp, label %land.lhs.true, label %if.end42, !dbg !639

land.lhs.true:                                    ; preds = %while.body
  %7 = load ptr, ptr %src.addr, align 8, !dbg !640
  %arrayidx4 = getelementptr i8, ptr %7, i64 1, !dbg !640
  %8 = load i8, ptr %arrayidx4, align 1, !dbg !640
  %conv5 = zext i8 %8 to i32, !dbg !640
  %cmp6 = icmp ne i32 %conv5, 0, !dbg !641
  br i1 %cmp6, label %land.lhs.true8, label %if.end42, !dbg !642

land.lhs.true8:                                   ; preds = %land.lhs.true
  %9 = load i64, ptr %size.addr, align 8, !dbg !643
  %cmp9 = icmp ugt i64 %9, 1, !dbg !644
  br i1 %cmp9, label %if.then, label %if.end42, !dbg !645

if.then:                                          ; preds = %land.lhs.true8
  %10 = load ptr, ptr %src.addr, align 8, !dbg !646
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !646
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !646
  %11 = load i64, ptr %size.addr, align 8, !dbg !648
  %dec11 = add i64 %11, -1, !dbg !648
  store i64 %dec11, ptr %size.addr, align 8, !dbg !648
  %12 = load i32, ptr %flags.addr, align 4, !dbg !649
  %conv12 = zext i32 %12 to i64, !dbg !649
  %and = and i64 %conv12, 1, !dbg !651
  %tobool13 = icmp ne i64 %and, 0, !dbg !651
  br i1 %tobool13, label %land.lhs.true14, label %if.end, !dbg !652

land.lhs.true14:                                  ; preds = %if.then
  %call = call zeroext i1 @unescape_space(ptr noundef %src.addr, ptr noundef %out) #16, !dbg !653
  br i1 %call, label %if.then16, label %if.end, !dbg !654

if.then16:                                        ; preds = %land.lhs.true14
  br label %while.cond, !dbg !655, !llvm.loop !656

if.end:                                           ; preds = %land.lhs.true14, %if.then
  %13 = load i32, ptr %flags.addr, align 4, !dbg !658
  %conv17 = zext i32 %13 to i64, !dbg !658
  %and18 = and i64 %conv17, 2, !dbg !660
  %tobool19 = icmp ne i64 %and18, 0, !dbg !660
  br i1 %tobool19, label %land.lhs.true20, label %if.end24, !dbg !661

land.lhs.true20:                                  ; preds = %if.end
  %call21 = call zeroext i1 @unescape_octal(ptr noundef %src.addr, ptr noundef %out) #16, !dbg !662
  br i1 %call21, label %if.then23, label %if.end24, !dbg !663

if.then23:                                        ; preds = %land.lhs.true20
  br label %while.cond, !dbg !664, !llvm.loop !656

if.end24:                                         ; preds = %land.lhs.true20, %if.end
  %14 = load i32, ptr %flags.addr, align 4, !dbg !665
  %conv25 = zext i32 %14 to i64, !dbg !665
  %and26 = and i64 %conv25, 4, !dbg !667
  %tobool27 = icmp ne i64 %and26, 0, !dbg !667
  br i1 %tobool27, label %land.lhs.true28, label %if.end32, !dbg !668

land.lhs.true28:                                  ; preds = %if.end24
  %call29 = call zeroext i1 @unescape_hex(ptr noundef %src.addr, ptr noundef %out) #16, !dbg !669
  br i1 %call29, label %if.then31, label %if.end32, !dbg !670

if.then31:                                        ; preds = %land.lhs.true28
  br label %while.cond, !dbg !671, !llvm.loop !656

if.end32:                                         ; preds = %land.lhs.true28, %if.end24
  %15 = load i32, ptr %flags.addr, align 4, !dbg !672
  %conv33 = zext i32 %15 to i64, !dbg !672
  %and34 = and i64 %conv33, 8, !dbg !674
  %tobool35 = icmp ne i64 %and34, 0, !dbg !674
  br i1 %tobool35, label %land.lhs.true36, label %if.end40, !dbg !675

land.lhs.true36:                                  ; preds = %if.end32
  %call37 = call zeroext i1 @unescape_special(ptr noundef %src.addr, ptr noundef %out) #16, !dbg !676
  br i1 %call37, label %if.then39, label %if.end40, !dbg !677

if.then39:                                        ; preds = %land.lhs.true36
  br label %while.cond, !dbg !678, !llvm.loop !656

if.end40:                                         ; preds = %land.lhs.true36, %if.end32
  %16 = load ptr, ptr %out, align 8, !dbg !679
  %incdec.ptr41 = getelementptr i8, ptr %16, i32 1, !dbg !679
  store ptr %incdec.ptr41, ptr %out, align 8, !dbg !679
  store i8 92, ptr %16, align 1, !dbg !680
  br label %if.end42, !dbg !681

if.end42:                                         ; preds = %if.end40, %land.lhs.true8, %land.lhs.true, %while.body
  %17 = load ptr, ptr %src.addr, align 8, !dbg !682
  %incdec.ptr43 = getelementptr i8, ptr %17, i32 1, !dbg !682
  store ptr %incdec.ptr43, ptr %src.addr, align 8, !dbg !682
  %18 = load i8, ptr %17, align 1, !dbg !683
  %19 = load ptr, ptr %out, align 8, !dbg !684
  %incdec.ptr44 = getelementptr i8, ptr %19, i32 1, !dbg !684
  store ptr %incdec.ptr44, ptr %out, align 8, !dbg !684
  store i8 %18, ptr %19, align 1, !dbg !685
  br label %while.cond, !dbg !629, !llvm.loop !656

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %out, align 8, !dbg !686
  store i8 0, ptr %20, align 1, !dbg !687
  %21 = load ptr, ptr %out, align 8, !dbg !688
  %22 = load ptr, ptr %dst.addr, align 8, !dbg !689
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64, !dbg !690
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64, !dbg !690
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !690
  %conv45 = trunc i64 %sub.ptr.sub to i32, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !691
  ret i32 %conv45, !dbg !692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unescape_space(ptr noundef %src, ptr noundef %dst) #0 align 16 !dbg !693 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !698, metadata !DIExpression()), !dbg !702
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !699, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %p, metadata !700, metadata !DIExpression()), !dbg !705
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !706
  %1 = load ptr, ptr %0, align 8, !dbg !707
  store ptr %1, ptr %p, align 8, !dbg !705
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %q, metadata !701, metadata !DIExpression()), !dbg !708
  %2 = load ptr, ptr %src.addr, align 8, !dbg !709
  %3 = load ptr, ptr %2, align 8, !dbg !710
  store ptr %3, ptr %q, align 8, !dbg !708
  %4 = load ptr, ptr %q, align 8, !dbg !711
  %5 = load i8, ptr %4, align 1, !dbg !712
  %conv = zext i8 %5 to i32, !dbg !712
  switch i32 %conv, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb1
    i32 116, label %sw.bb2
    i32 118, label %sw.bb3
    i32 102, label %sw.bb4
  ], !dbg !713

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %p, align 8, !dbg !714
  store i8 10, ptr %6, align 1, !dbg !716
  br label %sw.epilog, !dbg !717

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !dbg !718
  store i8 13, ptr %7, align 1, !dbg !719
  br label %sw.epilog, !dbg !720

sw.bb2:                                           ; preds = %entry
  %8 = load ptr, ptr %p, align 8, !dbg !721
  store i8 9, ptr %8, align 1, !dbg !722
  br label %sw.epilog, !dbg !723

sw.bb3:                                           ; preds = %entry
  %9 = load ptr, ptr %p, align 8, !dbg !724
  store i8 11, ptr %9, align 1, !dbg !725
  br label %sw.epilog, !dbg !726

sw.bb4:                                           ; preds = %entry
  %10 = load ptr, ptr %p, align 8, !dbg !727
  store i8 12, ptr %10, align 1, !dbg !728
  br label %sw.epilog, !dbg !729

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !730

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !731
  %12 = load ptr, ptr %11, align 8, !dbg !732
  %add.ptr = getelementptr i8, ptr %12, i64 1, !dbg !732
  store ptr %add.ptr, ptr %11, align 8, !dbg !732
  %13 = load ptr, ptr %src.addr, align 8, !dbg !733
  %14 = load ptr, ptr %13, align 8, !dbg !734
  %add.ptr5 = getelementptr i8, ptr %14, i64 1, !dbg !734
  store ptr %add.ptr5, ptr %13, align 8, !dbg !734
  store i1 true, ptr %retval, align 1, !dbg !735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !735

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !736
  %15 = load i1, ptr %retval, align 1, !dbg !736
  ret i1 %15, !dbg !736
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unescape_octal(ptr noundef %src, ptr noundef %dst) #0 align 16 !dbg !737 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %num = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !739, metadata !DIExpression()), !dbg !746
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %p, metadata !741, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !750
  %1 = load ptr, ptr %0, align 8, !dbg !751
  store ptr %1, ptr %p, align 8, !dbg !749
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %q, metadata !742, metadata !DIExpression()), !dbg !752
  %2 = load ptr, ptr %src.addr, align 8, !dbg !753
  %3 = load ptr, ptr %2, align 8, !dbg !754
  store ptr %3, ptr %q, align 8, !dbg !752
  call void @llvm.lifetime.start.p0(i64 1, ptr %num) #15, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %num, metadata !743, metadata !DIExpression()), !dbg !756
  %4 = load ptr, ptr %q, align 8, !dbg !757
  %5 = load i8, ptr %4, align 1, !dbg !759
  %call = call i32 @isodigit(i8 noundef zeroext %5) #16, !dbg !760
  %cmp = icmp eq i32 %call, 0, !dbg !761
  br i1 %cmp, label %if.then, label %if.end, !dbg !762

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !763

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %q, align 8, !dbg !764
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !764
  store ptr %incdec.ptr, ptr %q, align 8, !dbg !764
  %7 = load i8, ptr %6, align 1, !dbg !765
  %conv = zext i8 %7 to i32, !dbg !766
  %and = and i32 %conv, 7, !dbg !767
  %conv1 = trunc i32 %and to i8, !dbg !766
  store i8 %conv1, ptr %num, align 1, !dbg !768
  br label %while.cond, !dbg !769

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load i8, ptr %num, align 1, !dbg !770
  %conv2 = zext i8 %8 to i32, !dbg !770
  %cmp3 = icmp slt i32 %conv2, 32, !dbg !771
  br i1 %cmp3, label %land.lhs.true, label %land.end, !dbg !772

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %q, align 8, !dbg !773
  %10 = load i8, ptr %9, align 1, !dbg !774
  %call5 = call i32 @isodigit(i8 noundef zeroext %10) #16, !dbg !775
  %tobool = icmp ne i32 %call5, 0, !dbg !775
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !776

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %q, align 8, !dbg !777
  %12 = load ptr, ptr %src.addr, align 8, !dbg !778
  %13 = load ptr, ptr %12, align 8, !dbg !779
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64, !dbg !780
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !780
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !780
  %cmp6 = icmp slt i64 %sub.ptr.sub, 3, !dbg !781
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ], !dbg !782
  br i1 %14, label %while.body, label %while.end, !dbg !769

while.body:                                       ; preds = %land.end
  %15 = load i8, ptr %num, align 1, !dbg !783
  %conv8 = zext i8 %15 to i32, !dbg !783
  %shl = shl i32 %conv8, 3, !dbg !783
  %conv9 = trunc i32 %shl to i8, !dbg !783
  store i8 %conv9, ptr %num, align 1, !dbg !783
  %16 = load ptr, ptr %q, align 8, !dbg !785
  %incdec.ptr10 = getelementptr i8, ptr %16, i32 1, !dbg !785
  store ptr %incdec.ptr10, ptr %q, align 8, !dbg !785
  %17 = load i8, ptr %16, align 1, !dbg !786
  %conv11 = zext i8 %17 to i32, !dbg !787
  %and12 = and i32 %conv11, 7, !dbg !788
  %18 = load i8, ptr %num, align 1, !dbg !789
  %conv13 = zext i8 %18 to i32, !dbg !789
  %add = add i32 %conv13, %and12, !dbg !789
  %conv14 = trunc i32 %add to i8, !dbg !789
  store i8 %conv14, ptr %num, align 1, !dbg !789
  br label %while.cond, !dbg !769, !llvm.loop !790

while.end:                                        ; preds = %land.end
  %19 = load i8, ptr %num, align 1, !dbg !792
  %20 = load ptr, ptr %p, align 8, !dbg !793
  store i8 %19, ptr %20, align 1, !dbg !794
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !795
  %22 = load ptr, ptr %21, align 8, !dbg !796
  %add.ptr = getelementptr i8, ptr %22, i64 1, !dbg !796
  store ptr %add.ptr, ptr %21, align 8, !dbg !796
  %23 = load ptr, ptr %q, align 8, !dbg !797
  %24 = load ptr, ptr %src.addr, align 8, !dbg !798
  store ptr %23, ptr %24, align 8, !dbg !799
  store i1 true, ptr %retval, align 1, !dbg !800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !800

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %num) #15, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !801
  %25 = load i1, ptr %retval, align 1, !dbg !801
  ret i1 %25, !dbg !801
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unescape_hex(ptr noundef %src, ptr noundef %dst) #0 align 16 !dbg !802 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %digit = alloca i32, align 4
  %num = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !804, metadata !DIExpression()), !dbg !810
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !805, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %p, metadata !806, metadata !DIExpression()), !dbg !813
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !814
  %1 = load ptr, ptr %0, align 8, !dbg !815
  store ptr %1, ptr %p, align 8, !dbg !813
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %q, metadata !807, metadata !DIExpression()), !dbg !816
  %2 = load ptr, ptr %src.addr, align 8, !dbg !817
  %3 = load ptr, ptr %2, align 8, !dbg !818
  store ptr %3, ptr %q, align 8, !dbg !816
  call void @llvm.lifetime.start.p0(i64 4, ptr %digit) #15, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !808, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 1, ptr %num) #15, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %num, metadata !809, metadata !DIExpression()), !dbg !822
  %4 = load ptr, ptr %q, align 8, !dbg !823
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !823
  store ptr %incdec.ptr, ptr %q, align 8, !dbg !823
  %5 = load i8, ptr %4, align 1, !dbg !825
  %conv = zext i8 %5 to i32, !dbg !825
  %cmp = icmp ne i32 %conv, 120, !dbg !826
  br i1 %cmp, label %if.then, label %if.end, !dbg !827

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !828

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %q, align 8, !dbg !829
  %incdec.ptr2 = getelementptr i8, ptr %6, i32 1, !dbg !829
  store ptr %incdec.ptr2, ptr %q, align 8, !dbg !829
  %7 = load i8, ptr %6, align 1, !dbg !830
  %call = call i32 @hex_to_bin(i8 noundef zeroext %7) #16, !dbg !831
  store i32 %call, ptr %digit, align 4, !dbg !832
  %conv3 = trunc i32 %call to i8, !dbg !833
  store i8 %conv3, ptr %num, align 1, !dbg !834
  %8 = load i32, ptr %digit, align 4, !dbg !835
  %cmp4 = icmp slt i32 %8, 0, !dbg !837
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !838

if.then6:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !839

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %q, align 8, !dbg !840
  %10 = load i8, ptr %9, align 1, !dbg !841
  %call8 = call i32 @hex_to_bin(i8 noundef zeroext %10) #16, !dbg !842
  store i32 %call8, ptr %digit, align 4, !dbg !843
  %11 = load i32, ptr %digit, align 4, !dbg !844
  %cmp9 = icmp sge i32 %11, 0, !dbg !846
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !847

if.then11:                                        ; preds = %if.end7
  %12 = load ptr, ptr %q, align 8, !dbg !848
  %incdec.ptr12 = getelementptr i8, ptr %12, i32 1, !dbg !848
  store ptr %incdec.ptr12, ptr %q, align 8, !dbg !848
  %13 = load i8, ptr %num, align 1, !dbg !850
  %conv13 = zext i8 %13 to i32, !dbg !850
  %shl = shl i32 %conv13, 4, !dbg !851
  %14 = load i32, ptr %digit, align 4, !dbg !852
  %or = or i32 %shl, %14, !dbg !853
  %conv14 = trunc i32 %or to i8, !dbg !854
  store i8 %conv14, ptr %num, align 1, !dbg !855
  br label %if.end15, !dbg !856

if.end15:                                         ; preds = %if.then11, %if.end7
  %15 = load i8, ptr %num, align 1, !dbg !857
  %16 = load ptr, ptr %p, align 8, !dbg !858
  store i8 %15, ptr %16, align 1, !dbg !859
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !860
  %18 = load ptr, ptr %17, align 8, !dbg !861
  %add.ptr = getelementptr i8, ptr %18, i64 1, !dbg !861
  store ptr %add.ptr, ptr %17, align 8, !dbg !861
  %19 = load ptr, ptr %q, align 8, !dbg !862
  %20 = load ptr, ptr %src.addr, align 8, !dbg !863
  store ptr %19, ptr %20, align 8, !dbg !864
  store i1 true, ptr %retval, align 1, !dbg !865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !865

cleanup:                                          ; preds = %if.end15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %num) #15, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %digit) #15, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !866
  %21 = load i1, ptr %retval, align 1, !dbg !866
  ret i1 %21, !dbg !866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unescape_special(ptr noundef %src, ptr noundef %dst) #0 align 16 !dbg !867 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !869, metadata !DIExpression()), !dbg !873
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %p, metadata !871, metadata !DIExpression()), !dbg !876
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !877
  %1 = load ptr, ptr %0, align 8, !dbg !878
  store ptr %1, ptr %p, align 8, !dbg !876
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %q, metadata !872, metadata !DIExpression()), !dbg !879
  %2 = load ptr, ptr %src.addr, align 8, !dbg !880
  %3 = load ptr, ptr %2, align 8, !dbg !881
  store ptr %3, ptr %q, align 8, !dbg !879
  %4 = load ptr, ptr %q, align 8, !dbg !882
  %5 = load i8, ptr %4, align 1, !dbg !883
  %conv = zext i8 %5 to i32, !dbg !883
  switch i32 %conv, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb1
    i32 97, label %sw.bb2
    i32 101, label %sw.bb3
  ], !dbg !884

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %p, align 8, !dbg !885
  store i8 34, ptr %6, align 1, !dbg !887
  br label %sw.epilog, !dbg !888

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !dbg !889
  store i8 92, ptr %7, align 1, !dbg !890
  br label %sw.epilog, !dbg !891

sw.bb2:                                           ; preds = %entry
  %8 = load ptr, ptr %p, align 8, !dbg !892
  store i8 7, ptr %8, align 1, !dbg !893
  br label %sw.epilog, !dbg !894

sw.bb3:                                           ; preds = %entry
  %9 = load ptr, ptr %p, align 8, !dbg !895
  store i8 27, ptr %9, align 1, !dbg !896
  br label %sw.epilog, !dbg !897

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !899
  %11 = load ptr, ptr %10, align 8, !dbg !900
  %add.ptr = getelementptr i8, ptr %11, i64 1, !dbg !900
  store ptr %add.ptr, ptr %10, align 8, !dbg !900
  %12 = load ptr, ptr %src.addr, align 8, !dbg !901
  %13 = load ptr, ptr %12, align 8, !dbg !902
  %add.ptr4 = getelementptr i8, ptr %13, i64 1, !dbg !902
  store ptr %add.ptr4, ptr %12, align 8, !dbg !902
  store i1 true, ptr %retval, align 1, !dbg !903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !903

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !904
  %14 = load i1, ptr %retval, align 1, !dbg !904
  ret i1 %14, !dbg !904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @string_escape_mem(ptr noundef %src, i64 noundef %isz, ptr noundef %dst, i64 noundef %osz, i32 noundef %flags, ptr noundef %only) #0 align 16 !dbg !905 {
entry:
  %src.addr = alloca ptr, align 8
  %isz.addr = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %osz.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %only.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  %is_dict = alloca i8, align 1
  %is_append = alloca i8, align 1
  %c = alloca i8, align 1
  %in_dict = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !909, metadata !DIExpression()), !dbg !922
  store i64 %isz, ptr %isz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %isz.addr, metadata !910, metadata !DIExpression()), !dbg !923
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !911, metadata !DIExpression()), !dbg !924
  store i64 %osz, ptr %osz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %osz.addr, metadata !912, metadata !DIExpression()), !dbg !925
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !913, metadata !DIExpression()), !dbg !926
  store ptr %only, ptr %only.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %only.addr, metadata !914, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %p, metadata !915, metadata !DIExpression()), !dbg !929
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !930
  store ptr %0, ptr %p, align 8, !dbg !929
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %end, metadata !916, metadata !DIExpression()), !dbg !932
  %1 = load ptr, ptr %p, align 8, !dbg !933
  %2 = load i64, ptr %osz.addr, align 8, !dbg !934
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !935
  store ptr %add.ptr, ptr %end, align 8, !dbg !932
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_dict) #15, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %is_dict, metadata !917, metadata !DIExpression()), !dbg !937
  %3 = load ptr, ptr %only.addr, align 8, !dbg !938
  %tobool = icmp ne ptr %3, null, !dbg !938
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !939

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %only.addr, align 8, !dbg !940
  %5 = load i8, ptr %4, align 1, !dbg !941
  %conv = zext i8 %5 to i32, !dbg !941
  %tobool1 = icmp ne i32 %conv, 0, !dbg !939
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !942
  %frombool = zext i1 %6 to i8, !dbg !937
  store i8 %frombool, ptr %is_dict, align 1, !dbg !937
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_append) #15, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %is_append, metadata !918, metadata !DIExpression()), !dbg !944
  %7 = load i32, ptr %flags.addr, align 4, !dbg !945
  %conv2 = zext i32 %7 to i64, !dbg !945
  %and = and i64 %conv2, 256, !dbg !946
  %tobool3 = icmp ne i64 %and, 0, !dbg !945
  %frombool4 = zext i1 %tobool3 to i8, !dbg !944
  store i8 %frombool4, ptr %is_append, align 1, !dbg !944
  br label %while.cond, !dbg !947

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %land.end
  %8 = load i64, ptr %isz.addr, align 8, !dbg !948
  %dec = add i64 %8, -1, !dbg !948
  store i64 %dec, ptr %isz.addr, align 8, !dbg !948
  %tobool5 = icmp ne i64 %8, 0, !dbg !947
  br i1 %tobool5, label %while.body, label %while.end, !dbg !947

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %c, metadata !919, metadata !DIExpression()), !dbg !950
  %9 = load ptr, ptr %src.addr, align 8, !dbg !951
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !951
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !951
  %10 = load i8, ptr %9, align 1, !dbg !952
  store i8 %10, ptr %c, align 1, !dbg !950
  call void @llvm.lifetime.start.p0(i64 1, ptr %in_dict) #15, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %in_dict, metadata !921, metadata !DIExpression()), !dbg !954
  %11 = load i8, ptr %is_dict, align 1, !dbg !955, !range !956, !noundef !957
  %tobool6 = trunc i8 %11 to i1, !dbg !955
  br i1 %tobool6, label %land.rhs8, label %land.end11, !dbg !958

land.rhs8:                                        ; preds = %while.body
  %12 = load ptr, ptr %only.addr, align 8, !dbg !959
  %13 = load i8, ptr %c, align 1, !dbg !960
  %conv9 = zext i8 %13 to i32, !dbg !960
  %call = call ptr @strchr(ptr noundef %12, i32 noundef %conv9) #16, !dbg !961
  %tobool10 = icmp ne ptr %call, null, !dbg !958
  br label %land.end11

land.end11:                                       ; preds = %land.rhs8, %while.body
  %14 = phi i1 [ false, %while.body ], [ %tobool10, %land.rhs8 ], !dbg !962
  %frombool12 = zext i1 %14 to i8, !dbg !954
  store i8 %frombool12, ptr %in_dict, align 1, !dbg !954
  %15 = load i8, ptr %is_append, align 1, !dbg !963, !range !956, !noundef !957
  %tobool13 = trunc i8 %15 to i1, !dbg !963
  br i1 %tobool13, label %if.end, label %lor.lhs.false, !dbg !965

lor.lhs.false:                                    ; preds = %land.end11
  %16 = load i8, ptr %in_dict, align 1, !dbg !966, !range !956, !noundef !957
  %tobool15 = trunc i8 %16 to i1, !dbg !966
  br i1 %tobool15, label %if.end, label %land.lhs.true, !dbg !967

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load i8, ptr %is_dict, align 1, !dbg !968, !range !956, !noundef !957
  %tobool17 = trunc i8 %17 to i1, !dbg !968
  br i1 %tobool17, label %land.lhs.true19, label %if.end, !dbg !969

land.lhs.true19:                                  ; preds = %land.lhs.true
  %18 = load i8, ptr %c, align 1, !dbg !970
  %19 = load ptr, ptr %end, align 8, !dbg !971
  %call20 = call zeroext i1 @escape_passthrough(i8 noundef zeroext %18, ptr noundef %p, ptr noundef %19) #16, !dbg !972
  br i1 %call20, label %if.then, label %if.end, !dbg !973

if.then:                                          ; preds = %land.lhs.true19
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974, !llvm.loop !975

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true, %lor.lhs.false, %land.end11
  %20 = load i8, ptr %is_append, align 1, !dbg !977, !range !956, !noundef !957
  %tobool22 = trunc i8 %20 to i1, !dbg !977
  br i1 %tobool22, label %land.lhs.true24, label %land.lhs.true27, !dbg !979

land.lhs.true24:                                  ; preds = %if.end
  %21 = load i8, ptr %in_dict, align 1, !dbg !980, !range !956, !noundef !957
  %tobool25 = trunc i8 %21 to i1, !dbg !980
  br i1 %tobool25, label %if.end44, label %land.lhs.true27, !dbg !981

land.lhs.true27:                                  ; preds = %land.lhs.true24, %if.end
  %22 = load i8, ptr %c, align 1, !dbg !982
  %conv28 = zext i8 %22 to i32, !dbg !982
  %cmp = icmp sle i32 %conv28, 127, !dbg !982
  br i1 %cmp, label %land.lhs.true30, label %if.end44, !dbg !983

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %23 = load i8, ptr %c, align 1, !dbg !984
  %conv31 = zext i8 %23 to i32, !dbg !984
  %idxprom = sext i32 %conv31 to i64, !dbg !984
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !984
  %24 = load i8, ptr %arrayidx, align 1, !dbg !984
  %conv32 = zext i8 %24 to i32, !dbg !984
  %and33 = and i32 %conv32, 151, !dbg !984
  %cmp34 = icmp ne i32 %and33, 0, !dbg !984
  br i1 %cmp34, label %land.lhs.true36, label %if.end44, !dbg !985

land.lhs.true36:                                  ; preds = %land.lhs.true30
  %25 = load i32, ptr %flags.addr, align 4, !dbg !986
  %conv37 = zext i32 %25 to i64, !dbg !986
  %and38 = and i64 %conv37, 128, !dbg !987
  %tobool39 = icmp ne i64 %and38, 0, !dbg !987
  br i1 %tobool39, label %land.lhs.true40, label %if.end44, !dbg !988

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %26 = load i8, ptr %c, align 1, !dbg !989
  %27 = load ptr, ptr %end, align 8, !dbg !990
  %call41 = call zeroext i1 @escape_passthrough(i8 noundef zeroext %26, ptr noundef %p, ptr noundef %27) #16, !dbg !991
  br i1 %call41, label %if.then43, label %if.end44, !dbg !992

if.then43:                                        ; preds = %land.lhs.true40
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993, !llvm.loop !975

if.end44:                                         ; preds = %land.lhs.true40, %land.lhs.true36, %land.lhs.true30, %land.lhs.true27, %land.lhs.true24
  %28 = load i8, ptr %is_append, align 1, !dbg !994, !range !956, !noundef !957
  %tobool45 = trunc i8 %28 to i1, !dbg !994
  br i1 %tobool45, label %land.lhs.true47, label %land.lhs.true50, !dbg !996

land.lhs.true47:                                  ; preds = %if.end44
  %29 = load i8, ptr %in_dict, align 1, !dbg !997, !range !956, !noundef !957
  %tobool48 = trunc i8 %29 to i1, !dbg !997
  br i1 %tobool48, label %if.end66, label %land.lhs.true50, !dbg !998

land.lhs.true50:                                  ; preds = %land.lhs.true47, %if.end44
  %30 = load i8, ptr %c, align 1, !dbg !999
  %conv51 = zext i8 %30 to i32, !dbg !999
  %idxprom52 = sext i32 %conv51 to i64, !dbg !999
  %arrayidx53 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom52, !dbg !999
  %31 = load i8, ptr %arrayidx53, align 1, !dbg !999
  %conv54 = zext i8 %31 to i32, !dbg !999
  %and55 = and i32 %conv54, 151, !dbg !999
  %cmp56 = icmp ne i32 %and55, 0, !dbg !999
  br i1 %cmp56, label %land.lhs.true58, label %if.end66, !dbg !1000

land.lhs.true58:                                  ; preds = %land.lhs.true50
  %32 = load i32, ptr %flags.addr, align 4, !dbg !1001
  %conv59 = zext i32 %32 to i64, !dbg !1001
  %and60 = and i64 %conv59, 16, !dbg !1002
  %tobool61 = icmp ne i64 %and60, 0, !dbg !1002
  br i1 %tobool61, label %land.lhs.true62, label %if.end66, !dbg !1003

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %33 = load i8, ptr %c, align 1, !dbg !1004
  %34 = load ptr, ptr %end, align 8, !dbg !1005
  %call63 = call zeroext i1 @escape_passthrough(i8 noundef zeroext %33, ptr noundef %p, ptr noundef %34) #16, !dbg !1006
  br i1 %call63, label %if.then65, label %if.end66, !dbg !1007

if.then65:                                        ; preds = %land.lhs.true62
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1008, !llvm.loop !975

if.end66:                                         ; preds = %land.lhs.true62, %land.lhs.true58, %land.lhs.true50, %land.lhs.true47
  %35 = load i8, ptr %is_append, align 1, !dbg !1009, !range !956, !noundef !957
  %tobool67 = trunc i8 %35 to i1, !dbg !1009
  br i1 %tobool67, label %land.lhs.true69, label %land.lhs.true72, !dbg !1011

land.lhs.true69:                                  ; preds = %if.end66
  %36 = load i8, ptr %in_dict, align 1, !dbg !1012, !range !956, !noundef !957
  %tobool70 = trunc i8 %36 to i1, !dbg !1012
  br i1 %tobool70, label %if.end84, label %land.lhs.true72, !dbg !1013

land.lhs.true72:                                  ; preds = %land.lhs.true69, %if.end66
  %37 = load i8, ptr %c, align 1, !dbg !1014
  %conv73 = zext i8 %37 to i32, !dbg !1014
  %cmp74 = icmp sle i32 %conv73, 127, !dbg !1014
  br i1 %cmp74, label %land.lhs.true76, label %if.end84, !dbg !1015

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %38 = load i32, ptr %flags.addr, align 4, !dbg !1016
  %conv77 = zext i32 %38 to i64, !dbg !1016
  %and78 = and i64 %conv77, 64, !dbg !1017
  %tobool79 = icmp ne i64 %and78, 0, !dbg !1017
  br i1 %tobool79, label %land.lhs.true80, label %if.end84, !dbg !1018

land.lhs.true80:                                  ; preds = %land.lhs.true76
  %39 = load i8, ptr %c, align 1, !dbg !1019
  %40 = load ptr, ptr %end, align 8, !dbg !1020
  %call81 = call zeroext i1 @escape_passthrough(i8 noundef zeroext %39, ptr noundef %p, ptr noundef %40) #16, !dbg !1021
  br i1 %call81, label %if.then83, label %if.end84, !dbg !1022

if.then83:                                        ; preds = %land.lhs.true80
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1023, !llvm.loop !975

if.end84:                                         ; preds = %land.lhs.true80, %land.lhs.true76, %land.lhs.true72, %land.lhs.true69
  %41 = load i32, ptr %flags.addr, align 4, !dbg !1024
  %conv85 = zext i32 %41 to i64, !dbg !1024
  %and86 = and i64 %conv85, 1, !dbg !1026
  %tobool87 = icmp ne i64 %and86, 0, !dbg !1026
  br i1 %tobool87, label %land.lhs.true88, label %if.end92, !dbg !1027

land.lhs.true88:                                  ; preds = %if.end84
  %42 = load i8, ptr %c, align 1, !dbg !1028
  %43 = load ptr, ptr %end, align 8, !dbg !1029
  %call89 = call zeroext i1 @escape_space(i8 noundef zeroext %42, ptr noundef %p, ptr noundef %43) #16, !dbg !1030
  br i1 %call89, label %if.then91, label %if.end92, !dbg !1031

if.then91:                                        ; preds = %land.lhs.true88
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032, !llvm.loop !975

if.end92:                                         ; preds = %land.lhs.true88, %if.end84
  %44 = load i32, ptr %flags.addr, align 4, !dbg !1033
  %conv93 = zext i32 %44 to i64, !dbg !1033
  %and94 = and i64 %conv93, 2, !dbg !1035
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1035
  br i1 %tobool95, label %land.lhs.true96, label %if.end100, !dbg !1036

land.lhs.true96:                                  ; preds = %if.end92
  %45 = load i8, ptr %c, align 1, !dbg !1037
  %46 = load ptr, ptr %end, align 8, !dbg !1038
  %call97 = call zeroext i1 @escape_special(i8 noundef zeroext %45, ptr noundef %p, ptr noundef %46) #16, !dbg !1039
  br i1 %call97, label %if.then99, label %if.end100, !dbg !1040

if.then99:                                        ; preds = %land.lhs.true96
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041, !llvm.loop !975

if.end100:                                        ; preds = %land.lhs.true96, %if.end92
  %47 = load i32, ptr %flags.addr, align 4, !dbg !1042
  %conv101 = zext i32 %47 to i64, !dbg !1042
  %and102 = and i64 %conv101, 4, !dbg !1044
  %tobool103 = icmp ne i64 %and102, 0, !dbg !1044
  br i1 %tobool103, label %land.lhs.true104, label %if.end108, !dbg !1045

land.lhs.true104:                                 ; preds = %if.end100
  %48 = load i8, ptr %c, align 1, !dbg !1046
  %49 = load ptr, ptr %end, align 8, !dbg !1047
  %call105 = call zeroext i1 @escape_null(i8 noundef zeroext %48, ptr noundef %p, ptr noundef %49) #16, !dbg !1048
  br i1 %call105, label %if.then107, label %if.end108, !dbg !1049

if.then107:                                       ; preds = %land.lhs.true104
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1050, !llvm.loop !975

if.end108:                                        ; preds = %land.lhs.true104, %if.end100
  %50 = load i32, ptr %flags.addr, align 4, !dbg !1051
  %conv109 = zext i32 %50 to i64, !dbg !1051
  %and110 = and i64 %conv109, 8, !dbg !1053
  %tobool111 = icmp ne i64 %and110, 0, !dbg !1053
  br i1 %tobool111, label %land.lhs.true112, label %if.end116, !dbg !1054

land.lhs.true112:                                 ; preds = %if.end108
  %51 = load i8, ptr %c, align 1, !dbg !1055
  %52 = load ptr, ptr %end, align 8, !dbg !1056
  %call113 = call zeroext i1 @escape_octal(i8 noundef zeroext %51, ptr noundef %p, ptr noundef %52) #16, !dbg !1057
  br i1 %call113, label %if.then115, label %if.end116, !dbg !1058

if.then115:                                       ; preds = %land.lhs.true112
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1059, !llvm.loop !975

if.end116:                                        ; preds = %land.lhs.true112, %if.end108
  %53 = load i32, ptr %flags.addr, align 4, !dbg !1060
  %conv117 = zext i32 %53 to i64, !dbg !1060
  %and118 = and i64 %conv117, 32, !dbg !1062
  %tobool119 = icmp ne i64 %and118, 0, !dbg !1062
  br i1 %tobool119, label %land.lhs.true120, label %if.end124, !dbg !1063

land.lhs.true120:                                 ; preds = %if.end116
  %54 = load i8, ptr %c, align 1, !dbg !1064
  %55 = load ptr, ptr %end, align 8, !dbg !1065
  %call121 = call zeroext i1 @escape_hex(i8 noundef zeroext %54, ptr noundef %p, ptr noundef %55) #16, !dbg !1066
  br i1 %call121, label %if.then123, label %if.end124, !dbg !1067

if.then123:                                       ; preds = %land.lhs.true120
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1068, !llvm.loop !975

if.end124:                                        ; preds = %land.lhs.true120, %if.end116
  %56 = load i8, ptr %c, align 1, !dbg !1069
  %57 = load ptr, ptr %end, align 8, !dbg !1070
  %call125 = call zeroext i1 @escape_passthrough(i8 noundef zeroext %56, ptr noundef %p, ptr noundef %57) #16, !dbg !1071
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !976
  br label %cleanup, !dbg !976

cleanup:                                          ; preds = %if.end124, %if.then123, %if.then115, %if.then107, %if.then99, %if.then91, %if.then83, %if.then65, %if.then43, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %in_dict) #15, !dbg !976
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !976
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !947, !llvm.loop !975

while.end:                                        ; preds = %while.cond
  %58 = load ptr, ptr %p, align 8, !dbg !1072
  %59 = load ptr, ptr %dst.addr, align 8, !dbg !1073
  %sub.ptr.lhs.cast = ptrtoint ptr %58 to i64, !dbg !1074
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i64, !dbg !1074
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1074
  %conv127 = trunc i64 %sub.ptr.sub to i32, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_append) #15, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_dict) #15, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1075
  ret i32 %conv127, !dbg !1076

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1077 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @escape_passthrough(i8 noundef zeroext %c, ptr noundef %dst, ptr noundef %end) #0 align 16 !dbg !1080 {
entry:
  %c.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1084, metadata !DIExpression()), !dbg !1088
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1085, metadata !DIExpression()), !dbg !1089
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1086, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1087, metadata !DIExpression()), !dbg !1092
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1093
  %1 = load ptr, ptr %0, align 8, !dbg !1094
  store ptr %1, ptr %out, align 8, !dbg !1092
  %2 = load ptr, ptr %out, align 8, !dbg !1095
  %3 = load ptr, ptr %end.addr, align 8, !dbg !1097
  %cmp = icmp ult ptr %2, %3, !dbg !1098
  br i1 %cmp, label %if.then, label %if.end, !dbg !1099

if.then:                                          ; preds = %entry
  %4 = load i8, ptr %c.addr, align 1, !dbg !1100
  %5 = load ptr, ptr %out, align 8, !dbg !1101
  store i8 %4, ptr %5, align 1, !dbg !1102
  br label %if.end, !dbg !1103

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %out, align 8, !dbg !1104
  %add.ptr = getelementptr i8, ptr %6, i64 1, !dbg !1105
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !1106
  store ptr %add.ptr, ptr %7, align 8, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !1108
  ret i1 true, !dbg !1109
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @escape_space(i8 noundef zeroext %c, ptr noundef %dst, ptr noundef %end) #0 align 16 !dbg !1110 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  %to = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1112, metadata !DIExpression()), !dbg !1117
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1113, metadata !DIExpression()), !dbg !1118
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1114, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1115, metadata !DIExpression()), !dbg !1121
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1122
  %1 = load ptr, ptr %0, align 8, !dbg !1123
  store ptr %1, ptr %out, align 8, !dbg !1121
  call void @llvm.lifetime.start.p0(i64 1, ptr %to) #15, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %to, metadata !1116, metadata !DIExpression()), !dbg !1125
  %2 = load i8, ptr %c.addr, align 1, !dbg !1126
  %conv = zext i8 %2 to i32, !dbg !1126
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb1
    i32 9, label %sw.bb2
    i32 11, label %sw.bb3
    i32 12, label %sw.bb4
  ], !dbg !1127

sw.bb:                                            ; preds = %entry
  store i8 110, ptr %to, align 1, !dbg !1128
  br label %sw.epilog, !dbg !1130

sw.bb1:                                           ; preds = %entry
  store i8 114, ptr %to, align 1, !dbg !1131
  br label %sw.epilog, !dbg !1132

sw.bb2:                                           ; preds = %entry
  store i8 116, ptr %to, align 1, !dbg !1133
  br label %sw.epilog, !dbg !1134

sw.bb3:                                           ; preds = %entry
  store i8 118, ptr %to, align 1, !dbg !1135
  br label %sw.epilog, !dbg !1136

sw.bb4:                                           ; preds = %entry
  store i8 102, ptr %to, align 1, !dbg !1137
  br label %sw.epilog, !dbg !1138

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1139

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load ptr, ptr %out, align 8, !dbg !1140
  %4 = load ptr, ptr %end.addr, align 8, !dbg !1142
  %cmp = icmp ult ptr %3, %4, !dbg !1143
  br i1 %cmp, label %if.then, label %if.end, !dbg !1144

if.then:                                          ; preds = %sw.epilog
  %5 = load ptr, ptr %out, align 8, !dbg !1145
  store i8 92, ptr %5, align 1, !dbg !1146
  br label %if.end, !dbg !1147

if.end:                                           ; preds = %if.then, %sw.epilog
  %6 = load ptr, ptr %out, align 8, !dbg !1148
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1148
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !1148
  %7 = load ptr, ptr %out, align 8, !dbg !1149
  %8 = load ptr, ptr %end.addr, align 8, !dbg !1151
  %cmp6 = icmp ult ptr %7, %8, !dbg !1152
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1153

if.then8:                                         ; preds = %if.end
  %9 = load i8, ptr %to, align 1, !dbg !1154
  %10 = load ptr, ptr %out, align 8, !dbg !1155
  store i8 %9, ptr %10, align 1, !dbg !1156
  br label %if.end9, !dbg !1157

if.end9:                                          ; preds = %if.then8, %if.end
  %11 = load ptr, ptr %out, align 8, !dbg !1158
  %incdec.ptr10 = getelementptr i8, ptr %11, i32 1, !dbg !1158
  store ptr %incdec.ptr10, ptr %out, align 8, !dbg !1158
  %12 = load ptr, ptr %out, align 8, !dbg !1159
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !1160
  store ptr %12, ptr %13, align 8, !dbg !1161
  store i1 true, ptr %retval, align 1, !dbg !1162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1162

cleanup:                                          ; preds = %if.end9, %sw.default
  call void @llvm.lifetime.end.p0(i64 1, ptr %to) #15, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !1163
  %14 = load i1, ptr %retval, align 1, !dbg !1163
  ret i1 %14, !dbg !1163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @escape_special(i8 noundef zeroext %c, ptr noundef %dst, ptr noundef %end) #0 align 16 !dbg !1164 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  %to = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1166, metadata !DIExpression()), !dbg !1171
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1167, metadata !DIExpression()), !dbg !1172
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1168, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1169, metadata !DIExpression()), !dbg !1175
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1176
  %1 = load ptr, ptr %0, align 8, !dbg !1177
  store ptr %1, ptr %out, align 8, !dbg !1175
  call void @llvm.lifetime.start.p0(i64 1, ptr %to) #15, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %to, metadata !1170, metadata !DIExpression()), !dbg !1179
  %2 = load i8, ptr %c.addr, align 1, !dbg !1180
  %conv = zext i8 %2 to i32, !dbg !1180
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 7, label %sw.bb1
    i32 27, label %sw.bb2
    i32 34, label %sw.bb3
  ], !dbg !1181

sw.bb:                                            ; preds = %entry
  store i8 92, ptr %to, align 1, !dbg !1182
  br label %sw.epilog, !dbg !1184

sw.bb1:                                           ; preds = %entry
  store i8 97, ptr %to, align 1, !dbg !1185
  br label %sw.epilog, !dbg !1186

sw.bb2:                                           ; preds = %entry
  store i8 101, ptr %to, align 1, !dbg !1187
  br label %sw.epilog, !dbg !1188

sw.bb3:                                           ; preds = %entry
  store i8 34, ptr %to, align 1, !dbg !1189
  br label %sw.epilog, !dbg !1190

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1191

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load ptr, ptr %out, align 8, !dbg !1192
  %4 = load ptr, ptr %end.addr, align 8, !dbg !1194
  %cmp = icmp ult ptr %3, %4, !dbg !1195
  br i1 %cmp, label %if.then, label %if.end, !dbg !1196

if.then:                                          ; preds = %sw.epilog
  %5 = load ptr, ptr %out, align 8, !dbg !1197
  store i8 92, ptr %5, align 1, !dbg !1198
  br label %if.end, !dbg !1199

if.end:                                           ; preds = %if.then, %sw.epilog
  %6 = load ptr, ptr %out, align 8, !dbg !1200
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1200
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !1200
  %7 = load ptr, ptr %out, align 8, !dbg !1201
  %8 = load ptr, ptr %end.addr, align 8, !dbg !1203
  %cmp5 = icmp ult ptr %7, %8, !dbg !1204
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1205

if.then7:                                         ; preds = %if.end
  %9 = load i8, ptr %to, align 1, !dbg !1206
  %10 = load ptr, ptr %out, align 8, !dbg !1207
  store i8 %9, ptr %10, align 1, !dbg !1208
  br label %if.end8, !dbg !1209

if.end8:                                          ; preds = %if.then7, %if.end
  %11 = load ptr, ptr %out, align 8, !dbg !1210
  %incdec.ptr9 = getelementptr i8, ptr %11, i32 1, !dbg !1210
  store ptr %incdec.ptr9, ptr %out, align 8, !dbg !1210
  %12 = load ptr, ptr %out, align 8, !dbg !1211
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !1212
  store ptr %12, ptr %13, align 8, !dbg !1213
  store i1 true, ptr %retval, align 1, !dbg !1214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1214

cleanup:                                          ; preds = %if.end8, %sw.default
  call void @llvm.lifetime.end.p0(i64 1, ptr %to) #15, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !1215
  %14 = load i1, ptr %retval, align 1, !dbg !1215
  ret i1 %14, !dbg !1215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @escape_null(i8 noundef zeroext %c, ptr noundef %dst, ptr noundef %end) #0 align 16 !dbg !1216 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1218, metadata !DIExpression()), !dbg !1222
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1219, metadata !DIExpression()), !dbg !1223
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1220, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1221, metadata !DIExpression()), !dbg !1226
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1227
  %1 = load ptr, ptr %0, align 8, !dbg !1228
  store ptr %1, ptr %out, align 8, !dbg !1226
  %2 = load i8, ptr %c.addr, align 1, !dbg !1229
  %tobool = icmp ne i8 %2, 0, !dbg !1229
  br i1 %tobool, label %if.then, label %if.end, !dbg !1231

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %out, align 8, !dbg !1233
  %4 = load ptr, ptr %end.addr, align 8, !dbg !1235
  %cmp = icmp ult ptr %3, %4, !dbg !1236
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1237

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %out, align 8, !dbg !1238
  store i8 92, ptr %5, align 1, !dbg !1239
  br label %if.end2, !dbg !1240

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load ptr, ptr %out, align 8, !dbg !1241
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1241
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !1241
  %7 = load ptr, ptr %out, align 8, !dbg !1242
  %8 = load ptr, ptr %end.addr, align 8, !dbg !1244
  %cmp3 = icmp ult ptr %7, %8, !dbg !1245
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1246

if.then4:                                         ; preds = %if.end2
  %9 = load ptr, ptr %out, align 8, !dbg !1247
  store i8 48, ptr %9, align 1, !dbg !1248
  br label %if.end5, !dbg !1249

if.end5:                                          ; preds = %if.then4, %if.end2
  %10 = load ptr, ptr %out, align 8, !dbg !1250
  %incdec.ptr6 = getelementptr i8, ptr %10, i32 1, !dbg !1250
  store ptr %incdec.ptr6, ptr %out, align 8, !dbg !1250
  %11 = load ptr, ptr %out, align 8, !dbg !1251
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1252
  store ptr %11, ptr %12, align 8, !dbg !1253
  store i1 true, ptr %retval, align 1, !dbg !1254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1254

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !1255
  %13 = load i1, ptr %retval, align 1, !dbg !1255
  ret i1 %13, !dbg !1255
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @escape_octal(i8 noundef zeroext %c, ptr noundef %dst, ptr noundef %end) #0 align 16 !dbg !1256 {
entry:
  %c.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1258, metadata !DIExpression()), !dbg !1262
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1259, metadata !DIExpression()), !dbg !1263
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1260, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1261, metadata !DIExpression()), !dbg !1266
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1267
  %1 = load ptr, ptr %0, align 8, !dbg !1268
  store ptr %1, ptr %out, align 8, !dbg !1266
  %2 = load ptr, ptr %out, align 8, !dbg !1269
  %3 = load ptr, ptr %end.addr, align 8, !dbg !1271
  %cmp = icmp ult ptr %2, %3, !dbg !1272
  br i1 %cmp, label %if.then, label %if.end, !dbg !1273

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %out, align 8, !dbg !1274
  store i8 92, ptr %4, align 1, !dbg !1275
  br label %if.end, !dbg !1276

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %out, align 8, !dbg !1277
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !1277
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !1277
  %6 = load ptr, ptr %out, align 8, !dbg !1278
  %7 = load ptr, ptr %end.addr, align 8, !dbg !1280
  %cmp1 = icmp ult ptr %6, %7, !dbg !1281
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1282

if.then2:                                         ; preds = %if.end
  %8 = load i8, ptr %c.addr, align 1, !dbg !1283
  %conv = zext i8 %8 to i32, !dbg !1283
  %shr = ashr i32 %conv, 6, !dbg !1284
  %and = and i32 %shr, 7, !dbg !1285
  %add = add i32 %and, 48, !dbg !1286
  %conv3 = trunc i32 %add to i8, !dbg !1287
  %9 = load ptr, ptr %out, align 8, !dbg !1288
  store i8 %conv3, ptr %9, align 1, !dbg !1289
  br label %if.end4, !dbg !1290

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load ptr, ptr %out, align 8, !dbg !1291
  %incdec.ptr5 = getelementptr i8, ptr %10, i32 1, !dbg !1291
  store ptr %incdec.ptr5, ptr %out, align 8, !dbg !1291
  %11 = load ptr, ptr %out, align 8, !dbg !1292
  %12 = load ptr, ptr %end.addr, align 8, !dbg !1294
  %cmp6 = icmp ult ptr %11, %12, !dbg !1295
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !1296

if.then8:                                         ; preds = %if.end4
  %13 = load i8, ptr %c.addr, align 1, !dbg !1297
  %conv9 = zext i8 %13 to i32, !dbg !1297
  %shr10 = ashr i32 %conv9, 3, !dbg !1298
  %and11 = and i32 %shr10, 7, !dbg !1299
  %add12 = add i32 %and11, 48, !dbg !1300
  %conv13 = trunc i32 %add12 to i8, !dbg !1301
  %14 = load ptr, ptr %out, align 8, !dbg !1302
  store i8 %conv13, ptr %14, align 1, !dbg !1303
  br label %if.end14, !dbg !1304

if.end14:                                         ; preds = %if.then8, %if.end4
  %15 = load ptr, ptr %out, align 8, !dbg !1305
  %incdec.ptr15 = getelementptr i8, ptr %15, i32 1, !dbg !1305
  store ptr %incdec.ptr15, ptr %out, align 8, !dbg !1305
  %16 = load ptr, ptr %out, align 8, !dbg !1306
  %17 = load ptr, ptr %end.addr, align 8, !dbg !1308
  %cmp16 = icmp ult ptr %16, %17, !dbg !1309
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !1310

if.then18:                                        ; preds = %if.end14
  %18 = load i8, ptr %c.addr, align 1, !dbg !1311
  %conv19 = zext i8 %18 to i32, !dbg !1311
  %shr20 = ashr i32 %conv19, 0, !dbg !1312
  %and21 = and i32 %shr20, 7, !dbg !1313
  %add22 = add i32 %and21, 48, !dbg !1314
  %conv23 = trunc i32 %add22 to i8, !dbg !1315
  %19 = load ptr, ptr %out, align 8, !dbg !1316
  store i8 %conv23, ptr %19, align 1, !dbg !1317
  br label %if.end24, !dbg !1318

if.end24:                                         ; preds = %if.then18, %if.end14
  %20 = load ptr, ptr %out, align 8, !dbg !1319
  %incdec.ptr25 = getelementptr i8, ptr %20, i32 1, !dbg !1319
  store ptr %incdec.ptr25, ptr %out, align 8, !dbg !1319
  %21 = load ptr, ptr %out, align 8, !dbg !1320
  %22 = load ptr, ptr %dst.addr, align 8, !dbg !1321
  store ptr %21, ptr %22, align 8, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !1323
  ret i1 true, !dbg !1324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @escape_hex(i8 noundef zeroext %c, ptr noundef %dst, ptr noundef %end) #0 align 16 !dbg !1325 {
entry:
  %c.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1327, metadata !DIExpression()), !dbg !1331
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1328, metadata !DIExpression()), !dbg !1332
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1329, metadata !DIExpression()), !dbg !1333
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #15, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1330, metadata !DIExpression()), !dbg !1335
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1336
  %1 = load ptr, ptr %0, align 8, !dbg !1337
  store ptr %1, ptr %out, align 8, !dbg !1335
  %2 = load ptr, ptr %out, align 8, !dbg !1338
  %3 = load ptr, ptr %end.addr, align 8, !dbg !1340
  %cmp = icmp ult ptr %2, %3, !dbg !1341
  br i1 %cmp, label %if.then, label %if.end, !dbg !1342

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %out, align 8, !dbg !1343
  store i8 92, ptr %4, align 1, !dbg !1344
  br label %if.end, !dbg !1345

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %out, align 8, !dbg !1346
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !1346
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !1346
  %6 = load ptr, ptr %out, align 8, !dbg !1347
  %7 = load ptr, ptr %end.addr, align 8, !dbg !1349
  %cmp1 = icmp ult ptr %6, %7, !dbg !1350
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1351

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %out, align 8, !dbg !1352
  store i8 120, ptr %8, align 1, !dbg !1353
  br label %if.end3, !dbg !1354

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %out, align 8, !dbg !1355
  %incdec.ptr4 = getelementptr i8, ptr %9, i32 1, !dbg !1355
  store ptr %incdec.ptr4, ptr %out, align 8, !dbg !1355
  %10 = load ptr, ptr %out, align 8, !dbg !1356
  %11 = load ptr, ptr %end.addr, align 8, !dbg !1358
  %cmp5 = icmp ult ptr %10, %11, !dbg !1359
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1360

if.then6:                                         ; preds = %if.end3
  %12 = load i8, ptr %c.addr, align 1, !dbg !1361
  %conv = zext i8 %12 to i32, !dbg !1361
  %and = and i32 %conv, 240, !dbg !1361
  %shr = ashr i32 %and, 4, !dbg !1361
  %idxprom = sext i32 %shr to i64, !dbg !1361
  %arrayidx = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom, !dbg !1361
  %13 = load i8, ptr %arrayidx, align 1, !dbg !1361
  %14 = load ptr, ptr %out, align 8, !dbg !1362
  store i8 %13, ptr %14, align 1, !dbg !1363
  br label %if.end7, !dbg !1364

if.end7:                                          ; preds = %if.then6, %if.end3
  %15 = load ptr, ptr %out, align 8, !dbg !1365
  %incdec.ptr8 = getelementptr i8, ptr %15, i32 1, !dbg !1365
  store ptr %incdec.ptr8, ptr %out, align 8, !dbg !1365
  %16 = load ptr, ptr %out, align 8, !dbg !1366
  %17 = load ptr, ptr %end.addr, align 8, !dbg !1368
  %cmp9 = icmp ult ptr %16, %17, !dbg !1369
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !1370

if.then11:                                        ; preds = %if.end7
  %18 = load i8, ptr %c.addr, align 1, !dbg !1371
  %conv12 = zext i8 %18 to i32, !dbg !1371
  %and13 = and i32 %conv12, 15, !dbg !1371
  %idxprom14 = sext i32 %and13 to i64, !dbg !1371
  %arrayidx15 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom14, !dbg !1371
  %19 = load i8, ptr %arrayidx15, align 1, !dbg !1371
  %20 = load ptr, ptr %out, align 8, !dbg !1372
  store i8 %19, ptr %20, align 1, !dbg !1373
  br label %if.end16, !dbg !1374

if.end16:                                         ; preds = %if.then11, %if.end7
  %21 = load ptr, ptr %out, align 8, !dbg !1375
  %incdec.ptr17 = getelementptr i8, ptr %21, i32 1, !dbg !1375
  store ptr %incdec.ptr17, ptr %out, align 8, !dbg !1375
  %22 = load ptr, ptr %out, align 8, !dbg !1376
  %23 = load ptr, ptr %dst.addr, align 8, !dbg !1377
  store ptr %22, ptr %23, align 8, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #15, !dbg !1379
  ret i1 true, !dbg !1380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kstrdup_quotable(ptr noundef %src, i32 noundef %gfp) #0 align 16 !dbg !1381 {
entry:
  %retval = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %slen = alloca i64, align 8
  %dlen = alloca i64, align 8
  %dst = alloca ptr, align 8
  %flags = alloca i32, align 4
  %esc = alloca [10 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1385, metadata !DIExpression()), !dbg !1399
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !1386, metadata !DIExpression()), !dbg !1400
  call void @llvm.lifetime.start.p0(i64 8, ptr %slen) #15, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %slen, metadata !1387, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 8, ptr %dlen) #15, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %dlen, metadata !1388, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #15, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !1389, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #15, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1390, metadata !DIExpression()), !dbg !1407
  store i32 32, ptr %flags, align 4, !dbg !1407
  call void @llvm.lifetime.start.p0(i64 10, ptr %esc) #15, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %esc, metadata !1392, metadata !DIExpression()), !dbg !1409
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %esc, ptr align 1 @__const.kstrdup_quotable.esc, i64 10, i1 false), !dbg !1409
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1410
  %tobool = icmp ne ptr %0, null, !dbg !1410
  br i1 %tobool, label %if.end, label %if.then, !dbg !1412

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1413

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1414
  %call = call i64 @strlen(ptr noundef %1) #16, !dbg !1415
  store i64 %call, ptr %slen, align 8, !dbg !1416
  %2 = load ptr, ptr %src.addr, align 8, !dbg !1417
  %3 = load i64, ptr %slen, align 8, !dbg !1418
  %arraydecay = getelementptr inbounds [10 x i8], ptr %esc, i64 0, i64 0, !dbg !1419
  %call1 = call i32 @string_escape_mem(ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 32, ptr noundef %arraydecay) #16, !dbg !1420
  %conv = sext i32 %call1 to i64, !dbg !1420
  store i64 %conv, ptr %dlen, align 8, !dbg !1421
  %4 = load i64, ptr %dlen, align 8, !dbg !1422
  %add = add i64 %4, 1, !dbg !1423
  %5 = load i32, ptr %gfp.addr, align 4, !dbg !1424
  %call2 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef %5) #18, !dbg !1425
  store ptr %call2, ptr %dst, align 8, !dbg !1426
  %6 = load ptr, ptr %dst, align 8, !dbg !1427
  %tobool3 = icmp ne ptr %6, null, !dbg !1427
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1429

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1430

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1394, metadata !DIExpression()), !dbg !1431
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1431
  %8 = load i64, ptr %slen, align 8, !dbg !1431
  %9 = load ptr, ptr %dst, align 8, !dbg !1431
  %10 = load i64, ptr %dlen, align 8, !dbg !1431
  %arraydecay6 = getelementptr inbounds [10 x i8], ptr %esc, i64 0, i64 0, !dbg !1431
  %call7 = call i32 @string_escape_mem(ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, i32 noundef 32, ptr noundef %arraydecay6) #16, !dbg !1431
  %conv8 = sext i32 %call7 to i64, !dbg !1431
  %11 = load i64, ptr %dlen, align 8, !dbg !1431
  %cmp = icmp ne i64 %conv8, %11, !dbg !1431
  %lnot = xor i1 %cmp, true, !dbg !1431
  %lnot10 = xor i1 %lnot, true, !dbg !1431
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !1431
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1431
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1432
  %tobool11 = icmp ne i32 %12, 0, !dbg !1432
  %lnot12 = xor i1 %tobool11, true, !dbg !1432
  %lnot14 = xor i1 %lnot12, true, !dbg !1432
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !1432
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !1432
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !1432
  %tobool17 = icmp ne i64 %expval, 0, !dbg !1432
  br i1 %tobool17, label %if.then18, label %if.end28, !dbg !1431

if.then18:                                        ; preds = %if.end5
  br label %do.body, !dbg !1432

do.body:                                          ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1396, metadata !DIExpression()), !dbg !1433
  store i32 2305, ptr %__flags, align 4, !dbg !1433
  br label %do.body19, !dbg !1433

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !1434

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !1434

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !1433

do.body20:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !1436
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, i32 654, i32 %13, i64 12) #15, !dbg !1436, !srcloc !1438
  br label %do.cond21, !dbg !1436

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1436

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !1433

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !1439

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !1439

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1432
  br label %do.cond26, !dbg !1433

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !1433

do.end27:                                         ; preds = %do.cond26
  br label %if.end28, !dbg !1433

if.end28:                                         ; preds = %do.end27, %if.end5
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !1431
  %tobool29 = icmp ne i32 %14, 0, !dbg !1431
  %lnot30 = xor i1 %tobool29, true, !dbg !1431
  %lnot32 = xor i1 %lnot30, true, !dbg !1431
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !1431
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !1431
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !1431
  store i64 %expval35, ptr %tmp, align 8, !dbg !1432
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1441
  %15 = load i64, ptr %tmp, align 8, !dbg !1431
  %16 = load ptr, ptr %dst, align 8, !dbg !1442
  %17 = load i64, ptr %dlen, align 8, !dbg !1443
  %arrayidx = getelementptr i8, ptr %16, i64 %17, !dbg !1442
  store i8 0, ptr %arrayidx, align 1, !dbg !1444
  %18 = load ptr, ptr %dst, align 8, !dbg !1445
  store ptr %18, ptr %retval, align 8, !dbg !1446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1446

cleanup:                                          ; preds = %if.end28, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %esc) #15, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #15, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #15, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 8, ptr %dlen) #15, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 8, ptr %slen) #15, !dbg !1447
  %19 = load ptr, ptr %retval, align 8, !dbg !1447
  ret ptr %19, !dbg !1447
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1448 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1451 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1455, metadata !DIExpression()), !dbg !1460
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1456, metadata !DIExpression()), !dbg !1461
  %0 = load i64, ptr %size.addr, align 8, !dbg !1462
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1463
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1464

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1465
  %tobool = icmp ne i64 %2, 0, !dbg !1465
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1466

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1457, metadata !DIExpression()), !dbg !1468
  %3 = load i64, ptr %size.addr, align 8, !dbg !1469
  %cmp = icmp ugt i64 %3, 8192, !dbg !1471
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1472

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1473
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1474
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !1475
  store ptr %call, ptr %retval, align 8, !dbg !1476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1476

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1477
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1477
  store i32 %call2, ptr %index, align 4, !dbg !1478
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1479
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1480
  %9 = ptrtoint ptr %8 to i64, !dbg !1480
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1481
  %idxprom = zext i32 %call3 to i64, !dbg !1482
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1482
  %10 = load i32, ptr %index, align 4, !dbg !1483
  %idxprom4 = zext i32 %10 to i64, !dbg !1482
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1482
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1482
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1484
  %13 = load i64, ptr %size.addr, align 8, !dbg !1485
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !1486
  store ptr %call6, ptr %retval, align 8, !dbg !1487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1487

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1488
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1489
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1490
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !1491
  store ptr %call8, ptr %retval, align 8, !dbg !1492
  br label %return, !dbg !1492

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1493
  ret ptr %16, !dbg !1493
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kstrdup_quotable_cmdline(ptr noundef %task, i32 noundef %gfp) #0 align 16 !dbg !1494 {
entry:
  %retval = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %quoted = alloca ptr, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5382, metadata !DIExpression()), !dbg !5388
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5383, metadata !DIExpression()), !dbg !5389
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5384, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %quoted) #15, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %quoted, metadata !5385, metadata !DIExpression()), !dbg !5392
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5393
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5386, metadata !DIExpression()), !dbg !5394
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #15, !dbg !5393
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5387, metadata !DIExpression()), !dbg !5395
  %call = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #18, !dbg !5396
  store ptr %call, ptr %buffer, align 8, !dbg !5397
  %0 = load ptr, ptr %buffer, align 8, !dbg !5398
  %tobool = icmp ne ptr %0, null, !dbg !5398
  br i1 %tobool, label %if.end, label %if.then, !dbg !5400

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5401

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5402
  %2 = load ptr, ptr %buffer, align 8, !dbg !5403
  %call1 = call i32 @get_cmdline(ptr noundef %1, ptr noundef %2, i32 noundef 4095) #16, !dbg !5404
  store i32 %call1, ptr %res, align 4, !dbg !5405
  %3 = load ptr, ptr %buffer, align 8, !dbg !5406
  %4 = load i32, ptr %res, align 4, !dbg !5407
  %idxprom = sext i32 %4 to i64, !dbg !5406
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !5406
  store i8 0, ptr %arrayidx, align 1, !dbg !5408
  br label %while.cond, !dbg !5409

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %res, align 4, !dbg !5410
  %dec = add i32 %5, -1, !dbg !5410
  store i32 %dec, ptr %res, align 4, !dbg !5410
  %cmp = icmp sge i32 %dec, 0, !dbg !5411
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5412

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %buffer, align 8, !dbg !5413
  %7 = load i32, ptr %res, align 4, !dbg !5414
  %idxprom2 = sext i32 %7 to i64, !dbg !5413
  %arrayidx3 = getelementptr i8, ptr %6, i64 %idxprom2, !dbg !5413
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !5413
  %conv = zext i8 %8 to i32, !dbg !5413
  %cmp4 = icmp eq i32 %conv, 0, !dbg !5415
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !5416
  br i1 %9, label %while.body, label %while.end, !dbg !5409

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !5409, !llvm.loop !5417

while.end:                                        ; preds = %land.end
  store i32 0, ptr %i, align 4, !dbg !5419
  br label %for.cond, !dbg !5421

for.cond:                                         ; preds = %for.inc, %while.end
  %10 = load i32, ptr %i, align 4, !dbg !5422
  %11 = load i32, ptr %res, align 4, !dbg !5424
  %cmp6 = icmp sle i32 %10, %11, !dbg !5425
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5426

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %buffer, align 8, !dbg !5427
  %13 = load i32, ptr %i, align 4, !dbg !5429
  %idxprom8 = sext i32 %13 to i64, !dbg !5427
  %arrayidx9 = getelementptr i8, ptr %12, i64 %idxprom8, !dbg !5427
  %14 = load i8, ptr %arrayidx9, align 1, !dbg !5427
  %conv10 = zext i8 %14 to i32, !dbg !5427
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !5430
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !5431

if.then13:                                        ; preds = %for.body
  %15 = load ptr, ptr %buffer, align 8, !dbg !5432
  %16 = load i32, ptr %i, align 4, !dbg !5433
  %idxprom14 = sext i32 %16 to i64, !dbg !5432
  %arrayidx15 = getelementptr i8, ptr %15, i64 %idxprom14, !dbg !5432
  store i8 32, ptr %arrayidx15, align 1, !dbg !5434
  br label %if.end16, !dbg !5432

if.end16:                                         ; preds = %if.then13, %for.body
  br label %for.inc, !dbg !5435

for.inc:                                          ; preds = %if.end16
  %17 = load i32, ptr %i, align 4, !dbg !5436
  %inc = add i32 %17, 1, !dbg !5436
  store i32 %inc, ptr %i, align 4, !dbg !5436
  br label %for.cond, !dbg !5437, !llvm.loop !5438

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %buffer, align 8, !dbg !5440
  %19 = load i32, ptr %gfp.addr, align 4, !dbg !5441
  %call17 = call ptr @kstrdup_quotable(ptr noundef %18, i32 noundef %19) #16, !dbg !5442
  store ptr %call17, ptr %quoted, align 8, !dbg !5443
  %20 = load ptr, ptr %buffer, align 8, !dbg !5444
  call void @kfree(ptr noundef %20) #16, !dbg !5445
  %21 = load ptr, ptr %quoted, align 8, !dbg !5446
  store ptr %21, ptr %retval, align 8, !dbg !5447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5447

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #15, !dbg !5448
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5448
  call void @llvm.lifetime.end.p0(i64 8, ptr %quoted) #15, !dbg !5448
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !5448
  %22 = load ptr, ptr %retval, align 8, !dbg !5448
  ret ptr %22, !dbg !5448
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5449 dso_local i32 @get_cmdline(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kstrdup_quotable_file(ptr noundef %file, i32 noundef %gfp) #0 align 16 !dbg !5452 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %pathname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5456, metadata !DIExpression()), !dbg !5460
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5457, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !5458, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #15, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %pathname, metadata !5459, metadata !DIExpression()), !dbg !5464
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5465
  %tobool = icmp ne ptr %0, null, !dbg !5465
  br i1 %tobool, label %if.end, label %if.then, !dbg !5467

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5468
  %call = call noalias ptr @kstrdup(ptr noundef @.str.21, i32 noundef %1) #16, !dbg !5469
  store ptr %call, ptr %retval, align 8, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5470

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kmalloc(i64 noundef 4107, i32 noundef 3264) #18, !dbg !5471
  store ptr %call1, ptr %temp, align 8, !dbg !5472
  %2 = load ptr, ptr %temp, align 8, !dbg !5473
  %tobool2 = icmp ne ptr %2, null, !dbg !5473
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5475

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %gfp.addr, align 4, !dbg !5476
  %call4 = call noalias ptr @kstrdup(ptr noundef @.str.22, i32 noundef %3) #16, !dbg !5477
  store ptr %call4, ptr %retval, align 8, !dbg !5478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5478

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5479
  %5 = load ptr, ptr %temp, align 8, !dbg !5480
  %call6 = call ptr @file_path(ptr noundef %4, ptr noundef %5, i32 noundef 4107) #16, !dbg !5481
  store ptr %call6, ptr %pathname, align 8, !dbg !5482
  %6 = load ptr, ptr %pathname, align 8, !dbg !5483
  %call7 = call zeroext i1 @IS_ERR(ptr noundef %6) #16, !dbg !5485
  br i1 %call7, label %if.then8, label %if.else, !dbg !5486

if.then8:                                         ; preds = %if.end5
  %7 = load i32, ptr %gfp.addr, align 4, !dbg !5487
  %call9 = call noalias ptr @kstrdup(ptr noundef @.str.23, i32 noundef %7) #16, !dbg !5488
  store ptr %call9, ptr %pathname, align 8, !dbg !5489
  br label %if.end11, !dbg !5490

if.else:                                          ; preds = %if.end5
  %8 = load ptr, ptr %pathname, align 8, !dbg !5491
  %9 = load i32, ptr %gfp.addr, align 4, !dbg !5492
  %call10 = call ptr @kstrdup_quotable(ptr noundef %8, i32 noundef %9) #16, !dbg !5493
  store ptr %call10, ptr %pathname, align 8, !dbg !5494
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %10 = load ptr, ptr %temp, align 8, !dbg !5495
  call void @kfree(ptr noundef %10) #16, !dbg !5496
  %11 = load ptr, ptr %pathname, align 8, !dbg !5497
  store ptr %11, ptr %retval, align 8, !dbg !5498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5498

cleanup:                                          ; preds = %if.end11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #15, !dbg !5499
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15, !dbg !5499
  %12 = load ptr, ptr %retval, align 8, !dbg !5499
  ret ptr %12, !dbg !5499
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5500 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5501 dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kstrdup_and_replace(ptr noundef %src, i8 noundef zeroext %old, i8 noundef zeroext %new, i32 noundef %gfp) #0 align 16 !dbg !5504 {
entry:
  %retval = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %old.addr = alloca i8, align 1
  %new.addr = alloca i8, align 1
  %gfp.addr = alloca i32, align 4
  %dst = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5508, metadata !DIExpression()), !dbg !5513
  store i8 %old, ptr %old.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5509, metadata !DIExpression()), !dbg !5514
  store i8 %new, ptr %new.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5510, metadata !DIExpression()), !dbg !5515
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5511, metadata !DIExpression()), !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #15, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !5512, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %src.addr, align 8, !dbg !5519
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5520
  %call = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef %1) #16, !dbg !5521
  store ptr %call, ptr %dst, align 8, !dbg !5522
  %2 = load ptr, ptr %dst, align 8, !dbg !5523
  %tobool = icmp ne ptr %2, null, !dbg !5523
  br i1 %tobool, label %if.end, label %if.then, !dbg !5525

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5526

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dst, align 8, !dbg !5527
  %4 = load i8, ptr %old.addr, align 1, !dbg !5528
  %5 = load i8, ptr %new.addr, align 1, !dbg !5529
  %call1 = call ptr @strreplace(ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #16, !dbg !5530
  store ptr %call1, ptr %retval, align 8, !dbg !5531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5531

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #15, !dbg !5532
  %6 = load ptr, ptr %retval, align 8, !dbg !5532
  ret ptr %6, !dbg !5532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strreplace(ptr noundef %str, i8 noundef zeroext %old, i8 noundef zeroext %new) #0 align 16 !dbg !5533 {
entry:
  %str.addr = alloca ptr, align 8
  %old.addr = alloca i8, align 1
  %new.addr = alloca i8, align 1
  %s = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5537, metadata !DIExpression()), !dbg !5541
  store i8 %old, ptr %old.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5538, metadata !DIExpression()), !dbg !5542
  store i8 %new, ptr %new.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5539, metadata !DIExpression()), !dbg !5543
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5540, metadata !DIExpression()), !dbg !5545
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5546
  store ptr %0, ptr %s, align 8, !dbg !5545
  br label %for.cond, !dbg !5547

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %s, align 8, !dbg !5548
  %2 = load i8, ptr %1, align 1, !dbg !5551
  %tobool = icmp ne i8 %2, 0, !dbg !5552
  br i1 %tobool, label %for.body, label %for.end, !dbg !5552

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s, align 8, !dbg !5553
  %4 = load i8, ptr %3, align 1, !dbg !5555
  %conv = zext i8 %4 to i32, !dbg !5555
  %5 = load i8, ptr %old.addr, align 1, !dbg !5556
  %conv1 = zext i8 %5 to i32, !dbg !5556
  %cmp = icmp eq i32 %conv, %conv1, !dbg !5557
  br i1 %cmp, label %if.then, label %if.end, !dbg !5558

if.then:                                          ; preds = %for.body
  %6 = load i8, ptr %new.addr, align 1, !dbg !5559
  %7 = load ptr, ptr %s, align 8, !dbg !5560
  store i8 %6, ptr %7, align 1, !dbg !5561
  br label %if.end, !dbg !5562

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5556

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %s, align 8, !dbg !5563
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !5563
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !5563
  br label %for.cond, !dbg !5564, !llvm.loop !5565

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %str.addr, align 8, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !5568
  ret ptr %9, !dbg !5569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kasprintf_strarray(i32 noundef %gfp, ptr noundef %prefix, i64 noundef %n) #0 align 16 !dbg !5570 {
entry:
  %retval = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %prefix.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %names = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5574, metadata !DIExpression()), !dbg !5579
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !5575, metadata !DIExpression()), !dbg !5580
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5576, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 8, ptr %names) #15, !dbg !5582
  call void @llvm.dbg.declare(metadata ptr %names, metadata !5577, metadata !DIExpression()), !dbg !5583
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5578, metadata !DIExpression()), !dbg !5585
  %0 = load i64, ptr %n.addr, align 8, !dbg !5586
  %add = add i64 %0, 1, !dbg !5587
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5588
  %call = call noalias ptr @kcalloc(i64 noundef %add, i64 noundef 8, i32 noundef %1) #17, !dbg !5589
  store ptr %call, ptr %names, align 8, !dbg !5590
  %2 = load ptr, ptr %names, align 8, !dbg !5591
  %tobool = icmp ne ptr %2, null, !dbg !5591
  br i1 %tobool, label %if.end, label %if.then, !dbg !5593

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5594

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !5595
  br label %for.cond, !dbg !5597

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %i, align 8, !dbg !5598
  %4 = load i64, ptr %n.addr, align 8, !dbg !5600
  %cmp = icmp ult i64 %3, %4, !dbg !5601
  br i1 %cmp, label %for.body, label %for.end, !dbg !5602

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %gfp.addr, align 4, !dbg !5603
  %6 = load ptr, ptr %prefix.addr, align 8, !dbg !5605
  %7 = load i64, ptr %i, align 8, !dbg !5606
  %call1 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef %5, ptr noundef @.str.24, ptr noundef %6, i64 noundef %7) #16, !dbg !5607
  %8 = load ptr, ptr %names, align 8, !dbg !5608
  %9 = load i64, ptr %i, align 8, !dbg !5609
  %arrayidx = getelementptr ptr, ptr %8, i64 %9, !dbg !5608
  store ptr %call1, ptr %arrayidx, align 8, !dbg !5610
  %10 = load ptr, ptr %names, align 8, !dbg !5611
  %11 = load i64, ptr %i, align 8, !dbg !5613
  %arrayidx2 = getelementptr ptr, ptr %10, i64 %11, !dbg !5611
  %12 = load ptr, ptr %arrayidx2, align 8, !dbg !5611
  %tobool3 = icmp ne ptr %12, null, !dbg !5611
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5614

if.then4:                                         ; preds = %for.body
  %13 = load ptr, ptr %names, align 8, !dbg !5615
  %14 = load i64, ptr %i, align 8, !dbg !5617
  call void @kfree_strarray(ptr noundef %13, i64 noundef %14) #16, !dbg !5618
  store ptr null, ptr %retval, align 8, !dbg !5619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5619

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !5620

for.inc:                                          ; preds = %if.end5
  %15 = load i64, ptr %i, align 8, !dbg !5621
  %inc = add i64 %15, 1, !dbg !5621
  store i64 %inc, ptr %i, align 8, !dbg !5621
  br label %for.cond, !dbg !5622, !llvm.loop !5623

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %names, align 8, !dbg !5625
  store ptr %16, ptr %retval, align 8, !dbg !5626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5626

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !5627
  call void @llvm.lifetime.end.p0(i64 8, ptr %names) #15, !dbg !5627
  %17 = load ptr, ptr %retval, align 8, !dbg !5627
  ret ptr %17, !dbg !5627
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5628 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kfree_strarray(ptr noundef %array, i64 noundef %n) #0 align 16 !dbg !5631 {
entry:
  %array.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !5635, metadata !DIExpression()), !dbg !5638
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5636, metadata !DIExpression()), !dbg !5639
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5637, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %array.addr, align 8, !dbg !5642
  %tobool = icmp ne ptr %0, null, !dbg !5642
  br i1 %tobool, label %if.end, label %if.then, !dbg !5644

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5645

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5646
  br label %for.cond, !dbg !5648

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !5649
  %conv = zext i32 %1 to i64, !dbg !5649
  %2 = load i64, ptr %n.addr, align 8, !dbg !5651
  %cmp = icmp ult i64 %conv, %2, !dbg !5652
  br i1 %cmp, label %for.body, label %for.end, !dbg !5653

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %array.addr, align 8, !dbg !5654
  %4 = load i32, ptr %i, align 4, !dbg !5655
  %idxprom = zext i32 %4 to i64, !dbg !5654
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !5654
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5654
  call void @kfree(ptr noundef %5) #16, !dbg !5656
  br label %for.inc, !dbg !5656

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !5657
  %inc = add i32 %6, 1, !dbg !5657
  store i32 %inc, ptr %i, align 4, !dbg !5657
  br label %for.cond, !dbg !5658, !llvm.loop !5659

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %array.addr, align 8, !dbg !5661
  call void @kfree(ptr noundef %7) #16, !dbg !5662
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5663
  br label %cleanup, !dbg !5663

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5663
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5663

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_kasprintf_strarray(ptr noundef %dev, ptr noundef %prefix, i64 noundef %n) #0 align 16 !dbg !5664 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6017, metadata !DIExpression()), !dbg !6026
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !6018, metadata !DIExpression()), !dbg !6027
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6019, metadata !DIExpression()), !dbg !6028
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #15, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6020, metadata !DIExpression()), !dbg !6030
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_kfree_strarray, i64 noundef 16, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.25) #16, !dbg !6031
  store ptr %call, ptr %ptr, align 8, !dbg !6032
  %0 = load ptr, ptr %ptr, align 8, !dbg !6033
  %tobool = icmp ne ptr %0, null, !dbg !6033
  br i1 %tobool, label %if.end, label %if.then, !dbg !6035

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !6036
  store ptr %call1, ptr %retval, align 8, !dbg !6037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6037

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !6038
  %2 = load i64, ptr %n.addr, align 8, !dbg !6039
  %call2 = call ptr @kasprintf_strarray(i32 noundef 3264, ptr noundef %1, i64 noundef %2) #16, !dbg !6040
  %3 = load ptr, ptr %ptr, align 8, !dbg !6041
  %array = getelementptr inbounds %struct.strarray, ptr %3, i32 0, i32 0, !dbg !6042
  store ptr %call2, ptr %array, align 8, !dbg !6043
  %4 = load ptr, ptr %ptr, align 8, !dbg !6044
  %array3 = getelementptr inbounds %struct.strarray, ptr %4, i32 0, i32 0, !dbg !6046
  %5 = load ptr, ptr %array3, align 8, !dbg !6046
  %tobool4 = icmp ne ptr %5, null, !dbg !6044
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !6047

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %ptr, align 8, !dbg !6048
  call void @devres_free(ptr noundef %6) #16, !dbg !6050
  %call6 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !6051
  store ptr %call6, ptr %retval, align 8, !dbg !6052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

if.end7:                                          ; preds = %if.end
  %7 = load i64, ptr %n.addr, align 8, !dbg !6053
  %8 = load ptr, ptr %ptr, align 8, !dbg !6054
  %n8 = getelementptr inbounds %struct.strarray, ptr %8, i32 0, i32 1, !dbg !6055
  store i64 %7, ptr %n8, align 8, !dbg !6056
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6057
  %10 = load ptr, ptr %ptr, align 8, !dbg !6058
  call void @devres_add(ptr noundef %9, ptr noundef %10) #16, !dbg !6059
  %11 = load ptr, ptr %ptr, align 8, !dbg !6060
  %array9 = getelementptr inbounds %struct.strarray, ptr %11, i32 0, i32 0, !dbg !6061
  %12 = load ptr, ptr %array9, align 8, !dbg !6061
  store ptr %12, ptr %retval, align 8, !dbg !6062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6062

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #15, !dbg !6063
  %13 = load ptr, ptr %retval, align 8, !dbg !6063
  ret ptr %13, !dbg !6063
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6064 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_kfree_strarray(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !6071 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6073, metadata !DIExpression()), !dbg !6076
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6074, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #15, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %array, metadata !6075, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6080
  store ptr %0, ptr %array, align 8, !dbg !6079
  %1 = load ptr, ptr %array, align 8, !dbg !6081
  %array1 = getelementptr inbounds %struct.strarray, ptr %1, i32 0, i32 0, !dbg !6082
  %2 = load ptr, ptr %array1, align 8, !dbg !6082
  %3 = load ptr, ptr %array, align 8, !dbg !6083
  %n = getelementptr inbounds %struct.strarray, ptr %3, i32 0, i32 1, !dbg !6084
  %4 = load i64, ptr %n, align 8, !dbg !6084
  call void @kfree_strarray(ptr noundef %2, i64 noundef %4) #16, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #15, !dbg !6086
  ret void, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6087 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  %0 = load i64, ptr %error.addr, align 8, !dbg !6093
  %1 = inttoptr i64 %0 to ptr, !dbg !6094
  ret ptr %1, !dbg !6095
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6096 dso_local void @devres_free(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6097 dso_local void @devres_add(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strscpy_pad(ptr noundef %dest, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !6098 {
entry:
  %retval = alloca i64, align 8
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %written = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !6102, metadata !DIExpression()), !dbg !6106
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6103, metadata !DIExpression()), !dbg !6107
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6104, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %written) #15, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %written, metadata !6105, metadata !DIExpression()), !dbg !6110
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !6111
  %1 = load ptr, ptr %src.addr, align 8, !dbg !6112
  %2 = load i64, ptr %count.addr, align 8, !dbg !6113
  %call = call i64 @strscpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !6114
  store i64 %call, ptr %written, align 8, !dbg !6115
  %3 = load i64, ptr %written, align 8, !dbg !6116
  %cmp = icmp slt i64 %3, 0, !dbg !6118
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6119

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %written, align 8, !dbg !6120
  %5 = load i64, ptr %count.addr, align 8, !dbg !6121
  %sub = sub i64 %5, 1, !dbg !6122
  %cmp1 = icmp eq i64 %4, %sub, !dbg !6123
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6124

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, ptr %written, align 8, !dbg !6125
  store i64 %6, ptr %retval, align 8, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6126

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !6127
  %8 = load i64, ptr %written, align 8, !dbg !6128
  %add.ptr = getelementptr i8, ptr %7, i64 %8, !dbg !6129
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !6130
  %9 = load i64, ptr %count.addr, align 8, !dbg !6131
  %10 = load i64, ptr %written, align 8, !dbg !6132
  %sub3 = sub i64 %9, %10, !dbg !6133
  %sub4 = sub i64 %sub3, 1, !dbg !6134
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr2, i8 0, i64 %sub4, i1 false), !dbg !6135
  %11 = load i64, ptr %written, align 8, !dbg !6136
  store i64 %11, ptr %retval, align 8, !dbg !6137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6137

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %written) #15, !dbg !6138
  %12 = load i64, ptr %retval, align 8, !dbg !6138
  ret i64 %12, !dbg !6138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6139 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @skip_spaces(ptr noundef %str) #0 align 16 !dbg !6140 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6144, metadata !DIExpression()), !dbg !6145
  br label %while.cond, !dbg !6146

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !6147
  %1 = load i8, ptr %0, align 1, !dbg !6147
  %conv = zext i8 %1 to i32, !dbg !6147
  %idxprom = sext i32 %conv to i64, !dbg !6147
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !6147
  %2 = load i8, ptr %arrayidx, align 1, !dbg !6147
  %conv1 = zext i8 %2 to i32, !dbg !6147
  %and = and i32 %conv1, 32, !dbg !6147
  %cmp = icmp ne i32 %and, 0, !dbg !6147
  br i1 %cmp, label %while.body, label %while.end, !dbg !6146

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %str.addr, align 8, !dbg !6148
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !6148
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !6148
  br label %while.cond, !dbg !6146, !llvm.loop !6149

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %str.addr, align 8, !dbg !6151
  ret ptr %4, !dbg !6152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strim(ptr noundef %s) #0 align 16 !dbg !6153 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6157, metadata !DIExpression()), !dbg !6160
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6158, metadata !DIExpression()), !dbg !6162
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !6163
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6159, metadata !DIExpression()), !dbg !6164
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6165
  %call = call i64 @strlen(ptr noundef %0) #16, !dbg !6166
  store i64 %call, ptr %size, align 8, !dbg !6167
  %1 = load i64, ptr %size, align 8, !dbg !6168
  %tobool = icmp ne i64 %1, 0, !dbg !6168
  br i1 %tobool, label %if.end, label %if.then, !dbg !6170

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6171
  store ptr %2, ptr %retval, align 8, !dbg !6172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6172

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !6173
  %4 = load i64, ptr %size, align 8, !dbg !6174
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !6175
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 -1, !dbg !6176
  store ptr %add.ptr1, ptr %end, align 8, !dbg !6177
  br label %while.cond, !dbg !6178

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load ptr, ptr %end, align 8, !dbg !6179
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6180
  %cmp = icmp uge ptr %5, %6, !dbg !6181
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6182

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %end, align 8, !dbg !6183
  %8 = load i8, ptr %7, align 1, !dbg !6183
  %conv = zext i8 %8 to i32, !dbg !6183
  %idxprom = sext i32 %conv to i64, !dbg !6183
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !6183
  %9 = load i8, ptr %arrayidx, align 1, !dbg !6183
  %conv2 = zext i8 %9 to i32, !dbg !6183
  %and = and i32 %conv2, 32, !dbg !6183
  %cmp3 = icmp ne i32 %and, 0, !dbg !6183
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !6184
  br i1 %10, label %while.body, label %while.end, !dbg !6178

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %end, align 8, !dbg !6185
  %incdec.ptr = getelementptr i8, ptr %11, i32 -1, !dbg !6185
  store ptr %incdec.ptr, ptr %end, align 8, !dbg !6185
  br label %while.cond, !dbg !6178, !llvm.loop !6186

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %end, align 8, !dbg !6187
  %add.ptr5 = getelementptr i8, ptr %12, i64 1, !dbg !6188
  store i8 0, ptr %add.ptr5, align 1, !dbg !6189
  %13 = load ptr, ptr %s.addr, align 8, !dbg !6190
  %call6 = call ptr @skip_spaces(ptr noundef %13) #16, !dbg !6191
  store ptr %call6, ptr %retval, align 8, !dbg !6192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6192

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !6193
  %14 = load ptr, ptr %retval, align 8, !dbg !6193
  ret ptr %14, !dbg !6193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @sysfs_streq(ptr noundef %s1, ptr noundef %s2) #0 align 16 !dbg !6194 {
entry:
  %retval = alloca i1, align 1
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !6198, metadata !DIExpression()), !dbg !6200
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !6199, metadata !DIExpression()), !dbg !6201
  br label %while.cond, !dbg !6202

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s1.addr, align 8, !dbg !6203
  %1 = load i8, ptr %0, align 1, !dbg !6204
  %conv = zext i8 %1 to i32, !dbg !6204
  %tobool = icmp ne i32 %conv, 0, !dbg !6204
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6205

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %s1.addr, align 8, !dbg !6206
  %3 = load i8, ptr %2, align 1, !dbg !6207
  %conv1 = zext i8 %3 to i32, !dbg !6207
  %4 = load ptr, ptr %s2.addr, align 8, !dbg !6208
  %5 = load i8, ptr %4, align 1, !dbg !6209
  %conv2 = zext i8 %5 to i32, !dbg !6209
  %cmp = icmp eq i32 %conv1, %conv2, !dbg !6210
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !6211
  br i1 %6, label %while.body, label %while.end, !dbg !6202

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %s1.addr, align 8, !dbg !6212
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !6212
  store ptr %incdec.ptr, ptr %s1.addr, align 8, !dbg !6212
  %8 = load ptr, ptr %s2.addr, align 8, !dbg !6214
  %incdec.ptr4 = getelementptr i8, ptr %8, i32 1, !dbg !6214
  store ptr %incdec.ptr4, ptr %s2.addr, align 8, !dbg !6214
  br label %while.cond, !dbg !6202, !llvm.loop !6215

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %s1.addr, align 8, !dbg !6217
  %10 = load i8, ptr %9, align 1, !dbg !6219
  %conv5 = zext i8 %10 to i32, !dbg !6219
  %11 = load ptr, ptr %s2.addr, align 8, !dbg !6220
  %12 = load i8, ptr %11, align 1, !dbg !6221
  %conv6 = zext i8 %12 to i32, !dbg !6221
  %cmp7 = icmp eq i32 %conv5, %conv6, !dbg !6222
  br i1 %cmp7, label %if.then, label %if.end, !dbg !6223

if.then:                                          ; preds = %while.end
  store i1 true, ptr %retval, align 1, !dbg !6224
  br label %return, !dbg !6224

if.end:                                           ; preds = %while.end
  %13 = load ptr, ptr %s1.addr, align 8, !dbg !6225
  %14 = load i8, ptr %13, align 1, !dbg !6227
  %tobool9 = icmp ne i8 %14, 0, !dbg !6227
  br i1 %tobool9, label %if.end16, label %land.lhs.true, !dbg !6228

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %s2.addr, align 8, !dbg !6229
  %16 = load i8, ptr %15, align 1, !dbg !6230
  %conv10 = zext i8 %16 to i32, !dbg !6230
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !6231
  br i1 %cmp11, label %land.lhs.true13, label %if.end16, !dbg !6232

land.lhs.true13:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %s2.addr, align 8, !dbg !6233
  %arrayidx = getelementptr i8, ptr %17, i64 1, !dbg !6233
  %18 = load i8, ptr %arrayidx, align 1, !dbg !6233
  %tobool14 = icmp ne i8 %18, 0, !dbg !6233
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !6234

if.then15:                                        ; preds = %land.lhs.true13
  store i1 true, ptr %retval, align 1, !dbg !6235
  br label %return, !dbg !6235

if.end16:                                         ; preds = %land.lhs.true13, %land.lhs.true, %if.end
  %19 = load ptr, ptr %s1.addr, align 8, !dbg !6236
  %20 = load i8, ptr %19, align 1, !dbg !6238
  %conv17 = zext i8 %20 to i32, !dbg !6238
  %cmp18 = icmp eq i32 %conv17, 10, !dbg !6239
  br i1 %cmp18, label %land.lhs.true20, label %if.end26, !dbg !6240

land.lhs.true20:                                  ; preds = %if.end16
  %21 = load ptr, ptr %s1.addr, align 8, !dbg !6241
  %arrayidx21 = getelementptr i8, ptr %21, i64 1, !dbg !6241
  %22 = load i8, ptr %arrayidx21, align 1, !dbg !6241
  %tobool22 = icmp ne i8 %22, 0, !dbg !6241
  br i1 %tobool22, label %if.end26, label %land.lhs.true23, !dbg !6242

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %23 = load ptr, ptr %s2.addr, align 8, !dbg !6243
  %24 = load i8, ptr %23, align 1, !dbg !6244
  %tobool24 = icmp ne i8 %24, 0, !dbg !6244
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !6245

if.then25:                                        ; preds = %land.lhs.true23
  store i1 true, ptr %retval, align 1, !dbg !6246
  br label %return, !dbg !6246

if.end26:                                         ; preds = %land.lhs.true23, %land.lhs.true20, %if.end16
  store i1 false, ptr %retval, align 1, !dbg !6247
  br label %return, !dbg !6247

return:                                           ; preds = %if.end26, %if.then25, %if.then15, %if.then
  %25 = load i1, ptr %retval, align 1, !dbg !6248
  ret i1 %25, !dbg !6248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_string(ptr noundef %array, i64 noundef %n, ptr noundef %string) #0 align 16 !dbg !6249 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %string.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %item = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !6253, metadata !DIExpression()), !dbg !6258
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6254, metadata !DIExpression()), !dbg !6259
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !6255, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6256, metadata !DIExpression()), !dbg !6262
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #15, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %item, metadata !6257, metadata !DIExpression()), !dbg !6264
  store i32 0, ptr %index, align 4, !dbg !6265
  br label %for.cond, !dbg !6267

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %index, align 4, !dbg !6268
  %conv = sext i32 %0 to i64, !dbg !6268
  %1 = load i64, ptr %n.addr, align 8, !dbg !6270
  %cmp = icmp ult i64 %conv, %1, !dbg !6271
  br i1 %cmp, label %for.body, label %for.end, !dbg !6272

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8, !dbg !6273
  %3 = load i32, ptr %index, align 4, !dbg !6275
  %idxprom = sext i32 %3 to i64, !dbg !6273
  %arrayidx = getelementptr ptr, ptr %2, i64 %idxprom, !dbg !6273
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !6273
  store ptr %4, ptr %item, align 8, !dbg !6276
  %5 = load ptr, ptr %item, align 8, !dbg !6277
  %tobool = icmp ne ptr %5, null, !dbg !6277
  br i1 %tobool, label %if.end, label %if.then, !dbg !6279

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6280

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %item, align 8, !dbg !6281
  %7 = load ptr, ptr %string.addr, align 8, !dbg !6283
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef %7) #16, !dbg !6284
  %tobool2 = icmp ne i32 %call, 0, !dbg !6284
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6285

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %index, align 4, !dbg !6286
  store i32 %8, ptr %retval, align 4, !dbg !6287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6287

if.end4:                                          ; preds = %if.end
  br label %for.inc, !dbg !6288

for.inc:                                          ; preds = %if.end4
  %9 = load i32, ptr %index, align 4, !dbg !6289
  %inc = add i32 %9, 1, !dbg !6289
  store i32 %inc, ptr %index, align 4, !dbg !6289
  br label %for.cond, !dbg !6290, !llvm.loop !6291

for.end:                                          ; preds = %if.then, %for.cond
  store i32 -22, ptr %retval, align 4, !dbg !6293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6293

cleanup:                                          ; preds = %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #15, !dbg !6294
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6294
  %10 = load i32, ptr %retval, align 4, !dbg !6294
  ret i32 %10, !dbg !6294
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6295 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__sysfs_match_string(ptr noundef %array, i64 noundef %n, ptr noundef %str) #0 align 16 !dbg !6298 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !6300, metadata !DIExpression()), !dbg !6305
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6301, metadata !DIExpression()), !dbg !6306
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6302, metadata !DIExpression()), !dbg !6307
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #15, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %item, metadata !6303, metadata !DIExpression()), !dbg !6309
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6304, metadata !DIExpression()), !dbg !6311
  store i32 0, ptr %index, align 4, !dbg !6312
  br label %for.cond, !dbg !6314

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %index, align 4, !dbg !6315
  %conv = sext i32 %0 to i64, !dbg !6315
  %1 = load i64, ptr %n.addr, align 8, !dbg !6317
  %cmp = icmp ult i64 %conv, %1, !dbg !6318
  br i1 %cmp, label %for.body, label %for.end, !dbg !6319

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8, !dbg !6320
  %3 = load i32, ptr %index, align 4, !dbg !6322
  %idxprom = sext i32 %3 to i64, !dbg !6320
  %arrayidx = getelementptr ptr, ptr %2, i64 %idxprom, !dbg !6320
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !6320
  store ptr %4, ptr %item, align 8, !dbg !6323
  %5 = load ptr, ptr %item, align 8, !dbg !6324
  %tobool = icmp ne ptr %5, null, !dbg !6324
  br i1 %tobool, label %if.end, label %if.then, !dbg !6326

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6327

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %item, align 8, !dbg !6328
  %7 = load ptr, ptr %str.addr, align 8, !dbg !6330
  %call = call zeroext i1 @sysfs_streq(ptr noundef %6, ptr noundef %7) #16, !dbg !6331
  br i1 %call, label %if.then2, label %if.end3, !dbg !6332

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %index, align 4, !dbg !6333
  store i32 %8, ptr %retval, align 4, !dbg !6334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6334

if.end3:                                          ; preds = %if.end
  br label %for.inc, !dbg !6335

for.inc:                                          ; preds = %if.end3
  %9 = load i32, ptr %index, align 4, !dbg !6336
  %inc = add i32 %9, 1, !dbg !6336
  store i32 %inc, ptr %index, align 4, !dbg !6336
  br label %for.cond, !dbg !6337, !llvm.loop !6338

for.end:                                          ; preds = %if.then, %for.cond
  store i32 -22, ptr %retval, align 4, !dbg !6340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6340

cleanup:                                          ; preds = %for.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6341
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #15, !dbg !6341
  %10 = load i32, ptr %retval, align 4, !dbg !6341
  ret i32 %10, !dbg !6341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @memcpy_and_pad(ptr noundef %dest, i64 noundef %dest_len, ptr noundef %src, i64 noundef %count, i32 noundef %pad) #0 align 16 !dbg !6342 {
entry:
  %dest.addr = alloca ptr, align 8
  %dest_len.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pad.addr = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !6346, metadata !DIExpression()), !dbg !6351
  store i64 %dest_len, ptr %dest_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_len.addr, metadata !6347, metadata !DIExpression()), !dbg !6352
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6348, metadata !DIExpression()), !dbg !6353
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6349, metadata !DIExpression()), !dbg !6354
  store i32 %pad, ptr %pad.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pad.addr, metadata !6350, metadata !DIExpression()), !dbg !6355
  %0 = load i64, ptr %dest_len.addr, align 8, !dbg !6356
  %1 = load i64, ptr %count.addr, align 8, !dbg !6358
  %cmp = icmp ugt i64 %0, %1, !dbg !6359
  br i1 %cmp, label %if.then, label %if.else, !dbg !6360

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !6361
  %3 = load ptr, ptr %src.addr, align 8, !dbg !6363
  %4 = load i64, ptr %count.addr, align 8, !dbg !6364
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %4, i1 false), !dbg !6365
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !6366
  %6 = load i64, ptr %count.addr, align 8, !dbg !6367
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !6368
  %7 = load i32, ptr %pad.addr, align 4, !dbg !6369
  %8 = trunc i32 %7 to i8, !dbg !6370
  %9 = load i64, ptr %dest_len.addr, align 8, !dbg !6371
  %10 = load i64, ptr %count.addr, align 8, !dbg !6372
  %sub = sub i64 %9, %10, !dbg !6373
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 %8, i64 %sub, i1 false), !dbg !6370
  br label %if.end, !dbg !6374

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %dest.addr, align 8, !dbg !6375
  %12 = load ptr, ptr %src.addr, align 8, !dbg !6377
  %13 = load i64, ptr %dest_len.addr, align 8, !dbg !6378
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %13, i1 false), !dbg !6379
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6381 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6383, metadata !DIExpression()), !dbg !6387
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6384, metadata !DIExpression()), !dbg !6388
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6385, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6386, metadata !DIExpression()), !dbg !6391
  %0 = load i64, ptr %n.addr, align 8, !dbg !6392
  %1 = load i64, ptr %size.addr, align 8, !dbg !6392
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6392
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6392
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6392
  store i64 %4, ptr %bytes, align 8, !dbg !6392
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6392
  %lnot = xor i1 %call, true, !dbg !6392
  %lnot1 = xor i1 %lnot, true, !dbg !6392
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6392
  %conv = sext i32 %lnot.ext to i64, !dbg !6392
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6392
  %tobool = icmp ne i64 %expval, 0, !dbg !6392
  br i1 %tobool, label %if.then, label %if.end, !dbg !6394

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6396
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6398
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6399

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6400
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6401
  br i1 %8, label %if.then2, label %if.end4, !dbg !6402

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6403
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6404
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !6405
  store ptr %call3, ptr %retval, align 8, !dbg !6406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6406

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6407
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6408
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !6409
  store ptr %call5, ptr %retval, align 8, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6411
  %13 = load ptr, ptr %retval, align 8, !dbg !6411
  ret ptr %13, !dbg !6411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6412 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6419, !range !956, !noundef !957
  %tobool = trunc i8 %0 to i1, !dbg !6419
  %lnot = xor i1 %tobool, true, !dbg !6419
  %lnot1 = xor i1 %lnot, true, !dbg !6419
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6419
  %conv = sext i32 %lnot.ext to i64, !dbg !6419
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6419
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6419
  ret i1 %tobool2, !dbg !6420
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6421 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isodigit(i8 noundef zeroext %c) #4 align 16 !dbg !6422 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !6427, metadata !DIExpression()), !dbg !6428
  %0 = load i8, ptr %c.addr, align 1, !dbg !6429
  %conv = zext i8 %0 to i32, !dbg !6429
  %cmp = icmp sge i32 %conv, 48, !dbg !6430
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6431

land.rhs:                                         ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1, !dbg !6432
  %conv2 = zext i8 %1 to i32, !dbg !6432
  %cmp3 = icmp sle i32 %conv2, 55, !dbg !6433
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6434
  %land.ext = zext i1 %2 to i32, !dbg !6431
  ret i32 %land.ext, !dbg !6435
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6436 dso_local i32 @hex_to_bin(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6440 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !6441 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6445, metadata !DIExpression()), !dbg !6447
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6446, metadata !DIExpression()), !dbg !6448
  %0 = load i64, ptr %size.addr, align 8, !dbg !6449
  %tobool = icmp ne i64 %0, 0, !dbg !6449
  br i1 %tobool, label %if.end, label %if.then, !dbg !6451

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6452
  br label %return, !dbg !6452

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6453
  %cmp = icmp ule i64 %1, 8, !dbg !6455
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6456

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6457
  br label %return, !dbg !6457

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6458
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6460
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6461

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6462
  %cmp4 = icmp ule i64 %3, 96, !dbg !6463
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6464

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6465
  br label %return, !dbg !6465

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6466
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6468
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6469

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6470
  %cmp9 = icmp ule i64 %5, 192, !dbg !6471
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6472

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6473
  br label %return, !dbg !6473

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6474
  %cmp12 = icmp ule i64 %6, 8, !dbg !6476
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6477

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6478
  br label %return, !dbg !6478

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6479
  %cmp15 = icmp ule i64 %7, 16, !dbg !6481
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6482

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6484
  %cmp18 = icmp ule i64 %8, 32, !dbg !6486
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6487

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6488
  br label %return, !dbg !6488

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6489
  %cmp21 = icmp ule i64 %9, 64, !dbg !6491
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6492

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6493
  br label %return, !dbg !6493

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6494
  %cmp24 = icmp ule i64 %10, 128, !dbg !6496
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6497

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6499
  %cmp27 = icmp ule i64 %11, 256, !dbg !6501
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6502

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6503
  br label %return, !dbg !6503

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6504
  %cmp30 = icmp ule i64 %12, 512, !dbg !6506
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6507

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6508
  br label %return, !dbg !6508

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6509
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6511
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6512

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6516
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6517

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6519
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6521
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6522

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6524
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6526
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6527

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6529
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6531
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6532

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6533
  br label %return, !dbg !6533

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6534
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6536
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6537

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6538
  br label %return, !dbg !6538

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6539
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6541
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6542

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6543
  br label %return, !dbg !6543

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6544
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6546
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6547

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6548
  br label %return, !dbg !6548

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6549
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6551
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6552

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6554
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6556
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6557

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6558
  br label %return, !dbg !6558

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6559
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6561
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6562

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6563
  br label %return, !dbg !6563

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6564
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6566
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6567

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6568
  br label %return, !dbg !6568

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6569, !range !956, !noundef !957
  %tobool69 = trunc i8 %25 to i1, !dbg !6569
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6571

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6572

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #20, !dbg !6573, !srcloc !6576
  unreachable, !dbg !6573

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6577

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6578

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6579

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6581

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6579

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.26, i32 480, i32 0, i64 12) #15, !dbg !6583, !srcloc !6585
  br label %do.end75, !dbg !6583

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6579

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6586
  br label %return, !dbg !6586

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6587
  ret i32 %26, !dbg !6587
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6588 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !6594 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6598, metadata !DIExpression()), !dbg !6600
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6599, metadata !DIExpression()), !dbg !6601
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6602
  %and = and i32 %0, 17, !dbg !6602
  %cmp = icmp eq i32 %and, 0, !dbg !6602
  %lnot = xor i1 %cmp, true, !dbg !6602
  %lnot1 = xor i1 %lnot, true, !dbg !6602
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6602
  %conv = sext i32 %lnot.ext to i64, !dbg !6602
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6602
  %tobool = icmp ne i64 %expval, 0, !dbg !6602
  br i1 %tobool, label %if.then, label %if.end, !dbg !6604

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6605
  br label %return, !dbg !6605

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6606
  %and2 = and i32 %1, 1, !dbg !6608
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6608
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6609

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6610
  br label %return, !dbg !6610

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6611
  br label %return, !dbg !6611

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6613
  ret i32 %2, !dbg !6613
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6614 dso_local void @__compiletime_assert_263() #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360, !361}
!llvm.ident = !{!362}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "units_10", scope: !2, file: !3, line: 38, type: !228, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "string_get_size", scope: !3, file: !3, line: 35, type: !4, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !328)
!3 = !DIFile(filename: "lib/string_helpers.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69b483ef42268224041cdc62702cd72b")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6, !11, !18, !20}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "string_size_units", file: !13, line: 22, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./include/linux/string_helpers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a28eb021cc553d44497b3ba9ac863e11")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "STRING_UNITS_10", value: 0)
!17 = !DIEnumerator(name: "STRING_UNITS_2", value: 1)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.string_helpers.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/string_helpers\22 -D KBUILD_BASENAME=\22string_helpers\22 -D KBUILD_MODNAME=\22string_helpers\22 -D __KBUILD_MODNAME=kmod_string_helpers -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/string_helpers.ll lib/string_helpers.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !172, globals: !182, splitDebugInlining: false, nameTableKind: None)
!22 = !{!12, !23, !28, !36, !43, !51, !67, !74, !80, !85, !91, !97, !104, !110, !117, !125, !132, !141, !146, !151, !157, !162}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !14, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !29, line: 9, baseType: !14, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!32 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!33 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!34 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!35 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !37, line: 312, baseType: !14, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!40 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!41 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!42 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !14, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !14, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !68, line: 15, baseType: !14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!72 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!73 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !75, line: 26, baseType: !14, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!78 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!79 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !81, line: 2052, baseType: !14, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!84 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !86, line: 54, baseType: !14, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "USRQUOTA", value: 0)
!89 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!90 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !92, line: 16, baseType: !14, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "TT_NONE", value: 0)
!95 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!96 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !98, line: 51, baseType: !14, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!101 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!102 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!103 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !105, line: 45, baseType: !14, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!108 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!109 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !111, line: 487, baseType: !14, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!114 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!115 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!116 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !118, line: 620, baseType: !14, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!121 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!122 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!123 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!124 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !118, line: 597, baseType: !20, size: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!128 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!129 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!130 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!131 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !111, line: 547, baseType: !14, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140}
!134 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!135 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!136 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!137 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!138 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!139 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!140 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !111, line: 564, baseType: !14, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !111, line: 577, baseType: !14, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !111, line: 503, baseType: !14, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!155 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!156 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 10, baseType: !14, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "false", value: 0)
!161 = !DIEnumerator(name: "true", value: 1)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !163, line: 364, baseType: !14, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!164 = !{!165, !166, !167, !168, !169, !170, !171}
!165 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!166 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!170 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!171 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!172 = !{!173, !20, !175, !177, !178, !179, !18, !180, !181}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !174, line: 113, baseType: !6)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !14)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 154, baseType: !14)
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!181 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!182 = !{!183, !188, !193, !195, !197, !199, !201, !203, !205, !0, !207, !212, !214, !216, !218, !220, !222, !224, !226, !234, !239, !243, !246, !251, !253, !258, !260, !262, !264, !266, !271, !273, !275, !280, !285, !290, !292, !294, !299, !301, !303, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326}
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 2)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 3)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !190, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 4)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !209, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "units_2", scope: !2, file: !3, line: 41, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 576, elements: !232)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!232 = !{!233}
!233 = !DISubrange(count: 9)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "units_str", scope: !2, file: !3, line: 44, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !186)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "divisor", scope: !2, file: !3, line: 48, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !186)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "rounding", scope: !2, file: !3, line: 52, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 96, elements: !191)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 48, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 6)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !209, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 8)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_string_get_size287", scope: !21, file: !3, line: 132, type: !177, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_parse_int_array_user288", scope: !21, file: !3, line: 176, type: !177, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_string_unescape289", scope: !21, file: !3, line: 346, type: !177, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_string_escape_mem290", scope: !21, file: !3, line: 632, type: !177, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 654, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 21)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrdup_quotable291", scope: !21, file: !3, line: 659, type: !177, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrdup_quotable_cmdline292", scope: !21, file: !3, line: 692, type: !177, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 704, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 80, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 10)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 709, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 96, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 12)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 713, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 88, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 11)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrdup_quotable_file293", scope: !21, file: !3, line: 720, type: !177, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrdup_and_replace294", scope: !21, file: !3, line: 735, type: !177, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 759, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 56, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 7)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kasprintf_strarray295", scope: !21, file: !3, line: 768, type: !177, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kfree_strarray296", scope: !21, file: !3, line: 791, type: !177, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 809, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 20)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_kasprintf_strarray297", scope: !21, file: !3, line: 824, type: !177, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strscpy_pad298", scope: !21, file: !3, line: 858, type: !177, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_skip_spaces299", scope: !21, file: !3, line: 872, type: !177, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strim300", scope: !21, file: !3, line: 898, type: !177, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_streq301", scope: !21, file: !3, line: 925, type: !177, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_string302", scope: !21, file: !3, line: 959, type: !177, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___sysfs_match_string303", scope: !21, file: !3, line: 993, type: !177, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strreplace304", scope: !21, file: !3, line: 1014, type: !177, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memcpy_and_pad305", scope: !21, file: !3, line: 1034, type: !177, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !163, line: 480, type: !268, isLocal: true, isDefinition: true)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !344, !345, !348, !349, !352, !353}
!329 = !DILocalVariable(name: "size", arg: 1, scope: !2, file: !3, line: 35, type: !6)
!330 = !DILocalVariable(name: "blk_size", arg: 2, scope: !2, file: !3, line: 35, type: !6)
!331 = !DILocalVariable(name: "units", arg: 3, scope: !2, file: !3, line: 35, type: !11)
!332 = !DILocalVariable(name: "buf", arg: 4, scope: !2, file: !3, line: 36, type: !18)
!333 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 36, type: !20)
!334 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 53, type: !20)
!335 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 53, type: !20)
!336 = !DILocalVariable(name: "remainder", scope: !2, file: !3, line: 54, type: !175)
!337 = !DILocalVariable(name: "sf_cap", scope: !2, file: !3, line: 54, type: !175)
!338 = !DILocalVariable(name: "tmp", scope: !2, file: !3, line: 55, type: !282)
!339 = !DILocalVariable(name: "unit", scope: !2, file: !3, line: 56, type: !230)
!340 = !DILocalVariable(name: "__base", scope: !341, file: !3, line: 77, type: !343)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 77, column: 3)
!342 = distinct !DILexicalBlock(scope: !2, file: !3, line: 76, column: 25)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 110, baseType: !175)
!344 = !DILocalVariable(name: "__rem", scope: !341, file: !3, line: 77, type: !343)
!345 = !DILocalVariable(name: "__base", scope: !346, file: !3, line: 82, type: !343)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 82, column: 3)
!347 = distinct !DILexicalBlock(scope: !2, file: !3, line: 81, column: 21)
!348 = !DILocalVariable(name: "__rem", scope: !346, file: !3, line: 82, type: !343)
!349 = !DILocalVariable(name: "__base", scope: !350, file: !3, line: 92, type: !343)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 92, column: 15)
!351 = distinct !DILexicalBlock(scope: !2, file: !3, line: 91, column: 33)
!352 = !DILocalVariable(name: "__rem", scope: !350, file: !3, line: 92, type: !343)
!353 = !DILabel(scope: !2, name: "out", file: !3, line: 123)
!354 = !{i32 7, !"Dwarf Version", i32 5}
!355 = !{i32 2, !"Debug Info Version", i32 3}
!356 = !{i32 1, !"wchar_size", i32 2}
!357 = !{i32 8, !"cf-protection-branch", i32 1}
!358 = !{i32 4, !"function_return_thunk_extern", i32 1}
!359 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!360 = !{i32 1, !"Code Model", i32 2}
!361 = !{i32 1, !"override-stack-alignment", i32 8}
!362 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!363 = !DILocation(line: 35, column: 26, scope: !2)
!364 = !DILocation(line: 35, column: 36, scope: !2)
!365 = !DILocation(line: 35, column: 75, scope: !2)
!366 = !DILocation(line: 36, column: 14, scope: !2)
!367 = !DILocation(line: 36, column: 23, scope: !2)
!368 = !DILocation(line: 53, column: 2, scope: !2)
!369 = !DILocation(line: 53, column: 6, scope: !2)
!370 = !DILocation(line: 53, column: 13, scope: !2)
!371 = !DILocation(line: 54, column: 2, scope: !2)
!372 = !DILocation(line: 54, column: 6, scope: !2)
!373 = !DILocation(line: 54, column: 21, scope: !2)
!374 = !DILocation(line: 55, column: 2, scope: !2)
!375 = !DILocation(line: 55, column: 7, scope: !2)
!376 = !DILocation(line: 56, column: 2, scope: !2)
!377 = !DILocation(line: 56, column: 14, scope: !2)
!378 = !DILocation(line: 58, column: 2, scope: !2)
!379 = !DILocation(line: 58, column: 9, scope: !2)
!380 = !DILocation(line: 60, column: 6, scope: !381)
!381 = distinct !DILexicalBlock(scope: !2, file: !3, line: 60, column: 6)
!382 = !DILocation(line: 60, column: 15, scope: !381)
!383 = !DILocation(line: 60, column: 6, scope: !2)
!384 = !DILocation(line: 61, column: 8, scope: !381)
!385 = !DILocation(line: 61, column: 3, scope: !381)
!386 = !DILocation(line: 62, column: 6, scope: !387)
!387 = distinct !DILexicalBlock(scope: !2, file: !3, line: 62, column: 6)
!388 = !DILocation(line: 62, column: 11, scope: !387)
!389 = !DILocation(line: 62, column: 6, scope: !2)
!390 = !DILocation(line: 63, column: 3, scope: !387)
!391 = !DILocation(line: 76, column: 2, scope: !2)
!392 = !DILocation(line: 76, column: 9, scope: !2)
!393 = !DILocation(line: 76, column: 18, scope: !2)
!394 = !DILocation(line: 77, column: 3, scope: !341)
!395 = !DILocation(line: 77, column: 3, scope: !342)
!396 = !DILocation(line: 78, column: 4, scope: !342)
!397 = distinct !{!397, !391, !398, !399, !400}
!398 = !DILocation(line: 79, column: 2, scope: !2)
!399 = !{!"llvm.loop.mustprogress"}
!400 = !{!"llvm.loop.unroll.disable"}
!401 = !DILocation(line: 81, column: 2, scope: !2)
!402 = !DILocation(line: 81, column: 9, scope: !2)
!403 = !DILocation(line: 81, column: 14, scope: !2)
!404 = !DILocation(line: 82, column: 3, scope: !346)
!405 = !DILocation(line: 82, column: 3, scope: !347)
!406 = !DILocation(line: 83, column: 4, scope: !347)
!407 = distinct !{!407, !401, !408, !399, !400}
!408 = !DILocation(line: 84, column: 2, scope: !2)
!409 = !DILocation(line: 88, column: 10, scope: !2)
!410 = !DILocation(line: 88, column: 7, scope: !2)
!411 = !DILocation(line: 91, column: 2, scope: !2)
!412 = !DILocation(line: 91, column: 9, scope: !2)
!413 = !DILocation(line: 91, column: 25, scope: !2)
!414 = !DILocation(line: 91, column: 17, scope: !2)
!415 = !DILocation(line: 91, column: 14, scope: !2)
!416 = !DILocation(line: 92, column: 15, scope: !350)
!417 = !DILocation(line: 92, column: 15, scope: !351)
!418 = !DILocation(line: 92, column: 13, scope: !351)
!419 = !DILocation(line: 93, column: 4, scope: !351)
!420 = distinct !{!420, !411, !421, !399, !400}
!421 = !DILocation(line: 94, column: 2, scope: !2)
!422 = !DILocation(line: 98, column: 11, scope: !2)
!423 = !DILocation(line: 98, column: 9, scope: !2)
!424 = !DILocation(line: 99, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !2, file: !3, line: 99, column: 2)
!426 = !DILocation(line: 99, column: 7, scope: !425)
!427 = !DILocation(line: 99, column: 14, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 99, column: 2)
!429 = !DILocation(line: 99, column: 20, scope: !428)
!430 = !DILocation(line: 99, column: 24, scope: !428)
!431 = !DILocation(line: 99, column: 2, scope: !425)
!432 = !DILocation(line: 100, column: 10, scope: !428)
!433 = !DILocation(line: 100, column: 3, scope: !428)
!434 = !DILocation(line: 99, column: 33, scope: !428)
!435 = !DILocation(line: 99, column: 2, scope: !428)
!436 = distinct !{!436, !431, !437, !399, !400}
!437 = !DILocation(line: 100, column: 13, scope: !425)
!438 = !DILocation(line: 102, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !2, file: !3, line: 102, column: 6)
!440 = !DILocation(line: 102, column: 12, scope: !439)
!441 = !DILocation(line: 102, column: 6, scope: !2)
!442 = !DILocation(line: 106, column: 13, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 102, column: 31)
!444 = !DILocation(line: 107, column: 13, scope: !443)
!445 = !DILocation(line: 108, column: 2, scope: !443)
!446 = !DILocation(line: 112, column: 24, scope: !2)
!447 = !DILocation(line: 112, column: 15, scope: !2)
!448 = !DILocation(line: 112, column: 12, scope: !2)
!449 = !DILocation(line: 113, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !2, file: !3, line: 113, column: 6)
!451 = !DILocation(line: 113, column: 16, scope: !450)
!452 = !DILocation(line: 113, column: 6, scope: !2)
!453 = !DILocation(line: 114, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 113, column: 25)
!455 = !DILocation(line: 115, column: 8, scope: !454)
!456 = !DILocation(line: 116, column: 2, scope: !454)
!457 = !DILocation(line: 118, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !2, file: !3, line: 118, column: 6)
!459 = !DILocation(line: 118, column: 6, scope: !2)
!460 = !DILocation(line: 119, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !3, line: 118, column: 9)
!462 = !DILocation(line: 119, column: 39, scope: !461)
!463 = !DILocation(line: 119, column: 3, scope: !461)
!464 = !DILocation(line: 120, column: 7, scope: !461)
!465 = !DILocation(line: 120, column: 8, scope: !461)
!466 = !DILocation(line: 120, column: 3, scope: !461)
!467 = !DILocation(line: 120, column: 12, scope: !461)
!468 = !DILocation(line: 121, column: 2, scope: !461)
!469 = !DILocation(line: 123, column: 2, scope: !2)
!470 = !DILocation(line: 124, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !2, file: !3, line: 124, column: 6)
!472 = !DILocation(line: 124, column: 8, scope: !471)
!473 = !DILocation(line: 124, column: 6, scope: !2)
!474 = !DILocation(line: 125, column: 8, scope: !471)
!475 = !DILocation(line: 125, column: 3, scope: !471)
!476 = !DILocation(line: 127, column: 20, scope: !471)
!477 = !DILocation(line: 127, column: 10, scope: !471)
!478 = !DILocation(line: 127, column: 27, scope: !471)
!479 = !DILocation(line: 127, column: 8, scope: !471)
!480 = !DILocation(line: 129, column: 11, scope: !2)
!481 = !DILocation(line: 129, column: 16, scope: !2)
!482 = !DILocation(line: 129, column: 37, scope: !2)
!483 = !DILocation(line: 129, column: 32, scope: !2)
!484 = !DILocation(line: 130, column: 4, scope: !2)
!485 = !DILocation(line: 130, column: 9, scope: !2)
!486 = !DILocation(line: 129, column: 2, scope: !2)
!487 = !DILocation(line: 131, column: 1, scope: !2)
!488 = !DISubprogram(name: "snprintf", scope: !489, file: !489, line: 12, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!490 = !DISubroutineType(types: !491)
!491 = !{!20, !18, !492, !230, null}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 61, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !494, line: 72, baseType: !495)
!494 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !494, line: 16, baseType: !180)
!496 = distinct !DISubprogram(name: "parse_int_array_user", scope: !3, file: !3, line: 147, type: !497, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !501)
!497 = !DISubroutineType(types: !498)
!498 = !{!20, !230, !492, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509}
!502 = !DILocalVariable(name: "from", arg: 1, scope: !496, file: !3, line: 147, type: !230)
!503 = !DILocalVariable(name: "count", arg: 2, scope: !496, file: !3, line: 147, type: !492)
!504 = !DILocalVariable(name: "array", arg: 3, scope: !496, file: !3, line: 147, type: !499)
!505 = !DILocalVariable(name: "ints", scope: !496, file: !3, line: 149, type: !500)
!506 = !DILocalVariable(name: "nints", scope: !496, file: !3, line: 149, type: !20)
!507 = !DILocalVariable(name: "buf", scope: !496, file: !3, line: 150, type: !18)
!508 = !DILocalVariable(name: "ret", scope: !496, file: !3, line: 151, type: !20)
!509 = !DILabel(scope: !496, name: "free_buf", file: !3, line: 172)
!510 = !DILocation(line: 147, column: 45, scope: !496)
!511 = !DILocation(line: 147, column: 58, scope: !496)
!512 = !DILocation(line: 147, column: 71, scope: !496)
!513 = !DILocation(line: 149, column: 2, scope: !496)
!514 = !DILocation(line: 149, column: 7, scope: !496)
!515 = !DILocation(line: 149, column: 13, scope: !496)
!516 = !DILocation(line: 150, column: 2, scope: !496)
!517 = !DILocation(line: 150, column: 8, scope: !496)
!518 = !DILocation(line: 151, column: 2, scope: !496)
!519 = !DILocation(line: 151, column: 6, scope: !496)
!520 = !DILocation(line: 153, column: 24, scope: !496)
!521 = !DILocation(line: 153, column: 30, scope: !496)
!522 = !DILocation(line: 153, column: 8, scope: !496)
!523 = !DILocation(line: 153, column: 6, scope: !496)
!524 = !DILocation(line: 154, column: 13, scope: !525)
!525 = distinct !DILexicalBlock(scope: !496, file: !3, line: 154, column: 6)
!526 = !DILocation(line: 154, column: 6, scope: !525)
!527 = !DILocation(line: 154, column: 6, scope: !496)
!528 = !DILocation(line: 155, column: 18, scope: !525)
!529 = !DILocation(line: 155, column: 10, scope: !525)
!530 = !DILocation(line: 155, column: 3, scope: !525)
!531 = !DILocation(line: 157, column: 14, scope: !496)
!532 = !DILocation(line: 157, column: 2, scope: !496)
!533 = !DILocation(line: 158, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !496, file: !3, line: 158, column: 6)
!535 = !DILocation(line: 158, column: 6, scope: !496)
!536 = !DILocation(line: 159, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 158, column: 14)
!538 = !DILocation(line: 160, column: 3, scope: !537)
!539 = !DILocation(line: 163, column: 17, scope: !496)
!540 = !DILocation(line: 163, column: 23, scope: !496)
!541 = !DILocation(line: 163, column: 9, scope: !496)
!542 = !DILocation(line: 163, column: 7, scope: !496)
!543 = !DILocation(line: 164, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !496, file: !3, line: 164, column: 6)
!545 = !DILocation(line: 164, column: 6, scope: !496)
!546 = !DILocation(line: 165, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !3, line: 164, column: 13)
!548 = !DILocation(line: 166, column: 3, scope: !547)
!549 = !DILocation(line: 169, column: 14, scope: !496)
!550 = !DILocation(line: 169, column: 19, scope: !496)
!551 = !DILocation(line: 169, column: 25, scope: !496)
!552 = !DILocation(line: 169, column: 30, scope: !496)
!553 = !DILocation(line: 169, column: 2, scope: !496)
!554 = !DILocation(line: 170, column: 11, scope: !496)
!555 = !DILocation(line: 170, column: 3, scope: !496)
!556 = !DILocation(line: 170, column: 9, scope: !496)
!557 = !DILocation(line: 170, column: 2, scope: !496)
!558 = !DILocation(line: 172, column: 1, scope: !496)
!559 = !DILocation(line: 173, column: 8, scope: !496)
!560 = !DILocation(line: 173, column: 2, scope: !496)
!561 = !DILocation(line: 174, column: 9, scope: !496)
!562 = !DILocation(line: 174, column: 2, scope: !496)
!563 = !DILocation(line: 175, column: 1, scope: !496)
!564 = !DISubprogram(name: "memdup_user_nul", scope: !565, file: !565, line: 17, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!566 = !DISubroutineType(types: !567)
!567 = !{!177, !568, !492}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!570 = distinct !DISubprogram(name: "IS_ERR", scope: !571, file: !571, line: 59, type: !572, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !576)
!571 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !568}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 35, baseType: !575)
!575 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!576 = !{!577}
!577 = !DILocalVariable(name: "ptr", arg: 1, scope: !570, file: !571, line: 59, type: !568)
!578 = !DILocation(line: 59, column: 60, scope: !570)
!579 = !DILocation(line: 61, column: 9, scope: !570)
!580 = !DILocation(line: 61, column: 2, scope: !570)
!581 = distinct !DISubprogram(name: "PTR_ERR", scope: !571, file: !571, line: 49, type: !582, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!181, !568}
!584 = !{!585}
!585 = !DILocalVariable(name: "ptr", arg: 1, scope: !581, file: !571, line: 49, type: !568)
!586 = !DILocation(line: 49, column: 61, scope: !581)
!587 = !DILocation(line: 51, column: 16, scope: !581)
!588 = !DILocation(line: 51, column: 9, scope: !581)
!589 = !DILocation(line: 51, column: 2, scope: !581)
!590 = !DISubprogram(name: "get_options", scope: !591, file: !591, line: 208, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!592 = !DISubroutineType(types: !593)
!593 = !{!18, !230, !20, !500}
!594 = distinct !DISubprogram(name: "kcalloc", scope: !163, file: !163, line: 666, type: !595, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!177, !492, !492, !178}
!597 = !{!598, !599, !600}
!598 = !DILocalVariable(name: "n", arg: 1, scope: !594, file: !163, line: 666, type: !492)
!599 = !DILocalVariable(name: "size", arg: 2, scope: !594, file: !163, line: 666, type: !492)
!600 = !DILocalVariable(name: "flags", arg: 3, scope: !594, file: !163, line: 666, type: !178)
!601 = !DILocation(line: 666, column: 55, scope: !594)
!602 = !DILocation(line: 666, column: 65, scope: !594)
!603 = !DILocation(line: 666, column: 77, scope: !594)
!604 = !DILocation(line: 668, column: 23, scope: !594)
!605 = !DILocation(line: 668, column: 26, scope: !594)
!606 = !DILocation(line: 668, column: 32, scope: !594)
!607 = !DILocation(line: 668, column: 38, scope: !594)
!608 = !DILocation(line: 668, column: 9, scope: !594)
!609 = !DILocation(line: 668, column: 2, scope: !594)
!610 = !DISubprogram(name: "kfree", scope: !163, file: !163, line: 227, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !568}
!613 = distinct !DISubprogram(name: "string_unescape", scope: !3, file: !3, line: 313, type: !614, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!20, !18, !18, !492, !14}
!616 = !{!617, !618, !619, !620, !621}
!617 = !DILocalVariable(name: "src", arg: 1, scope: !613, file: !3, line: 313, type: !18)
!618 = !DILocalVariable(name: "dst", arg: 2, scope: !613, file: !3, line: 313, type: !18)
!619 = !DILocalVariable(name: "size", arg: 3, scope: !613, file: !3, line: 313, type: !492)
!620 = !DILocalVariable(name: "flags", arg: 4, scope: !613, file: !3, line: 313, type: !14)
!621 = !DILocalVariable(name: "out", scope: !613, file: !3, line: 315, type: !18)
!622 = !DILocation(line: 313, column: 27, scope: !613)
!623 = !DILocation(line: 313, column: 38, scope: !613)
!624 = !DILocation(line: 313, column: 50, scope: !613)
!625 = !DILocation(line: 313, column: 69, scope: !613)
!626 = !DILocation(line: 315, column: 2, scope: !613)
!627 = !DILocation(line: 315, column: 8, scope: !613)
!628 = !DILocation(line: 315, column: 14, scope: !613)
!629 = !DILocation(line: 317, column: 2, scope: !613)
!630 = !DILocation(line: 317, column: 10, scope: !613)
!631 = !DILocation(line: 317, column: 9, scope: !613)
!632 = !DILocation(line: 317, column: 14, scope: !613)
!633 = !DILocation(line: 317, column: 17, scope: !613)
!634 = !DILocation(line: 0, scope: !613)
!635 = !DILocation(line: 318, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 318, column: 7)
!637 = distinct !DILexicalBlock(scope: !613, file: !3, line: 317, column: 25)
!638 = !DILocation(line: 318, column: 14, scope: !636)
!639 = !DILocation(line: 318, column: 22, scope: !636)
!640 = !DILocation(line: 318, column: 25, scope: !636)
!641 = !DILocation(line: 318, column: 32, scope: !636)
!642 = !DILocation(line: 318, column: 40, scope: !636)
!643 = !DILocation(line: 318, column: 43, scope: !636)
!644 = !DILocation(line: 318, column: 48, scope: !636)
!645 = !DILocation(line: 318, column: 7, scope: !637)
!646 = !DILocation(line: 319, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !636, file: !3, line: 318, column: 53)
!648 = !DILocation(line: 320, column: 8, scope: !647)
!649 = !DILocation(line: 322, column: 8, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !3, line: 322, column: 8)
!651 = !DILocation(line: 322, column: 14, scope: !650)
!652 = !DILocation(line: 322, column: 31, scope: !650)
!653 = !DILocation(line: 323, column: 6, scope: !650)
!654 = !DILocation(line: 322, column: 8, scope: !647)
!655 = !DILocation(line: 324, column: 5, scope: !650)
!656 = distinct !{!656, !629, !657, !399, !400}
!657 = !DILocation(line: 341, column: 2, scope: !613)
!658 = !DILocation(line: 326, column: 8, scope: !659)
!659 = distinct !DILexicalBlock(scope: !647, file: !3, line: 326, column: 8)
!660 = !DILocation(line: 326, column: 14, scope: !659)
!661 = !DILocation(line: 326, column: 31, scope: !659)
!662 = !DILocation(line: 327, column: 6, scope: !659)
!663 = !DILocation(line: 326, column: 8, scope: !647)
!664 = !DILocation(line: 328, column: 5, scope: !659)
!665 = !DILocation(line: 330, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !647, file: !3, line: 330, column: 8)
!667 = !DILocation(line: 330, column: 14, scope: !666)
!668 = !DILocation(line: 330, column: 29, scope: !666)
!669 = !DILocation(line: 331, column: 6, scope: !666)
!670 = !DILocation(line: 330, column: 8, scope: !647)
!671 = !DILocation(line: 332, column: 5, scope: !666)
!672 = !DILocation(line: 334, column: 8, scope: !673)
!673 = distinct !DILexicalBlock(scope: !647, file: !3, line: 334, column: 8)
!674 = !DILocation(line: 334, column: 14, scope: !673)
!675 = !DILocation(line: 334, column: 33, scope: !673)
!676 = !DILocation(line: 335, column: 6, scope: !673)
!677 = !DILocation(line: 334, column: 8, scope: !647)
!678 = !DILocation(line: 336, column: 5, scope: !673)
!679 = !DILocation(line: 338, column: 8, scope: !647)
!680 = !DILocation(line: 338, column: 11, scope: !647)
!681 = !DILocation(line: 339, column: 3, scope: !647)
!682 = !DILocation(line: 340, column: 16, scope: !637)
!683 = !DILocation(line: 340, column: 12, scope: !637)
!684 = !DILocation(line: 340, column: 7, scope: !637)
!685 = !DILocation(line: 340, column: 10, scope: !637)
!686 = !DILocation(line: 342, column: 3, scope: !613)
!687 = !DILocation(line: 342, column: 7, scope: !613)
!688 = !DILocation(line: 344, column: 9, scope: !613)
!689 = !DILocation(line: 344, column: 15, scope: !613)
!690 = !DILocation(line: 344, column: 13, scope: !613)
!691 = !DILocation(line: 345, column: 1, scope: !613)
!692 = !DILocation(line: 344, column: 2, scope: !613)
!693 = distinct !DISubprogram(name: "unescape_space", scope: !3, file: !3, line: 178, type: !694, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !697)
!694 = !DISubroutineType(types: !695)
!695 = !{!574, !696, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!697 = !{!698, !699, !700, !701}
!698 = !DILocalVariable(name: "src", arg: 1, scope: !693, file: !3, line: 178, type: !696)
!699 = !DILocalVariable(name: "dst", arg: 2, scope: !693, file: !3, line: 178, type: !696)
!700 = !DILocalVariable(name: "p", scope: !693, file: !3, line: 180, type: !18)
!701 = !DILocalVariable(name: "q", scope: !693, file: !3, line: 180, type: !18)
!702 = !DILocation(line: 178, column: 35, scope: !693)
!703 = !DILocation(line: 178, column: 47, scope: !693)
!704 = !DILocation(line: 180, column: 2, scope: !693)
!705 = !DILocation(line: 180, column: 8, scope: !693)
!706 = !DILocation(line: 180, column: 13, scope: !693)
!707 = !DILocation(line: 180, column: 12, scope: !693)
!708 = !DILocation(line: 180, column: 19, scope: !693)
!709 = !DILocation(line: 180, column: 24, scope: !693)
!710 = !DILocation(line: 180, column: 23, scope: !693)
!711 = !DILocation(line: 182, column: 11, scope: !693)
!712 = !DILocation(line: 182, column: 10, scope: !693)
!713 = !DILocation(line: 182, column: 2, scope: !693)
!714 = !DILocation(line: 184, column: 4, scope: !715)
!715 = distinct !DILexicalBlock(scope: !693, file: !3, line: 182, column: 14)
!716 = !DILocation(line: 184, column: 6, scope: !715)
!717 = !DILocation(line: 185, column: 3, scope: !715)
!718 = !DILocation(line: 187, column: 4, scope: !715)
!719 = !DILocation(line: 187, column: 6, scope: !715)
!720 = !DILocation(line: 188, column: 3, scope: !715)
!721 = !DILocation(line: 190, column: 4, scope: !715)
!722 = !DILocation(line: 190, column: 6, scope: !715)
!723 = !DILocation(line: 191, column: 3, scope: !715)
!724 = !DILocation(line: 193, column: 4, scope: !715)
!725 = !DILocation(line: 193, column: 6, scope: !715)
!726 = !DILocation(line: 194, column: 3, scope: !715)
!727 = !DILocation(line: 196, column: 4, scope: !715)
!728 = !DILocation(line: 196, column: 6, scope: !715)
!729 = !DILocation(line: 197, column: 3, scope: !715)
!730 = !DILocation(line: 199, column: 3, scope: !715)
!731 = !DILocation(line: 201, column: 3, scope: !693)
!732 = !DILocation(line: 201, column: 7, scope: !693)
!733 = !DILocation(line: 202, column: 3, scope: !693)
!734 = !DILocation(line: 202, column: 7, scope: !693)
!735 = !DILocation(line: 203, column: 2, scope: !693)
!736 = !DILocation(line: 204, column: 1, scope: !693)
!737 = distinct !DISubprogram(name: "unescape_octal", scope: !3, file: !3, line: 206, type: !694, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !738)
!738 = !{!739, !740, !741, !742, !743}
!739 = !DILocalVariable(name: "src", arg: 1, scope: !737, file: !3, line: 206, type: !696)
!740 = !DILocalVariable(name: "dst", arg: 2, scope: !737, file: !3, line: 206, type: !696)
!741 = !DILocalVariable(name: "p", scope: !737, file: !3, line: 208, type: !18)
!742 = !DILocalVariable(name: "q", scope: !737, file: !3, line: 208, type: !18)
!743 = !DILocalVariable(name: "num", scope: !737, file: !3, line: 209, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !179)
!746 = !DILocation(line: 206, column: 35, scope: !737)
!747 = !DILocation(line: 206, column: 47, scope: !737)
!748 = !DILocation(line: 208, column: 2, scope: !737)
!749 = !DILocation(line: 208, column: 8, scope: !737)
!750 = !DILocation(line: 208, column: 13, scope: !737)
!751 = !DILocation(line: 208, column: 12, scope: !737)
!752 = !DILocation(line: 208, column: 19, scope: !737)
!753 = !DILocation(line: 208, column: 24, scope: !737)
!754 = !DILocation(line: 208, column: 23, scope: !737)
!755 = !DILocation(line: 209, column: 2, scope: !737)
!756 = !DILocation(line: 209, column: 5, scope: !737)
!757 = !DILocation(line: 211, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !737, file: !3, line: 211, column: 6)
!759 = !DILocation(line: 211, column: 15, scope: !758)
!760 = !DILocation(line: 211, column: 6, scope: !758)
!761 = !DILocation(line: 211, column: 19, scope: !758)
!762 = !DILocation(line: 211, column: 6, scope: !737)
!763 = !DILocation(line: 212, column: 3, scope: !758)
!764 = !DILocation(line: 214, column: 11, scope: !737)
!765 = !DILocation(line: 214, column: 9, scope: !737)
!766 = !DILocation(line: 214, column: 8, scope: !737)
!767 = !DILocation(line: 214, column: 15, scope: !737)
!768 = !DILocation(line: 214, column: 6, scope: !737)
!769 = !DILocation(line: 215, column: 2, scope: !737)
!770 = !DILocation(line: 215, column: 9, scope: !737)
!771 = !DILocation(line: 215, column: 13, scope: !737)
!772 = !DILocation(line: 215, column: 18, scope: !737)
!773 = !DILocation(line: 215, column: 31, scope: !737)
!774 = !DILocation(line: 215, column: 30, scope: !737)
!775 = !DILocation(line: 215, column: 21, scope: !737)
!776 = !DILocation(line: 215, column: 34, scope: !737)
!777 = !DILocation(line: 215, column: 38, scope: !737)
!778 = !DILocation(line: 215, column: 43, scope: !737)
!779 = !DILocation(line: 215, column: 42, scope: !737)
!780 = !DILocation(line: 215, column: 40, scope: !737)
!781 = !DILocation(line: 215, column: 47, scope: !737)
!782 = !DILocation(line: 0, scope: !737)
!783 = !DILocation(line: 216, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !737, file: !3, line: 215, column: 53)
!785 = !DILocation(line: 217, column: 13, scope: !784)
!786 = !DILocation(line: 217, column: 11, scope: !784)
!787 = !DILocation(line: 217, column: 10, scope: !784)
!788 = !DILocation(line: 217, column: 17, scope: !784)
!789 = !DILocation(line: 217, column: 7, scope: !784)
!790 = distinct !{!790, !769, !791, !399, !400}
!791 = !DILocation(line: 218, column: 2, scope: !737)
!792 = !DILocation(line: 219, column: 7, scope: !737)
!793 = !DILocation(line: 219, column: 3, scope: !737)
!794 = !DILocation(line: 219, column: 5, scope: !737)
!795 = !DILocation(line: 220, column: 3, scope: !737)
!796 = !DILocation(line: 220, column: 7, scope: !737)
!797 = !DILocation(line: 221, column: 9, scope: !737)
!798 = !DILocation(line: 221, column: 3, scope: !737)
!799 = !DILocation(line: 221, column: 7, scope: !737)
!800 = !DILocation(line: 222, column: 2, scope: !737)
!801 = !DILocation(line: 223, column: 1, scope: !737)
!802 = distinct !DISubprogram(name: "unescape_hex", scope: !3, file: !3, line: 225, type: !694, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !803)
!803 = !{!804, !805, !806, !807, !808, !809}
!804 = !DILocalVariable(name: "src", arg: 1, scope: !802, file: !3, line: 225, type: !696)
!805 = !DILocalVariable(name: "dst", arg: 2, scope: !802, file: !3, line: 225, type: !696)
!806 = !DILocalVariable(name: "p", scope: !802, file: !3, line: 227, type: !18)
!807 = !DILocalVariable(name: "q", scope: !802, file: !3, line: 227, type: !18)
!808 = !DILocalVariable(name: "digit", scope: !802, file: !3, line: 228, type: !20)
!809 = !DILocalVariable(name: "num", scope: !802, file: !3, line: 229, type: !744)
!810 = !DILocation(line: 225, column: 33, scope: !802)
!811 = !DILocation(line: 225, column: 45, scope: !802)
!812 = !DILocation(line: 227, column: 2, scope: !802)
!813 = !DILocation(line: 227, column: 8, scope: !802)
!814 = !DILocation(line: 227, column: 13, scope: !802)
!815 = !DILocation(line: 227, column: 12, scope: !802)
!816 = !DILocation(line: 227, column: 19, scope: !802)
!817 = !DILocation(line: 227, column: 24, scope: !802)
!818 = !DILocation(line: 227, column: 23, scope: !802)
!819 = !DILocation(line: 228, column: 2, scope: !802)
!820 = !DILocation(line: 228, column: 6, scope: !802)
!821 = !DILocation(line: 229, column: 2, scope: !802)
!822 = !DILocation(line: 229, column: 5, scope: !802)
!823 = !DILocation(line: 231, column: 8, scope: !824)
!824 = distinct !DILexicalBlock(scope: !802, file: !3, line: 231, column: 6)
!825 = !DILocation(line: 231, column: 6, scope: !824)
!826 = !DILocation(line: 231, column: 11, scope: !824)
!827 = !DILocation(line: 231, column: 6, scope: !802)
!828 = !DILocation(line: 232, column: 3, scope: !824)
!829 = !DILocation(line: 234, column: 29, scope: !802)
!830 = !DILocation(line: 234, column: 27, scope: !802)
!831 = !DILocation(line: 234, column: 16, scope: !802)
!832 = !DILocation(line: 234, column: 14, scope: !802)
!833 = !DILocation(line: 234, column: 8, scope: !802)
!834 = !DILocation(line: 234, column: 6, scope: !802)
!835 = !DILocation(line: 235, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !802, file: !3, line: 235, column: 6)
!837 = !DILocation(line: 235, column: 12, scope: !836)
!838 = !DILocation(line: 235, column: 6, scope: !802)
!839 = !DILocation(line: 236, column: 3, scope: !836)
!840 = !DILocation(line: 238, column: 22, scope: !802)
!841 = !DILocation(line: 238, column: 21, scope: !802)
!842 = !DILocation(line: 238, column: 10, scope: !802)
!843 = !DILocation(line: 238, column: 8, scope: !802)
!844 = !DILocation(line: 239, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !802, file: !3, line: 239, column: 6)
!846 = !DILocation(line: 239, column: 12, scope: !845)
!847 = !DILocation(line: 239, column: 6, scope: !802)
!848 = !DILocation(line: 240, column: 4, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 239, column: 18)
!850 = !DILocation(line: 241, column: 10, scope: !849)
!851 = !DILocation(line: 241, column: 14, scope: !849)
!852 = !DILocation(line: 241, column: 22, scope: !849)
!853 = !DILocation(line: 241, column: 20, scope: !849)
!854 = !DILocation(line: 241, column: 9, scope: !849)
!855 = !DILocation(line: 241, column: 7, scope: !849)
!856 = !DILocation(line: 242, column: 2, scope: !849)
!857 = !DILocation(line: 243, column: 7, scope: !802)
!858 = !DILocation(line: 243, column: 3, scope: !802)
!859 = !DILocation(line: 243, column: 5, scope: !802)
!860 = !DILocation(line: 244, column: 3, scope: !802)
!861 = !DILocation(line: 244, column: 7, scope: !802)
!862 = !DILocation(line: 245, column: 9, scope: !802)
!863 = !DILocation(line: 245, column: 3, scope: !802)
!864 = !DILocation(line: 245, column: 7, scope: !802)
!865 = !DILocation(line: 246, column: 2, scope: !802)
!866 = !DILocation(line: 247, column: 1, scope: !802)
!867 = distinct !DISubprogram(name: "unescape_special", scope: !3, file: !3, line: 249, type: !694, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !868)
!868 = !{!869, !870, !871, !872}
!869 = !DILocalVariable(name: "src", arg: 1, scope: !867, file: !3, line: 249, type: !696)
!870 = !DILocalVariable(name: "dst", arg: 2, scope: !867, file: !3, line: 249, type: !696)
!871 = !DILocalVariable(name: "p", scope: !867, file: !3, line: 251, type: !18)
!872 = !DILocalVariable(name: "q", scope: !867, file: !3, line: 251, type: !18)
!873 = !DILocation(line: 249, column: 37, scope: !867)
!874 = !DILocation(line: 249, column: 49, scope: !867)
!875 = !DILocation(line: 251, column: 2, scope: !867)
!876 = !DILocation(line: 251, column: 8, scope: !867)
!877 = !DILocation(line: 251, column: 13, scope: !867)
!878 = !DILocation(line: 251, column: 12, scope: !867)
!879 = !DILocation(line: 251, column: 19, scope: !867)
!880 = !DILocation(line: 251, column: 24, scope: !867)
!881 = !DILocation(line: 251, column: 23, scope: !867)
!882 = !DILocation(line: 253, column: 11, scope: !867)
!883 = !DILocation(line: 253, column: 10, scope: !867)
!884 = !DILocation(line: 253, column: 2, scope: !867)
!885 = !DILocation(line: 255, column: 4, scope: !886)
!886 = distinct !DILexicalBlock(scope: !867, file: !3, line: 253, column: 14)
!887 = !DILocation(line: 255, column: 6, scope: !886)
!888 = !DILocation(line: 256, column: 3, scope: !886)
!889 = !DILocation(line: 258, column: 4, scope: !886)
!890 = !DILocation(line: 258, column: 6, scope: !886)
!891 = !DILocation(line: 259, column: 3, scope: !886)
!892 = !DILocation(line: 261, column: 4, scope: !886)
!893 = !DILocation(line: 261, column: 6, scope: !886)
!894 = !DILocation(line: 262, column: 3, scope: !886)
!895 = !DILocation(line: 264, column: 4, scope: !886)
!896 = !DILocation(line: 264, column: 6, scope: !886)
!897 = !DILocation(line: 265, column: 3, scope: !886)
!898 = !DILocation(line: 267, column: 3, scope: !886)
!899 = !DILocation(line: 269, column: 3, scope: !867)
!900 = !DILocation(line: 269, column: 7, scope: !867)
!901 = !DILocation(line: 270, column: 3, scope: !867)
!902 = !DILocation(line: 270, column: 7, scope: !867)
!903 = !DILocation(line: 271, column: 2, scope: !867)
!904 = !DILocation(line: 272, column: 1, scope: !867)
!905 = distinct !DISubprogram(name: "string_escape_mem", scope: !3, file: !3, line: 564, type: !906, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!20, !230, !492, !18, !492, !14, !230}
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !921}
!909 = !DILocalVariable(name: "src", arg: 1, scope: !905, file: !3, line: 564, type: !230)
!910 = !DILocalVariable(name: "isz", arg: 2, scope: !905, file: !3, line: 564, type: !492)
!911 = !DILocalVariable(name: "dst", arg: 3, scope: !905, file: !3, line: 564, type: !18)
!912 = !DILocalVariable(name: "osz", arg: 4, scope: !905, file: !3, line: 564, type: !492)
!913 = !DILocalVariable(name: "flags", arg: 5, scope: !905, file: !3, line: 565, type: !14)
!914 = !DILocalVariable(name: "only", arg: 6, scope: !905, file: !3, line: 565, type: !230)
!915 = !DILocalVariable(name: "p", scope: !905, file: !3, line: 567, type: !18)
!916 = !DILocalVariable(name: "end", scope: !905, file: !3, line: 568, type: !18)
!917 = !DILocalVariable(name: "is_dict", scope: !905, file: !3, line: 569, type: !574)
!918 = !DILocalVariable(name: "is_append", scope: !905, file: !3, line: 570, type: !574)
!919 = !DILocalVariable(name: "c", scope: !920, file: !3, line: 573, type: !179)
!920 = distinct !DILexicalBlock(scope: !905, file: !3, line: 572, column: 16)
!921 = !DILocalVariable(name: "in_dict", scope: !920, file: !3, line: 574, type: !574)
!922 = !DILocation(line: 564, column: 35, scope: !905)
!923 = !DILocation(line: 564, column: 47, scope: !905)
!924 = !DILocation(line: 564, column: 58, scope: !905)
!925 = !DILocation(line: 564, column: 70, scope: !905)
!926 = !DILocation(line: 565, column: 22, scope: !905)
!927 = !DILocation(line: 565, column: 41, scope: !905)
!928 = !DILocation(line: 567, column: 2, scope: !905)
!929 = !DILocation(line: 567, column: 8, scope: !905)
!930 = !DILocation(line: 567, column: 12, scope: !905)
!931 = !DILocation(line: 568, column: 2, scope: !905)
!932 = !DILocation(line: 568, column: 8, scope: !905)
!933 = !DILocation(line: 568, column: 14, scope: !905)
!934 = !DILocation(line: 568, column: 18, scope: !905)
!935 = !DILocation(line: 568, column: 16, scope: !905)
!936 = !DILocation(line: 569, column: 2, scope: !905)
!937 = !DILocation(line: 569, column: 7, scope: !905)
!938 = !DILocation(line: 569, column: 17, scope: !905)
!939 = !DILocation(line: 569, column: 22, scope: !905)
!940 = !DILocation(line: 569, column: 26, scope: !905)
!941 = !DILocation(line: 569, column: 25, scope: !905)
!942 = !DILocation(line: 0, scope: !905)
!943 = !DILocation(line: 570, column: 2, scope: !905)
!944 = !DILocation(line: 570, column: 7, scope: !905)
!945 = !DILocation(line: 570, column: 19, scope: !905)
!946 = !DILocation(line: 570, column: 25, scope: !905)
!947 = !DILocation(line: 572, column: 2, scope: !905)
!948 = !DILocation(line: 572, column: 12, scope: !905)
!949 = !DILocation(line: 573, column: 3, scope: !920)
!950 = !DILocation(line: 573, column: 17, scope: !920)
!951 = !DILocation(line: 573, column: 25, scope: !920)
!952 = !DILocation(line: 573, column: 21, scope: !920)
!953 = !DILocation(line: 574, column: 3, scope: !920)
!954 = !DILocation(line: 574, column: 8, scope: !920)
!955 = !DILocation(line: 574, column: 18, scope: !920)
!956 = !{i8 0, i8 2}
!957 = !{}
!958 = !DILocation(line: 574, column: 26, scope: !920)
!959 = !DILocation(line: 574, column: 36, scope: !920)
!960 = !DILocation(line: 574, column: 42, scope: !920)
!961 = !DILocation(line: 574, column: 29, scope: !920)
!962 = !DILocation(line: 0, scope: !920)
!963 = !DILocation(line: 595, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !920, file: !3, line: 595, column: 7)
!965 = !DILocation(line: 595, column: 19, scope: !964)
!966 = !DILocation(line: 595, column: 22, scope: !964)
!967 = !DILocation(line: 595, column: 31, scope: !964)
!968 = !DILocation(line: 595, column: 34, scope: !964)
!969 = !DILocation(line: 595, column: 42, scope: !964)
!970 = !DILocation(line: 596, column: 27, scope: !964)
!971 = !DILocation(line: 596, column: 34, scope: !964)
!972 = !DILocation(line: 596, column: 8, scope: !964)
!973 = !DILocation(line: 595, column: 7, scope: !920)
!974 = !DILocation(line: 597, column: 4, scope: !964)
!975 = distinct !{!975, !947, !976, !399, !400}
!976 = !DILocation(line: 628, column: 2, scope: !905)
!977 = !DILocation(line: 599, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !920, file: !3, line: 599, column: 7)
!979 = !DILocation(line: 599, column: 19, scope: !978)
!980 = !DILocation(line: 599, column: 22, scope: !978)
!981 = !DILocation(line: 599, column: 31, scope: !978)
!982 = !DILocation(line: 599, column: 34, scope: !978)
!983 = !DILocation(line: 599, column: 45, scope: !978)
!984 = !DILocation(line: 599, column: 48, scope: !978)
!985 = !DILocation(line: 599, column: 59, scope: !978)
!986 = !DILocation(line: 600, column: 7, scope: !978)
!987 = !DILocation(line: 600, column: 13, scope: !978)
!988 = !DILocation(line: 600, column: 26, scope: !978)
!989 = !DILocation(line: 600, column: 48, scope: !978)
!990 = !DILocation(line: 600, column: 55, scope: !978)
!991 = !DILocation(line: 600, column: 29, scope: !978)
!992 = !DILocation(line: 599, column: 7, scope: !920)
!993 = !DILocation(line: 601, column: 4, scope: !978)
!994 = !DILocation(line: 603, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !920, file: !3, line: 603, column: 7)
!996 = !DILocation(line: 603, column: 19, scope: !995)
!997 = !DILocation(line: 603, column: 22, scope: !995)
!998 = !DILocation(line: 603, column: 31, scope: !995)
!999 = !DILocation(line: 603, column: 34, scope: !995)
!1000 = !DILocation(line: 603, column: 45, scope: !995)
!1001 = !DILocation(line: 604, column: 7, scope: !995)
!1002 = !DILocation(line: 604, column: 13, scope: !995)
!1003 = !DILocation(line: 604, column: 25, scope: !995)
!1004 = !DILocation(line: 604, column: 47, scope: !995)
!1005 = !DILocation(line: 604, column: 54, scope: !995)
!1006 = !DILocation(line: 604, column: 28, scope: !995)
!1007 = !DILocation(line: 603, column: 7, scope: !920)
!1008 = !DILocation(line: 605, column: 4, scope: !995)
!1009 = !DILocation(line: 607, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !920, file: !3, line: 607, column: 7)
!1011 = !DILocation(line: 607, column: 19, scope: !1010)
!1012 = !DILocation(line: 607, column: 22, scope: !1010)
!1013 = !DILocation(line: 607, column: 31, scope: !1010)
!1014 = !DILocation(line: 607, column: 34, scope: !1010)
!1015 = !DILocation(line: 607, column: 45, scope: !1010)
!1016 = !DILocation(line: 608, column: 7, scope: !1010)
!1017 = !DILocation(line: 608, column: 13, scope: !1010)
!1018 = !DILocation(line: 608, column: 25, scope: !1010)
!1019 = !DILocation(line: 608, column: 47, scope: !1010)
!1020 = !DILocation(line: 608, column: 54, scope: !1010)
!1021 = !DILocation(line: 608, column: 28, scope: !1010)
!1022 = !DILocation(line: 607, column: 7, scope: !920)
!1023 = !DILocation(line: 609, column: 4, scope: !1010)
!1024 = !DILocation(line: 611, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !920, file: !3, line: 611, column: 7)
!1026 = !DILocation(line: 611, column: 13, scope: !1025)
!1027 = !DILocation(line: 611, column: 28, scope: !1025)
!1028 = !DILocation(line: 611, column: 44, scope: !1025)
!1029 = !DILocation(line: 611, column: 51, scope: !1025)
!1030 = !DILocation(line: 611, column: 31, scope: !1025)
!1031 = !DILocation(line: 611, column: 7, scope: !920)
!1032 = !DILocation(line: 612, column: 4, scope: !1025)
!1033 = !DILocation(line: 614, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !920, file: !3, line: 614, column: 7)
!1035 = !DILocation(line: 614, column: 13, scope: !1034)
!1036 = !DILocation(line: 614, column: 30, scope: !1034)
!1037 = !DILocation(line: 614, column: 48, scope: !1034)
!1038 = !DILocation(line: 614, column: 55, scope: !1034)
!1039 = !DILocation(line: 614, column: 33, scope: !1034)
!1040 = !DILocation(line: 614, column: 7, scope: !920)
!1041 = !DILocation(line: 615, column: 4, scope: !1034)
!1042 = !DILocation(line: 617, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !920, file: !3, line: 617, column: 7)
!1044 = !DILocation(line: 617, column: 13, scope: !1043)
!1045 = !DILocation(line: 617, column: 27, scope: !1043)
!1046 = !DILocation(line: 617, column: 42, scope: !1043)
!1047 = !DILocation(line: 617, column: 49, scope: !1043)
!1048 = !DILocation(line: 617, column: 30, scope: !1043)
!1049 = !DILocation(line: 617, column: 7, scope: !920)
!1050 = !DILocation(line: 618, column: 4, scope: !1043)
!1051 = !DILocation(line: 621, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !920, file: !3, line: 621, column: 7)
!1053 = !DILocation(line: 621, column: 13, scope: !1052)
!1054 = !DILocation(line: 621, column: 28, scope: !1052)
!1055 = !DILocation(line: 621, column: 44, scope: !1052)
!1056 = !DILocation(line: 621, column: 51, scope: !1052)
!1057 = !DILocation(line: 621, column: 31, scope: !1052)
!1058 = !DILocation(line: 621, column: 7, scope: !920)
!1059 = !DILocation(line: 622, column: 4, scope: !1052)
!1060 = !DILocation(line: 624, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !920, file: !3, line: 624, column: 7)
!1062 = !DILocation(line: 624, column: 13, scope: !1061)
!1063 = !DILocation(line: 624, column: 26, scope: !1061)
!1064 = !DILocation(line: 624, column: 40, scope: !1061)
!1065 = !DILocation(line: 624, column: 47, scope: !1061)
!1066 = !DILocation(line: 624, column: 29, scope: !1061)
!1067 = !DILocation(line: 624, column: 7, scope: !920)
!1068 = !DILocation(line: 625, column: 4, scope: !1061)
!1069 = !DILocation(line: 627, column: 22, scope: !920)
!1070 = !DILocation(line: 627, column: 29, scope: !920)
!1071 = !DILocation(line: 627, column: 3, scope: !920)
!1072 = !DILocation(line: 630, column: 9, scope: !905)
!1073 = !DILocation(line: 630, column: 13, scope: !905)
!1074 = !DILocation(line: 630, column: 11, scope: !905)
!1075 = !DILocation(line: 631, column: 1, scope: !905)
!1076 = !DILocation(line: 630, column: 2, scope: !905)
!1077 = !DISubprogram(name: "strchr", scope: !565, file: !565, line: 100, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!18, !230, !20}
!1080 = distinct !DISubprogram(name: "escape_passthrough", scope: !3, file: !3, line: 348, type: !1081, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!574, !179, !696, !18}
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "c", arg: 1, scope: !1080, file: !3, line: 348, type: !179)
!1085 = !DILocalVariable(name: "dst", arg: 2, scope: !1080, file: !3, line: 348, type: !696)
!1086 = !DILocalVariable(name: "end", arg: 3, scope: !1080, file: !3, line: 348, type: !18)
!1087 = !DILocalVariable(name: "out", scope: !1080, file: !3, line: 350, type: !18)
!1088 = !DILocation(line: 348, column: 46, scope: !1080)
!1089 = !DILocation(line: 348, column: 56, scope: !1080)
!1090 = !DILocation(line: 348, column: 67, scope: !1080)
!1091 = !DILocation(line: 350, column: 2, scope: !1080)
!1092 = !DILocation(line: 350, column: 8, scope: !1080)
!1093 = !DILocation(line: 350, column: 15, scope: !1080)
!1094 = !DILocation(line: 350, column: 14, scope: !1080)
!1095 = !DILocation(line: 352, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 352, column: 6)
!1097 = !DILocation(line: 352, column: 12, scope: !1096)
!1098 = !DILocation(line: 352, column: 10, scope: !1096)
!1099 = !DILocation(line: 352, column: 6, scope: !1080)
!1100 = !DILocation(line: 353, column: 10, scope: !1096)
!1101 = !DILocation(line: 353, column: 4, scope: !1096)
!1102 = !DILocation(line: 353, column: 8, scope: !1096)
!1103 = !DILocation(line: 353, column: 3, scope: !1096)
!1104 = !DILocation(line: 354, column: 9, scope: !1080)
!1105 = !DILocation(line: 354, column: 13, scope: !1080)
!1106 = !DILocation(line: 354, column: 3, scope: !1080)
!1107 = !DILocation(line: 354, column: 7, scope: !1080)
!1108 = !DILocation(line: 356, column: 1, scope: !1080)
!1109 = !DILocation(line: 355, column: 2, scope: !1080)
!1110 = distinct !DISubprogram(name: "escape_space", scope: !3, file: !3, line: 358, type: !1081, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116}
!1112 = !DILocalVariable(name: "c", arg: 1, scope: !1110, file: !3, line: 358, type: !179)
!1113 = !DILocalVariable(name: "dst", arg: 2, scope: !1110, file: !3, line: 358, type: !696)
!1114 = !DILocalVariable(name: "end", arg: 3, scope: !1110, file: !3, line: 358, type: !18)
!1115 = !DILocalVariable(name: "out", scope: !1110, file: !3, line: 360, type: !18)
!1116 = !DILocalVariable(name: "to", scope: !1110, file: !3, line: 361, type: !179)
!1117 = !DILocation(line: 358, column: 40, scope: !1110)
!1118 = !DILocation(line: 358, column: 50, scope: !1110)
!1119 = !DILocation(line: 358, column: 61, scope: !1110)
!1120 = !DILocation(line: 360, column: 2, scope: !1110)
!1121 = !DILocation(line: 360, column: 8, scope: !1110)
!1122 = !DILocation(line: 360, column: 15, scope: !1110)
!1123 = !DILocation(line: 360, column: 14, scope: !1110)
!1124 = !DILocation(line: 361, column: 2, scope: !1110)
!1125 = !DILocation(line: 361, column: 16, scope: !1110)
!1126 = !DILocation(line: 363, column: 10, scope: !1110)
!1127 = !DILocation(line: 363, column: 2, scope: !1110)
!1128 = !DILocation(line: 365, column: 6, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 363, column: 13)
!1130 = !DILocation(line: 366, column: 3, scope: !1129)
!1131 = !DILocation(line: 368, column: 6, scope: !1129)
!1132 = !DILocation(line: 369, column: 3, scope: !1129)
!1133 = !DILocation(line: 371, column: 6, scope: !1129)
!1134 = !DILocation(line: 372, column: 3, scope: !1129)
!1135 = !DILocation(line: 374, column: 6, scope: !1129)
!1136 = !DILocation(line: 375, column: 3, scope: !1129)
!1137 = !DILocation(line: 377, column: 6, scope: !1129)
!1138 = !DILocation(line: 378, column: 3, scope: !1129)
!1139 = !DILocation(line: 380, column: 3, scope: !1129)
!1140 = !DILocation(line: 383, column: 6, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 383, column: 6)
!1142 = !DILocation(line: 383, column: 12, scope: !1141)
!1143 = !DILocation(line: 383, column: 10, scope: !1141)
!1144 = !DILocation(line: 383, column: 6, scope: !1110)
!1145 = !DILocation(line: 384, column: 4, scope: !1141)
!1146 = !DILocation(line: 384, column: 8, scope: !1141)
!1147 = !DILocation(line: 384, column: 3, scope: !1141)
!1148 = !DILocation(line: 385, column: 2, scope: !1110)
!1149 = !DILocation(line: 386, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 386, column: 6)
!1151 = !DILocation(line: 386, column: 12, scope: !1150)
!1152 = !DILocation(line: 386, column: 10, scope: !1150)
!1153 = !DILocation(line: 386, column: 6, scope: !1110)
!1154 = !DILocation(line: 387, column: 10, scope: !1150)
!1155 = !DILocation(line: 387, column: 4, scope: !1150)
!1156 = !DILocation(line: 387, column: 8, scope: !1150)
!1157 = !DILocation(line: 387, column: 3, scope: !1150)
!1158 = !DILocation(line: 388, column: 2, scope: !1110)
!1159 = !DILocation(line: 390, column: 9, scope: !1110)
!1160 = !DILocation(line: 390, column: 3, scope: !1110)
!1161 = !DILocation(line: 390, column: 7, scope: !1110)
!1162 = !DILocation(line: 391, column: 2, scope: !1110)
!1163 = !DILocation(line: 392, column: 1, scope: !1110)
!1164 = distinct !DISubprogram(name: "escape_special", scope: !3, file: !3, line: 394, type: !1081, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170}
!1166 = !DILocalVariable(name: "c", arg: 1, scope: !1164, file: !3, line: 394, type: !179)
!1167 = !DILocalVariable(name: "dst", arg: 2, scope: !1164, file: !3, line: 394, type: !696)
!1168 = !DILocalVariable(name: "end", arg: 3, scope: !1164, file: !3, line: 394, type: !18)
!1169 = !DILocalVariable(name: "out", scope: !1164, file: !3, line: 396, type: !18)
!1170 = !DILocalVariable(name: "to", scope: !1164, file: !3, line: 397, type: !179)
!1171 = !DILocation(line: 394, column: 42, scope: !1164)
!1172 = !DILocation(line: 394, column: 52, scope: !1164)
!1173 = !DILocation(line: 394, column: 63, scope: !1164)
!1174 = !DILocation(line: 396, column: 2, scope: !1164)
!1175 = !DILocation(line: 396, column: 8, scope: !1164)
!1176 = !DILocation(line: 396, column: 15, scope: !1164)
!1177 = !DILocation(line: 396, column: 14, scope: !1164)
!1178 = !DILocation(line: 397, column: 2, scope: !1164)
!1179 = !DILocation(line: 397, column: 16, scope: !1164)
!1180 = !DILocation(line: 399, column: 10, scope: !1164)
!1181 = !DILocation(line: 399, column: 2, scope: !1164)
!1182 = !DILocation(line: 401, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 399, column: 13)
!1184 = !DILocation(line: 402, column: 3, scope: !1183)
!1185 = !DILocation(line: 404, column: 6, scope: !1183)
!1186 = !DILocation(line: 405, column: 3, scope: !1183)
!1187 = !DILocation(line: 407, column: 6, scope: !1183)
!1188 = !DILocation(line: 408, column: 3, scope: !1183)
!1189 = !DILocation(line: 410, column: 6, scope: !1183)
!1190 = !DILocation(line: 411, column: 3, scope: !1183)
!1191 = !DILocation(line: 413, column: 3, scope: !1183)
!1192 = !DILocation(line: 416, column: 6, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 416, column: 6)
!1194 = !DILocation(line: 416, column: 12, scope: !1193)
!1195 = !DILocation(line: 416, column: 10, scope: !1193)
!1196 = !DILocation(line: 416, column: 6, scope: !1164)
!1197 = !DILocation(line: 417, column: 4, scope: !1193)
!1198 = !DILocation(line: 417, column: 8, scope: !1193)
!1199 = !DILocation(line: 417, column: 3, scope: !1193)
!1200 = !DILocation(line: 418, column: 2, scope: !1164)
!1201 = !DILocation(line: 419, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 419, column: 6)
!1203 = !DILocation(line: 419, column: 12, scope: !1202)
!1204 = !DILocation(line: 419, column: 10, scope: !1202)
!1205 = !DILocation(line: 419, column: 6, scope: !1164)
!1206 = !DILocation(line: 420, column: 10, scope: !1202)
!1207 = !DILocation(line: 420, column: 4, scope: !1202)
!1208 = !DILocation(line: 420, column: 8, scope: !1202)
!1209 = !DILocation(line: 420, column: 3, scope: !1202)
!1210 = !DILocation(line: 421, column: 2, scope: !1164)
!1211 = !DILocation(line: 423, column: 9, scope: !1164)
!1212 = !DILocation(line: 423, column: 3, scope: !1164)
!1213 = !DILocation(line: 423, column: 7, scope: !1164)
!1214 = !DILocation(line: 424, column: 2, scope: !1164)
!1215 = !DILocation(line: 425, column: 1, scope: !1164)
!1216 = distinct !DISubprogram(name: "escape_null", scope: !3, file: !3, line: 427, type: !1081, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1217)
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DILocalVariable(name: "c", arg: 1, scope: !1216, file: !3, line: 427, type: !179)
!1219 = !DILocalVariable(name: "dst", arg: 2, scope: !1216, file: !3, line: 427, type: !696)
!1220 = !DILocalVariable(name: "end", arg: 3, scope: !1216, file: !3, line: 427, type: !18)
!1221 = !DILocalVariable(name: "out", scope: !1216, file: !3, line: 429, type: !18)
!1222 = !DILocation(line: 427, column: 39, scope: !1216)
!1223 = !DILocation(line: 427, column: 49, scope: !1216)
!1224 = !DILocation(line: 427, column: 60, scope: !1216)
!1225 = !DILocation(line: 429, column: 2, scope: !1216)
!1226 = !DILocation(line: 429, column: 8, scope: !1216)
!1227 = !DILocation(line: 429, column: 15, scope: !1216)
!1228 = !DILocation(line: 429, column: 14, scope: !1216)
!1229 = !DILocation(line: 431, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 431, column: 6)
!1231 = !DILocation(line: 431, column: 6, scope: !1216)
!1232 = !DILocation(line: 432, column: 3, scope: !1230)
!1233 = !DILocation(line: 434, column: 6, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 434, column: 6)
!1235 = !DILocation(line: 434, column: 12, scope: !1234)
!1236 = !DILocation(line: 434, column: 10, scope: !1234)
!1237 = !DILocation(line: 434, column: 6, scope: !1216)
!1238 = !DILocation(line: 435, column: 4, scope: !1234)
!1239 = !DILocation(line: 435, column: 8, scope: !1234)
!1240 = !DILocation(line: 435, column: 3, scope: !1234)
!1241 = !DILocation(line: 436, column: 2, scope: !1216)
!1242 = !DILocation(line: 437, column: 6, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 437, column: 6)
!1244 = !DILocation(line: 437, column: 12, scope: !1243)
!1245 = !DILocation(line: 437, column: 10, scope: !1243)
!1246 = !DILocation(line: 437, column: 6, scope: !1216)
!1247 = !DILocation(line: 438, column: 4, scope: !1243)
!1248 = !DILocation(line: 438, column: 8, scope: !1243)
!1249 = !DILocation(line: 438, column: 3, scope: !1243)
!1250 = !DILocation(line: 439, column: 2, scope: !1216)
!1251 = !DILocation(line: 441, column: 9, scope: !1216)
!1252 = !DILocation(line: 441, column: 3, scope: !1216)
!1253 = !DILocation(line: 441, column: 7, scope: !1216)
!1254 = !DILocation(line: 442, column: 2, scope: !1216)
!1255 = !DILocation(line: 443, column: 1, scope: !1216)
!1256 = distinct !DISubprogram(name: "escape_octal", scope: !3, file: !3, line: 445, type: !1081, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1257)
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DILocalVariable(name: "c", arg: 1, scope: !1256, file: !3, line: 445, type: !179)
!1259 = !DILocalVariable(name: "dst", arg: 2, scope: !1256, file: !3, line: 445, type: !696)
!1260 = !DILocalVariable(name: "end", arg: 3, scope: !1256, file: !3, line: 445, type: !18)
!1261 = !DILocalVariable(name: "out", scope: !1256, file: !3, line: 447, type: !18)
!1262 = !DILocation(line: 445, column: 40, scope: !1256)
!1263 = !DILocation(line: 445, column: 50, scope: !1256)
!1264 = !DILocation(line: 445, column: 61, scope: !1256)
!1265 = !DILocation(line: 447, column: 2, scope: !1256)
!1266 = !DILocation(line: 447, column: 8, scope: !1256)
!1267 = !DILocation(line: 447, column: 15, scope: !1256)
!1268 = !DILocation(line: 447, column: 14, scope: !1256)
!1269 = !DILocation(line: 449, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 449, column: 6)
!1271 = !DILocation(line: 449, column: 12, scope: !1270)
!1272 = !DILocation(line: 449, column: 10, scope: !1270)
!1273 = !DILocation(line: 449, column: 6, scope: !1256)
!1274 = !DILocation(line: 450, column: 4, scope: !1270)
!1275 = !DILocation(line: 450, column: 8, scope: !1270)
!1276 = !DILocation(line: 450, column: 3, scope: !1270)
!1277 = !DILocation(line: 451, column: 2, scope: !1256)
!1278 = !DILocation(line: 452, column: 6, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 452, column: 6)
!1280 = !DILocation(line: 452, column: 12, scope: !1279)
!1281 = !DILocation(line: 452, column: 10, scope: !1279)
!1282 = !DILocation(line: 452, column: 6, scope: !1256)
!1283 = !DILocation(line: 453, column: 12, scope: !1279)
!1284 = !DILocation(line: 453, column: 14, scope: !1279)
!1285 = !DILocation(line: 453, column: 20, scope: !1279)
!1286 = !DILocation(line: 453, column: 28, scope: !1279)
!1287 = !DILocation(line: 453, column: 10, scope: !1279)
!1288 = !DILocation(line: 453, column: 4, scope: !1279)
!1289 = !DILocation(line: 453, column: 8, scope: !1279)
!1290 = !DILocation(line: 453, column: 3, scope: !1279)
!1291 = !DILocation(line: 454, column: 2, scope: !1256)
!1292 = !DILocation(line: 455, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 455, column: 6)
!1294 = !DILocation(line: 455, column: 12, scope: !1293)
!1295 = !DILocation(line: 455, column: 10, scope: !1293)
!1296 = !DILocation(line: 455, column: 6, scope: !1256)
!1297 = !DILocation(line: 456, column: 12, scope: !1293)
!1298 = !DILocation(line: 456, column: 14, scope: !1293)
!1299 = !DILocation(line: 456, column: 20, scope: !1293)
!1300 = !DILocation(line: 456, column: 28, scope: !1293)
!1301 = !DILocation(line: 456, column: 10, scope: !1293)
!1302 = !DILocation(line: 456, column: 4, scope: !1293)
!1303 = !DILocation(line: 456, column: 8, scope: !1293)
!1304 = !DILocation(line: 456, column: 3, scope: !1293)
!1305 = !DILocation(line: 457, column: 2, scope: !1256)
!1306 = !DILocation(line: 458, column: 6, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 458, column: 6)
!1308 = !DILocation(line: 458, column: 12, scope: !1307)
!1309 = !DILocation(line: 458, column: 10, scope: !1307)
!1310 = !DILocation(line: 458, column: 6, scope: !1256)
!1311 = !DILocation(line: 459, column: 12, scope: !1307)
!1312 = !DILocation(line: 459, column: 14, scope: !1307)
!1313 = !DILocation(line: 459, column: 20, scope: !1307)
!1314 = !DILocation(line: 459, column: 28, scope: !1307)
!1315 = !DILocation(line: 459, column: 10, scope: !1307)
!1316 = !DILocation(line: 459, column: 4, scope: !1307)
!1317 = !DILocation(line: 459, column: 8, scope: !1307)
!1318 = !DILocation(line: 459, column: 3, scope: !1307)
!1319 = !DILocation(line: 460, column: 2, scope: !1256)
!1320 = !DILocation(line: 462, column: 9, scope: !1256)
!1321 = !DILocation(line: 462, column: 3, scope: !1256)
!1322 = !DILocation(line: 462, column: 7, scope: !1256)
!1323 = !DILocation(line: 464, column: 1, scope: !1256)
!1324 = !DILocation(line: 463, column: 2, scope: !1256)
!1325 = distinct !DISubprogram(name: "escape_hex", scope: !3, file: !3, line: 466, type: !1081, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DILocalVariable(name: "c", arg: 1, scope: !1325, file: !3, line: 466, type: !179)
!1328 = !DILocalVariable(name: "dst", arg: 2, scope: !1325, file: !3, line: 466, type: !696)
!1329 = !DILocalVariable(name: "end", arg: 3, scope: !1325, file: !3, line: 466, type: !18)
!1330 = !DILocalVariable(name: "out", scope: !1325, file: !3, line: 468, type: !18)
!1331 = !DILocation(line: 466, column: 38, scope: !1325)
!1332 = !DILocation(line: 466, column: 48, scope: !1325)
!1333 = !DILocation(line: 466, column: 59, scope: !1325)
!1334 = !DILocation(line: 468, column: 2, scope: !1325)
!1335 = !DILocation(line: 468, column: 8, scope: !1325)
!1336 = !DILocation(line: 468, column: 15, scope: !1325)
!1337 = !DILocation(line: 468, column: 14, scope: !1325)
!1338 = !DILocation(line: 470, column: 6, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 470, column: 6)
!1340 = !DILocation(line: 470, column: 12, scope: !1339)
!1341 = !DILocation(line: 470, column: 10, scope: !1339)
!1342 = !DILocation(line: 470, column: 6, scope: !1325)
!1343 = !DILocation(line: 471, column: 4, scope: !1339)
!1344 = !DILocation(line: 471, column: 8, scope: !1339)
!1345 = !DILocation(line: 471, column: 3, scope: !1339)
!1346 = !DILocation(line: 472, column: 2, scope: !1325)
!1347 = !DILocation(line: 473, column: 6, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 473, column: 6)
!1349 = !DILocation(line: 473, column: 12, scope: !1348)
!1350 = !DILocation(line: 473, column: 10, scope: !1348)
!1351 = !DILocation(line: 473, column: 6, scope: !1325)
!1352 = !DILocation(line: 474, column: 4, scope: !1348)
!1353 = !DILocation(line: 474, column: 8, scope: !1348)
!1354 = !DILocation(line: 474, column: 3, scope: !1348)
!1355 = !DILocation(line: 475, column: 2, scope: !1325)
!1356 = !DILocation(line: 476, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 476, column: 6)
!1358 = !DILocation(line: 476, column: 12, scope: !1357)
!1359 = !DILocation(line: 476, column: 10, scope: !1357)
!1360 = !DILocation(line: 476, column: 6, scope: !1325)
!1361 = !DILocation(line: 477, column: 10, scope: !1357)
!1362 = !DILocation(line: 477, column: 4, scope: !1357)
!1363 = !DILocation(line: 477, column: 8, scope: !1357)
!1364 = !DILocation(line: 477, column: 3, scope: !1357)
!1365 = !DILocation(line: 478, column: 2, scope: !1325)
!1366 = !DILocation(line: 479, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 479, column: 6)
!1368 = !DILocation(line: 479, column: 12, scope: !1367)
!1369 = !DILocation(line: 479, column: 10, scope: !1367)
!1370 = !DILocation(line: 479, column: 6, scope: !1325)
!1371 = !DILocation(line: 480, column: 10, scope: !1367)
!1372 = !DILocation(line: 480, column: 4, scope: !1367)
!1373 = !DILocation(line: 480, column: 8, scope: !1367)
!1374 = !DILocation(line: 480, column: 3, scope: !1367)
!1375 = !DILocation(line: 481, column: 2, scope: !1325)
!1376 = !DILocation(line: 483, column: 9, scope: !1325)
!1377 = !DILocation(line: 483, column: 3, scope: !1325)
!1378 = !DILocation(line: 483, column: 7, scope: !1325)
!1379 = !DILocation(line: 485, column: 1, scope: !1325)
!1380 = !DILocation(line: 484, column: 2, scope: !1325)
!1381 = distinct !DISubprogram(name: "kstrdup_quotable", scope: !3, file: !3, line: 638, type: !1382, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!18, !230, !178}
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1392, !1394, !1396}
!1385 = !DILocalVariable(name: "src", arg: 1, scope: !1381, file: !3, line: 638, type: !230)
!1386 = !DILocalVariable(name: "gfp", arg: 2, scope: !1381, file: !3, line: 638, type: !178)
!1387 = !DILocalVariable(name: "slen", scope: !1381, file: !3, line: 640, type: !492)
!1388 = !DILocalVariable(name: "dlen", scope: !1381, file: !3, line: 640, type: !492)
!1389 = !DILocalVariable(name: "dst", scope: !1381, file: !3, line: 641, type: !18)
!1390 = !DILocalVariable(name: "flags", scope: !1381, file: !3, line: 642, type: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!1392 = !DILocalVariable(name: "esc", scope: !1381, file: !3, line: 643, type: !1393)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 80, elements: !278)
!1394 = !DILocalVariable(name: "__ret_warn_on", scope: !1395, file: !3, line: 654, type: !20)
!1395 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 654, column: 2)
!1396 = !DILocalVariable(name: "__flags", scope: !1397, file: !3, line: 654, type: !20)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 654, column: 2)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 654, column: 2)
!1399 = !DILocation(line: 638, column: 36, scope: !1381)
!1400 = !DILocation(line: 638, column: 47, scope: !1381)
!1401 = !DILocation(line: 640, column: 2, scope: !1381)
!1402 = !DILocation(line: 640, column: 9, scope: !1381)
!1403 = !DILocation(line: 640, column: 15, scope: !1381)
!1404 = !DILocation(line: 641, column: 2, scope: !1381)
!1405 = !DILocation(line: 641, column: 8, scope: !1381)
!1406 = !DILocation(line: 642, column: 2, scope: !1381)
!1407 = !DILocation(line: 642, column: 12, scope: !1381)
!1408 = !DILocation(line: 643, column: 2, scope: !1381)
!1409 = !DILocation(line: 643, column: 13, scope: !1381)
!1410 = !DILocation(line: 645, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 645, column: 6)
!1412 = !DILocation(line: 645, column: 6, scope: !1381)
!1413 = !DILocation(line: 646, column: 3, scope: !1411)
!1414 = !DILocation(line: 647, column: 16, scope: !1381)
!1415 = !DILocation(line: 647, column: 9, scope: !1381)
!1416 = !DILocation(line: 647, column: 7, scope: !1381)
!1417 = !DILocation(line: 649, column: 27, scope: !1381)
!1418 = !DILocation(line: 649, column: 32, scope: !1381)
!1419 = !DILocation(line: 649, column: 54, scope: !1381)
!1420 = !DILocation(line: 649, column: 9, scope: !1381)
!1421 = !DILocation(line: 649, column: 7, scope: !1381)
!1422 = !DILocation(line: 650, column: 16, scope: !1381)
!1423 = !DILocation(line: 650, column: 21, scope: !1381)
!1424 = !DILocation(line: 650, column: 26, scope: !1381)
!1425 = !DILocation(line: 650, column: 8, scope: !1381)
!1426 = !DILocation(line: 650, column: 6, scope: !1381)
!1427 = !DILocation(line: 651, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 651, column: 6)
!1429 = !DILocation(line: 651, column: 6, scope: !1381)
!1430 = !DILocation(line: 652, column: 3, scope: !1428)
!1431 = !DILocation(line: 654, column: 2, scope: !1395)
!1432 = !DILocation(line: 654, column: 2, scope: !1398)
!1433 = !DILocation(line: 654, column: 2, scope: !1397)
!1434 = !DILocation(line: 654, column: 2, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 654, column: 2)
!1436 = !DILocation(line: 654, column: 2, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 654, column: 2)
!1438 = !{i64 2154393624, i64 2154393653, i64 2154393699, i64 2154393757, i64 2154393811, i64 2154393865, i64 2154393920, i64 2154393951, i64 2154394259, i64 2154394265, i64 2154394312, i64 2154394335, i64 2154394361}
!1439 = !DILocation(line: 654, column: 2, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 654, column: 2)
!1441 = !DILocation(line: 654, column: 2, scope: !1381)
!1442 = !DILocation(line: 655, column: 2, scope: !1381)
!1443 = !DILocation(line: 655, column: 6, scope: !1381)
!1444 = !DILocation(line: 655, column: 12, scope: !1381)
!1445 = !DILocation(line: 657, column: 9, scope: !1381)
!1446 = !DILocation(line: 657, column: 2, scope: !1381)
!1447 = !DILocation(line: 658, column: 1, scope: !1381)
!1448 = !DISubprogram(name: "strlen", scope: !565, file: !565, line: 128, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!180, !230}
!1451 = distinct !DISubprogram(name: "kmalloc", scope: !163, file: !163, line: 591, type: !1452, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!177, !492, !178}
!1454 = !{!1455, !1456, !1457}
!1455 = !DILocalVariable(name: "size", arg: 1, scope: !1451, file: !163, line: 591, type: !492)
!1456 = !DILocalVariable(name: "flags", arg: 2, scope: !1451, file: !163, line: 591, type: !178)
!1457 = !DILocalVariable(name: "index", scope: !1458, file: !163, line: 594, type: !14)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !163, line: 593, column: 42)
!1459 = distinct !DILexicalBlock(scope: !1451, file: !163, line: 593, column: 6)
!1460 = !DILocation(line: 591, column: 61, scope: !1451)
!1461 = !DILocation(line: 591, column: 73, scope: !1451)
!1462 = !DILocation(line: 593, column: 27, scope: !1459)
!1463 = !DILocation(line: 593, column: 6, scope: !1459)
!1464 = !DILocation(line: 593, column: 33, scope: !1459)
!1465 = !DILocation(line: 593, column: 36, scope: !1459)
!1466 = !DILocation(line: 593, column: 6, scope: !1451)
!1467 = !DILocation(line: 594, column: 3, scope: !1458)
!1468 = !DILocation(line: 594, column: 16, scope: !1458)
!1469 = !DILocation(line: 596, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1458, file: !163, line: 596, column: 7)
!1471 = !DILocation(line: 596, column: 12, scope: !1470)
!1472 = !DILocation(line: 596, column: 7, scope: !1458)
!1473 = !DILocation(line: 597, column: 25, scope: !1470)
!1474 = !DILocation(line: 597, column: 31, scope: !1470)
!1475 = !DILocation(line: 597, column: 11, scope: !1470)
!1476 = !DILocation(line: 597, column: 4, scope: !1470)
!1477 = !DILocation(line: 599, column: 11, scope: !1458)
!1478 = !DILocation(line: 599, column: 9, scope: !1458)
!1479 = !DILocation(line: 601, column: 33, scope: !1458)
!1480 = !DILocation(line: 601, column: 40, scope: !1458)
!1481 = !DILocation(line: 601, column: 20, scope: !1458)
!1482 = !DILocation(line: 601, column: 5, scope: !1458)
!1483 = !DILocation(line: 601, column: 51, scope: !1458)
!1484 = !DILocation(line: 602, column: 5, scope: !1458)
!1485 = !DILocation(line: 602, column: 12, scope: !1458)
!1486 = !DILocation(line: 600, column: 10, scope: !1458)
!1487 = !DILocation(line: 600, column: 3, scope: !1458)
!1488 = !DILocation(line: 603, column: 2, scope: !1459)
!1489 = !DILocation(line: 604, column: 19, scope: !1451)
!1490 = !DILocation(line: 604, column: 25, scope: !1451)
!1491 = !DILocation(line: 604, column: 9, scope: !1451)
!1492 = !DILocation(line: 604, column: 2, scope: !1451)
!1493 = !DILocation(line: 605, column: 1, scope: !1451)
!1494 = distinct !DISubprogram(name: "kstrdup_quotable_cmdline", scope: !3, file: !3, line: 666, type: !1495, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !5381)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!18, !1497, !178}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1499, line: 746, size: 58368, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1500 = !{!1501, !1509, !1510, !1511, !1521, !1522, !1523, !1524, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1613, !1624, !1745, !1749, !1752, !1783, !1784, !1785, !1786, !1797, !1799, !1800, !1801, !1802, !1803, !1804, !1815, !1816, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1833, !1834, !1841, !1842, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4575, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4623, !4629, !4630, !4631, !4632, !4633, !4635, !4638, !4645, !4650, !4653, !4656, !4659, !4662, !4800, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4838, !4839, !4840, !4849, !4857, !4858, !4859, !4860, !4861, !4866, !4867, !4868, !4871, !4872, !4875, !4878, !4881, !4889, !4892, !4893, !4978, !4979, !4980, !4981, !4982, !4988, !4989, !4990, !4991, !4994, !4995, !4998, !5001, !5002, !5005, !5006, !5007, !5010, !5011, !5012, !5013, !5014, !5015, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5047, !5048, !5054, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5066, !5138, !5140, !5141, !5142, !5143, !5144, !5145, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5162, !5163, !5164}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1498, file: !1499, line: 752, baseType: !1502, size: 192)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1503, line: 56, size: 192, elements: !1504)
!1503 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1504 = !{!1505, !1506, !1507, !1508}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !1503, line: 57, baseType: !180, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1502, file: !1503, line: 58, baseType: !180, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1502, file: !1503, line: 59, baseType: !175, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1502, file: !1503, line: 61, baseType: !175, size: 32, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1498, file: !1499, line: 754, baseType: !14, size: 32, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1498, file: !1499, line: 767, baseType: !177, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1498, file: !1499, line: 768, baseType: !1512, size: 32, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1513, line: 113, baseType: !1514)
!1513 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1513, line: 111, size: 32, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1514, file: !1513, line: 112, baseType: !1517, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 174, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 172, size: 32, elements: !1519)
!1519 = !{!1520}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1518, file: !174, line: 173, baseType: !20, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1499, line: 770, baseType: !14, size: 32, offset: 352)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1498, file: !1499, line: 771, baseType: !14, size: 32, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1498, file: !1499, line: 774, baseType: !20, size: 32, offset: 416)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1498, file: !1499, line: 775, baseType: !1525, size: 128, offset: 448)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1526, line: 58, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1527 = !{!1528, !1534, !1539, !1543}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1525, file: !1526, line: 59, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1530, line: 60, size: 64, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1531 = !{!1532}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1529, file: !1530, line: 61, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1526, line: 60, baseType: !1535, size: 32, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !1526, line: 60, size: 32, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1535, file: !1526, line: 61, baseType: !14, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1535, file: !1526, line: 62, baseType: !1517, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1525, file: !1526, line: 65, baseType: !1540, size: 16, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !1542)
!1542 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1525, file: !1526, line: 65, baseType: !1540, size: 16, offset: 112)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1498, file: !1499, line: 776, baseType: !14, size: 32, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1498, file: !1499, line: 777, baseType: !180, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1498, file: !1499, line: 778, baseType: !1497, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1498, file: !1499, line: 787, baseType: !20, size: 32, offset: 768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1498, file: !1499, line: 788, baseType: !20, size: 32, offset: 800)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1498, file: !1499, line: 790, baseType: !20, size: 32, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1498, file: !1499, line: 792, baseType: !20, size: 32, offset: 864)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1498, file: !1499, line: 793, baseType: !20, size: 32, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1498, file: !1499, line: 794, baseType: !20, size: 32, offset: 928)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1498, file: !1499, line: 795, baseType: !14, size: 32, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1498, file: !1499, line: 797, baseType: !1555, size: 2048, offset: 1024)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1499, line: 551, size: 2048, elements: !1556)
!1556 = !{!1557, !1562, !1570, !1571, !1572, !1578, !1579, !1580, !1581, !1582, !1583, !1587, !1588, !1589, !1590, !1592, !1595, !1596, !1597}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1555, file: !1499, line: 553, baseType: !1558, size: 128)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1499, line: 411, size: 128, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1558, file: !1499, line: 412, baseType: !180, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1558, file: !1499, line: 413, baseType: !175, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1555, file: !1499, line: 554, baseType: !1563, size: 192, align: 64, offset: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1564, line: 5, size: 192, align: 64, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1565 = !{!1566, !1567, !1569}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1563, file: !1564, line: 6, baseType: !180, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1563, file: !1564, line: 7, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1563, file: !1564, line: 8, baseType: !1568, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1555, file: !1499, line: 555, baseType: !6, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1555, file: !1499, line: 556, baseType: !6, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1555, file: !1499, line: 558, baseType: !1573, size: 128, offset: 448)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 190, size: 128, elements: !1574)
!1574 = !{!1575, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1573, file: !174, line: 191, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1573, file: !174, line: 191, baseType: !1576, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1555, file: !1499, line: 559, baseType: !14, size: 32, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1555, file: !1499, line: 561, baseType: !6, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1555, file: !1499, line: 562, baseType: !6, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1555, file: !1499, line: 563, baseType: !6, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1555, file: !1499, line: 564, baseType: !6, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1555, file: !1499, line: 565, baseType: !1584, size: 64, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !7, line: 22, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !9, line: 30, baseType: !1586)
!1586 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1555, file: !1499, line: 566, baseType: !6, size: 64, offset: 960)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1555, file: !1499, line: 568, baseType: !6, size: 64, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1555, file: !1499, line: 571, baseType: !20, size: 32, offset: 1088)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1555, file: !1499, line: 572, baseType: !1591, size: 64, offset: 1152)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1555, file: !1499, line: 574, baseType: !1593, size: 64, offset: 1216)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1499, line: 49, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1555, file: !1499, line: 576, baseType: !1593, size: 64, offset: 1280)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1555, file: !1499, line: 578, baseType: !180, size: 64, offset: 1344)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1555, file: !1499, line: 588, baseType: !1598, size: 512, align: 512, offset: 1536)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1499, line: 497, size: 512, align: 512, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1598, file: !1499, line: 498, baseType: !6, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1598, file: !1499, line: 499, baseType: !6, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1598, file: !1499, line: 500, baseType: !6, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1598, file: !1499, line: 501, baseType: !175, size: 32, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1598, file: !1499, line: 502, baseType: !175, size: 32, offset: 224)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1598, file: !1499, line: 503, baseType: !180, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1598, file: !1499, line: 504, baseType: !180, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1598, file: !1499, line: 505, baseType: !180, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1598, file: !1499, line: 506, baseType: !1609, size: 64, align: 64, offset: 448)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1499, line: 445, size: 64, align: 64, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1609, file: !1499, line: 446, baseType: !14, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1609, file: !1499, line: 447, baseType: !14, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1498, file: !1499, line: 798, baseType: !1614, size: 384, offset: 3072)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1499, line: 592, size: 384, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1614, file: !1499, line: 593, baseType: !1573, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1614, file: !1499, line: 594, baseType: !180, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1614, file: !1499, line: 595, baseType: !180, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1614, file: !1499, line: 596, baseType: !14, size: 32, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1614, file: !1499, line: 597, baseType: !1542, size: 16, offset: 288)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1614, file: !1499, line: 598, baseType: !1542, size: 16, offset: 304)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1614, file: !1499, line: 600, baseType: !1623, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1498, file: !1499, line: 799, baseType: !1625, size: 1792, offset: 3456)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1499, line: 610, size: 1792, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1742, !1743}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1625, file: !1499, line: 611, baseType: !1563, size: 192, align: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1625, file: !1499, line: 618, baseType: !6, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1625, file: !1499, line: 619, baseType: !6, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1625, file: !1499, line: 620, baseType: !6, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1625, file: !1499, line: 621, baseType: !6, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1625, file: !1499, line: 622, baseType: !6, size: 64, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1625, file: !1499, line: 629, baseType: !1584, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1625, file: !1499, line: 630, baseType: !6, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1499, line: 631, baseType: !14, size: 32, offset: 640)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1625, file: !1499, line: 653, baseType: !14, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1625, file: !1499, line: 654, baseType: !14, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1625, file: !1499, line: 655, baseType: !14, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1625, file: !1499, line: 656, baseType: !14, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1625, file: !1499, line: 662, baseType: !1641, size: 512, offset: 704)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !1642)
!1642 = !{!1643, !1651, !1652, !1657, !1738, !1739, !1740, !1741}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1641, file: !24, line: 119, baseType: !1644, size: 256)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1645, line: 9, size: 256, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1644, file: !1645, line: 10, baseType: !1563, size: 192, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1644, file: !1645, line: 11, baseType: !1649, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1650, line: 29, baseType: !1584)
!1650 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1641, file: !24, line: 120, baseType: !1649, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1641, file: !24, line: 121, baseType: !1653, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!23, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1641, file: !24, line: 122, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !1660)
!1660 = !{!1661, !1707, !1708, !1711, !1721, !1722, !1733, !1737}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1659, file: !24, line: 160, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !1664)
!1664 = !{!1665, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1663, file: !24, line: 216, baseType: !1666, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1667, line: 23, baseType: !1668)
!1667 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1667, line: 14, size: 32, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1668, file: !1667, line: 15, baseType: !1671, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1672, line: 44, baseType: !1673)
!1672 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1672, line: 14, size: 32, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !1672, line: 15, baseType: !1676, size: 32)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !1672, line: 15, size: 32, elements: !1677)
!1677 = !{!1678, !1679, !1684}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1676, file: !1672, line: 16, baseType: !1517, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1672, line: 24, baseType: !1680, size: 16)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !1672, line: 24, size: 16, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1680, file: !1672, line: 25, baseType: !744, size: 8)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1680, file: !1672, line: 26, baseType: !744, size: 8, offset: 8)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1672, line: 28, baseType: !1685, size: 32)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !1672, line: 28, size: 32, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1685, file: !1672, line: 29, baseType: !1540, size: 16)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1685, file: !1672, line: 30, baseType: !1540, size: 16, offset: 16)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1663, file: !24, line: 217, baseType: !14, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1663, file: !24, line: 218, baseType: !14, size: 32, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1663, file: !24, line: 219, baseType: !14, size: 32, offset: 96)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1663, file: !24, line: 220, baseType: !14, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1663, file: !24, line: 221, baseType: !14, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1663, file: !24, line: 222, baseType: !14, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1663, file: !24, line: 223, baseType: !14, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1663, file: !24, line: 224, baseType: !14, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1663, file: !24, line: 226, baseType: !14, size: 32, offset: 160)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1663, file: !24, line: 227, baseType: !1542, size: 16, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1663, file: !24, line: 228, baseType: !1542, size: 16, offset: 208)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1663, file: !24, line: 229, baseType: !14, size: 32, offset: 224)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1663, file: !24, line: 235, baseType: !1649, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1663, file: !24, line: 236, baseType: !1656, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1663, file: !24, line: 237, baseType: !1649, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1663, file: !24, line: 238, baseType: !1656, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1663, file: !24, line: 239, baseType: !1706, size: 4096, align: 512, offset: 512)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1659, size: 4096, align: 512, elements: !256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1659, file: !24, line: 161, baseType: !14, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1659, file: !24, line: 162, baseType: !1709, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 32, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !494, line: 96, baseType: !20)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1659, file: !24, line: 163, baseType: !1712, size: 32, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1713, line: 274, baseType: !1714)
!1713 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1713, line: 274, size: 32, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1714, file: !1713, line: 274, baseType: !1717, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1713, line: 69, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1713, line: 64, size: 32, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1718, file: !1713, line: 65, baseType: !14, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1659, file: !24, line: 164, baseType: !1656, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1659, file: !24, line: 165, baseType: !1723, size: 128, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1645, line: 14, size: 128, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1723, file: !1645, line: 15, baseType: !1726, size: 128)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1564, line: 26, size: 128, elements: !1727)
!1727 = !{!1728, !1732}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1726, file: !1564, line: 27, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1564, line: 12, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1729, file: !1564, line: 13, baseType: !1568, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1726, file: !1564, line: 28, baseType: !1568, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1659, file: !24, line: 166, baseType: !1734, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!1649}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1659, file: !24, line: 167, baseType: !1649, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1641, file: !24, line: 123, baseType: !744, size: 8, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1641, file: !24, line: 124, baseType: !744, size: 8, offset: 456)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1641, file: !24, line: 125, baseType: !744, size: 8, offset: 464)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1641, file: !24, line: 126, baseType: !744, size: 8, offset: 472)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1625, file: !1499, line: 671, baseType: !1641, size: 512, offset: 1216)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1625, file: !1499, line: 679, baseType: !1744, size: 64, offset: 1728)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1498, file: !1499, line: 800, baseType: !1746, size: 64, offset: 5248)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1499, line: 800, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1498, file: !1499, line: 809, baseType: !1750, size: 64, offset: 5312)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1499, line: 70, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1498, file: !1499, line: 825, baseType: !1753, size: 2048, align: 512, offset: 5632)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1499, line: 509, size: 2048, align: 512, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1753, file: !1499, line: 511, baseType: !6, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1753, file: !1499, line: 512, baseType: !6, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1753, file: !1499, line: 513, baseType: !6, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1753, file: !1499, line: 514, baseType: !6, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1753, file: !1499, line: 515, baseType: !6, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1753, file: !1499, line: 516, baseType: !6, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1753, file: !1499, line: 518, baseType: !6, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1753, file: !1499, line: 519, baseType: !6, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1753, file: !1499, line: 520, baseType: !1584, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1753, file: !1499, line: 522, baseType: !6, size: 64, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1753, file: !1499, line: 523, baseType: !6, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1753, file: !1499, line: 524, baseType: !1584, size: 64, offset: 704)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1753, file: !1499, line: 526, baseType: !1584, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1753, file: !1499, line: 527, baseType: !6, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1753, file: !1499, line: 529, baseType: !6, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1753, file: !1499, line: 530, baseType: !6, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1753, file: !1499, line: 531, baseType: !6, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1753, file: !1499, line: 532, baseType: !6, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1753, file: !1499, line: 533, baseType: !6, size: 64, offset: 1152)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1753, file: !1499, line: 535, baseType: !6, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1753, file: !1499, line: 536, baseType: !6, size: 64, offset: 1280)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1753, file: !1499, line: 537, baseType: !6, size: 64, offset: 1344)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1753, file: !1499, line: 538, baseType: !6, size: 64, offset: 1408)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1753, file: !1499, line: 539, baseType: !6, size: 64, offset: 1472)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1753, file: !1499, line: 540, baseType: !6, size: 64, offset: 1536)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1753, file: !1499, line: 541, baseType: !6, size: 64, offset: 1600)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1753, file: !1499, line: 542, baseType: !6, size: 64, offset: 1664)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1753, file: !1499, line: 543, baseType: !6, size: 64, offset: 1728)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1498, file: !1499, line: 833, baseType: !14, size: 32, offset: 7680)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1498, file: !1499, line: 836, baseType: !14, size: 32, offset: 7712)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1498, file: !1499, line: 837, baseType: !20, size: 32, offset: 7744)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1498, file: !1499, line: 838, baseType: !1787, size: 64, offset: 7808)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1790, line: 19, baseType: !1791)
!1790 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1790, line: 19, size: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1791, file: !1790, line: 19, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !1795)
!1795 = !{!1796}
!1796 = !DISubrange(count: 1)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1498, file: !1499, line: 839, baseType: !1798, size: 64, offset: 7872)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1498, file: !1499, line: 840, baseType: !1789, size: 64, offset: 7936)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1498, file: !1499, line: 841, baseType: !177, size: 64, offset: 8000)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1498, file: !1499, line: 843, baseType: !1542, size: 16, offset: 8064)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1498, file: !1499, line: 845, baseType: !1542, size: 16, offset: 8080)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1498, file: !1499, line: 848, baseType: !20, size: 32, offset: 8096)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1498, file: !1499, line: 849, baseType: !1805, size: 32, offset: 8128)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1499, line: 718, size: 32, elements: !1806)
!1806 = !{!1807, !1814}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1805, file: !1499, line: 724, baseType: !1808, size: 32)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1499, line: 719, size: 32, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1813}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1808, file: !1499, line: 720, baseType: !744, size: 8)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1808, file: !1499, line: 721, baseType: !744, size: 8, offset: 8)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1808, file: !1499, line: 722, baseType: !744, size: 8, offset: 16)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1808, file: !1499, line: 723, baseType: !744, size: 8, offset: 24)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1805, file: !1499, line: 725, baseType: !175, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1498, file: !1499, line: 850, baseType: !1573, size: 128, offset: 8192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1498, file: !1499, line: 851, baseType: !1817, size: 64, offset: 8320)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1499, line: 60, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1498, file: !1499, line: 855, baseType: !180, size: 64, offset: 8384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1498, file: !1499, line: 856, baseType: !744, size: 8, offset: 8448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1498, file: !1499, line: 857, baseType: !744, size: 8, offset: 8456)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1498, file: !1499, line: 858, baseType: !20, size: 32, offset: 8480)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1498, file: !1499, line: 859, baseType: !1573, size: 128, offset: 8512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1498, file: !1499, line: 860, baseType: !20, size: 32, offset: 8640)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1498, file: !1499, line: 861, baseType: !1573, size: 128, offset: 8704)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1498, file: !1499, line: 873, baseType: !1827, size: 256, offset: 8832)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1499, line: 376, size: 256, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1832}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1827, file: !1499, line: 381, baseType: !180, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1827, file: !1499, line: 384, baseType: !10, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1827, file: !1499, line: 389, baseType: !10, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1827, file: !1499, line: 392, baseType: !10, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1498, file: !1499, line: 875, baseType: !1573, size: 128, offset: 9088)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1498, file: !1499, line: 877, baseType: !1835, size: 320, offset: 9216)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1836, line: 86, size: 320, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1835, file: !1836, line: 87, baseType: !20, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1835, file: !1836, line: 88, baseType: !1573, size: 128, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1835, file: !1836, line: 89, baseType: !1573, size: 128, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1498, file: !1499, line: 878, baseType: !1563, size: 192, align: 64, offset: 9536)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1498, file: !1499, line: 881, baseType: !1843, size: 64, offset: 9728)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1845)
!1845 = !{!1846, !4494}
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !52, line: 734, baseType: !1847, size: 10240)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !52, line: 734, size: 10240, elements: !1848)
!1848 = !{!1849, !1853, !1874, !4373, !4374, !4375, !4376, !4377, !4378, !4385, !4386, !4387, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4426, !4428, !4431, !4474, !4475, !4476, !4479, !4480, !4481, !4484, !4485, !4486, !4492, !4493}
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !52, line: 739, baseType: !1850, size: 512, align: 512)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1847, file: !52, line: 739, size: 512, align: 512, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1850, file: !52, line: 747, baseType: !1517, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1847, file: !52, line: 750, baseType: !1854, size: 128, offset: 512)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1855, line: 218, size: 128, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1856 = !{!1857, !1872, !1873}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 219, baseType: !1858, size: 32)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 219, size: 32, elements: !1859)
!1859 = !{!1860, !1869}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1858, file: !1855, line: 220, baseType: !1861, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1862, line: 29, baseType: !1863)
!1862 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1862, line: 17, size: 32, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !1862, line: 18, baseType: !1866, size: 32)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1863, file: !1862, line: 18, size: 32, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1866, file: !1862, line: 19, baseType: !1668, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1858, file: !1855, line: 221, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1855, line: 197, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1855, line: 197, elements: !957)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1854, file: !1855, line: 223, baseType: !14, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1854, file: !1855, line: 224, baseType: !177, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1847, file: !52, line: 752, baseType: !1875, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!180, !1878, !180, !180, !180, !180}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !81, line: 994, size: 1856, align: 64, elements: !1880)
!1880 = !{!1881, !1895, !1896, !1898, !1905, !1917, !1920, !1921, !1993, !2198, !2207, !4363, !4364, !4365, !4366, !4367, !4368, !4370, !4371, !4372}
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !81, line: 995, baseType: !1882, size: 128)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !81, line: 995, size: 128, elements: !1883)
!1883 = !{!1884, !1885, !1894}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1882, file: !81, line: 996, baseType: !1529, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1882, file: !81, line: 997, baseType: !1886, size: 128, align: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 232, size: 128, align: 64, elements: !1887)
!1887 = !{!1888, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1886, file: !174, line: 233, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1886, file: !174, line: 234, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !1889}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1882, file: !81, line: 998, baseType: !14, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1879, file: !81, line: 1005, baseType: !1861, size: 32, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1879, file: !81, line: 1006, baseType: !1897, size: 32, offset: 160)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 156, baseType: !14)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1879, file: !81, line: 1007, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1900, line: 13, baseType: !1901)
!1900 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 181, baseType: !1902)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 179, size: 64, elements: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1902, file: !174, line: 180, baseType: !1584, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1879, file: !81, line: 1008, baseType: !1906, size: 256, offset: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1907, line: 66, size: 256, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1908 = !{!1909, !1910, !1911, !1916}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1906, file: !1907, line: 67, baseType: !1899, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1906, file: !1907, line: 68, baseType: !1666, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1906, file: !1907, line: 70, baseType: !1912, size: 32, offset: 96)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1913, line: 15, size: 32, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1912, file: !1913, line: 20, baseType: !1517, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1906, file: !1907, line: 72, baseType: !1573, size: 128, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1879, file: !81, line: 1009, baseType: !1918, size: 64, offset: 512)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 52, baseType: !1919)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !494, line: 88, baseType: !1586)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1879, file: !81, line: 1010, baseType: !14, size: 32, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1879, file: !81, line: 1011, baseType: !1922, size: 256, offset: 640)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !81, line: 948, size: 256, elements: !1923)
!1923 = !{!1924, !1945, !1982, !1983, !1991, !1992}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1922, file: !81, line: 949, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1926, line: 34, baseType: !1927)
!1926 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1926, line: 25, size: 64, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1927, file: !1926, line: 26, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1931, line: 27, baseType: !1932)
!1931 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1931, line: 13, size: 64, elements: !1933)
!1933 = !{!1934, !1944}
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !1931, line: 14, baseType: !1935, size: 32)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !1931, line: 14, size: 32, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1935, file: !1931, line: 15, baseType: !1517, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1931, line: 16, baseType: !1939, size: 32)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1931, line: 16, size: 32, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1939, file: !1931, line: 18, baseType: !744, size: 8)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1939, file: !1931, line: 19, baseType: !1943, size: 24, offset: 8)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 24, elements: !191)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1932, file: !1931, line: 26, baseType: !1671, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1922, file: !81, line: 950, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !29, line: 59, size: 768, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1963, !1964, !1971, !1972}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1947, file: !29, line: 61, baseType: !1512, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1947, file: !29, line: 62, baseType: !14, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1947, file: !29, line: 63, baseType: !1861, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1947, file: !29, line: 65, baseType: !1953, size: 256, offset: 128)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, size: 256, elements: !210)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 194, size: 64, elements: !1955)
!1955 = !{!1956}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1954, file: !174, line: 195, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 198, size: 128, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1958, file: !174, line: 199, baseType: !1957, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1958, file: !174, line: 199, baseType: !1962, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1947, file: !29, line: 66, baseType: !1954, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1947, file: !29, line: 68, baseType: !1965, size: 192, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1966, line: 41, baseType: !1967)
!1966 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1966, line: 37, size: 192, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !1966, line: 38, baseType: !1861, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1967, file: !1966, line: 39, baseType: !1573, size: 128, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1947, file: !29, line: 69, baseType: !1886, size: 128, align: 64, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1947, file: !29, line: 70, baseType: !1973, offset: 768)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1974, elements: !1980)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !29, line: 54, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1974, file: !29, line: 55, baseType: !20, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1974, file: !29, line: 56, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !29, line: 56, flags: DIFlagFwdDecl)
!1980 = !{!1981}
!1981 = !DISubrange(count: -1)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1922, file: !81, line: 951, baseType: !28, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1922, file: !81, line: 952, baseType: !1984, size: 32, offset: 160)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1985, line: 23, baseType: !1986)
!1985 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1985, line: 21, size: 32, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1986, file: !1985, line: 22, baseType: !1989, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 37, baseType: !1990)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !494, line: 49, baseType: !14)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1922, file: !81, line: 952, baseType: !1984, size: 32, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1922, file: !81, line: 953, baseType: !20, size: 32, offset: 224)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1879, file: !81, line: 1012, baseType: !1994, size: 64, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1997, line: 110, size: 1472, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1998 = !{!1999, !2000, !2001, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2021, !2022, !2023, !2024, !2025, !2026, !2143, !2144, !2145, !2146, !2147, !2178, !2181, !2185, !2193}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1996, file: !1997, line: 111, baseType: !1899, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1996, file: !1997, line: 112, baseType: !1984, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1996, file: !1997, line: 113, baseType: !2002, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1985, line: 28, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1985, line: 26, size: 32, elements: !2004)
!2004 = !{!2005}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2003, file: !1985, line: 27, baseType: !2006, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 38, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !494, line: 50, baseType: !14)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1996, file: !1997, line: 114, baseType: !1984, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1996, file: !1997, line: 115, baseType: !2002, size: 32, offset: 160)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1996, file: !1997, line: 116, baseType: !1984, size: 32, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1996, file: !1997, line: 117, baseType: !2002, size: 32, offset: 224)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1996, file: !1997, line: 118, baseType: !1984, size: 32, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1996, file: !1997, line: 119, baseType: !2002, size: 32, offset: 288)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1996, file: !1997, line: 120, baseType: !14, size: 32, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1996, file: !1997, line: 121, baseType: !2016, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2017, line: 24, baseType: !2018)
!2017 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2017, line: 24, size: 64, elements: !2019)
!2019 = !{!2020}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2018, file: !2017, line: 24, baseType: !6, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1996, file: !1997, line: 122, baseType: !2016, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1996, file: !1997, line: 123, baseType: !2016, size: 64, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1996, file: !1997, line: 124, baseType: !2016, size: 64, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1996, file: !1997, line: 125, baseType: !2016, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1996, file: !1997, line: 127, baseType: !179, size: 8, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1996, file: !1997, line: 129, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2029, line: 195, size: 1728, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2030 = !{!2031, !2032, !2037, !2042, !2051, !2054, !2055, !2062, !2063, !2064, !2065, !2067, !2068, !2069, !2071, !2072, !2107, !2128}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2028, file: !2029, line: 196, baseType: !1512, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2028, file: !2029, line: 197, baseType: !2033, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2029, line: 28, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 104, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !7, line: 20, baseType: !2036)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !9, line: 26, baseType: !20)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 198, baseType: !2038, size: 192, offset: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 198, size: 192, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2038, file: !2029, line: 199, baseType: !1573, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2038, file: !2029, line: 200, baseType: !1563, size: 192, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2028, file: !2029, line: 205, baseType: !2043, size: 320, offset: 256)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2044, line: 48, size: 320, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!2045 = !{!2046, !2047, !2048, !2049, !2050}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2043, file: !2044, line: 49, baseType: !1899, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2043, file: !2044, line: 55, baseType: !1899, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2043, file: !2044, line: 57, baseType: !1912, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2043, file: !2044, line: 59, baseType: !1666, size: 32, offset: 160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2043, file: !2044, line: 60, baseType: !1573, size: 128, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2028, file: !2029, line: 206, baseType: !2052, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2029, line: 206, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2028, file: !2029, line: 207, baseType: !177, size: 64, offset: 640)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 208, baseType: !2056, size: 64, offset: 704)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 208, size: 64, elements: !2057)
!2057 = !{!2058, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2056, file: !2029, line: 209, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2060, line: 8, baseType: !1585)
!2060 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2056, file: !2029, line: 210, baseType: !2059, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2028, file: !2029, line: 212, baseType: !2059, size: 64, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2028, file: !2029, line: 213, baseType: !1984, size: 32, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2028, file: !2029, line: 214, baseType: !2002, size: 32, offset: 864)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2028, file: !2029, line: 215, baseType: !2066, size: 32, offset: 896)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2029, line: 31, baseType: !343)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2028, file: !2029, line: 216, baseType: !1542, size: 16, offset: 928)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2028, file: !2029, line: 217, baseType: !1542, size: 16, offset: 944)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2028, file: !2029, line: 221, baseType: !2070, size: 16, offset: 960)
!2070 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2028, file: !2029, line: 228, baseType: !180, size: 64, offset: 1024)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 245, baseType: !2073, size: 320, offset: 1088)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 245, size: 320, elements: !2074)
!2074 = !{!2075, !2099}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2073, file: !2029, line: 246, baseType: !2076, size: 320)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2029, line: 114, size: 320, elements: !2077)
!2077 = !{!2078, !2079, !2088, !2091, !2098}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2076, file: !2029, line: 116, baseType: !180, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2076, file: !2029, line: 117, baseType: !2080, size: 64, offset: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !2029, line: 117, size: 64, elements: !2081)
!2081 = !{!2082, !2087}
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2029, line: 118, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2029, line: 118, size: 64, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2083, file: !2029, line: 120, baseType: !1540, size: 16)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2083, file: !2029, line: 121, baseType: !248, size: 48, offset: 16)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2080, file: !2029, line: 127, baseType: !180, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2076, file: !2029, line: 129, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2029, line: 102, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2076, file: !2029, line: 130, baseType: !2092, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2029, line: 108, size: 192, elements: !2094)
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2093, file: !2029, line: 109, baseType: !1886, size: 128, align: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2093, file: !2029, line: 110, baseType: !1512, size: 32, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2093, file: !2029, line: 111, baseType: !574, size: 8, offset: 160)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2076, file: !2029, line: 131, baseType: !230, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2029, line: 247, baseType: !2100, size: 320)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !2029, line: 247, size: 320, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2100, file: !2029, line: 248, baseType: !180, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2100, file: !2029, line: 249, baseType: !180, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2100, file: !2029, line: 250, baseType: !2089, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2100, file: !2029, line: 251, baseType: !2092, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2100, file: !2029, line: 252, baseType: !18, size: 64, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 260, baseType: !2108, size: 256, offset: 1408)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 260, size: 256, elements: !2109)
!2109 = !{!2110, !2116}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2108, file: !2029, line: 261, baseType: !2111, size: 256)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2029, line: 134, size: 256, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2111, file: !2029, line: 135, baseType: !177, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2111, file: !2029, line: 136, baseType: !2115, size: 256)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !210)
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2029, line: 262, baseType: !2117, size: 256)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !2029, line: 262, size: 256, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2117, file: !2029, line: 264, baseType: !1573, size: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2117, file: !2029, line: 265, baseType: !2121, size: 128, offset: 128)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2122, line: 22, size: 128, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2123 = !{!2124, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2121, file: !2122, line: 23, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2122, line: 23, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2121, file: !2122, line: 24, baseType: !180, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2028, file: !2029, line: 280, baseType: !2129, size: 64, offset: 1664)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2029, line: 176, size: 192, elements: !2131)
!2131 = !{!2132, !2141, !2142}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2130, file: !2029, line: 177, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2029, line: 171, baseType: !2134)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!20, !2027, !2137, !2139, !2027}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2130, file: !2029, line: 178, baseType: !2027, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2130, file: !2029, line: 179, baseType: !2089, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1996, file: !1997, line: 130, baseType: !2027, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1996, file: !1997, line: 131, baseType: !2027, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1996, file: !1997, line: 132, baseType: !2027, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1996, file: !1997, line: 135, baseType: !177, size: 64, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1996, file: !1997, line: 137, baseType: !2148, size: 64, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2150, line: 14, size: 1088, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2151 = !{!2152, !2153, !2162, !2163, !2164, !2165, !2166, !2167}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2149, file: !2150, line: 15, baseType: !1512, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2149, file: !2150, line: 17, baseType: !2154, size: 320, offset: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2155, line: 22, size: 320, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2156 = !{!2157, !2158, !2159, !2160}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2154, file: !2155, line: 23, baseType: !1666, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2154, file: !2155, line: 24, baseType: !1584, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2154, file: !2155, line: 26, baseType: !1573, size: 128, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2154, file: !2155, line: 28, baseType: !2161, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2149, file: !2150, line: 19, baseType: !180, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2149, file: !2150, line: 20, baseType: !1899, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2149, file: !2150, line: 23, baseType: !1958, size: 128, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2149, file: !2150, line: 24, baseType: !1984, size: 32, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2149, file: !2150, line: 29, baseType: !1899, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2149, file: !2150, line: 36, baseType: !2168, size: 320, offset: 768)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2169, line: 15, size: 320, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2176, !2177}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2168, file: !2169, line: 16, baseType: !1666, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2168, file: !2169, line: 18, baseType: !20, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2168, file: !2169, line: 19, baseType: !20, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2168, file: !2169, line: 20, baseType: !20, size: 32, offset: 96)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2168, file: !2169, line: 21, baseType: !20, size: 32, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2168, file: !2169, line: 22, baseType: !180, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2168, file: !2169, line: 23, baseType: !180, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1996, file: !1997, line: 138, baseType: !2179, size: 64, offset: 1152)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1985, line: 18, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1996, file: !1997, line: 139, baseType: !2182, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2184, line: 16, flags: DIFlagFwdDecl)
!2184 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1996, file: !1997, line: 140, baseType: !2186, size: 64, offset: 1280)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1997, line: 25, size: 64, elements: !2188)
!2188 = !{!2189, !2190, !2191}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2187, file: !1997, line: 26, baseType: !1517, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2187, file: !1997, line: 27, baseType: !20, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2187, file: !1997, line: 28, baseType: !2192, offset: 64)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2002, elements: !1980)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1997, line: 142, baseType: !2194, size: 128, offset: 1344)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1996, file: !1997, line: 142, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2194, file: !1997, line: 143, baseType: !20, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2194, file: !1997, line: 144, baseType: !1886, size: 128, align: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1879, file: !81, line: 1013, baseType: !2199, size: 256, offset: 960)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !81, line: 970, size: 256, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2199, file: !81, line: 971, baseType: !180, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2199, file: !81, line: 972, baseType: !14, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2199, file: !81, line: 973, baseType: !14, size: 32, offset: 96)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2199, file: !81, line: 974, baseType: !14, size: 32, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2199, file: !81, line: 975, baseType: !14, size: 32, offset: 160)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2199, file: !81, line: 976, baseType: !1918, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1879, file: !81, line: 1014, baseType: !2208, size: 128, offset: 1216)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2209, line: 8, size: 128, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2210 = !{!2211, !4362}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2208, file: !2209, line: 9, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !2214, line: 70, size: 256, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!2215 = !{!2216, !4359, !4360, !4361}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !2213, file: !2214, line: 71, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !2219, line: 82, size: 1536, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!2220 = !{!2221, !2222, !2227, !2235, !2236, !2251, !4326, !4328, !4341, !4342, !4343, !4344, !4345, !4351, !4352, !4353}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !2218, file: !2219, line: 84, baseType: !14, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !2218, file: !2219, line: 85, baseType: !2223, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1713, line: 275, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1713, line: 275, size: 32, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2224, file: !1713, line: 275, baseType: !1717, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2218, file: !2219, line: 86, baseType: !2228, size: 128, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !2229, line: 38, size: 128, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!2230 = !{!2231, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2228, file: !2229, line: 39, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2228, file: !2229, line: 39, baseType: !2234, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !2218, file: !2219, line: 87, baseType: !2217, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2218, file: !2219, line: 88, baseType: !2237, size: 128, offset: 256)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !2219, line: 49, size: 128, elements: !2238)
!2238 = !{!2239, !2248}
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2219, line: 50, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !2219, line: 50, size: 64, elements: !2241)
!2241 = !{!2242, !2247}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !2219, line: 51, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2219, line: 51, size: 64, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2243, file: !2219, line: 52, baseType: !175, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2243, file: !2219, line: 52, baseType: !175, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !2240, file: !2219, line: 54, baseType: !6, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2237, file: !2219, line: 56, baseType: !2249, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !2218, file: !2219, line: 89, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !81, line: 641, size: 4800, elements: !2254)
!2254 = !{!2255, !2257, !2258, !2259, !2260, !2261, !2262, !2265, !2266, !2459, !4141, !4142, !4143, !4144, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4308, !4311, !4312, !4313, !4322, !4323, !4324, !4325}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !2253, file: !81, line: 642, baseType: !2256, size: 16)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 24, baseType: !1542)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !2253, file: !81, line: 643, baseType: !1542, size: 16, offset: 16)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !2253, file: !81, line: 644, baseType: !1984, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !2253, file: !81, line: 645, baseType: !1573, size: 128, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !2253, file: !81, line: 646, baseType: !2002, size: 32, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2253, file: !81, line: 647, baseType: !14, size: 32, offset: 224)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !2253, file: !81, line: 650, baseType: !2263, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !81, line: 607, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !2253, file: !81, line: 651, baseType: !2263, size: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !2253, file: !81, line: 654, baseType: !2267, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !81, line: 1966, size: 2048, align: 512, elements: !2270)
!2270 = !{!2271, !2275, !2288, !2294, !2298, !2302, !2306, !2310, !2314, !2318, !2322, !2323, !2329, !2333, !2370, !2401, !2408, !2414, !2418, !2422, !2426, !2430, !2434, !2440, !2444}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2269, file: !81, line: 1967, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2217, !2252, !2217, !14}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !2269, file: !81, line: 1968, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!230, !2217, !2252, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2281, line: 10, size: 128, elements: !2282)
!2281 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2282 = !{!2283, !2287}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2280, file: !2281, line: 11, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !177}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2280, file: !2281, line: 12, baseType: !177, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !2269, file: !81, line: 1969, baseType: !2289, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!20, !2292, !2252, !20}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2017, line: 42, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !2269, file: !81, line: 1970, baseType: !2295, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!2263, !2252, !20, !574}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !2269, file: !81, line: 1972, baseType: !2299, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!20, !2217, !18, !20}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !2269, file: !81, line: 1974, baseType: !2303, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!20, !2292, !2252, !2217, !2256, !574}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2269, file: !81, line: 1976, baseType: !2307, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!20, !2217, !2252, !2217}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !2269, file: !81, line: 1977, baseType: !2311, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!20, !2252, !2217}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2269, file: !81, line: 1978, baseType: !2315, size: 64, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!20, !2292, !2252, !2217, !230}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2269, file: !81, line: 1980, baseType: !2319, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!20, !2292, !2252, !2217, !2256}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2269, file: !81, line: 1982, baseType: !2311, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !2269, file: !81, line: 1983, baseType: !2324, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!20, !2292, !2252, !2217, !2256, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 21, baseType: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 18, baseType: !175)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2269, file: !81, line: 1985, baseType: !2330, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!20, !2292, !2252, !2217, !2252, !2217, !14}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !2269, file: !81, line: 1987, baseType: !2334, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!20, !2292, !2217, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !81, line: 226, size: 640, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2352, !2361, !2362, !2367, !2368, !2369}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2338, file: !81, line: 227, baseType: !14, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2338, file: !81, line: 228, baseType: !2256, size: 16, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !81, line: 241, baseType: !2343, size: 32, offset: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !81, line: 241, size: 32, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2343, file: !81, line: 242, baseType: !1984, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2343, file: !81, line: 243, baseType: !2347, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2348, line: 16, baseType: !2349)
!2348 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2348, line: 14, size: 32, elements: !2350)
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2349, file: !2348, line: 15, baseType: !1989, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !81, line: 245, baseType: !2353, size: 32, offset: 96)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !81, line: 245, size: 32, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2353, file: !81, line: 246, baseType: !2002, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2353, file: !81, line: 247, baseType: !2357, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2348, line: 20, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2348, line: 18, size: 32, elements: !2359)
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2358, file: !2348, line: 19, baseType: !2006, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2338, file: !81, line: 249, baseType: !1918, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2338, file: !81, line: 250, baseType: !2363, size: 128, offset: 192)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2060, line: 13, size: 128, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2363, file: !2060, line: 14, baseType: !2059, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2363, file: !2060, line: 15, baseType: !181, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2338, file: !81, line: 251, baseType: !2363, size: 128, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2338, file: !81, line: 252, baseType: !2363, size: 128, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2338, file: !81, line: 259, baseType: !1878, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !2269, file: !81, line: 1988, baseType: !2371, size: 64, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!20, !2292, !2374, !2376, !175, !14}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2378, line: 22, size: 1280, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2377, file: !2378, line: 23, baseType: !175, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2377, file: !2378, line: 24, baseType: !2256, size: 16, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2377, file: !2378, line: 25, baseType: !14, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2377, file: !2378, line: 26, baseType: !343, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2377, file: !2378, line: 27, baseType: !6, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2377, file: !2378, line: 28, baseType: !6, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2377, file: !2378, line: 41, baseType: !6, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2377, file: !2378, line: 42, baseType: !2327, size: 32, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2377, file: !2378, line: 43, baseType: !2327, size: 32, offset: 352)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2377, file: !2378, line: 44, baseType: !1984, size: 32, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2377, file: !2378, line: 45, baseType: !2002, size: 32, offset: 416)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2377, file: !2378, line: 46, baseType: !1918, size: 64, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2377, file: !2378, line: 47, baseType: !2363, size: 128, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2377, file: !2378, line: 48, baseType: !2363, size: 128, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2377, file: !2378, line: 49, baseType: !2363, size: 128, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2377, file: !2378, line: 50, baseType: !2363, size: 128, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2377, file: !2378, line: 51, baseType: !6, size: 64, offset: 1024)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2377, file: !2378, line: 52, baseType: !6, size: 64, offset: 1088)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !2377, file: !2378, line: 53, baseType: !175, size: 32, offset: 1152)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !2377, file: !2378, line: 54, baseType: !175, size: 32, offset: 1184)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !2377, file: !2378, line: 55, baseType: !6, size: 64, offset: 1216)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !2269, file: !81, line: 1990, baseType: !2402, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2405, !2217, !18, !492}
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 66, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !494, line: 73, baseType: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !494, line: 15, baseType: !181)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !2269, file: !81, line: 1991, baseType: !2409, size: 64, offset: 1024)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!20, !2252, !2412, !6, !6}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !81, line: 55, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !2269, file: !81, line: 1993, baseType: !2415, size: 64, offset: 1088)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!20, !2252, !20}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !2269, file: !81, line: 1994, baseType: !2419, size: 64, offset: 1152)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!20, !2252, !2217, !1878, !14, !2256}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !2269, file: !81, line: 1997, baseType: !2423, size: 64, offset: 1216)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!20, !2292, !2252, !1878, !2256}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !2269, file: !81, line: 1999, baseType: !2427, size: 64, offset: 1280)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!2263, !2292, !2217, !20}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !2269, file: !81, line: 2001, baseType: !2431, size: 64, offset: 1344)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!20, !2292, !2217, !2263, !20}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !2269, file: !81, line: 2003, baseType: !2435, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!20, !2292, !2217, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !81, line: 76, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !2269, file: !81, line: 2005, baseType: !2441, size: 64, offset: 1472)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!20, !2217, !2438}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !2269, file: !81, line: 2006, baseType: !2445, size: 64, offset: 1536)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2448, !2252}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !81, line: 3192, size: 192, elements: !2450)
!2450 = !{!2451, !2458}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2449, file: !81, line: 3193, baseType: !2452, size: 128)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2453, line: 296, size: 128, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2452, file: !2453, line: 297, baseType: !1861, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2452, file: !2453, line: 299, baseType: !178, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2452, file: !2453, line: 300, baseType: !177, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !2449, file: !81, line: 3194, baseType: !175, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !2253, file: !81, line: 655, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !81, line: 1190, size: 10752, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !3654, !3786, !3826, !3909, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3926, !3930, !3931, !3934, !3937, !3940, !3943, !3944, !3945, !3986, !4012, !4013, !4014, !4015, !4016, !4017, !4020, !4024, !4033, !4034, !4035, !4036, !4095, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !2461, file: !81, line: 1191, baseType: !1573, size: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !2461, file: !81, line: 1192, baseType: !2327, size: 32, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !2461, file: !81, line: 1193, baseType: !179, size: 8, offset: 160)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !2461, file: !81, line: 1194, baseType: !180, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !2461, file: !81, line: 1195, baseType: !1918, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !2461, file: !81, line: 1196, baseType: !2469, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !81, line: 2366, size: 576, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2481, !2485, !2489, !2493, !3642, !3643, !3644, !3646, !3647, !3648, !3650, !3651, !3652, !3653}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2470, file: !81, line: 2367, baseType: !230, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !2470, file: !81, line: 2368, baseType: !20, size: 32, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !2470, file: !81, line: 2376, baseType: !2475, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!20, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !2480, line: 32, flags: DIFlagFwdDecl)
!2480 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !2470, file: !81, line: 2377, baseType: !2482, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !81, line: 75, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !2470, file: !81, line: 2378, baseType: !2486, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2217, !2469, !20, !230, !177}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !2470, file: !81, line: 2380, baseType: !2490, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2460}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2470, file: !81, line: 2381, baseType: !2494, size: 64, offset: 384)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !37, line: 402, size: 9216, align: 512, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2503, !3291, !3317, !3318, !3319, !3320, !3324, !3327, !3328, !3329, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3397, !3401, !3417, !3436, !3437, !3438, !3439, !3448, !3471, !3472, !3475, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3488, !3489, !3600, !3608, !3609, !3610, !3612, !3616, !3617, !3621, !3622, !3623, !3624, !3626, !3627, !3628, !3635, !3636, !3637, !3641}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2495, file: !37, line: 403, baseType: !36, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2495, file: !37, line: 406, baseType: !1573, size: 128, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2495, file: !37, line: 409, baseType: !2500, size: 448, offset: 192)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 448, elements: !2501)
!2501 = !{!2502}
!2502 = !DISubrange(count: 56)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2495, file: !37, line: 417, baseType: !2504, size: 768, offset: 640)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !37, line: 45, size: 768, elements: !2505)
!2505 = !{!2506, !3284, !3285, !3286, !3289}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2504, file: !37, line: 46, baseType: !2507, size: 512)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2508, line: 64, size: 512, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!2509 = !{!2510, !2511, !2512, !2514, !2558, !3164, !3274, !3279, !3280, !3281, !3282, !3283}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2507, file: !2508, line: 65, baseType: !230, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2507, file: !2508, line: 66, baseType: !1573, size: 128, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2507, file: !2508, line: 67, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2507, file: !2508, line: 68, baseType: !2515, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2508, line: 168, size: 768, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2516, file: !2508, line: 169, baseType: !1573, size: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2516, file: !2508, line: 170, baseType: !1861, size: 32, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2516, file: !2508, line: 171, baseType: !2507, size: 512, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2516, file: !2508, line: 172, baseType: !2522, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2508, line: 133, size: 192, elements: !2525)
!2525 = !{!2526, !2533, !2538}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2524, file: !2508, line: 134, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!20, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2524, file: !2508, line: 135, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!230, !2531}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2524, file: !2508, line: 136, baseType: !2539, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!20, !2531, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2508, line: 125, size: 20736, elements: !2545)
!2545 = !{!2546, !2548, !2552, !2553, !2557}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2544, file: !2508, line: 126, baseType: !2547, size: 192)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !191)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2544, file: !2508, line: 127, baseType: !2549, size: 4096, offset: 192)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 4096, elements: !2550)
!2550 = !{!2551}
!2551 = !DISubrange(count: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2544, file: !2508, line: 128, baseType: !20, size: 32, offset: 4288)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2544, file: !2508, line: 129, baseType: !2554, size: 16384, offset: 4320)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16384, elements: !2555)
!2555 = !{!2556}
!2556 = !DISubrange(count: 2048)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2544, file: !2508, line: 130, baseType: !20, size: 32, offset: 20704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2507, file: !2508, line: 69, baseType: !2559, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2508, line: 116, size: 384, elements: !2562)
!2562 = !{!2563, !2567, !2586, !3126, !3154, !3158}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2561, file: !2508, line: 117, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2513}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2561, file: !2508, line: 118, baseType: !2568, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2571, line: 254, size: 128, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2572 = !{!2573, !2582}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2570, file: !2571, line: 255, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!2405, !2513, !2577, !18}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2571, line: 30, size: 128, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2578, file: !2571, line: 31, baseType: !230, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2578, file: !2571, line: 32, baseType: !2256, size: 16, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2570, file: !2571, line: 256, baseType: !2583, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2405, !2513, !2577, !230, !492}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2561, file: !2508, line: 119, baseType: !2587, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2571, line: 84, size: 320, elements: !2591)
!2591 = !{!2592, !2593, !2597, !3122, !3124}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2590, file: !2571, line: 85, baseType: !230, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2590, file: !2571, line: 86, baseType: !2594, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!2256, !2513, !2577, !20}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2590, file: !2571, line: 88, baseType: !2598, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!2256, !2513, !2601, !20}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2571, line: 175, size: 512, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !3113, !3117, !3118}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2602, file: !2571, line: 176, baseType: !2578, size: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2602, file: !2571, line: 177, baseType: !492, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2602, file: !2571, line: 178, baseType: !177, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2602, file: !2571, line: 179, baseType: !2608, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !81, line: 472, size: 1536, align: 64, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !3105, !3106, !3107, !3110, !3111, !3112}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2612, file: !81, line: 473, baseType: !2252, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2612, file: !81, line: 474, baseType: !2452, size: 128, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2612, file: !81, line: 475, baseType: !2043, size: 320, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2612, file: !81, line: 476, baseType: !178, size: 32, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2612, file: !81, line: 477, baseType: !1517, size: 32, offset: 544)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2612, file: !81, line: 482, baseType: !1726, size: 128, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2612, file: !81, line: 483, baseType: !180, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2612, file: !81, line: 484, baseType: !180, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2612, file: !81, line: 485, baseType: !2623, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !81, line: 404, size: 1280, elements: !2626)
!2626 = !{!2627, !2930, !3000, !3004, !3008, !3014, !3020, !3024, !3029, !3033, !3037, !3041, !3069, !3073, !3077, !3081, !3086, !3090, !3097, !3101}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2625, file: !81, line: 405, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!20, !2631, !2928}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2633)
!2633 = !{!2634, !2635, !2922, !2927}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2632, file: !52, line: 75, baseType: !180, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !52, line: 83, baseType: !2636, size: 320, offset: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !52, line: 83, size: 320, elements: !2637)
!2637 = !{!2638, !2659, !2673, !2677, !2921}
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !52, line: 84, baseType: !2639, size: 320)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !52, line: 84, size: 320, elements: !2640)
!2640 = !{!2641, !2652, !2653, !2658}
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !52, line: 90, baseType: !2642, size: 128)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !52, line: 90, size: 128, elements: !2643)
!2643 = !{!2644, !2645, !2650, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2642, file: !52, line: 91, baseType: !1573, size: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !52, line: 94, baseType: !2646, size: 128)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !52, line: 94, size: 128, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2646, file: !52, line: 96, baseType: !177, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2646, file: !52, line: 98, baseType: !14, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2642, file: !52, line: 102, baseType: !1573, size: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2642, file: !52, line: 103, baseType: !1573, size: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2639, file: !52, line: 106, baseType: !2611, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !52, line: 107, baseType: !2654, size: 64, offset: 192)
!2654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !52, line: 107, size: 64, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2654, file: !52, line: 108, baseType: !180, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2654, file: !52, line: 109, baseType: !180, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2639, file: !52, line: 117, baseType: !180, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !52, line: 119, baseType: !2660, size: 320)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !52, line: 119, size: 320, elements: !2661)
!2661 = !{!2662, !2663, !2666, !2667, !2668}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2660, file: !52, line: 124, baseType: !180, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2660, file: !52, line: 125, baseType: !2664, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2660, file: !52, line: 126, baseType: !180, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2660, file: !52, line: 127, baseType: !180, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !52, line: 128, baseType: !2669, size: 64, offset: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2660, file: !52, line: 128, size: 64, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2669, file: !52, line: 133, baseType: !180, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2669, file: !52, line: 138, baseType: !1899, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !52, line: 141, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !52, line: 141, size: 64, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2674, file: !52, line: 142, baseType: !180, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !52, line: 144, baseType: !2678, size: 128)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !52, line: 144, size: 128, elements: !2679)
!2679 = !{!2680, !2920}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2678, file: !52, line: 146, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !2683)
!2683 = !{!2684, !2694, !2715, !2726, !2727, !2728, !2729, !2902, !2903, !2904}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2682, file: !44, line: 127, baseType: !2685, size: 384)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !2686)
!2686 = !{!2687, !2688, !2690, !2691, !2692, !2693}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2685, file: !44, line: 22, baseType: !180, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2685, file: !44, line: 23, baseType: !2689, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2685, file: !44, line: 24, baseType: !2689, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2685, file: !44, line: 25, baseType: !180, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2685, file: !44, line: 26, baseType: !180, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2685, file: !44, line: 27, baseType: !180, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2682, file: !44, line: 128, baseType: !2695, size: 128, offset: 384)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2696, line: 105, size: 128, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2697 = !{!2698, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2695, file: !2696, line: 110, baseType: !180, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2695, file: !2696, line: 118, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2696, line: 95, size: 448, elements: !2702)
!2702 = !{!2703, !2704, !2710, !2711, !2712, !2713, !2714}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2701, file: !2696, line: 96, baseType: !1899, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2701, file: !2696, line: 97, baseType: !2705, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2696, line: 60, baseType: !2707)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2701, file: !2696, line: 98, baseType: !2705, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2701, file: !2696, line: 99, baseType: !574, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2701, file: !2696, line: 100, baseType: !574, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2701, file: !2696, line: 101, baseType: !1886, size: 128, align: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2701, file: !2696, line: 102, baseType: !2709, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2682, file: !44, line: 129, baseType: !2716, size: 256, offset: 512)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2717, line: 26, size: 256, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2718 = !{!2719, !2720}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2716, file: !2717, line: 27, baseType: !14, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2716, file: !2717, line: 28, baseType: !2721, size: 192, offset: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2722, line: 43, size: 192, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2723 = !{!2724, !2725}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2721, file: !2722, line: 44, baseType: !1666, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2721, file: !2722, line: 45, baseType: !1573, size: 128, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2682, file: !44, line: 131, baseType: !14, size: 32, offset: 800)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2682, file: !44, line: 132, baseType: !180, size: 64, offset: 832)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2682, file: !44, line: 133, baseType: !2730, size: 64, offset: 896)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !2733)
!2733 = !{!2734, !2738, !2898}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2732, file: !44, line: 83, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !2631}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2732, file: !44, line: 89, baseType: !2739, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !14)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2745, line: 512, size: 896, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2746 = !{!2747, !2865, !2866, !2873, !2880, !2890, !2891, !2892, !2894, !2896}
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !2745, line: 513, baseType: !2748, size: 320)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2744, file: !2745, line: 513, size: 320, elements: !2749)
!2749 = !{!2750, !2861, !2862, !2863, !2864}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2748, file: !2745, line: 514, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2753)
!2753 = !{!2754, !2763, !2764, !2772, !2779, !2780, !2785, !2786, !2791, !2792, !2795, !2854, !2855, !2856, !2857, !2858, !2859}
!2754 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !52, line: 628, baseType: !2755, size: 128)
!2755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !52, line: 628, size: 128, elements: !2756)
!2756 = !{!2757, !2762}
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !2755, file: !52, line: 629, baseType: !2758, size: 128)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !52, line: 629, size: 128, elements: !2759)
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2758, file: !52, line: 631, baseType: !180, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2758, file: !52, line: 632, baseType: !180, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2755, file: !52, line: 635, baseType: !1886, size: 128, align: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2752, file: !52, line: 639, baseType: !1843, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2752, file: !52, line: 640, baseType: !2765, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2766, line: 297, baseType: !2767)
!2766 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2766, line: 297, size: 64, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2767, file: !2766, line: 297, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2771, line: 19, baseType: !180)
!2771 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !52, line: 646, baseType: !2773, size: 64, offset: 256)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !52, line: 646, size: 64, elements: !2774)
!2774 = !{!2775, !2778}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2773, file: !52, line: 647, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !180)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2773, file: !52, line: 648, baseType: !2777, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2752, file: !52, line: 666, baseType: !20, size: 32, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2752, file: !52, line: 667, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2783)
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !52, line: 580, baseType: !2043, size: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2752, file: !52, line: 670, baseType: !574, size: 8, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2752, file: !52, line: 681, baseType: !2787, size: 256, offset: 512)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2752, file: !52, line: 678, size: 256, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2787, file: !52, line: 679, baseType: !1563, size: 192, align: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2787, file: !52, line: 680, baseType: !180, size: 64, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2752, file: !52, line: 689, baseType: !1573, size: 128, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2752, file: !52, line: 691, baseType: !2793, size: 64, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2752, file: !52, line: 694, baseType: !2796, size: 64, offset: 960)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2798)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2745, line: 563, size: 1024, elements: !2799)
!2799 = !{!2800, !2804, !2805, !2809, !2813, !2817, !2818, !2822, !2826, !2830, !2831, !2832, !2836, !2840, !2846, !2850}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2798, file: !2745, line: 564, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2751}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2798, file: !2745, line: 569, baseType: !2801, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2798, file: !2745, line: 571, baseType: !2806, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!20, !2751, !180}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2798, file: !2745, line: 572, baseType: !2810, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!20, !2751}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2798, file: !2745, line: 578, baseType: !2814, size: 64, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!20, !2751, !180, !180, !180}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2798, file: !2745, line: 580, baseType: !2739, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2798, file: !2745, line: 581, baseType: !2819, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!2742, !2743, !14}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2798, file: !2745, line: 582, baseType: !2823, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2742, !2743, !180, !180}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2798, file: !2745, line: 584, baseType: !2827, size: 64, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!180, !2751}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2798, file: !2745, line: 588, baseType: !2739, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2798, file: !2745, line: 591, baseType: !2739, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2798, file: !2745, line: 597, baseType: !2833, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!20, !2751, !180, !177, !20, !20}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2798, file: !2745, line: 603, baseType: !2837, size: 64, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!230, !2751}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2798, file: !2745, line: 613, baseType: !2841, size: 64, offset: 832)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!20, !2751, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1499, line: 54, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2798, file: !2745, line: 625, baseType: !2847, size: 64, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!2844, !2751, !180}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2798, file: !2745, line: 633, baseType: !2851, size: 64, offset: 960)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!2631, !2751, !180}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2752, file: !52, line: 697, baseType: !180, size: 64, offset: 1024)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2752, file: !52, line: 699, baseType: !1878, size: 64, offset: 1088)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2752, file: !52, line: 700, baseType: !177, size: 64, offset: 1152)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2752, file: !52, line: 711, baseType: !1899, size: 64, offset: 1216)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2752, file: !52, line: 717, baseType: !2844, size: 64, offset: 1280)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2752, file: !52, line: 722, baseType: !2860, offset: 1344)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !957)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2748, file: !2745, line: 515, baseType: !178, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2748, file: !2745, line: 516, baseType: !180, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2748, file: !2745, line: 517, baseType: !180, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2748, file: !2745, line: 518, baseType: !180, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2745, line: 520, baseType: !51, size: 32, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2744, file: !2745, line: 522, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2771, line: 22, baseType: !2869)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2771, line: 22, size: 64, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2869, file: !2771, line: 22, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2771, line: 15, baseType: !180)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2744, file: !2745, line: 524, baseType: !2874, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2766, line: 372, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2766, line: 372, size: 64, elements: !2877)
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2876, file: !2766, line: 372, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2771, line: 16, baseType: !180)
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !2745, line: 527, baseType: !2881, size: 64, offset: 512)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !2745, line: 527, size: 64, elements: !2882)
!2882 = !{!2883, !2889}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2881, file: !2745, line: 528, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2771, line: 21, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2771, line: 21, size: 64, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2885, file: !2771, line: 21, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2771, line: 14, baseType: !180)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2881, file: !2745, line: 529, baseType: !2868, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2744, file: !2745, line: 534, baseType: !2631, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2744, file: !2745, line: 535, baseType: !2631, size: 64, offset: 640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2744, file: !2745, line: 541, baseType: !2893, size: 64, offset: 704)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2744, file: !2745, line: 545, baseType: !2895, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2744, file: !2745, line: 549, baseType: !2897, size: 64, offset: 832)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2766, line: 520, baseType: !2631)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2732, file: !44, line: 100, baseType: !2899, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!20, !2681, !180, !180, !20}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2682, file: !44, line: 134, baseType: !177, size: 64, offset: 960)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2682, file: !44, line: 135, baseType: !20, size: 32, offset: 1024)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2682, file: !44, line: 136, baseType: !2905, size: 128, offset: 1088)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2682, file: !44, line: 136, size: 128, elements: !2906)
!2906 = !{!2907, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2905, file: !44, line: 137, baseType: !2908, size: 128)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2909, line: 6, size: 128, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2908, file: !2909, line: 7, baseType: !6, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2908, file: !2909, line: 8, baseType: !6, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2905, file: !44, line: 138, baseType: !2914)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2905, file: !44, line: 138, elements: !2915)
!2915 = !{!2916, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2914, file: !44, line: 138, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !44, line: 138, elements: !957)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2914, file: !44, line: 138, baseType: !2919)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2908, elements: !1980)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2678, file: !52, line: 147, baseType: !177, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2636, file: !52, line: 161, baseType: !1886, size: 128, align: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !52, line: 164, baseType: !2923, size: 32, offset: 384)
!2923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !52, line: 164, size: 32, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2923, file: !52, line: 169, baseType: !1517, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2923, file: !52, line: 177, baseType: !14, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2632, file: !52, line: 181, baseType: !1517, size: 32, offset: 416)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !81, line: 309, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2625, file: !81, line: 406, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!20, !1878, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !2936)
!2936 = !{!2937, !2967, !2981}
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !52, line: 295, baseType: !2938, size: 512)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !52, line: 295, size: 512, elements: !2939)
!2939 = !{!2940, !2966}
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !52, line: 296, baseType: !2941, size: 448)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !52, line: 296, size: 448, elements: !2942)
!2942 = !{!2943, !2944, !2953, !2954, !2955, !2964, !2965}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2941, file: !52, line: 298, baseType: !180, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !52, line: 299, baseType: !2945, size: 128, offset: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !52, line: 299, size: 128, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2945, file: !52, line: 300, baseType: !1573, size: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, scope: !2945, file: !52, line: 302, baseType: !2949, size: 128)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2945, file: !52, line: 302, size: 128, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2949, file: !52, line: 303, baseType: !177, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2949, file: !52, line: 305, baseType: !14, size: 32, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2941, file: !52, line: 310, baseType: !2611, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2941, file: !52, line: 311, baseType: !180, size: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !52, line: 312, baseType: !2956, size: 64, offset: 320)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !52, line: 312, size: 64, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2956, file: !52, line: 313, baseType: !177, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2956, file: !52, line: 314, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !2962)
!2962 = !{!2963}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2961, file: !52, line: 256, baseType: !180, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2941, file: !52, line: 316, baseType: !1517, size: 32, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2941, file: !52, line: 317, baseType: !1517, size: 32, offset: 416)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2938, file: !52, line: 323, baseType: !2632, size: 512, align: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !52, line: 325, baseType: !2968, size: 512, offset: 512)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !52, line: 325, size: 512, elements: !2969)
!2969 = !{!2970, !2980}
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2968, file: !52, line: 326, baseType: !2971, size: 320)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !52, line: 326, size: 320, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2971, file: !52, line: 327, baseType: !180, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2971, file: !52, line: 328, baseType: !180, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2971, file: !52, line: 329, baseType: !180, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2971, file: !52, line: 331, baseType: !1517, size: 32, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2971, file: !52, line: 332, baseType: !1517, size: 32, offset: 224)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2971, file: !52, line: 333, baseType: !1517, size: 32, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2971, file: !52, line: 335, baseType: !14, size: 32, offset: 288)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2968, file: !52, line: 339, baseType: !2632, size: 512, align: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !52, line: 341, baseType: !2982, size: 512, offset: 1024)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !52, line: 341, size: 512, elements: !2983)
!2983 = !{!2984, !2993, !2999}
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !52, line: 342, baseType: !2985, size: 384)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !52, line: 342, size: 384, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2985, file: !52, line: 343, baseType: !180, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2985, file: !52, line: 344, baseType: !180, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2985, file: !52, line: 346, baseType: !177, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2985, file: !52, line: 347, baseType: !177, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2985, file: !52, line: 348, baseType: !177, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2985, file: !52, line: 349, baseType: !177, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !52, line: 352, baseType: !2994, size: 256)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !52, line: 352, size: 256, elements: !2995)
!2995 = !{!2996, !2997, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2994, file: !52, line: 353, baseType: !180, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2994, file: !52, line: 354, baseType: !180, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2994, file: !52, line: 356, baseType: !1573, size: 128, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2982, file: !52, line: 359, baseType: !2632, size: 512, align: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2625, file: !81, line: 409, baseType: !3001, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!20, !2611, !2928}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2625, file: !81, line: 412, baseType: !3005, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!574, !2611, !2934}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2625, file: !81, line: 414, baseType: !3009, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !81, line: 310, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2625, file: !81, line: 416, baseType: !3015, size: 64, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!20, !1878, !2611, !1918, !14, !3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2625, file: !81, line: 419, baseType: !3021, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!20, !1878, !2611, !1918, !14, !14, !2631, !177}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2625, file: !81, line: 424, baseType: !3025, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!3028, !2611, !3028}
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 131, baseType: !6)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2625, file: !81, line: 425, baseType: !3030, size: 64, offset: 512)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2934, !492, !492}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2625, file: !81, line: 426, baseType: !3034, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!574, !2934, !178}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2625, file: !81, line: 427, baseType: !3038, size: 64, offset: 640)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2934}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2625, file: !81, line: 428, baseType: !3042, size: 64, offset: 704)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!2405, !3045, !3067}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !81, line: 373, size: 384, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3054, !3055, !3056, !3057}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3046, file: !81, line: 374, baseType: !1878, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3046, file: !81, line: 375, baseType: !1918, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3046, file: !81, line: 376, baseType: !3051, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !3045, !181}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3046, file: !81, line: 377, baseType: !177, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3046, file: !81, line: 378, baseType: !20, size: 32, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3046, file: !81, line: 379, baseType: !1540, size: 16, offset: 288)
!3057 = !DIDerivedType(tag: DW_TAG_member, scope: !3046, file: !81, line: 380, baseType: !3058, size: 64, offset: 320)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3046, file: !81, line: 380, size: 64, elements: !3059)
!3059 = !{!3060, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3058, file: !81, line: 386, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !81, line: 386, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3058, file: !81, line: 395, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!2405, !177}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !81, line: 69, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2625, file: !81, line: 433, baseType: !3070, size: 64, offset: 768)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!20, !2611, !2934, !2934, !67}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2625, file: !81, line: 435, baseType: !3074, size: 64, offset: 832)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!20, !2934}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2625, file: !81, line: 436, baseType: !3078, size: 64, offset: 896)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!574, !2934, !492, !492}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2625, file: !81, line: 438, baseType: !3082, size: 64, offset: 960)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2934, !3085, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2625, file: !81, line: 439, baseType: !3087, size: 64, offset: 1024)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!20, !2611, !2631}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2625, file: !81, line: 442, baseType: !3091, size: 64, offset: 1088)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!20, !3094, !1878, !3096}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !81, line: 66, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2625, file: !81, line: 444, baseType: !3098, size: 64, offset: 1152)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !1878}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2625, file: !81, line: 445, baseType: !3102, size: 64, offset: 1216)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!20, !3045, !3067}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2612, file: !81, line: 486, baseType: !180, size: 64, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2612, file: !81, line: 487, baseType: !2043, size: 320, offset: 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2612, file: !81, line: 488, baseType: !3108, size: 32, offset: 1280)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3109, line: 8, baseType: !175)
!3109 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2612, file: !81, line: 489, baseType: !1861, size: 32, offset: 1312)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2612, file: !81, line: 490, baseType: !1573, size: 128, offset: 1344)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2612, file: !81, line: 491, baseType: !177, size: 64, offset: 1472)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2602, file: !2571, line: 180, baseType: !3114, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!2405, !1878, !2513, !2601, !18, !1918, !492}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2602, file: !2571, line: 182, baseType: !3114, size: 64, offset: 384)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2602, file: !2571, line: 184, baseType: !3119, size: 64, offset: 448)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!20, !1878, !2513, !2601, !2751}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2590, file: !2571, line: 90, baseType: !3123, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2590, file: !2571, line: 91, baseType: !3125, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2561, file: !2508, line: 120, baseType: !3127, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!3130, !2531}
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !75, line: 39, size: 384, elements: !3133)
!3133 = !{!3134, !3135, !3139, !3143, !3149, !3153}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3132, file: !75, line: 40, baseType: !74, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3132, file: !75, line: 41, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!574}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3132, file: !75, line: 42, baseType: !3140, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!177}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3132, file: !75, line: 43, baseType: !3144, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!568, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !75, line: 19, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3132, file: !75, line: 44, baseType: !3150, size: 64, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!568}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3132, file: !75, line: 45, baseType: !2284, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2561, file: !2508, line: 121, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!568, !2531}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2561, file: !2508, line: 122, baseType: !3159, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !2531, !3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2507, file: !2508, line: 70, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2480, line: 190, size: 1152, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3266, !3267, !3268, !3269, !3270, !3273}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3166, file: !2480, line: 191, baseType: !1517, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3166, file: !2480, line: 192, baseType: !1517, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3166, file: !2480, line: 202, baseType: !3165, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3166, file: !2480, line: 203, baseType: !230, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3166, file: !2480, line: 205, baseType: !1563, size: 192, align: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3166, file: !2480, line: 207, baseType: !568, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3166, file: !2480, line: 208, baseType: !14, size: 32, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !3166, file: !2480, line: 209, baseType: !3176, size: 256, offset: 512)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3166, file: !2480, line: 209, size: 256, elements: !3177)
!3177 = !{!3178, !3187, !3191}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3176, file: !2480, line: 210, baseType: !3179, size: 256)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2480, line: 153, size: 256, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3186}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3179, file: !2480, line: 154, baseType: !180, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3179, file: !2480, line: 156, baseType: !1729, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3179, file: !2480, line: 162, baseType: !3184, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2480, line: 162, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3179, file: !2480, line: 167, baseType: !180, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3176, file: !2480, line: 211, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2480, line: 170, size: 64, elements: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3188, file: !2480, line: 171, baseType: !3165, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3176, file: !2480, line: 212, baseType: !3192, size: 256)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2480, line: 174, size: 256, elements: !3193)
!3193 = !{!3194, !3261, !3264, !3265}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3192, file: !2480, line: 175, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2480, line: 271, size: 768, elements: !3198)
!3198 = !{!3199, !3221, !3225, !3229, !3234, !3238, !3242, !3246, !3247, !3248, !3249, !3257}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3197, file: !2480, line: 276, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!20, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2480, line: 251, size: 1216, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3204, file: !2480, line: 253, baseType: !3165, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3204, file: !2480, line: 254, baseType: !1878, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3204, file: !2480, line: 255, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1499, line: 66, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3204, file: !2480, line: 256, baseType: !177, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3204, file: !2480, line: 259, baseType: !1906, size: 256, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3204, file: !2480, line: 260, baseType: !1906, size: 256, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3204, file: !2480, line: 261, baseType: !20, size: 32, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3204, file: !2480, line: 262, baseType: !1573, size: 128, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3204, file: !2480, line: 263, baseType: !18, size: 64, offset: 960)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3204, file: !2480, line: 265, baseType: !492, size: 64, offset: 1024)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3204, file: !2480, line: 266, baseType: !574, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3204, file: !2480, line: 267, baseType: !574, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3204, file: !2480, line: 268, baseType: !2796, size: 64, offset: 1152)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3197, file: !2480, line: 277, baseType: !3222, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3203}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3197, file: !2480, line: 290, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!20, !3209, !177}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3197, file: !2480, line: 292, baseType: !3230, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!177, !3209, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3197, file: !2480, line: 293, baseType: !3235, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!177, !3209, !177, !3233}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3197, file: !2480, line: 294, baseType: !3239, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3209, !177}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3197, file: !2480, line: 296, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!2405, !3203, !18, !492, !1918}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3197, file: !2480, line: 306, baseType: !492, size: 64, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3197, file: !2480, line: 313, baseType: !574, size: 8, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3197, file: !2480, line: 314, baseType: !3243, size: 64, offset: 576)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3197, file: !2480, line: 317, baseType: !3250, size: 64, offset: 640)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!3253, !3203, !3255}
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3254, line: 59, baseType: !14)
!3254 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2480, line: 31, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3197, file: !2480, line: 320, baseType: !3258, size: 64, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!20, !3203, !2751}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3192, file: !2480, line: 176, baseType: !3262, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2480, line: 35, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3192, file: !2480, line: 177, baseType: !1918, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3192, file: !2480, line: 178, baseType: !3165, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3166, file: !2480, line: 215, baseType: !177, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3166, file: !2480, line: 221, baseType: !6, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3166, file: !2480, line: 223, baseType: !1542, size: 16, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3166, file: !2480, line: 224, baseType: !2256, size: 16, offset: 912)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3166, file: !2480, line: 225, baseType: !3271, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2480, line: 36, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3166, file: !2480, line: 227, baseType: !1886, size: 128, align: 64, offset: 1024)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2507, file: !2508, line: 71, baseType: !3275, size: 32, offset: 448)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3276, line: 19, size: 32, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3277 = !{!3278}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3275, file: !3276, line: 20, baseType: !1512, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2507, file: !2508, line: 73, baseType: !14, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2507, file: !2508, line: 74, baseType: !14, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2507, file: !2508, line: 75, baseType: !14, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2507, file: !2508, line: 76, baseType: !14, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2507, file: !2508, line: 77, baseType: !14, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2504, file: !37, line: 47, baseType: !2494, size: 64, offset: 512)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2504, file: !37, line: 48, baseType: !2513, size: 64, offset: 576)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2504, file: !37, line: 49, baseType: !3287, size: 64, offset: 640)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !37, line: 49, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2504, file: !37, line: 50, baseType: !3290, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2495, file: !37, line: 418, baseType: !3292, size: 64, offset: 1408)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !37, line: 53, size: 448, elements: !3294)
!3294 = !{!3295, !3296, !3301, !3305, !3309, !3313}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3293, file: !37, line: 54, baseType: !2578, size: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3293, file: !37, line: 55, baseType: !3297, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!2405, !3292, !3300, !18}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3293, file: !37, line: 57, baseType: !3302, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!2405, !3292, !3300, !230, !492}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3293, file: !37, line: 59, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !2494, !230}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3293, file: !37, line: 60, baseType: !3310, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!20, !2494}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3293, file: !37, line: 61, baseType: !3314, size: 64, offset: 384)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !2494}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2495, file: !37, line: 419, baseType: !230, size: 64, offset: 1472)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2495, file: !37, line: 420, baseType: !230, size: 64, offset: 1536)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2495, file: !37, line: 421, baseType: !2513, size: 64, offset: 1600)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2495, file: !37, line: 424, baseType: !3321, size: 64, offset: 1664)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3323)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !37, line: 424, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2495, file: !37, line: 425, baseType: !3325, size: 64, offset: 1728)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2495, file: !37, line: 426, baseType: !14, size: 32, offset: 1792)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2495, file: !37, line: 435, baseType: !1906, size: 256, offset: 1856)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2495, file: !37, line: 437, baseType: !3330, size: 64, offset: 2112)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3332, line: 69, size: 320, elements: !3333)
!3332 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3333 = !{!3334, !3335, !3336, !3353, !3355, !3359, !3360}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3331, file: !3332, line: 70, baseType: !230, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3331, file: !3332, line: 71, baseType: !2494, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3331, file: !3332, line: 72, baseType: !3337, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3332, line: 47, size: 256, elements: !3340)
!3340 = !{!3341, !3342, !3348, !3352}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3339, file: !3332, line: 49, baseType: !14, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3339, file: !3332, line: 51, baseType: !3343, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!20, !230, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3331)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3339, file: !3332, line: 53, baseType: !3349, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!20, !18, !3346}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3339, file: !3332, line: 55, baseType: !2284, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3331, file: !3332, line: 73, baseType: !3354, size: 16, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3331, file: !3332, line: 74, baseType: !3356, size: 8, offset: 208)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !7, line: 16, baseType: !3357)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !9, line: 20, baseType: !3358)
!3358 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !3332, line: 75, baseType: !744, size: 8, offset: 216)
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3331, file: !3332, line: 76, baseType: !3361, size: 64, offset: 256)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3331, file: !3332, line: 76, size: 64, elements: !3362)
!3362 = !{!3363, !3364, !3371}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3361, file: !3332, line: 77, baseType: !177, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3361, file: !3332, line: 78, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3332, line: 86, size: 128, elements: !3368)
!3368 = !{!3369, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3367, file: !3332, line: 87, baseType: !14, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3367, file: !3332, line: 88, baseType: !18, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3361, file: !3332, line: 79, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3374)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3332, line: 92, size: 256, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3380, !3381}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3374, file: !3332, line: 94, baseType: !14, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3374, file: !3332, line: 95, baseType: !14, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3374, file: !3332, line: 96, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3374, file: !3332, line: 97, baseType: !3337, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3374, file: !3332, line: 98, baseType: !177, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2495, file: !37, line: 438, baseType: !14, size: 32, offset: 2176)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2495, file: !37, line: 441, baseType: !14, size: 32, offset: 2208)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2495, file: !37, line: 442, baseType: !3321, size: 64, offset: 2240)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2495, file: !37, line: 443, baseType: !3325, size: 64, offset: 2304)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2495, file: !37, line: 444, baseType: !574, size: 8, offset: 2368)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2495, file: !37, line: 451, baseType: !574, size: 8, offset: 2376)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2495, file: !37, line: 454, baseType: !14, size: 32, offset: 2400)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2495, file: !37, line: 455, baseType: !3390, size: 64, offset: 2432)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3392, line: 23, size: 96, elements: !3393)
!3392 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3391, file: !3392, line: 24, baseType: !20, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3391, file: !3392, line: 24, baseType: !20, size: 32, offset: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3391, file: !3392, line: 24, baseType: !20, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2495, file: !37, line: 458, baseType: !3398, size: 64, offset: 2496)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!20}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2495, file: !37, line: 460, baseType: !3402, size: 4032, align: 512, offset: 2560)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3403, size: 4032, elements: !297)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !37, line: 362, size: 576, elements: !3404)
!3404 = !{!3405, !3406, !3407}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3403, file: !37, line: 363, baseType: !177, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3403, file: !37, line: 364, baseType: !14, size: 32, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3403, file: !37, line: 367, baseType: !3408, size: 448, offset: 128)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !37, line: 319, size: 448, elements: !3409)
!3409 = !{!3410, !3411}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3408, file: !37, line: 320, baseType: !2494, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3408, file: !37, line: 321, baseType: !3412, size: 384, offset: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3413, line: 40, size: 384, elements: !3414)
!3413 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3414 = !{!3415}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3412, file: !3413, line: 41, baseType: !3416, size: 384, align: 64)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 384, align: 64, elements: !186)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2495, file: !37, line: 463, baseType: !3418, size: 192, offset: 6592)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3419, line: 8, size: 192, elements: !3420)
!3419 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3420 = !{!3421, !3422, !3423}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3418, file: !3419, line: 10, baseType: !14, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3418, file: !3419, line: 11, baseType: !500, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3418, file: !3419, line: 12, baseType: !3424, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3426, line: 59, size: 48, elements: !3427)
!3426 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3427 = !{!3428, !3431, !3432, !3433, !3434, !3435}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3425, file: !3426, line: 60, baseType: !3429, size: 16)
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !7, line: 18, baseType: !3430)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !9, line: 23, baseType: !2070)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3425, file: !3426, line: 61, baseType: !3429, size: 16, offset: 16)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3425, file: !3426, line: 63, baseType: !14, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3425, file: !3426, line: 64, baseType: !14, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3425, file: !3426, line: 65, baseType: !14, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3425, file: !3426, line: 66, baseType: !14, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2495, file: !37, line: 465, baseType: !180, size: 64, offset: 6784)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2495, file: !37, line: 469, baseType: !14, size: 32, offset: 6848)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2495, file: !37, line: 470, baseType: !1573, size: 128, offset: 6912)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2495, file: !37, line: 471, baseType: !3440, size: 64, offset: 7040)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3442, line: 33, size: 96, elements: !3443)
!3442 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3441, file: !3442, line: 37, baseType: !20, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3441, file: !3442, line: 43, baseType: !20, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3441, file: !3442, line: 45, baseType: !1542, size: 16, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3441, file: !3442, line: 47, baseType: !1542, size: 16, offset: 80)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2495, file: !37, line: 476, baseType: !3449, size: 64, offset: 7104)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !37, line: 378, size: 256, elements: !3451)
!3451 = !{!3452, !3468, !3469, !3470}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3450, file: !37, line: 379, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3455, line: 204, baseType: !3456)
!3455 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3455, line: 197, size: 192, elements: !3457)
!3457 = !{!3458, !3460, !3461, !3462, !3464, !3466}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3456, file: !3455, line: 198, baseType: !3459, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3455, line: 21, baseType: !176)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3456, file: !3455, line: 199, baseType: !179, size: 8, offset: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3456, file: !3455, line: 200, baseType: !179, size: 8, offset: 40)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3456, file: !3455, line: 201, baseType: !3463, size: 16, offset: 48)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3455, line: 17, baseType: !1541)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3456, file: !3455, line: 202, baseType: !3465, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3455, line: 16, baseType: !8)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3456, file: !3455, line: 203, baseType: !3467, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3455, line: 22, baseType: !8)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3450, file: !37, line: 380, baseType: !14, size: 32, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3450, file: !37, line: 381, baseType: !18, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3450, file: !37, line: 382, baseType: !18, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2495, file: !37, line: 477, baseType: !3450, size: 256, offset: 7168)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2495, file: !37, line: 480, baseType: !3473, size: 64, offset: 7424)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !37, line: 480, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2495, file: !37, line: 483, baseType: !3476, size: 64, offset: 7488)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !37, line: 483, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2495, file: !37, line: 488, baseType: !18, size: 64, offset: 7552)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2495, file: !37, line: 492, baseType: !177, size: 64, offset: 7616)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2495, file: !37, line: 493, baseType: !14, size: 32, offset: 7680)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2495, file: !37, line: 495, baseType: !177, size: 64, offset: 7744)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2495, file: !37, line: 496, baseType: !14, size: 32, offset: 7808)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2495, file: !37, line: 499, baseType: !14, size: 32, offset: 7840)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2495, file: !37, line: 500, baseType: !3485, size: 64, offset: 7872)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3487, line: 45, baseType: !1391)
!3487 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2495, file: !37, line: 503, baseType: !14, size: 32, offset: 7936)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2495, file: !37, line: 504, baseType: !3490, size: 64, offset: 8000)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3493, line: 96, size: 192, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3494 = !{!3495, !3496, !3561, !3564}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3492, file: !3493, line: 97, baseType: !14, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3492, file: !3493, line: 98, baseType: !3497, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3493, line: 24, size: 3072, elements: !3499)
!3499 = !{!3500, !3502, !3503, !3504, !3505, !3519, !3520, !3521, !3522, !3534, !3546, !3547, !3558, !3559, !3560}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3498, file: !3493, line: 26, baseType: !3501, size: 128)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 128, elements: !186)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3498, file: !3493, line: 27, baseType: !3501, size: 128, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3498, file: !3493, line: 28, baseType: !20, size: 32, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3498, file: !3493, line: 31, baseType: !1861, size: 32, align: 512, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3498, file: !3493, line: 32, baseType: !3506, size: 960, offset: 576)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3507, line: 206, size: 960, elements: !3508)
!3507 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3508 = !{!3509, !3510, !3513, !3515, !3516, !3518}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3506, file: !3507, line: 207, baseType: !1889, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3506, file: !3507, line: 208, baseType: !3511, size: 256, offset: 64)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3512, size: 256, elements: !210)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3506, file: !3507, line: 209, baseType: !3514, size: 256, offset: 320)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !210)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3506, file: !3507, line: 213, baseType: !181, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3506, file: !3507, line: 215, baseType: !3517, size: 256, offset: 640)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !210)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3506, file: !3507, line: 216, baseType: !744, size: 8, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3498, file: !3493, line: 33, baseType: !180, size: 64, offset: 1536)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3498, file: !3493, line: 34, baseType: !180, size: 64, offset: 1600)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3498, file: !3493, line: 35, baseType: !574, size: 8, offset: 1664)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3498, file: !3493, line: 36, baseType: !3523, size: 320, offset: 1728)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3524, line: 11, size: 320, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3525 = !{!3526, !3527, !3528, !3533}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3523, file: !3524, line: 16, baseType: !1958, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3523, file: !3524, line: 17, baseType: !180, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3523, file: !3524, line: 18, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3523, file: !3524, line: 19, baseType: !175, size: 32, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3498, file: !3493, line: 37, baseType: !3535, size: 256, offset: 2048)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !3536, line: 98, size: 256, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3535, file: !3536, line: 99, baseType: !1899, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3535, file: !3536, line: 100, baseType: !1573, size: 128, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3535, file: !3536, line: 101, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !3536, line: 21, baseType: !3542)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3498, file: !3493, line: 38, baseType: !1886, size: 128, align: 64, offset: 2304)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3498, file: !3493, line: 39, baseType: !3548, size: 64, offset: 2432)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3493, line: 49, size: 768, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3549, file: !3493, line: 50, baseType: !1861, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3549, file: !3493, line: 51, baseType: !3514, size: 256, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3549, file: !3493, line: 53, baseType: !3514, size: 256, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3549, file: !3493, line: 54, baseType: !180, size: 64, offset: 576)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3549, file: !3493, line: 55, baseType: !3548, size: 64, offset: 640)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3549, file: !3493, line: 56, baseType: !20, size: 32, offset: 704)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3549, file: !3493, line: 57, baseType: !20, size: 32, offset: 736)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3498, file: !3493, line: 40, baseType: !180, size: 64, offset: 2496)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3498, file: !3493, line: 42, baseType: !20, size: 32, offset: 2560)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3498, file: !3493, line: 43, baseType: !3491, size: 64, offset: 2624)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3492, file: !3493, line: 99, baseType: !3562, offset: 128)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3563, line: 211, elements: !957)
!3563 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3492, file: !3493, line: 100, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3493, line: 63, size: 3008, elements: !3567)
!3567 = !{!3568, !3569, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3599}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3566, file: !3493, line: 64, baseType: !3548, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3566, file: !3493, line: 65, baseType: !3570, size: 192, offset: 64)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3548, size: 192, elements: !191)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3566, file: !3493, line: 67, baseType: !20, size: 32, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3566, file: !3493, line: 68, baseType: !1906, size: 256, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3566, file: !3493, line: 69, baseType: !1861, size: 32, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3566, file: !3493, line: 70, baseType: !1906, size: 256, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3566, file: !3493, line: 71, baseType: !180, size: 64, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3566, file: !3493, line: 72, baseType: !180, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3566, file: !3493, line: 73, baseType: !180, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3566, file: !3493, line: 74, baseType: !180, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3566, file: !3493, line: 75, baseType: !180, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3566, file: !3493, line: 76, baseType: !180, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3566, file: !3493, line: 77, baseType: !180, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3566, file: !3493, line: 78, baseType: !180, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3566, file: !3493, line: 79, baseType: !574, size: 8, offset: 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3566, file: !3493, line: 80, baseType: !180, size: 64, offset: 1472)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3566, file: !3493, line: 81, baseType: !1906, size: 256, offset: 1536)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3566, file: !3493, line: 82, baseType: !2716, size: 256, offset: 1792)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3566, file: !3493, line: 84, baseType: !1517, size: 32, offset: 2048)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3566, file: !3493, line: 87, baseType: !180, size: 64, offset: 2112)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3566, file: !3493, line: 88, baseType: !180, size: 64, offset: 2176)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3566, file: !3493, line: 89, baseType: !3591, size: 704, offset: 2240)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !3536, line: 111, size: 704, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3598}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3591, file: !3536, line: 112, baseType: !3535, size: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3591, file: !3536, line: 113, baseType: !3523, size: 320, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3591, file: !3536, line: 116, baseType: !3596, size: 64, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !3536, line: 18, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3591, file: !3536, line: 117, baseType: !20, size: 32, offset: 640)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3566, file: !3493, line: 90, baseType: !3491, size: 64, offset: 2944)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2495, file: !37, line: 515, baseType: !3601, size: 64, offset: 8064)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3603, line: 117, size: 128, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3604 = !{!3605, !3606, !3607}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3602, file: !3603, line: 118, baseType: !2035, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3602, file: !3603, line: 119, baseType: !2035, size: 32, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3602, file: !3603, line: 120, baseType: !181, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2495, file: !37, line: 516, baseType: !14, size: 32, offset: 8128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2495, file: !37, line: 519, baseType: !14, size: 32, offset: 8160)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2495, file: !37, line: 520, baseType: !3611, size: 64, offset: 8192)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2495, file: !37, line: 523, baseType: !3613, size: 64, offset: 8256)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !37, line: 523, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2495, file: !37, line: 524, baseType: !14, size: 32, offset: 8320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2495, file: !37, line: 525, baseType: !3618, size: 64, offset: 8384)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !37, line: 525, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2495, file: !37, line: 526, baseType: !14, size: 32, offset: 8448)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2495, file: !37, line: 533, baseType: !177, size: 64, offset: 8512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2495, file: !37, line: 534, baseType: !14, size: 32, offset: 8576)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2495, file: !37, line: 535, baseType: !3625, size: 64, offset: 8640)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2495, file: !37, line: 536, baseType: !14, size: 32, offset: 8704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2495, file: !37, line: 539, baseType: !20, size: 32, offset: 8736)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2495, file: !37, line: 540, baseType: !3629, size: 64, offset: 8768)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3631, line: 32, size: 64, elements: !3632)
!3631 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3630, file: !3631, line: 33, baseType: !2035, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3630, file: !3631, line: 34, baseType: !2035, size: 32, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2495, file: !37, line: 563, baseType: !1573, size: 128, offset: 8832)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2495, file: !37, line: 565, baseType: !1573, size: 128, offset: 8960)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2495, file: !37, line: 568, baseType: !3638, size: 64, offset: 9088)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2495, file: !37, line: 570, baseType: !1517, size: 32, offset: 9152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2470, file: !81, line: 2382, baseType: !2469, size: 64, offset: 448)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !2470, file: !81, line: 2383, baseType: !1954, size: 64, offset: 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !2470, file: !81, line: 2385, baseType: !3645, offset: 576)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3563, line: 206, elements: !957)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !2470, file: !81, line: 2386, baseType: !3645, offset: 576)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !2470, file: !81, line: 2387, baseType: !3645, offset: 576)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !2470, file: !81, line: 2388, baseType: !3649, offset: 576)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3645, elements: !191)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !2470, file: !81, line: 2390, baseType: !3645, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !2470, file: !81, line: 2391, baseType: !3645, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !2470, file: !81, line: 2392, baseType: !3645, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !2470, file: !81, line: 2393, baseType: !3645, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !2461, file: !81, line: 1197, baseType: !3655, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !81, line: 2057, size: 1664, elements: !3658)
!3658 = !{!3659, !3663, !3667, !3668, !3672, !3676, !3680, !3681, !3682, !3686, !3690, !3694, !3695, !3696, !3702, !3706, !3707, !3711, !3712, !3713, !3714, !3718, !3722, !3769, !3784, !3785}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3657, file: !81, line: 2058, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!2252, !2460}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3657, file: !81, line: 2059, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !2252}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3657, file: !81, line: 2060, baseType: !3664, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3657, file: !81, line: 2062, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !2252, !20}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3657, file: !81, line: 2063, baseType: !3673, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!20, !2252, !2928}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3657, file: !81, line: 2064, baseType: !3677, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!20, !2252}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3657, file: !81, line: 2065, baseType: !3664, size: 64, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3657, file: !81, line: 2066, baseType: !2490, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3657, file: !81, line: 2067, baseType: !3683, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!20, !2460, !20}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3657, file: !81, line: 2068, baseType: !3687, size: 64, offset: 576)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!20, !2460, !80}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3657, file: !81, line: 2069, baseType: !3691, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!20, !2460}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3657, file: !81, line: 2070, baseType: !3687, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3657, file: !81, line: 2071, baseType: !3691, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3657, file: !81, line: 2072, baseType: !3697, size: 64, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!20, !2217, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !81, line: 62, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3657, file: !81, line: 2073, baseType: !3703, size: 64, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!20, !2460, !500, !18}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3657, file: !81, line: 2074, baseType: !2490, size: 64, offset: 960)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3657, file: !81, line: 2076, baseType: !3708, size: 64, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!20, !3209, !2217}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3657, file: !81, line: 2077, baseType: !3708, size: 64, offset: 1088)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3657, file: !81, line: 2078, baseType: !3708, size: 64, offset: 1152)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3657, file: !81, line: 2079, baseType: !3708, size: 64, offset: 1216)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3657, file: !81, line: 2081, baseType: !3715, size: 64, offset: 1280)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!2405, !2460, !20, !18, !492, !1918}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3657, file: !81, line: 2082, baseType: !3719, size: 64, offset: 1344)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!2405, !2460, !20, !230, !492, !1918}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3657, file: !81, line: 2083, baseType: !3723, size: 64, offset: 1408)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!3726, !2252}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !86, line: 296, size: 1664, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3754, !3755, !3756}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3728, file: !86, line: 297, baseType: !1958, size: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3728, file: !86, line: 298, baseType: !1573, size: 128, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3728, file: !86, line: 299, baseType: !1573, size: 128, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3728, file: !86, line: 300, baseType: !1573, size: 128, offset: 384)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3728, file: !86, line: 301, baseType: !1906, size: 256, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3728, file: !86, line: 302, baseType: !1861, size: 32, offset: 768)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3728, file: !86, line: 303, baseType: !1517, size: 32, offset: 800)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3728, file: !86, line: 304, baseType: !2460, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3728, file: !86, line: 305, baseType: !3739, size: 64, offset: 896)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !86, line: 68, size: 64, elements: !3740)
!3740 = !{!3741, !3753}
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3739, file: !86, line: 69, baseType: !3742, size: 32)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3739, file: !86, line: 69, size: 32, elements: !3743)
!3743 = !{!3744, !3745, !3746}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3742, file: !86, line: 70, baseType: !1984, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3742, file: !86, line: 71, baseType: !2002, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3742, file: !86, line: 72, baseType: !3747, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3748, line: 24, baseType: !3749)
!3748 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3748, line: 22, size: 32, elements: !3750)
!3750 = !{!3751}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3749, file: !3748, line: 23, baseType: !3752, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3748, line: 20, baseType: !1990)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3739, file: !86, line: 74, baseType: !85, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3728, file: !86, line: 306, baseType: !1918, size: 64, offset: 960)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3728, file: !86, line: 307, baseType: !180, size: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3728, file: !86, line: 308, baseType: !3757, size: 576, offset: 1088)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !86, line: 205, size: 576, elements: !3758)
!3758 = !{!3759, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3757, file: !86, line: 206, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !86, line: 66, baseType: !1586)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3757, file: !86, line: 207, baseType: !3760, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3757, file: !86, line: 208, baseType: !3760, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3757, file: !86, line: 209, baseType: !3760, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3757, file: !86, line: 210, baseType: !3760, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3757, file: !86, line: 211, baseType: !3760, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3757, file: !86, line: 212, baseType: !3760, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3757, file: !86, line: 213, baseType: !2059, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3757, file: !86, line: 214, baseType: !2059, size: 64, offset: 512)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3657, file: !81, line: 2085, baseType: !3770, size: 64, offset: 1472)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!181, !2460, !3773}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3775, line: 15, size: 256, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3776 = !{!3777, !3778, !3779, !3780, !3781}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3774, file: !3775, line: 16, baseType: !178, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3774, file: !3775, line: 19, baseType: !20, size: 32, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3774, file: !3775, line: 26, baseType: !180, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3774, file: !3775, line: 33, baseType: !180, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3774, file: !3775, line: 36, baseType: !3782, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !52, line: 33, flags: DIFlagFwdDecl)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3657, file: !81, line: 2087, baseType: !3770, size: 64, offset: 1536)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3657, file: !81, line: 2089, baseType: !2490, size: 64, offset: 1600)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !2461, file: !81, line: 1198, baseType: !3787, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3789)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !86, line: 324, size: 704, elements: !3790)
!3790 = !{!3791, !3795, !3799, !3803, !3804, !3805, !3806, !3807, !3812, !3817, !3821}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3789, file: !86, line: 325, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!20, !3727}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3789, file: !86, line: 326, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!3727, !2460, !20}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3789, file: !86, line: 327, baseType: !3800, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !3727}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3789, file: !86, line: 328, baseType: !3792, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3789, file: !86, line: 329, baseType: !3792, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3789, file: !86, line: 330, baseType: !3792, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3789, file: !86, line: 331, baseType: !3683, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3789, file: !86, line: 334, baseType: !3808, size: 64, offset: 448)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!3811, !2252}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3789, file: !86, line: 335, baseType: !3813, size: 64, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!20, !2252, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3789, file: !86, line: 337, baseType: !3818, size: 64, offset: 576)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!20, !2252, !3811}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3789, file: !86, line: 339, baseType: !3822, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!20, !2460, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !2461, file: !81, line: 1199, baseType: !3827, size: 64, offset: 512)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !86, line: 430, size: 704, elements: !3830)
!3830 = !{!3831, !3835, !3836, !3840, !3841, !3842, !3857, !3880, !3884, !3885, !3908}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3829, file: !86, line: 431, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!20, !2460, !20, !20, !2374}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3829, file: !86, line: 432, baseType: !3683, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3829, file: !86, line: 433, baseType: !3837, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!20, !2460, !14}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3829, file: !86, line: 434, baseType: !3837, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3829, file: !86, line: 435, baseType: !3683, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3829, file: !86, line: 436, baseType: !3843, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!20, !2460, !20, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !86, line: 417, size: 256, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3847, file: !86, line: 418, baseType: !20, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3847, file: !86, line: 419, baseType: !14, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3847, file: !86, line: 420, baseType: !14, size: 32, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3847, file: !86, line: 422, baseType: !14, size: 32, offset: 96)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3847, file: !86, line: 423, baseType: !14, size: 32, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3847, file: !86, line: 424, baseType: !14, size: 32, offset: 160)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3847, file: !86, line: 425, baseType: !14, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3847, file: !86, line: 426, baseType: !14, size: 32, offset: 224)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3829, file: !86, line: 437, baseType: !3858, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!20, !2460, !3739, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !86, line: 345, size: 960, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3862, file: !86, line: 346, baseType: !20, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3862, file: !86, line: 347, baseType: !6, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3862, file: !86, line: 348, baseType: !6, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3862, file: !86, line: 349, baseType: !6, size: 64, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3862, file: !86, line: 350, baseType: !6, size: 64, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3862, file: !86, line: 351, baseType: !6, size: 64, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3862, file: !86, line: 352, baseType: !6, size: 64, offset: 384)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3862, file: !86, line: 353, baseType: !1584, size: 64, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3862, file: !86, line: 355, baseType: !1584, size: 64, offset: 512)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3862, file: !86, line: 356, baseType: !20, size: 32, offset: 576)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3862, file: !86, line: 357, baseType: !20, size: 32, offset: 608)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3862, file: !86, line: 358, baseType: !6, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3862, file: !86, line: 359, baseType: !6, size: 64, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3862, file: !86, line: 360, baseType: !6, size: 64, offset: 768)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3862, file: !86, line: 361, baseType: !1584, size: 64, offset: 832)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3862, file: !86, line: 362, baseType: !20, size: 32, offset: 896)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3829, file: !86, line: 438, baseType: !3881, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!20, !2460, !3825, !3861}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3829, file: !86, line: 440, baseType: !3858, size: 64, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3829, file: !86, line: 441, baseType: !3886, size: 64, offset: 576)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!20, !2460, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !86, line: 411, size: 1408, elements: !3891)
!3891 = !{!3892, !3893}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3890, file: !86, line: 412, baseType: !14, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3890, file: !86, line: 413, baseType: !3894, size: 1344, offset: 64)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3895, size: 1344, elements: !191)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !86, line: 397, size: 448, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3907}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !86, line: 398, baseType: !14, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3895, file: !86, line: 399, baseType: !14, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3895, file: !86, line: 401, baseType: !14, size: 32, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3895, file: !86, line: 402, baseType: !14, size: 32, offset: 96)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3895, file: !86, line: 403, baseType: !14, size: 32, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3895, file: !86, line: 404, baseType: !14, size: 32, offset: 160)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3895, file: !86, line: 405, baseType: !14, size: 32, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3895, file: !86, line: 406, baseType: !10, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3895, file: !86, line: 407, baseType: !3906, size: 64, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 132, baseType: !6)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3895, file: !86, line: 408, baseType: !3906, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3829, file: !86, line: 442, baseType: !3837, size: 64, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !2461, file: !81, line: 1200, baseType: !3910, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3912)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !81, line: 54, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !2461, file: !81, line: 1201, baseType: !180, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !2461, file: !81, line: 1202, baseType: !180, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !2461, file: !81, line: 1203, baseType: !180, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !2461, file: !81, line: 1204, baseType: !2217, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !2461, file: !81, line: 1205, baseType: !2043, size: 320, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !2461, file: !81, line: 1206, baseType: !20, size: 32, offset: 1216)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !2461, file: !81, line: 1207, baseType: !1517, size: 32, offset: 1248)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !2461, file: !81, line: 1209, baseType: !177, size: 64, offset: 1280)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !2461, file: !81, line: 1211, baseType: !3922, size: 64, offset: 1344)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!3925 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !81, line: 1211, flags: DIFlagFwdDecl)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !2461, file: !81, line: 1223, baseType: !3927, size: 64, offset: 1408)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !2229, line: 34, size: 64, elements: !3928)
!3928 = !{!3929}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3927, file: !2229, line: 35, baseType: !2232, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !2461, file: !81, line: 1224, baseType: !1573, size: 128, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !2461, file: !81, line: 1225, baseType: !3932, size: 64, offset: 1600)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !81, line: 1225, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !2461, file: !81, line: 1226, baseType: !3935, size: 64, offset: 1664)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !81, line: 1226, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !2461, file: !81, line: 1227, baseType: !3938, size: 64, offset: 1728)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !81, line: 50, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !2461, file: !81, line: 1228, baseType: !3941, size: 64, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !81, line: 1228, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !2461, file: !81, line: 1229, baseType: !1958, size: 128, offset: 1856)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !2461, file: !81, line: 1230, baseType: !14, size: 32, offset: 1984)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !2461, file: !81, line: 1231, baseType: !3946, size: 2496, offset: 2048)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !86, line: 521, size: 2496, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3952, !3984}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3946, file: !86, line: 522, baseType: !14, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3946, file: !86, line: 523, baseType: !2043, size: 320, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3946, file: !86, line: 524, baseType: !3951, size: 192, offset: 384)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2252, size: 192, elements: !191)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3946, file: !86, line: 525, baseType: !3953, size: 1728, offset: 576)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3954, size: 1728, elements: !191)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !86, line: 222, size: 576, elements: !3955)
!3955 = !{!3956, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3954, file: !86, line: 223, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !86, line: 445, size: 256, elements: !3959)
!3959 = !{!3960, !3961, !3974, !3975}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3958, file: !86, line: 446, baseType: !20, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3958, file: !86, line: 447, baseType: !3962, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !86, line: 312, size: 512, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3964, file: !86, line: 313, baseType: !3683, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3964, file: !86, line: 314, baseType: !3683, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3964, file: !86, line: 315, baseType: !3683, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3964, file: !86, line: 316, baseType: !3683, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3964, file: !86, line: 317, baseType: !3792, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3964, file: !86, line: 318, baseType: !3792, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3964, file: !86, line: 319, baseType: !3792, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3964, file: !86, line: 320, baseType: !3822, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3958, file: !86, line: 448, baseType: !2494, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3958, file: !86, line: 449, baseType: !3957, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3954, file: !86, line: 224, baseType: !20, size: 32, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3954, file: !86, line: 226, baseType: !1573, size: 128, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3954, file: !86, line: 227, baseType: !180, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3954, file: !86, line: 228, baseType: !14, size: 32, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3954, file: !86, line: 229, baseType: !14, size: 32, offset: 352)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3954, file: !86, line: 230, baseType: !3760, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3954, file: !86, line: 231, baseType: !3760, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3954, file: !86, line: 232, baseType: !177, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3946, file: !86, line: 526, baseType: !3985, size: 192, offset: 2304)
!3985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3962, size: 192, elements: !191)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !2461, file: !81, line: 1233, baseType: !3987, size: 2368, offset: 4544)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !81, line: 1184, size: 2368, elements: !3988)
!3988 = !{!3989, !3990, !3991}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3987, file: !81, line: 1185, baseType: !1542, size: 16)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3987, file: !81, line: 1186, baseType: !1542, size: 16, offset: 16)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3987, file: !81, line: 1187, baseType: !3992, size: 2304, offset: 64)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3993, size: 2304, elements: !191)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3994, line: 12, size: 768, elements: !3995)
!3994 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3995 = !{!3996, !4004, !4005, !4010, !4011}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3993, file: !3994, line: 13, baseType: !3997, size: 384)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3998, line: 17, size: 384, elements: !3999)
!3998 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3997, file: !3998, line: 18, baseType: !20, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3997, file: !3998, line: 19, baseType: !20, size: 32, offset: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3997, file: !3998, line: 20, baseType: !1965, size: 192, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3997, file: !3998, line: 22, baseType: !1886, size: 128, align: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3993, file: !3994, line: 14, baseType: !3379, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3993, file: !3994, line: 15, baseType: !4006, size: 64, offset: 448)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4007, line: 16, size: 64, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4008 = !{!4009}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4006, file: !4007, line: 17, baseType: !1497, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3993, file: !3994, line: 16, baseType: !1965, size: 192, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3993, file: !3994, line: 17, baseType: !1517, size: 32, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !2461, file: !81, line: 1240, baseType: !177, size: 64, offset: 6912)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !2461, file: !81, line: 1243, baseType: !175, size: 32, offset: 6976)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !2461, file: !81, line: 1245, baseType: !2059, size: 64, offset: 7040)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !2461, file: !81, line: 1246, baseType: !2059, size: 64, offset: 7104)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !2461, file: !81, line: 1248, baseType: !176, size: 32, offset: 7168)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !2461, file: !81, line: 1249, baseType: !4018, size: 64, offset: 7232)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !81, line: 634, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !2461, file: !81, line: 1252, baseType: !4021, size: 256, offset: 7296)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !4022)
!4022 = !{!4023}
!4023 = !DISubrange(count: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !2461, file: !81, line: 1253, baseType: !4025, size: 128, offset: 7552)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4026, line: 21, baseType: !4027)
!4026 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4026, line: 19, size: 128, elements: !4028)
!4028 = !{!4029}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4027, file: !4026, line: 20, baseType: !4030, size: 128)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 128, elements: !4031)
!4031 = !{!4032}
!4032 = !DISubrange(count: 16)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !2461, file: !81, line: 1255, baseType: !14, size: 32, offset: 7680)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !2461, file: !81, line: 1261, baseType: !1906, size: 256, offset: 7744)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !2461, file: !81, line: 1267, baseType: !230, size: 64, offset: 8000)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !2461, file: !81, line: 1269, baseType: !4037, size: 64, offset: 8064)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4039)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !2219, line: 128, size: 1024, align: 512, elements: !4040)
!4040 = !{!4041, !4045, !4046, !4053, !4059, !4063, !4067, !4071, !4072, !4076, !4080, !4085, !4089}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4039, file: !2219, line: 129, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!20, !2217, !14}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4039, file: !2219, line: 130, baseType: !4042, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4039, file: !2219, line: 131, baseType: !4047, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!20, !4050, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4039, file: !2219, line: 132, baseType: !4054, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!20, !4050, !14, !230, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2237)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4039, file: !2219, line: 134, baseType: !4060, size: 64, offset: 256)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!20, !4050}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4039, file: !2219, line: 135, baseType: !4064, size: 64, offset: 320)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!20, !2217}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4039, file: !2219, line: 136, baseType: !4068, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !2217}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4039, file: !2219, line: 137, baseType: !4068, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4039, file: !2219, line: 138, baseType: !4073, size: 64, offset: 512)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !2217, !2252}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4039, file: !2219, line: 139, baseType: !4077, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!18, !2217, !18, !20}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4039, file: !2219, line: 140, baseType: !4081, size: 64, offset: 640)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!2212, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4039, file: !2219, line: 141, baseType: !4086, size: 64, offset: 704)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!20, !2374, !574}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4039, file: !2219, line: 142, baseType: !4090, size: 64, offset: 768)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!2217, !2217, !4093}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2253)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !2461, file: !81, line: 1271, baseType: !4096, size: 448, offset: 8128)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3775, line: 63, size: 448, elements: !4097)
!4097 = !{!4098, !4103, !4104, !4105, !4106, !4107, !4108}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4096, file: !3775, line: 64, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!180, !4102, !3773}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4096, file: !3775, line: 66, baseType: !4099, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4096, file: !3775, line: 69, baseType: !181, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4096, file: !3775, line: 70, baseType: !20, size: 32, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4096, file: !3775, line: 71, baseType: !14, size: 32, offset: 224)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4096, file: !3775, line: 74, baseType: !1573, size: 128, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4096, file: !3775, line: 85, baseType: !4109, size: 64, offset: 384)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !2461, file: !81, line: 1274, baseType: !1899, size: 64, offset: 8576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !2461, file: !81, line: 1280, baseType: !1899, size: 64, offset: 8640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !2461, file: !81, line: 1283, baseType: !20, size: 32, offset: 8704)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !2461, file: !81, line: 1286, baseType: !3108, size: 32, offset: 8736)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !2461, file: !81, line: 1289, baseType: !3596, size: 64, offset: 8768)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !2461, file: !81, line: 1290, baseType: !1954, size: 64, offset: 8832)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !2461, file: !81, line: 1297, baseType: !2179, size: 64, offset: 8896)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !2461, file: !81, line: 1304, baseType: !4118, size: 64, offset: 8960)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4119, line: 49, size: 64, elements: !4120)
!4119 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4120 = !{!4121}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4118, file: !4119, line: 50, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4119, line: 41, size: 512, align: 512, elements: !4124)
!4124 = !{!4125, !4126, !4131}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4123, file: !4119, line: 43, baseType: !1861, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4123, file: !4119, line: 45, baseType: !4127, size: 192, offset: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4119, line: 29, size: 192, elements: !4128)
!4128 = !{!4129, !4130}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4127, file: !4119, line: 30, baseType: !1573, size: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4127, file: !4119, line: 32, baseType: !181, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4123, file: !4119, line: 46, baseType: !181, size: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !2461, file: !81, line: 1305, baseType: !4118, size: 64, offset: 9024)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2461, file: !81, line: 1306, baseType: !1886, size: 128, align: 64, offset: 9088)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2461, file: !81, line: 1307, baseType: !3535, size: 256, offset: 9216)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !2461, file: !81, line: 1309, baseType: !1906, size: 256, offset: 9472)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !2461, file: !81, line: 1314, baseType: !20, size: 32, offset: 9728)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !2461, file: !81, line: 1317, baseType: !1861, size: 32, align: 512, offset: 10240)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !2461, file: !81, line: 1318, baseType: !1573, size: 128, offset: 10304)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !2461, file: !81, line: 1320, baseType: !1861, size: 32, offset: 10432)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !2461, file: !81, line: 1321, baseType: !1573, size: 128, offset: 10496)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !2253, file: !81, line: 656, baseType: !2611, size: 64, offset: 512)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !2253, file: !81, line: 659, baseType: !177, size: 64, offset: 576)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !2253, file: !81, line: 663, baseType: !180, size: 64, offset: 640)
!4144 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !81, line: 671, baseType: !4145, size: 32, offset: 704)
!4145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !81, line: 671, size: 32, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4145, file: !81, line: 672, baseType: !242, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4145, file: !81, line: 673, baseType: !14, size: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !2253, file: !81, line: 675, baseType: !2327, size: 32, offset: 736)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !2253, file: !81, line: 676, baseType: !1918, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !2253, file: !81, line: 677, baseType: !2363, size: 128, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !2253, file: !81, line: 678, baseType: !2363, size: 128, offset: 960)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !2253, file: !81, line: 679, baseType: !2363, size: 128, offset: 1088)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !2253, file: !81, line: 680, baseType: !1861, size: 32, offset: 1216)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !2253, file: !81, line: 681, baseType: !1542, size: 16, offset: 1248)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !2253, file: !81, line: 682, baseType: !744, size: 8, offset: 1264)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !2253, file: !81, line: 683, baseType: !744, size: 8, offset: 1272)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !2253, file: !81, line: 684, baseType: !3906, size: 64, offset: 1280)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !2253, file: !81, line: 691, baseType: !180, size: 64, offset: 1344)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !2253, file: !81, line: 692, baseType: !2043, size: 320, offset: 1408)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !2253, file: !81, line: 694, baseType: !180, size: 64, offset: 1728)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !2253, file: !81, line: 695, baseType: !180, size: 64, offset: 1792)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !2253, file: !81, line: 697, baseType: !1958, size: 128, offset: 1856)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !2253, file: !81, line: 698, baseType: !1573, size: 128, offset: 1984)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !2253, file: !81, line: 707, baseType: !1573, size: 128, offset: 2112)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !2253, file: !81, line: 708, baseType: !1573, size: 128, offset: 2240)
!4167 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !81, line: 709, baseType: !4168, size: 128, offset: 2368)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !81, line: 709, size: 128, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4168, file: !81, line: 710, baseType: !1954, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4168, file: !81, line: 711, baseType: !1886, size: 128, align: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !2253, file: !81, line: 713, baseType: !1901, size: 64, offset: 2496)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !2253, file: !81, line: 714, baseType: !1901, size: 64, offset: 2560)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !2253, file: !81, line: 715, baseType: !1517, size: 32, offset: 2624)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !2253, file: !81, line: 716, baseType: !1517, size: 32, offset: 2656)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !2253, file: !81, line: 717, baseType: !1517, size: 32, offset: 2688)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !2253, file: !81, line: 719, baseType: !1517, size: 32, offset: 2720)
!4178 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !81, line: 721, baseType: !4179, size: 64, offset: 2752)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !81, line: 721, size: 64, elements: !4180)
!4180 = !{!4181, !4307}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4179, file: !81, line: 722, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4184)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !81, line: 1914, size: 2112, elements: !4185)
!4185 = !{!4186, !4187, !4191, !4195, !4199, !4200, !4201, !4207, !4220, !4224, !4228, !4229, !4233, !4234, !4238, !4243, !4244, !4248, !4252, !4258, !4259, !4263, !4264, !4270, !4274, !4275, !4280, !4284, !4288, !4292, !4296, !4297, !4303}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4184, file: !81, line: 1915, baseType: !2494, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4184, file: !81, line: 1916, baseType: !4188, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!1918, !1878, !1918, !20}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4184, file: !81, line: 1917, baseType: !4192, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!2405, !1878, !18, !492, !3233}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4184, file: !81, line: 1918, baseType: !4196, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!2405, !1878, !230, !492, !3233}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4184, file: !81, line: 1919, baseType: !3042, size: 64, offset: 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4184, file: !81, line: 1920, baseType: !3042, size: 64, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4184, file: !81, line: 1921, baseType: !4202, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!20, !3045, !4205, !14}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !81, line: 53, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4184, file: !81, line: 1923, baseType: !4208, size: 64, offset: 448)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!20, !1878, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !81, line: 1858, size: 128, elements: !4213)
!4213 = !{!4214, !4219}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4212, file: !81, line: 1859, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !81, line: 1855, baseType: !4216)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!574, !4211, !230, !20, !1918, !6, !14}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4212, file: !81, line: 1860, baseType: !1918, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4184, file: !81, line: 1924, baseType: !4221, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!3253, !1878, !3255}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4184, file: !81, line: 1925, baseType: !4225, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!181, !1878, !14, !180}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4184, file: !81, line: 1926, baseType: !4225, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4184, file: !81, line: 1927, baseType: !4230, size: 64, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!20, !1878, !2751}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4184, file: !81, line: 1928, baseType: !180, size: 64, offset: 768)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4184, file: !81, line: 1929, baseType: !4235, size: 64, offset: 832)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!20, !2252, !1878}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4184, file: !81, line: 1930, baseType: !4239, size: 64, offset: 896)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!20, !1878, !4242}
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !81, line: 1061, baseType: !177)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4184, file: !81, line: 1931, baseType: !4235, size: 64, offset: 960)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4184, file: !81, line: 1932, baseType: !4245, size: 64, offset: 1024)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!20, !1878, !1918, !1918, !20}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4184, file: !81, line: 1933, baseType: !4249, size: 64, offset: 1088)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!20, !20, !1878, !20}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4184, file: !81, line: 1934, baseType: !4253, size: 64, offset: 1152)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!20, !1878, !20, !4256}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !81, line: 1063, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4184, file: !81, line: 1935, baseType: !1875, size: 64, offset: 1216)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4184, file: !81, line: 1936, baseType: !4260, size: 64, offset: 1280)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!20, !20}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4184, file: !81, line: 1937, baseType: !4253, size: 64, offset: 1344)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4184, file: !81, line: 1938, baseType: !4265, size: 64, offset: 1408)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!2405, !4268, !1878, !3233, !492, !14}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1499, line: 59, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4184, file: !81, line: 1939, baseType: !4271, size: 64, offset: 1472)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!2405, !1878, !3233, !4268, !492, !14}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4184, file: !81, line: 1940, baseType: !3098, size: 64, offset: 1536)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4184, file: !81, line: 1941, baseType: !4276, size: 64, offset: 1600)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!20, !1878, !20, !4279, !3019}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4184, file: !81, line: 1942, baseType: !4281, size: 64, offset: 1664)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!181, !1878, !20, !1918, !1918}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4184, file: !81, line: 1944, baseType: !4285, size: 64, offset: 1728)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{null, !3209, !1878}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4184, file: !81, line: 1948, baseType: !4289, size: 64, offset: 1792)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!2405, !1878, !1918, !1878, !1918, !492, !14}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4184, file: !81, line: 1950, baseType: !4293, size: 64, offset: 1856)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!1918, !1878, !1918, !1878, !1918, !1918, !14}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4184, file: !81, line: 1953, baseType: !4245, size: 64, offset: 1920)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4184, file: !81, line: 1954, baseType: !4298, size: 64, offset: 1984)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!20, !4301, !14}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !81, line: 1911, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4184, file: !81, line: 1955, baseType: !4304, size: 64, offset: 2048)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!20, !4301, !4205, !14}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4179, file: !81, line: 723, baseType: !3664, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !2253, file: !81, line: 725, baseType: !4309, size: 64, offset: 2816)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !81, line: 725, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !2253, file: !81, line: 726, baseType: !2612, size: 1536, align: 64, offset: 2880)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !2253, file: !81, line: 727, baseType: !1573, size: 128, offset: 4416)
!4313 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !81, line: 728, baseType: !4314, size: 64, offset: 4544)
!4314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !81, line: 728, size: 64, elements: !4315)
!4315 = !{!4316, !4317, !4320, !4321}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4314, file: !81, line: 729, baseType: !4268, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4314, file: !81, line: 730, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !81, line: 730, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4314, file: !81, line: 731, baseType: !18, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4314, file: !81, line: 732, baseType: !14, size: 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !2253, file: !81, line: 735, baseType: !176, size: 32, offset: 4608)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !2253, file: !81, line: 738, baseType: !176, size: 32, offset: 4640)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !2253, file: !81, line: 739, baseType: !4018, size: 64, offset: 4672)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !2253, file: !81, line: 750, baseType: !177, size: 64, offset: 4736)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !2218, file: !2219, line: 91, baseType: !4327, size: 256, offset: 448)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !4022)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !2218, file: !2219, line: 94, baseType: !4329, size: 64, offset: 704)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4330, line: 25, size: 64, elements: !4331)
!4330 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4331 = !{!4332}
!4332 = !DIDerivedType(tag: DW_TAG_member, scope: !4329, file: !4330, line: 26, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4329, file: !4330, line: 26, size: 64, elements: !4334)
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4333, file: !4330, line: 28, baseType: !8, size: 64, align: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, scope: !4333, file: !4330, line: 30, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4333, file: !4330, line: 30, size: 64, elements: !4338)
!4338 = !{!4339, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4337, file: !4330, line: 31, baseType: !1861, size: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4337, file: !4330, line: 32, baseType: !20, size: 32, offset: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !2218, file: !2219, line: 95, baseType: !4037, size: 64, offset: 768)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !2218, file: !2219, line: 96, baseType: !2460, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !2218, file: !2219, line: 97, baseType: !180, size: 64, offset: 896)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !2218, file: !2219, line: 98, baseType: !177, size: 64, offset: 960)
!4345 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !2219, line: 100, baseType: !4346, size: 128, offset: 1024)
!4346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !2219, line: 100, size: 128, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4346, file: !2219, line: 101, baseType: !1573, size: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4346, file: !2219, line: 102, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !2218, file: !2219, line: 104, baseType: !1573, size: 128, offset: 1152)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !2218, file: !2219, line: 105, baseType: !1573, size: 128, offset: 1280)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !2218, file: !2219, line: 113, baseType: !4354, size: 128, offset: 1408)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !2219, line: 109, size: 128, elements: !4355)
!4355 = !{!4356, !4357, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4354, file: !2219, line: 110, baseType: !1958, size: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4354, file: !2219, line: 111, baseType: !2228, size: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4354, file: !2219, line: 112, baseType: !1886, size: 128, align: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !2213, file: !2214, line: 72, baseType: !2460, size: 64, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !2213, file: !2214, line: 73, baseType: !20, size: 32, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !2213, file: !2214, line: 74, baseType: !2292, size: 64, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2208, file: !2209, line: 10, baseType: !2217, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1879, file: !81, line: 1015, baseType: !2252, size: 64, offset: 1344)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1879, file: !81, line: 1016, baseType: !4182, size: 64, offset: 1408)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1879, file: !81, line: 1018, baseType: !6, size: 64, offset: 1472)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1879, file: !81, line: 1020, baseType: !177, size: 64, offset: 1536)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1879, file: !81, line: 1023, baseType: !177, size: 64, offset: 1600)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1879, file: !81, line: 1027, baseType: !4369, size: 64, offset: 1664)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1879, file: !81, line: 1029, baseType: !2611, size: 64, offset: 1728)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1879, file: !81, line: 1030, baseType: !3108, size: 32, offset: 1792)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1879, file: !81, line: 1031, baseType: !3108, size: 32, offset: 1824)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1847, file: !52, line: 756, baseType: !180, size: 64, offset: 704)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1847, file: !52, line: 757, baseType: !180, size: 64, offset: 768)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1847, file: !52, line: 760, baseType: !180, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1847, file: !52, line: 761, baseType: !180, size: 64, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1847, file: !52, line: 763, baseType: !180, size: 64, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1847, file: !52, line: 764, baseType: !4379, size: 64, offset: 1024)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2766, line: 299, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2766, line: 299, size: 64, elements: !4382)
!4382 = !{!4383}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4381, file: !2766, line: 299, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2771, line: 18, baseType: !180)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1847, file: !52, line: 773, baseType: !1517, size: 32, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1847, file: !52, line: 785, baseType: !1517, size: 32, offset: 1120)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1847, file: !52, line: 795, baseType: !4388, size: 64, offset: 1152)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !4390)
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4389, file: !52, line: 727, baseType: !6, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4389, file: !52, line: 728, baseType: !20, size: 32, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1847, file: !52, line: 801, baseType: !180, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1847, file: !52, line: 804, baseType: !1899, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1847, file: !52, line: 806, baseType: !20, size: 32, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1847, file: !52, line: 808, baseType: !1861, size: 32, offset: 1376)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1847, file: !52, line: 823, baseType: !2043, size: 320, offset: 1408)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1847, file: !52, line: 825, baseType: !1573, size: 128, offset: 1728)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1847, file: !52, line: 845, baseType: !20, size: 32, offset: 1856)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1847, file: !52, line: 849, baseType: !180, size: 64, offset: 1920)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1847, file: !52, line: 850, baseType: !180, size: 64, offset: 1984)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1847, file: !52, line: 852, baseType: !180, size: 64, offset: 2048)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1847, file: !52, line: 853, baseType: !180, size: 64, offset: 2112)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1847, file: !52, line: 854, baseType: !1901, size: 64, offset: 2176)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1847, file: !52, line: 855, baseType: !180, size: 64, offset: 2240)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1847, file: !52, line: 856, baseType: !180, size: 64, offset: 2304)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1847, file: !52, line: 857, baseType: !180, size: 64, offset: 2368)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1847, file: !52, line: 858, baseType: !180, size: 64, offset: 2432)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1847, file: !52, line: 865, baseType: !1717, size: 32, offset: 2496)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1847, file: !52, line: 867, baseType: !1861, size: 32, offset: 2528)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1847, file: !52, line: 869, baseType: !180, size: 64, offset: 2560)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1847, file: !52, line: 869, baseType: !180, size: 64, offset: 2624)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1847, file: !52, line: 869, baseType: !180, size: 64, offset: 2688)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1847, file: !52, line: 869, baseType: !180, size: 64, offset: 2752)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1847, file: !52, line: 870, baseType: !180, size: 64, offset: 2816)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1847, file: !52, line: 870, baseType: !180, size: 64, offset: 2880)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1847, file: !52, line: 870, baseType: !180, size: 64, offset: 2944)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1847, file: !52, line: 871, baseType: !180, size: 64, offset: 3008)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1847, file: !52, line: 871, baseType: !180, size: 64, offset: 3072)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1847, file: !52, line: 871, baseType: !180, size: 64, offset: 3136)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1847, file: !52, line: 871, baseType: !180, size: 64, offset: 3200)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1847, file: !52, line: 873, baseType: !4423, size: 3328, offset: 3264)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 3328, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 52)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1847, file: !52, line: 875, baseType: !4427, size: 1280, offset: 6592)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2154, size: 1280, elements: !210)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1847, file: !52, line: 877, baseType: !4429, size: 64, offset: 7872)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1847, file: !52, line: 880, baseType: !4432, size: 1088, offset: 7936)
!4432 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4433, line: 72, baseType: !4434)
!4433 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4433, line: 23, size: 1088, elements: !4435)
!4435 = !{!4436, !4437, !4438, !4439, !4440, !4443, !4444, !4445, !4446, !4471, !4472, !4473}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4434, file: !4433, line: 28, baseType: !6, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4434, file: !4433, line: 38, baseType: !1901, size: 64, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4434, file: !4433, line: 40, baseType: !180, size: 64, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4434, file: !4433, line: 43, baseType: !2043, size: 320, offset: 192)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4434, file: !4433, line: 44, baseType: !4441, size: 64, offset: 512)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4433, line: 44, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4434, file: !4433, line: 48, baseType: !180, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4434, file: !4433, line: 59, baseType: !1906, size: 256, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4434, file: !4433, line: 60, baseType: !177, size: 64, offset: 896)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4434, file: !4433, line: 61, baseType: !4447, size: 64, offset: 960)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4449)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4450, line: 13, size: 1216, elements: !4451)
!4450 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4449, file: !4450, line: 14, baseType: !177, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4449, file: !4450, line: 15, baseType: !180, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4449, file: !4450, line: 17, baseType: !180, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4449, file: !4450, line: 17, baseType: !180, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4449, file: !4450, line: 18, baseType: !180, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4449, file: !4450, line: 18, baseType: !180, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4449, file: !4450, line: 19, baseType: !568, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4449, file: !4450, line: 21, baseType: !181, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4449, file: !4450, line: 23, baseType: !181, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4449, file: !4450, line: 24, baseType: !181, size: 64, offset: 576)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4449, file: !4450, line: 25, baseType: !181, size: 64, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4449, file: !4450, line: 26, baseType: !181, size: 64, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4449, file: !4450, line: 27, baseType: !181, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4449, file: !4450, line: 28, baseType: !181, size: 64, offset: 832)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4449, file: !4450, line: 29, baseType: !181, size: 64, offset: 896)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4449, file: !4450, line: 30, baseType: !181, size: 64, offset: 960)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4449, file: !4450, line: 31, baseType: !181, size: 64, offset: 1024)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4449, file: !4450, line: 32, baseType: !181, size: 64, offset: 1088)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4449, file: !4450, line: 33, baseType: !181, size: 64, offset: 1152)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4434, file: !4433, line: 63, baseType: !1517, size: 32, offset: 1024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4434, file: !4433, line: 69, baseType: !1540, size: 16, offset: 1056)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4434, file: !4433, line: 70, baseType: !3429, size: 16, offset: 1072)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1847, file: !52, line: 882, baseType: !180, size: 64, offset: 9024)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1847, file: !52, line: 885, baseType: !1861, size: 32, offset: 9088)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1847, file: !52, line: 886, baseType: !4477, size: 64, offset: 9152)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1847, file: !52, line: 901, baseType: !2179, size: 64, offset: 9216)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1847, file: !52, line: 904, baseType: !1878, size: 64, offset: 9280)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1847, file: !52, line: 906, baseType: !4482, size: 64, offset: 9344)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1847, file: !52, line: 930, baseType: !1517, size: 32, offset: 9408)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1847, file: !52, line: 933, baseType: !1517, size: 32, offset: 9440)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1847, file: !52, line: 935, baseType: !4487, size: 64, offset: 9472)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !98, line: 103, size: 64, elements: !4488)
!4488 = !{!4489}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4487, file: !98, line: 104, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !98, line: 101, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1847, file: !52, line: 940, baseType: !1899, size: 64, offset: 9536)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1847, file: !52, line: 942, baseType: !3535, size: 256, offset: 9600)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1844, file: !52, line: 986, baseType: !4495, offset: 10240)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !1980)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1498, file: !1499, line: 882, baseType: !1843, size: 64, offset: 9792)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1498, file: !1499, line: 884, baseType: !20, size: 32, offset: 9856)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1498, file: !1499, line: 885, baseType: !20, size: 32, offset: 9888)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1498, file: !1499, line: 886, baseType: !20, size: 32, offset: 9920)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1498, file: !1499, line: 888, baseType: !20, size: 32, offset: 9952)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1498, file: !1499, line: 890, baseType: !180, size: 64, offset: 9984)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1498, file: !1499, line: 893, baseType: !14, size: 32, offset: 10048)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1498, file: !1499, line: 896, baseType: !14, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1498, file: !1499, line: 897, baseType: !14, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1498, file: !1499, line: 898, baseType: !14, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1498, file: !1499, line: 899, baseType: !14, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1498, file: !1499, line: 919, baseType: !14, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1498, file: !1499, line: 922, baseType: !14, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1498, file: !1499, line: 923, baseType: !14, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1498, file: !1499, line: 925, baseType: !14, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1498, file: !1499, line: 939, baseType: !14, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1498, file: !1499, line: 941, baseType: !14, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1498, file: !1499, line: 944, baseType: !14, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1498, file: !1499, line: 956, baseType: !14, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1498, file: !1499, line: 962, baseType: !14, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1498, file: !1499, line: 966, baseType: !14, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1498, file: !1499, line: 969, baseType: !180, size: 64, offset: 10176)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1498, file: !1499, line: 971, baseType: !4519, size: 448, offset: 10240)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !92, line: 25, size: 448, elements: !4520)
!4520 = !{!4521, !4522, !4527}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4519, file: !92, line: 26, baseType: !180, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4519, file: !92, line: 27, baseType: !4523, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!181, !4526}
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, scope: !4519, file: !92, line: 28, baseType: !4528, size: 320, offset: 128)
!4528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4519, file: !92, line: 28, size: 320, elements: !4529)
!4529 = !{!4530, !4540, !4565}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4528, file: !92, line: 37, baseType: !4531, size: 320)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4528, file: !92, line: 30, size: 320, elements: !4532)
!4532 = !{!4533, !4535, !4536, !4537, !4538, !4539}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4531, file: !92, line: 31, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4531, file: !92, line: 32, baseType: !175, size: 32, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4531, file: !92, line: 33, baseType: !175, size: 32, offset: 96)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4531, file: !92, line: 34, baseType: !175, size: 32, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4531, file: !92, line: 35, baseType: !6, size: 64, offset: 192)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4531, file: !92, line: 36, baseType: !4534, size: 64, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4528, file: !92, line: 47, baseType: !4541, size: 192)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4528, file: !92, line: 39, size: 192, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4564}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4541, file: !92, line: 40, baseType: !1709, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4541, file: !92, line: 41, baseType: !91, size: 32, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, scope: !4541, file: !92, line: 42, baseType: !4546, size: 64, offset: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4541, file: !92, line: 42, size: 64, elements: !4547)
!4547 = !{!4548, !4556}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4546, file: !92, line: 43, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4551, line: 7, size: 128, elements: !4552)
!4551 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4552 = !{!4553, !4555}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4550, file: !4551, line: 8, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !494, line: 93, baseType: !1586)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4550, file: !4551, line: 9, baseType: !1586, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4546, file: !92, line: 44, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4559, line: 7, size: 64, elements: !4560)
!4559 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4560 = !{!4561, !4563}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4558, file: !4559, line: 8, baseType: !4562, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4559, line: 5, baseType: !2035)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4558, file: !4559, line: 9, baseType: !2035, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4541, file: !92, line: 46, baseType: !6, size: 64, offset: 128)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4528, file: !92, line: 55, baseType: !4566, size: 256)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4528, file: !92, line: 49, size: 256, elements: !4567)
!4567 = !{!4568, !4571, !4572, !4573, !4574}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4566, file: !92, line: 50, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !92, line: 14, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4566, file: !92, line: 51, baseType: !20, size: 32, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4566, file: !92, line: 52, baseType: !20, size: 32, offset: 96)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4566, file: !92, line: 53, baseType: !180, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4566, file: !92, line: 54, baseType: !180, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1498, file: !1499, line: 973, baseType: !4576, size: 32, offset: 10688)
!4576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 27, baseType: !4577)
!4577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !494, line: 28, baseType: !20)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1498, file: !1499, line: 974, baseType: !4576, size: 32, offset: 10720)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1498, file: !1499, line: 978, baseType: !180, size: 64, offset: 10752)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1498, file: !1499, line: 987, baseType: !1497, size: 64, offset: 10816)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1498, file: !1499, line: 990, baseType: !1497, size: 64, offset: 10880)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1498, file: !1499, line: 995, baseType: !1573, size: 128, offset: 10944)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1498, file: !1499, line: 996, baseType: !1573, size: 128, offset: 11072)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1498, file: !1499, line: 997, baseType: !1497, size: 64, offset: 11200)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1498, file: !1499, line: 1005, baseType: !1573, size: 128, offset: 11264)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1498, file: !1499, line: 1006, baseType: !1573, size: 128, offset: 11392)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1498, file: !1499, line: 1009, baseType: !1946, size: 64, offset: 11520)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1498, file: !1499, line: 1010, baseType: !4589, size: 512, offset: 11584)
!4589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1958, size: 512, elements: !210)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1498, file: !1499, line: 1011, baseType: !1573, size: 128, offset: 12096)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1498, file: !1499, line: 1012, baseType: !1573, size: 128, offset: 12224)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1498, file: !1499, line: 1014, baseType: !3290, size: 64, offset: 12352)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1498, file: !1499, line: 1017, baseType: !500, size: 64, offset: 12416)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1498, file: !1499, line: 1020, baseType: !500, size: 64, offset: 12480)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1498, file: !1499, line: 1023, baseType: !177, size: 64, offset: 12544)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1498, file: !1499, line: 1025, baseType: !6, size: 64, offset: 12608)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1498, file: !1499, line: 1026, baseType: !6, size: 64, offset: 12672)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1498, file: !1499, line: 1031, baseType: !6, size: 64, offset: 12736)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1498, file: !1499, line: 1032, baseType: !4600, size: 192, offset: 12800)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1499, line: 324, size: 192, elements: !4601)
!4601 = !{!4602, !4603, !4604}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4600, file: !1499, line: 326, baseType: !6, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4600, file: !1499, line: 327, baseType: !6, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4600, file: !1499, line: 328, baseType: !1666, size: 32, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1498, file: !1499, line: 1041, baseType: !180, size: 64, offset: 12992)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1498, file: !1499, line: 1042, baseType: !180, size: 64, offset: 13056)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1498, file: !1499, line: 1045, baseType: !6, size: 64, offset: 13120)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1498, file: !1499, line: 1048, baseType: !6, size: 64, offset: 13184)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1498, file: !1499, line: 1051, baseType: !180, size: 64, offset: 13248)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1498, file: !1499, line: 1052, baseType: !180, size: 64, offset: 13312)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1498, file: !1499, line: 1055, baseType: !4612, size: 640, offset: 13376)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4613, line: 132, size: 640, elements: !4614)
!4613 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4614 = !{!4615, !4621, !4622}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4612, file: !4613, line: 133, baseType: !4616, size: 576)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4617, size: 576, elements: !191)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4613, line: 117, size: 192, elements: !4618)
!4618 = !{!4619, !4620}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4617, file: !4613, line: 118, baseType: !6, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4617, file: !4613, line: 119, baseType: !1723, size: 128, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4612, file: !4613, line: 134, baseType: !14, size: 32, offset: 576)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4612, file: !4613, line: 135, baseType: !14, size: 32, offset: 608)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1498, file: !1499, line: 1058, baseType: !4624, size: 448, offset: 14016)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4613, line: 144, size: 448, elements: !4625)
!4625 = !{!4626, !4627, !4628}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4624, file: !4613, line: 145, baseType: !1886, size: 128, align: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4624, file: !4613, line: 146, baseType: !1906, size: 256, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4624, file: !4613, line: 147, baseType: !14, size: 32, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1498, file: !1499, line: 1064, baseType: !1994, size: 64, offset: 14464)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1498, file: !1499, line: 1067, baseType: !1994, size: 64, offset: 14528)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1498, file: !1499, line: 1070, baseType: !1994, size: 64, offset: 14592)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1498, file: !1499, line: 1074, baseType: !2027, size: 64, offset: 14656)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1498, file: !1499, line: 1084, baseType: !4634, size: 128, offset: 14720)
!4634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !4031)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1498, file: !1499, line: 1086, baseType: !4636, size: 64, offset: 14848)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1499, line: 55, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1498, file: !1499, line: 1089, baseType: !4639, size: 64, offset: 14912)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4640, line: 12, size: 64, elements: !4641)
!4640 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4641 = !{!4642}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4639, file: !4640, line: 13, baseType: !4643, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4640, line: 8, flags: DIFlagFwdDecl)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1498, file: !1499, line: 1090, baseType: !4646, size: 128, offset: 14976)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4647, line: 13, size: 128, elements: !4648)
!4647 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4648 = !{!4649}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4646, file: !4647, line: 14, baseType: !1573, size: 128)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1498, file: !1499, line: 1097, baseType: !4651, size: 64, offset: 15104)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1499, line: 50, flags: DIFlagFwdDecl)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1498, file: !1499, line: 1100, baseType: !4654, size: 64, offset: 15168)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1499, line: 1100, flags: DIFlagFwdDecl)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1498, file: !1499, line: 1103, baseType: !4657, size: 64, offset: 15232)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1499, line: 53, flags: DIFlagFwdDecl)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1498, file: !1499, line: 1107, baseType: !4660, size: 64, offset: 15296)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1499, line: 56, flags: DIFlagFwdDecl)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1498, file: !1499, line: 1110, baseType: !4663, size: 64, offset: 15360)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4665, line: 93, size: 8768, elements: !4666)
!4665 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4666 = !{!4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4714, !4723, !4724, !4726, !4727, !4728, !4731, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4769, !4770, !4777, !4787, !4790, !4791, !4794, !4795, !4796, !4797, !4798, !4799}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4664, file: !4665, line: 94, baseType: !1512, size: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4664, file: !4665, line: 95, baseType: !1517, size: 32, offset: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4664, file: !4665, line: 96, baseType: !20, size: 32, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4664, file: !4665, line: 97, baseType: !20, size: 32, offset: 96)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4664, file: !4665, line: 98, baseType: !1573, size: 128, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4664, file: !4665, line: 100, baseType: !1965, size: 192, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4664, file: !4665, line: 103, baseType: !1497, size: 64, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4664, file: !4665, line: 106, baseType: !4675, size: 192, offset: 512)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2184, line: 32, size: 192, elements: !4676)
!4676 = !{!4677, !4678}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4675, file: !2184, line: 33, baseType: !1573, size: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4675, file: !2184, line: 34, baseType: !4679, size: 64, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4680, line: 25, baseType: !4681)
!4680 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4680, line: 23, size: 64, elements: !4682)
!4682 = !{!4683}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4681, file: !4680, line: 24, baseType: !1794, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4664, file: !4665, line: 109, baseType: !1954, size: 64, offset: 704)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4664, file: !4665, line: 112, baseType: !20, size: 32, offset: 768)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4664, file: !4665, line: 114, baseType: !20, size: 32, offset: 800)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4664, file: !4665, line: 115, baseType: !1497, size: 64, offset: 832)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4664, file: !4665, line: 118, baseType: !20, size: 32, offset: 896)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4664, file: !4665, line: 119, baseType: !14, size: 32, offset: 928)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4664, file: !4665, line: 121, baseType: !4691, size: 64, offset: 960)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4665, line: 80, size: 448, elements: !4693)
!4693 = !{!4694, !4695, !4701}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4692, file: !4665, line: 81, baseType: !1517, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4692, file: !4665, line: 82, baseType: !4696, size: 128, offset: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4665, line: 75, size: 128, elements: !4697)
!4697 = !{!4698, !4699}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4696, file: !4665, line: 76, baseType: !1497, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4696, file: !4665, line: 77, baseType: !4700, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4692, file: !4665, line: 83, baseType: !2716, size: 256, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4664, file: !4665, line: 132, baseType: !14, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4664, file: !4665, line: 133, baseType: !14, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4664, file: !4665, line: 138, baseType: !14, size: 32, offset: 1056)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4664, file: !4665, line: 139, baseType: !1573, size: 128, offset: 1088)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4664, file: !4665, line: 142, baseType: !1641, size: 512, offset: 1216)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4664, file: !4665, line: 143, baseType: !1649, size: 64, offset: 1728)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4664, file: !4665, line: 150, baseType: !4709, size: 256, offset: 1792)
!4709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4710, size: 256, elements: !186)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4665, line: 38, size: 128, elements: !4711)
!4711 = !{!4712, !4713}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4710, file: !4665, line: 39, baseType: !6, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4710, file: !4665, line: 40, baseType: !6, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4664, file: !4665, line: 156, baseType: !4715, size: 192, offset: 2048)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4665, line: 66, size: 192, elements: !4716)
!4716 = !{!4717}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4715, file: !4665, line: 67, baseType: !4718, size: 192)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4665, line: 47, size: 192, elements: !4719)
!4719 = !{!4720, !4721, !4722}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4718, file: !4665, line: 48, baseType: !1901, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4718, file: !4665, line: 49, baseType: !1901, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4718, file: !4665, line: 50, baseType: !1901, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4664, file: !4665, line: 160, baseType: !4612, size: 640, offset: 2240)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4664, file: !4665, line: 163, baseType: !4725, size: 256, offset: 2880)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, size: 256, elements: !210)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4664, file: !4665, line: 169, baseType: !1946, size: 64, offset: 3136)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4664, file: !4665, line: 172, baseType: !20, size: 32, offset: 3200)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4664, file: !4665, line: 174, baseType: !4729, size: 64, offset: 3264)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4665, line: 174, flags: DIFlagFwdDecl)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4664, file: !4665, line: 185, baseType: !4732, size: 64, offset: 3328)
!4732 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1713, line: 860, baseType: !4733)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1713, line: 853, size: 64, elements: !4734)
!4734 = !{!4735, !4736}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4733, file: !1713, line: 858, baseType: !2223, size: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4733, file: !1713, line: 859, baseType: !1861, size: 32, offset: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4664, file: !4665, line: 186, baseType: !6, size: 64, offset: 3392)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4664, file: !4665, line: 186, baseType: !6, size: 64, offset: 3456)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4664, file: !4665, line: 186, baseType: !6, size: 64, offset: 3520)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4664, file: !4665, line: 186, baseType: !6, size: 64, offset: 3584)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4664, file: !4665, line: 187, baseType: !6, size: 64, offset: 3648)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4664, file: !4665, line: 188, baseType: !6, size: 64, offset: 3712)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4664, file: !4665, line: 189, baseType: !4600, size: 192, offset: 3776)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4664, file: !4665, line: 190, baseType: !180, size: 64, offset: 3968)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4664, file: !4665, line: 190, baseType: !180, size: 64, offset: 4032)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4664, file: !4665, line: 190, baseType: !180, size: 64, offset: 4096)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4664, file: !4665, line: 190, baseType: !180, size: 64, offset: 4160)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4664, file: !4665, line: 191, baseType: !180, size: 64, offset: 4224)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4664, file: !4665, line: 191, baseType: !180, size: 64, offset: 4288)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4664, file: !4665, line: 191, baseType: !180, size: 64, offset: 4352)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4664, file: !4665, line: 191, baseType: !180, size: 64, offset: 4416)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4664, file: !4665, line: 192, baseType: !180, size: 64, offset: 4480)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4664, file: !4665, line: 192, baseType: !180, size: 64, offset: 4544)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4664, file: !4665, line: 192, baseType: !180, size: 64, offset: 4608)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4664, file: !4665, line: 192, baseType: !180, size: 64, offset: 4672)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4664, file: !4665, line: 193, baseType: !180, size: 64, offset: 4736)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4664, file: !4665, line: 193, baseType: !180, size: 64, offset: 4800)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4664, file: !4665, line: 194, baseType: !4759, size: 448, offset: 4864)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4760, line: 12, size: 448, elements: !4761)
!4760 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4761 = !{!4762, !4763, !4764, !4765, !4766, !4767, !4768}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4759, file: !4760, line: 15, baseType: !6, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4759, file: !4760, line: 17, baseType: !6, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4759, file: !4760, line: 19, baseType: !6, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4759, file: !4760, line: 21, baseType: !6, size: 64, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4759, file: !4760, line: 29, baseType: !6, size: 64, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4759, file: !4760, line: 35, baseType: !6, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4759, file: !4760, line: 44, baseType: !6, size: 64, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4664, file: !4665, line: 202, baseType: !10, size: 64, offset: 5312)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4664, file: !4665, line: 213, baseType: !4771, size: 2048, offset: 5376)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4772, size: 2048, elements: !4031)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4773, line: 43, size: 128, elements: !4774)
!4773 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4774 = !{!4775, !4776}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4772, file: !4773, line: 44, baseType: !495, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4772, file: !4773, line: 45, baseType: !495, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4664, file: !4665, line: 216, baseType: !4778, size: 448, offset: 7424)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4665, line: 30, size: 448, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4778, file: !4665, line: 31, baseType: !20, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4778, file: !4665, line: 32, baseType: !181, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4778, file: !4665, line: 33, baseType: !180, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4778, file: !4665, line: 34, baseType: !6, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4778, file: !4665, line: 34, baseType: !6, size: 64, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4778, file: !4665, line: 35, baseType: !180, size: 64, offset: 320)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4778, file: !4665, line: 35, baseType: !180, size: 64, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4664, file: !4665, line: 219, baseType: !4788, size: 64, offset: 7872)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4665, line: 219, flags: DIFlagFwdDecl)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4664, file: !4665, line: 222, baseType: !14, size: 32, offset: 7936)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4664, file: !4665, line: 223, baseType: !4792, size: 64, offset: 8000)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4665, line: 223, flags: DIFlagFwdDecl)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4664, file: !4665, line: 230, baseType: !574, size: 8, offset: 8064)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4664, file: !4665, line: 231, baseType: !2070, size: 16, offset: 8080)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4664, file: !4665, line: 232, baseType: !2070, size: 16, offset: 8096)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4664, file: !4665, line: 234, baseType: !1843, size: 64, offset: 8128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4664, file: !4665, line: 237, baseType: !1906, size: 256, offset: 8192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4664, file: !4665, line: 243, baseType: !2043, size: 320, offset: 8448)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1498, file: !1499, line: 1111, baseType: !4801, size: 64, offset: 15424)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4665, line: 20, size: 16640, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4802, file: !4665, line: 21, baseType: !1861, size: 32)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4802, file: !4665, line: 22, baseType: !1512, size: 32, offset: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4802, file: !4665, line: 23, baseType: !1965, size: 192, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4802, file: !4665, line: 24, baseType: !4808, size: 16384, offset: 256)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4809, size: 16384, elements: !2550)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2184, line: 51, size: 256, elements: !4810)
!4810 = !{!4811}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4809, file: !2184, line: 52, baseType: !4812, size: 256)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2184, line: 37, size: 256, elements: !4813)
!4813 = !{!4814, !4821, !4822, !4826}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4812, file: !2184, line: 39, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4816, line: 83, baseType: !4817)
!4816 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4816, line: 82, baseType: !4819)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !20}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4812, file: !2184, line: 40, baseType: !180, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4812, file: !2184, line: 46, baseType: !4823, size: 64, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4816, line: 86, baseType: !4824)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4816, line: 85, baseType: !3639)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4812, file: !2184, line: 48, baseType: !4679, size: 64, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1498, file: !1499, line: 1112, baseType: !4679, size: 64, offset: 15488)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1498, file: !1499, line: 1113, baseType: !4679, size: 64, offset: 15552)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1498, file: !1499, line: 1115, baseType: !4679, size: 64, offset: 15616)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1498, file: !1499, line: 1116, baseType: !4675, size: 192, offset: 15680)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1498, file: !1499, line: 1117, baseType: !180, size: 64, offset: 15872)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1498, file: !1499, line: 1118, baseType: !492, size: 64, offset: 15936)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1498, file: !1499, line: 1119, baseType: !14, size: 32, offset: 16000)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1498, file: !1499, line: 1121, baseType: !1889, size: 64, offset: 16064)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1498, file: !1499, line: 1125, baseType: !4836, size: 64, offset: 16128)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1499, line: 43, flags: DIFlagFwdDecl)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1498, file: !1499, line: 1127, baseType: !1984, size: 32, offset: 16192)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1498, file: !1499, line: 1128, baseType: !14, size: 32, offset: 16224)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1498, file: !1499, line: 1130, baseType: !4841, size: 128, offset: 16256)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4842, line: 37, size: 128, elements: !4843)
!4842 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4843 = !{!4844, !4845, !4846}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4841, file: !4842, line: 38, baseType: !20, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4841, file: !4842, line: 39, baseType: !1517, size: 32, offset: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4841, file: !4842, line: 40, baseType: !4847, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4842, line: 24, flags: DIFlagFwdDecl)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1498, file: !1499, line: 1131, baseType: !4850, size: 256, offset: 16384)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4851, line: 12, size: 256, elements: !4852)
!4851 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4852 = !{!4853, !4854, !4855, !4856}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4850, file: !4851, line: 13, baseType: !18, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4850, file: !4851, line: 14, baseType: !180, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4850, file: !4851, line: 15, baseType: !180, size: 64, offset: 128)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4850, file: !4851, line: 16, baseType: !574, size: 8, offset: 192)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1498, file: !1499, line: 1134, baseType: !6, size: 64, offset: 16640)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1498, file: !1499, line: 1135, baseType: !6, size: 64, offset: 16704)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1498, file: !1499, line: 1138, baseType: !1861, size: 32, offset: 16768)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1498, file: !1499, line: 1141, baseType: !1666, size: 32, offset: 16800)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1498, file: !1499, line: 1143, baseType: !4862, size: 64, offset: 16832)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1499, line: 735, size: 64, elements: !4863)
!4863 = !{!4864}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4862, file: !1499, line: 736, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1498, file: !1499, line: 1147, baseType: !1726, size: 128, offset: 16896)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1498, file: !1499, line: 1149, baseType: !1497, size: 64, offset: 17024)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1498, file: !1499, line: 1151, baseType: !4869, size: 64, offset: 17088)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1499, line: 1151, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1498, file: !1499, line: 1188, baseType: !177, size: 64, offset: 17152)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1498, file: !1499, line: 1191, baseType: !4873, size: 64, offset: 17216)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1499, line: 44, flags: DIFlagFwdDecl)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1498, file: !1499, line: 1194, baseType: !4876, size: 64, offset: 17280)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1499, line: 45, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1498, file: !1499, line: 1197, baseType: !4879, size: 64, offset: 17344)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1499, line: 61, flags: DIFlagFwdDecl)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1498, file: !1499, line: 1199, baseType: !4882, size: 64, offset: 17408)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4884, line: 99, size: 128, elements: !4885)
!4884 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4885 = !{!4886, !4887, !4888}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4883, file: !4884, line: 100, baseType: !1899, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4883, file: !4884, line: 101, baseType: !1517, size: 32, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4883, file: !4884, line: 103, baseType: !1542, size: 16, offset: 96)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1498, file: !1499, line: 1202, baseType: !4890, size: 64, offset: 17472)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1499, line: 48, flags: DIFlagFwdDecl)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1498, file: !1499, line: 1205, baseType: !180, size: 64, offset: 17536)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1498, file: !1499, line: 1206, baseType: !4894, size: 64, offset: 17600)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2184, line: 14, baseType: !4896)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2184, line: 12, size: 384, elements: !4897)
!4897 = !{!4898}
!4898 = !DIDerivedType(tag: DW_TAG_member, scope: !4896, file: !2184, line: 13, baseType: !4899, size: 384)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4896, file: !2184, line: 13, size: 384, elements: !4900)
!4900 = !{!4901, !4902, !4903, !4904}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4899, file: !2184, line: 13, baseType: !20, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4899, file: !2184, line: 13, baseType: !20, size: 32, offset: 32)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4899, file: !2184, line: 13, baseType: !20, size: 32, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4899, file: !2184, line: 13, baseType: !4905, size: 256, offset: 128)
!4905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4906, line: 37, size: 256, elements: !4907)
!4906 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4907 = !{!4908, !4913, !4926, !4932, !4941, !4967, !4972}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4905, file: !4906, line: 42, baseType: !4909, size: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 39, size: 64, elements: !4910)
!4910 = !{!4911, !4912}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4909, file: !4906, line: 40, baseType: !4577, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4909, file: !4906, line: 41, baseType: !1990, size: 32, offset: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4905, file: !4906, line: 50, baseType: !4914, size: 192)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 45, size: 192, elements: !4915)
!4915 = !{!4916, !4918, !4919, !4925}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4914, file: !4906, line: 46, baseType: !4917, size: 32)
!4917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !494, line: 95, baseType: !20)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4914, file: !4906, line: 47, baseType: !20, size: 32, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4914, file: !4906, line: 48, baseType: !4920, size: 64, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4906, line: 11, baseType: !4921)
!4921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4906, line: 8, size: 64, elements: !4922)
!4922 = !{!4923, !4924}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4921, file: !4906, line: 9, baseType: !20, size: 32)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4921, file: !4906, line: 10, baseType: !177, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4914, file: !4906, line: 49, baseType: !20, size: 32, offset: 128)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4905, file: !4906, line: 57, baseType: !4927, size: 128)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 53, size: 128, elements: !4928)
!4928 = !{!4929, !4930, !4931}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4927, file: !4906, line: 54, baseType: !4577, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4927, file: !4906, line: 55, baseType: !1990, size: 32, offset: 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4927, file: !4906, line: 56, baseType: !4920, size: 64, offset: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4905, file: !4906, line: 66, baseType: !4933, size: 256)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 60, size: 256, elements: !4934)
!4934 = !{!4935, !4936, !4937, !4938, !4940}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4933, file: !4906, line: 61, baseType: !4577, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4933, file: !4906, line: 62, baseType: !1990, size: 32, offset: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4933, file: !4906, line: 63, baseType: !20, size: 32, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4933, file: !4906, line: 64, baseType: !4939, size: 64, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !494, line: 94, baseType: !2407)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4933, file: !4906, line: 65, baseType: !4939, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4905, file: !4906, line: 105, baseType: !4942, size: 256)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 69, size: 256, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4942, file: !4906, line: 70, baseType: !177, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, scope: !4942, file: !4906, line: 79, baseType: !4946, size: 192, offset: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4942, file: !4906, line: 79, size: 192, elements: !4947)
!4947 = !{!4948, !4949, !4950, !4956, !4961}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4946, file: !4906, line: 81, baseType: !20, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4946, file: !4906, line: 86, baseType: !2070, size: 16)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4946, file: !4906, line: 92, baseType: !4951, size: 192)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4946, file: !4906, line: 88, size: 192, elements: !4952)
!4952 = !{!4953, !4954, !4955}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4951, file: !4906, line: 89, baseType: !255, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4951, file: !4906, line: 90, baseType: !177, size: 64, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4951, file: !4906, line: 91, baseType: !177, size: 64, offset: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4946, file: !4906, line: 97, baseType: !4957, size: 96)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4946, file: !4906, line: 94, size: 96, elements: !4958)
!4958 = !{!4959, !4960}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4957, file: !4906, line: 95, baseType: !255, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4957, file: !4906, line: 96, baseType: !176, size: 32, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4946, file: !4906, line: 103, baseType: !4962, size: 128)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4946, file: !4906, line: 99, size: 128, elements: !4963)
!4963 = !{!4964, !4965, !4966}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4962, file: !4906, line: 100, baseType: !180, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4962, file: !4906, line: 101, baseType: !176, size: 32, offset: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4962, file: !4906, line: 102, baseType: !176, size: 32, offset: 96)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4905, file: !4906, line: 111, baseType: !4968, size: 128)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 108, size: 128, elements: !4969)
!4969 = !{!4970, !4971}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4968, file: !4906, line: 109, baseType: !181, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4968, file: !4906, line: 110, baseType: !20, size: 32, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4905, file: !4906, line: 118, baseType: !4973, size: 128)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !4906, line: 114, size: 128, elements: !4974)
!4974 = !{!4975, !4976, !4977}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4973, file: !4906, line: 115, baseType: !177, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4973, file: !4906, line: 116, baseType: !20, size: 32, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4973, file: !4906, line: 117, baseType: !14, size: 32, offset: 96)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1498, file: !1499, line: 1208, baseType: !4759, size: 448, offset: 17664)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1498, file: !1499, line: 1215, baseType: !6, size: 64, offset: 18112)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1498, file: !1499, line: 1217, baseType: !6, size: 64, offset: 18176)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1498, file: !1499, line: 1219, baseType: !6, size: 64, offset: 18240)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1498, file: !1499, line: 1223, baseType: !4983, size: 64, offset: 18304)
!4983 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4984, line: 99, baseType: !4985)
!4984 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4984, line: 99, size: 64, elements: !4986)
!4986 = !{!4987}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4985, file: !4984, line: 99, baseType: !1794, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1498, file: !1499, line: 1225, baseType: !2223, size: 32, offset: 18368)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1498, file: !1499, line: 1226, baseType: !20, size: 32, offset: 18400)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1498, file: !1499, line: 1227, baseType: !20, size: 32, offset: 18432)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1498, file: !1499, line: 1231, baseType: !4992, size: 64, offset: 18496)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1499, line: 1231, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1498, file: !1499, line: 1233, baseType: !1573, size: 128, offset: 18560)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1498, file: !1499, line: 1240, baseType: !4996, size: 64, offset: 18688)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1499, line: 62, flags: DIFlagFwdDecl)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1498, file: !1499, line: 1242, baseType: !4999, size: 64, offset: 18752)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1499, line: 1242, flags: DIFlagFwdDecl)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1498, file: !1499, line: 1244, baseType: !1573, size: 128, offset: 18816)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1498, file: !1499, line: 1245, baseType: !5003, size: 64, offset: 18944)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1499, line: 51, flags: DIFlagFwdDecl)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1498, file: !1499, line: 1246, baseType: !1906, size: 256, offset: 19008)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1498, file: !1499, line: 1247, baseType: !14, size: 32, offset: 19264)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1498, file: !1499, line: 1250, baseType: !5008, size: 64, offset: 19328)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1499, line: 57, flags: DIFlagFwdDecl)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1498, file: !1499, line: 1251, baseType: !1906, size: 256, offset: 19392)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1498, file: !1499, line: 1252, baseType: !1573, size: 128, offset: 19648)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1498, file: !1499, line: 1259, baseType: !2844, size: 64, offset: 19776)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1498, file: !1499, line: 1260, baseType: !2070, size: 16, offset: 19840)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1498, file: !1499, line: 1261, baseType: !2070, size: 16, offset: 19856)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1498, file: !1499, line: 1314, baseType: !5016, size: 64, offset: 19904)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5018, line: 62, size: 256, align: 256, elements: !5019)
!5018 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5019 = !{!5020, !5021, !5022, !5023, !5024, !5025, !5026}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5017, file: !5018, line: 75, baseType: !176, size: 32)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5017, file: !5018, line: 90, baseType: !176, size: 32, offset: 32)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5017, file: !5018, line: 112, baseType: !8, size: 64, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5017, file: !5018, line: 132, baseType: !176, size: 32, offset: 128)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5017, file: !5018, line: 140, baseType: !176, size: 32, offset: 160)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5017, file: !5018, line: 149, baseType: !176, size: 32, offset: 192)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5017, file: !5018, line: 154, baseType: !5027, offset: 224)
!5027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !1980)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1498, file: !1499, line: 1315, baseType: !175, size: 32, offset: 19968)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1498, file: !1499, line: 1316, baseType: !175, size: 32, offset: 20000)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1498, file: !1499, line: 1321, baseType: !180, size: 64, offset: 20032)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1498, file: !1499, line: 1325, baseType: !20, size: 32, offset: 20096)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1498, file: !1499, line: 1326, baseType: !20, size: 32, offset: 20128)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1498, file: !1499, line: 1327, baseType: !20, size: 32, offset: 20160)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1498, file: !1499, line: 1328, baseType: !20, size: 32, offset: 20192)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1498, file: !1499, line: 1329, baseType: !1886, size: 128, align: 64, offset: 20224)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1498, file: !1499, line: 1332, baseType: !5037, size: 128, offset: 20352)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5038, line: 51, size: 128, elements: !5039)
!5038 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5039 = !{!5040, !5045, !5046}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5037, file: !5038, line: 60, baseType: !5041, size: 64)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5042, line: 7, size: 64, elements: !5043)
!5042 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5043 = !{!5044}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5041, file: !5042, line: 12, baseType: !1791, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5037, file: !5038, line: 63, baseType: !574, size: 8, offset: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5037, file: !5038, line: 70, baseType: !574, size: 8, offset: 72)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1498, file: !1499, line: 1335, baseType: !4268, size: 64, offset: 20480)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1498, file: !1499, line: 1337, baseType: !5049, size: 128, offset: 20544)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5038, line: 39, size: 128, elements: !5050)
!5050 = !{!5051, !5052, !5053}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5049, file: !5038, line: 40, baseType: !2631, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5049, file: !5038, line: 42, baseType: !176, size: 32, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5049, file: !5038, line: 43, baseType: !176, size: 32, offset: 96)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1498, file: !1499, line: 1340, baseType: !5055, size: 64, offset: 20672)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1499, line: 69, flags: DIFlagFwdDecl)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1498, file: !1499, line: 1351, baseType: !20, size: 32, offset: 20736)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1498, file: !1499, line: 1352, baseType: !20, size: 32, offset: 20768)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1498, file: !1499, line: 1354, baseType: !180, size: 64, offset: 20800)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1498, file: !1499, line: 1364, baseType: !6, size: 64, offset: 20864)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1498, file: !1499, line: 1365, baseType: !6, size: 64, offset: 20928)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1498, file: !1499, line: 1412, baseType: !180, size: 64, offset: 20992)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1498, file: !1499, line: 1453, baseType: !5064, size: 64, offset: 21056)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1499, line: 1453, flags: DIFlagFwdDecl)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1498, file: !1499, line: 1457, baseType: !5067, size: 64, offset: 21120)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !98, line: 61, size: 576, elements: !5069)
!5069 = !{!5070, !5071, !5090, !5093, !5094, !5127, !5137}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5068, file: !98, line: 62, baseType: !97, size: 32)
!5071 = !DIDerivedType(tag: DW_TAG_member, scope: !5068, file: !98, line: 64, baseType: !5072, size: 192, offset: 64)
!5072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5068, file: !98, line: 64, size: 192, elements: !5073)
!5073 = !{!5074, !5085}
!5074 = !DIDerivedType(tag: DW_TAG_member, scope: !5072, file: !98, line: 65, baseType: !5075, size: 192)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5072, file: !98, line: 65, size: 192, elements: !5076)
!5076 = !{!5077, !5084}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5075, file: !98, line: 66, baseType: !5078, size: 128)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5079, line: 50, size: 128, elements: !5080)
!5079 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5080 = !{!5081, !5082, !5083}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5078, file: !5079, line: 52, baseType: !180, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5078, file: !5079, line: 54, baseType: !14, size: 32, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5078, file: !5079, line: 55, baseType: !14, size: 32, offset: 96)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5075, file: !98, line: 67, baseType: !180, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, scope: !5072, file: !98, line: 70, baseType: !5086, size: 192)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5072, file: !98, line: 70, size: 192, elements: !5087)
!5087 = !{!5088, !5089}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5086, file: !98, line: 71, baseType: !1886, size: 128, align: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5086, file: !98, line: 72, baseType: !180, size: 64, offset: 128)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5068, file: !98, line: 76, baseType: !5091, size: 64, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !98, line: 76, flags: DIFlagFwdDecl)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5068, file: !98, line: 77, baseType: !180, size: 64, offset: 320)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5068, file: !98, line: 79, baseType: !5095, size: 64, offset: 384)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5079, line: 25, size: 256, elements: !5097)
!5097 = !{!5098, !5104, !5108}
!5098 = !DIDerivedType(tag: DW_TAG_member, scope: !5096, file: !5079, line: 26, baseType: !5099, size: 128)
!5099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5096, file: !5079, line: 26, size: 128, elements: !5100)
!5100 = !{!5101, !5103}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5099, file: !5079, line: 27, baseType: !5102, size: 128)
!5102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 128, elements: !4031)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5099, file: !5079, line: 28, baseType: !5102, size: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5096, file: !5079, line: 31, baseType: !5105, size: 64, offset: 128)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5107)
!5107 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5079, line: 23, flags: DIFlagFwdDecl)
!5108 = !DIDerivedType(tag: DW_TAG_member, scope: !5096, file: !5079, line: 33, baseType: !5109, size: 64, offset: 192)
!5109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5096, file: !5079, line: 33, size: 64, elements: !5110)
!5110 = !{!5111, !5117, !5122}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5109, file: !5079, line: 38, baseType: !5112, size: 64)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5109, file: !5079, line: 34, size: 64, elements: !5113)
!5113 = !{!5114, !5115, !5116}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5112, file: !5079, line: 35, baseType: !2035, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5112, file: !5079, line: 36, baseType: !744, size: 8, offset: 32)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5112, file: !5079, line: 37, baseType: !744, size: 8, offset: 40)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5109, file: !5079, line: 42, baseType: !5118, size: 16)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5109, file: !5079, line: 39, size: 16, elements: !5119)
!5119 = !{!5120, !5121}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5118, file: !5079, line: 40, baseType: !744, size: 8)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5118, file: !5079, line: 41, baseType: !744, size: 8, offset: 8)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5109, file: !5079, line: 46, baseType: !5123, size: 16)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5109, file: !5079, line: 43, size: 16, elements: !5124)
!5124 = !{!5125, !5126}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5123, file: !5079, line: 44, baseType: !744, size: 8)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5123, file: !5079, line: 45, baseType: !744, size: 8, offset: 8)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5068, file: !98, line: 81, baseType: !5128, size: 64, offset: 448)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !98, line: 85, size: 384, elements: !5130)
!5130 = !{!5131, !5132, !5133, !5134, !5135, !5136}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5129, file: !98, line: 86, baseType: !5091, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5129, file: !98, line: 87, baseType: !180, size: 64, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5129, file: !98, line: 88, baseType: !180, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5129, file: !98, line: 89, baseType: !180, size: 64, offset: 192)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5129, file: !98, line: 90, baseType: !574, size: 8, offset: 256)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5129, file: !98, line: 92, baseType: !5128, size: 64, offset: 320)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5068, file: !98, line: 82, baseType: !14, size: 32, offset: 512)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1498, file: !1499, line: 1463, baseType: !5139, offset: 21184)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1499, line: 739, elements: !957)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1498, file: !1499, line: 1470, baseType: !1886, size: 128, align: 64, offset: 21184)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1498, file: !1499, line: 1471, baseType: !1512, size: 32, offset: 21312)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1498, file: !1499, line: 1472, baseType: !20, size: 32, offset: 21344)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1498, file: !1499, line: 1474, baseType: !1497, size: 64, offset: 21376)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1498, file: !1499, line: 1475, baseType: !3523, size: 320, offset: 21440)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1498, file: !1499, line: 1478, baseType: !5146, size: 64, offset: 21760)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1499, line: 1478, flags: DIFlagFwdDecl)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1498, file: !1499, line: 1482, baseType: !1512, size: 32, offset: 21824)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1498, file: !1499, line: 1489, baseType: !177, size: 64, offset: 21888)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1498, file: !1499, line: 1504, baseType: !177, size: 64, offset: 21952)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1498, file: !1499, line: 1505, baseType: !8, size: 64, offset: 22016)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1498, file: !1499, line: 1506, baseType: !6, size: 64, offset: 22080)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1498, file: !1499, line: 1507, baseType: !8, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1498, file: !1499, line: 1508, baseType: !8, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1498, file: !1499, line: 1509, baseType: !8, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1498, file: !1499, line: 1510, baseType: !1886, size: 128, align: 64, offset: 22208)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1498, file: !1499, line: 1511, baseType: !20, size: 32, offset: 22336)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1498, file: !1499, line: 1515, baseType: !5159, size: 64, offset: 22400)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1530, line: 56, size: 64, elements: !5160)
!5160 = !{!5161}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5159, file: !1530, line: 57, baseType: !1533, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1498, file: !1499, line: 1518, baseType: !5159, size: 64, offset: 22464)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1498, file: !1499, line: 1528, baseType: !1886, size: 128, align: 64, offset: 22528)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1498, file: !1499, line: 1552, baseType: !5165, size: 35328, offset: 23040)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5166, line: 430, size: 35328, elements: !5167)
!5166 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5167 = !{!5168, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5197, !5198, !5199, !5200, !5201, !5202, !5205, !5206, !5207, !5208}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5165, file: !5166, line: 432, baseType: !5169, size: 192)
!5169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5170, size: 192, elements: !191)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5171, line: 16, size: 64, elements: !5172)
!5171 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5170, file: !5171, line: 17, baseType: !1540, size: 16)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5170, file: !5171, line: 18, baseType: !1540, size: 16, offset: 16)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5170, file: !5171, line: 19, baseType: !1540, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5170, file: !5171, line: 19, baseType: !1540, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5170, file: !5171, line: 19, baseType: !1540, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5170, file: !5171, line: 19, baseType: !1540, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5170, file: !5171, line: 19, baseType: !1540, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5170, file: !5171, line: 20, baseType: !1540, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5170, file: !5171, line: 20, baseType: !1540, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5170, file: !5171, line: 20, baseType: !1540, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5170, file: !5171, line: 20, baseType: !1540, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5170, file: !5171, line: 20, baseType: !1540, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5170, file: !5171, line: 20, baseType: !1540, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5165, file: !5166, line: 436, baseType: !180, size: 64, offset: 192)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5165, file: !5166, line: 440, baseType: !1542, size: 16, offset: 256)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5165, file: !5166, line: 441, baseType: !1542, size: 16, offset: 272)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5165, file: !5166, line: 442, baseType: !1542, size: 16, offset: 288)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5165, file: !5166, line: 443, baseType: !1542, size: 16, offset: 304)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5165, file: !5166, line: 447, baseType: !180, size: 64, offset: 320)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5165, file: !5166, line: 448, baseType: !180, size: 64, offset: 384)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5165, file: !5166, line: 459, baseType: !5194, size: 256, offset: 448)
!5194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5195, size: 256, elements: !210)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5166, line: 428, flags: DIFlagFwdDecl)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5165, file: !5166, line: 461, baseType: !180, size: 64, offset: 704)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5165, file: !5166, line: 463, baseType: !180, size: 64, offset: 768)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5165, file: !5166, line: 465, baseType: !180, size: 64, offset: 832)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5165, file: !5166, line: 466, baseType: !180, size: 64, offset: 896)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5165, file: !5166, line: 467, baseType: !180, size: 64, offset: 960)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5165, file: !5166, line: 473, baseType: !5203, size: 64, offset: 1024)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5166, line: 10, flags: DIFlagFwdDecl)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5165, file: !5166, line: 480, baseType: !180, size: 64, offset: 1088)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5165, file: !5166, line: 482, baseType: !14, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5165, file: !5166, line: 491, baseType: !175, size: 32, offset: 1184)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5165, file: !5166, line: 501, baseType: !5209, size: 33792, offset: 1536)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5210, line: 448, size: 33792, elements: !5211)
!5210 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5211 = !{!5212, !5213, !5214, !5372, !5373, !5379, !5380}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5209, file: !5210, line: 461, baseType: !14, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5209, file: !5210, line: 468, baseType: !180, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5209, file: !5210, line: 476, baseType: !5215, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5210, line: 356, size: 33280, align: 512, elements: !5217)
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5216, file: !5210, line: 358, baseType: !14, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5216, file: !5210, line: 361, baseType: !14, size: 32, offset: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5216, file: !5210, line: 364, baseType: !6, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5216, file: !5210, line: 367, baseType: !6, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5216, file: !5210, line: 370, baseType: !6, size: 64, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5216, file: !5210, line: 373, baseType: !14, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5216, file: !5210, line: 376, baseType: !14, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5216, file: !5210, line: 391, baseType: !14, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5216, file: !5210, line: 394, baseType: !14, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5216, file: !5210, line: 397, baseType: !5228, size: 32768, offset: 512)
!5228 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5210, line: 348, size: 32768, elements: !5229)
!5229 = !{!5230, !5243, !5278, !5355, !5368}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5228, file: !5210, line: 349, baseType: !5231, size: 896)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5210, line: 12, size: 896, elements: !5232)
!5232 = !{!5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5242}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5231, file: !5210, line: 13, baseType: !175, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5231, file: !5210, line: 14, baseType: !175, size: 32, offset: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5231, file: !5210, line: 15, baseType: !175, size: 32, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5231, file: !5210, line: 16, baseType: !175, size: 32, offset: 96)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5231, file: !5210, line: 17, baseType: !175, size: 32, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5231, file: !5210, line: 18, baseType: !175, size: 32, offset: 160)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5231, file: !5210, line: 19, baseType: !175, size: 32, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5231, file: !5210, line: 22, baseType: !5241, size: 640, offset: 224)
!5241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 640, elements: !306)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5231, file: !5210, line: 25, baseType: !175, size: 32, offset: 864)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5228, file: !5210, line: 350, baseType: !5244, size: 4096, align: 128)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5210, line: 34, size: 4096, align: 128, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5265, !5266, !5267, !5269, !5271, !5273}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5244, file: !5210, line: 35, baseType: !1540, size: 16)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5244, file: !5210, line: 36, baseType: !1540, size: 16, offset: 16)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5244, file: !5210, line: 37, baseType: !1540, size: 16, offset: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5244, file: !5210, line: 38, baseType: !1540, size: 16, offset: 48)
!5250 = !DIDerivedType(tag: DW_TAG_member, scope: !5244, file: !5210, line: 39, baseType: !5251, size: 128, offset: 64)
!5251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5244, file: !5210, line: 39, size: 128, elements: !5252)
!5252 = !{!5253, !5258}
!5253 = !DIDerivedType(tag: DW_TAG_member, scope: !5251, file: !5210, line: 40, baseType: !5254, size: 128)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5251, file: !5210, line: 40, size: 128, elements: !5255)
!5255 = !{!5256, !5257}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5254, file: !5210, line: 41, baseType: !6, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5254, file: !5210, line: 42, baseType: !6, size: 64, offset: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, scope: !5251, file: !5210, line: 44, baseType: !5259, size: 128)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5251, file: !5210, line: 44, size: 128, elements: !5260)
!5260 = !{!5261, !5262, !5263, !5264}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5259, file: !5210, line: 45, baseType: !175, size: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5259, file: !5210, line: 46, baseType: !175, size: 32, offset: 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5259, file: !5210, line: 47, baseType: !175, size: 32, offset: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5259, file: !5210, line: 48, baseType: !175, size: 32, offset: 96)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5244, file: !5210, line: 51, baseType: !175, size: 32, offset: 192)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5244, file: !5210, line: 52, baseType: !175, size: 32, offset: 224)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5244, file: !5210, line: 55, baseType: !5268, size: 1024, offset: 256)
!5268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 1024, elements: !4022)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5244, file: !5210, line: 58, baseType: !5270, size: 2048, offset: 1280)
!5270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 2048, elements: !2550)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5244, file: !5210, line: 60, baseType: !5272, size: 384, offset: 3328)
!5272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 384, elements: !283)
!5273 = !DIDerivedType(tag: DW_TAG_member, scope: !5244, file: !5210, line: 62, baseType: !5274, size: 384, offset: 3712)
!5274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5244, file: !5210, line: 62, size: 384, elements: !5275)
!5275 = !{!5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5274, file: !5210, line: 63, baseType: !5272, size: 384)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5274, file: !5210, line: 64, baseType: !5272, size: 384)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5228, file: !5210, line: 351, baseType: !5279, size: 1088)
!5279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5210, line: 79, size: 1088, elements: !5280)
!5280 = !{!5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5354}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5279, file: !5210, line: 80, baseType: !175, size: 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5279, file: !5210, line: 81, baseType: !175, size: 32, offset: 32)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5279, file: !5210, line: 82, baseType: !175, size: 32, offset: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5279, file: !5210, line: 83, baseType: !175, size: 32, offset: 96)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5279, file: !5210, line: 84, baseType: !175, size: 32, offset: 128)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5279, file: !5210, line: 85, baseType: !175, size: 32, offset: 160)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5279, file: !5210, line: 86, baseType: !175, size: 32, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5279, file: !5210, line: 88, baseType: !5241, size: 640, offset: 224)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5279, file: !5210, line: 89, baseType: !744, size: 8, offset: 864)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5279, file: !5210, line: 90, baseType: !744, size: 8, offset: 872)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5279, file: !5210, line: 91, baseType: !744, size: 8, offset: 880)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5279, file: !5210, line: 92, baseType: !744, size: 8, offset: 888)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5279, file: !5210, line: 93, baseType: !744, size: 8, offset: 896)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5279, file: !5210, line: 94, baseType: !744, size: 8, offset: 904)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5279, file: !5210, line: 95, baseType: !5296, size: 64, offset: 960)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5298, line: 11, size: 128, elements: !5299)
!5298 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5299 = !{!5300, !5301}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5297, file: !5298, line: 12, baseType: !181, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5297, file: !5298, line: 13, baseType: !5302, size: 64, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5304, line: 103, size: 1344, elements: !5305)
!5304 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5305 = !{!5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5334, !5335, !5336}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5303, file: !5304, line: 109, baseType: !180, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5303, file: !5304, line: 110, baseType: !180, size: 64, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5303, file: !5304, line: 111, baseType: !180, size: 64, offset: 128)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5303, file: !5304, line: 112, baseType: !180, size: 64, offset: 192)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5303, file: !5304, line: 113, baseType: !180, size: 64, offset: 256)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5303, file: !5304, line: 114, baseType: !180, size: 64, offset: 320)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5303, file: !5304, line: 117, baseType: !180, size: 64, offset: 384)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5303, file: !5304, line: 118, baseType: !180, size: 64, offset: 448)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5303, file: !5304, line: 119, baseType: !180, size: 64, offset: 512)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5303, file: !5304, line: 120, baseType: !180, size: 64, offset: 576)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5303, file: !5304, line: 121, baseType: !180, size: 64, offset: 640)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5303, file: !5304, line: 122, baseType: !180, size: 64, offset: 704)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5303, file: !5304, line: 123, baseType: !180, size: 64, offset: 768)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5303, file: !5304, line: 124, baseType: !180, size: 64, offset: 832)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5303, file: !5304, line: 125, baseType: !180, size: 64, offset: 896)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5303, file: !5304, line: 139, baseType: !180, size: 64, offset: 960)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5303, file: !5304, line: 142, baseType: !180, size: 64, offset: 1024)
!5323 = !DIDerivedType(tag: DW_TAG_member, scope: !5303, file: !5304, line: 144, baseType: !5324, size: 64, offset: 1088)
!5324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5303, file: !5304, line: 144, size: 64, elements: !5325)
!5325 = !{!5326, !5327, !5328}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5324, file: !5304, line: 146, baseType: !1540, size: 16)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5324, file: !5304, line: 148, baseType: !6, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5324, file: !5304, line: 150, baseType: !5329, size: 64)
!5329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5304, line: 59, size: 64, elements: !5330)
!5330 = !{!5331, !5332, !5333}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5329, file: !5304, line: 61, baseType: !6, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5329, file: !5304, line: 63, baseType: !6, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5329, file: !5304, line: 65, baseType: !6, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5303, file: !5304, line: 153, baseType: !180, size: 64, offset: 1152)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5303, file: !5304, line: 154, baseType: !180, size: 64, offset: 1216)
!5336 = !DIDerivedType(tag: DW_TAG_member, scope: !5303, file: !5304, line: 156, baseType: !5337, size: 64, offset: 1280)
!5337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5303, file: !5304, line: 156, size: 64, elements: !5338)
!5338 = !{!5339, !5340, !5341}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5337, file: !5304, line: 158, baseType: !1540, size: 16)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5337, file: !5304, line: 160, baseType: !6, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5337, file: !5304, line: 162, baseType: !5342, size: 64)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5304, line: 69, size: 64, elements: !5343)
!5343 = !{!5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5342, file: !5304, line: 71, baseType: !6, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5342, file: !5304, line: 73, baseType: !6, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5342, file: !5304, line: 75, baseType: !6, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5342, file: !5304, line: 77, baseType: !6, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5342, file: !5304, line: 80, baseType: !6, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5342, file: !5304, line: 83, baseType: !6, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5342, file: !5304, line: 86, baseType: !6, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5342, file: !5304, line: 88, baseType: !6, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5342, file: !5304, line: 93, baseType: !6, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5342, file: !5304, line: 100, baseType: !6, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5279, file: !5210, line: 96, baseType: !175, size: 32, offset: 1024)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5228, file: !5210, line: 352, baseType: !5356, size: 4608, align: 512)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5210, line: 333, size: 4608, align: 512, elements: !5357)
!5357 = !{!5358, !5359, !5366}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5356, file: !5210, line: 334, baseType: !5244, size: 4096, align: 128)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5356, file: !5210, line: 335, baseType: !5360, size: 512, offset: 4096)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5210, line: 312, size: 512, elements: !5361)
!5361 = !{!5362, !5363, !5364}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5360, file: !5210, line: 313, baseType: !6, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5360, file: !5210, line: 314, baseType: !6, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5360, file: !5210, line: 315, baseType: !5365, size: 384, offset: 128)
!5365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !249)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5356, file: !5210, line: 336, baseType: !5367, offset: 4608)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, elements: !1980)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5228, file: !5210, line: 353, baseType: !5369, size: 32768)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 32768, elements: !5370)
!5370 = !{!5371}
!5371 = !DISubrange(count: 4096)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5209, file: !5210, line: 484, baseType: !5215, size: 64, offset: 192)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5209, file: !5210, line: 491, baseType: !5374, size: 128, offset: 256)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5210, line: 404, size: 128, elements: !5375)
!5375 = !{!5376, !5377, !5378}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5374, file: !5210, line: 424, baseType: !6, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5374, file: !5210, line: 432, baseType: !14, size: 32, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5374, file: !5210, line: 440, baseType: !14, size: 32, offset: 96)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5209, file: !5210, line: 498, baseType: !5374, size: 128, offset: 384)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5209, file: !5210, line: 508, baseType: !5216, size: 33280, align: 512, offset: 512)
!5381 = !{!5382, !5383, !5384, !5385, !5386, !5387}
!5382 = !DILocalVariable(name: "task", arg: 1, scope: !1494, file: !3, line: 666, type: !1497)
!5383 = !DILocalVariable(name: "gfp", arg: 2, scope: !1494, file: !3, line: 666, type: !178)
!5384 = !DILocalVariable(name: "buffer", scope: !1494, file: !3, line: 668, type: !18)
!5385 = !DILocalVariable(name: "quoted", scope: !1494, file: !3, line: 668, type: !18)
!5386 = !DILocalVariable(name: "i", scope: !1494, file: !3, line: 669, type: !20)
!5387 = !DILocalVariable(name: "res", scope: !1494, file: !3, line: 669, type: !20)
!5388 = !DILocation(line: 666, column: 52, scope: !1494)
!5389 = !DILocation(line: 666, column: 64, scope: !1494)
!5390 = !DILocation(line: 668, column: 2, scope: !1494)
!5391 = !DILocation(line: 668, column: 8, scope: !1494)
!5392 = !DILocation(line: 668, column: 17, scope: !1494)
!5393 = !DILocation(line: 669, column: 2, scope: !1494)
!5394 = !DILocation(line: 669, column: 6, scope: !1494)
!5395 = !DILocation(line: 669, column: 9, scope: !1494)
!5396 = !DILocation(line: 671, column: 11, scope: !1494)
!5397 = !DILocation(line: 671, column: 9, scope: !1494)
!5398 = !DILocation(line: 672, column: 7, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 672, column: 6)
!5400 = !DILocation(line: 672, column: 6, scope: !1494)
!5401 = !DILocation(line: 673, column: 3, scope: !5399)
!5402 = !DILocation(line: 675, column: 20, scope: !1494)
!5403 = !DILocation(line: 675, column: 26, scope: !1494)
!5404 = !DILocation(line: 675, column: 8, scope: !1494)
!5405 = !DILocation(line: 675, column: 6, scope: !1494)
!5406 = !DILocation(line: 676, column: 2, scope: !1494)
!5407 = !DILocation(line: 676, column: 9, scope: !1494)
!5408 = !DILocation(line: 676, column: 14, scope: !1494)
!5409 = !DILocation(line: 679, column: 2, scope: !1494)
!5410 = !DILocation(line: 679, column: 9, scope: !1494)
!5411 = !DILocation(line: 679, column: 15, scope: !1494)
!5412 = !DILocation(line: 679, column: 20, scope: !1494)
!5413 = !DILocation(line: 679, column: 23, scope: !1494)
!5414 = !DILocation(line: 679, column: 30, scope: !1494)
!5415 = !DILocation(line: 679, column: 35, scope: !1494)
!5416 = !DILocation(line: 0, scope: !1494)
!5417 = distinct !{!5417, !5409, !5418, !399, !400}
!5418 = !DILocation(line: 680, column: 3, scope: !1494)
!5419 = !DILocation(line: 683, column: 9, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 683, column: 2)
!5421 = !DILocation(line: 683, column: 7, scope: !5420)
!5422 = !DILocation(line: 683, column: 14, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 683, column: 2)
!5424 = !DILocation(line: 683, column: 19, scope: !5423)
!5425 = !DILocation(line: 683, column: 16, scope: !5423)
!5426 = !DILocation(line: 683, column: 2, scope: !5420)
!5427 = !DILocation(line: 684, column: 7, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 684, column: 7)
!5429 = !DILocation(line: 684, column: 14, scope: !5428)
!5430 = !DILocation(line: 684, column: 17, scope: !5428)
!5431 = !DILocation(line: 684, column: 7, scope: !5423)
!5432 = !DILocation(line: 685, column: 4, scope: !5428)
!5433 = !DILocation(line: 685, column: 11, scope: !5428)
!5434 = !DILocation(line: 685, column: 14, scope: !5428)
!5435 = !DILocation(line: 684, column: 20, scope: !5428)
!5436 = !DILocation(line: 683, column: 25, scope: !5423)
!5437 = !DILocation(line: 683, column: 2, scope: !5423)
!5438 = distinct !{!5438, !5426, !5439, !399, !400}
!5439 = !DILocation(line: 685, column: 16, scope: !5420)
!5440 = !DILocation(line: 688, column: 28, scope: !1494)
!5441 = !DILocation(line: 688, column: 36, scope: !1494)
!5442 = !DILocation(line: 688, column: 11, scope: !1494)
!5443 = !DILocation(line: 688, column: 9, scope: !1494)
!5444 = !DILocation(line: 689, column: 8, scope: !1494)
!5445 = !DILocation(line: 689, column: 2, scope: !1494)
!5446 = !DILocation(line: 690, column: 9, scope: !1494)
!5447 = !DILocation(line: 690, column: 2, scope: !1494)
!5448 = !DILocation(line: 691, column: 1, scope: !1494)
!5449 = !DISubprogram(name: "get_cmdline", scope: !2745, file: !2745, line: 2484, type: !5450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!20, !1497, !18, !20}
!5452 = distinct !DISubprogram(name: "kstrdup_quotable_file", scope: !3, file: !3, line: 699, type: !5453, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !5455)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!18, !1878, !178}
!5455 = !{!5456, !5457, !5458, !5459}
!5456 = !DILocalVariable(name: "file", arg: 1, scope: !5452, file: !3, line: 699, type: !1878)
!5457 = !DILocalVariable(name: "gfp", arg: 2, scope: !5452, file: !3, line: 699, type: !178)
!5458 = !DILocalVariable(name: "temp", scope: !5452, file: !3, line: 701, type: !18)
!5459 = !DILocalVariable(name: "pathname", scope: !5452, file: !3, line: 701, type: !18)
!5460 = !DILocation(line: 699, column: 42, scope: !5452)
!5461 = !DILocation(line: 699, column: 54, scope: !5452)
!5462 = !DILocation(line: 701, column: 2, scope: !5452)
!5463 = !DILocation(line: 701, column: 8, scope: !5452)
!5464 = !DILocation(line: 701, column: 15, scope: !5452)
!5465 = !DILocation(line: 703, column: 7, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 703, column: 6)
!5467 = !DILocation(line: 703, column: 6, scope: !5452)
!5468 = !DILocation(line: 704, column: 31, scope: !5466)
!5469 = !DILocation(line: 704, column: 10, scope: !5466)
!5470 = !DILocation(line: 704, column: 3, scope: !5466)
!5471 = !DILocation(line: 707, column: 9, scope: !5452)
!5472 = !DILocation(line: 707, column: 7, scope: !5452)
!5473 = !DILocation(line: 708, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 708, column: 6)
!5475 = !DILocation(line: 708, column: 6, scope: !5452)
!5476 = !DILocation(line: 709, column: 33, scope: !5474)
!5477 = !DILocation(line: 709, column: 10, scope: !5474)
!5478 = !DILocation(line: 709, column: 3, scope: !5474)
!5479 = !DILocation(line: 711, column: 23, scope: !5452)
!5480 = !DILocation(line: 711, column: 29, scope: !5452)
!5481 = !DILocation(line: 711, column: 13, scope: !5452)
!5482 = !DILocation(line: 711, column: 11, scope: !5452)
!5483 = !DILocation(line: 712, column: 13, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 712, column: 6)
!5485 = !DILocation(line: 712, column: 6, scope: !5484)
!5486 = !DILocation(line: 712, column: 6, scope: !5452)
!5487 = !DILocation(line: 713, column: 36, scope: !5484)
!5488 = !DILocation(line: 713, column: 14, scope: !5484)
!5489 = !DILocation(line: 713, column: 12, scope: !5484)
!5490 = !DILocation(line: 713, column: 3, scope: !5484)
!5491 = !DILocation(line: 715, column: 31, scope: !5484)
!5492 = !DILocation(line: 715, column: 41, scope: !5484)
!5493 = !DILocation(line: 715, column: 14, scope: !5484)
!5494 = !DILocation(line: 715, column: 12, scope: !5484)
!5495 = !DILocation(line: 717, column: 8, scope: !5452)
!5496 = !DILocation(line: 717, column: 2, scope: !5452)
!5497 = !DILocation(line: 718, column: 9, scope: !5452)
!5498 = !DILocation(line: 718, column: 2, scope: !5452)
!5499 = !DILocation(line: 719, column: 1, scope: !5452)
!5500 = !DISubprogram(name: "kstrdup", scope: !565, file: !565, line: 216, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5501 = !DISubprogram(name: "file_path", scope: !81, file: !81, line: 2845, type: !5502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!18, !1878, !18, !20}
!5504 = distinct !DISubprogram(name: "kstrdup_and_replace", scope: !3, file: !3, line: 725, type: !5505, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !5507)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!18, !230, !19, !19, !178}
!5507 = !{!5508, !5509, !5510, !5511, !5512}
!5508 = !DILocalVariable(name: "src", arg: 1, scope: !5504, file: !3, line: 725, type: !230)
!5509 = !DILocalVariable(name: "old", arg: 2, scope: !5504, file: !3, line: 725, type: !19)
!5510 = !DILocalVariable(name: "new", arg: 3, scope: !5504, file: !3, line: 725, type: !19)
!5511 = !DILocalVariable(name: "gfp", arg: 4, scope: !5504, file: !3, line: 725, type: !178)
!5512 = !DILocalVariable(name: "dst", scope: !5504, file: !3, line: 727, type: !18)
!5513 = !DILocation(line: 725, column: 39, scope: !5504)
!5514 = !DILocation(line: 725, column: 49, scope: !5504)
!5515 = !DILocation(line: 725, column: 59, scope: !5504)
!5516 = !DILocation(line: 725, column: 70, scope: !5504)
!5517 = !DILocation(line: 727, column: 2, scope: !5504)
!5518 = !DILocation(line: 727, column: 8, scope: !5504)
!5519 = !DILocation(line: 729, column: 16, scope: !5504)
!5520 = !DILocation(line: 729, column: 21, scope: !5504)
!5521 = !DILocation(line: 729, column: 8, scope: !5504)
!5522 = !DILocation(line: 729, column: 6, scope: !5504)
!5523 = !DILocation(line: 730, column: 7, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 730, column: 6)
!5525 = !DILocation(line: 730, column: 6, scope: !5504)
!5526 = !DILocation(line: 731, column: 3, scope: !5524)
!5527 = !DILocation(line: 733, column: 20, scope: !5504)
!5528 = !DILocation(line: 733, column: 25, scope: !5504)
!5529 = !DILocation(line: 733, column: 30, scope: !5504)
!5530 = !DILocation(line: 733, column: 9, scope: !5504)
!5531 = !DILocation(line: 733, column: 2, scope: !5504)
!5532 = !DILocation(line: 734, column: 1, scope: !5504)
!5533 = distinct !DISubprogram(name: "strreplace", scope: !3, file: !3, line: 1005, type: !5534, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !5536)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!18, !18, !19, !19}
!5536 = !{!5537, !5538, !5539, !5540}
!5537 = !DILocalVariable(name: "str", arg: 1, scope: !5533, file: !3, line: 1005, type: !18)
!5538 = !DILocalVariable(name: "old", arg: 2, scope: !5533, file: !3, line: 1005, type: !19)
!5539 = !DILocalVariable(name: "new", arg: 3, scope: !5533, file: !3, line: 1005, type: !19)
!5540 = !DILocalVariable(name: "s", scope: !5533, file: !3, line: 1007, type: !18)
!5541 = !DILocation(line: 1005, column: 24, scope: !5533)
!5542 = !DILocation(line: 1005, column: 34, scope: !5533)
!5543 = !DILocation(line: 1005, column: 44, scope: !5533)
!5544 = !DILocation(line: 1007, column: 2, scope: !5533)
!5545 = !DILocation(line: 1007, column: 8, scope: !5533)
!5546 = !DILocation(line: 1007, column: 12, scope: !5533)
!5547 = !DILocation(line: 1009, column: 2, scope: !5533)
!5548 = !DILocation(line: 1009, column: 10, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 1009, column: 2)
!5550 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 1009, column: 2)
!5551 = !DILocation(line: 1009, column: 9, scope: !5549)
!5552 = !DILocation(line: 1009, column: 2, scope: !5550)
!5553 = !DILocation(line: 1010, column: 8, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 1010, column: 7)
!5555 = !DILocation(line: 1010, column: 7, scope: !5554)
!5556 = !DILocation(line: 1010, column: 13, scope: !5554)
!5557 = !DILocation(line: 1010, column: 10, scope: !5554)
!5558 = !DILocation(line: 1010, column: 7, scope: !5549)
!5559 = !DILocation(line: 1011, column: 9, scope: !5554)
!5560 = !DILocation(line: 1011, column: 5, scope: !5554)
!5561 = !DILocation(line: 1011, column: 7, scope: !5554)
!5562 = !DILocation(line: 1011, column: 4, scope: !5554)
!5563 = !DILocation(line: 1009, column: 13, scope: !5549)
!5564 = !DILocation(line: 1009, column: 2, scope: !5549)
!5565 = distinct !{!5565, !5552, !5566, !399, !400}
!5566 = !DILocation(line: 1011, column: 9, scope: !5550)
!5567 = !DILocation(line: 1012, column: 9, scope: !5533)
!5568 = !DILocation(line: 1013, column: 1, scope: !5533)
!5569 = !DILocation(line: 1012, column: 2, scope: !5533)
!5570 = distinct !DISubprogram(name: "kasprintf_strarray", scope: !3, file: !3, line: 749, type: !5571, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !5573)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!696, !178, !230, !492}
!5573 = !{!5574, !5575, !5576, !5577, !5578}
!5574 = !DILocalVariable(name: "gfp", arg: 1, scope: !5570, file: !3, line: 749, type: !178)
!5575 = !DILocalVariable(name: "prefix", arg: 2, scope: !5570, file: !3, line: 749, type: !230)
!5576 = !DILocalVariable(name: "n", arg: 3, scope: !5570, file: !3, line: 749, type: !492)
!5577 = !DILocalVariable(name: "names", scope: !5570, file: !3, line: 751, type: !696)
!5578 = !DILocalVariable(name: "i", scope: !5570, file: !3, line: 752, type: !492)
!5579 = !DILocation(line: 749, column: 33, scope: !5570)
!5580 = !DILocation(line: 749, column: 50, scope: !5570)
!5581 = !DILocation(line: 749, column: 65, scope: !5570)
!5582 = !DILocation(line: 751, column: 2, scope: !5570)
!5583 = !DILocation(line: 751, column: 9, scope: !5570)
!5584 = !DILocation(line: 752, column: 2, scope: !5570)
!5585 = !DILocation(line: 752, column: 9, scope: !5570)
!5586 = !DILocation(line: 754, column: 18, scope: !5570)
!5587 = !DILocation(line: 754, column: 20, scope: !5570)
!5588 = !DILocation(line: 754, column: 41, scope: !5570)
!5589 = !DILocation(line: 754, column: 10, scope: !5570)
!5590 = !DILocation(line: 754, column: 8, scope: !5570)
!5591 = !DILocation(line: 755, column: 7, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 755, column: 6)
!5593 = !DILocation(line: 755, column: 6, scope: !5570)
!5594 = !DILocation(line: 756, column: 3, scope: !5592)
!5595 = !DILocation(line: 758, column: 9, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 758, column: 2)
!5597 = !DILocation(line: 758, column: 7, scope: !5596)
!5598 = !DILocation(line: 758, column: 14, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 758, column: 2)
!5600 = !DILocation(line: 758, column: 18, scope: !5599)
!5601 = !DILocation(line: 758, column: 16, scope: !5599)
!5602 = !DILocation(line: 758, column: 2, scope: !5596)
!5603 = !DILocation(line: 759, column: 24, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 758, column: 26)
!5605 = !DILocation(line: 759, column: 39, scope: !5604)
!5606 = !DILocation(line: 759, column: 47, scope: !5604)
!5607 = !DILocation(line: 759, column: 14, scope: !5604)
!5608 = !DILocation(line: 759, column: 3, scope: !5604)
!5609 = !DILocation(line: 759, column: 9, scope: !5604)
!5610 = !DILocation(line: 759, column: 12, scope: !5604)
!5611 = !DILocation(line: 760, column: 8, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 760, column: 7)
!5613 = !DILocation(line: 760, column: 14, scope: !5612)
!5614 = !DILocation(line: 760, column: 7, scope: !5604)
!5615 = !DILocation(line: 761, column: 19, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 760, column: 18)
!5617 = !DILocation(line: 761, column: 26, scope: !5616)
!5618 = !DILocation(line: 761, column: 4, scope: !5616)
!5619 = !DILocation(line: 762, column: 4, scope: !5616)
!5620 = !DILocation(line: 764, column: 2, scope: !5604)
!5621 = !DILocation(line: 758, column: 22, scope: !5599)
!5622 = !DILocation(line: 758, column: 2, scope: !5599)
!5623 = distinct !{!5623, !5602, !5624, !399, !400}
!5624 = !DILocation(line: 764, column: 2, scope: !5596)
!5625 = !DILocation(line: 766, column: 9, scope: !5570)
!5626 = !DILocation(line: 766, column: 2, scope: !5570)
!5627 = !DILocation(line: 767, column: 1, scope: !5570)
!5628 = !DISubprogram(name: "kasprintf", scope: !489, file: !489, line: 16, type: !5629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!18, !178, !230, null}
!5631 = distinct !DISubprogram(name: "kfree_strarray", scope: !3, file: !3, line: 780, type: !5632, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !5634)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{null, !696, !492}
!5634 = !{!5635, !5636, !5637}
!5635 = !DILocalVariable(name: "array", arg: 1, scope: !5631, file: !3, line: 780, type: !696)
!5636 = !DILocalVariable(name: "n", arg: 2, scope: !5631, file: !3, line: 780, type: !492)
!5637 = !DILocalVariable(name: "i", scope: !5631, file: !3, line: 782, type: !14)
!5638 = !DILocation(line: 780, column: 28, scope: !5631)
!5639 = !DILocation(line: 780, column: 42, scope: !5631)
!5640 = !DILocation(line: 782, column: 2, scope: !5631)
!5641 = !DILocation(line: 782, column: 15, scope: !5631)
!5642 = !DILocation(line: 784, column: 7, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 784, column: 6)
!5644 = !DILocation(line: 784, column: 6, scope: !5631)
!5645 = !DILocation(line: 785, column: 3, scope: !5643)
!5646 = !DILocation(line: 787, column: 9, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 787, column: 2)
!5648 = !DILocation(line: 787, column: 7, scope: !5647)
!5649 = !DILocation(line: 787, column: 14, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 787, column: 2)
!5651 = !DILocation(line: 787, column: 18, scope: !5650)
!5652 = !DILocation(line: 787, column: 16, scope: !5650)
!5653 = !DILocation(line: 787, column: 2, scope: !5647)
!5654 = !DILocation(line: 788, column: 9, scope: !5650)
!5655 = !DILocation(line: 788, column: 15, scope: !5650)
!5656 = !DILocation(line: 788, column: 3, scope: !5650)
!5657 = !DILocation(line: 787, column: 22, scope: !5650)
!5658 = !DILocation(line: 787, column: 2, scope: !5650)
!5659 = distinct !{!5659, !5653, !5660, !399, !400}
!5660 = !DILocation(line: 788, column: 17, scope: !5647)
!5661 = !DILocation(line: 789, column: 8, scope: !5631)
!5662 = !DILocation(line: 789, column: 2, scope: !5631)
!5663 = !DILocation(line: 790, column: 1, scope: !5631)
!5664 = distinct !DISubprogram(name: "devm_kasprintf_strarray", scope: !3, file: !3, line: 805, type: !5665, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6016)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!696, !5667, !230, !492}
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !111, line: 705, size: 5824, elements: !5669)
!5669 = !{!5670, !5671, !5672, !5675, !5676, !5729, !5799, !5800, !5801, !5802, !5803, !5810, !5902, !5915, !5925, !5929, !5931, !5932, !5933, !5937, !5944, !5945, !5948, !5951, !5955, !5958, !5959, !5960, !5961, !5962, !5963, !5993, !5994, !5995, !5998, !6001, !6010, !6011, !6012, !6013, !6014, !6015}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5668, file: !111, line: 706, baseType: !2507, size: 512)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5668, file: !111, line: 707, baseType: !5667, size: 64, offset: 512)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5668, file: !111, line: 709, baseType: !5673, size: 64, offset: 576)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5674, size: 64)
!5674 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !111, line: 37, flags: DIFlagFwdDecl)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !5668, file: !111, line: 711, baseType: !230, size: 64, offset: 640)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5668, file: !111, line: 712, baseType: !5677, size: 64, offset: 704)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5679)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !111, line: 89, size: 384, elements: !5680)
!5680 = !{!5681, !5682, !5683, !5689, !5694, !5698}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5679, file: !111, line: 90, baseType: !230, size: 64)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5679, file: !111, line: 91, baseType: !2587, size: 64, offset: 64)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5679, file: !111, line: 92, baseType: !5684, size: 64, offset: 128)
!5684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5685, size: 64)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!20, !5687, !2543}
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5688, size: 64)
!5688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5668)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5679, file: !111, line: 93, baseType: !5690, size: 64, offset: 192)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!18, !5687, !5693, !3162, !3163}
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5679, file: !111, line: 95, baseType: !5695, size: 64, offset: 256)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{null, !5667}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5679, file: !111, line: 97, baseType: !5699, size: 64, offset: 320)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5701)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !118, line: 286, size: 1472, elements: !5702)
!5702 = !{!5703, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5701, file: !118, line: 287, baseType: !5704, size: 64)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!20, !5667}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5701, file: !118, line: 288, baseType: !5695, size: 64, offset: 64)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5701, file: !118, line: 289, baseType: !5704, size: 64, offset: 128)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5701, file: !118, line: 290, baseType: !5704, size: 64, offset: 192)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5701, file: !118, line: 291, baseType: !5704, size: 64, offset: 256)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5701, file: !118, line: 292, baseType: !5704, size: 64, offset: 320)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5701, file: !118, line: 293, baseType: !5704, size: 64, offset: 384)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5701, file: !118, line: 294, baseType: !5704, size: 64, offset: 448)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5701, file: !118, line: 295, baseType: !5704, size: 64, offset: 512)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5701, file: !118, line: 296, baseType: !5704, size: 64, offset: 576)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5701, file: !118, line: 297, baseType: !5704, size: 64, offset: 640)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5701, file: !118, line: 298, baseType: !5704, size: 64, offset: 704)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5701, file: !118, line: 299, baseType: !5704, size: 64, offset: 768)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5701, file: !118, line: 300, baseType: !5704, size: 64, offset: 832)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5701, file: !118, line: 301, baseType: !5704, size: 64, offset: 896)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5701, file: !118, line: 302, baseType: !5704, size: 64, offset: 960)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5701, file: !118, line: 303, baseType: !5704, size: 64, offset: 1024)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5701, file: !118, line: 304, baseType: !5704, size: 64, offset: 1088)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5701, file: !118, line: 305, baseType: !5704, size: 64, offset: 1152)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5701, file: !118, line: 306, baseType: !5704, size: 64, offset: 1216)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5701, file: !118, line: 307, baseType: !5704, size: 64, offset: 1280)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5701, file: !118, line: 308, baseType: !5704, size: 64, offset: 1344)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5701, file: !118, line: 309, baseType: !5704, size: 64, offset: 1408)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5668, file: !111, line: 714, baseType: !5730, size: 64, offset: 768)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5732)
!5732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5733, line: 80, size: 1344, elements: !5734)
!5733 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5734 = !{!5735, !5736, !5737, !5738, !5739, !5740, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5798}
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5732, file: !5733, line: 81, baseType: !230, size: 64)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5732, file: !5733, line: 82, baseType: !230, size: 64, offset: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5732, file: !5733, line: 83, baseType: !2587, size: 64, offset: 128)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5732, file: !5733, line: 84, baseType: !2587, size: 64, offset: 192)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5732, file: !5733, line: 85, baseType: !2587, size: 64, offset: 256)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5732, file: !5733, line: 87, baseType: !5741, size: 64, offset: 320)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!20, !5667, !5744}
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !105, line: 96, size: 1152, elements: !5746)
!5746 = !{!5747, !5748, !5749, !5750, !5751, !5752, !5753, !5757, !5761, !5762, !5763, !5764, !5765, !5773, !5774, !5775, !5776, !5777, !5778}
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5745, file: !105, line: 97, baseType: !230, size: 64)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5745, file: !105, line: 98, baseType: !5730, size: 64, offset: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5745, file: !105, line: 100, baseType: !2494, size: 64, offset: 128)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5745, file: !105, line: 101, baseType: !230, size: 64, offset: 192)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5745, file: !105, line: 103, baseType: !574, size: 8, offset: 256)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5745, file: !105, line: 104, baseType: !104, size: 32, offset: 288)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5745, file: !105, line: 106, baseType: !5754, size: 64, offset: 320)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5756)
!5756 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !105, line: 106, flags: DIFlagFwdDecl)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5745, file: !105, line: 107, baseType: !5758, size: 64, offset: 384)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5760)
!5760 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !105, line: 107, flags: DIFlagFwdDecl)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5745, file: !105, line: 109, baseType: !5704, size: 64, offset: 448)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5745, file: !105, line: 110, baseType: !5695, size: 64, offset: 512)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5745, file: !105, line: 111, baseType: !5704, size: 64, offset: 576)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5745, file: !105, line: 112, baseType: !5695, size: 64, offset: 640)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5745, file: !105, line: 113, baseType: !5766, size: 64, offset: 704)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!20, !5667, !5769}
!5769 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !118, line: 60, baseType: !5770)
!5770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !118, line: 58, size: 32, elements: !5771)
!5771 = !{!5772}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5770, file: !118, line: 59, baseType: !20, size: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5745, file: !105, line: 114, baseType: !5704, size: 64, offset: 768)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5745, file: !105, line: 115, baseType: !2587, size: 64, offset: 832)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5745, file: !105, line: 116, baseType: !2587, size: 64, offset: 896)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5745, file: !105, line: 118, baseType: !5699, size: 64, offset: 960)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5745, file: !105, line: 119, baseType: !5695, size: 64, offset: 1024)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5745, file: !105, line: 121, baseType: !5779, size: 64, offset: 1088)
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !105, line: 121, flags: DIFlagFwdDecl)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5732, file: !5733, line: 88, baseType: !5684, size: 64, offset: 384)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5732, file: !5733, line: 89, baseType: !5704, size: 64, offset: 448)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5732, file: !5733, line: 90, baseType: !5695, size: 64, offset: 512)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5732, file: !5733, line: 91, baseType: !5695, size: 64, offset: 576)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5732, file: !5733, line: 92, baseType: !5695, size: 64, offset: 640)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5732, file: !5733, line: 94, baseType: !5704, size: 64, offset: 704)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5732, file: !5733, line: 95, baseType: !5704, size: 64, offset: 768)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5732, file: !5733, line: 97, baseType: !5766, size: 64, offset: 832)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5732, file: !5733, line: 98, baseType: !5704, size: 64, offset: 896)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5732, file: !5733, line: 100, baseType: !5704, size: 64, offset: 960)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5732, file: !5733, line: 102, baseType: !5704, size: 64, offset: 1024)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5732, file: !5733, line: 103, baseType: !5695, size: 64, offset: 1088)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5732, file: !5733, line: 105, baseType: !5699, size: 64, offset: 1152)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5732, file: !5733, line: 107, baseType: !5795, size: 64, offset: 1216)
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5797)
!5797 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5733, line: 107, flags: DIFlagFwdDecl)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5732, file: !5733, line: 109, baseType: !574, size: 8, offset: 1280)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5668, file: !111, line: 715, baseType: !5744, size: 64, offset: 832)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !5668, file: !111, line: 717, baseType: !177, size: 64, offset: 896)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5668, file: !111, line: 719, baseType: !177, size: 64, offset: 960)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5668, file: !111, line: 721, baseType: !1906, size: 256, offset: 1024)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !5668, file: !111, line: 725, baseType: !5804, size: 448, offset: 1280)
!5804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !111, line: 517, size: 448, elements: !5805)
!5805 = !{!5806, !5807, !5808, !5809}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5804, file: !111, line: 518, baseType: !1573, size: 128)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5804, file: !111, line: 519, baseType: !1573, size: 128, offset: 128)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5804, file: !111, line: 520, baseType: !1573, size: 128, offset: 256)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5804, file: !111, line: 521, baseType: !110, size: 32, offset: 384)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5668, file: !111, line: 726, baseType: !5811, size: 2496, offset: 1728)
!5811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !118, line: 663, size: 2496, elements: !5812)
!5812 = !{!5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5895, !5899}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5811, file: !118, line: 664, baseType: !5769, size: 32)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5811, file: !118, line: 665, baseType: !14, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5811, file: !118, line: 666, baseType: !14, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5811, file: !118, line: 667, baseType: !574, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5811, file: !118, line: 668, baseType: !574, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5811, file: !118, line: 669, baseType: !574, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5811, file: !118, line: 670, baseType: !574, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5811, file: !118, line: 671, baseType: !574, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5811, file: !118, line: 672, baseType: !574, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5811, file: !118, line: 673, baseType: !574, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5811, file: !118, line: 674, baseType: !574, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5811, file: !118, line: 675, baseType: !175, size: 32, offset: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5811, file: !118, line: 676, baseType: !1861, size: 32, offset: 96)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5811, file: !118, line: 678, baseType: !1573, size: 128, offset: 128)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5811, file: !118, line: 679, baseType: !2716, size: 256, offset: 256)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5811, file: !118, line: 680, baseType: !5829, size: 64, offset: 512)
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5830, size: 64)
!5830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5831, line: 43, size: 1536, elements: !5832)
!5831 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5832 = !{!5833, !5834, !5835, !5836, !5837, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5830, file: !5831, line: 44, baseType: !230, size: 64)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5830, file: !5831, line: 45, baseType: !20, size: 32, offset: 64)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5830, file: !5831, line: 46, baseType: !1573, size: 128, offset: 128)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5830, file: !5831, line: 47, baseType: !1861, size: 32, offset: 256)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5830, file: !5831, line: 48, baseType: !5838, size: 64, offset: 320)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !118, line: 629, flags: DIFlagFwdDecl)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5830, file: !5831, line: 49, baseType: !3523, size: 320, offset: 384)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5830, file: !5831, line: 50, baseType: !180, size: 64, offset: 704)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5830, file: !5831, line: 51, baseType: !1649, size: 64, offset: 768)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5830, file: !5831, line: 52, baseType: !1649, size: 64, offset: 832)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5830, file: !5831, line: 53, baseType: !1649, size: 64, offset: 896)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5830, file: !5831, line: 54, baseType: !1649, size: 64, offset: 960)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5830, file: !5831, line: 55, baseType: !1649, size: 64, offset: 1024)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5830, file: !5831, line: 56, baseType: !180, size: 64, offset: 1088)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5830, file: !5831, line: 57, baseType: !180, size: 64, offset: 1152)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5830, file: !5831, line: 58, baseType: !180, size: 64, offset: 1216)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5830, file: !5831, line: 59, baseType: !180, size: 64, offset: 1280)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5830, file: !5831, line: 60, baseType: !180, size: 64, offset: 1344)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5830, file: !5831, line: 61, baseType: !5667, size: 64, offset: 1408)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5830, file: !5831, line: 62, baseType: !574, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5830, file: !5831, line: 63, baseType: !574, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5811, file: !118, line: 681, baseType: !574, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5811, file: !118, line: 682, baseType: !574, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5811, file: !118, line: 683, baseType: !574, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5811, file: !118, line: 684, baseType: !14, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5811, file: !118, line: 685, baseType: !14, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5811, file: !118, line: 690, baseType: !1641, size: 512, offset: 640)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5811, file: !118, line: 691, baseType: !6, size: 64, offset: 1152)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5811, file: !118, line: 692, baseType: !3535, size: 256, offset: 1216)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5811, file: !118, line: 693, baseType: !1965, size: 192, offset: 1472)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5811, file: !118, line: 694, baseType: !5838, size: 64, offset: 1664)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5811, file: !118, line: 695, baseType: !1517, size: 32, offset: 1728)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5811, file: !118, line: 696, baseType: !1517, size: 32, offset: 1760)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5811, file: !118, line: 697, baseType: !14, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5811, file: !118, line: 698, baseType: !14, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5811, file: !118, line: 699, baseType: !14, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5811, file: !118, line: 700, baseType: !14, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5811, file: !118, line: 701, baseType: !14, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5811, file: !118, line: 702, baseType: !14, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5811, file: !118, line: 703, baseType: !574, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5811, file: !118, line: 704, baseType: !14, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5811, file: !118, line: 705, baseType: !14, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5811, file: !118, line: 706, baseType: !14, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5811, file: !118, line: 707, baseType: !14, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5811, file: !118, line: 708, baseType: !14, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5811, file: !118, line: 709, baseType: !14, size: 32, offset: 1824)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5811, file: !118, line: 710, baseType: !117, size: 32, offset: 1856)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5811, file: !118, line: 711, baseType: !125, size: 32, offset: 1888)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5811, file: !118, line: 712, baseType: !125, size: 32, offset: 1920)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5811, file: !118, line: 713, baseType: !20, size: 32, offset: 1952)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5811, file: !118, line: 714, baseType: !20, size: 32, offset: 1984)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5811, file: !118, line: 715, baseType: !6, size: 64, offset: 2048)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5811, file: !118, line: 716, baseType: !6, size: 64, offset: 2112)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5811, file: !118, line: 717, baseType: !6, size: 64, offset: 2176)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5811, file: !118, line: 718, baseType: !6, size: 64, offset: 2240)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5811, file: !118, line: 720, baseType: !5890, size: 64, offset: 2304)
!5890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5891, size: 64)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !118, line: 632, size: 64, elements: !5892)
!5892 = !{!5893, !5894}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5891, file: !118, line: 633, baseType: !1861, size: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5891, file: !118, line: 634, baseType: !14, size: 32, offset: 32)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5811, file: !118, line: 721, baseType: !5896, size: 64, offset: 2368)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{null, !5667, !2035}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5811, file: !118, line: 722, baseType: !5900, size: 64, offset: 2432)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !118, line: 722, flags: DIFlagFwdDecl)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !5668, file: !111, line: 727, baseType: !5903, size: 64, offset: 4224)
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !118, line: 742, size: 1792, elements: !5905)
!5905 = !{!5906, !5907, !5908, !5912, !5913, !5914}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5904, file: !118, line: 743, baseType: !5701, size: 1472)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5904, file: !118, line: 744, baseType: !5704, size: 64, offset: 1472)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5904, file: !118, line: 745, baseType: !5909, size: 64, offset: 1536)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{null, !5667, !574}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5904, file: !118, line: 746, baseType: !5704, size: 64, offset: 1600)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5904, file: !118, line: 747, baseType: !5695, size: 64, offset: 1664)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5904, file: !118, line: 748, baseType: !5695, size: 64, offset: 1728)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !5668, file: !111, line: 736, baseType: !5916, size: 128, offset: 4288)
!5916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !111, line: 529, size: 128, elements: !5917)
!5917 = !{!5918, !5922}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5916, file: !111, line: 531, baseType: !5919, size: 64)
!5919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5920 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5921, line: 13, flags: DIFlagFwdDecl)
!5921 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5916, file: !111, line: 532, baseType: !5923, size: 64, offset: 64)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !111, line: 49, flags: DIFlagFwdDecl)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !5668, file: !111, line: 738, baseType: !5926, size: 64, offset: 4416)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5928)
!5928 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !111, line: 738, flags: DIFlagFwdDecl)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5668, file: !111, line: 740, baseType: !5930, size: 64, offset: 4480)
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !5668, file: !111, line: 741, baseType: !6, size: 64, offset: 4544)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !5668, file: !111, line: 746, baseType: !6, size: 64, offset: 4608)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !5668, file: !111, line: 747, baseType: !5934, size: 64, offset: 4672)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5935, size: 64)
!5935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5936)
!5936 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !111, line: 747, flags: DIFlagFwdDecl)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5668, file: !111, line: 749, baseType: !5938, size: 64, offset: 4736)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !111, line: 428, size: 128, elements: !5940)
!5940 = !{!5941, !5942, !5943}
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5939, file: !111, line: 433, baseType: !14, size: 32)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5939, file: !111, line: 434, baseType: !14, size: 32, offset: 32)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5939, file: !111, line: 435, baseType: !180, size: 64, offset: 64)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !5668, file: !111, line: 751, baseType: !1573, size: 128, offset: 4800)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !5668, file: !111, line: 762, baseType: !5946, size: 64, offset: 4928)
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !111, line: 762, flags: DIFlagFwdDecl)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !5668, file: !111, line: 770, baseType: !5949, offset: 4992)
!5949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5950, line: 5, elements: !957)
!5950 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !5668, file: !111, line: 772, baseType: !5952, size: 64, offset: 4992)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5954, line: 18, flags: DIFlagFwdDecl)
!5954 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5668, file: !111, line: 773, baseType: !5956, size: 64, offset: 5056)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5733, line: 22, flags: DIFlagFwdDecl)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5668, file: !111, line: 776, baseType: !20, size: 32, offset: 5120)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !5668, file: !111, line: 778, baseType: !2327, size: 32, offset: 5152)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5668, file: !111, line: 779, baseType: !175, size: 32, offset: 5184)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !5668, file: !111, line: 781, baseType: !1861, size: 32, offset: 5216)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !5668, file: !111, line: 782, baseType: !1573, size: 128, offset: 5248)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5668, file: !111, line: 784, baseType: !5964, size: 64, offset: 5376)
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5966)
!5966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5967, line: 52, size: 768, elements: !5968)
!5967 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5968 = !{!5969, !5970, !5971, !5972, !5973, !5977, !5981, !5982, !5983, !5984, !5988, !5992}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5966, file: !5967, line: 53, baseType: !230, size: 64)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5966, file: !5967, line: 55, baseType: !2587, size: 64, offset: 64)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5966, file: !5967, line: 56, baseType: !2587, size: 64, offset: 128)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5966, file: !5967, line: 58, baseType: !5684, size: 64, offset: 192)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5966, file: !5967, line: 59, baseType: !5974, size: 64, offset: 256)
!5974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5975, size: 64)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!18, !5687, !5693}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5966, file: !5967, line: 61, baseType: !5978, size: 64, offset: 320)
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5979, size: 64)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{null, !5964}
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5966, file: !5967, line: 62, baseType: !5695, size: 64, offset: 384)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5966, file: !5967, line: 64, baseType: !5704, size: 64, offset: 448)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5966, file: !5967, line: 66, baseType: !3130, size: 64, offset: 512)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5966, file: !5967, line: 67, baseType: !5985, size: 64, offset: 576)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!568, !5687}
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5966, file: !5967, line: 69, baseType: !5989, size: 64, offset: 640)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{null, !5687, !3162, !3163}
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5966, file: !5967, line: 71, baseType: !5699, size: 64, offset: 704)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5668, file: !111, line: 785, baseType: !2587, size: 64, offset: 5440)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5668, file: !111, line: 787, baseType: !5695, size: 64, offset: 5504)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !5668, file: !111, line: 788, baseType: !5996, size: 64, offset: 5568)
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !111, line: 46, flags: DIFlagFwdDecl)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5668, file: !111, line: 789, baseType: !5999, size: 64, offset: 5632)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !111, line: 48, flags: DIFlagFwdDecl)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !5668, file: !111, line: 791, baseType: !6002, size: 64, offset: 5696)
!6002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6003, size: 64)
!6003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !111, line: 597, size: 128, elements: !6004)
!6004 = !{!6005, !6006, !6007, !6008, !6009}
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !6003, file: !111, line: 598, baseType: !132, size: 32)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !6003, file: !111, line: 599, baseType: !141, size: 32, offset: 32)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !6003, file: !111, line: 600, baseType: !146, size: 32, offset: 64)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !6003, file: !111, line: 601, baseType: !574, size: 8, offset: 96)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !6003, file: !111, line: 602, baseType: !574, size: 8, offset: 104)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5668, file: !111, line: 793, baseType: !151, size: 32, offset: 5760)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !5668, file: !111, line: 795, baseType: !574, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5668, file: !111, line: 796, baseType: !574, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !5668, file: !111, line: 797, baseType: !574, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !5668, file: !111, line: 798, baseType: !574, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !5668, file: !111, line: 799, baseType: !574, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!6016 = !{!6017, !6018, !6019, !6020}
!6017 = !DILocalVariable(name: "dev", arg: 1, scope: !5664, file: !3, line: 805, type: !5667)
!6018 = !DILocalVariable(name: "prefix", arg: 2, scope: !5664, file: !3, line: 805, type: !230)
!6019 = !DILocalVariable(name: "n", arg: 3, scope: !5664, file: !3, line: 805, type: !492)
!6020 = !DILocalVariable(name: "ptr", scope: !5664, file: !3, line: 807, type: !6021)
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strarray", file: !3, line: 793, size: 128, elements: !6023)
!6023 = !{!6024, !6025}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6022, file: !3, line: 794, baseType: !696, size: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !6022, file: !3, line: 795, baseType: !492, size: 64, offset: 64)
!6026 = !DILocation(line: 805, column: 47, scope: !5664)
!6027 = !DILocation(line: 805, column: 64, scope: !5664)
!6028 = !DILocation(line: 805, column: 79, scope: !5664)
!6029 = !DILocation(line: 807, column: 2, scope: !5664)
!6030 = !DILocation(line: 807, column: 19, scope: !5664)
!6031 = !DILocation(line: 809, column: 8, scope: !5664)
!6032 = !DILocation(line: 809, column: 6, scope: !5664)
!6033 = !DILocation(line: 810, column: 7, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 810, column: 6)
!6035 = !DILocation(line: 810, column: 6, scope: !5664)
!6036 = !DILocation(line: 811, column: 10, scope: !6034)
!6037 = !DILocation(line: 811, column: 3, scope: !6034)
!6038 = !DILocation(line: 813, column: 46, scope: !5664)
!6039 = !DILocation(line: 813, column: 54, scope: !5664)
!6040 = !DILocation(line: 813, column: 15, scope: !5664)
!6041 = !DILocation(line: 813, column: 2, scope: !5664)
!6042 = !DILocation(line: 813, column: 7, scope: !5664)
!6043 = !DILocation(line: 813, column: 13, scope: !5664)
!6044 = !DILocation(line: 814, column: 7, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 814, column: 6)
!6046 = !DILocation(line: 814, column: 12, scope: !6045)
!6047 = !DILocation(line: 814, column: 6, scope: !5664)
!6048 = !DILocation(line: 815, column: 15, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 814, column: 19)
!6050 = !DILocation(line: 815, column: 3, scope: !6049)
!6051 = !DILocation(line: 816, column: 10, scope: !6049)
!6052 = !DILocation(line: 816, column: 3, scope: !6049)
!6053 = !DILocation(line: 819, column: 11, scope: !5664)
!6054 = !DILocation(line: 819, column: 2, scope: !5664)
!6055 = !DILocation(line: 819, column: 7, scope: !5664)
!6056 = !DILocation(line: 819, column: 9, scope: !5664)
!6057 = !DILocation(line: 820, column: 13, scope: !5664)
!6058 = !DILocation(line: 820, column: 18, scope: !5664)
!6059 = !DILocation(line: 820, column: 2, scope: !5664)
!6060 = !DILocation(line: 822, column: 9, scope: !5664)
!6061 = !DILocation(line: 822, column: 14, scope: !5664)
!6062 = !DILocation(line: 822, column: 2, scope: !5664)
!6063 = !DILocation(line: 823, column: 1, scope: !5664)
!6064 = !DISubprogram(name: "__devres_alloc_node", scope: !111, file: !111, line: 274, type: !6065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!177, !6067, !492, !178, !20, !230}
!6067 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !111, line: 271, baseType: !6068)
!6068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6069, size: 64)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{null, !5667, !177}
!6071 = distinct !DISubprogram(name: "devm_kfree_strarray", scope: !3, file: !3, line: 798, type: !6069, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6072)
!6072 = !{!6073, !6074, !6075}
!6073 = !DILocalVariable(name: "dev", arg: 1, scope: !6071, file: !3, line: 798, type: !5667)
!6074 = !DILocalVariable(name: "res", arg: 2, scope: !6071, file: !3, line: 798, type: !177)
!6075 = !DILocalVariable(name: "array", scope: !6071, file: !3, line: 800, type: !6021)
!6076 = !DILocation(line: 798, column: 48, scope: !6071)
!6077 = !DILocation(line: 798, column: 59, scope: !6071)
!6078 = !DILocation(line: 800, column: 2, scope: !6071)
!6079 = !DILocation(line: 800, column: 19, scope: !6071)
!6080 = !DILocation(line: 800, column: 27, scope: !6071)
!6081 = !DILocation(line: 802, column: 17, scope: !6071)
!6082 = !DILocation(line: 802, column: 24, scope: !6071)
!6083 = !DILocation(line: 802, column: 31, scope: !6071)
!6084 = !DILocation(line: 802, column: 38, scope: !6071)
!6085 = !DILocation(line: 802, column: 2, scope: !6071)
!6086 = !DILocation(line: 803, column: 1, scope: !6071)
!6087 = distinct !DISubprogram(name: "ERR_PTR", scope: !571, file: !571, line: 39, type: !6088, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!177, !181}
!6090 = !{!6091}
!6091 = !DILocalVariable(name: "error", arg: 1, scope: !6087, file: !571, line: 39, type: !181)
!6092 = !DILocation(line: 39, column: 48, scope: !6087)
!6093 = !DILocation(line: 41, column: 18, scope: !6087)
!6094 = !DILocation(line: 41, column: 9, scope: !6087)
!6095 = !DILocation(line: 41, column: 2, scope: !6087)
!6096 = !DISubprogram(name: "devres_free", scope: !111, file: !111, line: 285, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6097 = !DISubprogram(name: "devres_add", scope: !111, file: !111, line: 286, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6098 = distinct !DISubprogram(name: "strscpy_pad", scope: !3, file: !3, line: 846, type: !6099, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6101)
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!2405, !18, !230, !492}
!6101 = !{!6102, !6103, !6104, !6105}
!6102 = !DILocalVariable(name: "dest", arg: 1, scope: !6098, file: !3, line: 846, type: !18)
!6103 = !DILocalVariable(name: "src", arg: 2, scope: !6098, file: !3, line: 846, type: !230)
!6104 = !DILocalVariable(name: "count", arg: 3, scope: !6098, file: !3, line: 846, type: !492)
!6105 = !DILocalVariable(name: "written", scope: !6098, file: !3, line: 848, type: !2405)
!6106 = !DILocation(line: 846, column: 27, scope: !6098)
!6107 = !DILocation(line: 846, column: 45, scope: !6098)
!6108 = !DILocation(line: 846, column: 57, scope: !6098)
!6109 = !DILocation(line: 848, column: 2, scope: !6098)
!6110 = !DILocation(line: 848, column: 10, scope: !6098)
!6111 = !DILocation(line: 850, column: 20, scope: !6098)
!6112 = !DILocation(line: 850, column: 26, scope: !6098)
!6113 = !DILocation(line: 850, column: 31, scope: !6098)
!6114 = !DILocation(line: 850, column: 12, scope: !6098)
!6115 = !DILocation(line: 850, column: 10, scope: !6098)
!6116 = !DILocation(line: 851, column: 6, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 851, column: 6)
!6118 = !DILocation(line: 851, column: 14, scope: !6117)
!6119 = !DILocation(line: 851, column: 18, scope: !6117)
!6120 = !DILocation(line: 851, column: 21, scope: !6117)
!6121 = !DILocation(line: 851, column: 32, scope: !6117)
!6122 = !DILocation(line: 851, column: 38, scope: !6117)
!6123 = !DILocation(line: 851, column: 29, scope: !6117)
!6124 = !DILocation(line: 851, column: 6, scope: !6098)
!6125 = !DILocation(line: 852, column: 10, scope: !6117)
!6126 = !DILocation(line: 852, column: 3, scope: !6117)
!6127 = !DILocation(line: 854, column: 9, scope: !6098)
!6128 = !DILocation(line: 854, column: 16, scope: !6098)
!6129 = !DILocation(line: 854, column: 14, scope: !6098)
!6130 = !DILocation(line: 854, column: 24, scope: !6098)
!6131 = !DILocation(line: 854, column: 32, scope: !6098)
!6132 = !DILocation(line: 854, column: 40, scope: !6098)
!6133 = !DILocation(line: 854, column: 38, scope: !6098)
!6134 = !DILocation(line: 854, column: 48, scope: !6098)
!6135 = !DILocation(line: 854, column: 2, scope: !6098)
!6136 = !DILocation(line: 856, column: 9, scope: !6098)
!6137 = !DILocation(line: 856, column: 2, scope: !6098)
!6138 = !DILocation(line: 857, column: 1, scope: !6098)
!6139 = !DISubprogram(name: "strscpy", scope: !565, file: !565, line: 72, type: !6099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6140 = distinct !DISubprogram(name: "skip_spaces", scope: !3, file: !3, line: 866, type: !6141, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6143)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{!18, !230}
!6143 = !{!6144}
!6144 = !DILocalVariable(name: "str", arg: 1, scope: !6140, file: !3, line: 866, type: !230)
!6145 = !DILocation(line: 866, column: 31, scope: !6140)
!6146 = !DILocation(line: 868, column: 2, scope: !6140)
!6147 = !DILocation(line: 868, column: 9, scope: !6140)
!6148 = !DILocation(line: 869, column: 3, scope: !6140)
!6149 = distinct !{!6149, !6146, !6150, !399, !400}
!6150 = !DILocation(line: 869, column: 5, scope: !6140)
!6151 = !DILocation(line: 870, column: 17, scope: !6140)
!6152 = !DILocation(line: 870, column: 2, scope: !6140)
!6153 = distinct !DISubprogram(name: "strim", scope: !3, file: !3, line: 882, type: !6154, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6156)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!18, !18}
!6156 = !{!6157, !6158, !6159}
!6157 = !DILocalVariable(name: "s", arg: 1, scope: !6153, file: !3, line: 882, type: !18)
!6158 = !DILocalVariable(name: "size", scope: !6153, file: !3, line: 884, type: !492)
!6159 = !DILocalVariable(name: "end", scope: !6153, file: !3, line: 885, type: !18)
!6160 = !DILocation(line: 882, column: 19, scope: !6153)
!6161 = !DILocation(line: 884, column: 2, scope: !6153)
!6162 = !DILocation(line: 884, column: 9, scope: !6153)
!6163 = !DILocation(line: 885, column: 2, scope: !6153)
!6164 = !DILocation(line: 885, column: 8, scope: !6153)
!6165 = !DILocation(line: 887, column: 16, scope: !6153)
!6166 = !DILocation(line: 887, column: 9, scope: !6153)
!6167 = !DILocation(line: 887, column: 7, scope: !6153)
!6168 = !DILocation(line: 888, column: 7, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 888, column: 6)
!6170 = !DILocation(line: 888, column: 6, scope: !6153)
!6171 = !DILocation(line: 889, column: 10, scope: !6169)
!6172 = !DILocation(line: 889, column: 3, scope: !6169)
!6173 = !DILocation(line: 891, column: 8, scope: !6153)
!6174 = !DILocation(line: 891, column: 12, scope: !6153)
!6175 = !DILocation(line: 891, column: 10, scope: !6153)
!6176 = !DILocation(line: 891, column: 17, scope: !6153)
!6177 = !DILocation(line: 891, column: 6, scope: !6153)
!6178 = !DILocation(line: 892, column: 2, scope: !6153)
!6179 = !DILocation(line: 892, column: 9, scope: !6153)
!6180 = !DILocation(line: 892, column: 16, scope: !6153)
!6181 = !DILocation(line: 892, column: 13, scope: !6153)
!6182 = !DILocation(line: 892, column: 18, scope: !6153)
!6183 = !DILocation(line: 892, column: 21, scope: !6153)
!6184 = !DILocation(line: 0, scope: !6153)
!6185 = !DILocation(line: 893, column: 6, scope: !6153)
!6186 = distinct !{!6186, !6178, !6185, !399, !400}
!6187 = !DILocation(line: 894, column: 4, scope: !6153)
!6188 = !DILocation(line: 894, column: 8, scope: !6153)
!6189 = !DILocation(line: 894, column: 13, scope: !6153)
!6190 = !DILocation(line: 896, column: 21, scope: !6153)
!6191 = !DILocation(line: 896, column: 9, scope: !6153)
!6192 = !DILocation(line: 896, column: 2, scope: !6153)
!6193 = !DILocation(line: 897, column: 1, scope: !6153)
!6194 = distinct !DISubprogram(name: "sysfs_streq", scope: !3, file: !3, line: 910, type: !6195, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6197)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!574, !230, !230}
!6197 = !{!6198, !6199}
!6198 = !DILocalVariable(name: "s1", arg: 1, scope: !6194, file: !3, line: 910, type: !230)
!6199 = !DILocalVariable(name: "s2", arg: 2, scope: !6194, file: !3, line: 910, type: !230)
!6200 = !DILocation(line: 910, column: 30, scope: !6194)
!6201 = !DILocation(line: 910, column: 46, scope: !6194)
!6202 = !DILocation(line: 912, column: 2, scope: !6194)
!6203 = !DILocation(line: 912, column: 10, scope: !6194)
!6204 = !DILocation(line: 912, column: 9, scope: !6194)
!6205 = !DILocation(line: 912, column: 13, scope: !6194)
!6206 = !DILocation(line: 912, column: 17, scope: !6194)
!6207 = !DILocation(line: 912, column: 16, scope: !6194)
!6208 = !DILocation(line: 912, column: 24, scope: !6194)
!6209 = !DILocation(line: 912, column: 23, scope: !6194)
!6210 = !DILocation(line: 912, column: 20, scope: !6194)
!6211 = !DILocation(line: 0, scope: !6194)
!6212 = !DILocation(line: 913, column: 5, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 912, column: 28)
!6214 = !DILocation(line: 914, column: 5, scope: !6213)
!6215 = distinct !{!6215, !6202, !6216, !399, !400}
!6216 = !DILocation(line: 915, column: 2, scope: !6194)
!6217 = !DILocation(line: 917, column: 7, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 917, column: 6)
!6219 = !DILocation(line: 917, column: 6, scope: !6218)
!6220 = !DILocation(line: 917, column: 14, scope: !6218)
!6221 = !DILocation(line: 917, column: 13, scope: !6218)
!6222 = !DILocation(line: 917, column: 10, scope: !6218)
!6223 = !DILocation(line: 917, column: 6, scope: !6194)
!6224 = !DILocation(line: 918, column: 3, scope: !6218)
!6225 = !DILocation(line: 919, column: 8, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 919, column: 6)
!6227 = !DILocation(line: 919, column: 7, scope: !6226)
!6228 = !DILocation(line: 919, column: 11, scope: !6226)
!6229 = !DILocation(line: 919, column: 15, scope: !6226)
!6230 = !DILocation(line: 919, column: 14, scope: !6226)
!6231 = !DILocation(line: 919, column: 18, scope: !6226)
!6232 = !DILocation(line: 919, column: 26, scope: !6226)
!6233 = !DILocation(line: 919, column: 30, scope: !6226)
!6234 = !DILocation(line: 919, column: 6, scope: !6194)
!6235 = !DILocation(line: 920, column: 3, scope: !6226)
!6236 = !DILocation(line: 921, column: 7, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 921, column: 6)
!6238 = !DILocation(line: 921, column: 6, scope: !6237)
!6239 = !DILocation(line: 921, column: 10, scope: !6237)
!6240 = !DILocation(line: 921, column: 18, scope: !6237)
!6241 = !DILocation(line: 921, column: 22, scope: !6237)
!6242 = !DILocation(line: 921, column: 28, scope: !6237)
!6243 = !DILocation(line: 921, column: 33, scope: !6237)
!6244 = !DILocation(line: 921, column: 32, scope: !6237)
!6245 = !DILocation(line: 921, column: 6, scope: !6194)
!6246 = !DILocation(line: 922, column: 3, scope: !6237)
!6247 = !DILocation(line: 923, column: 2, scope: !6194)
!6248 = !DILocation(line: 924, column: 1, scope: !6194)
!6249 = distinct !DISubprogram(name: "match_string", scope: !3, file: !3, line: 944, type: !6250, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6252)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{!20, !238, !492, !230}
!6252 = !{!6253, !6254, !6255, !6256, !6257}
!6253 = !DILocalVariable(name: "array", arg: 1, scope: !6249, file: !3, line: 944, type: !238)
!6254 = !DILocalVariable(name: "n", arg: 2, scope: !6249, file: !3, line: 944, type: !492)
!6255 = !DILocalVariable(name: "string", arg: 3, scope: !6249, file: !3, line: 944, type: !230)
!6256 = !DILocalVariable(name: "index", scope: !6249, file: !3, line: 946, type: !20)
!6257 = !DILocalVariable(name: "item", scope: !6249, file: !3, line: 947, type: !230)
!6258 = !DILocation(line: 944, column: 38, scope: !6249)
!6259 = !DILocation(line: 944, column: 52, scope: !6249)
!6260 = !DILocation(line: 944, column: 67, scope: !6249)
!6261 = !DILocation(line: 946, column: 2, scope: !6249)
!6262 = !DILocation(line: 946, column: 6, scope: !6249)
!6263 = !DILocation(line: 947, column: 2, scope: !6249)
!6264 = !DILocation(line: 947, column: 14, scope: !6249)
!6265 = !DILocation(line: 949, column: 13, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 949, column: 2)
!6267 = !DILocation(line: 949, column: 7, scope: !6266)
!6268 = !DILocation(line: 949, column: 18, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 949, column: 2)
!6270 = !DILocation(line: 949, column: 26, scope: !6269)
!6271 = !DILocation(line: 949, column: 24, scope: !6269)
!6272 = !DILocation(line: 949, column: 2, scope: !6266)
!6273 = !DILocation(line: 950, column: 10, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 949, column: 38)
!6275 = !DILocation(line: 950, column: 16, scope: !6274)
!6276 = !DILocation(line: 950, column: 8, scope: !6274)
!6277 = !DILocation(line: 951, column: 8, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 951, column: 7)
!6279 = !DILocation(line: 951, column: 7, scope: !6274)
!6280 = !DILocation(line: 952, column: 4, scope: !6278)
!6281 = !DILocation(line: 953, column: 15, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 953, column: 7)
!6283 = !DILocation(line: 953, column: 21, scope: !6282)
!6284 = !DILocation(line: 953, column: 8, scope: !6282)
!6285 = !DILocation(line: 953, column: 7, scope: !6274)
!6286 = !DILocation(line: 954, column: 11, scope: !6282)
!6287 = !DILocation(line: 954, column: 4, scope: !6282)
!6288 = !DILocation(line: 955, column: 2, scope: !6274)
!6289 = !DILocation(line: 949, column: 34, scope: !6269)
!6290 = !DILocation(line: 949, column: 2, scope: !6269)
!6291 = distinct !{!6291, !6272, !6292, !399, !400}
!6292 = !DILocation(line: 955, column: 2, scope: !6266)
!6293 = !DILocation(line: 957, column: 2, scope: !6249)
!6294 = !DILocation(line: 958, column: 1, scope: !6249)
!6295 = !DISubprogram(name: "strcmp", scope: !565, file: !565, line: 88, type: !6296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6296 = !DISubroutineType(types: !6297)
!6297 = !{!20, !230, !230}
!6298 = distinct !DISubprogram(name: "__sysfs_match_string", scope: !3, file: !3, line: 978, type: !6250, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6299)
!6299 = !{!6300, !6301, !6302, !6303, !6304}
!6300 = !DILocalVariable(name: "array", arg: 1, scope: !6298, file: !3, line: 978, type: !238)
!6301 = !DILocalVariable(name: "n", arg: 2, scope: !6298, file: !3, line: 978, type: !492)
!6302 = !DILocalVariable(name: "str", arg: 3, scope: !6298, file: !3, line: 978, type: !230)
!6303 = !DILocalVariable(name: "item", scope: !6298, file: !3, line: 980, type: !230)
!6304 = !DILocalVariable(name: "index", scope: !6298, file: !3, line: 981, type: !20)
!6305 = !DILocation(line: 978, column: 46, scope: !6298)
!6306 = !DILocation(line: 978, column: 60, scope: !6298)
!6307 = !DILocation(line: 978, column: 75, scope: !6298)
!6308 = !DILocation(line: 980, column: 2, scope: !6298)
!6309 = !DILocation(line: 980, column: 14, scope: !6298)
!6310 = !DILocation(line: 981, column: 2, scope: !6298)
!6311 = !DILocation(line: 981, column: 6, scope: !6298)
!6312 = !DILocation(line: 983, column: 13, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 983, column: 2)
!6314 = !DILocation(line: 983, column: 7, scope: !6313)
!6315 = !DILocation(line: 983, column: 18, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 983, column: 2)
!6317 = !DILocation(line: 983, column: 26, scope: !6316)
!6318 = !DILocation(line: 983, column: 24, scope: !6316)
!6319 = !DILocation(line: 983, column: 2, scope: !6313)
!6320 = !DILocation(line: 984, column: 10, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 983, column: 38)
!6322 = !DILocation(line: 984, column: 16, scope: !6321)
!6323 = !DILocation(line: 984, column: 8, scope: !6321)
!6324 = !DILocation(line: 985, column: 8, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 985, column: 7)
!6326 = !DILocation(line: 985, column: 7, scope: !6321)
!6327 = !DILocation(line: 986, column: 4, scope: !6325)
!6328 = !DILocation(line: 987, column: 19, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 987, column: 7)
!6330 = !DILocation(line: 987, column: 25, scope: !6329)
!6331 = !DILocation(line: 987, column: 7, scope: !6329)
!6332 = !DILocation(line: 987, column: 7, scope: !6321)
!6333 = !DILocation(line: 988, column: 11, scope: !6329)
!6334 = !DILocation(line: 988, column: 4, scope: !6329)
!6335 = !DILocation(line: 989, column: 2, scope: !6321)
!6336 = !DILocation(line: 983, column: 34, scope: !6316)
!6337 = !DILocation(line: 983, column: 2, scope: !6316)
!6338 = distinct !{!6338, !6319, !6339, !399, !400}
!6339 = !DILocation(line: 989, column: 2, scope: !6313)
!6340 = !DILocation(line: 991, column: 2, scope: !6298)
!6341 = !DILocation(line: 992, column: 1, scope: !6298)
!6342 = distinct !DISubprogram(name: "memcpy_and_pad", scope: !3, file: !3, line: 1024, type: !6343, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6345)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{null, !177, !492, !568, !492, !20}
!6345 = !{!6346, !6347, !6348, !6349, !6350}
!6346 = !DILocalVariable(name: "dest", arg: 1, scope: !6342, file: !3, line: 1024, type: !177)
!6347 = !DILocalVariable(name: "dest_len", arg: 2, scope: !6342, file: !3, line: 1024, type: !492)
!6348 = !DILocalVariable(name: "src", arg: 3, scope: !6342, file: !3, line: 1024, type: !568)
!6349 = !DILocalVariable(name: "count", arg: 4, scope: !6342, file: !3, line: 1024, type: !492)
!6350 = !DILocalVariable(name: "pad", arg: 5, scope: !6342, file: !3, line: 1025, type: !20)
!6351 = !DILocation(line: 1024, column: 27, scope: !6342)
!6352 = !DILocation(line: 1024, column: 40, scope: !6342)
!6353 = !DILocation(line: 1024, column: 62, scope: !6342)
!6354 = !DILocation(line: 1024, column: 74, scope: !6342)
!6355 = !DILocation(line: 1025, column: 11, scope: !6342)
!6356 = !DILocation(line: 1027, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 1027, column: 6)
!6358 = !DILocation(line: 1027, column: 17, scope: !6357)
!6359 = !DILocation(line: 1027, column: 15, scope: !6357)
!6360 = !DILocation(line: 1027, column: 6, scope: !6342)
!6361 = !DILocation(line: 1028, column: 10, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 1027, column: 24)
!6363 = !DILocation(line: 1028, column: 16, scope: !6362)
!6364 = !DILocation(line: 1028, column: 21, scope: !6362)
!6365 = !DILocation(line: 1028, column: 3, scope: !6362)
!6366 = !DILocation(line: 1029, column: 10, scope: !6362)
!6367 = !DILocation(line: 1029, column: 17, scope: !6362)
!6368 = !DILocation(line: 1029, column: 15, scope: !6362)
!6369 = !DILocation(line: 1029, column: 24, scope: !6362)
!6370 = !DILocation(line: 1029, column: 3, scope: !6362)
!6371 = !DILocation(line: 1029, column: 30, scope: !6362)
!6372 = !DILocation(line: 1029, column: 41, scope: !6362)
!6373 = !DILocation(line: 1029, column: 39, scope: !6362)
!6374 = !DILocation(line: 1030, column: 2, scope: !6362)
!6375 = !DILocation(line: 1031, column: 10, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 1030, column: 9)
!6377 = !DILocation(line: 1031, column: 16, scope: !6376)
!6378 = !DILocation(line: 1031, column: 21, scope: !6376)
!6379 = !DILocation(line: 1031, column: 3, scope: !6376)
!6380 = !DILocation(line: 1033, column: 1, scope: !6342)
!6381 = distinct !DISubprogram(name: "kmalloc_array", scope: !163, file: !163, line: 629, type: !595, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6382)
!6382 = !{!6383, !6384, !6385, !6386}
!6383 = !DILocalVariable(name: "n", arg: 1, scope: !6381, file: !163, line: 629, type: !492)
!6384 = !DILocalVariable(name: "size", arg: 2, scope: !6381, file: !163, line: 629, type: !492)
!6385 = !DILocalVariable(name: "flags", arg: 3, scope: !6381, file: !163, line: 629, type: !178)
!6386 = !DILocalVariable(name: "bytes", scope: !6381, file: !163, line: 631, type: !492)
!6387 = !DILocation(line: 629, column: 61, scope: !6381)
!6388 = !DILocation(line: 629, column: 71, scope: !6381)
!6389 = !DILocation(line: 629, column: 83, scope: !6381)
!6390 = !DILocation(line: 631, column: 2, scope: !6381)
!6391 = !DILocation(line: 631, column: 9, scope: !6381)
!6392 = !DILocation(line: 633, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6381, file: !163, line: 633, column: 6)
!6394 = !DILocation(line: 633, column: 6, scope: !6381)
!6395 = !DILocation(line: 634, column: 3, scope: !6393)
!6396 = !DILocation(line: 635, column: 27, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6381, file: !163, line: 635, column: 6)
!6398 = !DILocation(line: 635, column: 6, scope: !6397)
!6399 = !DILocation(line: 635, column: 30, scope: !6397)
!6400 = !DILocation(line: 635, column: 54, scope: !6397)
!6401 = !DILocation(line: 635, column: 33, scope: !6397)
!6402 = !DILocation(line: 635, column: 6, scope: !6381)
!6403 = !DILocation(line: 636, column: 18, scope: !6397)
!6404 = !DILocation(line: 636, column: 25, scope: !6397)
!6405 = !DILocation(line: 636, column: 10, scope: !6397)
!6406 = !DILocation(line: 636, column: 3, scope: !6397)
!6407 = !DILocation(line: 637, column: 19, scope: !6381)
!6408 = !DILocation(line: 637, column: 26, scope: !6381)
!6409 = !DILocation(line: 637, column: 9, scope: !6381)
!6410 = !DILocation(line: 637, column: 2, scope: !6381)
!6411 = !DILocation(line: 638, column: 1, scope: !6381)
!6412 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6413, file: !6413, line: 51, type: !6414, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6416)
!6413 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6414 = !DISubroutineType(types: !6415)
!6415 = !{!574, !574}
!6416 = !{!6417}
!6417 = !DILocalVariable(name: "overflow", arg: 1, scope: !6412, file: !6413, line: 51, type: !574)
!6418 = !DILocation(line: 51, column: 60, scope: !6412)
!6419 = !DILocation(line: 53, column: 9, scope: !6412)
!6420 = !DILocation(line: 53, column: 2, scope: !6412)
!6421 = !DISubprogram(name: "__kmalloc", scope: !163, file: !163, line: 488, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6422 = distinct !DISubprogram(name: "isodigit", scope: !6423, file: !6423, line: 76, type: !6424, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6426)
!6423 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!6424 = !DISubroutineType(types: !6425)
!6425 = !{!20, !231}
!6426 = !{!6427}
!6427 = !DILocalVariable(name: "c", arg: 1, scope: !6422, file: !6423, line: 76, type: !231)
!6428 = !DILocation(line: 76, column: 39, scope: !6422)
!6429 = !DILocation(line: 78, column: 9, scope: !6422)
!6430 = !DILocation(line: 78, column: 11, scope: !6422)
!6431 = !DILocation(line: 78, column: 18, scope: !6422)
!6432 = !DILocation(line: 78, column: 21, scope: !6422)
!6433 = !DILocation(line: 78, column: 23, scope: !6422)
!6434 = !DILocation(line: 0, scope: !6422)
!6435 = !DILocation(line: 78, column: 2, scope: !6422)
!6436 = !DISubprogram(name: "hex_to_bin", scope: !6437, file: !6437, line: 29, type: !6438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6437 = !DIFile(filename: "./include/linux/hex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6eb26d4dbd04841a1512df2f8e16e7dd")
!6438 = !DISubroutineType(types: !6439)
!6439 = !{!20, !179}
!6440 = !DISubprogram(name: "kmalloc_large", scope: !163, file: !163, line: 531, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6441 = distinct !DISubprogram(name: "__kmalloc_index", scope: !163, file: !163, line: 444, type: !6442, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6444)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!14, !492, !574}
!6444 = !{!6445, !6446}
!6445 = !DILocalVariable(name: "size", arg: 1, scope: !6441, file: !163, line: 444, type: !492)
!6446 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6441, file: !163, line: 445, type: !574)
!6447 = !DILocation(line: 444, column: 60, scope: !6441)
!6448 = !DILocation(line: 445, column: 16, scope: !6441)
!6449 = !DILocation(line: 447, column: 7, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 447, column: 6)
!6451 = !DILocation(line: 447, column: 6, scope: !6441)
!6452 = !DILocation(line: 448, column: 3, scope: !6450)
!6453 = !DILocation(line: 450, column: 6, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 450, column: 6)
!6455 = !DILocation(line: 450, column: 11, scope: !6454)
!6456 = !DILocation(line: 450, column: 6, scope: !6441)
!6457 = !DILocation(line: 451, column: 3, scope: !6454)
!6458 = !DILocation(line: 453, column: 32, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 453, column: 6)
!6460 = !DILocation(line: 453, column: 37, scope: !6459)
!6461 = !DILocation(line: 453, column: 42, scope: !6459)
!6462 = !DILocation(line: 453, column: 45, scope: !6459)
!6463 = !DILocation(line: 453, column: 50, scope: !6459)
!6464 = !DILocation(line: 453, column: 6, scope: !6441)
!6465 = !DILocation(line: 454, column: 3, scope: !6459)
!6466 = !DILocation(line: 455, column: 32, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 455, column: 6)
!6468 = !DILocation(line: 455, column: 37, scope: !6467)
!6469 = !DILocation(line: 455, column: 43, scope: !6467)
!6470 = !DILocation(line: 455, column: 46, scope: !6467)
!6471 = !DILocation(line: 455, column: 51, scope: !6467)
!6472 = !DILocation(line: 455, column: 6, scope: !6441)
!6473 = !DILocation(line: 456, column: 3, scope: !6467)
!6474 = !DILocation(line: 457, column: 6, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 457, column: 6)
!6476 = !DILocation(line: 457, column: 11, scope: !6475)
!6477 = !DILocation(line: 457, column: 6, scope: !6441)
!6478 = !DILocation(line: 457, column: 26, scope: !6475)
!6479 = !DILocation(line: 458, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 458, column: 6)
!6481 = !DILocation(line: 458, column: 11, scope: !6480)
!6482 = !DILocation(line: 458, column: 6, scope: !6441)
!6483 = !DILocation(line: 458, column: 26, scope: !6480)
!6484 = !DILocation(line: 459, column: 6, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 459, column: 6)
!6486 = !DILocation(line: 459, column: 11, scope: !6485)
!6487 = !DILocation(line: 459, column: 6, scope: !6441)
!6488 = !DILocation(line: 459, column: 26, scope: !6485)
!6489 = !DILocation(line: 460, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 460, column: 6)
!6491 = !DILocation(line: 460, column: 11, scope: !6490)
!6492 = !DILocation(line: 460, column: 6, scope: !6441)
!6493 = !DILocation(line: 460, column: 26, scope: !6490)
!6494 = !DILocation(line: 461, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 461, column: 6)
!6496 = !DILocation(line: 461, column: 11, scope: !6495)
!6497 = !DILocation(line: 461, column: 6, scope: !6441)
!6498 = !DILocation(line: 461, column: 26, scope: !6495)
!6499 = !DILocation(line: 462, column: 6, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 462, column: 6)
!6501 = !DILocation(line: 462, column: 11, scope: !6500)
!6502 = !DILocation(line: 462, column: 6, scope: !6441)
!6503 = !DILocation(line: 462, column: 26, scope: !6500)
!6504 = !DILocation(line: 463, column: 6, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 463, column: 6)
!6506 = !DILocation(line: 463, column: 11, scope: !6505)
!6507 = !DILocation(line: 463, column: 6, scope: !6441)
!6508 = !DILocation(line: 463, column: 26, scope: !6505)
!6509 = !DILocation(line: 464, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 464, column: 6)
!6511 = !DILocation(line: 464, column: 11, scope: !6510)
!6512 = !DILocation(line: 464, column: 6, scope: !6441)
!6513 = !DILocation(line: 464, column: 26, scope: !6510)
!6514 = !DILocation(line: 465, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 465, column: 6)
!6516 = !DILocation(line: 465, column: 11, scope: !6515)
!6517 = !DILocation(line: 465, column: 6, scope: !6441)
!6518 = !DILocation(line: 465, column: 26, scope: !6515)
!6519 = !DILocation(line: 466, column: 6, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 466, column: 6)
!6521 = !DILocation(line: 466, column: 11, scope: !6520)
!6522 = !DILocation(line: 466, column: 6, scope: !6441)
!6523 = !DILocation(line: 466, column: 26, scope: !6520)
!6524 = !DILocation(line: 467, column: 6, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 467, column: 6)
!6526 = !DILocation(line: 467, column: 11, scope: !6525)
!6527 = !DILocation(line: 467, column: 6, scope: !6441)
!6528 = !DILocation(line: 467, column: 26, scope: !6525)
!6529 = !DILocation(line: 468, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 468, column: 6)
!6531 = !DILocation(line: 468, column: 11, scope: !6530)
!6532 = !DILocation(line: 468, column: 6, scope: !6441)
!6533 = !DILocation(line: 468, column: 26, scope: !6530)
!6534 = !DILocation(line: 469, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 469, column: 6)
!6536 = !DILocation(line: 469, column: 11, scope: !6535)
!6537 = !DILocation(line: 469, column: 6, scope: !6441)
!6538 = !DILocation(line: 469, column: 26, scope: !6535)
!6539 = !DILocation(line: 470, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 470, column: 6)
!6541 = !DILocation(line: 470, column: 11, scope: !6540)
!6542 = !DILocation(line: 470, column: 6, scope: !6441)
!6543 = !DILocation(line: 470, column: 26, scope: !6540)
!6544 = !DILocation(line: 471, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 471, column: 6)
!6546 = !DILocation(line: 471, column: 11, scope: !6545)
!6547 = !DILocation(line: 471, column: 6, scope: !6441)
!6548 = !DILocation(line: 471, column: 26, scope: !6545)
!6549 = !DILocation(line: 472, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 472, column: 6)
!6551 = !DILocation(line: 472, column: 11, scope: !6550)
!6552 = !DILocation(line: 472, column: 6, scope: !6441)
!6553 = !DILocation(line: 472, column: 26, scope: !6550)
!6554 = !DILocation(line: 473, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 473, column: 6)
!6556 = !DILocation(line: 473, column: 11, scope: !6555)
!6557 = !DILocation(line: 473, column: 6, scope: !6441)
!6558 = !DILocation(line: 473, column: 26, scope: !6555)
!6559 = !DILocation(line: 474, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 474, column: 6)
!6561 = !DILocation(line: 474, column: 11, scope: !6560)
!6562 = !DILocation(line: 474, column: 6, scope: !6441)
!6563 = !DILocation(line: 474, column: 27, scope: !6560)
!6564 = !DILocation(line: 475, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 475, column: 6)
!6566 = !DILocation(line: 475, column: 11, scope: !6565)
!6567 = !DILocation(line: 475, column: 6, scope: !6441)
!6568 = !DILocation(line: 475, column: 32, scope: !6565)
!6569 = !DILocation(line: 477, column: 50, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6441, file: !163, line: 477, column: 6)
!6571 = !DILocation(line: 477, column: 6, scope: !6441)
!6572 = !DILocation(line: 478, column: 3, scope: !6570)
!6573 = !DILocation(line: 478, column: 3, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6575, file: !163, line: 478, column: 3)
!6575 = distinct !DILexicalBlock(scope: !6570, file: !163, line: 478, column: 3)
!6576 = !{i32 -2141180447}
!6577 = !DILocation(line: 478, column: 3, scope: !6575)
!6578 = !DILocation(line: 480, column: 3, scope: !6570)
!6579 = !DILocation(line: 480, column: 3, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6570, file: !163, line: 480, column: 3)
!6581 = !DILocation(line: 480, column: 3, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6580, file: !163, line: 480, column: 3)
!6583 = !DILocation(line: 480, column: 3, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6580, file: !163, line: 480, column: 3)
!6585 = !{i64 2153787052, i64 2153787081, i64 2153787127, i64 2153787185, i64 2153787239, i64 2153787293, i64 2153787348, i64 2153787379}
!6586 = !DILocation(line: 483, column: 2, scope: !6441)
!6587 = !DILocation(line: 484, column: 1, scope: !6441)
!6588 = !DISubprogram(name: "kmalloc_trace", scope: !163, file: !163, line: 525, type: !6589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6589 = !DISubroutineType(types: !6590)
!6590 = !{!177, !6591, !178, !492}
!6591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6592, size: 64)
!6592 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6593, line: 325, flags: DIFlagFwdDecl)
!6593 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6594 = distinct !DISubprogram(name: "kmalloc_type", scope: !163, file: !163, line: 401, type: !6595, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !6597)
!6595 = !DISubroutineType(types: !6596)
!6596 = !{!162, !178, !180}
!6597 = !{!6598, !6599}
!6598 = !DILocalVariable(name: "flags", arg: 1, scope: !6594, file: !163, line: 401, type: !178)
!6599 = !DILocalVariable(name: "caller", arg: 2, scope: !6594, file: !163, line: 401, type: !180)
!6600 = !DILocation(line: 401, column: 67, scope: !6594)
!6601 = !DILocation(line: 401, column: 88, scope: !6594)
!6602 = !DILocation(line: 407, column: 6, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6594, file: !163, line: 407, column: 6)
!6604 = !DILocation(line: 407, column: 6, scope: !6594)
!6605 = !DILocation(line: 413, column: 3, scope: !6603)
!6606 = !DILocation(line: 423, column: 38, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6594, file: !163, line: 423, column: 6)
!6608 = !DILocation(line: 423, column: 44, scope: !6607)
!6609 = !DILocation(line: 423, column: 6, scope: !6594)
!6610 = !DILocation(line: 424, column: 3, scope: !6607)
!6611 = !DILocation(line: 426, column: 3, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6594, file: !163, line: 425, column: 6)
!6613 = !DILocation(line: 429, column: 1, scope: !6594)
!6614 = !DISubprogram(name: "__compiletime_assert_263", scope: !163, file: !163, line: 478, type: !3639, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
