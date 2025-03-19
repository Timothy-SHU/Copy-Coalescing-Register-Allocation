; ModuleID = 'arch/x86/lib/iomem.c'
source_filename = "arch/x86/lib/iomem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memcpy_fromio: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memcpy_fromio ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memcpy_toio: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memcpy_toio ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memset_io: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memset_io ; .previous"

@__UNIQUE_ID___addressable_memcpy_fromio195 = internal global ptr @memcpy_fromio, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_memcpy_toio196 = internal global ptr @memcpy_toio, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable_memset_io197 = internal global ptr @memset_io, section ".discard.addressable", align 8, !dbg !33
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_memcpy_fromio195, ptr @__UNIQUE_ID___addressable_memcpy_toio196, ptr @__UNIQUE_ID___addressable_memset_io197], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @memcpy_fromio(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !44 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !56, metadata !DIExpression()), !dbg !59
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !57, metadata !DIExpression()), !dbg !60
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !58, metadata !DIExpression()), !dbg !61
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #7, !dbg !62
  br i1 %call, label %if.then, label %if.else, !dbg !64

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %to.addr, align 8, !dbg !65
  %1 = load ptr, ptr %from.addr, align 8, !dbg !66
  %2 = load i64, ptr %n.addr, align 8, !dbg !67
  call void @unrolled_memcpy_fromio(ptr noundef %0, ptr noundef %1, i64 noundef %2) #7, !dbg !68
  br label %if.end, !dbg !68

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %to.addr, align 8, !dbg !69
  %4 = load ptr, ptr %from.addr, align 8, !dbg !70
  %5 = load i64, ptr %n.addr, align 8, !dbg !71
  call void @string_memcpy_fromio(ptr noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !72
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #2 align 16 !dbg !74 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !80, metadata !DIExpression()), !dbg !81
  ret i1 false, !dbg !82
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unrolled_memcpy_fromio(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !83 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !85, metadata !DIExpression()), !dbg !97
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !86, metadata !DIExpression()), !dbg !98
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !87, metadata !DIExpression()), !dbg !99
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %in, metadata !88, metadata !DIExpression()), !dbg !101
  %0 = load ptr, ptr %from.addr, align 8, !dbg !102
  store ptr %0, ptr %in, align 8, !dbg !101
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #8, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %out, metadata !93, metadata !DIExpression()), !dbg !104
  %1 = load ptr, ptr %to.addr, align 8, !dbg !105
  store ptr %1, ptr %out, align 8, !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %i, metadata !95, metadata !DIExpression()), !dbg !107
  store i32 0, ptr %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !111
  %conv = sext i32 %2 to i64, !dbg !111
  %3 = load i64, ptr %n.addr, align 8, !dbg !113
  %cmp = icmp ult i64 %conv, %3, !dbg !114
  br i1 %cmp, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %in, align 8, !dbg !116
  %5 = load i32, ptr %i, align 4, !dbg !117
  %idxprom = sext i32 %5 to i64, !dbg !116
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !116
  %call = call zeroext i8 @readb(ptr noundef %arrayidx) #7, !dbg !118
  %6 = load ptr, ptr %out, align 8, !dbg !119
  %7 = load i32, ptr %i, align 4, !dbg !120
  %idxprom2 = sext i32 %7 to i64, !dbg !119
  %arrayidx3 = getelementptr i8, ptr %6, i64 %idxprom2, !dbg !119
  store i8 %call, ptr %arrayidx3, align 1, !dbg !121
  br label %for.inc, !dbg !119

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !122
  %inc = add i32 %8, 1, !dbg !122
  store i32 %inc, ptr %i, align 4, !dbg !122
  br label %for.cond, !dbg !123, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !128
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #8, !dbg !128
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #8, !dbg !128
  ret void, !dbg !128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @string_memcpy_fromio(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !129 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %orig_to = alloca ptr, align 8
  %orig_n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !131, metadata !DIExpression()), !dbg !137
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !132, metadata !DIExpression()), !dbg !138
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !133, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_to) #8, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %orig_to, metadata !134, metadata !DIExpression()), !dbg !141
  %0 = load ptr, ptr %to.addr, align 8, !dbg !142
  store ptr %0, ptr %orig_to, align 8, !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_n) #8, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %orig_n, metadata !135, metadata !DIExpression()), !dbg !144
  %1 = load i64, ptr %n.addr, align 8, !dbg !145
  store i64 %1, ptr %orig_n, align 8, !dbg !144
  %2 = load i64, ptr %n.addr, align 8, !dbg !146
  %tobool = icmp ne i64 %2, 0, !dbg !146
  %lnot = xor i1 %tobool, true, !dbg !146
  %lnot1 = xor i1 %lnot, true, !dbg !146
  %lnot2 = xor i1 %lnot1, true, !dbg !146
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !146
  %conv = sext i32 %lnot.ext to i64, !dbg !146
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !146
  %tobool3 = icmp ne i64 %expval, 0, !dbg !146
  br i1 %tobool3, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %from.addr, align 8, !dbg !150
  %4 = ptrtoint ptr %3 to i64, !dbg !150
  %and = and i64 1, %4, !dbg !150
  %tobool4 = icmp ne i64 %and, 0, !dbg !150
  %lnot5 = xor i1 %tobool4, true, !dbg !150
  %lnot7 = xor i1 %lnot5, true, !dbg !150
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !150
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !150
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !150
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !150
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !152

