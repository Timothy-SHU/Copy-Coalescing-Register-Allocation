; ModuleID = 'lib/kstrtox.c'
source_filename = "lib/kstrtox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoull: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoull ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoll: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoll ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__kstrtoul: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _kstrtoul ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__kstrtol: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _kstrtol ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtouint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtouint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtou16: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtou16 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtos16: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtos16 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtou8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtou8 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtos8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtos8 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtobool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtobool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtobool_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtobool_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoull_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoull_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoll_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoll_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoul_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoul_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtol_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtol_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtouint_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtouint_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtoint_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtoint_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtou16_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtou16_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtos16_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtos16_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtou8_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtou8_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kstrtos8_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kstrtos8_from_user ; .previous"

@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_kstrtoull177 = internal global ptr @kstrtoull, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_kstrtoll178 = internal global ptr @kstrtoll, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable__kstrtoul179 = internal global ptr @_kstrtoul, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable__kstrtol180 = internal global ptr @_kstrtol, section ".discard.addressable", align 8, !dbg !39
@__UNIQUE_ID___addressable_kstrtouint181 = internal global ptr @kstrtouint, section ".discard.addressable", align 8, !dbg !41
@__UNIQUE_ID___addressable_kstrtoint182 = internal global ptr @kstrtoint, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable_kstrtou16183 = internal global ptr @kstrtou16, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable_kstrtos16184 = internal global ptr @kstrtos16, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable_kstrtou8185 = internal global ptr @kstrtou8, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_kstrtos8186 = internal global ptr @kstrtos8, section ".discard.addressable", align 8, !dbg !51
@__UNIQUE_ID___addressable_kstrtobool187 = internal global ptr @kstrtobool, section ".discard.addressable", align 8, !dbg !53
@__UNIQUE_ID___addressable_kstrtobool_from_user190 = internal global ptr @kstrtobool_from_user, section ".discard.addressable", align 8, !dbg !55
@__UNIQUE_ID___addressable_kstrtoull_from_user193 = internal global ptr @kstrtoull_from_user, section ".discard.addressable", align 8, !dbg !57
@__UNIQUE_ID___addressable_kstrtoll_from_user196 = internal global ptr @kstrtoll_from_user, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable_kstrtoul_from_user199 = internal global ptr @kstrtoul_from_user, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable_kstrtol_from_user202 = internal global ptr @kstrtol_from_user, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable_kstrtouint_from_user205 = internal global ptr @kstrtouint_from_user, section ".discard.addressable", align 8, !dbg !65
@__UNIQUE_ID___addressable_kstrtoint_from_user208 = internal global ptr @kstrtoint_from_user, section ".discard.addressable", align 8, !dbg !67
@__UNIQUE_ID___addressable_kstrtou16_from_user211 = internal global ptr @kstrtou16_from_user, section ".discard.addressable", align 8, !dbg !69
@__UNIQUE_ID___addressable_kstrtos16_from_user214 = internal global ptr @kstrtos16_from_user, section ".discard.addressable", align 8, !dbg !71
@__UNIQUE_ID___addressable_kstrtou8_from_user217 = internal global ptr @kstrtou8_from_user, section ".discard.addressable", align 8, !dbg !73
@__UNIQUE_ID___addressable_kstrtos8_from_user220 = internal global ptr @kstrtos8_from_user, section ".discard.addressable", align 8, !dbg !75
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !77
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID___addressable_kstrtoull177, ptr @__UNIQUE_ID___addressable_kstrtoll178, ptr @__UNIQUE_ID___addressable__kstrtoul179, ptr @__UNIQUE_ID___addressable__kstrtol180, ptr @__UNIQUE_ID___addressable_kstrtouint181, ptr @__UNIQUE_ID___addressable_kstrtoint182, ptr @__UNIQUE_ID___addressable_kstrtou16183, ptr @__UNIQUE_ID___addressable_kstrtos16184, ptr @__UNIQUE_ID___addressable_kstrtou8185, ptr @__UNIQUE_ID___addressable_kstrtos8186, ptr @__UNIQUE_ID___addressable_kstrtobool187, ptr @__UNIQUE_ID___addressable_kstrtobool_from_user190, ptr @__UNIQUE_ID___addressable_kstrtoull_from_user193, ptr @__UNIQUE_ID___addressable_kstrtoll_from_user196, ptr @__UNIQUE_ID___addressable_kstrtoul_from_user199, ptr @__UNIQUE_ID___addressable_kstrtol_from_user202, ptr @__UNIQUE_ID___addressable_kstrtouint_from_user205, ptr @__UNIQUE_ID___addressable_kstrtoint_from_user208, ptr @__UNIQUE_ID___addressable_kstrtou16_from_user211, ptr @__UNIQUE_ID___addressable_kstrtos16_from_user214, ptr @__UNIQUE_ID___addressable_kstrtou8_from_user217, ptr @__UNIQUE_ID___addressable_kstrtos8_from_user220], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @_parse_integer_fixup_radix(ptr noundef %s, ptr noundef %base) #0 align 16 !dbg !93 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !100, metadata !DIExpression()), !dbg !102
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !101, metadata !DIExpression()), !dbg !103
  %0 = load ptr, ptr %base.addr, align 8, !dbg !104
  %1 = load i32, ptr %0, align 4, !dbg !106
  %cmp = icmp eq i32 %1, 0, !dbg !107
  br i1 %cmp, label %if.then, label %if.end17, !dbg !108

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !109
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !109
  %3 = load i8, ptr %arrayidx, align 1, !dbg !109
  %conv = zext i8 %3 to i32, !dbg !109
  %cmp1 = icmp eq i32 %conv, 48, !dbg !112
  br i1 %cmp1, label %if.then3, label %if.else15, !dbg !113

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !114
  %arrayidx4 = getelementptr i8, ptr %4, i64 1, !dbg !114
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !114
  %call = call zeroext i8 @_tolower(i8 noundef zeroext %5) #11, !dbg !117
  %conv5 = zext i8 %call to i32, !dbg !117
  %cmp6 = icmp eq i32 %conv5, 120, !dbg !118
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !119

land.lhs.true:                                    ; preds = %if.then3
  %6 = load ptr, ptr %s.addr, align 8, !dbg !120
  %arrayidx8 = getelementptr i8, ptr %6, i64 2, !dbg !120
  %7 = load i8, ptr %arrayidx8, align 1, !dbg !120
  %conv9 = zext i8 %7 to i32, !dbg !120
  %idxprom = sext i32 %conv9 to i64, !dbg !120
  %arrayidx10 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !120
  %8 = load i8, ptr %arrayidx10, align 1, !dbg !120
  %conv11 = zext i8 %8 to i32, !dbg !120
  %and = and i32 %conv11, 68, !dbg !120
  %cmp12 = icmp ne i32 %and, 0, !dbg !120
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !121

if.then14:                                        ; preds = %land.lhs.true
  %9 = load ptr, ptr %base.addr, align 8, !dbg !122
  store i32 16, ptr %9, align 4, !dbg !123
  br label %if.end, !dbg !124

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %10 = load ptr, ptr %base.addr, align 8, !dbg !125
  store i32 8, ptr %10, align 4, !dbg !126
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end16, !dbg !127

if.else15:                                        ; preds = %if.then
  %11 = load ptr, ptr %base.addr, align 8, !dbg !128
  store i32 10, ptr %11, align 4, !dbg !129
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end
  br label %if.end17, !dbg !130

if.end17:                                         ; preds = %if.end16, %entry
  %12 = load ptr, ptr %base.addr, align 8, !dbg !131
  %13 = load i32, ptr %12, align 4, !dbg !133
  %cmp18 = icmp eq i32 %13, 16, !dbg !134
  br i1 %cmp18, label %land.lhs.true20, label %if.end32, !dbg !135

land.lhs.true20:                                  ; preds = %if.end17
  %14 = load ptr, ptr %s.addr, align 8, !dbg !136
  %arrayidx21 = getelementptr i8, ptr %14, i64 0, !dbg !136
  %15 = load i8, ptr %arrayidx21, align 1, !dbg !136
  %conv22 = zext i8 %15 to i32, !dbg !136
  %cmp23 = icmp eq i32 %conv22, 48, !dbg !137
  br i1 %cmp23, label %land.lhs.true25, label %if.end32, !dbg !138

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %16 = load ptr, ptr %s.addr, align 8, !dbg !139
  %arrayidx26 = getelementptr i8, ptr %16, i64 1, !dbg !139
  %17 = load i8, ptr %arrayidx26, align 1, !dbg !139
  %call27 = call zeroext i8 @_tolower(i8 noundef zeroext %17) #11, !dbg !140
  %conv28 = zext i8 %call27 to i32, !dbg !140
  %cmp29 = icmp eq i32 %conv28, 120, !dbg !141
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !142

if.then31:                                        ; preds = %land.lhs.true25
  %18 = load ptr, ptr %s.addr, align 8, !dbg !143
  %add.ptr = getelementptr i8, ptr %18, i64 2, !dbg !143
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !143
  br label %if.end32, !dbg !144

if.end32:                                         ; preds = %if.then31, %land.lhs.true25, %land.lhs.true20, %if.end17
  %19 = load ptr, ptr %s.addr, align 8, !dbg !145
  ret ptr %19, !dbg !146
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @_tolower(i8 noundef zeroext %c) #2 align 16 !dbg !147 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i8, ptr %c.addr, align 1, !dbg !154
  %conv = zext i8 %0 to i32, !dbg !154
  %or = or i32 %conv, 32, !dbg !155
  %conv1 = trunc i32 %or to i8, !dbg !154
  ret i8 %conv1, !dbg !156
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_parse_integer_limit(ptr noundef %s, i32 noundef %base, ptr noundef %p, i64 noundef %max_chars) #0 align 16 !dbg !157 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %max_chars.addr = alloca i64, align 8
  %res = alloca i64, align 8
  %rv = alloca i32, align 4
  %c = alloca i32, align 4
  %lc = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !166, metadata !DIExpression()), !dbg !176
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !167, metadata !DIExpression()), !dbg !177
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !168, metadata !DIExpression()), !dbg !178
  store i64 %max_chars, ptr %max_chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_chars.addr, metadata !169, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #12, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %res, metadata !170, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !171, metadata !DIExpression()), !dbg !183
  store i64 0, ptr %res, align 8, !dbg !184
  store i32 0, ptr %rv, align 4, !dbg !185
  br label %while.cond, !dbg !186

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %max_chars.addr, align 8, !dbg !187
  %dec = add i64 %0, -1, !dbg !187
  store i64 %dec, ptr %max_chars.addr, align 8, !dbg !187
  %tobool = icmp ne i64 %0, 0, !dbg !186
  br i1 %tobool, label %while.body, label %while.end, !dbg !186

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %c, metadata !172, metadata !DIExpression()), !dbg !189
  %1 = load ptr, ptr %s.addr, align 8, !dbg !190
  %2 = load i8, ptr %1, align 1, !dbg !191
  %conv = zext i8 %2 to i32, !dbg !191
  store i32 %conv, ptr %c, align 4, !dbg !189
  call void @llvm.lifetime.start.p0(i64 4, ptr %lc) #12, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %lc, metadata !174, metadata !DIExpression()), !dbg !193
  %3 = load i32, ptr %c, align 4, !dbg !194
  %conv1 = trunc i32 %3 to i8, !dbg !194
  %call = call zeroext i8 @_tolower(i8 noundef zeroext %conv1) #11, !dbg !195
  %conv2 = zext i8 %call to i32, !dbg !195
  store i32 %conv2, ptr %lc, align 4, !dbg !193
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %val, metadata !175, metadata !DIExpression()), !dbg !197
  %4 = load i32, ptr %c, align 4, !dbg !198
  %cmp = icmp ule i32 48, %4, !dbg !200
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !201

land.lhs.true:                                    ; preds = %while.body
  %5 = load i32, ptr %c, align 4, !dbg !202
  %cmp4 = icmp ule i32 %5, 57, !dbg !203
  br i1 %cmp4, label %if.then, label %if.else, !dbg !204

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %c, align 4, !dbg !205
  %sub = sub i32 %6, 48, !dbg !206
  store i32 %sub, ptr %val, align 4, !dbg !207
  br label %if.end14, !dbg !208

if.else:                                          ; preds = %land.lhs.true, %while.body
  %7 = load i32, ptr %lc, align 4, !dbg !209
  %cmp6 = icmp ule i32 97, %7, !dbg !211
  br i1 %cmp6, label %land.lhs.true8, label %if.else13, !dbg !212

land.lhs.true8:                                   ; preds = %if.else
  %8 = load i32, ptr %lc, align 4, !dbg !213
  %cmp9 = icmp ule i32 %8, 102, !dbg !214
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !215

if.then11:                                        ; preds = %land.lhs.true8
  %9 = load i32, ptr %lc, align 4, !dbg !216
  %sub12 = sub i32 %9, 97, !dbg !217
  %add = add i32 %sub12, 10, !dbg !218
  store i32 %add, ptr %val, align 4, !dbg !219
  br label %if.end, !dbg !220

if.else13:                                        ; preds = %land.lhs.true8, %if.else
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !221

if.end:                                           ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %10 = load i32, ptr %val, align 4, !dbg !222
  %11 = load i32, ptr %base.addr, align 4, !dbg !224
  %cmp15 = icmp uge i32 %10, %11, !dbg !225
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !226

if.then17:                                        ; preds = %if.end14
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !227

if.end18:                                         ; preds = %if.end14
  %12 = load i64, ptr %res, align 8, !dbg !228
  %and = and i64 %12, -1152921504606846976, !dbg !228
  %tobool19 = icmp ne i64 %and, 0, !dbg !228
  %lnot = xor i1 %tobool19, true, !dbg !228
  %lnot20 = xor i1 %lnot, true, !dbg !228
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !228
  %conv21 = sext i32 %lnot.ext to i64, !dbg !228
  %expval = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !228
  %tobool22 = icmp ne i64 %expval, 0, !dbg !228
  br i1 %tobool22, label %if.then23, label %if.end31, !dbg !230

if.then23:                                        ; preds = %if.end18
  %13 = load i64, ptr %res, align 8, !dbg !231
  %14 = load i32, ptr %val, align 4, !dbg !234
  %conv24 = zext i32 %14 to i64, !dbg !234
  %sub25 = sub i64 -1, %conv24, !dbg !235
  %15 = load i32, ptr %base.addr, align 4, !dbg !236
  %call26 = call i64 @div_u64(i64 noundef %sub25, i32 noundef %15) #11, !dbg !237
  %cmp27 = icmp ugt i64 %13, %call26, !dbg !238
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !239

if.then29:                                        ; preds = %if.then23
  %16 = load i32, ptr %rv, align 4, !dbg !240
  %or = or i32 %16, -2147483648, !dbg !240
  store i32 %or, ptr %rv, align 4, !dbg !240
  br label %if.end30, !dbg !241

if.end30:                                         ; preds = %if.then29, %if.then23
  br label %if.end31, !dbg !242

if.end31:                                         ; preds = %if.end30, %if.end18
  %17 = load i64, ptr %res, align 8, !dbg !243
  %18 = load i32, ptr %base.addr, align 4, !dbg !244
  %conv32 = zext i32 %18 to i64, !dbg !244
  %mul = mul i64 %17, %conv32, !dbg !245
  %19 = load i32, ptr %val, align 4, !dbg !246
  %conv33 = zext i32 %19 to i64, !dbg !246
  %add34 = add i64 %mul, %conv33, !dbg !247
  store i64 %add34, ptr %res, align 8, !dbg !248
  %20 = load i32, ptr %rv, align 4, !dbg !249
  %inc = add i32 %20, 1, !dbg !249
  store i32 %inc, ptr %rv, align 4, !dbg !249
  %21 = load ptr, ptr %s.addr, align 8, !dbg !250
  %incdec.ptr = getelementptr i8, ptr %21, i32 1, !dbg !250
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !250
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !251
  br label %cleanup, !dbg !251

cleanup:                                          ; preds = %if.end31, %if.then17, %if.else13
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !251
  call void @llvm.lifetime.end.p0(i64 4, ptr %lc) #12, !dbg !251
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !251
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !186, !llvm.loop !252

while.end:                                        ; preds = %cleanup, %while.cond
  %22 = load i64, ptr %res, align 8, !dbg !255
  %23 = load ptr, ptr %p.addr, align 8, !dbg !256
  store i64 %22, ptr %23, align 8, !dbg !257
  %24 = load i32, ptr %rv, align 4, !dbg !258
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #12, !dbg !259
  ret i32 %24, !dbg !260

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #2 align 16 !dbg !261 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !270, metadata !DIExpression()), !dbg !273
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !271, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #12, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !272, metadata !DIExpression()), !dbg !276
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !277
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !278
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #11, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #12, !dbg !280
  ret i64 %call, !dbg !281
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_parse_integer(ptr noundef %s, i32 noundef %base, ptr noundef %p) #0 align 16 !dbg !282 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !286, metadata !DIExpression()), !dbg !289
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !287, metadata !DIExpression()), !dbg !290
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !288, metadata !DIExpression()), !dbg !291
  %0 = load ptr, ptr %s.addr, align 8, !dbg !292
  %1 = load i32, ptr %base.addr, align 4, !dbg !293
  %2 = load ptr, ptr %p.addr, align 8, !dbg !294
  %call = call i32 @_parse_integer_limit(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 2147483647) #11, !dbg !295
  ret i32 %call, !dbg !296
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoull(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !297 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !301, metadata !DIExpression()), !dbg !304
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !302, metadata !DIExpression()), !dbg !305
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !303, metadata !DIExpression()), !dbg !306
  %0 = load ptr, ptr %s.addr, align 8, !dbg !307
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !307
  %1 = load i8, ptr %arrayidx, align 1, !dbg !307
  %conv = zext i8 %1 to i32, !dbg !307
  %cmp = icmp eq i32 %conv, 43, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !311
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !311
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !313
  %4 = load i32, ptr %base.addr, align 4, !dbg !314
  %5 = load ptr, ptr %res.addr, align 8, !dbg !315
  %call = call i32 @_kstrtoull(ptr noundef %3, i32 noundef %4, ptr noundef %5) #11, !dbg !316
  ret i32 %call, !dbg !317
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_kstrtoull(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !318 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %_res = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !320, metadata !DIExpression()), !dbg !325
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !321, metadata !DIExpression()), !dbg !326
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !322, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 8, ptr %_res) #12, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %_res, metadata !323, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !324, metadata !DIExpression()), !dbg !331
  %0 = load ptr, ptr %s.addr, align 8, !dbg !332
  %call = call ptr @_parse_integer_fixup_radix(ptr noundef %0, ptr noundef %base.addr) #11, !dbg !333
  store ptr %call, ptr %s.addr, align 8, !dbg !334
  %1 = load ptr, ptr %s.addr, align 8, !dbg !335
  %2 = load i32, ptr %base.addr, align 4, !dbg !336
  %call1 = call i32 @_parse_integer(ptr noundef %1, i32 noundef %2, ptr noundef %_res) #11, !dbg !337
  store i32 %call1, ptr %rv, align 4, !dbg !338
  %3 = load i32, ptr %rv, align 4, !dbg !339
  %and = and i32 %3, -2147483648, !dbg !341
  %tobool = icmp ne i32 %and, 0, !dbg !341
  br i1 %tobool, label %if.then, label %if.end, !dbg !342