if.then12:                                        ; preds = %if.end
  %5 = load ptr, ptr %to.addr, align 8, !dbg !153
  %6 = load ptr, ptr %from.addr, align 8, !dbg !153
  %7 = call { ptr, ptr } asm sideeffect "movsb", "=&{di},=&{si},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %5, ptr %6) #8, !dbg !153, !srcloc !155
  %asmresult = extractvalue { ptr, ptr } %7, 0, !dbg !153
  %asmresult13 = extractvalue { ptr, ptr } %7, 1, !dbg !153
  store ptr %asmresult, ptr %to.addr, align 8, !dbg !153
  store ptr %asmresult13, ptr %from.addr, align 8, !dbg !153
  %8 = load i64, ptr %n.addr, align 8, !dbg !156
  %dec = add i64 %8, -1, !dbg !156
  store i64 %dec, ptr %n.addr, align 8, !dbg !156
  br label %if.end14, !dbg !157

if.end14:                                         ; preds = %if.then12, %if.end
  %9 = load i64, ptr %n.addr, align 8, !dbg !158
  %cmp = icmp ugt i64 %9, 1, !dbg !160
  br i1 %cmp, label %land.lhs.true, label %if.end28, !dbg !161

land.lhs.true:                                    ; preds = %if.end14
  %10 = load ptr, ptr %from.addr, align 8, !dbg !162
  %11 = ptrtoint ptr %10 to i64, !dbg !162
  %and16 = and i64 2, %11, !dbg !162
  %tobool17 = icmp ne i64 %and16, 0, !dbg !162
  %lnot18 = xor i1 %tobool17, true, !dbg !162
  %lnot20 = xor i1 %lnot18, true, !dbg !162
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !162
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !162
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !162
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !162
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !163

if.then25:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %to.addr, align 8, !dbg !164
  %13 = load ptr, ptr %from.addr, align 8, !dbg !164
  %14 = call { ptr, ptr } asm sideeffect "movsw", "=&{di},=&{si},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %12, ptr %13) #8, !dbg !164, !srcloc !166
  %asmresult26 = extractvalue { ptr, ptr } %14, 0, !dbg !164
  %asmresult27 = extractvalue { ptr, ptr } %14, 1, !dbg !164
  store ptr %asmresult26, ptr %to.addr, align 8, !dbg !164
  store ptr %asmresult27, ptr %from.addr, align 8, !dbg !164
  %15 = load i64, ptr %n.addr, align 8, !dbg !167
  %sub = sub i64 %15, 2, !dbg !167
  store i64 %sub, ptr %n.addr, align 8, !dbg !167
  br label %if.end28, !dbg !168

if.end28:                                         ; preds = %if.then25, %land.lhs.true, %if.end14
  %16 = load ptr, ptr %to.addr, align 8, !dbg !169
  %17 = load ptr, ptr %from.addr, align 8, !dbg !170
  %18 = load i64, ptr %n.addr, align 8, !dbg !171
  call void @rep_movs(ptr noundef %16, ptr noundef %17, i64 noundef %18) #7, !dbg !172
  %19 = load ptr, ptr %orig_to, align 8, !dbg !173
  %20 = load i64, ptr %orig_n, align 8, !dbg !174
  call void @kmsan_unpoison_memory(ptr noundef %19, i64 noundef %20) #7, !dbg !175
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !176
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_n) #8, !dbg !176
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_to) #8, !dbg !176
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !176

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @memcpy_toio(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !177 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !182, metadata !DIExpression()), !dbg !185
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !183, metadata !DIExpression()), !dbg !186
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !184, metadata !DIExpression()), !dbg !187
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #7, !dbg !188
  br i1 %call, label %if.then, label %if.else, !dbg !190

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %to.addr, align 8, !dbg !191
  %1 = load ptr, ptr %from.addr, align 8, !dbg !192
  %2 = load i64, ptr %n.addr, align 8, !dbg !193
  call void @unrolled_memcpy_toio(ptr noundef %0, ptr noundef %1, i64 noundef %2) #7, !dbg !194
  br label %if.end, !dbg !194

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %to.addr, align 8, !dbg !195
  %4 = load ptr, ptr %from.addr, align 8, !dbg !196
  %5 = load i64, ptr %n.addr, align 8, !dbg !197
  call void @string_memcpy_toio(ptr noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !198
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unrolled_memcpy_toio(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !200 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %out = alloca ptr, align 8
  %in = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !202, metadata !DIExpression()), !dbg !211
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !203, metadata !DIExpression()), !dbg !212
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !204, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #8, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %out, metadata !205, metadata !DIExpression()), !dbg !215
  %0 = load ptr, ptr %to.addr, align 8, !dbg !216
  store ptr %0, ptr %out, align 8, !dbg !215
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #8, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %in, metadata !207, metadata !DIExpression()), !dbg !218
  %1 = load ptr, ptr %from.addr, align 8, !dbg !219
  store ptr %1, ptr %in, align 8, !dbg !218
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %i, metadata !210, metadata !DIExpression()), !dbg !221
  store i32 0, ptr %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !225
  %conv = sext i32 %2 to i64, !dbg !225
  %3 = load i64, ptr %n.addr, align 8, !dbg !227
  %cmp = icmp ult i64 %conv, %3, !dbg !228
  br i1 %cmp, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %in, align 8, !dbg !230
  %5 = load i32, ptr %i, align 4, !dbg !231
  %idxprom = sext i32 %5 to i64, !dbg !230
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !230
  %6 = load i8, ptr %arrayidx, align 1, !dbg !230
  %7 = load ptr, ptr %out, align 8, !dbg !232
  %8 = load i32, ptr %i, align 4, !dbg !233
  %idxprom2 = sext i32 %8 to i64, !dbg !232
  %arrayidx3 = getelementptr i8, ptr %7, i64 %idxprom2, !dbg !232
  call void @writeb(i8 noundef zeroext %6, ptr noundef %arrayidx3) #7, !dbg !234
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !235
  %inc = add i32 %9, 1, !dbg !235
  store i32 %inc, ptr %i, align 4, !dbg !235
  br label %for.cond, !dbg !236, !llvm.loop !237

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #8, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #8, !dbg !239
  ret void, !dbg !239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @string_memcpy_toio(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !240 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !242, metadata !DIExpression()), !dbg !245
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !243, metadata !DIExpression()), !dbg !246
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !244, metadata !DIExpression()), !dbg !247
  %0 = load i64, ptr %n.addr, align 8, !dbg !248
  %tobool = icmp ne i64 %0, 0, !dbg !248
  %lnot = xor i1 %tobool, true, !dbg !248
  %lnot1 = xor i1 %lnot, true, !dbg !248
  %lnot2 = xor i1 %lnot1, true, !dbg !248
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !248
  %conv = sext i32 %lnot.ext to i64, !dbg !248
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !248
  %tobool3 = icmp ne i64 %expval, 0, !dbg !248
  br i1 %tobool3, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  br label %return, !dbg !251

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8, !dbg !252
  %2 = load i64, ptr %n.addr, align 8, !dbg !253
  call void @kmsan_check_memory(ptr noundef %1, i64 noundef %2) #7, !dbg !254
  %3 = load ptr, ptr %to.addr, align 8, !dbg !255
  %4 = ptrtoint ptr %3 to i64, !dbg !255
  %and = and i64 1, %4, !dbg !255
  %tobool4 = icmp ne i64 %and, 0, !dbg !255
  %lnot5 = xor i1 %tobool4, true, !dbg !255
  %lnot7 = xor i1 %lnot5, true, !dbg !255
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !255
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !255
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !255
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !255
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !257

if.then12:                                        ; preds = %if.end
  %5 = load ptr, ptr %to.addr, align 8, !dbg !258
  %6 = load ptr, ptr %from.addr, align 8, !dbg !258
  %7 = call { ptr, ptr } asm sideeffect "movsb", "=&{di},=&{si},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %5, ptr %6) #8, !dbg !258, !srcloc !260
  %asmresult = extractvalue { ptr, ptr } %7, 0, !dbg !258
  %asmresult13 = extractvalue { ptr, ptr } %7, 1, !dbg !258
  store ptr %asmresult, ptr %to.addr, align 8, !dbg !258
  store ptr %asmresult13, ptr %from.addr, align 8, !dbg !258
  %8 = load i64, ptr %n.addr, align 8, !dbg !261
  %dec = add i64 %8, -1, !dbg !261
  store i64 %dec, ptr %n.addr, align 8, !dbg !261
  br label %if.end14, !dbg !262

if.end14:                                         ; preds = %if.then12, %if.end
  %9 = load i64, ptr %n.addr, align 8, !dbg !263
  %cmp = icmp ugt i64 %9, 1, !dbg !265
  br i1 %cmp, label %land.lhs.true, label %if.end28, !dbg !266

land.lhs.true:                                    ; preds = %if.end14
  %10 = load ptr, ptr %to.addr, align 8, !dbg !267
  %11 = ptrtoint ptr %10 to i64, !dbg !267
  %and16 = and i64 2, %11, !dbg !267
  %tobool17 = icmp ne i64 %and16, 0, !dbg !267
  %lnot18 = xor i1 %tobool17, true, !dbg !267
  %lnot20 = xor i1 %lnot18, true, !dbg !267
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !267
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !267
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !267
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !267
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !268

if.then25:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %to.addr, align 8, !dbg !269
  %13 = load ptr, ptr %from.addr, align 8, !dbg !269
  %14 = call { ptr, ptr } asm sideeffect "movsw", "=&{di},=&{si},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %12, ptr %13) #8, !dbg !269, !srcloc !271
  %asmresult26 = extractvalue { ptr, ptr } %14, 0, !dbg !269
  %asmresult27 = extractvalue { ptr, ptr } %14, 1, !dbg !269
  store ptr %asmresult26, ptr %to.addr, align 8, !dbg !269
  store ptr %asmresult27, ptr %from.addr, align 8, !dbg !269
  %15 = load i64, ptr %n.addr, align 8, !dbg !272
  %sub = sub i64 %15, 2, !dbg !272
  store i64 %sub, ptr %n.addr, align 8, !dbg !272
  br label %if.end28, !dbg !273

if.end28:                                         ; preds = %if.then25, %land.lhs.true, %if.end14
  %16 = load ptr, ptr %to.addr, align 8, !dbg !274
  %17 = load ptr, ptr %from.addr, align 8, !dbg !275
  %18 = load i64, ptr %n.addr, align 8, !dbg !276
  call void @rep_movs(ptr noundef %16, ptr noundef %17, i64 noundef %18) #7, !dbg !277
  br label %return, !dbg !278