if.then:                                          ; preds = %entry
  store i32 -34, ptr %retval, align 4, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %rv, align 4, !dbg !344
  %cmp = icmp eq i32 %4, 0, !dbg !346
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !347

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !348

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %rv, align 4, !dbg !349
  %6 = load ptr, ptr %s.addr, align 8, !dbg !350
  %idx.ext = zext i32 %5 to i64, !dbg !350
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !350
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !350
  %7 = load ptr, ptr %s.addr, align 8, !dbg !351
  %8 = load i8, ptr %7, align 1, !dbg !353
  %conv = zext i8 %8 to i32, !dbg !353
  %cmp4 = icmp eq i32 %conv, 10, !dbg !354
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !355

if.then6:                                         ; preds = %if.end3
  %9 = load ptr, ptr %s.addr, align 8, !dbg !356
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !356
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !356
  br label %if.end7, !dbg !357

if.end7:                                          ; preds = %if.then6, %if.end3
  %10 = load ptr, ptr %s.addr, align 8, !dbg !358
  %11 = load i8, ptr %10, align 1, !dbg !360
  %tobool8 = icmp ne i8 %11, 0, !dbg !360
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !361

if.then9:                                         ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end10:                                         ; preds = %if.end7
  %12 = load i64, ptr %_res, align 8, !dbg !363
  %13 = load ptr, ptr %res.addr, align 8, !dbg !364
  store i64 %12, ptr %13, align 8, !dbg !365
  store i32 0, ptr %retval, align 4, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %_res) #12, !dbg !367
  %14 = load i32, ptr %retval, align 4, !dbg !367
  ret i32 %14, !dbg !367
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoll(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !368 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !372, metadata !DIExpression()), !dbg !377
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !373, metadata !DIExpression()), !dbg !378
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !374, metadata !DIExpression()), !dbg !379
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !380
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !375, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !376, metadata !DIExpression()), !dbg !383
  %0 = load ptr, ptr %s.addr, align 8, !dbg !384
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !384
  %1 = load i8, ptr %arrayidx, align 1, !dbg !384
  %conv = zext i8 %1 to i32, !dbg !384
  %cmp = icmp eq i32 %conv, 45, !dbg !386
  br i1 %cmp, label %if.then, label %if.else, !dbg !387

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !388
  %add.ptr = getelementptr i8, ptr %2, i64 1, !dbg !390
  %3 = load i32, ptr %base.addr, align 4, !dbg !391
  %call = call i32 @_kstrtoull(ptr noundef %add.ptr, i32 noundef %3, ptr noundef %tmp) #11, !dbg !392
  store i32 %call, ptr %rv, align 4, !dbg !393
  %4 = load i32, ptr %rv, align 4, !dbg !394
  %cmp2 = icmp slt i32 %4, 0, !dbg !396
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !397

if.then4:                                         ; preds = %if.then
  %5 = load i32, ptr %rv, align 4, !dbg !398
  store i32 %5, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %tmp, align 8, !dbg !400
  %sub = sub i64 0, %6, !dbg !402
  %cmp5 = icmp sgt i64 %sub, 0, !dbg !403
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !404

if.then7:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

if.end8:                                          ; preds = %if.end
  %7 = load i64, ptr %tmp, align 8, !dbg !406
  %sub9 = sub i64 0, %7, !dbg !407
  %8 = load ptr, ptr %res.addr, align 8, !dbg !408
  store i64 %sub9, ptr %8, align 8, !dbg !409
  br label %if.end19, !dbg !410

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %s.addr, align 8, !dbg !411
  %10 = load i32, ptr %base.addr, align 4, !dbg !413
  %call10 = call i32 @kstrtoull(ptr noundef %9, i32 noundef %10, ptr noundef %tmp) #11, !dbg !414
  store i32 %call10, ptr %rv, align 4, !dbg !415
  %11 = load i32, ptr %rv, align 4, !dbg !416
  %cmp11 = icmp slt i32 %11, 0, !dbg !418
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !419

if.then13:                                        ; preds = %if.else
  %12 = load i32, ptr %rv, align 4, !dbg !420
  store i32 %12, ptr %retval, align 4, !dbg !421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !421

if.end14:                                         ; preds = %if.else
  %13 = load i64, ptr %tmp, align 8, !dbg !422
  %cmp15 = icmp slt i64 %13, 0, !dbg !424
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !425

if.then17:                                        ; preds = %if.end14
  store i32 -34, ptr %retval, align 4, !dbg !426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !426

if.end18:                                         ; preds = %if.end14
  %14 = load i64, ptr %tmp, align 8, !dbg !427
  %15 = load ptr, ptr %res.addr, align 8, !dbg !428
  store i64 %14, ptr %15, align 8, !dbg !429
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end8
  store i32 0, ptr %retval, align 4, !dbg !430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !430

cleanup:                                          ; preds = %if.end19, %if.then17, %if.then13, %if.then7, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !431
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !431
  %16 = load i32, ptr %retval, align 4, !dbg !431
  ret i32 %16, !dbg !431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !432 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !437, metadata !DIExpression()), !dbg !442
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !438, metadata !DIExpression()), !dbg !443
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !439, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !440, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !441, metadata !DIExpression()), !dbg !448
  %0 = load ptr, ptr %s.addr, align 8, !dbg !449
  %1 = load i32, ptr %base.addr, align 4, !dbg !450
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !451
  store i32 %call, ptr %rv, align 4, !dbg !452
  %2 = load i32, ptr %rv, align 4, !dbg !453
  %cmp = icmp slt i32 %2, 0, !dbg !455
  br i1 %cmp, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !457
  store i32 %3, ptr %retval, align 4, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !458

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !459
  %5 = load i64, ptr %tmp, align 8, !dbg !461
  %cmp1 = icmp ne i64 %4, %5, !dbg !462
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !463

if.then2:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !464

if.end3:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !465
  %7 = load ptr, ptr %res.addr, align 8, !dbg !466
  store i64 %6, ptr %7, align 8, !dbg !467
  store i32 0, ptr %retval, align 4, !dbg !468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !468

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !469
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !469
  %8 = load i32, ptr %retval, align 4, !dbg !469
  ret i32 %8, !dbg !469
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_kstrtol(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !470 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !475, metadata !DIExpression()), !dbg !480
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !476, metadata !DIExpression()), !dbg !481
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !477, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !478, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !479, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %s.addr, align 8, !dbg !487
  %1 = load i32, ptr %base.addr, align 4, !dbg !488
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !489
  store i32 %call, ptr %rv, align 4, !dbg !490
  %2 = load i32, ptr %rv, align 4, !dbg !491
  %cmp = icmp slt i32 %2, 0, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !495
  store i32 %3, ptr %retval, align 4, !dbg !496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !496

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !497
  %5 = load i64, ptr %tmp, align 8, !dbg !499
  %cmp1 = icmp ne i64 %4, %5, !dbg !500
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !501

if.then2:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !502

if.end3:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !503
  %7 = load ptr, ptr %res.addr, align 8, !dbg !504
  store i64 %6, ptr %7, align 8, !dbg !505
  store i32 0, ptr %retval, align 4, !dbg !506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !506

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !507
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !507
  %8 = load i32, ptr %retval, align 4, !dbg !507
  ret i32 %8, !dbg !507
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtouint(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !508 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !512, metadata !DIExpression()), !dbg !517
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !513, metadata !DIExpression()), !dbg !518
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !514, metadata !DIExpression()), !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !515, metadata !DIExpression()), !dbg !521
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !516, metadata !DIExpression()), !dbg !523
  %0 = load ptr, ptr %s.addr, align 8, !dbg !524
  %1 = load i32, ptr %base.addr, align 4, !dbg !525
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !526
  store i32 %call, ptr %rv, align 4, !dbg !527
  %2 = load i32, ptr %rv, align 4, !dbg !528
  %cmp = icmp slt i32 %2, 0, !dbg !530
  br i1 %cmp, label %if.then, label %if.end, !dbg !531

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !532
  store i32 %3, ptr %retval, align 4, !dbg !533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !533

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !534
  %5 = load i64, ptr %tmp, align 8, !dbg !536
  %conv = trunc i64 %5 to i32, !dbg !537
  %conv1 = zext i32 %conv to i64, !dbg !537
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !538
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !539

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !541
  %conv6 = trunc i64 %6 to i32, !dbg !541
  %7 = load ptr, ptr %res.addr, align 8, !dbg !542
  store i32 %conv6, ptr %7, align 4, !dbg !543
  store i32 0, ptr %retval, align 4, !dbg !544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !545
  %8 = load i32, ptr %retval, align 4, !dbg !545
  ret i32 %8, !dbg !545
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoint(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !546 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !551, metadata !DIExpression()), !dbg !556
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !552, metadata !DIExpression()), !dbg !557
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !553, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !554, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !555, metadata !DIExpression()), !dbg !562
  %0 = load ptr, ptr %s.addr, align 8, !dbg !563
  %1 = load i32, ptr %base.addr, align 4, !dbg !564
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !565
  store i32 %call, ptr %rv, align 4, !dbg !566
  %2 = load i32, ptr %rv, align 4, !dbg !567
  %cmp = icmp slt i32 %2, 0, !dbg !569
  br i1 %cmp, label %if.then, label %if.end, !dbg !570

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !571
  store i32 %3, ptr %retval, align 4, !dbg !572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !572

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !573
  %5 = load i64, ptr %tmp, align 8, !dbg !575
  %conv = trunc i64 %5 to i32, !dbg !576
  %conv1 = sext i32 %conv to i64, !dbg !576
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !577
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !578

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !579

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !580
  %conv6 = trunc i64 %6 to i32, !dbg !580
  %7 = load ptr, ptr %res.addr, align 8, !dbg !581
  store i32 %conv6, ptr %7, align 4, !dbg !582
  store i32 0, ptr %retval, align 4, !dbg !583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !583

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !584
  %8 = load i32, ptr %retval, align 4, !dbg !584
  ret i32 %8, !dbg !584
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtou16(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !585 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !590, metadata !DIExpression()), !dbg !595
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !591, metadata !DIExpression()), !dbg !596
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !593, metadata !DIExpression()), !dbg !599
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !594, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %s.addr, align 8, !dbg !602
  %1 = load i32, ptr %base.addr, align 4, !dbg !603
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !604
  store i32 %call, ptr %rv, align 4, !dbg !605
  %2 = load i32, ptr %rv, align 4, !dbg !606
  %cmp = icmp slt i32 %2, 0, !dbg !608
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !610
  store i32 %3, ptr %retval, align 4, !dbg !611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !611

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !612
  %5 = load i64, ptr %tmp, align 8, !dbg !614
  %conv = trunc i64 %5 to i16, !dbg !615
  %conv1 = zext i16 %conv to i64, !dbg !615
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !616
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !617

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !618

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !619
  %conv6 = trunc i64 %6 to i16, !dbg !619
  %7 = load ptr, ptr %res.addr, align 8, !dbg !620
  store i16 %conv6, ptr %7, align 2, !dbg !621
  store i32 0, ptr %retval, align 4, !dbg !622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !622

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !623
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !623
  %8 = load i32, ptr %retval, align 4, !dbg !623
  ret i32 %8, !dbg !623
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtos16(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !624 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !629, metadata !DIExpression()), !dbg !634
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !630, metadata !DIExpression()), !dbg !635
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !631, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !632, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !639
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !633, metadata !DIExpression()), !dbg !640
  %0 = load ptr, ptr %s.addr, align 8, !dbg !641
  %1 = load i32, ptr %base.addr, align 4, !dbg !642
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !643
  store i32 %call, ptr %rv, align 4, !dbg !644
  %2 = load i32, ptr %rv, align 4, !dbg !645
  %cmp = icmp slt i32 %2, 0, !dbg !647
  br i1 %cmp, label %if.then, label %if.end, !dbg !648

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !649
  store i32 %3, ptr %retval, align 4, !dbg !650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !650

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !651
  %5 = load i64, ptr %tmp, align 8, !dbg !653
  %conv = trunc i64 %5 to i16, !dbg !654
  %conv1 = sext i16 %conv to i64, !dbg !654
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !655
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !656

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !658
  %conv6 = trunc i64 %6 to i16, !dbg !658
  %7 = load ptr, ptr %res.addr, align 8, !dbg !659
  store i16 %conv6, ptr %7, align 2, !dbg !660
  store i32 0, ptr %retval, align 4, !dbg !661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !661

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !662
  %8 = load i32, ptr %retval, align 4, !dbg !662
  ret i32 %8, !dbg !662
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtou8(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !663 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !668, metadata !DIExpression()), !dbg !673
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !669, metadata !DIExpression()), !dbg !674
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !670, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !672, metadata !DIExpression()), !dbg !679
  %0 = load ptr, ptr %s.addr, align 8, !dbg !680
  %1 = load i32, ptr %base.addr, align 4, !dbg !681
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !682
  store i32 %call, ptr %rv, align 4, !dbg !683
  %2 = load i32, ptr %rv, align 4, !dbg !684
  %cmp = icmp slt i32 %2, 0, !dbg !686
  br i1 %cmp, label %if.then, label %if.end, !dbg !687

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !688
  store i32 %3, ptr %retval, align 4, !dbg !689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !689

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !690
  %5 = load i64, ptr %tmp, align 8, !dbg !692
  %conv = trunc i64 %5 to i8, !dbg !693
  %conv1 = zext i8 %conv to i64, !dbg !693
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !694
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !695

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !696

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !697
  %conv6 = trunc i64 %6 to i8, !dbg !697
  %7 = load ptr, ptr %res.addr, align 8, !dbg !698
  store i8 %conv6, ptr %7, align 1, !dbg !699
  store i32 0, ptr %retval, align 4, !dbg !700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !700

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !701
  %8 = load i32, ptr %retval, align 4, !dbg !701
  ret i32 %8, !dbg !701
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtos8(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 align 16 !dbg !702 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !707, metadata !DIExpression()), !dbg !712
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !708, metadata !DIExpression()), !dbg !713
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !709, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !710, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !711, metadata !DIExpression()), !dbg !718
  %0 = load ptr, ptr %s.addr, align 8, !dbg !719
  %1 = load i32, ptr %base.addr, align 4, !dbg !720
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %tmp) #11, !dbg !721
  store i32 %call, ptr %rv, align 4, !dbg !722
  %2 = load i32, ptr %rv, align 4, !dbg !723
  %cmp = icmp slt i32 %2, 0, !dbg !725
  br i1 %cmp, label %if.then, label %if.end, !dbg !726

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !727
  store i32 %3, ptr %retval, align 4, !dbg !728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !728

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !729
  %5 = load i64, ptr %tmp, align 8, !dbg !731
  %conv = trunc i64 %5 to i8, !dbg !732
  %conv1 = sext i8 %conv to i64, !dbg !732
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !733
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !734

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !735

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !736
  %conv6 = trunc i64 %6 to i8, !dbg !736
  %7 = load ptr, ptr %res.addr, align 8, !dbg !737
  store i8 %conv6, ptr %7, align 1, !dbg !738
  store i32 0, ptr %retval, align 4, !dbg !739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !739

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !740
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !740
  %8 = load i32, ptr %retval, align 4, !dbg !740
  ret i32 %8, !dbg !740
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtobool(ptr noundef %s, ptr noundef %res) #0 align 16 !dbg !741 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !748, metadata !DIExpression()), !dbg !750
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !749, metadata !DIExpression()), !dbg !751
  %0 = load ptr, ptr %s.addr, align 8, !dbg !752
  %tobool = icmp ne ptr %0, null, !dbg !752
  br i1 %tobool, label %if.end, label %if.then, !dbg !754

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !756
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !756
  %2 = load i8, ptr %arrayidx, align 1, !dbg !756
  %conv = zext i8 %2 to i32, !dbg !756
  switch i32 %conv, label %sw.default7 [
    i32 121, label %sw.bb
    i32 89, label %sw.bb
    i32 116, label %sw.bb
    i32 84, label %sw.bb
    i32 49, label %sw.bb
    i32 110, label %sw.bb1
    i32 78, label %sw.bb1
    i32 102, label %sw.bb1
    i32 70, label %sw.bb1
    i32 48, label %sw.bb1
    i32 111, label %sw.bb2
    i32 79, label %sw.bb2
  ], !dbg !757

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %3 = load ptr, ptr %res.addr, align 8, !dbg !758
  store i8 1, ptr %3, align 1, !dbg !760
  store i32 0, ptr %retval, align 4, !dbg !761
  br label %return, !dbg !761

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %4 = load ptr, ptr %res.addr, align 8, !dbg !762
  store i8 0, ptr %4, align 1, !dbg !763
  store i32 0, ptr %retval, align 4, !dbg !764
  br label %return, !dbg !764

sw.bb2:                                           ; preds = %if.end, %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !765
  %arrayidx3 = getelementptr i8, ptr %5, i64 1, !dbg !765
  %6 = load i8, ptr %arrayidx3, align 1, !dbg !765
  %conv4 = zext i8 %6 to i32, !dbg !765
  switch i32 %conv4, label %sw.default [
    i32 110, label %sw.bb5
    i32 78, label %sw.bb5
    i32 102, label %sw.bb6
    i32 70, label %sw.bb6
  ], !dbg !766

sw.bb5:                                           ; preds = %sw.bb2, %sw.bb2
  %7 = load ptr, ptr %res.addr, align 8, !dbg !767
  store i8 1, ptr %7, align 1, !dbg !769
  store i32 0, ptr %retval, align 4, !dbg !770
  br label %return, !dbg !770

sw.bb6:                                           ; preds = %sw.bb2, %sw.bb2
  %8 = load ptr, ptr %res.addr, align 8, !dbg !771
  store i8 0, ptr %8, align 1, !dbg !772
  store i32 0, ptr %retval, align 4, !dbg !773
  br label %return, !dbg !773

sw.default:                                       ; preds = %sw.bb2
  br label %sw.epilog, !dbg !774

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog8, !dbg !775

sw.default7:                                      ; preds = %if.end
  br label %sw.epilog8, !dbg !776

sw.epilog8:                                       ; preds = %sw.default7, %sw.epilog
  store i32 -22, ptr %retval, align 4, !dbg !777
  br label %return, !dbg !777

return:                                           ; preds = %sw.epilog8, %sw.bb6, %sw.bb5, %sw.bb1, %sw.bb, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !778
  ret i32 %9, !dbg !778
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtobool_from_user(ptr noundef %s, i64 noundef %count, ptr noundef %res) #5 align 16 !dbg !779 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  %buf = alloca [4 x i8], align 1
  %__UNIQUE_ID___x188 = alloca i64, align 8
  %__UNIQUE_ID___y189 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !783, metadata !DIExpression()), !dbg !793
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !784, metadata !DIExpression()), !dbg !794
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !785, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #12, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !786, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x188) #12, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x188, metadata !790, metadata !DIExpression()), !dbg !798
  %0 = load i64, ptr %count.addr, align 8, !dbg !798
  store i64 %0, ptr %__UNIQUE_ID___x188, align 8, !dbg !798
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y189) #12, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y189, metadata !792, metadata !DIExpression()), !dbg !798
  store i64 3, ptr %__UNIQUE_ID___y189, align 8, !dbg !798
  %1 = load i64, ptr %__UNIQUE_ID___x188, align 8, !dbg !798
  %2 = load i64, ptr %__UNIQUE_ID___y189, align 8, !dbg !798
  %cmp = icmp ult i64 %1, %2, !dbg !798
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !798

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x188, align 8, !dbg !798
  br label %cond.end, !dbg !798

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y189, align 8, !dbg !798
  br label %cond.end, !dbg !798

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !798
  store i64 %cond, ptr %tmp, align 8, !dbg !798
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y189) #12, !dbg !799
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x188) #12, !dbg !799
  %5 = load i64, ptr %tmp, align 8, !dbg !798
  store i64 %5, ptr %count.addr, align 8, !dbg !800
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0, !dbg !801
  %6 = load ptr, ptr %s.addr, align 8, !dbg !803
  %7 = load i64, ptr %count.addr, align 8, !dbg !804
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !805
  %tobool = icmp ne i64 %call, 0, !dbg !805
  br i1 %tobool, label %if.then, label %if.end, !dbg !806

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !807

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !808
  %arrayidx = getelementptr [4 x i8], ptr %buf, i64 0, i64 %8, !dbg !809
  store i8 0, ptr %arrayidx, align 1, !dbg !810
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0, !dbg !811
  %9 = load ptr, ptr %res.addr, align 8, !dbg !812
  %call2 = call i32 @kstrtobool(ptr noundef %arraydecay1, ptr noundef %9) #11, !dbg !813
  store i32 %call2, ptr %retval, align 4, !dbg !814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !814

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #12, !dbg !815
  %10 = load i32, ptr %retval, align 4, !dbg !815
  ret i32 %10, !dbg !815
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !816 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !823, metadata !DIExpression()), !dbg !826
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !824, metadata !DIExpression()), !dbg !827
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !825, metadata !DIExpression()), !dbg !828
  %0 = load ptr, ptr %to.addr, align 8, !dbg !829
  %1 = load i64, ptr %n.addr, align 8, !dbg !831
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #11, !dbg !832
  br i1 %call, label %if.then, label %if.end, !dbg !833

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !834
  %3 = load ptr, ptr %from.addr, align 8, !dbg !835
  %4 = load i64, ptr %n.addr, align 8, !dbg !836
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #11, !dbg !837
  store i64 %call1, ptr %n.addr, align 8, !dbg !838
  br label %if.end, !dbg !839

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !840
  ret i64 %5, !dbg !841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoull_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !842 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [67 x i8], align 16
  %__UNIQUE_ID___x191 = alloca i64, align 8
  %__UNIQUE_ID___y192 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !846, metadata !DIExpression()), !dbg !857
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !847, metadata !DIExpression()), !dbg !857
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !848, metadata !DIExpression()), !dbg !857
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !849, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 67, ptr %buf) #12, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !850, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x191) #12, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x191, metadata !854, metadata !DIExpression()), !dbg !858
  %0 = load i64, ptr %count.addr, align 8, !dbg !858
  store i64 %0, ptr %__UNIQUE_ID___x191, align 8, !dbg !858
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y192) #12, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y192, metadata !856, metadata !DIExpression()), !dbg !858
  store i64 66, ptr %__UNIQUE_ID___y192, align 8, !dbg !858
  %1 = load i64, ptr %__UNIQUE_ID___x191, align 8, !dbg !858
  %2 = load i64, ptr %__UNIQUE_ID___y192, align 8, !dbg !858
  %cmp = icmp ult i64 %1, %2, !dbg !858
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !858

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x191, align 8, !dbg !858
  br label %cond.end, !dbg !858

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y192, align 8, !dbg !858
  br label %cond.end, !dbg !858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !858
  store i64 %cond, ptr %tmp, align 8, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y192) #12, !dbg !857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x191) #12, !dbg !857
  %5 = load i64, ptr %tmp, align 8, !dbg !858
  store i64 %5, ptr %count.addr, align 8, !dbg !857
  %arraydecay = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !859
  %6 = load ptr, ptr %s.addr, align 8, !dbg !859
  %7 = load i64, ptr %count.addr, align 8, !dbg !859
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !859
  %tobool = icmp ne i64 %call, 0, !dbg !859
  br i1 %tobool, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !857
  %arrayidx = getelementptr [67 x i8], ptr %buf, i64 0, i64 %8, !dbg !857
  store i8 0, ptr %arrayidx, align 1, !dbg !857
  %arraydecay1 = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !857
  %9 = load i32, ptr %base.addr, align 4, !dbg !857
  %10 = load ptr, ptr %res.addr, align 8, !dbg !857
  %call2 = call i32 @kstrtoull(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !857
  store i32 %call2, ptr %retval, align 4, !dbg !857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !857

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 67, ptr %buf) #12, !dbg !857
  %11 = load i32, ptr %retval, align 4, !dbg !857
  ret i32 %11, !dbg !857
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoll_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !861 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [67 x i8], align 16
  %__UNIQUE_ID___x194 = alloca i64, align 8
  %__UNIQUE_ID___y195 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !865, metadata !DIExpression()), !dbg !873
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !866, metadata !DIExpression()), !dbg !873
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !867, metadata !DIExpression()), !dbg !873
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !868, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 67, ptr %buf) #12, !dbg !873
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !869, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x194) #12, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x194, metadata !870, metadata !DIExpression()), !dbg !874
  %0 = load i64, ptr %count.addr, align 8, !dbg !874
  store i64 %0, ptr %__UNIQUE_ID___x194, align 8, !dbg !874
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y195) #12, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y195, metadata !872, metadata !DIExpression()), !dbg !874
  store i64 66, ptr %__UNIQUE_ID___y195, align 8, !dbg !874
  %1 = load i64, ptr %__UNIQUE_ID___x194, align 8, !dbg !874
  %2 = load i64, ptr %__UNIQUE_ID___y195, align 8, !dbg !874
  %cmp = icmp ult i64 %1, %2, !dbg !874
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !874

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x194, align 8, !dbg !874
  br label %cond.end, !dbg !874

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y195, align 8, !dbg !874
  br label %cond.end, !dbg !874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !874
  store i64 %cond, ptr %tmp, align 8, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y195) #12, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x194) #12, !dbg !873
  %5 = load i64, ptr %tmp, align 8, !dbg !874
  store i64 %5, ptr %count.addr, align 8, !dbg !873
  %arraydecay = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !875
  %6 = load ptr, ptr %s.addr, align 8, !dbg !875
  %7 = load i64, ptr %count.addr, align 8, !dbg !875
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !875
  %tobool = icmp ne i64 %call, 0, !dbg !875
  br i1 %tobool, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !873
  %arrayidx = getelementptr [67 x i8], ptr %buf, i64 0, i64 %8, !dbg !873
  store i8 0, ptr %arrayidx, align 1, !dbg !873
  %arraydecay1 = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !873
  %9 = load i32, ptr %base.addr, align 4, !dbg !873
  %10 = load ptr, ptr %res.addr, align 8, !dbg !873
  %call2 = call i32 @kstrtoll(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !873
  store i32 %call2, ptr %retval, align 4, !dbg !873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !873

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 67, ptr %buf) #12, !dbg !873
  %11 = load i32, ptr %retval, align 4, !dbg !873
  ret i32 %11, !dbg !873
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoul_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !877 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [67 x i8], align 16
  %__UNIQUE_ID___x197 = alloca i64, align 8
  %__UNIQUE_ID___y198 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !881, metadata !DIExpression()), !dbg !889
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !882, metadata !DIExpression()), !dbg !889
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !883, metadata !DIExpression()), !dbg !889
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !884, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 67, ptr %buf) #12, !dbg !889
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !885, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x197) #12, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x197, metadata !886, metadata !DIExpression()), !dbg !890
  %0 = load i64, ptr %count.addr, align 8, !dbg !890
  store i64 %0, ptr %__UNIQUE_ID___x197, align 8, !dbg !890
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y198) #12, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y198, metadata !888, metadata !DIExpression()), !dbg !890
  store i64 66, ptr %__UNIQUE_ID___y198, align 8, !dbg !890
  %1 = load i64, ptr %__UNIQUE_ID___x197, align 8, !dbg !890
  %2 = load i64, ptr %__UNIQUE_ID___y198, align 8, !dbg !890
  %cmp = icmp ult i64 %1, %2, !dbg !890
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !890

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x197, align 8, !dbg !890
  br label %cond.end, !dbg !890

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y198, align 8, !dbg !890
  br label %cond.end, !dbg !890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !890
  store i64 %cond, ptr %tmp, align 8, !dbg !890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y198) #12, !dbg !889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x197) #12, !dbg !889
  %5 = load i64, ptr %tmp, align 8, !dbg !890
  store i64 %5, ptr %count.addr, align 8, !dbg !889
  %arraydecay = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !891
  %6 = load ptr, ptr %s.addr, align 8, !dbg !891
  %7 = load i64, ptr %count.addr, align 8, !dbg !891
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !891
  %tobool = icmp ne i64 %call, 0, !dbg !891
  br i1 %tobool, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !889
  %arrayidx = getelementptr [67 x i8], ptr %buf, i64 0, i64 %8, !dbg !889
  store i8 0, ptr %arrayidx, align 1, !dbg !889
  %arraydecay1 = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !889
  %9 = load i32, ptr %base.addr, align 4, !dbg !889
  %10 = load ptr, ptr %res.addr, align 8, !dbg !889
  %call2 = call i32 @kstrtoul(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !889
  store i32 %call2, ptr %retval, align 4, !dbg !889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !889

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 67, ptr %buf) #12, !dbg !889
  %11 = load i32, ptr %retval, align 4, !dbg !889
  ret i32 %11, !dbg !889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #2 align 16 !dbg !893 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !896, metadata !DIExpression()), !dbg !899
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !897, metadata !DIExpression()), !dbg !900
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !898, metadata !DIExpression()), !dbg !901
  %0 = load ptr, ptr %s.addr, align 8, !dbg !902
  %1 = load i32, ptr %base.addr, align 4, !dbg !904
  %2 = load ptr, ptr %res.addr, align 8, !dbg !905
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11, !dbg !906
  ret i32 %call, !dbg !907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtol_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !908 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [67 x i8], align 16
  %__UNIQUE_ID___x200 = alloca i64, align 8
  %__UNIQUE_ID___y201 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !912, metadata !DIExpression()), !dbg !920
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !913, metadata !DIExpression()), !dbg !920
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !914, metadata !DIExpression()), !dbg !920
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !915, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 67, ptr %buf) #12, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !916, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x200) #12, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x200, metadata !917, metadata !DIExpression()), !dbg !921
  %0 = load i64, ptr %count.addr, align 8, !dbg !921
  store i64 %0, ptr %__UNIQUE_ID___x200, align 8, !dbg !921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y201) #12, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y201, metadata !919, metadata !DIExpression()), !dbg !921
  store i64 66, ptr %__UNIQUE_ID___y201, align 8, !dbg !921
  %1 = load i64, ptr %__UNIQUE_ID___x200, align 8, !dbg !921
  %2 = load i64, ptr %__UNIQUE_ID___y201, align 8, !dbg !921
  %cmp = icmp ult i64 %1, %2, !dbg !921
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !921

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x200, align 8, !dbg !921
  br label %cond.end, !dbg !921

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y201, align 8, !dbg !921
  br label %cond.end, !dbg !921

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !921
  store i64 %cond, ptr %tmp, align 8, !dbg !921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y201) #12, !dbg !920
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x200) #12, !dbg !920
  %5 = load i64, ptr %tmp, align 8, !dbg !921
  store i64 %5, ptr %count.addr, align 8, !dbg !920
  %arraydecay = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !922
  %6 = load ptr, ptr %s.addr, align 8, !dbg !922
  %7 = load i64, ptr %count.addr, align 8, !dbg !922
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !922
  %tobool = icmp ne i64 %call, 0, !dbg !922
  br i1 %tobool, label %if.then, label %if.end, !dbg !920

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !922

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !920
  %arrayidx = getelementptr [67 x i8], ptr %buf, i64 0, i64 %8, !dbg !920
  store i8 0, ptr %arrayidx, align 1, !dbg !920
  %arraydecay1 = getelementptr inbounds [67 x i8], ptr %buf, i64 0, i64 0, !dbg !920
  %9 = load i32, ptr %base.addr, align 4, !dbg !920
  %10 = load ptr, ptr %res.addr, align 8, !dbg !920
  %call2 = call i32 @kstrtol(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !920
  store i32 %call2, ptr %retval, align 4, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !920

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 67, ptr %buf) #12, !dbg !920
  %11 = load i32, ptr %retval, align 4, !dbg !920
  ret i32 %11, !dbg !920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtol(ptr noundef %s, i32 noundef %base, ptr noundef %res) #2 align 16 !dbg !924 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !926, metadata !DIExpression()), !dbg !929
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !927, metadata !DIExpression()), !dbg !930
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !928, metadata !DIExpression()), !dbg !931
  %0 = load ptr, ptr %s.addr, align 8, !dbg !932
  %1 = load i32, ptr %base.addr, align 4, !dbg !934
  %2 = load ptr, ptr %res.addr, align 8, !dbg !935
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11, !dbg !936
  ret i32 %call, !dbg !937
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtouint_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !938 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [35 x i8], align 16
  %__UNIQUE_ID___x203 = alloca i64, align 8
  %__UNIQUE_ID___y204 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !942, metadata !DIExpression()), !dbg !953
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !943, metadata !DIExpression()), !dbg !953
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !944, metadata !DIExpression()), !dbg !953
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !945, metadata !DIExpression()), !dbg !953
  call void @llvm.lifetime.start.p0(i64 35, ptr %buf) #12, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !946, metadata !DIExpression()), !dbg !953
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x203) #12, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x203, metadata !950, metadata !DIExpression()), !dbg !954
  %0 = load i64, ptr %count.addr, align 8, !dbg !954
  store i64 %0, ptr %__UNIQUE_ID___x203, align 8, !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y204) #12, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y204, metadata !952, metadata !DIExpression()), !dbg !954
  store i64 34, ptr %__UNIQUE_ID___y204, align 8, !dbg !954
  %1 = load i64, ptr %__UNIQUE_ID___x203, align 8, !dbg !954
  %2 = load i64, ptr %__UNIQUE_ID___y204, align 8, !dbg !954
  %cmp = icmp ult i64 %1, %2, !dbg !954
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !954

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x203, align 8, !dbg !954
  br label %cond.end, !dbg !954

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y204, align 8, !dbg !954
  br label %cond.end, !dbg !954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !954
  store i64 %cond, ptr %tmp, align 8, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y204) #12, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x203) #12, !dbg !953
  %5 = load i64, ptr %tmp, align 8, !dbg !954
  store i64 %5, ptr %count.addr, align 8, !dbg !953
  %arraydecay = getelementptr inbounds [35 x i8], ptr %buf, i64 0, i64 0, !dbg !955
  %6 = load ptr, ptr %s.addr, align 8, !dbg !955
  %7 = load i64, ptr %count.addr, align 8, !dbg !955
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !955
  %tobool = icmp ne i64 %call, 0, !dbg !955
  br i1 %tobool, label %if.then, label %if.end, !dbg !953

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !955

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !953
  %arrayidx = getelementptr [35 x i8], ptr %buf, i64 0, i64 %8, !dbg !953
  store i8 0, ptr %arrayidx, align 1, !dbg !953
  %arraydecay1 = getelementptr inbounds [35 x i8], ptr %buf, i64 0, i64 0, !dbg !953
  %9 = load i32, ptr %base.addr, align 4, !dbg !953
  %10 = load ptr, ptr %res.addr, align 8, !dbg !953
  %call2 = call i32 @kstrtouint(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !953
  store i32 %call2, ptr %retval, align 4, !dbg !953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !953

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 35, ptr %buf) #12, !dbg !953
  %11 = load i32, ptr %retval, align 4, !dbg !953
  ret i32 %11, !dbg !953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtoint_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !957 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [35 x i8], align 16
  %__UNIQUE_ID___x206 = alloca i64, align 8
  %__UNIQUE_ID___y207 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !961, metadata !DIExpression()), !dbg !969
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !962, metadata !DIExpression()), !dbg !969
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !963, metadata !DIExpression()), !dbg !969
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !964, metadata !DIExpression()), !dbg !969
  call void @llvm.lifetime.start.p0(i64 35, ptr %buf) #12, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !965, metadata !DIExpression()), !dbg !969
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x206) #12, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x206, metadata !966, metadata !DIExpression()), !dbg !970
  %0 = load i64, ptr %count.addr, align 8, !dbg !970
  store i64 %0, ptr %__UNIQUE_ID___x206, align 8, !dbg !970
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y207) #12, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y207, metadata !968, metadata !DIExpression()), !dbg !970
  store i64 34, ptr %__UNIQUE_ID___y207, align 8, !dbg !970
  %1 = load i64, ptr %__UNIQUE_ID___x206, align 8, !dbg !970
  %2 = load i64, ptr %__UNIQUE_ID___y207, align 8, !dbg !970
  %cmp = icmp ult i64 %1, %2, !dbg !970
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !970

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x206, align 8, !dbg !970
  br label %cond.end, !dbg !970

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y207, align 8, !dbg !970
  br label %cond.end, !dbg !970

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !970
  store i64 %cond, ptr %tmp, align 8, !dbg !970
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y207) #12, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x206) #12, !dbg !969
  %5 = load i64, ptr %tmp, align 8, !dbg !970
  store i64 %5, ptr %count.addr, align 8, !dbg !969
  %arraydecay = getelementptr inbounds [35 x i8], ptr %buf, i64 0, i64 0, !dbg !971
  %6 = load ptr, ptr %s.addr, align 8, !dbg !971
  %7 = load i64, ptr %count.addr, align 8, !dbg !971
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !971
  %tobool = icmp ne i64 %call, 0, !dbg !971
  br i1 %tobool, label %if.then, label %if.end, !dbg !969

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !971

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !969
  %arrayidx = getelementptr [35 x i8], ptr %buf, i64 0, i64 %8, !dbg !969
  store i8 0, ptr %arrayidx, align 1, !dbg !969
  %arraydecay1 = getelementptr inbounds [35 x i8], ptr %buf, i64 0, i64 0, !dbg !969
  %9 = load i32, ptr %base.addr, align 4, !dbg !969
  %10 = load ptr, ptr %res.addr, align 8, !dbg !969
  %call2 = call i32 @kstrtoint(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !969
  store i32 %call2, ptr %retval, align 4, !dbg !969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !969

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 35, ptr %buf) #12, !dbg !969
  %11 = load i32, ptr %retval, align 4, !dbg !969
  ret i32 %11, !dbg !969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtou16_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !973 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [19 x i8], align 16
  %__UNIQUE_ID___x209 = alloca i64, align 8
  %__UNIQUE_ID___y210 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !977, metadata !DIExpression()), !dbg !988
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !978, metadata !DIExpression()), !dbg !988
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !979, metadata !DIExpression()), !dbg !988
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !980, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 19, ptr %buf) #12, !dbg !988
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x209) #12, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x209, metadata !985, metadata !DIExpression()), !dbg !989
  %0 = load i64, ptr %count.addr, align 8, !dbg !989
  store i64 %0, ptr %__UNIQUE_ID___x209, align 8, !dbg !989
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y210) #12, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y210, metadata !987, metadata !DIExpression()), !dbg !989
  store i64 18, ptr %__UNIQUE_ID___y210, align 8, !dbg !989
  %1 = load i64, ptr %__UNIQUE_ID___x209, align 8, !dbg !989
  %2 = load i64, ptr %__UNIQUE_ID___y210, align 8, !dbg !989
  %cmp = icmp ult i64 %1, %2, !dbg !989
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !989

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x209, align 8, !dbg !989
  br label %cond.end, !dbg !989

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y210, align 8, !dbg !989
  br label %cond.end, !dbg !989

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !989
  store i64 %cond, ptr %tmp, align 8, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y210) #12, !dbg !988
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x209) #12, !dbg !988
  %5 = load i64, ptr %tmp, align 8, !dbg !989
  store i64 %5, ptr %count.addr, align 8, !dbg !988
  %arraydecay = getelementptr inbounds [19 x i8], ptr %buf, i64 0, i64 0, !dbg !990
  %6 = load ptr, ptr %s.addr, align 8, !dbg !990
  %7 = load i64, ptr %count.addr, align 8, !dbg !990
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !990
  %tobool = icmp ne i64 %call, 0, !dbg !990
  br i1 %tobool, label %if.then, label %if.end, !dbg !988

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !990

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !988
  %arrayidx = getelementptr [19 x i8], ptr %buf, i64 0, i64 %8, !dbg !988
  store i8 0, ptr %arrayidx, align 1, !dbg !988
  %arraydecay1 = getelementptr inbounds [19 x i8], ptr %buf, i64 0, i64 0, !dbg !988
  %9 = load i32, ptr %base.addr, align 4, !dbg !988
  %10 = load ptr, ptr %res.addr, align 8, !dbg !988
  %call2 = call i32 @kstrtou16(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !988
  store i32 %call2, ptr %retval, align 4, !dbg !988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !988

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 19, ptr %buf) #12, !dbg !988
  %11 = load i32, ptr %retval, align 4, !dbg !988
  ret i32 %11, !dbg !988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtos16_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !992 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [19 x i8], align 16
  %__UNIQUE_ID___x212 = alloca i64, align 8
  %__UNIQUE_ID___y213 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !996, metadata !DIExpression()), !dbg !1004
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !997, metadata !DIExpression()), !dbg !1004
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !998, metadata !DIExpression()), !dbg !1004
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !999, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 19, ptr %buf) #12, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1000, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x212) #12, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x212, metadata !1001, metadata !DIExpression()), !dbg !1005
  %0 = load i64, ptr %count.addr, align 8, !dbg !1005
  store i64 %0, ptr %__UNIQUE_ID___x212, align 8, !dbg !1005
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y213) #12, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y213, metadata !1003, metadata !DIExpression()), !dbg !1005
  store i64 18, ptr %__UNIQUE_ID___y213, align 8, !dbg !1005
  %1 = load i64, ptr %__UNIQUE_ID___x212, align 8, !dbg !1005
  %2 = load i64, ptr %__UNIQUE_ID___y213, align 8, !dbg !1005
  %cmp = icmp ult i64 %1, %2, !dbg !1005
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1005

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x212, align 8, !dbg !1005
  br label %cond.end, !dbg !1005

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y213, align 8, !dbg !1005
  br label %cond.end, !dbg !1005

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1005
  store i64 %cond, ptr %tmp, align 8, !dbg !1005
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y213) #12, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x212) #12, !dbg !1004
  %5 = load i64, ptr %tmp, align 8, !dbg !1005
  store i64 %5, ptr %count.addr, align 8, !dbg !1004
  %arraydecay = getelementptr inbounds [19 x i8], ptr %buf, i64 0, i64 0, !dbg !1006
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1006
  %7 = load i64, ptr %count.addr, align 8, !dbg !1006
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !1006
  %tobool = icmp ne i64 %call, 0, !dbg !1006
  br i1 %tobool, label %if.then, label %if.end, !dbg !1004

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !1006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1006

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !1004
  %arrayidx = getelementptr [19 x i8], ptr %buf, i64 0, i64 %8, !dbg !1004
  store i8 0, ptr %arrayidx, align 1, !dbg !1004
  %arraydecay1 = getelementptr inbounds [19 x i8], ptr %buf, i64 0, i64 0, !dbg !1004
  %9 = load i32, ptr %base.addr, align 4, !dbg !1004
  %10 = load ptr, ptr %res.addr, align 8, !dbg !1004
  %call2 = call i32 @kstrtos16(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !1004
  store i32 %call2, ptr %retval, align 4, !dbg !1004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1004

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 19, ptr %buf) #12, !dbg !1004
  %11 = load i32, ptr %retval, align 4, !dbg !1004
  ret i32 %11, !dbg !1004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtou8_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !1008 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [11 x i8], align 1
  %__UNIQUE_ID___x215 = alloca i64, align 8
  %__UNIQUE_ID___y216 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1012, metadata !DIExpression()), !dbg !1023
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1013, metadata !DIExpression()), !dbg !1023
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1014, metadata !DIExpression()), !dbg !1023
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1015, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 11, ptr %buf) #12, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1016, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x215) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x215, metadata !1020, metadata !DIExpression()), !dbg !1024
  %0 = load i64, ptr %count.addr, align 8, !dbg !1024
  store i64 %0, ptr %__UNIQUE_ID___x215, align 8, !dbg !1024
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y216) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y216, metadata !1022, metadata !DIExpression()), !dbg !1024
  store i64 10, ptr %__UNIQUE_ID___y216, align 8, !dbg !1024
  %1 = load i64, ptr %__UNIQUE_ID___x215, align 8, !dbg !1024
  %2 = load i64, ptr %__UNIQUE_ID___y216, align 8, !dbg !1024
  %cmp = icmp ult i64 %1, %2, !dbg !1024
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1024

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x215, align 8, !dbg !1024
  br label %cond.end, !dbg !1024

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y216, align 8, !dbg !1024
  br label %cond.end, !dbg !1024

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1024
  store i64 %cond, ptr %tmp, align 8, !dbg !1024
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y216) #12, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x215) #12, !dbg !1023
  %5 = load i64, ptr %tmp, align 8, !dbg !1024
  store i64 %5, ptr %count.addr, align 8, !dbg !1023
  %arraydecay = getelementptr inbounds [11 x i8], ptr %buf, i64 0, i64 0, !dbg !1025
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1025
  %7 = load i64, ptr %count.addr, align 8, !dbg !1025
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !1025
  %tobool = icmp ne i64 %call, 0, !dbg !1025
  br i1 %tobool, label %if.then, label %if.end, !dbg !1023

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !1025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1025

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !1023
  %arrayidx = getelementptr [11 x i8], ptr %buf, i64 0, i64 %8, !dbg !1023
  store i8 0, ptr %arrayidx, align 1, !dbg !1023
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %buf, i64 0, i64 0, !dbg !1023
  %9 = load i32, ptr %base.addr, align 4, !dbg !1023
  %10 = load ptr, ptr %res.addr, align 8, !dbg !1023
  %call2 = call i32 @kstrtou8(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !1023
  store i32 %call2, ptr %retval, align 4, !dbg !1023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1023

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr %buf) #12, !dbg !1023
  %11 = load i32, ptr %retval, align 4, !dbg !1023
  ret i32 %11, !dbg !1023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstrtos8_from_user(ptr noundef %s, i64 noundef %count, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !1027 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %buf = alloca [11 x i8], align 1
  %__UNIQUE_ID___x218 = alloca i64, align 8
  %__UNIQUE_ID___y219 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1031, metadata !DIExpression()), !dbg !1039
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1032, metadata !DIExpression()), !dbg !1039
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1033, metadata !DIExpression()), !dbg !1039
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1034, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 11, ptr %buf) #12, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1035, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x218) #12, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x218, metadata !1036, metadata !DIExpression()), !dbg !1040
  %0 = load i64, ptr %count.addr, align 8, !dbg !1040
  store i64 %0, ptr %__UNIQUE_ID___x218, align 8, !dbg !1040
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y219) #12, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y219, metadata !1038, metadata !DIExpression()), !dbg !1040
  store i64 10, ptr %__UNIQUE_ID___y219, align 8, !dbg !1040
  %1 = load i64, ptr %__UNIQUE_ID___x218, align 8, !dbg !1040
  %2 = load i64, ptr %__UNIQUE_ID___y219, align 8, !dbg !1040
  %cmp = icmp ult i64 %1, %2, !dbg !1040
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1040

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x218, align 8, !dbg !1040
  br label %cond.end, !dbg !1040

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y219, align 8, !dbg !1040
  br label %cond.end, !dbg !1040

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1040
  store i64 %cond, ptr %tmp, align 8, !dbg !1040
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y219) #12, !dbg !1039
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x218) #12, !dbg !1039
  %5 = load i64, ptr %tmp, align 8, !dbg !1040
  store i64 %5, ptr %count.addr, align 8, !dbg !1039
  %arraydecay = getelementptr inbounds [11 x i8], ptr %buf, i64 0, i64 0, !dbg !1041
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1041
  %7 = load i64, ptr %count.addr, align 8, !dbg !1041
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #11, !dbg !1041
  %tobool = icmp ne i64 %call, 0, !dbg !1041
  br i1 %tobool, label %if.then, label %if.end, !dbg !1039

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !1041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !1039
  %arrayidx = getelementptr [11 x i8], ptr %buf, i64 0, i64 %8, !dbg !1039
  store i8 0, ptr %arrayidx, align 1, !dbg !1039
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %buf, i64 0, i64 0, !dbg !1039
  %9 = load i32, ptr %base.addr, align 4, !dbg !1039
  %10 = load ptr, ptr %res.addr, align 8, !dbg !1039
  %call2 = call i32 @kstrtos8(ptr noundef %arraydecay1, i32 noundef %9, ptr noundef %10) #11, !dbg !1039
  store i32 %call2, ptr %retval, align 4, !dbg !1039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1039

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr %buf) #12, !dbg !1039
  %11 = load i32, ptr %retval, align 4, !dbg !1039
  ret i32 %11, !dbg !1039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #2 align 16 !dbg !1043 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1048, metadata !DIExpression()), !dbg !1051
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1049, metadata !DIExpression()), !dbg !1052
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1050, metadata !DIExpression()), !dbg !1053
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1054
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1055
  %conv = zext i32 %1 to i64, !dbg !1055
  %rem = urem i64 %0, %conv, !dbg !1056
  %conv1 = trunc i64 %rem to i32, !dbg !1054
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1057
  store i32 %conv1, ptr %2, align 4, !dbg !1058
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1059
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1060
  %conv2 = zext i32 %4 to i64, !dbg !1060
  %div = udiv i64 %3, %conv2, !dbg !1061
  ret i64 %div, !dbg !1062
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !1063 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1067, metadata !DIExpression()), !dbg !1077
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1068, metadata !DIExpression()), !dbg !1078
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !1069, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #12, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !1070, metadata !DIExpression()), !dbg !1081
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1082
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !1083
  %conv = trunc i64 %1 to i32, !dbg !1083
  store i32 %conv, ptr %sz, align 4, !dbg !1081
  %2 = load i32, ptr %sz, align 4, !dbg !1084
  %cmp = icmp sge i32 %2, 0, !dbg !1084
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1084

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !1084
  %conv2 = sext i32 %3 to i64, !dbg !1084
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !1084
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !1084
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !1086
  %lnot = xor i1 %5, true, !dbg !1084
  %lnot5 = xor i1 %lnot, true, !dbg !1084
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !1084
  %conv6 = sext i32 %lnot.ext to i64, !dbg !1084
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !1084
  %tobool = icmp ne i64 %expval, 0, !dbg !1084
  br i1 %tobool, label %if.then, label %if.end12, !dbg !1087

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !1088
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !1091
  br i1 %7, label %if.else, label %if.then7, !dbg !1092

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !1093
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !1094
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #11, !dbg !1095
  br label %if.end11, !dbg !1095

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !1096, !range !1098, !noundef !1099
  %tobool8 = trunc i8 %10 to i1, !dbg !1096
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !1100

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #11, !dbg !1101, !srcloc !1102
  br label %if.end, !dbg !1101

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #11, !dbg !1103, !srcloc !1104
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1071, metadata !DIExpression()), !dbg !1106
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !1106
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !1106
  %lnot15 = xor i1 %cmp13, true, !dbg !1106
  %lnot17 = xor i1 %lnot15, true, !dbg !1106
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1106
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !1106
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1107
  %tobool19 = icmp ne i32 %12, 0, !dbg !1107
  %lnot20 = xor i1 %tobool19, true, !dbg !1107
  %lnot22 = xor i1 %lnot20, true, !dbg !1107
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !1107
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !1107
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !1107
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !1107
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !1106

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !1107

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1074, metadata !DIExpression()), !dbg !1108
  store i32 2307, ptr %__flags, align 4, !dbg !1108
  br label %do.body28, !dbg !1108

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !1109

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !1109

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !1108

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !1111
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #12, !dbg !1111, !srcloc !1113
  br label %do.cond30, !dbg !1111

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1111

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !1108

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !1114

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1114

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !1107
  br label %do.cond35, !dbg !1108

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !1108

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !1108

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !1106
  %tobool38 = icmp ne i32 %14, 0, !dbg !1106
  %lnot39 = xor i1 %tobool38, true, !dbg !1106
  %lnot41 = xor i1 %lnot39, true, !dbg !1106
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1106
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1106
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !1106
  store i64 %expval44, ptr %tmp, align 8, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1116
  %15 = load i64, ptr %tmp, align 8, !dbg !1106
  %tobool45 = icmp ne i64 %15, 0, !dbg !1116
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1117

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !1118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1118

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !1119
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !1120
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !1121, !range !1098, !noundef !1099
  %tobool48 = trunc i8 %18 to i1, !dbg !1121
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #11, !dbg !1122
  store i1 true, ptr %retval, align 1, !dbg !1123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1123

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #12, !dbg !1124
  %19 = load i1, ptr %retval, align 1, !dbg !1124
  ret i1 %19, !dbg !1124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1125 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #2 align 16 !dbg !1126 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1130, metadata !DIExpression()), !dbg !1132
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1131, metadata !DIExpression()), !dbg !1133
  %0 = load i32, ptr %size.addr, align 4, !dbg !1134
  %1 = load i64, ptr %count.addr, align 8, !dbg !1136
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #11, !dbg !1137
  ret void, !dbg !1138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1139 dso_local void @__bad_copy_from() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1142 dso_local void @__bad_copy_to() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #2 align 16 !dbg !1143 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1147, metadata !DIExpression()), !dbg !1150
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1148, metadata !DIExpression()), !dbg !1151
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !1149, metadata !DIExpression()), !dbg !1152
  ret void, !dbg !1153
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1154 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #7