return:                                           ; preds = %if.end28, %if.then
  ret void, !dbg !278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @memset_io(ptr noundef %a, i32 noundef %b, i64 noundef %c) #0 align 16 !dbg !279 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  %c.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !283, metadata !DIExpression()), !dbg !286
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !284, metadata !DIExpression()), !dbg !287
  store i64 %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !285, metadata !DIExpression()), !dbg !288
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #7, !dbg !289
  br i1 %call, label %if.then, label %if.else, !dbg !291

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %a.addr, align 8, !dbg !292
  %1 = load i32, ptr %b.addr, align 4, !dbg !294
  %2 = load i64, ptr %c.addr, align 8, !dbg !295
  call void @unrolled_memset_io(ptr noundef %0, i32 noundef %1, i64 noundef %2) #7, !dbg !296
  br label %if.end, !dbg !297

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !dbg !298
  %4 = load i32, ptr %b.addr, align 4, !dbg !300
  %5 = trunc i32 %4 to i8, !dbg !301
  %6 = load i64, ptr %c.addr, align 8, !dbg !302
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 %5, i64 %6, i1 false), !dbg !301
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unrolled_memset_io(ptr noundef %a, i32 noundef %b, i64 noundef %c) #0 align 16 !dbg !304 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  %c.addr = alloca i64, align 8
  %mem = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !306, metadata !DIExpression()), !dbg !311
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !307, metadata !DIExpression()), !dbg !312
  store i64 %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !308, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !309, metadata !DIExpression()), !dbg !315
  %0 = load ptr, ptr %a.addr, align 8, !dbg !316
  store ptr %0, ptr %mem, align 8, !dbg !315
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %i, metadata !310, metadata !DIExpression()), !dbg !318
  store i32 0, ptr %i, align 4, !dbg !319
  br label %for.cond, !dbg !321

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !322
  %conv = sext i32 %1 to i64, !dbg !322
  %2 = load i64, ptr %c.addr, align 8, !dbg !324
  %cmp = icmp ult i64 %conv, %2, !dbg !325
  br i1 %cmp, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %b.addr, align 4, !dbg !327
  %conv2 = trunc i32 %3 to i8, !dbg !327
  %4 = load ptr, ptr %mem, align 8, !dbg !328
  %5 = load i32, ptr %i, align 4, !dbg !329
  %idxprom = sext i32 %5 to i64, !dbg !328
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !328
  call void @writeb(i8 noundef zeroext %conv2, ptr noundef %arrayidx) #7, !dbg !330
  br label %for.inc, !dbg !330

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !331
  %inc = add i32 %6, 1, !dbg !331
  store i32 %inc, ptr %i, align 4, !dbg !331
  br label %for.cond, !dbg !332, !llvm.loop !333

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !335
  ret void, !dbg !335
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #2 align 16 !dbg !336 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #8, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !343
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #8, !dbg !343, !srcloc !344
  store i8 %1, ptr %ret, align 1, !dbg !343
  %2 = load i8, ptr %ret, align 1, !dbg !343
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #8, !dbg !343
  ret i8 %2, !dbg !343
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_movs(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !345 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d0 = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !349, metadata !DIExpression()), !dbg !355
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !350, metadata !DIExpression()), !dbg !356
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !351, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 8, ptr %d0) #8, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %d0, metadata !352, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #8, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %d1, metadata !353, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %d2) #8, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %d2, metadata !354, metadata !DIExpression()), !dbg !361
  %0 = load i64, ptr %n.addr, align 8, !dbg !362
  %div = udiv i64 %0, 4, !dbg !363
  %1 = load i64, ptr %n.addr, align 8, !dbg !364
  %2 = load ptr, ptr %to.addr, align 8, !dbg !365
  %3 = ptrtoint ptr %2 to i64, !dbg !366
  %4 = load ptr, ptr %from.addr, align 8, !dbg !367
  %5 = ptrtoint ptr %4 to i64, !dbg !368
  %6 = call { i64, i64, i64 } asm sideeffect "rep ; movsl\0A\09testb $$2,${4:b}\0A\09je 1f\0A\09movsw\0A1:\09testb $$1,${4:b}\0A\09je 2f\0A\09movsb\0A2:", "=&{cx},=&{di},=&{si},0,q,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %div, i64 %1, i64 %3, i64 %5) #8, !dbg !369, !srcloc !370
  %asmresult = extractvalue { i64, i64, i64 } %6, 0, !dbg !369
  %asmresult1 = extractvalue { i64, i64, i64 } %6, 1, !dbg !369
  %asmresult2 = extractvalue { i64, i64, i64 } %6, 2, !dbg !369
  store i64 %asmresult, ptr %d0, align 8, !dbg !369
  store i64 %asmresult1, ptr %d1, align 8, !dbg !369
  store i64 %asmresult2, ptr %d2, align 8, !dbg !369
  call void @llvm.lifetime.end.p0(i64 8, ptr %d2) #8, !dbg !371
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #8, !dbg !371
  call void @llvm.lifetime.end.p0(i64 8, ptr %d0) #8, !dbg !371
  ret void, !dbg !371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #2 align 16 !dbg !372 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !377, metadata !DIExpression()), !dbg !379
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !378, metadata !DIExpression()), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeb(i8 noundef zeroext %val, ptr noundef %addr) #2 align 16 !dbg !382 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !386, metadata !DIExpression()), !dbg !388
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i8, ptr %val.addr, align 1, !dbg !388
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !388
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr elementtype(i8) %1) #8, !dbg !388, !srcloc !389
  ret void, !dbg !388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_check_memory(ptr noundef %address, i64 noundef %size) #2 align 16 !dbg !390 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !392, metadata !DIExpression()), !dbg !394
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !393, metadata !DIExpression()), !dbg !395
  ret void, !dbg !396
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memcpy_fromio195", scope: !2, file: !3, line: 103, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.iomem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/iomem\22 -D KBUILD_BASENAME=\22iomem\22 -D KBUILD_MODNAME=\22iomem\22 -D __KBUILD_MODNAME=kmod_iomem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/iomem.ll arch/x86/lib/iomem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/iomem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c60ff9c8cd174edce11befd777fc38b")
!4 = !{!5, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!10 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!11 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!12 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!13 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!14 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!15 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !{!22, !23, !26, !27, !29}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!29 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!30 = !{!0, !31, !33}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memcpy_toio196", scope: !2, file: !3, line: 112, type: !22, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memset_io197", scope: !2, file: !3, line: 126, type: !22, isLocal: true, isDefinition: true)
!35 = !{i32 7, !"Dwarf Version", i32 5}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 8, !"cf-protection-branch", i32 1}
!39 = !{i32 4, !"function_return_thunk_extern", i32 1}
!40 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!41 = !{i32 1, !"Code Model", i32 2}
!42 = !{i32 1, !"override-stack-alignment", i32 8}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = distinct !DISubprogram(name: "memcpy_fromio", scope: !3, file: !3, line: 96, type: !45, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !22, !47, !50}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 61, baseType: !52)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !53, line: 72, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !53, line: 16, baseType: !26)
!55 = !{!56, !57, !58}
!56 = !DILocalVariable(name: "to", arg: 1, scope: !44, file: !3, line: 96, type: !22)
!57 = !DILocalVariable(name: "from", arg: 2, scope: !44, file: !3, line: 96, type: !47)
!58 = !DILocalVariable(name: "n", arg: 3, scope: !44, file: !3, line: 96, type: !50)
!59 = !DILocation(line: 96, column: 26, scope: !44)
!60 = !DILocation(line: 96, column: 59, scope: !44)
!61 = !DILocation(line: 96, column: 72, scope: !44)
!62 = !DILocation(line: 98, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !44, file: !3, line: 98, column: 6)
!64 = !DILocation(line: 98, column: 6, scope: !44)
!65 = !DILocation(line: 99, column: 26, scope: !63)
!66 = !DILocation(line: 99, column: 30, scope: !63)
!67 = !DILocation(line: 99, column: 36, scope: !63)
!68 = !DILocation(line: 99, column: 3, scope: !63)
!69 = !DILocation(line: 101, column: 24, scope: !63)
!70 = !DILocation(line: 101, column: 28, scope: !63)
!71 = !DILocation(line: 101, column: 34, scope: !63)
!72 = !DILocation(line: 101, column: 3, scope: !63)
!73 = !DILocation(line: 102, column: 1, scope: !44)
!74 = distinct !DISubprogram(name: "cc_platform_has", scope: !6, file: !6, line: 113, type: !75, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !5}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 35, baseType: !78)
!78 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!79 = !{!80}
!80 = !DILocalVariable(name: "attr", arg: 1, scope: !74, file: !6, line: 113, type: !5)
!81 = !DILocation(line: 113, column: 49, scope: !74)
!82 = !DILocation(line: 113, column: 57, scope: !74)
!83 = distinct !DISubprogram(name: "unrolled_memcpy_fromio", scope: !3, file: !3, line: 67, type: !45, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!84 = !{!85, !86, !87, !88, !93, !95}
!85 = !DILocalVariable(name: "to", arg: 1, scope: !83, file: !3, line: 67, type: !22)
!86 = !DILocalVariable(name: "from", arg: 2, scope: !83, file: !3, line: 67, type: !47)
!87 = !DILocalVariable(name: "n", arg: 3, scope: !83, file: !3, line: 67, type: !50)
!88 = !DILocalVariable(name: "in", scope: !83, file: !3, line: 69, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DILocalVariable(name: "out", scope: !83, file: !3, line: 70, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!95 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 71, type: !96)
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DILocation(line: 67, column: 42, scope: !83)
!98 = !DILocation(line: 67, column: 75, scope: !83)
!99 = !DILocation(line: 67, column: 88, scope: !83)
!100 = !DILocation(line: 69, column: 2, scope: !83)
!101 = !DILocation(line: 69, column: 31, scope: !83)
!102 = !DILocation(line: 69, column: 36, scope: !83)
!103 = !DILocation(line: 70, column: 2, scope: !83)
!104 = !DILocation(line: 70, column: 8, scope: !83)
!105 = !DILocation(line: 70, column: 14, scope: !83)
!106 = !DILocation(line: 71, column: 2, scope: !83)
!107 = !DILocation(line: 71, column: 6, scope: !83)
!108 = !DILocation(line: 73, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !83, file: !3, line: 73, column: 2)
!110 = !DILocation(line: 73, column: 7, scope: !109)
!111 = !DILocation(line: 73, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 73, column: 2)
!113 = !DILocation(line: 73, column: 18, scope: !112)
!114 = !DILocation(line: 73, column: 16, scope: !112)
!115 = !DILocation(line: 73, column: 2, scope: !109)
!116 = !DILocation(line: 74, column: 19, scope: !112)
!117 = !DILocation(line: 74, column: 22, scope: !112)
!118 = !DILocation(line: 74, column: 12, scope: !112)
!119 = !DILocation(line: 74, column: 3, scope: !112)
!120 = !DILocation(line: 74, column: 7, scope: !112)
!121 = !DILocation(line: 74, column: 10, scope: !112)
!122 = !DILocation(line: 73, column: 21, scope: !112)
!123 = !DILocation(line: 73, column: 2, scope: !112)
!124 = distinct !{!124, !115, !125, !126, !127}
!125 = !DILocation(line: 74, column: 24, scope: !109)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !DILocation(line: 75, column: 1, scope: !83)
!129 = distinct !DISubprogram(name: "string_memcpy_fromio", scope: !3, file: !3, line: 26, type: !45, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!130 = !{!131, !132, !133, !134, !135}
!131 = !DILocalVariable(name: "to", arg: 1, scope: !129, file: !3, line: 26, type: !22)
!132 = !DILocalVariable(name: "from", arg: 2, scope: !129, file: !3, line: 26, type: !47)
!133 = !DILocalVariable(name: "n", arg: 3, scope: !129, file: !3, line: 26, type: !50)
!134 = !DILocalVariable(name: "orig_to", scope: !129, file: !3, line: 28, type: !27)
!135 = !DILocalVariable(name: "orig_n", scope: !129, file: !3, line: 29, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!137 = !DILocation(line: 26, column: 40, scope: !129)
!138 = !DILocation(line: 26, column: 73, scope: !129)
!139 = !DILocation(line: 26, column: 86, scope: !129)
!140 = !DILocation(line: 28, column: 2, scope: !129)
!141 = !DILocation(line: 28, column: 14, scope: !129)
!142 = !DILocation(line: 28, column: 24, scope: !129)
!143 = !DILocation(line: 29, column: 2, scope: !129)
!144 = !DILocation(line: 29, column: 15, scope: !129)
!145 = !DILocation(line: 29, column: 24, scope: !129)
!146 = !DILocation(line: 31, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !129, file: !3, line: 31, column: 6)
!148 = !DILocation(line: 31, column: 6, scope: !129)
!149 = !DILocation(line: 32, column: 3, scope: !147)
!150 = !DILocation(line: 35, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !129, file: !3, line: 35, column: 6)
!152 = !DILocation(line: 35, column: 6, scope: !129)
!153 = !DILocation(line: 36, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 35, column: 41)
!155 = !{i64 2152358394}
!156 = !DILocation(line: 37, column: 4, scope: !154)
!157 = !DILocation(line: 38, column: 2, scope: !154)
!158 = !DILocation(line: 39, column: 6, scope: !159)
!159 = distinct !DILexicalBlock(scope: !129, file: !3, line: 39, column: 6)
!160 = !DILocation(line: 39, column: 8, scope: !159)
!161 = !DILocation(line: 39, column: 12, scope: !159)
!162 = !DILocation(line: 39, column: 15, scope: !159)
!163 = !DILocation(line: 39, column: 6, scope: !129)
!164 = !DILocation(line: 40, column: 3, scope: !165)
!165 = distinct !DILexicalBlock(scope: !159, file: !3, line: 39, column: 50)
!166 = !{i64 2152358546}
!167 = !DILocation(line: 41, column: 4, scope: !165)
!168 = !DILocation(line: 42, column: 2, scope: !165)
!169 = !DILocation(line: 43, column: 11, scope: !129)
!170 = !DILocation(line: 43, column: 29, scope: !129)
!171 = !DILocation(line: 43, column: 35, scope: !129)
!172 = !DILocation(line: 43, column: 2, scope: !129)
!173 = !DILocation(line: 45, column: 24, scope: !129)
!174 = !DILocation(line: 45, column: 33, scope: !129)
!175 = !DILocation(line: 45, column: 2, scope: !129)
!176 = !DILocation(line: 46, column: 1, scope: !129)
!177 = distinct !DISubprogram(name: "memcpy_toio", scope: !3, file: !3, line: 105, type: !178, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180, !27, !50}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!181 = !{!182, !183, !184}
!182 = !DILocalVariable(name: "to", arg: 1, scope: !177, file: !3, line: 105, type: !180)
!183 = !DILocalVariable(name: "from", arg: 2, scope: !177, file: !3, line: 105, type: !27)
!184 = !DILocalVariable(name: "n", arg: 3, scope: !177, file: !3, line: 105, type: !50)
!185 = !DILocation(line: 105, column: 41, scope: !177)
!186 = !DILocation(line: 105, column: 57, scope: !177)
!187 = !DILocation(line: 105, column: 70, scope: !177)
!188 = !DILocation(line: 107, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !177, file: !3, line: 107, column: 6)
!190 = !DILocation(line: 107, column: 6, scope: !177)
!191 = !DILocation(line: 108, column: 24, scope: !189)
!192 = !DILocation(line: 108, column: 28, scope: !189)
!193 = !DILocation(line: 108, column: 34, scope: !189)
!194 = !DILocation(line: 108, column: 3, scope: !189)
!195 = !DILocation(line: 110, column: 22, scope: !189)
!196 = !DILocation(line: 110, column: 26, scope: !189)
!197 = !DILocation(line: 110, column: 32, scope: !189)
!198 = !DILocation(line: 110, column: 3, scope: !189)
!199 = !DILocation(line: 111, column: 1, scope: !177)
!200 = distinct !DISubprogram(name: "unrolled_memcpy_toio", scope: !3, file: !3, line: 77, type: !178, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!201 = !{!202, !203, !204, !205, !207, !210}
!202 = !DILocalVariable(name: "to", arg: 1, scope: !200, file: !3, line: 77, type: !180)
!203 = !DILocalVariable(name: "from", arg: 2, scope: !200, file: !3, line: 77, type: !27)
!204 = !DILocalVariable(name: "n", arg: 3, scope: !200, file: !3, line: 77, type: !50)
!205 = !DILocalVariable(name: "out", scope: !200, file: !3, line: 79, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!207 = !DILocalVariable(name: "in", scope: !200, file: !3, line: 80, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!210 = !DILocalVariable(name: "i", scope: !200, file: !3, line: 81, type: !96)
!211 = !DILocation(line: 77, column: 57, scope: !200)
!212 = !DILocation(line: 77, column: 73, scope: !200)
!213 = !DILocation(line: 77, column: 86, scope: !200)
!214 = !DILocation(line: 79, column: 2, scope: !200)
!215 = !DILocation(line: 79, column: 25, scope: !200)
!216 = !DILocation(line: 79, column: 31, scope: !200)
!217 = !DILocation(line: 80, column: 2, scope: !200)
!218 = !DILocation(line: 80, column: 14, scope: !200)
!219 = !DILocation(line: 80, column: 19, scope: !200)
!220 = !DILocation(line: 81, column: 2, scope: !200)
!221 = !DILocation(line: 81, column: 6, scope: !200)
!222 = !DILocation(line: 83, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !200, file: !3, line: 83, column: 2)
!224 = !DILocation(line: 83, column: 7, scope: !223)
!225 = !DILocation(line: 83, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 83, column: 2)
!227 = !DILocation(line: 83, column: 18, scope: !226)
!228 = !DILocation(line: 83, column: 16, scope: !226)
!229 = !DILocation(line: 83, column: 2, scope: !223)
!230 = !DILocation(line: 84, column: 10, scope: !226)
!231 = !DILocation(line: 84, column: 13, scope: !226)
!232 = !DILocation(line: 84, column: 18, scope: !226)
!233 = !DILocation(line: 84, column: 22, scope: !226)
!234 = !DILocation(line: 84, column: 3, scope: !226)
!235 = !DILocation(line: 83, column: 21, scope: !226)
!236 = !DILocation(line: 83, column: 2, scope: !226)
!237 = distinct !{!237, !229, !238, !126, !127}
!238 = !DILocation(line: 84, column: 24, scope: !223)
!239 = !DILocation(line: 85, column: 1, scope: !200)
!240 = distinct !DISubprogram(name: "string_memcpy_toio", scope: !3, file: !3, line: 48, type: !178, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!241 = !{!242, !243, !244}
!242 = !DILocalVariable(name: "to", arg: 1, scope: !240, file: !3, line: 48, type: !180)
!243 = !DILocalVariable(name: "from", arg: 2, scope: !240, file: !3, line: 48, type: !27)
!244 = !DILocalVariable(name: "n", arg: 3, scope: !240, file: !3, line: 48, type: !50)
!245 = !DILocation(line: 48, column: 55, scope: !240)
!246 = !DILocation(line: 48, column: 71, scope: !240)
!247 = !DILocation(line: 48, column: 84, scope: !240)
!248 = !DILocation(line: 50, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !240, file: !3, line: 50, column: 6)
!250 = !DILocation(line: 50, column: 6, scope: !240)
!251 = !DILocation(line: 51, column: 3, scope: !249)
!252 = !DILocation(line: 54, column: 21, scope: !240)
!253 = !DILocation(line: 54, column: 27, scope: !240)
!254 = !DILocation(line: 54, column: 2, scope: !240)
!255 = !DILocation(line: 56, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !240, file: !3, line: 56, column: 6)
!257 = !DILocation(line: 56, column: 6, scope: !240)
!258 = !DILocation(line: 57, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 56, column: 39)
!260 = !{i64 2152358726}
!261 = !DILocation(line: 58, column: 4, scope: !259)
!262 = !DILocation(line: 59, column: 2, scope: !259)
!263 = !DILocation(line: 60, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !240, file: !3, line: 60, column: 6)
!265 = !DILocation(line: 60, column: 8, scope: !264)
!266 = !DILocation(line: 60, column: 12, scope: !264)
!267 = !DILocation(line: 60, column: 15, scope: !264)
!268 = !DILocation(line: 60, column: 6, scope: !240)
!269 = !DILocation(line: 61, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !3, line: 60, column: 48)
!271 = !{i64 2152358876}
!272 = !DILocation(line: 62, column: 4, scope: !270)
!273 = !DILocation(line: 63, column: 2, scope: !270)
!274 = !DILocation(line: 64, column: 19, scope: !240)
!275 = !DILocation(line: 64, column: 38, scope: !240)
!276 = !DILocation(line: 64, column: 44, scope: !240)
!277 = !DILocation(line: 64, column: 2, scope: !240)
!278 = !DILocation(line: 65, column: 1, scope: !240)
!279 = distinct !DISubprogram(name: "memset_io", scope: !3, file: !3, line: 114, type: !280, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !180, !96, !50}
!282 = !{!283, !284, !285}
!283 = !DILocalVariable(name: "a", arg: 1, scope: !279, file: !3, line: 114, type: !180)
!284 = !DILocalVariable(name: "b", arg: 2, scope: !279, file: !3, line: 114, type: !96)
!285 = !DILocalVariable(name: "c", arg: 3, scope: !279, file: !3, line: 114, type: !50)
!286 = !DILocation(line: 114, column: 39, scope: !279)
!287 = !DILocation(line: 114, column: 46, scope: !279)
!288 = !DILocation(line: 114, column: 56, scope: !279)
!289 = !DILocation(line: 116, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !279, file: !3, line: 116, column: 6)
!291 = !DILocation(line: 116, column: 6, scope: !279)
!292 = !DILocation(line: 117, column: 22, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !3, line: 116, column: 55)
!294 = !DILocation(line: 117, column: 25, scope: !293)
!295 = !DILocation(line: 117, column: 28, scope: !293)
!296 = !DILocation(line: 117, column: 3, scope: !293)
!297 = !DILocation(line: 118, column: 2, scope: !293)
!298 = !DILocation(line: 123, column: 18, scope: !299)
!299 = distinct !DILexicalBlock(scope: !290, file: !3, line: 118, column: 9)
!300 = !DILocation(line: 123, column: 21, scope: !299)
!301 = !DILocation(line: 123, column: 3, scope: !299)
!302 = !DILocation(line: 123, column: 24, scope: !299)
!303 = !DILocation(line: 125, column: 1, scope: !279)
!304 = distinct !DISubprogram(name: "unrolled_memset_io", scope: !3, file: !3, line: 87, type: !280, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!305 = !{!306, !307, !308, !309, !310}
!306 = !DILocalVariable(name: "a", arg: 1, scope: !304, file: !3, line: 87, type: !180)
!307 = !DILocalVariable(name: "b", arg: 2, scope: !304, file: !3, line: 87, type: !96)
!308 = !DILocalVariable(name: "c", arg: 3, scope: !304, file: !3, line: 87, type: !50)
!309 = !DILocalVariable(name: "mem", scope: !304, file: !3, line: 89, type: !206)
!310 = !DILocalVariable(name: "i", scope: !304, file: !3, line: 90, type: !96)
!311 = !DILocation(line: 87, column: 55, scope: !304)
!312 = !DILocation(line: 87, column: 62, scope: !304)
!313 = !DILocation(line: 87, column: 72, scope: !304)
!314 = !DILocation(line: 89, column: 2, scope: !304)
!315 = !DILocation(line: 89, column: 25, scope: !304)
!316 = !DILocation(line: 89, column: 31, scope: !304)
!317 = !DILocation(line: 90, column: 2, scope: !304)
!318 = !DILocation(line: 90, column: 6, scope: !304)
!319 = !DILocation(line: 92, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !304, file: !3, line: 92, column: 2)
!321 = !DILocation(line: 92, column: 7, scope: !320)
!322 = !DILocation(line: 92, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !3, line: 92, column: 2)
!324 = !DILocation(line: 92, column: 18, scope: !323)
!325 = !DILocation(line: 92, column: 16, scope: !323)
!326 = !DILocation(line: 92, column: 2, scope: !320)
!327 = !DILocation(line: 93, column: 10, scope: !323)
!328 = !DILocation(line: 93, column: 14, scope: !323)
!329 = !DILocation(line: 93, column: 18, scope: !323)
!330 = !DILocation(line: 93, column: 3, scope: !323)
!331 = !DILocation(line: 92, column: 21, scope: !323)
!332 = !DILocation(line: 92, column: 2, scope: !323)
!333 = distinct !{!333, !326, !334, !126, !127}
!334 = !DILocation(line: 93, column: 20, scope: !320)
!335 = !DILocation(line: 94, column: 1, scope: !304)
!336 = distinct !DISubprogram(name: "readb", scope: !337, file: !337, line: 56, type: !338, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!337 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!338 = !DISubroutineType(types: !339)
!339 = !{!25, !47}
!340 = !{!341, !342}
!341 = !DILocalVariable(name: "addr", arg: 1, scope: !336, file: !337, line: 56, type: !47)
!342 = !DILocalVariable(name: "ret", scope: !336, file: !337, line: 56, type: !25)
!343 = !DILocation(line: 56, column: 1, scope: !336)
!344 = !{i64 2152270668}
!345 = distinct !DISubprogram(name: "rep_movs", scope: !3, file: !3, line: 10, type: !346, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !22, !27, !50}
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DILocalVariable(name: "to", arg: 1, scope: !345, file: !3, line: 10, type: !22)
!350 = !DILocalVariable(name: "from", arg: 2, scope: !345, file: !3, line: 10, type: !27)
!351 = !DILocalVariable(name: "n", arg: 3, scope: !345, file: !3, line: 10, type: !50)
!352 = !DILocalVariable(name: "d0", scope: !345, file: !3, line: 12, type: !26)
!353 = !DILocalVariable(name: "d1", scope: !345, file: !3, line: 12, type: !26)
!354 = !DILocalVariable(name: "d2", scope: !345, file: !3, line: 12, type: !26)
!355 = !DILocation(line: 10, column: 44, scope: !345)
!356 = !DILocation(line: 10, column: 60, scope: !345)
!357 = !DILocation(line: 10, column: 73, scope: !345)
!358 = !DILocation(line: 12, column: 2, scope: !345)
!359 = !DILocation(line: 12, column: 16, scope: !345)
!360 = !DILocation(line: 12, column: 20, scope: !345)
!361 = !DILocation(line: 12, column: 24, scope: !345)
!362 = !DILocation(line: 22, column: 15, scope: !345)
!363 = !DILocation(line: 22, column: 17, scope: !345)
!364 = !DILocation(line: 22, column: 28, scope: !345)
!365 = !DILocation(line: 22, column: 43, scope: !345)
!366 = !DILocation(line: 22, column: 37, scope: !345)
!367 = !DILocation(line: 22, column: 59, scope: !345)
!368 = !DILocation(line: 22, column: 53, scope: !345)
!369 = !DILocation(line: 13, column: 2, scope: !345)
!370 = !{i64 375, i64 389, i64 415, i64 434, i64 463, i64 481, i64 500, i64 529}
!371 = !DILocation(line: 24, column: 1, scope: !345)
!372 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !373, file: !373, line: 70, type: !374, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!373 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!374 = !DISubroutineType(types: !375)
!375 = !{null, !27, !50}
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "address", arg: 1, scope: !372, file: !373, line: 70, type: !27)
!378 = !DILocalVariable(name: "size", arg: 2, scope: !372, file: !373, line: 70, type: !50)
!379 = !DILocation(line: 70, column: 54, scope: !372)
!380 = !DILocation(line: 70, column: 70, scope: !372)
!381 = !DILocation(line: 72, column: 1, scope: !372)
!382 = distinct !DISubprogram(name: "writeb", scope: !337, file: !337, line: 64, type: !383, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !25, !180}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "val", arg: 1, scope: !382, file: !337, line: 64, type: !25)
!387 = !DILocalVariable(name: "addr", arg: 2, scope: !382, file: !337, line: 64, type: !180)
!388 = !DILocation(line: 64, column: 1, scope: !382)
!389 = !{i64 2152273122}
!390 = distinct !DISubprogram(name: "kmsan_check_memory", scope: !373, file: !373, line: 73, type: !374, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!391 = !{!392, !393}
!392 = !DILocalVariable(name: "address", arg: 1, scope: !390, file: !373, line: 73, type: !27)
!393 = !DILocalVariable(name: "size", arg: 2, scope: !390, file: !373, line: 73, type: !50)
!394 = !DILocation(line: 73, column: 51, scope: !390)
!395 = !DILocation(line: 73, column: 67, scope: !390)
!396 = !DILocation(line: 75, column: 1, scope: !390)