attributes #0 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoull177", scope: !2, file: !3, line: 138, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.kstrtox.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/kstrtox\22 -D KBUILD_BASENAME=\22kstrtox\22 -D KBUILD_MODNAME=\22kstrtox\22 -D __KBUILD_MODNAME=kmod_kstrtox -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/kstrtox.ll lib/kstrtox.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/kstrtox.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5920da4b4779eb68452a44f60966faf2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !15, !16, !17, !7, !18, !23, !26, !28, !31, !33}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !19, line: 18, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !21, line: 23, baseType: !25)
!25 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !13)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !19, line: 16, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !21, line: 20, baseType: !30)
!30 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!34 = !{!0, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoll178", scope: !2, file: !3, line: 178, type: !14, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__kstrtoul179", scope: !2, file: !3, line: 194, type: !14, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__kstrtol180", scope: !2, file: !3, line: 210, type: !14, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtouint181", scope: !2, file: !3, line: 241, type: !14, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoint182", scope: !2, file: !3, line: 272, type: !14, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtou16183", scope: !2, file: !3, line: 288, type: !14, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtos16184", scope: !2, file: !3, line: 304, type: !14, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtou8185", scope: !2, file: !3, line: 320, type: !14, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtos8186", scope: !2, file: !3, line: 336, type: !14, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtobool187", scope: !2, file: !3, line: 389, type: !14, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtobool_from_user190", scope: !2, file: !3, line: 406, type: !14, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoull_from_user193", scope: !2, file: !3, line: 422, type: !14, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoll_from_user196", scope: !2, file: !3, line: 423, type: !14, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoul_from_user199", scope: !2, file: !3, line: 424, type: !14, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtol_from_user202", scope: !2, file: !3, line: 425, type: !14, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtouint_from_user205", scope: !2, file: !3, line: 426, type: !14, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtoint_from_user208", scope: !2, file: !3, line: 427, type: !14, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtou16_from_user211", scope: !2, file: !3, line: 428, type: !14, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtos16_from_user214", scope: !2, file: !3, line: 429, type: !14, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtou8_from_user217", scope: !2, file: !3, line: 430, type: !14, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kstrtos8_from_user220", scope: !2, file: !3, line: 431, type: !14, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !79, line: 249, type: !80, isLocal: true, isDefinition: true)
!79 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 224, elements: !82)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !{!83}
!83 = !DISubrange(count: 28)
!84 = !{i32 7, !"Dwarf Version", i32 5}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 8, !"cf-protection-branch", i32 1}
!88 = !{i32 4, !"function_return_thunk_extern", i32 1}
!89 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!90 = !{i32 1, !"Code Model", i32 2}
!91 = !{i32 1, !"override-stack-alignment", i32 8}
!92 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!93 = distinct !DISubprogram(name: "_parse_integer_fixup_radix", scope: !3, file: !3, line: 26, type: !94, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !96, !98}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!99 = !{!100, !101}
!100 = !DILocalVariable(name: "s", arg: 1, scope: !93, file: !3, line: 26, type: !96)
!101 = !DILocalVariable(name: "base", arg: 2, scope: !93, file: !3, line: 26, type: !98)
!102 = !DILocation(line: 26, column: 52, scope: !93)
!103 = !DILocation(line: 26, column: 69, scope: !93)
!104 = !DILocation(line: 28, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !93, file: !3, line: 28, column: 6)
!106 = !DILocation(line: 28, column: 6, scope: !105)
!107 = !DILocation(line: 28, column: 12, scope: !105)
!108 = !DILocation(line: 28, column: 6, scope: !93)
!109 = !DILocation(line: 29, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 29, column: 7)
!111 = distinct !DILexicalBlock(scope: !105, file: !3, line: 28, column: 18)
!112 = !DILocation(line: 29, column: 12, scope: !110)
!113 = !DILocation(line: 29, column: 7, scope: !111)
!114 = !DILocation(line: 30, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 30, column: 8)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 29, column: 20)
!117 = !DILocation(line: 30, column: 8, scope: !115)
!118 = !DILocation(line: 30, column: 23, scope: !115)
!119 = !DILocation(line: 30, column: 30, scope: !115)
!120 = !DILocation(line: 30, column: 33, scope: !115)
!121 = !DILocation(line: 30, column: 8, scope: !116)
!122 = !DILocation(line: 31, column: 6, scope: !115)
!123 = !DILocation(line: 31, column: 11, scope: !115)
!124 = !DILocation(line: 31, column: 5, scope: !115)
!125 = !DILocation(line: 33, column: 6, scope: !115)
!126 = !DILocation(line: 33, column: 11, scope: !115)
!127 = !DILocation(line: 34, column: 3, scope: !116)
!128 = !DILocation(line: 35, column: 5, scope: !110)
!129 = !DILocation(line: 35, column: 10, scope: !110)
!130 = !DILocation(line: 36, column: 2, scope: !111)
!131 = !DILocation(line: 37, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !93, file: !3, line: 37, column: 6)
!133 = !DILocation(line: 37, column: 6, scope: !132)
!134 = !DILocation(line: 37, column: 12, scope: !132)
!135 = !DILocation(line: 37, column: 18, scope: !132)
!136 = !DILocation(line: 37, column: 21, scope: !132)
!137 = !DILocation(line: 37, column: 26, scope: !132)
!138 = !DILocation(line: 37, column: 33, scope: !132)
!139 = !DILocation(line: 37, column: 45, scope: !132)
!140 = !DILocation(line: 37, column: 36, scope: !132)
!141 = !DILocation(line: 37, column: 51, scope: !132)
!142 = !DILocation(line: 37, column: 6, scope: !93)
!143 = !DILocation(line: 38, column: 5, scope: !132)
!144 = !DILocation(line: 38, column: 3, scope: !132)
!145 = !DILocation(line: 39, column: 9, scope: !93)
!146 = !DILocation(line: 39, column: 2, scope: !93)
!147 = distinct !DISubprogram(name: "_tolower", scope: !148, file: !148, line: 70, type: !149, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!148 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!149 = !DISubroutineType(types: !150)
!150 = !{!81, !97}
!151 = !{!152}
!152 = !DILocalVariable(name: "c", arg: 1, scope: !147, file: !148, line: 70, type: !97)
!153 = !DILocation(line: 70, column: 40, scope: !147)
!154 = !DILocation(line: 72, column: 9, scope: !147)
!155 = !DILocation(line: 72, column: 11, scope: !147)
!156 = !DILocation(line: 72, column: 2, scope: !147)
!157 = distinct !DISubprogram(name: "_parse_integer_limit", scope: !3, file: !3, line: 52, type: !158, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!158 = !DISubroutineType(types: !159)
!159 = !{!7, !96, !7, !31, !160}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 61, baseType: !162)
!161 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !163, line: 72, baseType: !164)
!163 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !163, line: 16, baseType: !16)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !174, !175}
!166 = !DILocalVariable(name: "s", arg: 1, scope: !157, file: !3, line: 52, type: !96)
!167 = !DILocalVariable(name: "base", arg: 2, scope: !157, file: !3, line: 52, type: !7)
!168 = !DILocalVariable(name: "p", arg: 3, scope: !157, file: !3, line: 52, type: !31)
!169 = !DILocalVariable(name: "max_chars", arg: 4, scope: !157, file: !3, line: 53, type: !160)
!170 = !DILocalVariable(name: "res", scope: !157, file: !3, line: 55, type: !32)
!171 = !DILocalVariable(name: "rv", scope: !157, file: !3, line: 56, type: !7)
!172 = !DILocalVariable(name: "c", scope: !173, file: !3, line: 61, type: !7)
!173 = distinct !DILexicalBlock(scope: !157, file: !3, line: 60, column: 22)
!174 = !DILocalVariable(name: "lc", scope: !173, file: !3, line: 62, type: !7)
!175 = !DILocalVariable(name: "val", scope: !173, file: !3, line: 63, type: !7)
!176 = !DILocation(line: 52, column: 47, scope: !157)
!177 = !DILocation(line: 52, column: 63, scope: !157)
!178 = !DILocation(line: 52, column: 89, scope: !157)
!179 = !DILocation(line: 53, column: 14, scope: !157)
!180 = !DILocation(line: 55, column: 2, scope: !157)
!181 = !DILocation(line: 55, column: 21, scope: !157)
!182 = !DILocation(line: 56, column: 2, scope: !157)
!183 = !DILocation(line: 56, column: 15, scope: !157)
!184 = !DILocation(line: 58, column: 6, scope: !157)
!185 = !DILocation(line: 59, column: 5, scope: !157)
!186 = !DILocation(line: 60, column: 2, scope: !157)
!187 = !DILocation(line: 60, column: 18, scope: !157)
!188 = !DILocation(line: 61, column: 3, scope: !173)
!189 = !DILocation(line: 61, column: 16, scope: !173)
!190 = !DILocation(line: 61, column: 21, scope: !173)
!191 = !DILocation(line: 61, column: 20, scope: !173)
!192 = !DILocation(line: 62, column: 3, scope: !173)
!193 = !DILocation(line: 62, column: 16, scope: !173)
!194 = !DILocation(line: 62, column: 30, scope: !173)
!195 = !DILocation(line: 62, column: 21, scope: !173)
!196 = !DILocation(line: 63, column: 3, scope: !173)
!197 = !DILocation(line: 63, column: 16, scope: !173)
!198 = !DILocation(line: 65, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !173, file: !3, line: 65, column: 7)
!200 = !DILocation(line: 65, column: 11, scope: !199)
!201 = !DILocation(line: 65, column: 16, scope: !199)
!202 = !DILocation(line: 65, column: 19, scope: !199)
!203 = !DILocation(line: 65, column: 21, scope: !199)
!204 = !DILocation(line: 65, column: 7, scope: !173)
!205 = !DILocation(line: 66, column: 10, scope: !199)
!206 = !DILocation(line: 66, column: 12, scope: !199)
!207 = !DILocation(line: 66, column: 8, scope: !199)
!208 = !DILocation(line: 66, column: 4, scope: !199)
!209 = !DILocation(line: 67, column: 19, scope: !210)
!210 = distinct !DILexicalBlock(scope: !199, file: !3, line: 67, column: 12)
!211 = !DILocation(line: 67, column: 16, scope: !210)
!212 = !DILocation(line: 67, column: 22, scope: !210)
!213 = !DILocation(line: 67, column: 25, scope: !210)
!214 = !DILocation(line: 67, column: 28, scope: !210)
!215 = !DILocation(line: 67, column: 12, scope: !199)
!216 = !DILocation(line: 68, column: 10, scope: !210)
!217 = !DILocation(line: 68, column: 13, scope: !210)
!218 = !DILocation(line: 68, column: 19, scope: !210)
!219 = !DILocation(line: 68, column: 8, scope: !210)
!220 = !DILocation(line: 68, column: 4, scope: !210)
!221 = !DILocation(line: 70, column: 4, scope: !210)
!222 = !DILocation(line: 72, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !173, file: !3, line: 72, column: 7)
!224 = !DILocation(line: 72, column: 14, scope: !223)
!225 = !DILocation(line: 72, column: 11, scope: !223)
!226 = !DILocation(line: 72, column: 7, scope: !173)
!227 = !DILocation(line: 73, column: 4, scope: !223)
!228 = !DILocation(line: 78, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !173, file: !3, line: 78, column: 7)
!230 = !DILocation(line: 78, column: 7, scope: !173)
!231 = !DILocation(line: 79, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 79, column: 8)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 78, column: 38)
!234 = !DILocation(line: 79, column: 35, scope: !232)
!235 = !DILocation(line: 79, column: 33, scope: !232)
!236 = !DILocation(line: 79, column: 40, scope: !232)
!237 = !DILocation(line: 79, column: 14, scope: !232)
!238 = !DILocation(line: 79, column: 12, scope: !232)
!239 = !DILocation(line: 79, column: 8, scope: !233)
!240 = !DILocation(line: 80, column: 8, scope: !232)
!241 = !DILocation(line: 80, column: 5, scope: !232)
!242 = !DILocation(line: 81, column: 3, scope: !233)
!243 = !DILocation(line: 82, column: 9, scope: !173)
!244 = !DILocation(line: 82, column: 15, scope: !173)
!245 = !DILocation(line: 82, column: 13, scope: !173)
!246 = !DILocation(line: 82, column: 22, scope: !173)
!247 = !DILocation(line: 82, column: 20, scope: !173)
!248 = !DILocation(line: 82, column: 7, scope: !173)
!249 = !DILocation(line: 83, column: 5, scope: !173)
!250 = !DILocation(line: 84, column: 4, scope: !173)
!251 = !DILocation(line: 85, column: 2, scope: !157)
!252 = distinct !{!252, !186, !251, !253, !254}
!253 = !{!"llvm.loop.mustprogress"}
!254 = !{!"llvm.loop.unroll.disable"}
!255 = !DILocation(line: 86, column: 7, scope: !157)
!256 = !DILocation(line: 86, column: 3, scope: !157)
!257 = !DILocation(line: 86, column: 5, scope: !157)
!258 = !DILocation(line: 87, column: 9, scope: !157)
!259 = !DILocation(line: 88, column: 1, scope: !157)
!260 = !DILocation(line: 87, column: 2, scope: !157)
!261 = distinct !DISubprogram(name: "div_u64", scope: !262, file: !262, line: 127, type: !263, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!262 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !265, !267}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!269 = !{!270, !271, !272}
!270 = !DILocalVariable(name: "dividend", arg: 1, scope: !261, file: !262, line: 127, type: !265)
!271 = !DILocalVariable(name: "divisor", arg: 2, scope: !261, file: !262, line: 127, type: !267)
!272 = !DILocalVariable(name: "remainder", scope: !261, file: !262, line: 129, type: !267)
!273 = !DILocation(line: 127, column: 31, scope: !261)
!274 = !DILocation(line: 127, column: 45, scope: !261)
!275 = !DILocation(line: 129, column: 2, scope: !261)
!276 = !DILocation(line: 129, column: 6, scope: !261)
!277 = !DILocation(line: 130, column: 21, scope: !261)
!278 = !DILocation(line: 130, column: 31, scope: !261)
!279 = !DILocation(line: 130, column: 9, scope: !261)
!280 = !DILocation(line: 131, column: 1, scope: !261)
!281 = !DILocation(line: 130, column: 2, scope: !261)
!282 = distinct !DISubprogram(name: "_parse_integer", scope: !3, file: !3, line: 91, type: !283, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!7, !96, !7, !31}
!285 = !{!286, !287, !288}
!286 = !DILocalVariable(name: "s", arg: 1, scope: !282, file: !3, line: 91, type: !96)
!287 = !DILocalVariable(name: "base", arg: 2, scope: !282, file: !3, line: 91, type: !7)
!288 = !DILocalVariable(name: "p", arg: 3, scope: !282, file: !3, line: 91, type: !31)
!289 = !DILocation(line: 91, column: 41, scope: !282)
!290 = !DILocation(line: 91, column: 57, scope: !282)
!291 = !DILocation(line: 91, column: 83, scope: !282)
!292 = !DILocation(line: 93, column: 30, scope: !282)
!293 = !DILocation(line: 93, column: 33, scope: !282)
!294 = !DILocation(line: 93, column: 39, scope: !282)
!295 = !DILocation(line: 93, column: 9, scope: !282)
!296 = !DILocation(line: 93, column: 2, scope: !282)
!297 = distinct !DISubprogram(name: "kstrtoull", scope: !3, file: !3, line: 132, type: !298, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!12, !96, !7, !31}
!300 = !{!301, !302, !303}
!301 = !DILocalVariable(name: "s", arg: 1, scope: !297, file: !3, line: 132, type: !96)
!302 = !DILocalVariable(name: "base", arg: 2, scope: !297, file: !3, line: 132, type: !7)
!303 = !DILocalVariable(name: "res", arg: 3, scope: !297, file: !3, line: 132, type: !31)
!304 = !DILocation(line: 132, column: 27, scope: !297)
!305 = !DILocation(line: 132, column: 43, scope: !297)
!306 = !DILocation(line: 132, column: 69, scope: !297)
!307 = !DILocation(line: 134, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !297, file: !3, line: 134, column: 6)
!309 = !DILocation(line: 134, column: 11, scope: !308)
!310 = !DILocation(line: 134, column: 6, scope: !297)
!311 = !DILocation(line: 135, column: 4, scope: !308)
!312 = !DILocation(line: 135, column: 3, scope: !308)
!313 = !DILocation(line: 136, column: 20, scope: !297)
!314 = !DILocation(line: 136, column: 23, scope: !297)
!315 = !DILocation(line: 136, column: 29, scope: !297)
!316 = !DILocation(line: 136, column: 9, scope: !297)
!317 = !DILocation(line: 136, column: 2, scope: !297)
!318 = distinct !DISubprogram(name: "_kstrtoull", scope: !3, file: !3, line: 96, type: !298, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!319 = !{!320, !321, !322, !323, !324}
!320 = !DILocalVariable(name: "s", arg: 1, scope: !318, file: !3, line: 96, type: !96)
!321 = !DILocalVariable(name: "base", arg: 2, scope: !318, file: !3, line: 96, type: !7)
!322 = !DILocalVariable(name: "res", arg: 3, scope: !318, file: !3, line: 96, type: !31)
!323 = !DILocalVariable(name: "_res", scope: !318, file: !3, line: 98, type: !32)
!324 = !DILocalVariable(name: "rv", scope: !318, file: !3, line: 99, type: !7)
!325 = !DILocation(line: 96, column: 35, scope: !318)
!326 = !DILocation(line: 96, column: 51, scope: !318)
!327 = !DILocation(line: 96, column: 77, scope: !318)
!328 = !DILocation(line: 98, column: 2, scope: !318)
!329 = !DILocation(line: 98, column: 21, scope: !318)
!330 = !DILocation(line: 99, column: 2, scope: !318)
!331 = !DILocation(line: 99, column: 15, scope: !318)
!332 = !DILocation(line: 101, column: 33, scope: !318)
!333 = !DILocation(line: 101, column: 6, scope: !318)
!334 = !DILocation(line: 101, column: 4, scope: !318)
!335 = !DILocation(line: 102, column: 22, scope: !318)
!336 = !DILocation(line: 102, column: 25, scope: !318)
!337 = !DILocation(line: 102, column: 7, scope: !318)
!338 = !DILocation(line: 102, column: 5, scope: !318)
!339 = !DILocation(line: 103, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !318, file: !3, line: 103, column: 6)
!341 = !DILocation(line: 103, column: 9, scope: !340)
!342 = !DILocation(line: 103, column: 6, scope: !318)
!343 = !DILocation(line: 104, column: 3, scope: !340)
!344 = !DILocation(line: 105, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !318, file: !3, line: 105, column: 6)
!346 = !DILocation(line: 105, column: 9, scope: !345)
!347 = !DILocation(line: 105, column: 6, scope: !318)
!348 = !DILocation(line: 106, column: 3, scope: !345)
!349 = !DILocation(line: 107, column: 7, scope: !318)
!350 = !DILocation(line: 107, column: 4, scope: !318)
!351 = !DILocation(line: 108, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !318, file: !3, line: 108, column: 6)
!353 = !DILocation(line: 108, column: 6, scope: !352)
!354 = !DILocation(line: 108, column: 9, scope: !352)
!355 = !DILocation(line: 108, column: 6, scope: !318)
!356 = !DILocation(line: 109, column: 4, scope: !352)
!357 = !DILocation(line: 109, column: 3, scope: !352)
!358 = !DILocation(line: 110, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !318, file: !3, line: 110, column: 6)
!360 = !DILocation(line: 110, column: 6, scope: !359)
!361 = !DILocation(line: 110, column: 6, scope: !318)
!362 = !DILocation(line: 111, column: 3, scope: !359)
!363 = !DILocation(line: 112, column: 9, scope: !318)
!364 = !DILocation(line: 112, column: 3, scope: !318)
!365 = !DILocation(line: 112, column: 7, scope: !318)
!366 = !DILocation(line: 113, column: 2, scope: !318)
!367 = !DILocation(line: 114, column: 1, scope: !318)
!368 = distinct !DISubprogram(name: "kstrtoll", scope: !3, file: !3, line: 156, type: !369, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!12, !96, !7, !33}
!371 = !{!372, !373, !374, !375, !376}
!372 = !DILocalVariable(name: "s", arg: 1, scope: !368, file: !3, line: 156, type: !96)
!373 = !DILocalVariable(name: "base", arg: 2, scope: !368, file: !3, line: 156, type: !7)
!374 = !DILocalVariable(name: "res", arg: 3, scope: !368, file: !3, line: 156, type: !33)
!375 = !DILocalVariable(name: "tmp", scope: !368, file: !3, line: 158, type: !32)
!376 = !DILocalVariable(name: "rv", scope: !368, file: !3, line: 159, type: !12)
!377 = !DILocation(line: 156, column: 26, scope: !368)
!378 = !DILocation(line: 156, column: 42, scope: !368)
!379 = !DILocation(line: 156, column: 59, scope: !368)
!380 = !DILocation(line: 158, column: 2, scope: !368)
!381 = !DILocation(line: 158, column: 21, scope: !368)
!382 = !DILocation(line: 159, column: 2, scope: !368)
!383 = !DILocation(line: 159, column: 6, scope: !368)
!384 = !DILocation(line: 161, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !368, file: !3, line: 161, column: 6)
!386 = !DILocation(line: 161, column: 11, scope: !385)
!387 = !DILocation(line: 161, column: 6, scope: !368)
!388 = !DILocation(line: 162, column: 19, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 161, column: 19)
!390 = !DILocation(line: 162, column: 21, scope: !389)
!391 = !DILocation(line: 162, column: 26, scope: !389)
!392 = !DILocation(line: 162, column: 8, scope: !389)
!393 = !DILocation(line: 162, column: 6, scope: !389)
!394 = !DILocation(line: 163, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !389, file: !3, line: 163, column: 7)
!396 = !DILocation(line: 163, column: 10, scope: !395)
!397 = !DILocation(line: 163, column: 7, scope: !389)
!398 = !DILocation(line: 164, column: 11, scope: !395)
!399 = !DILocation(line: 164, column: 4, scope: !395)
!400 = !DILocation(line: 165, column: 19, scope: !401)
!401 = distinct !DILexicalBlock(scope: !389, file: !3, line: 165, column: 7)
!402 = !DILocation(line: 165, column: 18, scope: !401)
!403 = !DILocation(line: 165, column: 23, scope: !401)
!404 = !DILocation(line: 165, column: 7, scope: !389)
!405 = !DILocation(line: 166, column: 4, scope: !401)
!406 = !DILocation(line: 167, column: 11, scope: !389)
!407 = !DILocation(line: 167, column: 10, scope: !389)
!408 = !DILocation(line: 167, column: 4, scope: !389)
!409 = !DILocation(line: 167, column: 8, scope: !389)
!410 = !DILocation(line: 168, column: 2, scope: !389)
!411 = !DILocation(line: 169, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !385, file: !3, line: 168, column: 9)
!413 = !DILocation(line: 169, column: 21, scope: !412)
!414 = !DILocation(line: 169, column: 8, scope: !412)
!415 = !DILocation(line: 169, column: 6, scope: !412)
!416 = !DILocation(line: 170, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 170, column: 7)
!418 = !DILocation(line: 170, column: 10, scope: !417)
!419 = !DILocation(line: 170, column: 7, scope: !412)
!420 = !DILocation(line: 171, column: 11, scope: !417)
!421 = !DILocation(line: 171, column: 4, scope: !417)
!422 = !DILocation(line: 172, column: 18, scope: !423)
!423 = distinct !DILexicalBlock(scope: !412, file: !3, line: 172, column: 7)
!424 = !DILocation(line: 172, column: 22, scope: !423)
!425 = !DILocation(line: 172, column: 7, scope: !412)
!426 = !DILocation(line: 173, column: 4, scope: !423)
!427 = !DILocation(line: 174, column: 10, scope: !412)
!428 = !DILocation(line: 174, column: 4, scope: !412)
!429 = !DILocation(line: 174, column: 8, scope: !412)
!430 = !DILocation(line: 176, column: 2, scope: !368)
!431 = !DILocation(line: 177, column: 1, scope: !368)
!432 = distinct !DISubprogram(name: "_kstrtoul", scope: !3, file: !3, line: 181, type: !433, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!433 = !DISubroutineType(types: !434)
!434 = !{!12, !96, !7, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!436 = !{!437, !438, !439, !440, !441}
!437 = !DILocalVariable(name: "s", arg: 1, scope: !432, file: !3, line: 181, type: !96)
!438 = !DILocalVariable(name: "base", arg: 2, scope: !432, file: !3, line: 181, type: !7)
!439 = !DILocalVariable(name: "res", arg: 3, scope: !432, file: !3, line: 181, type: !435)
!440 = !DILocalVariable(name: "tmp", scope: !432, file: !3, line: 183, type: !32)
!441 = !DILocalVariable(name: "rv", scope: !432, file: !3, line: 184, type: !12)
!442 = !DILocation(line: 181, column: 27, scope: !432)
!443 = !DILocation(line: 181, column: 43, scope: !432)
!444 = !DILocation(line: 181, column: 64, scope: !432)
!445 = !DILocation(line: 183, column: 2, scope: !432)
!446 = !DILocation(line: 183, column: 21, scope: !432)
!447 = !DILocation(line: 184, column: 2, scope: !432)
!448 = !DILocation(line: 184, column: 6, scope: !432)
!449 = !DILocation(line: 186, column: 17, scope: !432)
!450 = !DILocation(line: 186, column: 20, scope: !432)
!451 = !DILocation(line: 186, column: 7, scope: !432)
!452 = !DILocation(line: 186, column: 5, scope: !432)
!453 = !DILocation(line: 187, column: 6, scope: !454)
!454 = distinct !DILexicalBlock(scope: !432, file: !3, line: 187, column: 6)
!455 = !DILocation(line: 187, column: 9, scope: !454)
!456 = !DILocation(line: 187, column: 6, scope: !432)
!457 = !DILocation(line: 188, column: 10, scope: !454)
!458 = !DILocation(line: 188, column: 3, scope: !454)
!459 = !DILocation(line: 189, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !432, file: !3, line: 189, column: 6)
!461 = !DILocation(line: 189, column: 28, scope: !460)
!462 = !DILocation(line: 189, column: 10, scope: !460)
!463 = !DILocation(line: 189, column: 6, scope: !432)
!464 = !DILocation(line: 190, column: 3, scope: !460)
!465 = !DILocation(line: 191, column: 9, scope: !432)
!466 = !DILocation(line: 191, column: 3, scope: !432)
!467 = !DILocation(line: 191, column: 7, scope: !432)
!468 = !DILocation(line: 192, column: 2, scope: !432)
!469 = !DILocation(line: 193, column: 1, scope: !432)
!470 = distinct !DISubprogram(name: "_kstrtol", scope: !3, file: !3, line: 197, type: !471, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!471 = !DISubroutineType(types: !472)
!472 = !{!12, !96, !7, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!474 = !{!475, !476, !477, !478, !479}
!475 = !DILocalVariable(name: "s", arg: 1, scope: !470, file: !3, line: 197, type: !96)
!476 = !DILocalVariable(name: "base", arg: 2, scope: !470, file: !3, line: 197, type: !7)
!477 = !DILocalVariable(name: "res", arg: 3, scope: !470, file: !3, line: 197, type: !473)
!478 = !DILocalVariable(name: "tmp", scope: !470, file: !3, line: 199, type: !15)
!479 = !DILocalVariable(name: "rv", scope: !470, file: !3, line: 200, type: !12)
!480 = !DILocation(line: 197, column: 26, scope: !470)
!481 = !DILocation(line: 197, column: 42, scope: !470)
!482 = !DILocation(line: 197, column: 54, scope: !470)
!483 = !DILocation(line: 199, column: 2, scope: !470)
!484 = !DILocation(line: 199, column: 12, scope: !470)
!485 = !DILocation(line: 200, column: 2, scope: !470)
!486 = !DILocation(line: 200, column: 6, scope: !470)
!487 = !DILocation(line: 202, column: 16, scope: !470)
!488 = !DILocation(line: 202, column: 19, scope: !470)
!489 = !DILocation(line: 202, column: 7, scope: !470)
!490 = !DILocation(line: 202, column: 5, scope: !470)
!491 = !DILocation(line: 203, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !470, file: !3, line: 203, column: 6)
!493 = !DILocation(line: 203, column: 9, scope: !492)
!494 = !DILocation(line: 203, column: 6, scope: !470)
!495 = !DILocation(line: 204, column: 10, scope: !492)
!496 = !DILocation(line: 204, column: 3, scope: !492)
!497 = !DILocation(line: 205, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !470, file: !3, line: 205, column: 6)
!499 = !DILocation(line: 205, column: 19, scope: !498)
!500 = !DILocation(line: 205, column: 10, scope: !498)
!501 = !DILocation(line: 205, column: 6, scope: !470)
!502 = !DILocation(line: 206, column: 3, scope: !498)
!503 = !DILocation(line: 207, column: 9, scope: !470)
!504 = !DILocation(line: 207, column: 3, scope: !470)
!505 = !DILocation(line: 207, column: 7, scope: !470)
!506 = !DILocation(line: 208, column: 2, scope: !470)
!507 = !DILocation(line: 209, column: 1, scope: !470)
!508 = distinct !DISubprogram(name: "kstrtouint", scope: !3, file: !3, line: 228, type: !509, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!12, !96, !7, !98}
!511 = !{!512, !513, !514, !515, !516}
!512 = !DILocalVariable(name: "s", arg: 1, scope: !508, file: !3, line: 228, type: !96)
!513 = !DILocalVariable(name: "base", arg: 2, scope: !508, file: !3, line: 228, type: !7)
!514 = !DILocalVariable(name: "res", arg: 3, scope: !508, file: !3, line: 228, type: !98)
!515 = !DILocalVariable(name: "tmp", scope: !508, file: !3, line: 230, type: !32)
!516 = !DILocalVariable(name: "rv", scope: !508, file: !3, line: 231, type: !12)
!517 = !DILocation(line: 228, column: 28, scope: !508)
!518 = !DILocation(line: 228, column: 44, scope: !508)
!519 = !DILocation(line: 228, column: 64, scope: !508)
!520 = !DILocation(line: 230, column: 2, scope: !508)
!521 = !DILocation(line: 230, column: 21, scope: !508)
!522 = !DILocation(line: 231, column: 2, scope: !508)
!523 = !DILocation(line: 231, column: 6, scope: !508)
!524 = !DILocation(line: 233, column: 17, scope: !508)
!525 = !DILocation(line: 233, column: 20, scope: !508)
!526 = !DILocation(line: 233, column: 7, scope: !508)
!527 = !DILocation(line: 233, column: 5, scope: !508)
!528 = !DILocation(line: 234, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !508, file: !3, line: 234, column: 6)
!530 = !DILocation(line: 234, column: 9, scope: !529)
!531 = !DILocation(line: 234, column: 6, scope: !508)
!532 = !DILocation(line: 235, column: 10, scope: !529)
!533 = !DILocation(line: 235, column: 3, scope: !529)
!534 = !DILocation(line: 236, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !508, file: !3, line: 236, column: 6)
!536 = !DILocation(line: 236, column: 27, scope: !535)
!537 = !DILocation(line: 236, column: 13, scope: !535)
!538 = !DILocation(line: 236, column: 10, scope: !535)
!539 = !DILocation(line: 236, column: 6, scope: !508)
!540 = !DILocation(line: 237, column: 3, scope: !535)
!541 = !DILocation(line: 238, column: 9, scope: !508)
!542 = !DILocation(line: 238, column: 3, scope: !508)
!543 = !DILocation(line: 238, column: 7, scope: !508)
!544 = !DILocation(line: 239, column: 2, scope: !508)
!545 = !DILocation(line: 240, column: 1, scope: !508)
!546 = distinct !DISubprogram(name: "kstrtoint", scope: !3, file: !3, line: 259, type: !547, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!547 = !DISubroutineType(types: !548)
!548 = !{!12, !96, !7, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DILocalVariable(name: "s", arg: 1, scope: !546, file: !3, line: 259, type: !96)
!552 = !DILocalVariable(name: "base", arg: 2, scope: !546, file: !3, line: 259, type: !7)
!553 = !DILocalVariable(name: "res", arg: 3, scope: !546, file: !3, line: 259, type: !549)
!554 = !DILocalVariable(name: "tmp", scope: !546, file: !3, line: 261, type: !15)
!555 = !DILocalVariable(name: "rv", scope: !546, file: !3, line: 262, type: !12)
!556 = !DILocation(line: 259, column: 27, scope: !546)
!557 = !DILocation(line: 259, column: 43, scope: !546)
!558 = !DILocation(line: 259, column: 54, scope: !546)
!559 = !DILocation(line: 261, column: 2, scope: !546)
!560 = !DILocation(line: 261, column: 12, scope: !546)
!561 = !DILocation(line: 262, column: 2, scope: !546)
!562 = !DILocation(line: 262, column: 6, scope: !546)
!563 = !DILocation(line: 264, column: 16, scope: !546)
!564 = !DILocation(line: 264, column: 19, scope: !546)
!565 = !DILocation(line: 264, column: 7, scope: !546)
!566 = !DILocation(line: 264, column: 5, scope: !546)
!567 = !DILocation(line: 265, column: 6, scope: !568)
!568 = distinct !DILexicalBlock(scope: !546, file: !3, line: 265, column: 6)
!569 = !DILocation(line: 265, column: 9, scope: !568)
!570 = !DILocation(line: 265, column: 6, scope: !546)
!571 = !DILocation(line: 266, column: 10, scope: !568)
!572 = !DILocation(line: 266, column: 3, scope: !568)
!573 = !DILocation(line: 267, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !546, file: !3, line: 267, column: 6)
!575 = !DILocation(line: 267, column: 18, scope: !574)
!576 = !DILocation(line: 267, column: 13, scope: !574)
!577 = !DILocation(line: 267, column: 10, scope: !574)
!578 = !DILocation(line: 267, column: 6, scope: !546)
!579 = !DILocation(line: 268, column: 3, scope: !574)
!580 = !DILocation(line: 269, column: 9, scope: !546)
!581 = !DILocation(line: 269, column: 3, scope: !546)
!582 = !DILocation(line: 269, column: 7, scope: !546)
!583 = !DILocation(line: 270, column: 2, scope: !546)
!584 = !DILocation(line: 271, column: 1, scope: !546)
!585 = distinct !DISubprogram(name: "kstrtou16", scope: !3, file: !3, line: 275, type: !586, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!586 = !DISubroutineType(types: !587)
!587 = !{!12, !96, !7, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!589 = !{!590, !591, !592, !593, !594}
!590 = !DILocalVariable(name: "s", arg: 1, scope: !585, file: !3, line: 275, type: !96)
!591 = !DILocalVariable(name: "base", arg: 2, scope: !585, file: !3, line: 275, type: !7)
!592 = !DILocalVariable(name: "res", arg: 3, scope: !585, file: !3, line: 275, type: !588)
!593 = !DILocalVariable(name: "tmp", scope: !585, file: !3, line: 277, type: !32)
!594 = !DILocalVariable(name: "rv", scope: !585, file: !3, line: 278, type: !12)
!595 = !DILocation(line: 275, column: 27, scope: !585)
!596 = !DILocation(line: 275, column: 43, scope: !585)
!597 = !DILocation(line: 275, column: 54, scope: !585)
!598 = !DILocation(line: 277, column: 2, scope: !585)
!599 = !DILocation(line: 277, column: 21, scope: !585)
!600 = !DILocation(line: 278, column: 2, scope: !585)
!601 = !DILocation(line: 278, column: 6, scope: !585)
!602 = !DILocation(line: 280, column: 17, scope: !585)
!603 = !DILocation(line: 280, column: 20, scope: !585)
!604 = !DILocation(line: 280, column: 7, scope: !585)
!605 = !DILocation(line: 280, column: 5, scope: !585)
!606 = !DILocation(line: 281, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !585, file: !3, line: 281, column: 6)
!608 = !DILocation(line: 281, column: 9, scope: !607)
!609 = !DILocation(line: 281, column: 6, scope: !585)
!610 = !DILocation(line: 282, column: 10, scope: !607)
!611 = !DILocation(line: 282, column: 3, scope: !607)
!612 = !DILocation(line: 283, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !585, file: !3, line: 283, column: 6)
!614 = !DILocation(line: 283, column: 18, scope: !613)
!615 = !DILocation(line: 283, column: 13, scope: !613)
!616 = !DILocation(line: 283, column: 10, scope: !613)
!617 = !DILocation(line: 283, column: 6, scope: !585)
!618 = !DILocation(line: 284, column: 3, scope: !613)
!619 = !DILocation(line: 285, column: 9, scope: !585)
!620 = !DILocation(line: 285, column: 3, scope: !585)
!621 = !DILocation(line: 285, column: 7, scope: !585)
!622 = !DILocation(line: 286, column: 2, scope: !585)
!623 = !DILocation(line: 287, column: 1, scope: !585)
!624 = distinct !DISubprogram(name: "kstrtos16", scope: !3, file: !3, line: 291, type: !625, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!625 = !DISubroutineType(types: !626)
!626 = !{!12, !96, !7, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!628 = !{!629, !630, !631, !632, !633}
!629 = !DILocalVariable(name: "s", arg: 1, scope: !624, file: !3, line: 291, type: !96)
!630 = !DILocalVariable(name: "base", arg: 2, scope: !624, file: !3, line: 291, type: !7)
!631 = !DILocalVariable(name: "res", arg: 3, scope: !624, file: !3, line: 291, type: !627)
!632 = !DILocalVariable(name: "tmp", scope: !624, file: !3, line: 293, type: !15)
!633 = !DILocalVariable(name: "rv", scope: !624, file: !3, line: 294, type: !12)
!634 = !DILocation(line: 291, column: 27, scope: !624)
!635 = !DILocation(line: 291, column: 43, scope: !624)
!636 = !DILocation(line: 291, column: 54, scope: !624)
!637 = !DILocation(line: 293, column: 2, scope: !624)
!638 = !DILocation(line: 293, column: 12, scope: !624)
!639 = !DILocation(line: 294, column: 2, scope: !624)
!640 = !DILocation(line: 294, column: 6, scope: !624)
!641 = !DILocation(line: 296, column: 16, scope: !624)
!642 = !DILocation(line: 296, column: 19, scope: !624)
!643 = !DILocation(line: 296, column: 7, scope: !624)
!644 = !DILocation(line: 296, column: 5, scope: !624)
!645 = !DILocation(line: 297, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !624, file: !3, line: 297, column: 6)
!647 = !DILocation(line: 297, column: 9, scope: !646)
!648 = !DILocation(line: 297, column: 6, scope: !624)
!649 = !DILocation(line: 298, column: 10, scope: !646)
!650 = !DILocation(line: 298, column: 3, scope: !646)
!651 = !DILocation(line: 299, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !624, file: !3, line: 299, column: 6)
!653 = !DILocation(line: 299, column: 18, scope: !652)
!654 = !DILocation(line: 299, column: 13, scope: !652)
!655 = !DILocation(line: 299, column: 10, scope: !652)
!656 = !DILocation(line: 299, column: 6, scope: !624)
!657 = !DILocation(line: 300, column: 3, scope: !652)
!658 = !DILocation(line: 301, column: 9, scope: !624)
!659 = !DILocation(line: 301, column: 3, scope: !624)
!660 = !DILocation(line: 301, column: 7, scope: !624)
!661 = !DILocation(line: 302, column: 2, scope: !624)
!662 = !DILocation(line: 303, column: 1, scope: !624)
!663 = distinct !DISubprogram(name: "kstrtou8", scope: !3, file: !3, line: 307, type: !664, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!664 = !DISubroutineType(types: !665)
!665 = !{!12, !96, !7, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!667 = !{!668, !669, !670, !671, !672}
!668 = !DILocalVariable(name: "s", arg: 1, scope: !663, file: !3, line: 307, type: !96)
!669 = !DILocalVariable(name: "base", arg: 2, scope: !663, file: !3, line: 307, type: !7)
!670 = !DILocalVariable(name: "res", arg: 3, scope: !663, file: !3, line: 307, type: !666)
!671 = !DILocalVariable(name: "tmp", scope: !663, file: !3, line: 309, type: !32)
!672 = !DILocalVariable(name: "rv", scope: !663, file: !3, line: 310, type: !12)
!673 = !DILocation(line: 307, column: 26, scope: !663)
!674 = !DILocation(line: 307, column: 42, scope: !663)
!675 = !DILocation(line: 307, column: 52, scope: !663)
!676 = !DILocation(line: 309, column: 2, scope: !663)
!677 = !DILocation(line: 309, column: 21, scope: !663)
!678 = !DILocation(line: 310, column: 2, scope: !663)
!679 = !DILocation(line: 310, column: 6, scope: !663)
!680 = !DILocation(line: 312, column: 17, scope: !663)
!681 = !DILocation(line: 312, column: 20, scope: !663)
!682 = !DILocation(line: 312, column: 7, scope: !663)
!683 = !DILocation(line: 312, column: 5, scope: !663)
!684 = !DILocation(line: 313, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !663, file: !3, line: 313, column: 6)
!686 = !DILocation(line: 313, column: 9, scope: !685)
!687 = !DILocation(line: 313, column: 6, scope: !663)
!688 = !DILocation(line: 314, column: 10, scope: !685)
!689 = !DILocation(line: 314, column: 3, scope: !685)
!690 = !DILocation(line: 315, column: 6, scope: !691)
!691 = distinct !DILexicalBlock(scope: !663, file: !3, line: 315, column: 6)
!692 = !DILocation(line: 315, column: 17, scope: !691)
!693 = !DILocation(line: 315, column: 13, scope: !691)
!694 = !DILocation(line: 315, column: 10, scope: !691)
!695 = !DILocation(line: 315, column: 6, scope: !663)
!696 = !DILocation(line: 316, column: 3, scope: !691)
!697 = !DILocation(line: 317, column: 9, scope: !663)
!698 = !DILocation(line: 317, column: 3, scope: !663)
!699 = !DILocation(line: 317, column: 7, scope: !663)
!700 = !DILocation(line: 318, column: 2, scope: !663)
!701 = !DILocation(line: 319, column: 1, scope: !663)
!702 = distinct !DISubprogram(name: "kstrtos8", scope: !3, file: !3, line: 323, type: !703, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!703 = !DISubroutineType(types: !704)
!704 = !{!12, !96, !7, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!706 = !{!707, !708, !709, !710, !711}
!707 = !DILocalVariable(name: "s", arg: 1, scope: !702, file: !3, line: 323, type: !96)
!708 = !DILocalVariable(name: "base", arg: 2, scope: !702, file: !3, line: 323, type: !7)
!709 = !DILocalVariable(name: "res", arg: 3, scope: !702, file: !3, line: 323, type: !705)
!710 = !DILocalVariable(name: "tmp", scope: !702, file: !3, line: 325, type: !15)
!711 = !DILocalVariable(name: "rv", scope: !702, file: !3, line: 326, type: !12)
!712 = !DILocation(line: 323, column: 26, scope: !702)
!713 = !DILocation(line: 323, column: 42, scope: !702)
!714 = !DILocation(line: 323, column: 52, scope: !702)
!715 = !DILocation(line: 325, column: 2, scope: !702)
!716 = !DILocation(line: 325, column: 12, scope: !702)
!717 = !DILocation(line: 326, column: 2, scope: !702)
!718 = !DILocation(line: 326, column: 6, scope: !702)
!719 = !DILocation(line: 328, column: 16, scope: !702)
!720 = !DILocation(line: 328, column: 19, scope: !702)
!721 = !DILocation(line: 328, column: 7, scope: !702)
!722 = !DILocation(line: 328, column: 5, scope: !702)
!723 = !DILocation(line: 329, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !702, file: !3, line: 329, column: 6)
!725 = !DILocation(line: 329, column: 9, scope: !724)
!726 = !DILocation(line: 329, column: 6, scope: !702)
!727 = !DILocation(line: 330, column: 10, scope: !724)
!728 = !DILocation(line: 330, column: 3, scope: !724)
!729 = !DILocation(line: 331, column: 6, scope: !730)
!730 = distinct !DILexicalBlock(scope: !702, file: !3, line: 331, column: 6)
!731 = !DILocation(line: 331, column: 17, scope: !730)
!732 = !DILocation(line: 331, column: 13, scope: !730)
!733 = !DILocation(line: 331, column: 10, scope: !730)
!734 = !DILocation(line: 331, column: 6, scope: !702)
!735 = !DILocation(line: 332, column: 3, scope: !730)
!736 = !DILocation(line: 333, column: 9, scope: !702)
!737 = !DILocation(line: 333, column: 3, scope: !702)
!738 = !DILocation(line: 333, column: 7, scope: !702)
!739 = !DILocation(line: 334, column: 2, scope: !702)
!740 = !DILocation(line: 335, column: 1, scope: !702)
!741 = distinct !DISubprogram(name: "kstrtobool", scope: !3, file: !3, line: 348, type: !742, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!742 = !DISubroutineType(types: !743)
!743 = !{!12, !96, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !161, line: 35, baseType: !746)
!746 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!747 = !{!748, !749}
!748 = !DILocalVariable(name: "s", arg: 1, scope: !741, file: !3, line: 348, type: !96)
!749 = !DILocalVariable(name: "res", arg: 2, scope: !741, file: !3, line: 348, type: !744)
!750 = !DILocation(line: 348, column: 28, scope: !741)
!751 = !DILocation(line: 348, column: 37, scope: !741)
!752 = !DILocation(line: 350, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !741, file: !3, line: 350, column: 6)
!754 = !DILocation(line: 350, column: 6, scope: !741)
!755 = !DILocation(line: 351, column: 3, scope: !753)
!756 = !DILocation(line: 353, column: 10, scope: !741)
!757 = !DILocation(line: 353, column: 2, scope: !741)
!758 = !DILocation(line: 359, column: 4, scope: !759)
!759 = distinct !DILexicalBlock(scope: !741, file: !3, line: 353, column: 16)
!760 = !DILocation(line: 359, column: 8, scope: !759)
!761 = !DILocation(line: 360, column: 3, scope: !759)
!762 = !DILocation(line: 366, column: 4, scope: !759)
!763 = !DILocation(line: 366, column: 8, scope: !759)
!764 = !DILocation(line: 367, column: 3, scope: !759)
!765 = !DILocation(line: 370, column: 11, scope: !759)
!766 = !DILocation(line: 370, column: 3, scope: !759)
!767 = !DILocation(line: 373, column: 5, scope: !768)
!768 = distinct !DILexicalBlock(scope: !759, file: !3, line: 370, column: 17)
!769 = !DILocation(line: 373, column: 9, scope: !768)
!770 = !DILocation(line: 374, column: 4, scope: !768)
!771 = !DILocation(line: 377, column: 5, scope: !768)
!772 = !DILocation(line: 377, column: 9, scope: !768)
!773 = !DILocation(line: 378, column: 4, scope: !768)
!774 = !DILocation(line: 380, column: 4, scope: !768)
!775 = !DILocation(line: 382, column: 3, scope: !759)
!776 = !DILocation(line: 384, column: 3, scope: !759)
!777 = !DILocation(line: 387, column: 2, scope: !741)
!778 = !DILocation(line: 388, column: 1, scope: !741)
!779 = distinct !DISubprogram(name: "kstrtobool_from_user", scope: !3, file: !3, line: 395, type: !780, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!12, !96, !160, !744}
!782 = !{!783, !784, !785, !786, !790, !792}
!783 = !DILocalVariable(name: "s", arg: 1, scope: !779, file: !3, line: 395, type: !96)
!784 = !DILocalVariable(name: "count", arg: 2, scope: !779, file: !3, line: 395, type: !160)
!785 = !DILocalVariable(name: "res", arg: 3, scope: !779, file: !3, line: 395, type: !744)
!786 = !DILocalVariable(name: "buf", scope: !779, file: !3, line: 398, type: !787)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 4)
!790 = !DILocalVariable(name: "__UNIQUE_ID___x188", scope: !791, file: !3, line: 400, type: !160)
!791 = distinct !DILexicalBlock(scope: !779, file: !3, line: 400, column: 10)
!792 = !DILocalVariable(name: "__UNIQUE_ID___y189", scope: !791, file: !3, line: 400, type: !16)
!793 = !DILocation(line: 395, column: 45, scope: !779)
!794 = !DILocation(line: 395, column: 55, scope: !779)
!795 = !DILocation(line: 395, column: 68, scope: !779)
!796 = !DILocation(line: 398, column: 2, scope: !779)
!797 = !DILocation(line: 398, column: 7, scope: !779)
!798 = !DILocation(line: 400, column: 10, scope: !791)
!799 = !DILocation(line: 400, column: 10, scope: !779)
!800 = !DILocation(line: 400, column: 8, scope: !779)
!801 = !DILocation(line: 401, column: 21, scope: !802)
!802 = distinct !DILexicalBlock(scope: !779, file: !3, line: 401, column: 6)
!803 = !DILocation(line: 401, column: 26, scope: !802)
!804 = !DILocation(line: 401, column: 29, scope: !802)
!805 = !DILocation(line: 401, column: 6, scope: !802)
!806 = !DILocation(line: 401, column: 6, scope: !779)
!807 = !DILocation(line: 402, column: 3, scope: !802)
!808 = !DILocation(line: 403, column: 6, scope: !779)
!809 = !DILocation(line: 403, column: 2, scope: !779)
!810 = !DILocation(line: 403, column: 13, scope: !779)
!811 = !DILocation(line: 404, column: 20, scope: !779)
!812 = !DILocation(line: 404, column: 25, scope: !779)
!813 = !DILocation(line: 404, column: 9, scope: !779)
!814 = !DILocation(line: 404, column: 2, scope: !779)
!815 = !DILocation(line: 405, column: 1, scope: !779)
!816 = distinct !DISubprogram(name: "copy_from_user", scope: !817, file: !817, line: 180, type: !818, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !822)
!817 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!818 = !DISubroutineType(types: !819)
!819 = !{!16, !14, !820, !16}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!822 = !{!823, !824, !825}
!823 = !DILocalVariable(name: "to", arg: 1, scope: !816, file: !817, line: 180, type: !14)
!824 = !DILocalVariable(name: "from", arg: 2, scope: !816, file: !817, line: 180, type: !820)
!825 = !DILocalVariable(name: "n", arg: 3, scope: !816, file: !817, line: 180, type: !16)
!826 = !DILocation(line: 180, column: 22, scope: !816)
!827 = !DILocation(line: 180, column: 45, scope: !816)
!828 = !DILocation(line: 180, column: 65, scope: !816)
!829 = !DILocation(line: 182, column: 22, scope: !830)
!830 = distinct !DILexicalBlock(scope: !816, file: !817, line: 182, column: 6)
!831 = !DILocation(line: 182, column: 26, scope: !830)
!832 = !DILocation(line: 182, column: 6, scope: !830)
!833 = !DILocation(line: 182, column: 6, scope: !816)
!834 = !DILocation(line: 183, column: 23, scope: !830)
!835 = !DILocation(line: 183, column: 27, scope: !830)
!836 = !DILocation(line: 183, column: 33, scope: !830)
!837 = !DILocation(line: 183, column: 7, scope: !830)
!838 = !DILocation(line: 183, column: 5, scope: !830)
!839 = !DILocation(line: 183, column: 3, scope: !830)
!840 = !DILocation(line: 184, column: 9, scope: !816)
!841 = !DILocation(line: 184, column: 2, scope: !816)
!842 = distinct !DISubprogram(name: "kstrtoull_from_user", scope: !3, file: !3, line: 422, type: !843, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!12, !96, !160, !7, !31}
!845 = !{!846, !847, !848, !849, !850, !854, !856}
!846 = !DILocalVariable(name: "s", arg: 1, scope: !842, file: !3, line: 422, type: !96)
!847 = !DILocalVariable(name: "count", arg: 2, scope: !842, file: !3, line: 422, type: !160)
!848 = !DILocalVariable(name: "base", arg: 3, scope: !842, file: !3, line: 422, type: !7)
!849 = !DILocalVariable(name: "res", arg: 4, scope: !842, file: !3, line: 422, type: !31)
!850 = !DILocalVariable(name: "buf", scope: !842, file: !3, line: 422, type: !851)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 536, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 67)
!854 = !DILocalVariable(name: "__UNIQUE_ID___x191", scope: !855, file: !3, line: 422, type: !160)
!855 = distinct !DILexicalBlock(scope: !842, file: !3, line: 422, column: 1)
!856 = !DILocalVariable(name: "__UNIQUE_ID___y192", scope: !855, file: !3, line: 422, type: !16)
!857 = !DILocation(line: 422, column: 1, scope: !842)
!858 = !DILocation(line: 422, column: 1, scope: !855)
!859 = !DILocation(line: 422, column: 1, scope: !860)
!860 = distinct !DILexicalBlock(scope: !842, file: !3, line: 422, column: 1)
!861 = distinct !DISubprogram(name: "kstrtoll_from_user", scope: !3, file: !3, line: 423, type: !862, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!12, !96, !160, !7, !33}
!864 = !{!865, !866, !867, !868, !869, !870, !872}
!865 = !DILocalVariable(name: "s", arg: 1, scope: !861, file: !3, line: 423, type: !96)
!866 = !DILocalVariable(name: "count", arg: 2, scope: !861, file: !3, line: 423, type: !160)
!867 = !DILocalVariable(name: "base", arg: 3, scope: !861, file: !3, line: 423, type: !7)
!868 = !DILocalVariable(name: "res", arg: 4, scope: !861, file: !3, line: 423, type: !33)
!869 = !DILocalVariable(name: "buf", scope: !861, file: !3, line: 423, type: !851)
!870 = !DILocalVariable(name: "__UNIQUE_ID___x194", scope: !871, file: !3, line: 423, type: !160)
!871 = distinct !DILexicalBlock(scope: !861, file: !3, line: 423, column: 1)
!872 = !DILocalVariable(name: "__UNIQUE_ID___y195", scope: !871, file: !3, line: 423, type: !16)
!873 = !DILocation(line: 423, column: 1, scope: !861)
!874 = !DILocation(line: 423, column: 1, scope: !871)
!875 = !DILocation(line: 423, column: 1, scope: !876)
!876 = distinct !DILexicalBlock(scope: !861, file: !3, line: 423, column: 1)
!877 = distinct !DISubprogram(name: "kstrtoul_from_user", scope: !3, file: !3, line: 424, type: !878, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!12, !96, !160, !7, !435}
!880 = !{!881, !882, !883, !884, !885, !886, !888}
!881 = !DILocalVariable(name: "s", arg: 1, scope: !877, file: !3, line: 424, type: !96)
!882 = !DILocalVariable(name: "count", arg: 2, scope: !877, file: !3, line: 424, type: !160)
!883 = !DILocalVariable(name: "base", arg: 3, scope: !877, file: !3, line: 424, type: !7)
!884 = !DILocalVariable(name: "res", arg: 4, scope: !877, file: !3, line: 424, type: !435)
!885 = !DILocalVariable(name: "buf", scope: !877, file: !3, line: 424, type: !851)
!886 = !DILocalVariable(name: "__UNIQUE_ID___x197", scope: !887, file: !3, line: 424, type: !160)
!887 = distinct !DILexicalBlock(scope: !877, file: !3, line: 424, column: 1)
!888 = !DILocalVariable(name: "__UNIQUE_ID___y198", scope: !887, file: !3, line: 424, type: !16)
!889 = !DILocation(line: 424, column: 1, scope: !877)
!890 = !DILocation(line: 424, column: 1, scope: !887)
!891 = !DILocation(line: 424, column: 1, scope: !892)
!892 = distinct !DILexicalBlock(scope: !877, file: !3, line: 424, column: 1)
!893 = distinct !DISubprogram(name: "kstrtoul", scope: !894, file: !894, line: 30, type: !433, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!894 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!895 = !{!896, !897, !898}
!896 = !DILocalVariable(name: "s", arg: 1, scope: !893, file: !894, line: 30, type: !96)
!897 = !DILocalVariable(name: "base", arg: 2, scope: !893, file: !894, line: 30, type: !7)
!898 = !DILocalVariable(name: "res", arg: 3, scope: !893, file: !894, line: 30, type: !435)
!899 = !DILocation(line: 30, column: 53, scope: !893)
!900 = !DILocation(line: 30, column: 69, scope: !893)
!901 = !DILocation(line: 30, column: 90, scope: !893)
!902 = !DILocation(line: 38, column: 20, scope: !903)
!903 = distinct !DILexicalBlock(scope: !893, file: !894, line: 36, column: 6)
!904 = !DILocation(line: 38, column: 23, scope: !903)
!905 = !DILocation(line: 38, column: 51, scope: !903)
!906 = !DILocation(line: 38, column: 10, scope: !903)
!907 = !DILocation(line: 38, column: 3, scope: !903)
!908 = distinct !DISubprogram(name: "kstrtol_from_user", scope: !3, file: !3, line: 425, type: !909, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!12, !96, !160, !7, !473}
!911 = !{!912, !913, !914, !915, !916, !917, !919}
!912 = !DILocalVariable(name: "s", arg: 1, scope: !908, file: !3, line: 425, type: !96)
!913 = !DILocalVariable(name: "count", arg: 2, scope: !908, file: !3, line: 425, type: !160)
!914 = !DILocalVariable(name: "base", arg: 3, scope: !908, file: !3, line: 425, type: !7)
!915 = !DILocalVariable(name: "res", arg: 4, scope: !908, file: !3, line: 425, type: !473)
!916 = !DILocalVariable(name: "buf", scope: !908, file: !3, line: 425, type: !851)
!917 = !DILocalVariable(name: "__UNIQUE_ID___x200", scope: !918, file: !3, line: 425, type: !160)
!918 = distinct !DILexicalBlock(scope: !908, file: !3, line: 425, column: 1)
!919 = !DILocalVariable(name: "__UNIQUE_ID___y201", scope: !918, file: !3, line: 425, type: !16)
!920 = !DILocation(line: 425, column: 1, scope: !908)
!921 = !DILocation(line: 425, column: 1, scope: !918)
!922 = !DILocation(line: 425, column: 1, scope: !923)
!923 = distinct !DILexicalBlock(scope: !908, file: !3, line: 425, column: 1)
!924 = distinct !DISubprogram(name: "kstrtol", scope: !894, file: !894, line: 58, type: !471, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(name: "s", arg: 1, scope: !924, file: !894, line: 58, type: !96)
!927 = !DILocalVariable(name: "base", arg: 2, scope: !924, file: !894, line: 58, type: !7)
!928 = !DILocalVariable(name: "res", arg: 3, scope: !924, file: !894, line: 58, type: !473)
!929 = !DILocation(line: 58, column: 52, scope: !924)
!930 = !DILocation(line: 58, column: 68, scope: !924)
!931 = !DILocation(line: 58, column: 80, scope: !924)
!932 = !DILocation(line: 66, column: 19, scope: !933)
!933 = distinct !DILexicalBlock(scope: !924, file: !894, line: 64, column: 6)
!934 = !DILocation(line: 66, column: 22, scope: !933)
!935 = !DILocation(line: 66, column: 41, scope: !933)
!936 = !DILocation(line: 66, column: 10, scope: !933)
!937 = !DILocation(line: 66, column: 3, scope: !933)
!938 = distinct !DISubprogram(name: "kstrtouint_from_user", scope: !3, file: !3, line: 426, type: !939, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!12, !96, !160, !7, !98}
!941 = !{!942, !943, !944, !945, !946, !950, !952}
!942 = !DILocalVariable(name: "s", arg: 1, scope: !938, file: !3, line: 426, type: !96)
!943 = !DILocalVariable(name: "count", arg: 2, scope: !938, file: !3, line: 426, type: !160)
!944 = !DILocalVariable(name: "base", arg: 3, scope: !938, file: !3, line: 426, type: !7)
!945 = !DILocalVariable(name: "res", arg: 4, scope: !938, file: !3, line: 426, type: !98)
!946 = !DILocalVariable(name: "buf", scope: !938, file: !3, line: 426, type: !947)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 280, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 35)
!950 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !951, file: !3, line: 426, type: !160)
!951 = distinct !DILexicalBlock(scope: !938, file: !3, line: 426, column: 1)
!952 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !951, file: !3, line: 426, type: !16)
!953 = !DILocation(line: 426, column: 1, scope: !938)
!954 = !DILocation(line: 426, column: 1, scope: !951)
!955 = !DILocation(line: 426, column: 1, scope: !956)
!956 = distinct !DILexicalBlock(scope: !938, file: !3, line: 426, column: 1)
!957 = distinct !DISubprogram(name: "kstrtoint_from_user", scope: !3, file: !3, line: 427, type: !958, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{!12, !96, !160, !7, !549}
!960 = !{!961, !962, !963, !964, !965, !966, !968}
!961 = !DILocalVariable(name: "s", arg: 1, scope: !957, file: !3, line: 427, type: !96)
!962 = !DILocalVariable(name: "count", arg: 2, scope: !957, file: !3, line: 427, type: !160)
!963 = !DILocalVariable(name: "base", arg: 3, scope: !957, file: !3, line: 427, type: !7)
!964 = !DILocalVariable(name: "res", arg: 4, scope: !957, file: !3, line: 427, type: !549)
!965 = !DILocalVariable(name: "buf", scope: !957, file: !3, line: 427, type: !947)
!966 = !DILocalVariable(name: "__UNIQUE_ID___x206", scope: !967, file: !3, line: 427, type: !160)
!967 = distinct !DILexicalBlock(scope: !957, file: !3, line: 427, column: 1)
!968 = !DILocalVariable(name: "__UNIQUE_ID___y207", scope: !967, file: !3, line: 427, type: !16)
!969 = !DILocation(line: 427, column: 1, scope: !957)
!970 = !DILocation(line: 427, column: 1, scope: !967)
!971 = !DILocation(line: 427, column: 1, scope: !972)
!972 = distinct !DILexicalBlock(scope: !957, file: !3, line: 427, column: 1)
!973 = distinct !DISubprogram(name: "kstrtou16_from_user", scope: !3, file: !3, line: 428, type: !974, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!12, !96, !160, !7, !588}
!976 = !{!977, !978, !979, !980, !981, !985, !987}
!977 = !DILocalVariable(name: "s", arg: 1, scope: !973, file: !3, line: 428, type: !96)
!978 = !DILocalVariable(name: "count", arg: 2, scope: !973, file: !3, line: 428, type: !160)
!979 = !DILocalVariable(name: "base", arg: 3, scope: !973, file: !3, line: 428, type: !7)
!980 = !DILocalVariable(name: "res", arg: 4, scope: !973, file: !3, line: 428, type: !588)
!981 = !DILocalVariable(name: "buf", scope: !973, file: !3, line: 428, type: !982)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 152, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 19)
!985 = !DILocalVariable(name: "__UNIQUE_ID___x209", scope: !986, file: !3, line: 428, type: !160)
!986 = distinct !DILexicalBlock(scope: !973, file: !3, line: 428, column: 1)
!987 = !DILocalVariable(name: "__UNIQUE_ID___y210", scope: !986, file: !3, line: 428, type: !16)
!988 = !DILocation(line: 428, column: 1, scope: !973)
!989 = !DILocation(line: 428, column: 1, scope: !986)
!990 = !DILocation(line: 428, column: 1, scope: !991)
!991 = distinct !DILexicalBlock(scope: !973, file: !3, line: 428, column: 1)
!992 = distinct !DISubprogram(name: "kstrtos16_from_user", scope: !3, file: !3, line: 429, type: !993, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!12, !96, !160, !7, !627}
!995 = !{!996, !997, !998, !999, !1000, !1001, !1003}
!996 = !DILocalVariable(name: "s", arg: 1, scope: !992, file: !3, line: 429, type: !96)
!997 = !DILocalVariable(name: "count", arg: 2, scope: !992, file: !3, line: 429, type: !160)
!998 = !DILocalVariable(name: "base", arg: 3, scope: !992, file: !3, line: 429, type: !7)
!999 = !DILocalVariable(name: "res", arg: 4, scope: !992, file: !3, line: 429, type: !627)
!1000 = !DILocalVariable(name: "buf", scope: !992, file: !3, line: 429, type: !982)
!1001 = !DILocalVariable(name: "__UNIQUE_ID___x212", scope: !1002, file: !3, line: 429, type: !160)
!1002 = distinct !DILexicalBlock(scope: !992, file: !3, line: 429, column: 1)
!1003 = !DILocalVariable(name: "__UNIQUE_ID___y213", scope: !1002, file: !3, line: 429, type: !16)
!1004 = !DILocation(line: 429, column: 1, scope: !992)
!1005 = !DILocation(line: 429, column: 1, scope: !1002)
!1006 = !DILocation(line: 429, column: 1, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !992, file: !3, line: 429, column: 1)
!1008 = distinct !DISubprogram(name: "kstrtou8_from_user", scope: !3, file: !3, line: 430, type: !1009, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!12, !96, !160, !7, !666}
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1020, !1022}
!1012 = !DILocalVariable(name: "s", arg: 1, scope: !1008, file: !3, line: 430, type: !96)
!1013 = !DILocalVariable(name: "count", arg: 2, scope: !1008, file: !3, line: 430, type: !160)
!1014 = !DILocalVariable(name: "base", arg: 3, scope: !1008, file: !3, line: 430, type: !7)
!1015 = !DILocalVariable(name: "res", arg: 4, scope: !1008, file: !3, line: 430, type: !666)
!1016 = !DILocalVariable(name: "buf", scope: !1008, file: !3, line: 430, type: !1017)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 88, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 11)
!1020 = !DILocalVariable(name: "__UNIQUE_ID___x215", scope: !1021, file: !3, line: 430, type: !160)
!1021 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 430, column: 1)
!1022 = !DILocalVariable(name: "__UNIQUE_ID___y216", scope: !1021, file: !3, line: 430, type: !16)
!1023 = !DILocation(line: 430, column: 1, scope: !1008)
!1024 = !DILocation(line: 430, column: 1, scope: !1021)
!1025 = !DILocation(line: 430, column: 1, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 430, column: 1)
!1027 = distinct !DISubprogram(name: "kstrtos8_from_user", scope: !3, file: !3, line: 431, type: !1028, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!12, !96, !160, !7, !705}
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1038}
!1031 = !DILocalVariable(name: "s", arg: 1, scope: !1027, file: !3, line: 431, type: !96)
!1032 = !DILocalVariable(name: "count", arg: 2, scope: !1027, file: !3, line: 431, type: !160)
!1033 = !DILocalVariable(name: "base", arg: 3, scope: !1027, file: !3, line: 431, type: !7)
!1034 = !DILocalVariable(name: "res", arg: 4, scope: !1027, file: !3, line: 431, type: !705)
!1035 = !DILocalVariable(name: "buf", scope: !1027, file: !3, line: 431, type: !1017)
!1036 = !DILocalVariable(name: "__UNIQUE_ID___x218", scope: !1037, file: !3, line: 431, type: !160)
!1037 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 431, column: 1)
!1038 = !DILocalVariable(name: "__UNIQUE_ID___y219", scope: !1037, file: !3, line: 431, type: !16)
!1039 = !DILocation(line: 431, column: 1, scope: !1027)
!1040 = !DILocation(line: 431, column: 1, scope: !1037)
!1041 = !DILocation(line: 431, column: 1, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 431, column: 1)
!1043 = distinct !DISubprogram(name: "div_u64_rem", scope: !262, file: !262, line: 26, type: !1044, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!265, !265, !267, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1047 = !{!1048, !1049, !1050}
!1048 = !DILocalVariable(name: "dividend", arg: 1, scope: !1043, file: !262, line: 26, type: !265)
!1049 = !DILocalVariable(name: "divisor", arg: 2, scope: !1043, file: !262, line: 26, type: !267)
!1050 = !DILocalVariable(name: "remainder", arg: 3, scope: !1043, file: !262, line: 26, type: !1046)
!1051 = !DILocation(line: 26, column: 35, scope: !1043)
!1052 = !DILocation(line: 26, column: 49, scope: !1043)
!1053 = !DILocation(line: 26, column: 63, scope: !1043)
!1054 = !DILocation(line: 28, column: 15, scope: !1043)
!1055 = !DILocation(line: 28, column: 26, scope: !1043)
!1056 = !DILocation(line: 28, column: 24, scope: !1043)
!1057 = !DILocation(line: 28, column: 3, scope: !1043)
!1058 = !DILocation(line: 28, column: 13, scope: !1043)
!1059 = !DILocation(line: 29, column: 9, scope: !1043)
!1060 = !DILocation(line: 29, column: 20, scope: !1043)
!1061 = !DILocation(line: 29, column: 18, scope: !1043)
!1062 = !DILocation(line: 29, column: 2, scope: !1043)
!1063 = distinct !DISubprogram(name: "check_copy_size", scope: !79, file: !79, line: 237, type: !1064, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1066)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!745, !820, !160, !745}
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1074}
!1067 = !DILocalVariable(name: "addr", arg: 1, scope: !1063, file: !79, line: 237, type: !820)
!1068 = !DILocalVariable(name: "bytes", arg: 2, scope: !1063, file: !79, line: 237, type: !160)
!1069 = !DILocalVariable(name: "is_source", arg: 3, scope: !1063, file: !79, line: 237, type: !745)
!1070 = !DILocalVariable(name: "sz", scope: !1063, file: !79, line: 239, type: !12)
!1071 = !DILocalVariable(name: "__ret_warn_on", scope: !1072, file: !79, line: 249, type: !12)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !79, line: 249, column: 6)
!1073 = distinct !DILexicalBlock(scope: !1063, file: !79, line: 249, column: 6)
!1074 = !DILocalVariable(name: "__flags", scope: !1075, file: !79, line: 249, type: !12)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !79, line: 249, column: 6)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !79, line: 249, column: 6)
!1077 = !DILocation(line: 237, column: 29, scope: !1063)
!1078 = !DILocation(line: 237, column: 42, scope: !1063)
!1079 = !DILocation(line: 237, column: 54, scope: !1063)
!1080 = !DILocation(line: 239, column: 2, scope: !1063)
!1081 = !DILocation(line: 239, column: 6, scope: !1063)
!1082 = !DILocation(line: 239, column: 33, scope: !1063)
!1083 = !DILocation(line: 239, column: 11, scope: !1063)
!1084 = !DILocation(line: 240, column: 6, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1063, file: !79, line: 240, column: 6)
!1086 = !DILocation(line: 0, scope: !1085)
!1087 = !DILocation(line: 240, column: 6, scope: !1063)
!1088 = !DILocation(line: 241, column: 29, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !79, line: 241, column: 7)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !79, line: 240, column: 39)
!1091 = !DILocation(line: 241, column: 8, scope: !1089)
!1092 = !DILocation(line: 241, column: 7, scope: !1090)
!1093 = !DILocation(line: 242, column: 18, scope: !1089)
!1094 = !DILocation(line: 242, column: 22, scope: !1089)
!1095 = !DILocation(line: 242, column: 4, scope: !1089)
!1096 = !DILocation(line: 243, column: 12, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1089, file: !79, line: 243, column: 12)
!1098 = !{i8 0, i8 2}
!1099 = !{}
!1100 = !DILocation(line: 243, column: 12, scope: !1089)
!1101 = !DILocation(line: 244, column: 4, scope: !1097)
!1102 = !{i32 1649663}
!1103 = !DILocation(line: 246, column: 4, scope: !1097)
!1104 = !{i32 1649692}
!1105 = !DILocation(line: 247, column: 3, scope: !1090)
!1106 = !DILocation(line: 249, column: 6, scope: !1072)
!1107 = !DILocation(line: 249, column: 6, scope: !1076)
!1108 = !DILocation(line: 249, column: 6, scope: !1075)
!1109 = !DILocation(line: 249, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1075, file: !79, line: 249, column: 6)
!1111 = !DILocation(line: 249, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1075, file: !79, line: 249, column: 6)
!1113 = !{i64 2149596337, i64 2149596366, i64 2149596412, i64 2149596470, i64 2149596524, i64 2149596578, i64 2149596633, i64 2149596664, i64 2149596972, i64 2149596978, i64 2149597025, i64 2149597048, i64 2149597074}
!1114 = !DILocation(line: 249, column: 6, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1075, file: !79, line: 249, column: 6)
!1116 = !DILocation(line: 249, column: 6, scope: !1073)
!1117 = !DILocation(line: 249, column: 6, scope: !1063)
!1118 = !DILocation(line: 250, column: 3, scope: !1073)
!1119 = !DILocation(line: 251, column: 20, scope: !1063)
!1120 = !DILocation(line: 251, column: 26, scope: !1063)
!1121 = !DILocation(line: 251, column: 33, scope: !1063)
!1122 = !DILocation(line: 251, column: 2, scope: !1063)
!1123 = !DILocation(line: 252, column: 2, scope: !1063)
!1124 = !DILocation(line: 253, column: 1, scope: !1063)
!1125 = !DISubprogram(name: "_copy_from_user", scope: !817, file: !817, line: 158, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = distinct !DISubprogram(name: "copy_overflow", scope: !79, file: !79, line: 230, type: !1127, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !12, !16}
!1129 = !{!1130, !1131}
!1130 = !DILocalVariable(name: "size", arg: 1, scope: !1126, file: !79, line: 230, type: !12)
!1131 = !DILocalVariable(name: "count", arg: 2, scope: !1126, file: !79, line: 230, type: !16)
!1132 = !DILocation(line: 230, column: 38, scope: !1126)
!1133 = !DILocation(line: 230, column: 58, scope: !1126)
!1134 = !DILocation(line: 233, column: 19, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1126, file: !79, line: 232, column: 6)
!1136 = !DILocation(line: 233, column: 25, scope: !1135)
!1137 = !DILocation(line: 233, column: 3, scope: !1135)
!1138 = !DILocation(line: 234, column: 1, scope: !1126)
!1139 = !DISubprogram(name: "__bad_copy_from", scope: !79, file: !79, line: 224, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null}
!1142 = !DISubprogram(name: "__bad_copy_to", scope: !79, file: !79, line: 226, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = distinct !DISubprogram(name: "check_object_size", scope: !79, file: !79, line: 218, type: !1144, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !820, !16, !745}
!1146 = !{!1147, !1148, !1149}
!1147 = !DILocalVariable(name: "ptr", arg: 1, scope: !1143, file: !79, line: 218, type: !820)
!1148 = !DILocalVariable(name: "n", arg: 2, scope: !1143, file: !79, line: 218, type: !16)
!1149 = !DILocalVariable(name: "to_user", arg: 3, scope: !1143, file: !79, line: 219, type: !745)
!1150 = !DILocation(line: 218, column: 50, scope: !1143)
!1151 = !DILocation(line: 218, column: 69, scope: !1143)
!1152 = !DILocation(line: 219, column: 15, scope: !1143)
!1153 = !DILocation(line: 220, column: 3, scope: !1143)
!1154 = !DISubprogram(name: "__copy_overflow", scope: !79, file: !79, line: 228, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
